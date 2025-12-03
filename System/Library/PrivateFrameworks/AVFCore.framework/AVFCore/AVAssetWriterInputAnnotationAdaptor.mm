@interface AVAssetWriterInputAnnotationAdaptor
+ (id)assetWriterInputAnnotationAdaptorWithAssetWriterInput:(id)input;
+ (opaqueCMFormatDescription)annotationFormatDescription;
- (AVAssetWriterInput)assetWriterInput;
- (AVAssetWriterInputAnnotationAdaptor)init;
- (AVAssetWriterInputAnnotationAdaptor)initWithAssetWriterInput:(id)input;
- (BOOL)appendAnnotation:(id)annotation;
- (id)description;
- (void)dealloc;
@end

@implementation AVAssetWriterInputAnnotationAdaptor

+ (id)assetWriterInputAnnotationAdaptorWithAssetWriterInput:(id)input
{
  v3 = [[self alloc] initWithAssetWriterInput:input];

  return v3;
}

+ (opaqueCMFormatDescription)annotationFormatDescription
{
  array = [MEMORY[0x1E695DF70] array];
  v3 = objc_alloc_init(AVMutableMetadataItem);
  [(AVMutableMetadataItem *)v3 setIdentifier:@"mdta/com.apple.quicktime.annotation.body"];
  *&v11.start.value = *MEMORY[0x1E6960C70];
  v8 = *&v11.start.value;
  v11.start.epoch = *(MEMORY[0x1E6960C70] + 16);
  epoch = v11.start.epoch;
  [(AVMutableMetadataItem *)v3 setTime:&v11];
  [(AVMutableMetadataItem *)v3 setDataType:*MEMORY[0x1E6960228]];
  [array addObject:v3];
  v5 = objc_alloc_init(AVMutableMetadataItem);
  [(AVMutableMetadataItem *)v5 setIdentifier:@"mdta/com.apple.quicktime.annotation.representation"];
  *&v11.start.value = v8;
  v11.start.epoch = epoch;
  [(AVMutableMetadataItem *)v5 setTime:&v11];
  [(AVMutableMetadataItem *)v5 setDataType:*MEMORY[0x1E6960260]];
  [array addObject:v5];
  v6 = [AVMutableTimedMetadataGroup alloc];
  CMTimeMake(&duration, 1, 1000);
  start = **&MEMORY[0x1E6960CC0];
  CMTimeRangeMake(&v11, &start, &duration);
  return [(AVTimedMetadataGroup *)[(AVMutableTimedMetadataGroup *)v6 initWithItems:array timeRange:&v11] copyFormatDescription];
}

- (AVAssetWriterInputAnnotationAdaptor)init
{
  selfCopy = self;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D920];
  v7 = NSStringFromSelector(sel_initWithAssetWriterInput_);
  v13 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Not available.  Use %@ instead.", v8, v9, v10, v11, v12, v7), 0}];
  objc_exception_throw(v13);
}

- (AVAssetWriterInputAnnotationAdaptor)initWithAssetWriterInput:(id)input
{
  v28.receiver = self;
  v28.super_class = AVAssetWriterInputAnnotationAdaptor;
  v5 = [(AVAssetWriterInputAnnotationAdaptor *)&v28 init];
  v6 = v5;
  if (v5)
  {
    if (input)
    {
      if ([objc_msgSend(input "mediaType")])
      {
        if ([input _isAttachedToAdaptor])
        {
          v19 = v6;
          v14 = MEMORY[0x1E695DF30];
          v15 = *MEMORY[0x1E695D940];
          v25 = @"Cannot create a new annotation adaptor with an asset writer input that is already attached to an annotation adaptor";
        }

        else
        {
          if (![input _status])
          {
            v6->_assetWriterInputMetadataAdaptor = [AVAssetWriterInputMetadataAdaptor assetWriterInputMetadataAdaptorWithAssetWriterInput:input];
            v6->_assetWriterInput = input;
            [input _setAttachedAdaptor:v6];
            return v6;
          }

          v26 = v6;
          v14 = MEMORY[0x1E695DF30];
          v15 = *MEMORY[0x1E695D940];
          v25 = @"Cannot create a new annotation adaptor with an asset writer input that has already started writing";
        }

        v18 = AVMethodExceptionReasonWithObjectAndSelector(v6, a2, v25, v20, v21, v22, v23, v24, v27);
LABEL_14:
        objc_exception_throw([v14 exceptionWithName:v15 reason:v18 userInfo:0]);
      }

      v17 = v6;
      v14 = MEMORY[0x1E695DF30];
      v15 = *MEMORY[0x1E695D940];
      v16 = "[[input mediaType] isEqual:AVMediaTypeMetadata]";
    }

    else
    {
      v8 = v5;
      v14 = MEMORY[0x1E695DF30];
      v15 = *MEMORY[0x1E695D940];
      v16 = "input != nil";
    }

    v18 = AVMethodExceptionReasonWithObjectAndSelector(v6, a2, @"invalid parameter not satisfying: %s", v9, v10, v11, v12, v13, v16);
    goto LABEL_14;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetWriterInputAnnotationAdaptor;
  [(AVAssetWriterInputAnnotationAdaptor *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, assetWriterInput = %@>", NSStringFromClass(v4), self, -[AVAssetWriterInputAnnotationAdaptor assetWriterInput](self, "assetWriterInput")];
}

- (AVAssetWriterInput)assetWriterInput
{
  v2 = self->_assetWriterInput;

  return v2;
}

- (BOOL)appendAnnotation:(id)annotation
{
  v59 = *MEMORY[0x1E69E9840];
  v57 = 0;
  if (!annotation)
  {
    v30 = MEMORY[0x1E695DF30];
    name = *MEMORY[0x1E695D940];
    v32 = "annotation != nil";
LABEL_33:
    v40 = v32;
    v36 = @"invalid parameter not satisfying: %s";
    goto LABEL_34;
  }

  [annotation timeRange];
  if ((v56 & 0x1D) != 1)
  {
    v30 = MEMORY[0x1E695DF30];
    name = *MEMORY[0x1E695D940];
    v32 = "CMTIME_IS_NUMERIC([annotation timeRange].start)";
    goto LABEL_33;
  }

  [annotation timeRange];
  if (v55)
  {
    [annotation timeRange];
    if ((v54 & 8) != 0)
    {
      v30 = MEMORY[0x1E695DF30];
      name = *MEMORY[0x1E695D940];
      v32 = "! CMTIME_IS_NEGATIVE_INFINITY([annotation timeRange].duration)";
      goto LABEL_33;
    }
  }

  _status = [[(AVAssetWriterInputAnnotationAdaptor *)self assetWriterInput] _status];
  if ((_status - 1) >= 4)
  {
    if (_status)
    {
      return 1;
    }

    v30 = MEMORY[0x1E695DF30];
    name = *MEMORY[0x1E695D930];
    v36 = @"Cannot invoke method before the attached asset writer input has been added to an asset writer and -startWriting has been called on that asset writer";
LABEL_34:
    selfCopy = self;
    v38 = a2;
    goto LABEL_37;
  }

  v41 = a2;
  selfCopy2 = self;
  [[(AVAssetWriterInputAnnotationAdaptor *)self assetWriterInput] sourceFormatHint];
  v52 = 0;
  v53 = 0;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  [annotation timeRange];
  array = [MEMORY[0x1E695DF70] array];
  [annotation getJSONData:&v53 representationBinaryDataBindings:&v52];
  v13 = objc_alloc_init(AVMutableMetadataItem);
  [(AVMutableMetadataItem *)v13 setIdentifier:0x1F0A91D10];
  [(AVMutableMetadataItem *)v13 setDataType:*MEMORY[0x1E6960228]];
  v14 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v53 options:0 error:&v57];
  if (!v14)
  {
LABEL_24:
    v27 = selfCopy2;
    goto LABEL_25;
  }

  [(AVMutableMetadataItem *)v13 setValue:v14];
  [array addObject:v13];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v52;
  v15 = [v52 countByEnumeratingWithState:&v45 objects:v58 count:16];
  if (!v15)
  {
    goto LABEL_19;
  }

  v16 = v15;
  v17 = *v46;
  v18 = *MEMORY[0x1E6960260];
  do
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v46 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v45 + 1) + 8 * i);
      v21 = [v20 objectForKey:0x1F0A8AA90];
      if ([v20 objectForKey:0x1F0A91D50])
      {
        v22 = v21 == 0;
      }

      else
      {
        v22 = 1;
      }

      if (v22)
      {
        v57 = AVLocalizedError(@"AVFoundationErrorDomain", -11883, 0);
        goto LABEL_24;
      }

      v23 = [AVAnnotationRepresentation _createMetadataItemPayloadForDataBinding:v20 error:&v57];
      if (!v23)
      {
        goto LABEL_24;
      }

      v24 = v23;
      v25 = objc_alloc_init(AVMutableMetadataItem);
      [(AVMutableMetadataItem *)v25 setIdentifier:0x1F0A91D30];
      [(AVMutableMetadataItem *)v25 setDataType:v18];
      [(AVMutableMetadataItem *)v25 setValue:v24];
      [array addObject:v25];
    }

    v16 = [obj countByEnumeratingWithState:&v45 objects:v58 count:16];
  }

  while (v16);
LABEL_19:
  v26 = [AVTimedMetadataGroup alloc];
  v44[0] = v49;
  v44[1] = v50;
  v44[2] = v51;
  v27 = selfCopy2;
  if ([(AVAssetWriterInputMetadataAdaptor *)selfCopy2->_assetWriterInputMetadataAdaptor appendTimedMetadataGroup:[(AVTimedMetadataGroup *)v26 initWithItems:array timeRange:v44]])
  {
    return 1;
  }

LABEL_25:
  if ([v57 code] == -11999)
  {
    v33 = [objc_msgSend(v57 "userInfo")];
    reason = [v33 reason];
    v30 = MEMORY[0x1E695DF30];
    name = [v33 name];
    if (reason)
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@": %@", reason];
    }

    else
    {
      v35 = &stru_1F0A8E470;
    }

    v40 = v35;
    v36 = @"Cannot write annotation to file %@";
    v38 = v41;
    selfCopy = selfCopy2;
LABEL_37:
    v39 = [v30 exceptionWithName:name reason:AVMethodExceptionReasonWithObjectAndSelector(selfCopy userInfo:{v38, v36, v3, v4, v5, v6, v7, v40), 0}];
    objc_exception_throw(v39);
  }

  assetWriterInput = [(AVAssetWriterInputAnnotationAdaptor *)v27 assetWriterInput];
  [(AVAssetWriterInput *)assetWriterInput _tellAssetWriterToTransitionToFailedStatusWithError:v57];
  return 0;
}

@end