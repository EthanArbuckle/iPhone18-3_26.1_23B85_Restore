@interface LPAnimatedImageTranscoder
+ (id)encodeQueue;
- (LPAnimatedImageTranscoder)initWithAnimatedImage:(id)image;
- (void)_transcodeWithCompletionHandler:(id)handler;
- (void)cancel;
- (void)encodeNextFrame;
- (void)encodeUntilNotReadyForMoreMediaData;
- (void)failed;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeReadyForDataObserverIfNeeded;
- (void)transcodeWithCompletionHandler:(id)handler;
@end

@implementation LPAnimatedImageTranscoder

- (LPAnimatedImageTranscoder)initWithAnimatedImage:(id)image
{
  imageCopy = image;
  v10.receiver = self;
  v10.super_class = LPAnimatedImageTranscoder;
  v6 = [(LPAnimatedImageTranscoder *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceImage, image);
    v7->_loggingID = ++initWithAnimatedImage__nextLoggingID;
    v8 = v7;
  }

  return v7;
}

+ (id)encodeQueue
{
  if (encodeQueue_onceToken != -1)
  {
    +[LPAnimatedImageTranscoder encodeQueue];
  }

  v3 = encodeQueue_encodeQueue;

  return v3;
}

void __40__LPAnimatedImageTranscoder_encodeQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v0 = dispatch_queue_create("com.apple.LinkPresentation.AnimatedImageTranscoder", v2);
  v1 = encodeQueue_encodeQueue;
  encodeQueue_encodeQueue = v0;
}

- (void)transcodeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[LPAnimatedImageTranscoder encodeQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__LPAnimatedImageTranscoder_transcodeWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7A356A0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, v7);
}

- (void)_transcodeWithCompletionHandler:(id)handler
{
  v72 = *MEMORY[0x1E69E9840];
  v4 = _Block_copy(handler);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v4;

  data = [(LPImage *)self->_sourceImage data];
  self->_imageSource = CGImageSourceCreateWithData(data, MEMORY[0x1E695E0F8]);

  self->_frameCount = CGImageSourceGetCount(self->_imageSource);
  v7 = LPLogChannelTranscoding();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    loggingID = self->_loggingID;
    frameCount = self->_frameCount;
    data2 = [(LPImage *)self->_sourceImage data];
    *buf = 67109632;
    *&buf[4] = loggingID;
    *&buf[8] = 2048;
    *&buf[10] = frameCount;
    *&buf[18] = 2048;
    *&buf[20] = [data2 length];
    _os_log_impl(&dword_1AE886000, v7, OS_LOG_TYPE_DEFAULT, "LPAnimatedImageTranscoder<%d>: beginning transcoding for image (frameCount=%zu, size=%zd)", buf, 0x1Cu);
  }

  if (self->_frameCount > 1)
  {
    v18 = CGImageSourceCopyPropertiesAtIndex(self->_imageSource, 0, 0);
    v19 = MEMORY[0x1E695DFF8];
    v20 = NSTemporaryDirectory();
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v23 = [v20 stringByAppendingPathComponent:uUIDString];
    v24 = [v23 stringByAppendingPathExtension:@"mp4"];
    v25 = [v19 fileURLWithPath:v24];
    outputURL = self->_outputURL;
    self->_outputURL = v25;

    v27 = [(__CFDictionary *)v18 objectForKeyedSubscript:*MEMORY[0x1E696DED8]];
    unsignedLongValue = [v27 unsignedLongValue];

    v29 = [(__CFDictionary *)v18 objectForKeyedSubscript:*MEMORY[0x1E696DEC8]];
    unsignedLongValue2 = [v29 unsignedLongValue];

    if (unsignedLongValue && unsignedLongValue2)
    {
      v31 = objc_alloc(MEMORY[0x1E6987ED8]);
      v32 = [v31 initWithURL:self->_outputURL fileType:*MEMORY[0x1E69874B8] error:0];
      writer = self->_writer;
      self->_writer = v32;

      v34 = delayTimeFromImageProperties(v18);
      v35 = *MEMORY[0x1E6987CB0];
      v70[0] = *MEMORY[0x1E6987CE8];
      v36 = *MEMORY[0x1E6987E08];
      v69[0] = v35;
      v69[1] = v36;
      v37 = [MEMORY[0x1E696AD98] numberWithDouble:unsignedLongValue];
      v38 = unsignedLongValue2;
      v70[1] = v37;
      v69[2] = *MEMORY[0x1E6987D70];
      v39 = [MEMORY[0x1E696AD98] numberWithDouble:unsignedLongValue2];
      v70[2] = v39;
      v69[3] = *MEMORY[0x1E6987D30];
      v67 = *MEMORY[0x1E6987C60];
      v40 = [MEMORY[0x1E696AD98] numberWithDouble:unsignedLongValue * v38 * 32.0 * (1.0 / v34) * 0.0175];
      v68 = v40;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
      v70[3] = v41;
      v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:v69 count:4];

      v43 = [MEMORY[0x1E6987EE0] assetWriterInputWithMediaType:*MEMORY[0x1E6987608] outputSettings:v42];
      input = self->_input;
      self->_input = v43;

      v45 = *MEMORY[0x1E6966028];
      v65[0] = *MEMORY[0x1E6966130];
      v65[1] = v45;
      v66[0] = &unk_1F2483668;
      v66[1] = MEMORY[0x1E695E118];
      v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:2];
      v47 = [MEMORY[0x1E6987F08] assetWriterInputPixelBufferAdaptorWithAssetWriterInput:self->_input sourcePixelBufferAttributes:v46];
      adaptor = self->_adaptor;
      self->_adaptor = v47;

      [(AVAssetWriter *)self->_writer addInput:self->_input];
      if ([(AVAssetWriter *)self->_writer startWriting])
      {
        v49 = self->_writer;
        *buf = *MEMORY[0x1E6960CC0];
        *&buf[16] = *(MEMORY[0x1E6960CC0] + 16);
        [(AVAssetWriter *)v49 startSessionAtSourceTime:buf];
        assetWriterInput = [(AVAssetWriterInputPixelBufferAdaptor *)self->_adaptor assetWriterInput];
        [assetWriterInput addObserver:self forKeyPath:@"readyForMoreMediaData" options:5 context:readyForDataKVOContext];

        self->_hasReadyForDataObserver = 1;
        [(LPAnimatedImageTranscoder *)self encodeUntilNotReadyForMoreMediaData];
      }

      else
      {
        v58 = LPLogChannelTranscoding();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          [(LPAnimatedImageTranscoder *)self _transcodeWithCompletionHandler:v58, v59, v60, v61, v62, v63, v64];
        }

        [(LPAnimatedImageTranscoder *)self failed];
      }
    }

    else
    {
      v51 = LPLogChannelTranscoding();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        [(LPAnimatedImageTranscoder *)self _transcodeWithCompletionHandler:v51, v52, v53, v54, v55, v56, v57];
      }

      [(LPAnimatedImageTranscoder *)self failed];
    }
  }

  else
  {
    v11 = LPLogChannelTranscoding();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(LPAnimatedImageTranscoder *)self _transcodeWithCompletionHandler:v11, v12, v13, v14, v15, v16, v17];
    }

    [(LPAnimatedImageTranscoder *)self failed];
  }
}

- (void)failed
{
  self->_stopEncoding = 1;
  [(LPAnimatedImageTranscoder *)self removeReadyForDataObserverIfNeeded];
  if (self->_completionHandler)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__LPAnimatedImageTranscoder_failed__block_invoke;
    block[3] = &unk_1E7A35450;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (readyForDataKVOContext == context)
  {
    v13 = +[LPAnimatedImageTranscoder encodeQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__LPAnimatedImageTranscoder_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E7A35450;
    block[4] = self;
    dispatch_async(v13, block);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = LPAnimatedImageTranscoder;
    [(LPAnimatedImageTranscoder *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)removeReadyForDataObserverIfNeeded
{
  if (self->_hasReadyForDataObserver)
  {
    assetWriterInput = [(AVAssetWriterInputPixelBufferAdaptor *)self->_adaptor assetWriterInput];
    [assetWriterInput removeObserver:self forKeyPath:@"readyForMoreMediaData" context:readyForDataKVOContext];
  }

  self->_hasReadyForDataObserver = 0;
}

- (void)encodeUntilNotReadyForMoreMediaData
{
  while (!self->_stopEncoding)
  {
    assetWriterInput = [(AVAssetWriterInputPixelBufferAdaptor *)self->_adaptor assetWriterInput];
    isReadyForMoreMediaData = [assetWriterInput isReadyForMoreMediaData];

    if (!isReadyForMoreMediaData)
    {
      break;
    }

    [(LPAnimatedImageTranscoder *)self encodeNextFrame];
  }
}

- (void)encodeNextFrame
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_5(&dword_1AE886000, v0, v1, "LPAnimatedImageTranscoder<%d>: failed, could not decode frame %zu", v2, v3);
}

void __44__LPAnimatedImageTranscoder_encodeNextFrame__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  CFRelease(*(*(a1 + 32) + 24));
  if (*(*(a1 + 32) + 16))
  {
    v2 = objc_alloc_init(LPVideoProperties);
    v3 = [*(*(a1 + 32) + 8) properties];
    v4 = [v3 accessibilityText];
    [(LPVisualMediaProperties *)v2 setAccessibilityText:v4];

    v5 = [*(*(a1 + 32) + 32) _lp_fileSize];
    if (v5 <= 0xA00000)
    {
      v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:*(*(a1 + 32) + 32)];
      v9 = [MEMORY[0x1E696AC08] defaultManager];
      [v9 removeItemAtURL:*(*(a1 + 32) + 32) error:0];

      v10 = [[LPVideo alloc] initWithData:v8 MIMEType:@"video/mp4" properties:v2];
      v11 = LPLogChannelTranscoding();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(*(a1 + 32) + 92);
        *buf = 67109376;
        v17 = v12;
        v18 = 2048;
        v19 = v5;
        _os_log_impl(&dword_1AE886000, v11, OS_LOG_TYPE_DEFAULT, "LPAnimatedImageTranscoder<%d>: finished transcoding (size=%llu)", buf, 0x12u);
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __44__LPAnimatedImageTranscoder_encodeNextFrame__block_invoke_23;
      v14[3] = &unk_1E7A35478;
      v14[4] = *(a1 + 32);
      v15 = v10;
      v13 = v10;
      dispatch_async(MEMORY[0x1E69E96A0], v14);
    }

    else
    {
      v6 = LPLogChannelTranscoding();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(*(a1 + 32) + 92);
        *buf = 67109376;
        v17 = v7;
        v18 = 2048;
        v19 = v5;
        _os_log_impl(&dword_1AE886000, v6, OS_LOG_TYPE_DEFAULT, "LPAnimatedImageTranscoder<%d>: failed, output file is too big (size=%llu)", buf, 0x12u);
      }

      [*(a1 + 32) failed];
    }
  }
}

- (void)cancel
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = LPLogChannelTranscoding();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    loggingID = self->_loggingID;
    v5[0] = 67109120;
    v5[1] = loggingID;
    _os_log_impl(&dword_1AE886000, v3, OS_LOG_TYPE_DEFAULT, "LPAnimatedImageTranscoder<%d>: explicitly canceled", v5, 8u);
  }

  [(LPAnimatedImageTranscoder *)self failed];
}

@end