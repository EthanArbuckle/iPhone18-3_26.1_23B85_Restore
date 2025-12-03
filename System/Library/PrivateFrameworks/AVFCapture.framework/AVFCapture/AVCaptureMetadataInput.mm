@interface AVCaptureMetadataInput
+ (AVCaptureMetadataInput)metadataInputWithFormatDescription:(CMMetadataFormatDescriptionRef)desc clock:(CMClockRef)clock;
- (AVCaptureMetadataInput)initWithFormatDescription:(CMMetadataFormatDescriptionRef)desc clock:(CMClockRef)clock;
- (BOOL)appendTimedMetadataGroup:(AVTimedMetadataGroup *)metadata error:(NSError *)outError;
- (id)ports;
- (void)dealloc;
@end

@implementation AVCaptureMetadataInput

+ (AVCaptureMetadataInput)metadataInputWithFormatDescription:(CMMetadataFormatDescriptionRef)desc clock:(CMClockRef)clock
{
  v4 = [objc_alloc(objc_opt_class()) initWithFormatDescription:desc clock:clock];

  return v4;
}

- (AVCaptureMetadataInput)initWithFormatDescription:(CMMetadataFormatDescriptionRef)desc clock:(CMClockRef)clock
{
  if (!desc)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    goto LABEL_7;
  }

  if (!clock)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    goto LABEL_7;
  }

  if (AVCaptureMetadataObjectsOnly())
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E696A790];
LABEL_7:
    v9 = [v7 exceptionWithName:v8 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];

    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v9);
    }

    NSLog(&cfstr_SuppressingExc.isa, v9);
    return 0;
  }

  v15.receiver = self;
  v15.super_class = AVCaptureMetadataInput;
  initSubclass = [(AVCaptureInput *)&v15 initSubclass];
  if (!initSubclass)
  {
    return initSubclass;
  }

  v12 = objc_alloc_init(AVCaptureMetadataInputInternal);
  initSubclass->_internal = v12;
  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = objc_opt_class();
    initSubclass->_internal->sourceID = [v13 initWithFormat:@"<%@ %p>", NSStringFromClass(v14), initSubclass];
    initSubclass->_internal->desc = CFRetain(desc);
    initSubclass->_internal->clock = CFRetain(clock);
    return initSubclass;
  }

  return 0;
}

- (void)dealloc
{
  internal = self->_internal;
  if (internal)
  {

    v4 = self->_internal;
    desc = v4->desc;
    if (desc)
    {
      CFRelease(desc);
      v4 = self->_internal;
    }

    clock = v4->clock;
    if (clock)
    {
      CFRelease(clock);
      v4 = self->_internal;
    }

    emptyBoxedMetadata = v4->emptyBoxedMetadata;
    if (emptyBoxedMetadata)
    {
      CFRelease(emptyBoxedMetadata);
      v4 = self->_internal;
    }
  }

  v8.receiver = self;
  v8.super_class = AVCaptureMetadataInput;
  [(AVCaptureInput *)&v8 dealloc];
}

- (id)ports
{
  internal = self->_internal;
  metadataPort = internal->metadataPort;
  if (!metadataPort)
  {
    self->_internal->metadataPort = [AVCaptureInputPort portWithInput:self mediaType:*MEMORY[0x1E69875D0] formatDescription:internal->desc enabled:1 sourceDeviceType:0 sourceDevicePosition:0];
    metadataPort = self->_internal->metadataPort;
  }

  v6 = metadataPort;
  return [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1];
}

- (BOOL)appendTimedMetadataGroup:(AVTimedMetadataGroup *)metadata error:(NSError *)outError
{
  v46 = 0;
  v47 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  if (!metadata)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v7);
    }

    goto LABEL_6;
  }

  v6 = metadata;
  [(AVTimedMetadataGroup *)metadata timeRange];
  if ((v41 & 1) == 0)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v7);
    }

LABEL_6:
    NSLog(&cfstr_SuppressingExc.isa, v7);
    v8 = 0;
    goto LABEL_41;
  }

  items = [(AVTimedMetadataGroup *)v6 items];
  v10 = items;
  if (!items || ![(NSArray *)items count])
  {
    internal = self->_internal;
    emptyBoxedMetadata = internal->emptyBoxedMetadata;
    blockBufferOut = &internal->emptyBoxedMetadata;
    BlockBuffer = emptyBoxedMetadata;
    if (!emptyBoxedMetadata)
    {
      v23 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, 8uLL, *MEMORY[0x1E695E480], 0, 0, 8uLL, 1u, blockBufferOut);
      *(v43 + 6) = v23;
      if (v23)
      {
        goto LABEL_43;
      }

      dataPointerOut = 0;
      DataPointer = CMBlockBufferGetDataPointer(self->_internal->emptyBoxedMetadata, 0, 0, 0, &dataPointerOut);
      *(v43 + 6) = DataPointer;
      if (DataPointer)
      {
        FigDebugAssert3();
        goto LABEL_32;
      }

      *dataPointerOut = 0x8000000;
      BlockBuffer = self->_internal->emptyBoxedMetadata;
    }

LABEL_29:
    memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
    [(AVTimedMetadataGroup *)v6 timeRange];
    *&sampleTimingArray.duration.value = v32;
    sampleTimingArray.duration.epoch = v33;
    [(AVTimedMetadataGroup *)v6 timeRange];
    sampleTimingArray.presentationTimeStamp = v31;
    sampleTimingArray.decodeTimeStamp = **&MEMORY[0x1E6960C70];
    sampleSizeArray = CMBlockBufferGetDataLength(BlockBuffer);
    v25 = CMSampleBufferCreate(*MEMORY[0x1E695E480], BlockBuffer, 1u, 0, 0, self->_internal->desc, 1, 1, &sampleTimingArray, 1, &sampleSizeArray, &v46);
    *(v43 + 6) = v25;
    if (v25)
    {
      FigDebugAssert3();
    }

    else
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __57__AVCaptureMetadataInput_appendTimedMetadataGroup_error___block_invoke;
      v29[3] = &unk_1E786ECF8;
      v29[4] = self;
      v29[5] = &v42;
      v29[6] = v46;
      [(AVCaptureInput *)self performFigCaptureSessionOperationSafelyUsingBlock:v29];
      if (*(v43 + 6))
      {
        FigDebugAssert3();
      }
    }

    goto LABEL_32;
  }

  v11 = FigBoxedMetadataCreateForConstruction();
  *(v43 + 6) = v11;
  if (v11)
  {
LABEL_43:
    FigDebugAssert3();
    goto LABEL_32;
  }

  v27 = v6;
  v28 = outError;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v12 = [(NSArray *)v10 countByEnumeratingWithState:&v36 objects:v35 count:16];
  if (v12)
  {
    v13 = *v37;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v36 + 1) + 8 * i);
        [v15 identifier];
        [v15 dataType];
        [v15 locale];
        if (FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors())
        {
          value = [v15 value];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            BoxedMetadataFromFaceObjectAndFormatDescription = AVMetadataObjectCreateBoxedMetadataFromFaceObjectAndFormatDescription(value, self->_internal->desc, 0);
            if (BoxedMetadataFromFaceObjectAndFormatDescription)
            {
              *(v43 + 6) = FigBoxedMetadataAppendCFTypedValue();
              CFRelease(BoxedMetadataFromFaceObjectAndFormatDescription);
            }
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              *(v43 + 6) = FigBoxedMetadataAppendCFTypedValue();
            }
          }
        }
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v36 objects:v35 count:16];
    }

    while (v12);
  }

  v18 = FigBoxedMetadataEndConstruction();
  outError = v28;
  v6 = v27;
  *(v43 + 6) = v18;
  if (!v18)
  {
    BlockBuffer = FigBoxedMetadataGetBlockBuffer();
    goto LABEL_29;
  }

  FigDebugAssert3();
LABEL_32:
  if (outError && *(v43 + 6) && !*outError)
  {
    *outError = AVLocalizedErrorWithUnderlyingOSStatus();
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  v8 = *(v43 + 6) == 0;
LABEL_41:
  _Block_object_dispose(&v42, 8);
  return v8;
}

uint64_t __57__AVCaptureMetadataInput_appendTimedMetadataGroup_error___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = [*(result + 32) sourceID];
    v5 = *(v3 + 48);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v6)
    {
      result = v6(a2, v4, *MEMORY[0x1E698FBC0], v5);
    }

    else
    {
      result = 4294954514;
    }

    *(*(*(v3 + 40) + 8) + 24) = result;
  }

  return result;
}

@end