@interface AVAssetReaderOutputMetadataAdaptor
+ (AVAssetReaderOutputMetadataAdaptor)assetReaderOutputMetadataAdaptorWithAssetReaderTrackOutput:(AVAssetReaderTrackOutput *)trackOutput;
- (AVAssetReaderOutputMetadataAdaptor)initWithAssetReaderTrackOutput:(AVAssetReaderTrackOutput *)trackOutput;
- (AVTimedMetadataGroup)nextTimedMetadataGroup;
- (int)addExtractionForOutput:(id)output figAssetReader:(OpaqueFigAssetReader *)reader options:(id)options withOutputExtactionID:(int *)d;
- (void)dealloc;
@end

@implementation AVAssetReaderOutputMetadataAdaptor

+ (AVAssetReaderOutputMetadataAdaptor)assetReaderOutputMetadataAdaptorWithAssetReaderTrackOutput:(AVAssetReaderTrackOutput *)trackOutput
{
  v3 = [[self alloc] initWithAssetReaderTrackOutput:trackOutput];

  return v3;
}

- (AVAssetReaderOutputMetadataAdaptor)initWithAssetReaderTrackOutput:(AVAssetReaderTrackOutput *)trackOutput
{
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  if (!trackOutput)
  {
    selfCopy = self;
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D940];
    v20 = "trackOutput != nil";
LABEL_12:
    v22 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"invalid parameter not satisfying: %s", v13, v14, v15, v16, v17, v20);
    v23 = v18;
    v24 = v19;
    goto LABEL_16;
  }

  v8 = v7;
  if (([-[AVAssetReaderTrackOutput mediaType](trackOutput "mediaType")] & 1) == 0)
  {
    selfCopy2 = self;
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D940];
    v20 = "[[trackOutput mediaType] isEqualToString:AVMediaTypeMetadata]";
    goto LABEL_12;
  }

  if ([(AVAssetReaderTrackOutput *)trackOutput _isAttachedToAdaptor])
  {
    selfCopy3 = self;
    v26 = MEMORY[0x1E695DF30];
    v27 = *MEMORY[0x1E695D940];
    v33 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"Cannot initialize an instance of %@ with a track output which was used to initialize another instance of %@", v28, v29, v30, v31, v32, v8);
LABEL_15:
    v22 = v33;
    v23 = v26;
    v24 = v27;
LABEL_16:
    objc_exception_throw([v23 exceptionWithName:v24 reason:v22 userInfo:0]);
  }

  if ([(AVAssetReaderOutput *)trackOutput _status]>= 1)
  {
    selfCopy4 = self;
    v26 = MEMORY[0x1E695DF30];
    v27 = *MEMORY[0x1E695D940];
    v33 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"Cannot initialize an instance of %@ with a track output which has already progressed beyond AVAssetReaderStatusUnknown", v35, v36, v37, v38, v39, v8);
    goto LABEL_15;
  }

  v40.receiver = self;
  v40.super_class = AVAssetReaderOutputMetadataAdaptor;
  v9 = [(AVAssetReaderOutputMetadataAdaptor *)&v40 init];
  if (v9)
  {
    v10 = objc_alloc_init(AVAssetReaderOutputMetadataAdaptorInternal);
    v9->_internal = v10;
    if (v10)
    {
      CFRetain(v10);
      v9->_internal->trackOutput = trackOutput;
      [(AVAssetReaderTrackOutput *)trackOutput _setAttachedAdaptor:v9];
    }

    else
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

    CFRelease(self->_internal);
    internal = self->_internal;
  }

  v4.receiver = self;
  v4.super_class = AVAssetReaderOutputMetadataAdaptor;
  [(AVAssetReaderOutputMetadataAdaptor *)&v4 dealloc];
}

- (int)addExtractionForOutput:(id)output figAssetReader:(OpaqueFigAssetReader *)reader options:(id)options withOutputExtactionID:(int *)d
{
  v9 = [objc_msgSend(output "track")];
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v10)
  {
    return -12782;
  }

  return v10(reader, v9, options, d);
}

- (AVTimedMetadataGroup)nextTimedMetadataGroup
{
  _status = [(AVAssetReaderOutput *)self->_internal->trackOutput _status];
  if (_status == 1)
  {
    _copyNextSampleBufferForAdaptor = 0;
    do
    {
      if (_copyNextSampleBufferForAdaptor)
      {
        CFRelease(_copyNextSampleBufferForAdaptor);
      }

      _copyNextSampleBufferForAdaptor = [(AVAssetReaderTrackOutput *)self->_internal->trackOutput _copyNextSampleBufferForAdaptor];
      v12 = [[AVTimedMetadataGroup alloc] initWithSampleBuffer:_copyNextSampleBufferForAdaptor];
      if (v12)
      {
        v13 = 1;
      }

      else
      {
        v13 = _copyNextSampleBufferForAdaptor == 0;
      }
    }

    while (!v13);
    v10 = v12;
    if (_copyNextSampleBufferForAdaptor)
    {
      CFRelease(_copyNextSampleBufferForAdaptor);
    }
  }

  else
  {
    if (!_status)
    {
      v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"cannot call method until the track output is attached to an asset reader and -startReading has been called on that asset reader", v5, v6, v7, v8, v9, v16), 0}];
      objc_exception_throw(v15);
    }

    return 0;
  }

  return v10;
}

@end