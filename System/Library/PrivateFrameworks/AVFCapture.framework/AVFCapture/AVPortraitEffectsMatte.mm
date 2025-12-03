@interface AVPortraitEffectsMatte
+ (AVPortraitEffectsMatte)portraitEffectsMatteFromDictionaryRepresentation:(NSDictionary *)imageSourceAuxDataInfoDictionary error:(NSError *)outError;
- (AVPortraitEffectsMatte)initWithPixelBuffer:(__CVBuffer *)buffer auxiliaryMetadata:(CGImageMetadata *)metadata;
- (AVPortraitEffectsMatte)initWithPixelBuffer:(__CVBuffer *)buffer portraitEffectsMatteMetadataDictionary:(id)dictionary;
- (AVPortraitEffectsMatte)portraitEffectsMatteByApplyingExifOrientation:(CGImagePropertyOrientation)exifOrientation;
- (AVPortraitEffectsMatte)portraitEffectsMatteByReplacingPortraitEffectsMatteWithPixelBuffer:(CVPixelBufferRef)pixelBuffer error:(NSError *)outError;
- (CGImageMetadata)copyAuxiliaryMetadata;
- (NSDictionary)dictionaryRepresentationForAuxiliaryDataType:(NSString *)outAuxDataType;
- (OSType)pixelFormatType;
- (id)debugDescription;
- (id)description;
- (uint64_t)copyAuxiliaryMetadata;
- (void)dealloc;
@end

@implementation AVPortraitEffectsMatte

- (id)debugDescription
{
  [(AVPortraitEffectsMatte *)self pixelFormatType];
  v3 = AVStringForOSType();
  internal = self->_internal;
  pixelBuffer = internal->pixelBuffer;
  if (!pixelBuffer)
  {
    Width = 0;
    goto LABEL_5;
  }

  Width = CVPixelBufferGetWidth(pixelBuffer);
  internal = self->_internal;
  v7 = internal->pixelBuffer;
  if (!v7)
  {
LABEL_5:
    Height = 0;
    goto LABEL_6;
  }

  Height = CVPixelBufferGetHeight(v7);
  internal = self->_internal;
LABEL_6:
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@" v.%d.%d", (internal->version >> 16), internal->version];
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %zux%zu%@", v3, Width, Height, v9];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[AVPortraitEffectsMatte debugDescription](self, "debugDescription")];
}

- (void)dealloc
{
  internal = self->_internal;
  if (internal)
  {
    pixelBuffer = internal->pixelBuffer;
    if (pixelBuffer)
    {
      CFRelease(pixelBuffer);
      internal = self->_internal;
    }
  }

  v5.receiver = self;
  v5.super_class = AVPortraitEffectsMatte;
  [(AVPortraitEffectsMatte *)&v5 dealloc];
}

+ (AVPortraitEffectsMatte)portraitEffectsMatteFromDictionaryRepresentation:(NSDictionary *)imageSourceAuxDataInfoDictionary error:(NSError *)outError
{
  pixelBufferOut = 0;
  v7 = [(NSDictionary *)imageSourceAuxDataInfoDictionary objectForKeyedSubscript:*MEMORY[0x1E696D218]];
  v8 = [(NSDictionary *)imageSourceAuxDataInfoDictionary objectForKeyedSubscript:*MEMORY[0x1E696D220]];
  v9 = [(NSDictionary *)imageSourceAuxDataInfoDictionary objectForKeyedSubscript:*MEMORY[0x1E696D228]];
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v11 == 1 && v9 == 0)
  {
    +[AVPortraitEffectsMatte portraitEffectsMatteFromDictionaryRepresentation:error:];
LABEL_43:
    v38 = 0;
    v26 = -11865;
    goto LABEL_34;
  }

  v13 = v9;
  if (v11)
  {
    goto LABEL_32;
  }

  v14 = [objc_msgSend(v8 objectForKeyedSubscript:{*MEMORY[0x1E696DEC0]), "intValue"}];
  v15 = [objc_msgSend(v8 objectForKeyedSubscript:{*MEMORY[0x1E696DFB8]), "intValue"}];
  v16 = [objc_msgSend(v8 objectForKeyedSubscript:{*MEMORY[0x1E696DD58]), "intValue"}];
  v17 = [objc_msgSend(v8 objectForKeyedSubscript:{*MEMORY[0x1E696D430]), "intValue"}];
  if (v14)
  {
    v18 = v15 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18 || v16 == 0 || v17 == 0)
  {
    +[AVPortraitEffectsMatte portraitEffectsMatteFromDictionaryRepresentation:error:];
    goto LABEL_43;
  }

  v21 = v17;
  _allSupportedPortraitEffectsMattePixelFormatTypes = [self _allSupportedPortraitEffectsMattePixelFormatTypes];
  if (([_allSupportedPortraitEffectsMattePixelFormatTypes containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v14)}] & 1) == 0)
  {
    +[AVPortraitEffectsMatte portraitEffectsMatteFromDictionaryRepresentation:error:];
    v38 = 0;
    v26 = -11864;
    goto LABEL_34;
  }

  v23 = v16;
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v21];
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{MEMORY[0x1E695E0F8], *MEMORY[0x1E69660D8], v24, *MEMORY[0x1E6966020], 0}];
  v26 = CVPixelBufferCreate(*MEMORY[0x1E695E480], v15, v16, v14, v25, &pixelBufferOut);
  v27 = pixelBufferOut;
  if (v26)
  {
    v38 = 0;
    if (!pixelBufferOut)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v41 = outError;
  CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E6965F30], *MEMORY[0x1E6965F60], kCVAttachmentMode_ShouldPropagate);
  CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
  v29 = BytesPerRow;
  if (BytesPerRow >= v21)
  {
    v30 = v21;
  }

  else
  {
    v30 = BytesPerRow;
  }

  bytes = [v7 bytes];
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
  v33 = [v7 length];
  if (v30 <= v33)
  {
    v34 = &bytes[v33];
    v35 = 1;
    do
    {
      memcpy(BaseAddress, bytes, v30);
      if (v35 >= v23)
      {
        break;
      }

      v36 = &bytes[v30 + v21];
      bytes += v21;
      BaseAddress += v29;
      ++v35;
    }

    while (v36 <= v34);
  }

  CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  outError = v41;
LABEL_32:
  v37 = [AVPortraitEffectsMatte alloc];
  v38 = [(AVPortraitEffectsMatte *)v37 initWithPixelBuffer:pixelBufferOut auxiliaryMetadata:v13];
  v26 = 0;
  v27 = pixelBufferOut;
  if (pixelBufferOut)
  {
LABEL_33:
    CFRelease(v27);
  }

LABEL_34:
  if (outError && v26)
  {
    if (ErrorIsAVFoundationError())
    {
      v39 = AVLocalizedError();
    }

    else
    {
      v39 = AVLocalizedErrorWithUnderlyingOSStatus();
    }

    *outError = v39;
  }

  return v38;
}

- (AVPortraitEffectsMatte)portraitEffectsMatteByApplyingExifOrientation:(CGImagePropertyOrientation)exifOrientation
{
  pixelRotationSessionOut = 0;
  pixelBufferOut = 0;
  pixelTransferSessionOut = 0;
  if (exifOrientation - 1 < 8)
  {
    pixelBuffer = self->_internal->pixelBuffer;
    if (!pixelBuffer)
    {
      goto LABEL_45;
    }

    Width = CVPixelBufferGetWidth(pixelBuffer);
    Height = CVPixelBufferGetHeight(self->_internal->pixelBuffer);
    PixelFormatType = CVPixelBufferGetPixelFormatType(self->_internal->pixelBuffer);
    if (exifOrientation <= kCGImagePropertyOrientationDownMirrored)
    {
      if (exifOrientation <= kCGImagePropertyOrientationUpMirrored)
      {
        v9 = exifOrientation != kCGImagePropertyOrientationUp;
      }

      else
      {
        v9 = exifOrientation != kCGImagePropertyOrientationDown;
      }

      if (exifOrientation <= kCGImagePropertyOrientationUpMirrored)
      {
        v10 = 0;
      }

      else
      {
        v10 = 180;
      }

      v11 = Width;
      Width = Height;
LABEL_23:
      v28 = *MEMORY[0x1E69660D8];
      v29 = MEMORY[0x1E695E0F8];
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v15 = *MEMORY[0x1E695E480];
      if (!CVPixelBufferCreate(*MEMORY[0x1E695E480], v11, Width, PixelFormatType, v14, &pixelBufferOut))
      {
        v16 = *MEMORY[0x1E6965F60];
        CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E6965F30], *MEMORY[0x1E6965F60], kCVAttachmentMode_ShouldPropagate);
        if (((v10 == 0) & ~v9) != 0)
        {
          v17 = VTPixelTransferSessionCreate(v15, &pixelTransferSessionOut);
          if (!v17)
          {
            v17 = VTPixelTransferSessionTransferImage(pixelTransferSessionOut, self->_internal->pixelBuffer, pixelBufferOut);
          }
        }

        else
        {
          v17 = VTPixelRotationSessionCreate(v15, &pixelRotationSessionOut);
          if (!v17)
          {
            v18 = pixelRotationSessionOut;
            v19 = *MEMORY[0x1E6983D98];
            v20 = AVCaptureVTRotationFromDegrees(v10);
            VTSessionSetProperty(v18, v19, v20);
            v21 = *MEMORY[0x1E695E4D0];
            VTSessionSetProperty(pixelRotationSessionOut, *MEMORY[0x1E6983D68], *MEMORY[0x1E695E4D0]);
            VTSessionSetProperty(pixelRotationSessionOut, *MEMORY[0x1E6983D50], v16);
            if (v9)
            {
              v22 = v10 == 90 || v10 == 270;
              v23 = MEMORY[0x1E6983D80];
              if (!v22)
              {
                v23 = MEMORY[0x1E6983D78];
              }

              VTSessionSetProperty(pixelRotationSessionOut, *v23, v21);
            }

            v17 = VTPixelRotationSessionRotateImage(pixelRotationSessionOut, self->_internal->pixelBuffer, pixelBufferOut);
          }
        }

        v24 = v17;
        goto LABEL_37;
      }

LABEL_45:
      v24 = 0;
LABEL_37:
      v25 = [AVPortraitEffectsMatte alloc];
      if (v24)
      {
        v26 = 0;
      }

      else
      {
        v26 = pixelBufferOut;
      }

      v27 = [(AVPortraitEffectsMatte *)v25 initWithPixelBuffer:v26 portraitEffectsMatteMetadataDictionary:0];
      v27->_internal->version = self->_internal->version;
      CVPixelBufferRelease(pixelBufferOut);
      if (pixelRotationSessionOut)
      {
        CFRelease(pixelRotationSessionOut);
      }

      if (pixelTransferSessionOut)
      {
        CFRelease(pixelTransferSessionOut);
      }

      return v27;
    }

    if (exifOrientation > kCGImagePropertyOrientationRight)
    {
      if (exifOrientation != kCGImagePropertyOrientationRightMirrored)
      {
        v9 = 0;
        goto LABEL_21;
      }

      v9 = 1;
    }

    else
    {
      if (exifOrientation == kCGImagePropertyOrientationLeftMirrored)
      {
        v9 = 1;
LABEL_21:
        v10 = 270;
        goto LABEL_22;
      }

      v9 = 0;
    }

    v10 = 90;
LABEL_22:
    v11 = Height;
    goto LABEL_23;
  }

  v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v12);
  }

  NSLog(&cfstr_SuppressingExc.isa, v12);
  return 0;
}

- (AVPortraitEffectsMatte)portraitEffectsMatteByReplacingPortraitEffectsMatteWithPixelBuffer:(CVPixelBufferRef)pixelBuffer error:(NSError *)outError
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  if (([objc_msgSend(objc_opt_class() "_allSupportedPortraitEffectsMattePixelFormatTypes")] & 1) == 0)
  {
    [AVPortraitEffectsMatte portraitEffectsMatteByReplacingPortraitEffectsMatteWithPixelBuffer:error:];
    goto LABEL_11;
  }

  v7 = CVBufferCopyAttachment(pixelBuffer, *MEMORY[0x1E6965F30], 0);
  if (v7)
  {
    CFAutorelease(v7);
  }

  if (!FigCFEqual())
  {
    [AVPortraitEffectsMatte portraitEffectsMatteByReplacingPortraitEffectsMatteWithPixelBuffer:error:];
LABEL_11:
    if (outError)
    {
      if (ErrorIsAVFoundationError())
      {
        v10 = AVLocalizedError();
      }

      else
      {
        v10 = AVLocalizedErrorWithUnderlyingOSStatus();
      }

      v11 = v10;
      v8 = 0;
      *outError = v11;
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_6;
  }

  v8 = [[AVPortraitEffectsMatte alloc] initWithPixelBuffer:pixelBuffer portraitEffectsMatteMetadataDictionary:0];
LABEL_6:

  return v8;
}

- (OSType)pixelFormatType
{
  pixelBuffer = self->_internal->pixelBuffer;
  if (pixelBuffer)
  {
    LODWORD(pixelBuffer) = CVPixelBufferGetPixelFormatType(pixelBuffer);
  }

  return pixelBuffer;
}

- (AVPortraitEffectsMatte)initWithPixelBuffer:(__CVBuffer *)buffer portraitEffectsMatteMetadataDictionary:(id)dictionary
{
  v10.receiver = self;
  v10.super_class = AVPortraitEffectsMatte;
  v6 = [(AVPortraitEffectsMatte *)&v10 init];
  if (v6)
  {
    internal = objc_alloc_init(AVPortraitEffectsMatteInternal);
    v6->_internal = internal;
    if (internal)
    {
      if (buffer)
      {
        v8 = CFRetain(buffer);
        internal = v6->_internal;
      }

      else
      {
        v8 = 0;
      }

      internal->pixelBuffer = v8;
      if (dictionary)
      {
        v6->_internal->version = [objc_msgSend(dictionary objectForKeyedSubscript:{*MEMORY[0x1E69914E0]), "intValue"}];
      }
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (AVPortraitEffectsMatte)initWithPixelBuffer:(__CVBuffer *)buffer auxiliaryMetadata:(CGImageMetadata *)metadata
{
  v5 = [(AVPortraitEffectsMatte *)self initWithPixelBuffer:buffer portraitEffectsMatteMetadataDictionary:0];
  v6 = v5;
  if (metadata && v5)
  {
    v5->_internal->version = [AVAuxiliaryMetadataStringTagWithPrefixedKey(metadata *MEMORY[0x1E69914D0]];
  }

  return v6;
}

- (CGImageMetadata)copyAuxiliaryMetadata
{
  Mutable = CGImageMetadataCreateMutable();
  v4 = Mutable;
  if (Mutable)
  {
    v5 = *MEMORY[0x1E69914C8];
    v6 = *MEMORY[0x1E69914D0];
    if (!CGImageMetadataRegisterNamespaceForPrefix(Mutable, *MEMORY[0x1E69914C8], *MEMORY[0x1E69914D0], 0))
    {
      [AVPortraitEffectsMatte copyAuxiliaryMetadata];
      goto LABEL_8;
    }

    if (!self->_internal->version)
    {
LABEL_8:
      CFRelease(v4);
      return 0;
    }

    if (!AVAuxiliaryMetadataAddValue(v4, v5, v6, *MEMORY[0x1E69914D8], [MEMORY[0x1E696AD98] numberWithInt:?]))
    {
      [AVPortraitEffectsMatte copyAuxiliaryMetadata];
      goto LABEL_8;
    }
  }

  else
  {
    [AVPortraitEffectsMatte copyAuxiliaryMetadata];
  }

  return v4;
}

- (NSDictionary)dictionaryRepresentationForAuxiliaryDataType:(NSString *)outAuxDataType
{
  pixelFormatType = [(AVPortraitEffectsMatte *)self pixelFormatType];
  Width = CVPixelBufferGetWidth([(AVPortraitEffectsMatte *)self mattingImage]);
  Height = CVPixelBufferGetHeight([(AVPortraitEffectsMatte *)self mattingImage]);
  BytesPerRow = CVPixelBufferGetBytesPerRow([(AVPortraitEffectsMatte *)self mattingImage]);
  if (!pixelFormatType || !Width || !Height || (v9 = BytesPerRow) == 0 || (v10 = [MEMORY[0x1E695DF88] dataWithLength:BytesPerRow * Height]) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigDebugAssert3();
    return 0;
  }

  v11 = v10;
  mattingImage = [(AVPortraitEffectsMatte *)self mattingImage];
  if (CVPixelBufferLockBaseAddress(mattingImage, 1uLL))
  {
    return 0;
  }

  BaseAddress = CVPixelBufferGetBaseAddress(mattingImage);
  memcpy([v11 mutableBytes], BaseAddress, v9 * Height);
  CVPixelBufferUnlockBaseAddress(mattingImage, 1uLL);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [(NSDictionary *)dictionary setObject:v11 forKeyedSubscript:*MEMORY[0x1E696D218]];
  v19[0] = *MEMORY[0x1E696DEC0];
  v20[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:pixelFormatType];
  v19[1] = *MEMORY[0x1E696DFB8];
  v20[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:Width];
  v19[2] = *MEMORY[0x1E696DD58];
  v20[2] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:Height];
  v19[3] = *MEMORY[0x1E696D430];
  v20[3] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v9];
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];
  [(NSDictionary *)dictionary setObject:v15 forKeyedSubscript:*MEMORY[0x1E696D220]];
  copyAuxiliaryMetadata = [(AVPortraitEffectsMatte *)self copyAuxiliaryMetadata];
  if (copyAuxiliaryMetadata)
  {
    v17 = copyAuxiliaryMetadata;
    [(NSDictionary *)dictionary setObject:copyAuxiliaryMetadata forKeyedSubscript:*MEMORY[0x1E696D228]];
    CFRelease(v17);
  }

  if (outAuxDataType)
  {
    *outAuxDataType = [(AVPortraitEffectsMatte *)self auxiliaryImageType];
  }

  return dictionary;
}

+ (uint64_t)portraitEffectsMatteFromDictionaryRepresentation:error:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

+ (uint64_t)portraitEffectsMatteFromDictionaryRepresentation:error:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

+ (uint64_t)portraitEffectsMatteFromDictionaryRepresentation:error:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)portraitEffectsMatteByReplacingPortraitEffectsMatteWithPixelBuffer:error:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)portraitEffectsMatteByReplacingPortraitEffectsMatteWithPixelBuffer:error:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)copyAuxiliaryMetadata
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

@end