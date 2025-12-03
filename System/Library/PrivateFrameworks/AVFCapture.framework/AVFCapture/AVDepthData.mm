@interface AVDepthData
+ (AVDepthData)depthDataFromDictionaryRepresentation:(NSDictionary *)imageSourceAuxDataInfoDictionary error:(NSError *)outError;
- (AVCameraCalibrationData)cameraCalibrationData;
- (AVDepthData)depthDataByApplyingExifOrientation:(CGImagePropertyOrientation)exifOrientation;
- (AVDepthData)depthDataByConvertingToDepthDataType:(OSType)depthDataType;
- (AVDepthData)depthDataByReplacingDepthDataMapWithPixelBuffer:(CVPixelBufferRef)pixelBuffer error:(NSError *)outError;
- (AVDepthData)initWithPixelBuffer:(__CVBuffer *)buffer auxiliaryMetadata:(CGImageMetadata *)metadata;
- (AVDepthData)initWithPixelBuffer:(__CVBuffer *)buffer depthMetadataDictionary:(id)dictionary;
- (CGImageMetadata)copyAuxiliaryMetadata;
- (NSDictionary)dictionaryRepresentationForAuxiliaryDataType:(NSString *)outAuxDataType;
- (OSType)depthDataType;
- (__CFString)auxiliaryImageType;
- (__CVBuffer)_copyPixelBufferRepresentationWithPixelFormatType:(unsigned int)type;
- (id)debugDescription;
- (id)depthBlurEffectRenderingParameters;
- (id)description;
- (uint64_t)copyAuxiliaryMetadata;
- (void)dealloc;
@end

@implementation AVDepthData

- (id)debugDescription
{
  [(AVDepthData *)self depthDataType];
  v3 = AVStringForOSType();
  internal = self->_internal;
  pixelBuffer = internal->pixelBuffer;
  if (pixelBuffer)
  {
    Width = CVPixelBufferGetWidth(pixelBuffer);
    internal = self->_internal;
    v7 = internal->pixelBuffer;
    if (v7)
    {
      Height = CVPixelBufferGetHeight(v7);
      internal = self->_internal;
      goto LABEL_6;
    }
  }

  else
  {
    Width = 0;
  }

  Height = 0;
LABEL_6:
  filtered = internal->filtered;
  quality = internal->quality;
  accuracy = internal->accuracy;
  calibrationData = internal->calibrationData;
  if (calibrationData)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@" calibration:{%@}", -[AVCameraCalibrationData debugDescription](calibrationData, "debugDescription")];
  }

  else
  {
    v13 = &stru_1F1CBCFE8;
  }

  v14 = @"abs";
  if (accuracy != 1)
  {
    v14 = @"rel";
  }

  v15 = @"low";
  if (quality)
  {
    v15 = @"high";
  }

  if (filtered)
  {
    v16 = &stru_1F1CBCFE8;
  }

  else
  {
    v16 = @" (unfiltered)";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %zux%zu (%@/%@)%@%@%@", v3, Width, Height, v15, v14, v16, v13, &stru_1F1CBCFE8];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[AVDepthData debugDescription](self, "debugDescription")];
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
  v5.super_class = AVDepthData;
  [(AVDepthData *)&v5 dealloc];
}

+ (AVDepthData)depthDataFromDictionaryRepresentation:(NSDictionary *)imageSourceAuxDataInfoDictionary error:(NSError *)outError
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
    +[AVDepthData depthDataFromDictionaryRepresentation:error:];
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
    +[AVDepthData depthDataFromDictionaryRepresentation:error:];
    goto LABEL_43;
  }

  v21 = v17;
  _allSupportedDepthDataPixelFormatTypes = [self _allSupportedDepthDataPixelFormatTypes];
  if (([_allSupportedDepthDataPixelFormatTypes containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v14)}] & 1) == 0)
  {
    +[AVDepthData depthDataFromDictionaryRepresentation:error:];
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
  v37 = [AVDepthData alloc];
  v38 = [(AVDepthData *)v37 initWithPixelBuffer:pixelBufferOut auxiliaryMetadata:v13];
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

- (AVDepthData)depthDataByApplyingExifOrientation:(CGImagePropertyOrientation)exifOrientation
{
  pixelBufferOut = 0;
  if (exifOrientation - 1 < 8)
  {
    v5 = [(AVCameraCalibrationData *)self->_internal->calibrationData cameraCalibrationDataWithExifOrientation:?];
    pixelBuffer = self->_internal->pixelBuffer;
    if (!pixelBuffer)
    {
      goto LABEL_13;
    }

    Width = CVPixelBufferGetWidth(pixelBuffer);
    Height = CVPixelBufferGetHeight(self->_internal->pixelBuffer);
    PixelFormatType = CVPixelBufferGetPixelFormatType(self->_internal->pixelBuffer);
    v10 = exifOrientation - 5 >= 4 ? Width : Height;
    if (exifOrientation - 5 >= 4)
    {
      Width = Height;
    }

    v18 = *MEMORY[0x1E69660D8];
    v19 = MEMORY[0x1E695E0F8];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    if (CVPixelBufferCreate(*MEMORY[0x1E695E480], v10, Width, PixelFormatType, v11, &pixelBufferOut))
    {
LABEL_13:
      v13 = [AVDepthData alloc];
    }

    else
    {
      v12 = FigDepthRotateBuffer();
      v13 = [AVDepthData alloc];
      if (v12)
      {
        v14 = 0;
LABEL_15:
        v17 = [(AVDepthData *)v13 initWithPixelBuffer:v14 depthMetadataDictionary:0];
        v17->_internal->calibrationData = v5;
        v17->_internal->version = self->_internal->version;
        v17->_internal->quality = self->_internal->quality;
        v17->_internal->filtered = self->_internal->filtered;
        v17->_internal->accuracy = self->_internal->accuracy;
        v17->_internal->depthBlurEffectSimulatedAperture = self->_internal->depthBlurEffectSimulatedAperture;
        v17->_internal->depthBlurEffectRenderingParameters = [(NSData *)self->_internal->depthBlurEffectRenderingParameters copy];
        v17->_internal->portraitScoreIsHigh = self->_internal->portraitScoreIsHigh;
        v17->_internal->portraitScore = self->_internal->portraitScore;
        v17->_internal->portraitLightingEffectStrength = self->_internal->portraitLightingEffectStrength;
        CVPixelBufferRelease(pixelBufferOut);
        return v17;
      }
    }

    v14 = pixelBufferOut;
    goto LABEL_15;
  }

  v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v15);
  }

  NSLog(&cfstr_SuppressingExc.isa, v15);
  return 0;
}

- (AVDepthData)depthDataByConvertingToDepthDataType:(OSType)depthDataType
{
  v3 = *&depthDataType;
  availableDepthDataTypes = [(AVDepthData *)self availableDepthDataTypes];
  if (-[NSArray containsObject:](availableDepthDataTypes, "containsObject:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3]))
  {
    v6 = [(AVDepthData *)self _copyPixelBufferRepresentationWithPixelFormatType:v3];
    v7 = [[AVDepthData alloc] initWithPixelBuffer:v6 depthMetadataDictionary:0];
    CVPixelBufferRelease(v6);
    v7->_internal->calibrationData = [(AVDepthData *)self cameraCalibrationData];
    LODWORD(v6) = [(AVDepthData *)self depthDataVersionMajor];
    v7->_internal->version = [(AVDepthData *)self depthDataVersionMinor]| (v6 << 16);
    v7->_internal->quality = [(AVDepthData *)self depthDataQuality];
    v7->_internal->filtered = [(AVDepthData *)self isDepthDataFiltered];
    v7->_internal->accuracy = [(AVDepthData *)self depthDataAccuracy];
    [(AVDepthData *)self depthBlurEffectSimulatedAperture];
    v7->_internal->depthBlurEffectSimulatedAperture = v8;
    v7->_internal->depthBlurEffectRenderingParameters = [(AVDepthData *)self depthBlurEffectRenderingParameters];
    v7->_internal->portraitScoreIsHigh = [(AVDepthData *)self portraitScoreIsHigh];
    [(AVDepthData *)self portraitScore];
    v7->_internal->portraitScore = v9;
    [(AVDepthData *)self portraitLightingEffectStrength];
    v7->_internal->portraitLightingEffectStrength = v10;

    return v7;
  }

  else
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v12);
    }

    NSLog(&cfstr_SuppressingExc.isa, v12);
    return 0;
  }
}

- (AVDepthData)depthDataByReplacingDepthDataMapWithPixelBuffer:(CVPixelBufferRef)pixelBuffer error:(NSError *)outError
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  availableDepthDataTypes = [(AVDepthData *)self availableDepthDataTypes];
  if (-[NSArray containsObject:](availableDepthDataTypes, "containsObject:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:PixelFormatType]))
  {
    v9 = [[AVDepthData alloc] initWithPixelBuffer:pixelBuffer depthMetadataDictionary:0];
    v9->_internal->quality = [(AVDepthData *)self depthDataQuality];
    v9->_internal->filtered = [(AVDepthData *)self isDepthDataFiltered];
    v9->_internal->accuracy = [(AVDepthData *)self depthDataAccuracy];
    v9->_internal->portraitScore = NAN;
    v9->_internal->portraitLightingEffectStrength = NAN;
  }

  else
  {
    [AVDepthData depthDataByReplacingDepthDataMapWithPixelBuffer:&v11 error:?];
    v9 = v11;
  }

  return v9;
}

- (OSType)depthDataType
{
  pixelBuffer = self->_internal->pixelBuffer;
  if (pixelBuffer)
  {
    LODWORD(pixelBuffer) = CVPixelBufferGetPixelFormatType(pixelBuffer);
  }

  return pixelBuffer;
}

- (AVCameraCalibrationData)cameraCalibrationData
{
  v2 = self->_internal->calibrationData;

  return v2;
}

- (id)depthBlurEffectRenderingParameters
{
  v2 = self->_internal->depthBlurEffectRenderingParameters;

  return v2;
}

- (AVDepthData)initWithPixelBuffer:(__CVBuffer *)buffer auxiliaryMetadata:(CGImageMetadata *)metadata
{
  v5 = [(AVDepthData *)self initWithPixelBuffer:buffer depthMetadataDictionary:0];
  v6 = v5;
  if (metadata && v5)
  {
    v7 = *MEMORY[0x1E6991340];
    v5->_internal->version = [AVAuxiliaryMetadataStringTagWithPrefixedKey(metadata *MEMORY[0x1E6991340]];
    v6->_internal->quality = [AVAuxiliaryMetadataStringTagWithPrefixedKey(metadata v7] ^ 1;
    v6->_internal->filtered = [AVAuxiliaryMetadataStringTagWithPrefixedKey(metadata v7];
    v6->_internal->accuracy = [AVAuxiliaryMetadataStringTagWithPrefixedKey(metadata v7];
    v6->_internal->calibrationData = [[AVCameraCalibrationData alloc] initWithAuxiliaryMetadata:metadata];
    v8 = *MEMORY[0x1E6991320];
    [AVAuxiliaryMetadataStringTagWithPrefixedKey(metadata *MEMORY[0x1E6991320]];
    v6->_internal->depthBlurEffectSimulatedAperture = v9;
    v10 = AVAuxiliaryMetadataStringTagWithPrefixedKey(metadata, v8, *MEMORY[0x1E6991328]);
    if (v10)
    {
      v6->_internal->depthBlurEffectRenderingParameters = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v10 options:0];
    }

    v11 = AVAuxiliaryMetadataStringTagWithPrefixedKey(metadata, v7, *MEMORY[0x1E69913D0]);
    v12 = v11;
    if (v11)
    {
      v6->_internal->portraitScoreIsHigh = [v11 BOOLValue];
    }

    v13 = AVAuxiliaryMetadataStringTagWithPrefixedKey(metadata, v7, *MEMORY[0x1E69913C8]);
    LODWORD(v14) = 2143289344;
    if (v12 && v13)
    {
      [v13 floatValue];
    }

    v6->_internal->portraitScore = *&v14;
    v15 = AVAuxiliaryMetadataStringTagWithPrefixedKey(metadata, *MEMORY[0x1E69913B0], *MEMORY[0x1E69913B8]);
    if (v15)
    {
      [v15 floatValue];
    }

    else
    {
      v16 = 2143289344;
    }

    LODWORD(v6->_internal->portraitLightingEffectStrength) = v16;
  }

  return v6;
}

- (AVDepthData)initWithPixelBuffer:(__CVBuffer *)buffer depthMetadataDictionary:(id)dictionary
{
  v18.receiver = self;
  v18.super_class = AVDepthData;
  v6 = [(AVDepthData *)&v18 init];
  if (v6)
  {
    internal = objc_alloc_init(AVDepthDataInternal);
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
        v6->_internal->version = [objc_msgSend(dictionary objectForKeyedSubscript:{*MEMORY[0x1E6991428]), "intValue"}];
        v6->_internal->quality = [objc_msgSend(dictionary objectForKeyedSubscript:{*MEMORY[0x1E6991420]), "intValue"}];
        v6->_internal->filtered = [objc_msgSend(dictionary objectForKeyedSubscript:{*MEMORY[0x1E69913E8]), "BOOLValue"}];
        v6->_internal->accuracy = [objc_msgSend(dictionary objectForKeyedSubscript:{*MEMORY[0x1E69913D8]), "intValue"}];
        v6->_internal->calibrationData = [[AVCameraCalibrationData alloc] initWithDepthMetadataDictionary:dictionary];
        [objc_msgSend(dictionary objectForKeyedSubscript:{*MEMORY[0x1E6991310]), "floatValue"}];
        v6->_internal->depthBlurEffectSimulatedAperture = v9;
        v10 = [dictionary objectForKeyedSubscript:*MEMORY[0x1E6991308]];
        if (v10)
        {
          v6->_internal->depthBlurEffectRenderingParameters = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v10 options:0];
        }

        v11 = [dictionary objectForKeyedSubscript:*MEMORY[0x1E6991438]];
        v12 = [dictionary objectForKeyedSubscript:*MEMORY[0x1E6991430]];
        LODWORD(v13) = 2143289344;
        if (v11)
        {
          v14 = v12;
          if (v12)
          {
            v6->_internal->portraitScoreIsHigh = [v11 BOOLValue];
            [v14 floatValue];
          }
        }

        v6->_internal->portraitScore = *&v13;
        v15 = [dictionary objectForKeyedSubscript:*MEMORY[0x1E69914E8]];
        if (v15)
        {
          [v15 floatValue];
          v6->_internal->portraitLightingEffectStrength = v16;
        }

        else
        {
          v6->_internal->portraitLightingEffectStrength = NAN;
        }
      }
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (CGImageMetadata)copyAuxiliaryMetadata
{
  copyAuxiliaryMetadata = [(AVCameraCalibrationData *)self->_internal->calibrationData copyAuxiliaryMetadata];
  if (copyAuxiliaryMetadata)
  {
    v4 = copyAuxiliaryMetadata;
    v5 = *MEMORY[0x1E6991338];
    v6 = *MEMORY[0x1E6991340];
  }

  else
  {
    Mutable = CGImageMetadataCreateMutable();
    v4 = Mutable;
    if (!Mutable)
    {
      [AVDepthData copyAuxiliaryMetadata];
      return v4;
    }

    v5 = *MEMORY[0x1E6991338];
    v6 = *MEMORY[0x1E6991340];
    if (!CGImageMetadataRegisterNamespaceForPrefix(Mutable, *MEMORY[0x1E6991338], *MEMORY[0x1E6991340], 0))
    {
      [AVDepthData copyAuxiliaryMetadata];
      goto LABEL_39;
    }
  }

  if (self->_internal->quality)
  {
    v8 = @"high";
  }

  else
  {
    v8 = @"low";
  }

  if (!AVAuxiliaryMetadataAddValue(v4, v5, v6, *MEMORY[0x1E69913A0], v8))
  {
    [AVDepthData copyAuxiliaryMetadata];
LABEL_39:
    CFRelease(v4);
    return 0;
  }

  if (!AVAuxiliaryMetadataAddValue(v4, v5, v6, *MEMORY[0x1E6991358], [MEMORY[0x1E696AD98] numberWithBool:self->_internal->filtered]))
  {
    [AVDepthData copyAuxiliaryMetadata];
    goto LABEL_39;
  }

  if (self->_internal->accuracy == 1)
  {
    v9 = @"absolute";
  }

  else
  {
    v9 = @"relative";
  }

  if (!AVAuxiliaryMetadataAddValue(v4, v5, v6, *MEMORY[0x1E6991348], v9))
  {
    [AVDepthData copyAuxiliaryMetadata];
    goto LABEL_39;
  }

  internal = self->_internal;
  if (internal->version)
  {
    if (!AVAuxiliaryMetadataAddValue(v4, v5, v6, *MEMORY[0x1E69913C0], [MEMORY[0x1E696AD98] numberWithInt:?]))
    {
      [AVDepthData copyAuxiliaryMetadata];
      goto LABEL_39;
    }

    internal = self->_internal;
  }

  *&v10 = internal->portraitScore;
  if (!AVAuxiliaryMetadataAddValue(v4, v5, v6, *MEMORY[0x1E69913D0], [MEMORY[0x1E696AD98] numberWithBool:{internal->portraitScoreIsHigh, v10}]))
  {
    [AVDepthData copyAuxiliaryMetadata];
    goto LABEL_39;
  }

  *&v12 = self->_internal->portraitScore;
  if (!AVAuxiliaryMetadataAddValue(v4, v5, v6, *MEMORY[0x1E69913C8], [MEMORY[0x1E696AD98] numberWithFloat:v12]))
  {
    [AVDepthData copyAuxiliaryMetadata];
    goto LABEL_39;
  }

  if (self->_internal->depthBlurEffectRenderingParameters)
  {
    v13 = *MEMORY[0x1E6991318];
    v14 = *MEMORY[0x1E6991320];
    if (!CGImageMetadataRegisterNamespaceForPrefix(v4, *MEMORY[0x1E6991318], *MEMORY[0x1E6991320], 0))
    {
      [AVDepthData copyAuxiliaryMetadata];
      goto LABEL_39;
    }

    *&v15 = self->_internal->depthBlurEffectSimulatedAperture;
    if (!AVAuxiliaryMetadataAddValue(v4, v13, v14, *MEMORY[0x1E6991330], [MEMORY[0x1E696AD98] numberWithFloat:v15]))
    {
      [AVDepthData copyAuxiliaryMetadata];
      goto LABEL_39;
    }

    v16 = [(NSData *)self->_internal->depthBlurEffectRenderingParameters base64EncodedStringWithOptions:0];
    if (!AVAuxiliaryMetadataAddValue(v4, v13, v14, *MEMORY[0x1E6991328], v16))
    {
      [AVDepthData copyAuxiliaryMetadata];
      goto LABEL_39;
    }
  }

  v17 = *MEMORY[0x1E69913A8];
  v18 = *MEMORY[0x1E69913B0];
  if (!CGImageMetadataRegisterNamespaceForPrefix(v4, *MEMORY[0x1E69913A8], *MEMORY[0x1E69913B0], 0))
  {
    [AVDepthData copyAuxiliaryMetadata];
    goto LABEL_39;
  }

  *&v19 = self->_internal->portraitLightingEffectStrength;
  if (!AVAuxiliaryMetadataAddValue(v4, v17, v18, *MEMORY[0x1E69913B8], [MEMORY[0x1E696AD98] numberWithFloat:v19]))
  {
    [AVDepthData copyAuxiliaryMetadata];
    goto LABEL_39;
  }

  return v4;
}

- (__CFString)auxiliaryImageType
{
  if ((([(AVDepthData *)self depthDataType]- 1717855600) & 0xFDFFFFFF) != 0)
  {
    v2 = MEMORY[0x1E696D260];
  }

  else
  {
    v2 = MEMORY[0x1E696D258];
  }

  return *v2;
}

- (__CVBuffer)_copyPixelBufferRepresentationWithPixelFormatType:(unsigned int)type
{
  pixelBufferOut = 0;
  Width = CVPixelBufferGetWidth(self->_internal->pixelBuffer);
  Height = CVPixelBufferGetHeight(self->_internal->pixelBuffer);
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{MEMORY[0x1E695E0F8], *MEMORY[0x1E69660D8], 0}];
  depthDataType = [(AVDepthData *)self depthDataType];
  if (!CVPixelBufferCreate(*MEMORY[0x1E695E480], Width, Height, type, v7, &pixelBufferOut))
  {
    internal = self->_internal;
    pixelBuffer = internal->pixelBuffer;
    v11 = pixelBufferOut;
    if (depthDataType == type)
    {
      if (CVPixelBufferLockBaseAddress(internal->pixelBuffer, 1uLL))
      {
        [AVDepthData _copyPixelBufferRepresentationWithPixelFormatType:];
      }

      else
      {
        v12 = CVPixelBufferLockBaseAddress(v11, 0);
        if (!v12)
        {
          v13 = CVPixelBufferGetHeight(pixelBuffer);
          BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
          v15 = CVPixelBufferGetBytesPerRow(v11);
          v16 = v15;
          if (BytesPerRow >= v15)
          {
            v17 = v15;
          }

          else
          {
            v17 = BytesPerRow;
          }

          BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
          v19 = CVPixelBufferGetBaseAddress(v11);
          if (v13)
          {
            v20 = v19;
            do
            {
              memcpy(v20, BaseAddress, v17);
              BaseAddress += BytesPerRow;
              v20 += v16;
              --v13;
            }

            while (v13);
          }

          CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
          CVPixelBufferUnlockBaseAddress(v11, 0);
          return pixelBufferOut;
        }

        [(AVDepthData *)v12 _copyPixelBufferRepresentationWithPixelFormatType:?];
      }
    }

    else if (!FigDepthConvertBuffer())
    {
      return pixelBufferOut;
    }
  }

  CVPixelBufferRelease(pixelBufferOut);
  return 0;
}

- (NSDictionary)dictionaryRepresentationForAuxiliaryDataType:(NSString *)outAuxDataType
{
  depthDataType = [(AVDepthData *)self depthDataType];
  Width = CVPixelBufferGetWidth([(AVDepthData *)self depthDataMap]);
  Height = CVPixelBufferGetHeight([(AVDepthData *)self depthDataMap]);
  BytesPerRow = CVPixelBufferGetBytesPerRow([(AVDepthData *)self depthDataMap]);
  if (!depthDataType || !Width || !Height || (v9 = BytesPerRow) == 0 || (v10 = [MEMORY[0x1E695DF88] dataWithLength:BytesPerRow * Height]) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_1();
    FigDebugAssert3();
    return 0;
  }

  v11 = v10;
  depthDataMap = [(AVDepthData *)self depthDataMap];
  if (CVPixelBufferLockBaseAddress(depthDataMap, 1uLL))
  {
    return 0;
  }

  BaseAddress = CVPixelBufferGetBaseAddress(depthDataMap);
  memcpy([v11 mutableBytes], BaseAddress, v9 * Height);
  CVPixelBufferUnlockBaseAddress(depthDataMap, 1uLL);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [(NSDictionary *)dictionary setObject:v11 forKeyedSubscript:*MEMORY[0x1E696D218]];
  v19[0] = *MEMORY[0x1E696DEC0];
  v20[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:depthDataType];
  v19[1] = *MEMORY[0x1E696DFB8];
  v20[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:Width];
  v19[2] = *MEMORY[0x1E696DD58];
  v20[2] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:Height];
  v19[3] = *MEMORY[0x1E696D430];
  v20[3] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v9];
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];
  [(NSDictionary *)dictionary setObject:v15 forKeyedSubscript:*MEMORY[0x1E696D220]];
  copyAuxiliaryMetadata = [(AVDepthData *)self copyAuxiliaryMetadata];
  if (copyAuxiliaryMetadata)
  {
    v17 = copyAuxiliaryMetadata;
    [(NSDictionary *)dictionary setObject:copyAuxiliaryMetadata forKeyedSubscript:*MEMORY[0x1E696D228]];
    CFRelease(v17);
  }

  if (outAuxDataType)
  {
    *outAuxDataType = [(AVDepthData *)self auxiliaryImageType];
  }

  return dictionary;
}

+ (uint64_t)depthDataFromDictionaryRepresentation:error:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

+ (uint64_t)depthDataFromDictionaryRepresentation:error:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

+ (uint64_t)depthDataFromDictionaryRepresentation:error:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)depthDataByReplacingDepthDataMapWithPixelBuffer:(uint64_t *)a1 error:(void *)a2 .cold.1(uint64_t *a1, void *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_1();
  result = FigDebugAssert3();
  if (a1)
  {
    if (ErrorIsAVFoundationError())
    {
      result = AVLocalizedError();
    }

    else
    {
      result = AVLocalizedErrorWithUnderlyingOSStatus();
    }

    *a1 = result;
  }

  *a2 = 0;
  return result;
}

- (uint64_t)copyAuxiliaryMetadata
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_copyPixelBufferRepresentationWithPixelFormatType:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)_copyPixelBufferRepresentationWithPixelFormatType:(uint64_t)a1 .cold.2(uint64_t a1, __CVBuffer *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  return CVPixelBufferUnlockBaseAddress(a2, 1uLL);
}

@end