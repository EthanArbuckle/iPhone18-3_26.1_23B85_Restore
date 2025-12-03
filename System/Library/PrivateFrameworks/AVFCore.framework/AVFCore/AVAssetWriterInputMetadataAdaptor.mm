@interface AVAssetWriterInputMetadataAdaptor
+ (AVAssetWriterInputMetadataAdaptor)assetWriterInputMetadataAdaptorWithAssetWriterInput:(AVAssetWriterInput *)input;
- (AVAssetWriterInputMetadataAdaptor)initWithAssetWriterInput:(AVAssetWriterInput *)input;
- (BOOL)appendTimedMetadataGroup:(AVTimedMetadataGroup *)timedMetadataGroup;
- (id)description;
- (void)dealloc;
@end

@implementation AVAssetWriterInputMetadataAdaptor

+ (AVAssetWriterInputMetadataAdaptor)assetWriterInputMetadataAdaptorWithAssetWriterInput:(AVAssetWriterInput *)input
{
  v3 = [objc_alloc(objc_opt_class()) initWithAssetWriterInput:input];

  return v3;
}

- (AVAssetWriterInputMetadataAdaptor)initWithAssetWriterInput:(AVAssetWriterInput *)input
{
  v32.receiver = self;
  v32.super_class = AVAssetWriterInputMetadataAdaptor;
  v5 = [(AVAssetWriterInputMetadataAdaptor *)&v32 init];
  v6 = v5;
  if (!input)
  {
    v9 = v5;
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v17 = "input != nil";
LABEL_14:
    v19 = AVMethodExceptionReasonWithObjectAndSelector(v6, a2, @"invalid parameter not satisfying: %s", v10, v11, v12, v13, v14, v17);
    goto LABEL_20;
  }

  if (([(NSString *)[(AVAssetWriterInput *)input mediaType] isEqual:@"meta"]& 1) == 0)
  {
    v18 = v6;
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v17 = "[[input mediaType] isEqual:AVMediaTypeMetadata]";
    goto LABEL_14;
  }

  if ([(AVAssetWriterInput *)input _isAttachedToAdaptor])
  {
    v20 = v6;
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v26 = @"Cannot create a new metadata adaptor with an asset writer input that is already attached to a metadata adaptor";
LABEL_19:
    v19 = AVMethodExceptionReasonWithObjectAndSelector(v6, a2, v26, v21, v22, v23, v24, v25, v31);
LABEL_20:
    objc_exception_throw([v15 exceptionWithName:v16 reason:v19 userInfo:0]);
  }

  if ([(AVAssetWriterInput *)input _status])
  {
    v27 = v6;
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v26 = @"Cannot create a new metadata adaptor with an asset writer input that has already started writing";
    goto LABEL_19;
  }

  if (![(AVAssetWriterInput *)input sourceFormatHint])
  {
    v28 = v6;
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v26 = @"Cannot create a new metadata adaptor with an asset writer that does not carry a source format hint";
    goto LABEL_19;
  }

  if (CMFormatDescriptionGetMediaSubType([(AVAssetWriterInput *)input sourceFormatHint]) != 1835360888)
  {
    v29 = v6;
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    AVStringForOSType(0x6D656278u);
    v26 = @"%@ only knows how to produce data with media subtype '%@', so it must be initialized with an instance of AVAssetWriterInput that is expecting data in that format";
    goto LABEL_19;
  }

  if (v6)
  {
    v7 = objc_alloc_init(AVAssetWriterInputMetadataAdaptorInternal);
    v6->_internal = v7;
    if (v7)
    {
      CFRetain(v7);
      v6->_internal->input = input;
      [(AVAssetWriterInput *)v6->_internal->input _setAttachedAdaptor:v6];
    }

    else
    {

      return 0;
    }
  }

  return v6;
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
  v4.super_class = AVAssetWriterInputMetadataAdaptor;
  [(AVAssetWriterInputMetadataAdaptor *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, assetWriterInput = %@>", NSStringFromClass(v4), self, -[AVAssetWriterInputMetadataAdaptor assetWriterInput](self, "assetWriterInput")];
}

- (BOOL)appendTimedMetadataGroup:(AVTimedMetadataGroup *)timedMetadataGroup
{
  v36 = 0;
  if (!timedMetadataGroup)
  {
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v19 = "group != nil";
LABEL_21:
    v32 = v19;
    v20 = @"invalid parameter not satisfying: %s";
    goto LABEL_22;
  }

  [(AVTimedMetadataGroup *)timedMetadataGroup timeRange];
  if ((v35 & 0x1D) != 1)
  {
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v19 = "CMTIME_IS_NUMERIC([group timeRange].start)";
    goto LABEL_21;
  }

  [(AVTimedMetadataGroup *)timedMetadataGroup timeRange];
  if (v34)
  {
    [(AVTimedMetadataGroup *)timedMetadataGroup timeRange];
    if ((v33 & 8) != 0)
    {
      v17 = MEMORY[0x1E695DF30];
      v18 = *MEMORY[0x1E695D940];
      v19 = "! CMTIME_IS_NEGATIVE_INFINITY([group timeRange].duration)";
      goto LABEL_21;
    }
  }

  _status = [[(AVAssetWriterInputMetadataAdaptor *)self assetWriterInput] _status];
  if ((_status - 1) >= 4)
  {
    if (_status)
    {
      return 1;
    }

    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D930];
    v20 = @"Cannot invoke method before the attached asset writer input has been added to an asset writer and -startWriting has been called on that asset writer";
LABEL_22:
    v21 = [v17 exceptionWithName:v18 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v20, v3, v4, v5, v6, v7, v32), 0}];
    objc_exception_throw(v21);
  }

  v12 = [(AVTimedMetadataGroup *)timedMetadataGroup _createSerializedRepresentationWithFormatDescription:[[(AVAssetWriterInputMetadataAdaptor *)self assetWriterInput] sourceFormatHint] error:&v36];
  if (v12)
  {
    v13 = [[(AVAssetWriterInputMetadataAdaptor *)self assetWriterInput] _appendSampleBuffer:v12 error:&v36];
    if (!v13)
    {
      v14 = 1;
LABEL_9:
      CFRelease(v12);
      return v14;
    }

    if (v13 != 1)
    {
      v14 = 0;
      goto LABEL_9;
    }
  }

  if ([v36 code] == -11999)
  {
    v22 = [objc_msgSend(v36 "userInfo")];
    reason = [v22 reason];
    v24 = MEMORY[0x1E695DF30];
    name = [v22 name];
    if (reason)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@": %@", reason];
    }

    v31 = [v24 exceptionWithName:name reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Cannot write to file timed metadata group %p%@", v25, v26, v27, v28, v29, timedMetadataGroup), 0}];
    if (v12)
    {
      CFRelease(v12);
    }

    objc_exception_throw(v31);
  }

  assetWriterInput = [(AVAssetWriterInputMetadataAdaptor *)self assetWriterInput];
  [(AVAssetWriterInput *)assetWriterInput _tellAssetWriterToTransitionToFailedStatusWithError:v36];
  v14 = 0;
  if (v12)
  {
    goto LABEL_9;
  }

  return v14;
}

@end