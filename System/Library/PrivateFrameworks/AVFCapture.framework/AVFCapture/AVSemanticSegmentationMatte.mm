@interface AVSemanticSegmentationMatte
+ (AVSemanticSegmentationMatte)semanticSegmentationMatteFromImageSourceAuxiliaryDataType:(CFStringRef)imageSourceAuxiliaryDataType dictionaryRepresentation:(NSDictionary *)imageSourceAuxiliaryDataInfoDictionary error:(NSError *)outError;
+ (id)_allSupportedSemanticSegmentationMatteTypes;
- (AVSemanticSegmentationMatte)initWithType:(id)type pixelBuffer:(__CVBuffer *)buffer auxiliaryMetadata:(CGImageMetadata *)metadata;
- (AVSemanticSegmentationMatte)initWithType:(id)type pixelBuffer:(__CVBuffer *)buffer semanticSegmentationMatteMetadataDictionary:(id)dictionary;
- (AVSemanticSegmentationMatte)semanticSegmentationMatteByApplyingExifOrientation:(CGImagePropertyOrientation)exifOrientation;
- (AVSemanticSegmentationMatte)semanticSegmentationMatteByReplacingSemanticSegmentationMatteWithPixelBuffer:(CVPixelBufferRef)pixelBuffer error:(NSError *)outError;
- (AVSemanticSegmentationMatteType)matteType;
- (CGImageMetadata)copyAuxiliaryMetadata;
- (NSDictionary)dictionaryRepresentationForAuxiliaryDataType:(NSString *)outAuxDataType;
- (OSType)pixelFormatType;
- (__CFString)auxiliaryImageType;
- (id)debugDescription;
- (id)description;
- (uint64_t)copyAuxiliaryMetadata;
- (void)dealloc;
@end

@implementation AVSemanticSegmentationMatte

- (id)debugDescription
{
  [(AVSemanticSegmentationMatte *)self pixelFormatType];
  v3 = AVStringForOSType();
  pixelBuffer = self->_pixelBuffer;
  if (pixelBuffer)
  {
    Width = CVPixelBufferGetWidth(pixelBuffer);
    v6 = self->_pixelBuffer;
    if (v6)
    {
      Height = CVPixelBufferGetHeight(v6);
      goto LABEL_6;
    }
  }

  else
  {
    Width = 0;
  }

  Height = 0;
LABEL_6:
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@" v.%d.%d", (self->_version >> 16), self->_version];
  matteType = self->_matteType;
  v10 = @"Skin";
  v11 = @"Teeth";
  if (matteType == @"AVSemanticSegmentationMatteTypeGlasses")
  {
    v12 = @"Glasses";
  }

  else
  {
    v12 = 0;
  }

  if (matteType != @"AVSemanticSegmentationMatteTypeTeeth")
  {
    v11 = v12;
  }

  if (matteType != @"AVSemanticSegmentationMatteTypeSkin")
  {
    v10 = v11;
  }

  if (matteType == @"AVSemanticSegmentationMatteTypeHair")
  {
    v13 = @"Hair";
  }

  else
  {
    v13 = v10;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ %zux%zu%@", v13, v3, Width, Height, v8];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[AVSemanticSegmentationMatte debugDescription](self, "debugDescription")];
}

- (void)dealloc
{
  pixelBuffer = self->_pixelBuffer;
  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
  }

  v4.receiver = self;
  v4.super_class = AVSemanticSegmentationMatte;
  [(AVSemanticSegmentationMatte *)&v4 dealloc];
}

- (AVSemanticSegmentationMatteType)matteType
{
  v2 = self->_matteType;

  return v2;
}

- (AVSemanticSegmentationMatte)semanticSegmentationMatteByApplyingExifOrientation:(CGImagePropertyOrientation)exifOrientation
{
  pixelRotationSessionOut = 0;
  pixelBufferOut = 0;
  pixelTransferSessionOut = 0;
  if (exifOrientation - 1 < 8)
  {
    pixelBuffer = self->_pixelBuffer;
    if (!pixelBuffer)
    {
      goto LABEL_45;
    }

    Width = CVPixelBufferGetWidth(pixelBuffer);
    Height = CVPixelBufferGetHeight(self->_pixelBuffer);
    PixelFormatType = CVPixelBufferGetPixelFormatType(self->_pixelBuffer);
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
      v29 = *MEMORY[0x1E69660D8];
      v30 = MEMORY[0x1E695E0F8];
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
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
            v17 = VTPixelTransferSessionTransferImage(pixelTransferSessionOut, self->_pixelBuffer, pixelBufferOut);
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

            v17 = VTPixelRotationSessionRotateImage(pixelRotationSessionOut, self->_pixelBuffer, pixelBufferOut);
          }
        }

        v24 = v17;
        goto LABEL_37;
      }

LABEL_45:
      v24 = 0;
LABEL_37:
      v25 = [AVSemanticSegmentationMatte alloc];
      matteType = [(AVSemanticSegmentationMatte *)self matteType];
      if (v24)
      {
        v27 = 0;
      }

      else
      {
        v27 = pixelBufferOut;
      }

      v28 = [(AVSemanticSegmentationMatte *)v25 initWithType:matteType pixelBuffer:v27 semanticSegmentationMatteMetadataDictionary:0];
      v28->_version = self->_version;
      CVPixelBufferRelease(pixelBufferOut);
      if (pixelRotationSessionOut)
      {
        CFRelease(pixelRotationSessionOut);
      }

      if (pixelTransferSessionOut)
      {
        CFRelease(pixelTransferSessionOut);
      }

      return v28;
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

- (AVSemanticSegmentationMatte)semanticSegmentationMatteByReplacingSemanticSegmentationMatteWithPixelBuffer:(CVPixelBufferRef)pixelBuffer error:(NSError *)outError
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  if (([objc_msgSend(objc_opt_class() "_allSupportedSemanticSegmentationMattePixelFormatTypes")] & 1) == 0)
  {
    [AVSemanticSegmentationMatte semanticSegmentationMatteByReplacingSemanticSegmentationMatteWithPixelBuffer:error:];
    goto LABEL_11;
  }

  v8 = CVBufferCopyAttachment(pixelBuffer, *MEMORY[0x1E6965F30], 0);
  if (v8)
  {
    CFAutorelease(v8);
  }

  if (!FigCFEqual())
  {
    [AVSemanticSegmentationMatte semanticSegmentationMatteByReplacingSemanticSegmentationMatteWithPixelBuffer:error:];
LABEL_11:
    if (outError)
    {
      if (ErrorIsAVFoundationError())
      {
        v11 = AVLocalizedError();
      }

      else
      {
        v11 = AVLocalizedErrorWithUnderlyingOSStatus();
      }

      v12 = v11;
      v9 = 0;
      *outError = v12;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_6;
  }

  v9 = [[AVSemanticSegmentationMatte alloc] initWithType:[(AVSemanticSegmentationMatte *)self matteType] pixelBuffer:pixelBuffer semanticSegmentationMatteMetadataDictionary:0];
LABEL_6:

  return v9;
}

- (OSType)pixelFormatType
{
  pixelBuffer = self->_pixelBuffer;
  if (pixelBuffer)
  {
    LODWORD(pixelBuffer) = CVPixelBufferGetPixelFormatType(pixelBuffer);
  }

  return pixelBuffer;
}

- (AVSemanticSegmentationMatte)initWithType:(id)type pixelBuffer:(__CVBuffer *)buffer semanticSegmentationMatteMetadataDictionary:(id)dictionary
{
  v13.receiver = self;
  v13.super_class = AVSemanticSegmentationMatte;
  v8 = [(AVSemanticSegmentationMatte *)&v13 init];
  if (v8)
  {
    _allSupportedSemanticSegmentationMatteTypes = [objc_opt_class() _allSupportedSemanticSegmentationMatteTypes];
    if ([_allSupportedSemanticSegmentationMatteTypes containsObject:type])
    {
      v8->_matteType = type;
      if (buffer)
      {
        v10 = CFRetain(buffer);
      }

      else
      {
        v10 = 0;
      }

      v8->_pixelBuffer = v10;
      if (dictionary)
      {
        v8->_version = [objc_msgSend(dictionary objectForKeyedSubscript:{*MEMORY[0x1E6991520]), "intValue"}];
      }
    }

    else
    {
      v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:{0, _allSupportedSemanticSegmentationMatteTypes}];

      if (AVCaptureShouldThrowForAPIViolations())
      {
        objc_exception_throw(v11);
      }

      NSLog(&cfstr_SuppressingExc.isa, v11);
      return 0;
    }
  }

  return v8;
}

- (AVSemanticSegmentationMatte)initWithType:(id)type pixelBuffer:(__CVBuffer *)buffer auxiliaryMetadata:(CGImageMetadata *)metadata
{
  v6 = [(AVSemanticSegmentationMatte *)self initWithType:type pixelBuffer:buffer semanticSegmentationMatteMetadataDictionary:0];
  v7 = v6;
  if (metadata && v6)
  {
    v6->_version = [AVAuxiliaryMetadataStringTagWithPrefixedKey(metadata *MEMORY[0x1E6991510]];
  }

  return v7;
}

- (CGImageMetadata)copyAuxiliaryMetadata
{
  Mutable = CGImageMetadataCreateMutable();
  v4 = Mutable;
  if (Mutable)
  {
    v5 = *MEMORY[0x1E6991508];
    v6 = *MEMORY[0x1E6991510];
    if (!CGImageMetadataRegisterNamespaceForPrefix(Mutable, *MEMORY[0x1E6991508], *MEMORY[0x1E6991510], 0))
    {
      [AVSemanticSegmentationMatte copyAuxiliaryMetadata];
      goto LABEL_8;
    }

    if (!self->_version)
    {
LABEL_8:
      CFRelease(v4);
      return 0;
    }

    if (!AVAuxiliaryMetadataAddValue(v4, v5, v6, *MEMORY[0x1E6991518], [MEMORY[0x1E696AD98] numberWithInt:?]))
    {
      [AVSemanticSegmentationMatte copyAuxiliaryMetadata];
      goto LABEL_8;
    }
  }

  else
  {
    [AVSemanticSegmentationMatte copyAuxiliaryMetadata];
  }

  return v4;
}

- (__CFString)auxiliaryImageType
{
  matteType = self->_matteType;
  if (matteType == @"AVSemanticSegmentationMatteTypeSkin")
  {
    v4 = MEMORY[0x1E696D2A0];
    return *v4;
  }

  if (matteType == @"AVSemanticSegmentationMatteTypeHair")
  {
    v4 = MEMORY[0x1E696D298];
    return *v4;
  }

  if (matteType == @"AVSemanticSegmentationMatteTypeTeeth")
  {
    v4 = MEMORY[0x1E696D2B0];
    return *v4;
  }

  if (matteType == @"AVSemanticSegmentationMatteTypeGlasses")
  {
    return *MEMORY[0x1E696D290];
  }

  else
  {
    return 0;
  }
}

+ (id)_allSupportedSemanticSegmentationMatteTypes
{
  v3[0] = @"AVSemanticSegmentationMatteTypeHair";
  v3[1] = @"AVSemanticSegmentationMatteTypeSkin";
  v3[2] = @"AVSemanticSegmentationMatteTypeTeeth";
  v3[3] = @"AVSemanticSegmentationMatteTypeGlasses";
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:4];
}

+ (AVSemanticSegmentationMatte)semanticSegmentationMatteFromImageSourceAuxiliaryDataType:(CFStringRef)imageSourceAuxiliaryDataType dictionaryRepresentation:(NSDictionary *)imageSourceAuxiliaryDataInfoDictionary error:(NSError *)outError
{
  pixelBufferOut = 0;
  v9 = [(NSDictionary *)imageSourceAuxiliaryDataInfoDictionary objectForKeyedSubscript:*MEMORY[0x1E696D218]];
  v10 = [(NSDictionary *)imageSourceAuxiliaryDataInfoDictionary objectForKeyedSubscript:*MEMORY[0x1E696D220]];
  v11 = [(NSDictionary *)imageSourceAuxiliaryDataInfoDictionary objectForKeyedSubscript:*MEMORY[0x1E696D228]];
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  if (v13 == 1 && v11 == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_1();
LABEL_50:
    FigDebugAssert3();
    v40 = 0;
    v41 = -11865;
    goto LABEL_39;
  }

  v15 = v11;
  v46 = *MEMORY[0x1E696D298];
  v47[0] = *MEMORY[0x1E696D2A0];
  v47[1] = v46;
  v16 = *MEMORY[0x1E696D290];
  v47[2] = *MEMORY[0x1E696D2B0];
  v47[3] = v16;
  if (([objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:{4), "containsObject:", imageSourceAuxiliaryDataType}] & 1) == 0)
  {
    goto LABEL_49;
  }

  if (v13)
  {
LABEL_30:
    if (FigCFEqual())
    {
      v38 = @"AVSemanticSegmentationMatteTypeSkin";
LABEL_38:
      v39 = [AVSemanticSegmentationMatte alloc];
      v40 = [(AVSemanticSegmentationMatte *)v39 initWithType:v38 pixelBuffer:pixelBufferOut auxiliaryMetadata:v15];
      v41 = 0;
      goto LABEL_39;
    }

    if (FigCFEqual())
    {
      v38 = @"AVSemanticSegmentationMatteTypeHair";
      goto LABEL_38;
    }

    if (FigCFEqual())
    {
      v38 = @"AVSemanticSegmentationMatteTypeTeeth";
      goto LABEL_38;
    }

    if (FigCFEqual())
    {
      v38 = @"AVSemanticSegmentationMatteTypeGlasses";
      goto LABEL_38;
    }

    goto LABEL_49;
  }

  v17 = [objc_msgSend(v10 objectForKeyedSubscript:{*MEMORY[0x1E696DEC0]), "intValue"}];
  v18 = [objc_msgSend(v10 objectForKeyedSubscript:{*MEMORY[0x1E696DFB8]), "intValue"}];
  v19 = [objc_msgSend(v10 objectForKeyedSubscript:{*MEMORY[0x1E696DD58]), "intValue"}];
  v20 = [objc_msgSend(v10 objectForKeyedSubscript:{*MEMORY[0x1E696D430]), "intValue"}];
  if (!v17 || !v18 || !v19 || (v21 = v20) == 0)
  {
LABEL_49:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_1();
    goto LABEL_50;
  }

  v45 = v15;
  _allSupportedSemanticSegmentationMattePixelFormatTypes = [self _allSupportedSemanticSegmentationMattePixelFormatTypes];
  if ([_allSupportedSemanticSegmentationMattePixelFormatTypes containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v17)}])
  {
    v23 = v19;
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v21];
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{MEMORY[0x1E695E0F8], *MEMORY[0x1E69660D8], v24, *MEMORY[0x1E6966020], 0}];
    v26 = CVPixelBufferCreate(*MEMORY[0x1E695E480], v18, v19, v17, v25, &pixelBufferOut);
    if (!v26)
    {
      v44 = outError;
      CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E6965F30], *MEMORY[0x1E6965F60], kCVAttachmentMode_ShouldPropagate);
      CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
      BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
      v28 = BytesPerRow;
      if (BytesPerRow >= v21)
      {
        v29 = v21;
      }

      else
      {
        v29 = BytesPerRow;
      }

      bytes = [v9 bytes];
      BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
      v32 = [v9 length];
      if (v29 <= v32)
      {
        v33 = &bytes[v32];
        v34 = 1;
        do
        {
          memcpy(BaseAddress, bytes, v29);
          v35 = &bytes[v29 + v21];
          bytes += v21;
          BaseAddress += v28;
        }

        while (v34++ < v23 && v35 <= v33);
      }

      CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
      outError = v44;
      v15 = v45;
      goto LABEL_30;
    }

    v41 = v26;
    v40 = 0;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_1();
    FigDebugAssert3();
    v40 = 0;
    v41 = -11864;
  }

LABEL_39:
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  if (outError && v41)
  {
    if (ErrorIsAVFoundationError())
    {
      v42 = AVLocalizedError();
    }

    else
    {
      v42 = AVLocalizedErrorWithUnderlyingOSStatus();
    }

    *outError = v42;
  }

  return v40;
}

- (NSDictionary)dictionaryRepresentationForAuxiliaryDataType:(NSString *)outAuxDataType
{
  pixelFormatType = [(AVSemanticSegmentationMatte *)self pixelFormatType];
  Width = CVPixelBufferGetWidth([(AVSemanticSegmentationMatte *)self mattingImage]);
  Height = CVPixelBufferGetHeight([(AVSemanticSegmentationMatte *)self mattingImage]);
  BytesPerRow = CVPixelBufferGetBytesPerRow([(AVSemanticSegmentationMatte *)self mattingImage]);
  if (!pixelFormatType || !Width || !Height || (v9 = BytesPerRow) == 0 || (v10 = [MEMORY[0x1E695DF88] dataWithLength:BytesPerRow * Height]) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_1();
    FigDebugAssert3();
    return 0;
  }

  v11 = v10;
  mattingImage = [(AVSemanticSegmentationMatte *)self mattingImage];
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
  copyAuxiliaryMetadata = [(AVSemanticSegmentationMatte *)self copyAuxiliaryMetadata];
  if (copyAuxiliaryMetadata)
  {
    v17 = copyAuxiliaryMetadata;
    [(NSDictionary *)dictionary setObject:copyAuxiliaryMetadata forKeyedSubscript:*MEMORY[0x1E696D228]];
    CFRelease(v17);
  }

  if (outAuxDataType)
  {
    *outAuxDataType = [(AVSemanticSegmentationMatte *)self auxiliaryImageType];
  }

  return dictionary;
}

- (uint64_t)semanticSegmentationMatteByReplacingSemanticSegmentationMatteWithPixelBuffer:error:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)semanticSegmentationMatteByReplacingSemanticSegmentationMatteWithPixelBuffer:error:.cold.2()
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