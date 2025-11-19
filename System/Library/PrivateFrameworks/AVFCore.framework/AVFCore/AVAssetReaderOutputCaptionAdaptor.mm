@interface AVAssetReaderOutputCaptionAdaptor
+ (AVAssetReaderOutputCaptionAdaptor)assetReaderOutputCaptionAdaptorWithAssetReaderTrackOutput:(AVAssetReaderTrackOutput *)trackOutput;
- (AVAssetReaderOutputCaptionAdaptor)initWithAssetReaderTrackOutput:(AVAssetReaderTrackOutput *)trackOutput;
- (AVCaptionGroup)nextCaptionGroup;
- (NSArray)captionsNotPresentInPreviousGroupsInCaptionGroup:(AVCaptionGroup *)captionGroup;
- (id)_readSampleBuffersAndReturnAVCaption;
- (id)validationDelegate;
- (int)addExtractionForOutput:(id)a3 figAssetReader:(OpaqueFigAssetReader *)a4 options:(id)a5 withOutputExtactionID:(int *)a6;
- (void)dealloc;
- (void)setFigCaptionToAVCaptionMapping:(__CFDictionary *)a3;
- (void)setValidationDelegate:(id)validationDelegate;
@end

@implementation AVAssetReaderOutputCaptionAdaptor

+ (AVAssetReaderOutputCaptionAdaptor)assetReaderOutputCaptionAdaptorWithAssetReaderTrackOutput:(AVAssetReaderTrackOutput *)trackOutput
{
  v3 = [[a1 alloc] initWithAssetReaderTrackOutput:trackOutput];

  return v3;
}

- (AVAssetReaderOutputCaptionAdaptor)initWithAssetReaderTrackOutput:(AVAssetReaderTrackOutput *)trackOutput
{
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  if (!trackOutput)
  {
    v12 = self;
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v20 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"invalid parameter not satisfying: %s", v15, v16, v17, v18, v19, "trackOutput != nil");
LABEL_12:
    v27 = v20;
    v28 = v13;
    v29 = v14;
    goto LABEL_16;
  }

  v8 = v7;
  if (([AVMediaTypesForCaptionEditing() containsObject:{-[AVAssetReaderTrackOutput mediaType](trackOutput, "mediaType")}] & 1) == 0)
  {
    v21 = self;
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v20 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"Cannot create a new caption adaptor with an unsupported media type", v22, v23, v24, v25, v26, v45);
    goto LABEL_12;
  }

  if ([(AVAssetReaderTrackOutput *)trackOutput _isAttachedToAdaptor])
  {
    v30 = self;
    v31 = MEMORY[0x1E695DF30];
    v32 = *MEMORY[0x1E695D940];
    v38 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"Cannot initialize an instance of %@ with a track output which was used to initialize another instance of %@", v33, v34, v35, v36, v37, v8);
LABEL_15:
    v27 = v38;
    v28 = v31;
    v29 = v32;
LABEL_16:
    objc_exception_throw([v28 exceptionWithName:v29 reason:v27 userInfo:0]);
  }

  if ([(AVAssetReaderOutput *)trackOutput _status]>= 1)
  {
    v39 = self;
    v31 = MEMORY[0x1E695DF30];
    v32 = *MEMORY[0x1E695D940];
    v38 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"Cannot initialize an instance of %@ with a track output which has already progressed beyond AVAssetReaderStatusUnknown", v40, v41, v42, v43, v44, v8);
    goto LABEL_15;
  }

  v46.receiver = self;
  v46.super_class = AVAssetReaderOutputCaptionAdaptor;
  v9 = [(AVAssetReaderOutputCaptionAdaptor *)&v46 init];
  if (v9)
  {
    v10 = objc_alloc_init(AVAssetReaderOutputCaptionAdaptorInternal);
    v9->_internal = v10;
    if (!v10 || (CFRetain(v10), v9->_internal->trackOutput = trackOutput, [(AVAssetReaderTrackOutput *)v9->_internal->trackOutput _setAttachedAdaptor:v9], v9->_internal->avCaptionGroupOutputQueue = objc_alloc_init(MEMORY[0x1E695DF70]), v9->_internal->figCaptionToAVCaptionMapping = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), v9->_internal->endOfStream = 0, FigCaptionTimelineGeneratorCreate()))
    {

      return 0;
    }
  }

  return v9;
}

- (void)dealloc
{
  internal = self->_internal;
  if (internal)
  {

    v4 = self->_internal;
    if (v4->figCaptionToAVCaptionMapping)
    {
      CFRelease(v4->figCaptionToAVCaptionMapping);
      v4 = self->_internal;
    }

    if (v4->sbufToCaptionGroupConverter)
    {
      CFRelease(v4->sbufToCaptionGroupConverter);
      v4 = self->_internal;
    }

    CFRelease(v4);
    internal = self->_internal;
  }

  v5.receiver = self;
  v5.super_class = AVAssetReaderOutputCaptionAdaptor;
  [(AVAssetReaderOutputCaptionAdaptor *)&v5 dealloc];
}

- (int)addExtractionForOutput:(id)a3 figAssetReader:(OpaqueFigAssetReader *)a4 options:(id)a5 withOutputExtactionID:(int *)a6
{
  v9 = [objc_msgSend(a3 "track")];
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 136);
  if (!v10)
  {
    return -12782;
  }

  return v10(a4, v9, a5, a6);
}

- (id)_readSampleBuffersAndReturnAVCaption
{
  v3 = 0;
  while (![(NSMutableArray *)self->_internal->avCaptionGroupOutputQueue count])
  {
    internal = self->_internal;
    if (internal->endOfStream)
    {
      break;
    }

    if (v3)
    {
      CFRelease(v3);
      internal = self->_internal;
    }

    v3 = [(AVAssetReaderTrackOutput *)internal->trackOutput _copyNextSampleBufferForAdaptor];
    if (v3)
    {
      if (FigCaptionTimelineGeneratorAddSampleBuffer())
      {
        v6 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      FigCaptionTimelineGeneratorFinish();
      self->_internal->endOfStream = 1;
    }
  }

  if (![(NSMutableArray *)self->_internal->avCaptionGroupOutputQueue count])
  {
    v6 = 0;
    if (!v3)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v6 = [(NSMutableArray *)self->_internal->avCaptionGroupOutputQueue objectAtIndex:0];
  [(NSMutableArray *)self->_internal->avCaptionGroupOutputQueue removeObjectAtIndex:0];
  if (v3)
  {
LABEL_14:
    CFRelease(v3);
  }

LABEL_15:

  return v6;
}

- (AVCaptionGroup)nextCaptionGroup
{
  v4 = [[(AVAssetReaderOutputCaptionAdaptor *)self assetReaderTrackOutput] _status];
  if (!v4)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"cannot call method until the track output is attached to an asset reader and -startReading has been called on that asset reader", v5, v6, v7, v8, v9, v12), 0}];
    objc_exception_throw(v11);
  }

  if (v4 > 2)
  {
    return 0;
  }

  return [(AVAssetReaderOutputCaptionAdaptor *)self _readSampleBuffersAndReturnAVCaption];
}

- (NSArray)captionsNotPresentInPreviousGroupsInCaptionGroup:(AVCaptionGroup *)captionGroup
{
  v31 = *MEMORY[0x1E69E9840];
  if (!captionGroup)
  {
    v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, "captionGroup != nil"), 0}];
    objc_exception_throw(v17);
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  [(AVCaptionGroup *)captionGroup timeRange];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = [(AVCaptionGroup *)captionGroup captions];
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v20 = 0u;
        if (v15)
        {
          [v15 timeRange];
        }

        *&time1.value = v20;
        time1.epoch = v21;
        *&time2.value = v27;
        time2.epoch = v28;
        if (!CMTimeCompare(&time1, &time2))
        {
          [v9 addObject:v15];
        }
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v12);
  }

  return v9;
}

- (void)setValidationDelegate:(id)validationDelegate
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v6 = [[AVWeakReference alloc] initWithReferencedObject:validationDelegate];

  self->_internal->validationDelegate = v6;

  objc_sync_exit(internal);
}

- (id)validationDelegate
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v4 = [(AVWeakReference *)self->_internal->validationDelegate referencedObject];
  objc_sync_exit(internal);
  return v4;
}

- (void)setFigCaptionToAVCaptionMapping:(__CFDictionary *)a3
{
  internal = self->_internal;
  figCaptionToAVCaptionMapping = internal->figCaptionToAVCaptionMapping;
  internal->figCaptionToAVCaptionMapping = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (figCaptionToAVCaptionMapping)
  {

    CFRelease(figCaptionToAVCaptionMapping);
  }
}

@end