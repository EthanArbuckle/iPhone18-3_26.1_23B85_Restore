@interface AVAssetWriterInputCaptionAdaptor
+ (AVAssetWriterInputCaptionAdaptor)assetWriterInputCaptionAdaptorWithAssetWriterInput:(AVAssetWriterInput *)input;
- (AVAssetWriterInputCaptionAdaptor)init;
- (AVAssetWriterInputCaptionAdaptor)initWithAssetWriterInput:(AVAssetWriterInput *)input;
- (BOOL)appendCaption:(AVCaption *)caption;
- (BOOL)appendCaptionGroup:(AVCaptionGroup *)captionGroup;
- (void)dealloc;
@end

@implementation AVAssetWriterInputCaptionAdaptor

+ (AVAssetWriterInputCaptionAdaptor)assetWriterInputCaptionAdaptorWithAssetWriterInput:(AVAssetWriterInput *)input
{
  v3 = [[a1 alloc] initWithAssetWriterInput:input];

  return v3;
}

- (AVAssetWriterInputCaptionAdaptor)init
{
  v4 = self;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D920];
  v7 = NSStringFromSelector(sel_initWithAssetWriterInput_);
  v13 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Not available.  Use %@ instead.", v8, v9, v10, v11, v12, v7), 0}];
  objc_exception_throw(v13);
}

- (AVAssetWriterInputCaptionAdaptor)initWithAssetWriterInput:(AVAssetWriterInput *)input
{
  v26.receiver = self;
  v26.super_class = AVAssetWriterInputCaptionAdaptor;
  result = [(AVAssetWriterInputCaptionAdaptor *)&v26 init];
  if (result)
  {
    v6 = result;
    if (input)
    {
      if ([AVMediaTypesForCaptionEditing() containsObject:{-[AVAssetWriterInput mediaType](input, "mediaType")}])
      {
        if ([(AVAssetWriterInput *)input _isAttachedToAdaptor])
        {
          v23 = v6;
          v8 = MEMORY[0x1E695DF30];
          v9 = *MEMORY[0x1E695D940];
          v22 = @"Cannot create a new caption adaptor with an asset writer input that is already attached to a caption adaptor";
        }

        else
        {
          if (![(AVAssetWriterInput *)input _status])
          {
            [(AVAssetWriterInputCaptionAdaptor *)&v6->super.isa initWithAssetWriterInput:&v27];
            return v27;
          }

          v24 = v6;
          v8 = MEMORY[0x1E695DF30];
          v9 = *MEMORY[0x1E695D940];
          v22 = @"Cannot create a new caption adaptor with an asset writer input that has already started writing";
        }
      }

      else
      {
        v16 = v6;
        v8 = MEMORY[0x1E695DF30];
        v9 = *MEMORY[0x1E695D940];
        v22 = @"Cannot create a new caption adaptor with an unsupported media type";
      }

      v15 = AVMethodExceptionReasonWithObjectAndSelector(v6, a2, v22, v17, v18, v19, v20, v21, v25);
    }

    else
    {
      v7 = result;
      v8 = MEMORY[0x1E695DF30];
      v9 = *MEMORY[0x1E695D940];
      v15 = AVMethodExceptionReasonWithObjectAndSelector(v6, a2, @"invalid parameter not satisfying: %s", v10, v11, v12, v13, v14, "input != nil");
    }

    objc_exception_throw([v8 exceptionWithName:v9 reason:v15 userInfo:0]);
  }

  return result;
}

- (void)dealloc
{
  internal = self->_internal;
  if (internal)
  {

    v4 = self->_internal;
    if (v4)
    {
      CFRelease(v4);
    }
  }

  v5.receiver = self;
  v5.super_class = AVAssetWriterInputCaptionAdaptor;
  [(AVAssetWriterInputCaptionAdaptor *)&v5 dealloc];
}

- (BOOL)appendCaption:(AVCaption *)caption
{
  if (!caption)
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = "caption != NULL";
    goto LABEL_15;
  }

  [(AVCaption *)caption timeRange];
  if ((v34 & 1) == 0 || ([(AVCaption *)caption timeRange], (v33 & 1) == 0) || ([(AVCaption *)caption timeRange], v32) || ([(AVCaption *)caption timeRange], v31 < 0))
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = "CMTIMERANGE_IS_VALID(caption.timeRange)";
LABEL_15:
    v16 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, v15);
    v17 = v13;
    v18 = v14;
    goto LABEL_16;
  }

  [(AVCaption *)caption timeRange];
  if ((v30 & 0x1D) != 1)
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = "CMTIME_IS_NUMERIC(caption.timeRange.start)";
    goto LABEL_15;
  }

  [(AVCaption *)caption timeRange];
  if ((v29 & 0x1D) != 1)
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = "CMTIME_IS_NUMERIC(caption.timeRange.duration)";
    goto LABEL_15;
  }

  v28 = 0;
  v11 = [[(AVAssetWriterInputCaptionAdaptor *)self assetWriterInput] _appendCaption:[(AVCaption *)caption copy] error:&v28];
  if (v11 == 1 && [v28 code] == -11999)
  {
    v19 = [objc_msgSend(v28 "userInfo")];
    v20 = MEMORY[0x1E695DF30];
    v21 = [v19 name];
    v22 = [v19 reason];
    v16 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"Cannot append caption: %@", v23, v24, v25, v26, v27, v22);
    v17 = v20;
    v18 = v21;
LABEL_16:
    objc_exception_throw([v17 exceptionWithName:v18 reason:v16 userInfo:0]);
  }

  return v11 == 0;
}

- (BOOL)appendCaptionGroup:(AVCaptionGroup *)captionGroup
{
  if (!captionGroup)
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = "captionGroup != NULL";
    goto LABEL_15;
  }

  [(AVCaptionGroup *)captionGroup timeRange];
  if ((v34 & 1) == 0 || ([(AVCaptionGroup *)captionGroup timeRange], (v33 & 1) == 0) || ([(AVCaptionGroup *)captionGroup timeRange], v32) || ([(AVCaptionGroup *)captionGroup timeRange], v31 < 0))
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = "CMTIMERANGE_IS_VALID(captionGroup.timeRange)";
LABEL_15:
    v16 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, v15);
    v17 = v13;
    v18 = v14;
    goto LABEL_16;
  }

  [(AVCaptionGroup *)captionGroup timeRange];
  if ((v30 & 0x1D) != 1)
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = "CMTIME_IS_NUMERIC(captionGroup.timeRange.start)";
    goto LABEL_15;
  }

  [(AVCaptionGroup *)captionGroup timeRange];
  if ((v29 & 0x1D) != 1)
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = "CMTIME_IS_NUMERIC(captionGroup.timeRange.duration)";
    goto LABEL_15;
  }

  v28 = 0;
  v11 = [[(AVAssetWriterInputCaptionAdaptor *)self assetWriterInput] _appendCaptionGroup:captionGroup error:&v28];
  if (v11 == 1 && [v28 code] == -11999)
  {
    v19 = [objc_msgSend(v28 "userInfo")];
    v20 = MEMORY[0x1E695DF30];
    v21 = [v19 name];
    v22 = [v19 reason];
    v16 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"Cannot append caption group: %@", v23, v24, v25, v26, v27, v22);
    v17 = v20;
    v18 = v21;
LABEL_16:
    objc_exception_throw([v17 exceptionWithName:v18 reason:v16 userInfo:0]);
  }

  return v11 == 0;
}

@end