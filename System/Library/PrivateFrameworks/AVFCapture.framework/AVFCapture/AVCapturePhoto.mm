@interface AVCapturePhoto
+ (id)AVFileTypeFromFigCaptureStillImageSettingsFileType:(int)a3 codec:(unsigned int)a4 unresolvedSettings:(id)a5;
- (AVCameraCalibrationData)cameraCalibrationData;
- (AVCaptureDeviceType)sourceDeviceType;
- (AVCaptureLensStabilizationStatus)lensStabilizationStatus;
- (AVCapturePhoto)initWithTimestamp:(id *)a3 photoSurface:(__IOSurface *)a4 photoSurfaceSize:(unint64_t)a5 processedFileType:(id)a6 previewPhotoSurface:(__IOSurface *)a7 embeddedThumbnailSourceSurface:(__IOSurface *)a8 photoLibraryThumbnails:(id)a9 metadata:(id)a10 depthDataSurface:(__IOSurface *)a11 depthMetadataDictionary:(id)a12 portraitEffectsMatteSurface:(__IOSurface *)a13 portraitEffectsMatteMetadataDictionary:(id)a14 hairSegmentationMatteSurface:(__IOSurface *)a15 hairSegmentationMatteMetadataDictionary:(id)a16 skinSegmentationMatteSurface:(__IOSurface *)a17 skinSegmentationMatteMetadataDictionary:(id)a18 teethSegmentationMatteSurface:(__IOSurface *)a19 teethSegmentationMatteMetadataDictionary:(id)a20 glassesSegmentationMatteSurface:(__IOSurface *)a21 glassesSegmentationMatteMetadataDictionary:(id)a22 constantColorConfidenceMapSurface:(__IOSurface *)a23 constantColorMetadataDictionary:(id)a24 captureRequest:(id)a25 bracketSettings:(id)a26 sequenceCount:(unint64_t)a27 photoCount:(unint64_t)a28 expectedPhotoProcessingFlags:(unsigned int)a29 sourceDeviceType:(id)a30;
- (AVCaptureResolvedPhotoSettings)resolvedSettings;
- (AVDepthData)depthData;
- (AVPortraitEffectsMatte)portraitEffectsMatte;
- (AVSemanticSegmentationMatte)semanticSegmentationMatteForType:(AVSemanticSegmentationMatteType)semanticSegmentationMatteType;
- (BOOL)_isCompressedPhoto;
- (BOOL)_isUncompressedYUVOrRGBPhoto;
- (BOOL)isConstantColorFallbackPhoto;
- (BOOL)isRawPhoto;
- (CGImageRef)CGImageRepresentation;
- (CGImageRef)previewCGImageRepresentation;
- (CVPixelBufferRef)pixelBuffer;
- (NSData)fileDataRepresentation;
- (NSData)fileDataRepresentationWithCustomizer:(id)customizer;
- (NSData)fileDataRepresentationWithReplacementMetadata:(NSDictionary *)replacementMetadata replacementEmbeddedThumbnailPhotoFormat:(NSDictionary *)replacementEmbeddedThumbnailPhotoFormat replacementEmbeddedThumbnailPixelBuffer:(CVPixelBufferRef)replacementEmbeddedThumbnailPixelBuffer replacementDepthData:(AVDepthData *)replacementDepthData;
- (NSDictionary)embeddedThumbnailPhotoFormat;
- (NSDictionary)metadata;
- (__CVBuffer)_embeddedThumbnailSourcePixelBuffer;
- (float)focusPixelBlurScore;
- (id)_fileDataRepresentationWithReplacementMetadata:(id)a3 replacementEmbeddedThumbnailPhotoFormat:(id)a4 replacementEmbeddedThumbnailPixelBuffer:(__CVBuffer *)a5 replacementDepthData:(id)a6 replacementPortraitEffectsMatte:(id)a7 replacementHairSegmentationMatte:(id)a8 replacementSkinSegmentationMatte:(id)a9 replacementTeethSegmentationMatte:(id)a10 replacementGlassesSegmentationMatte:(id)a11 replacementRawCompressionSettings:(id)a12 exceptionReason:(id *)a13;
- (id)debugDescription;
- (id)description;
- (id)livePhotoMovieFileURL;
- (id)photoLibraryThumbnails;
- (int)_maximumAppleProRAWBitDepth;
- (uint64_t)portraitEffectsMatte;
- (unsigned)_orientation;
- (void)dealloc;
@end

@implementation AVCapturePhoto

- (AVCapturePhoto)initWithTimestamp:(id *)a3 photoSurface:(__IOSurface *)a4 photoSurfaceSize:(unint64_t)a5 processedFileType:(id)a6 previewPhotoSurface:(__IOSurface *)a7 embeddedThumbnailSourceSurface:(__IOSurface *)a8 photoLibraryThumbnails:(id)a9 metadata:(id)a10 depthDataSurface:(__IOSurface *)a11 depthMetadataDictionary:(id)a12 portraitEffectsMatteSurface:(__IOSurface *)a13 portraitEffectsMatteMetadataDictionary:(id)a14 hairSegmentationMatteSurface:(__IOSurface *)a15 hairSegmentationMatteMetadataDictionary:(id)a16 skinSegmentationMatteSurface:(__IOSurface *)a17 skinSegmentationMatteMetadataDictionary:(id)a18 teethSegmentationMatteSurface:(__IOSurface *)a19 teethSegmentationMatteMetadataDictionary:(id)a20 glassesSegmentationMatteSurface:(__IOSurface *)a21 glassesSegmentationMatteMetadataDictionary:(id)a22 constantColorConfidenceMapSurface:(__IOSurface *)a23 constantColorMetadataDictionary:(id)a24 captureRequest:(id)a25 bracketSettings:(id)a26 sequenceCount:(unint64_t)a27 photoCount:(unint64_t)a28 expectedPhotoProcessingFlags:(unsigned int)a29 sourceDeviceType:(id)a30
{
  v69.receiver = self;
  v69.super_class = AVCapturePhoto;
  v36 = [(AVCapturePhoto *)&v69 init];
  if (!v36)
  {
    return v36;
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@" constantColorConfidence:%p", a23];
  v37 = objc_alloc_init(AVCapturePhotoInternal);
  v36->_internal = v37;
  if (!v37)
  {

    return 0;
  }

  surface = a7;
  v38 = *&a3->var0;
  v37->timestamp.epoch = a3->var3;
  *&v37->timestamp.value = v38;
  if (a4)
  {
    v39 = CFRetain(a4);
  }

  else
  {
    v39 = 0;
  }

  v36->_internal->photoSurface = v39;
  v36->_internal->photoSurfaceSize = a5;
  if (!a6)
  {
    a6 = [objc_msgSend(a25 "unresolvedSettings")];
  }

  v36->_internal->processedFileType = a6;
  v36->_internal->photoLibraryThumbnails = a9;
  if (a10)
  {
    v36->_internal->privateClientMetadata = [[AVCapturePhotoPrivateClientMetadata alloc] initWithMetadataDictionary:a10];
    if (v36->_internal->privateClientMetadata)
    {
      v40 = [a10 mutableCopy];
      [v40 setObject:0 forKeyedSubscript:*MEMORY[0x1E6990CB0]];
    }

    else
    {
      v40 = 0;
    }

    v42 = [a10 objectForKeyedSubscript:0x1F1CCCB68];
    if (v42)
    {
      v36->_internal->portraitMetadata = [[AVApplePortraitMetadata alloc] initWithPortraitMetadataDictionary:v42];
      if (!v40)
      {
        v40 = [a10 mutableCopy];
      }

      [v40 setObject:0 forKeyedSubscript:0x1F1CCCB68];
    }

    if (v40)
    {

      v36->_internal->metadata = [v40 copy];
      goto LABEL_21;
    }

    v41 = a10;
  }

  else
  {
    v41 = objc_alloc_init(MEMORY[0x1E695DF20]);
  }

  v36->_internal->metadata = v41;
LABEL_21:
  v36->_internal->resolvedSettings = [a25 resolvedSettings];
  v36->_internal->unresolvedSettings = [a25 unresolvedSettings];
  v36->_internal->bracketSettings = a26;
  v36->_internal->sequenceCount = a27;
  v36->_internal->photoCount = a28;
  v36->_internal->sourceDeviceType = a30;
  v43 = [a10 objectForKeyedSubscript:*MEMORY[0x1E696DE30]];
  v36->_internal->expectedPhotoProcessingFlags = a29;
  v36->_internal->actualPhotoProcessingFlags = [objc_msgSend(v43 objectForKeyedSubscript:{@"25", "unsignedIntValue"}];
  v44 = [(AVCapturePhoto *)v36 _isSushiRAWPhoto];
  v45 = [(AVCapturePhoto *)v36 _isProRAWPhoto];
  v36->_internal->lensStabilizationSupported = [a25 lensStabilizationSupported];
  resolvedSettings = v36->_internal->resolvedSettings;
  if (v44 || v45)
  {
    v47 = [(AVCaptureResolvedPhotoSettings *)resolvedSettings rawEmbeddedThumbnailDimensions];
    v48 = [(AVCapturePhotoSettings *)v36->_internal->unresolvedSettings rawEmbeddedThumbnailPhotoFormat];
  }

  else
  {
    v47 = [(AVCaptureResolvedPhotoSettings *)resolvedSettings embeddedThumbnailDimensions];
    v48 = [(AVCapturePhotoSettings *)v36->_internal->unresolvedSettings embeddedThumbnailPhotoFormat];
  }

  v49 = *MEMORY[0x1E6987CB0];
  v50 = [(NSDictionary *)v48 objectForKeyedSubscript:*MEMORY[0x1E6987CB0]];
  v51 = HIDWORD(v47);
  if (HIDWORD(v47))
  {
    if (v47)
    {
      v52 = v50;
      if (v50)
      {
        v53 = objc_alloc(MEMORY[0x1E695DF20]);
        v54 = [MEMORY[0x1E696AD98] numberWithInt:v47];
        v55 = *MEMORY[0x1E6987E08];
        v56 = [MEMORY[0x1E696AD98] numberWithInt:v51];
        v36->_internal->embeddedThumbnailPhotoFormat = [v53 initWithObjectsAndKeys:{v52, v49, v54, v55, v56, *MEMORY[0x1E6987D70], 0}];
      }
    }
  }

  v57 = MEMORY[0x1E695E480];
  if (a4 && (v44 || [(AVCapturePhoto *)v36 _isUncompressedYUVOrRGBPhoto]))
  {
    CVPixelBufferCreateWithIOSurface(*v57, a4, 0, &v36->_internal->photoPixelBuffer);
  }

  if (surface)
  {
    CVPixelBufferCreateWithIOSurface(*v57, surface, 0, &v36->_internal->previewPixelBuffer);
  }

  if (a8)
  {
    CVPixelBufferCreateWithIOSurface(*v57, a8, 0, &v36->_internal->embeddedThumbnailSourcePixelBuffer);
  }

  if (a11)
  {
    pixelBufferOut = 0;
    CVPixelBufferCreateWithIOSurface(*v57, a11, 0, &pixelBufferOut);
    v58 = [AVDepthData alloc];
    v36->_internal->depthData = [(AVDepthData *)v58 initWithPixelBuffer:pixelBufferOut depthMetadataDictionary:a12];
    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
    }
  }

  if (a13)
  {
    pixelBufferOut = 0;
    CVPixelBufferCreateWithIOSurface(*v57, a13, 0, &pixelBufferOut);
    v59 = [AVPortraitEffectsMatte alloc];
    v36->_internal->portraitEffectsMatte = [(AVPortraitEffectsMatte *)v59 initWithPixelBuffer:pixelBufferOut portraitEffectsMatteMetadataDictionary:a14];
    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
    }
  }

  if (a15)
  {
    pixelBufferOut = 0;
    CVPixelBufferCreateWithIOSurface(*v57, a15, 0, &pixelBufferOut);
    v60 = [AVSemanticSegmentationMatte alloc];
    v36->_internal->hairSegmentationMatte = [(AVSemanticSegmentationMatte *)v60 initWithType:@"AVSemanticSegmentationMatteTypeHair" pixelBuffer:pixelBufferOut semanticSegmentationMatteMetadataDictionary:a16];
    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
    }
  }

  if (a17)
  {
    pixelBufferOut = 0;
    CVPixelBufferCreateWithIOSurface(*v57, a17, 0, &pixelBufferOut);
    v61 = [AVSemanticSegmentationMatte alloc];
    v36->_internal->skinSegmentationMatte = [(AVSemanticSegmentationMatte *)v61 initWithType:@"AVSemanticSegmentationMatteTypeSkin" pixelBuffer:pixelBufferOut semanticSegmentationMatteMetadataDictionary:a18];
    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
    }
  }

  if (a19)
  {
    pixelBufferOut = 0;
    CVPixelBufferCreateWithIOSurface(*v57, a19, 0, &pixelBufferOut);
    v62 = [AVSemanticSegmentationMatte alloc];
    v36->_internal->teethSegmentationMatte = [(AVSemanticSegmentationMatte *)v62 initWithType:@"AVSemanticSegmentationMatteTypeTeeth" pixelBuffer:pixelBufferOut semanticSegmentationMatteMetadataDictionary:a20];
    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
    }
  }

  if (a21)
  {
    pixelBufferOut = 0;
    CVPixelBufferCreateWithIOSurface(*v57, a21, 0, &pixelBufferOut);
    v63 = [AVSemanticSegmentationMatte alloc];
    v36->_internal->glassesSegmentationMatte = [(AVSemanticSegmentationMatte *)v63 initWithType:@"AVSemanticSegmentationMatteTypeGlasses" pixelBuffer:pixelBufferOut semanticSegmentationMatteMetadataDictionary:a22];
    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
    }
  }

  if (a23)
  {
    pixelBufferOut = 0;
    CVPixelBufferCreateWithIOSurface(*v57, a23, 0, &pixelBufferOut);
    v36->_internal->constantColorConfidenceMap = pixelBufferOut;
    if (a24)
    {
      [objc_msgSend(a24 objectForKeyedSubscript:{*MEMORY[0x1E6991300]), "floatValue"}];
      v36->_internal->constantColorCenterWeightedMeanConfidenceLevel = v64;
    }
  }

  v65 = [(AVCapturePhotoSettings *)v36->_internal->unresolvedSettings isCameraCalibrationDataDeliveryEnabled];
  if (a12 && v65)
  {
    v36->_internal->cameraCalibrationData = [[AVCameraCalibrationData alloc] initWithDepthMetadataDictionary:a12];
  }

  return v36;
}

- (void)dealloc
{
  internal = self->_internal;
  if (internal)
  {
    photoSurface = internal->photoSurface;
    if (photoSurface)
    {
      CFRelease(photoSurface);
      internal = self->_internal;
    }

    photoPixelBuffer = internal->photoPixelBuffer;
    if (photoPixelBuffer)
    {
      CFRelease(photoPixelBuffer);
      internal = self->_internal;
    }

    v6 = self->_internal;
    previewPixelBuffer = v6->previewPixelBuffer;
    if (previewPixelBuffer)
    {
      CFRelease(previewPixelBuffer);
      v6 = self->_internal;
    }

    embeddedThumbnailSourcePixelBuffer = v6->embeddedThumbnailSourcePixelBuffer;
    if (embeddedThumbnailSourcePixelBuffer)
    {
      CFRelease(embeddedThumbnailSourcePixelBuffer);
      v6 = self->_internal;
    }

    v9 = self->_internal;
    constantColorConfidenceMap = v9->constantColorConfidenceMap;
    if (constantColorConfidenceMap)
    {
      CFRelease(constantColorConfidenceMap);
      v9 = self->_internal;
    }
  }

  v11.receiver = self;
  v11.super_class = AVCapturePhoto;
  [(AVCapturePhoto *)&v11 dealloc];
}

- (id)debugDescription
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [-[AVCapturePhotoSettings bracketedSettings](self->_internal->unresolvedSettings "bracketedSettings")];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(AVCapturePhoto *)self isRawPhoto];
  internal = self->_internal;
  if (internal->bracketSettings)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@" bracket:%d/%d lens:%d %@", internal->sequenceCount, v3, -[AVCapturePhoto lensStabilizationStatus](self, "lensStabilizationStatus"), -[AVCaptureBracketedStillImageSettings debugDescription](self->_internal->bracketSettings, "debugDescription")];
    internal = self->_internal;
  }

  else
  {
    v6 = &stru_1F1CBCFE8;
  }

  if (v4)
  {
    v7 = @" (raw)";
  }

  else
  {
    v7 = &stru_1F1CBCFE8;
  }

  v8 = *&internal->timestamp.value;
  time.epoch = internal->timestamp.epoch;
  *&time.value = v8;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"pts:%f %d/%d%@%@ settings:%@", CMTimeGetSeconds(&time), self->_internal->photoCount, -[AVCaptureResolvedPhotoSettings expectedPhotoCount](self->_internal->resolvedSettings, "expectedPhotoCount"), v7, v6, -[AVCaptureResolvedPhotoSettings debugDescription](self->_internal->resolvedSettings, "debugDescription")];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[AVCapturePhoto debugDescription](self, "debugDescription")];
}

- (BOOL)isRawPhoto
{
  if ([(AVCapturePhoto *)self _isSushiRAWPhoto])
  {
    return 1;
  }

  return [(AVCapturePhoto *)self _isProRAWPhoto];
}

- (CVPixelBufferRef)pixelBuffer
{
  if ([(AVCapturePhoto *)self _isProRAWPhoto])
  {
    internal = self->_internal;
    if (internal->photoSurface)
    {
      if (!internal->photoPixelBuffer)
      {
        v5 = *MEMORY[0x1E6991A78];
        v6 = &unk_1F1CE9950;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
        CMPhotoDNGUnpack();
      }
    }
  }

  return self->_internal->photoPixelBuffer;
}

- (NSDictionary)embeddedThumbnailPhotoFormat
{
  v2 = self->_internal->embeddedThumbnailPhotoFormat;

  return v2;
}

- (AVDepthData)depthData
{
  internal = self->_internal;
  depthData = internal->depthData;
  if (depthData)
  {
    v4 = depthData;

    return v4;
  }

  else if ([(AVCapturePhotoSettings *)internal->unresolvedSettings isDepthDataDeliveryEnabled])
  {
    if (!self->_internal->didTryToDecodeDepthData && [(AVCapturePhoto *)self _isCompressedPhoto]&& !avcp_copyFirstAuxiliaryImageOfType())
    {
      self->_internal->depthData = [[AVDepthData alloc] initWithPixelBuffer:0 auxiliaryMetadata:0];
    }

    self->_internal->didTryToDecodeDepthData = 1;
    return self->_internal->depthData;
  }

  else
  {
    return 0;
  }
}

- (AVPortraitEffectsMatte)portraitEffectsMatte
{
  p_internal = &self->_internal;
  internal = self->_internal;
  portraitEffectsMatte = internal->portraitEffectsMatte;
  if (portraitEffectsMatte)
  {
    v5 = portraitEffectsMatte;

    return v5;
  }

  else if ([(AVCapturePhotoSettings *)internal->unresolvedSettings isPortraitEffectsMatteDeliveryEnabled])
  {
    cf = 0;
    v9 = 0;
    if (!(*p_internal)->didTryToDecodePortraitEffectsMatte && (![(AVCapturePhoto *)self _isCompressedPhoto]|| ([(AVCapturePhoto *)p_internal portraitEffectsMatte]& 1) == 0) && cf)
    {
      CFRelease(cf);
    }

    (*p_internal)->didTryToDecodePortraitEffectsMatte = 1;
    return (*p_internal)->portraitEffectsMatte;
  }

  else
  {
    return 0;
  }
}

- (AVSemanticSegmentationMatte)semanticSegmentationMatteForType:(AVSemanticSegmentationMatteType)semanticSegmentationMatteType
{
  if (([(NSString *)semanticSegmentationMatteType isEqual:@"AVSemanticSegmentationMatteTypeSkin"]& 1) != 0)
  {
    v5 = 184;
    v6 = 176;
  }

  else if (([(NSString *)semanticSegmentationMatteType isEqual:@"AVSemanticSegmentationMatteTypeHair"]& 1) != 0)
  {
    v5 = 168;
    v6 = 160;
  }

  else if (([(NSString *)semanticSegmentationMatteType isEqual:@"AVSemanticSegmentationMatteTypeTeeth"]& 1) != 0)
  {
    v5 = 200;
    v6 = 192;
  }

  else
  {
    if (![(NSString *)semanticSegmentationMatteType isEqual:@"AVSemanticSegmentationMatteTypeGlasses"])
    {
      return 0;
    }

    v5 = 216;
    v6 = 208;
  }

  internal = self->_internal;
  v8 = *(&internal->super.isa + v6);
  if (v8)
  {
    v9 = v8;

    return v9;
  }

  if (![(NSArray *)[(AVCapturePhotoSettings *)internal->unresolvedSettings enabledSemanticSegmentationMatteTypes] containsObject:semanticSegmentationMatteType])
  {
    return 0;
  }

  if ((*(&internal->super.isa + v5) & 1) == 0 && [(AVCapturePhoto *)self _isCompressedPhoto])
  {
    avcp_copyFirstAuxiliaryImageOfType();
  }

  *(&internal->super.isa + v5) = 1;
  return *(&internal->super.isa + v6);
}

- (id)photoLibraryThumbnails
{
  v2 = self->_internal->photoLibraryThumbnails;

  return v2;
}

- (NSDictionary)metadata
{
  v2 = self->_internal->metadata;

  return v2;
}

- (AVCameraCalibrationData)cameraCalibrationData
{
  v2 = self->_internal->cameraCalibrationData;

  return v2;
}

- (AVCaptureResolvedPhotoSettings)resolvedSettings
{
  v2 = self->_internal->resolvedSettings;

  return v2;
}

- (AVCaptureDeviceType)sourceDeviceType
{
  if ([(NSArray *)[(AVCapturePhotoSettings *)self->_internal->unresolvedSettings virtualDeviceConstituentPhotoDeliveryEnabledDevices] count])
  {
    v3 = [(NSDictionary *)self->_internal->metadata objectForKeyedSubscript:*MEMORY[0x1E696D9B0]];
    [objc_msgSend(v3 objectForKeyedSubscript:{*MEMORY[0x1E696D9E8]), "floatValue"}];
    v5 = v4;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [(AVCapturePhotoSettings *)self->_internal->unresolvedSettings virtualDeviceConstituentPhotoDeliveryEnabledDevices];
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          [v11 lensAperture];
          if (v5 == v12)
          {
            return [v11 deviceType];
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v14 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  return self->_internal->sourceDeviceType;
}

- (NSData)fileDataRepresentation
{
  if (!self->_internal->photoSurface)
  {
    return 0;
  }

  if (![(AVCapturePhoto *)self _isSushiRAWPhoto])
  {
    if ([(AVCapturePhoto *)self _isCompressedPhoto])
    {
      IOSurfaceLock(self->_internal->photoSurface, 1u, 0);
      v7 = [MEMORY[0x1E695DEF0] dataWithBytes:IOSurfaceGetBaseAddress(self->_internal->photoSurface) length:self->_internal->photoSurfaceSize];
      IOSurfaceUnlock(self->_internal->photoSurface, 1u, 0);
      return v7;
    }

    if ([(AVCapturePhoto *)self _isUncompressedYUVOrRGBPhoto])
    {
      v9 = [(AVCapturePhoto *)self embeddedThumbnailPhotoFormat];
      v10 = [(NSDictionary *)v9 objectForKeyedSubscript:*MEMORY[0x1E6987CB0]];
      v11 = avcp_copyCGImageForUncompressedBuffer(self->_internal->photoPixelBuffer);
      v5 = avcp_copyTIFFFileDataRepresentationForImage(v11, [(AVCapturePhoto *)self metadata], v10);
      if (v11)
      {
        CFRelease(v11);
      }

      v4 = v5;
      goto LABEL_4;
    }

    return 0;
  }

  v3 = [(AVCapturePhoto *)self embeddedThumbnailPhotoFormat];
  v4 = avcp_copyDNGFileDataRepresentationForSushiRawBuffer([(AVCapturePhoto *)self pixelBuffer], [(AVCapturePhoto *)self _embeddedThumbnailSourcePixelBuffer], [(AVCapturePhoto *)self metadata], [(AVCapturePhoto *)self depthData], [(NSDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x1E6987CB0]], [(AVCaptureResolvedPhotoSettings *)self->_internal->resolvedSettings rawEmbeddedThumbnailDimensions]);
  v5 = v4;
LABEL_4:
  v6 = v4;
  return v5;
}

- (NSData)fileDataRepresentationWithReplacementMetadata:(NSDictionary *)replacementMetadata replacementEmbeddedThumbnailPhotoFormat:(NSDictionary *)replacementEmbeddedThumbnailPhotoFormat replacementEmbeddedThumbnailPixelBuffer:(CVPixelBufferRef)replacementEmbeddedThumbnailPixelBuffer replacementDepthData:(AVDepthData *)replacementDepthData
{
  v15 = 0;
  v11 = 0;
  if ([(AVCapturePhoto *)self depthData]== replacementDepthData)
  {
    v11 = [(AVCapturePhoto *)self portraitEffectsMatte];
  }

  v12 = [(AVCapturePhoto *)self _fileDataRepresentationWithReplacementMetadata:replacementMetadata replacementEmbeddedThumbnailPhotoFormat:replacementEmbeddedThumbnailPhotoFormat replacementEmbeddedThumbnailPixelBuffer:replacementEmbeddedThumbnailPixelBuffer replacementDepthData:replacementDepthData replacementPortraitEffectsMatte:v11 replacementHairSegmentationMatte:[(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeHair"] replacementSkinSegmentationMatte:[(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeSkin"] replacementTeethSegmentationMatte:[(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeTeeth"] replacementGlassesSegmentationMatte:[(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeGlasses"] replacementRawCompressionSettings:0 exceptionReason:&v15];
  if (v15)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v13);
    }

    NSLog(&cfstr_SuppressingExc.isa, v13);
  }

  return v12;
}

- (NSData)fileDataRepresentationWithCustomizer:(id)customizer
{
  v19 = [(AVCapturePhoto *)self metadata];
  v21 = [(AVCapturePhoto *)self embeddedThumbnailPhotoFormat];
  v18 = [(AVCapturePhoto *)self depthData];
  v17 = [(AVCapturePhoto *)self portraitEffectsMatte];
  v16 = [(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeHair"];
  v5 = [(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeSkin"];
  v6 = [(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeTeeth"];
  v7 = [(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeGlasses"];
  if (customizer)
  {
    v8 = v7;
    if (objc_opt_respondsToSelector())
    {
      v19 = [customizer replacementMetadataForPhoto:self];
    }

    if (objc_opt_respondsToSelector())
    {
      v15 = [customizer replacementEmbeddedThumbnailPixelBufferWithPhotoFormat:&v21 forPhoto:self];
    }

    else
    {
      v15 = 0;
    }

    if ([(AVCapturePhoto *)self _isProRAWPhoto])
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = [customizer replacementAppleProRAWCompressionSettingsForPhoto:self defaultSettings:-[AVCapturePhoto _defaultRawCompressionSettings](self maximumBitDepth:{"_defaultRawCompressionSettings"), -[AVCapturePhoto _maximumAppleProRAWBitDepth](self, "_maximumAppleProRAWBitDepth")}];
LABEL_19:
        v12 = v16;
LABEL_20:
        v20 = 0;
        v10 = [(AVCapturePhoto *)self _fileDataRepresentationWithReplacementMetadata:v19 replacementEmbeddedThumbnailPhotoFormat:v21 replacementEmbeddedThumbnailPixelBuffer:v15 replacementDepthData:v18 replacementPortraitEffectsMatte:v17 replacementHairSegmentationMatte:v12 replacementSkinSegmentationMatte:v5 replacementTeethSegmentationMatte:v6 replacementGlassesSegmentationMatte:v8 replacementRawCompressionSettings:v11 exceptionReason:&v20];
        if (v20)
        {
          v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
          if (AVCaptureShouldThrowForAPIViolations())
          {
            objc_exception_throw(v13);
          }

          NSLog(&cfstr_SuppressingExc.isa, v13);
        }

        return v10;
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v18 = [customizer replacementDepthDataForPhoto:self];
      }

      if (objc_opt_respondsToSelector())
      {
        v17 = [customizer replacementPortraitEffectsMatteForPhoto:self];
      }

      if (objc_opt_respondsToSelector())
      {
        v12 = [customizer replacementSemanticSegmentationMatteOfType:@"AVSemanticSegmentationMatteTypeHair" forPhoto:self];
        v5 = [customizer replacementSemanticSegmentationMatteOfType:@"AVSemanticSegmentationMatteTypeSkin" forPhoto:self];
        v6 = [customizer replacementSemanticSegmentationMatteOfType:@"AVSemanticSegmentationMatteTypeTeeth" forPhoto:self];
        v8 = [customizer replacementSemanticSegmentationMatteOfType:@"AVSemanticSegmentationMatteTypeGlasses" forPhoto:self];
        v11 = 0;
        goto LABEL_20;
      }
    }

    v11 = 0;
    goto LABEL_19;
  }

  v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v9);
  }

  NSLog(&cfstr_SuppressingExc.isa, v9);
  return 0;
}

- (AVCaptureLensStabilizationStatus)lensStabilizationStatus
{
  if (!self->_internal->lensStabilizationSupported)
  {
    return 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unresolvedSettings = self->_internal->unresolvedSettings;
  }

  else
  {
    unresolvedSettings = 0;
  }

  if (![(AVCapturePhotoSettings *)unresolvedSettings isLensStabilizationEnabled])
  {
    return 1;
  }

  v5 = *MEMORY[0x1E696DE30];
  v6 = [(NSDictionary *)self->_internal->metadata objectForKeyedSubscript:*MEMORY[0x1E696DE30]];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6990AE0]];
  v8 = [(NSDictionary *)self->_internal->metadata objectForKeyedSubscript:v5];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E6990B28]];
  if (!(v7 | v9))
  {
    return 4;
  }

  v10 = v9;
  v11 = [v7 intValue];
  if (([v10 intValue] & 6) != 0)
  {
    return 3;
  }

  if ((v11 - 1) <= 4)
  {
    return qword_1A92AB0E0[v11 - 1];
  }

  else
  {
    return 4;
  }
}

- (id)livePhotoMovieFileURL
{
  internal = self->_internal;
  unresolvedSettings = internal->unresolvedSettings;
  if (internal->expectedPhotoProcessingFlags)
  {
    return [(AVCapturePhotoSettings *)unresolvedSettings livePhotoMovieFileURLForOriginalPhoto];
  }

  else
  {
    return [(AVCapturePhotoSettings *)unresolvedSettings livePhotoMovieFileURL];
  }
}

- (float)focusPixelBlurScore
{
  v2 = [(NSDictionary *)self->_internal->metadata objectForKeyedSubscript:*MEMORY[0x1E696DE30]];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E6990A78]];
  if (!v3)
  {
    return NAN;
  }

  [v3 floatValue];
  return result;
}

- (BOOL)isConstantColorFallbackPhoto
{
  v3 = [(AVCapturePhotoSettings *)self->_internal->unresolvedSettings isConstantColorEnabled];
  if (v3)
  {
    LOBYTE(v3) = self->_internal->constantColorConfidenceMap == 0;
  }

  return v3;
}

+ (id)AVFileTypeFromFigCaptureStillImageSettingsFileType:(int)a3 codec:(unsigned int)a4 unresolvedSettings:(id)a5
{
  if (a3 > 1751476581)
  {
    switch(a3)
    {
      case 1953064550:
        v5 = MEMORY[0x1E69874C8];
        break;
      case 1785096550:
        v5 = MEMORY[0x1E69874B0];
        break;
      case 1751476582:
        v5 = MEMORY[0x1E69874A8];
        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    switch(a3)
    {
      case 1684628333:
        v5 = MEMORY[0x1E6987490];
        break;
      case 1684956519:
        v5 = MEMORY[0x1E6987498];
        break;
      case 1751476579:
        v5 = MEMORY[0x1E69874A0];
        break;
      default:
        goto LABEL_15;
    }
  }

  result = *v5;
  if (*v5)
  {
    return result;
  }

LABEL_15:
  if (a4 > 1635148592)
  {
    switch(a4)
    {
      case 0x61766331u:
        v7 = MEMORY[0x1E6987470];
        break;
      case 0x6A706567u:
        v7 = MEMORY[0x1E69874B0];
        break;
      case 0x68766331u:
        v7 = MEMORY[0x1E69874A0];
        break;
      default:
        return [a5 processedFileType];
    }
  }

  else
  {
    if (a4 != 875704422 && a4 != 875704438 && a4 != 1111970369)
    {
      return [a5 processedFileType];
    }

    v7 = MEMORY[0x1E69874C8];
  }

  result = *v7;
  if (!*v7)
  {
    return [a5 processedFileType];
  }

  return result;
}

- (BOOL)_isCompressedPhoto
{
  if ([(AVCapturePhoto *)self _isSushiRAWPhoto])
  {
    return 0;
  }

  internal = self->_internal;
  processedFileType = internal->processedFileType;
  if (processedFileType)
  {
    if (![(NSString *)processedFileType isEqualToString:*MEMORY[0x1E69874C8]])
    {
      return 1;
    }

    internal = self->_internal;
  }

  v6 = [(AVCapturePhotoSettings *)internal->unresolvedSettings format];
  if ([(NSDictionary *)v6 objectForKeyedSubscript:*MEMORY[0x1E6987CB0]])
  {
    return 1;
  }

  v7 = self->_internal;
  if (!v7->unresolvedSettings)
  {
    if (v7->photoSurface)
    {
      return 1;
    }
  }

  return [(AVCapturePhoto *)self _isProRAWPhoto];
}

- (BOOL)_isUncompressedYUVOrRGBPhoto
{
  v3 = [(AVCapturePhotoSettings *)self->_internal->unresolvedSettings format];
  v4 = [(NSDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x1E6966130]];
  if (v4)
  {
    if ([(AVCapturePhoto *)self _isCompressedPhoto])
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      LOBYTE(v4) = ![(AVCapturePhoto *)self _isSushiRAWPhoto];
    }
  }

  return v4;
}

- (__CVBuffer)_embeddedThumbnailSourcePixelBuffer
{
  internal = self->_internal;
  result = internal->embeddedThumbnailSourcePixelBuffer;
  if (!result)
  {
    return internal->previewPixelBuffer;
  }

  return result;
}

- (unsigned)_orientation
{
  v2 = [(AVCapturePhoto *)self metadata];
  v3 = [(NSDictionary *)v2 objectForKeyedSubscript:*MEMORY[0x1E696DE78]];
  if (!v3)
  {
    return 1;
  }

  return [v3 intValue];
}

- (int)_maximumAppleProRAWBitDepth
{
  if (![(AVCapturePhoto *)self _isProRAWPhoto]|| !self->_internal->photoSurface)
  {
    return 12;
  }

  cf = 0;
  v10 = *MEMORY[0x1E6991A80];
  v11 = MEMORY[0x1E695E118];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v3 = CMPhotoDNGUnpack();
  v4 = cf;
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = cf == 0;
  }

  if (v5)
  {
    v6 = 12;
    if (!cf)
    {
      return v6;
    }

    goto LABEL_16;
  }

  v7 = [cf objectForKeyedSubscript:*MEMORY[0x1E696D808]];
  if (v7 && (v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E6991A18]], objc_msgSend(v8, "count")))
  {
    v6 = [objc_msgSend(v8 objectAtIndexedSubscript:{0), "intValue"}];
  }

  else
  {
    v6 = 12;
  }

  v4 = cf;
  if (cf)
  {
LABEL_16:
    CFRelease(v4);
  }

  return v6;
}

- (id)_fileDataRepresentationWithReplacementMetadata:(id)a3 replacementEmbeddedThumbnailPhotoFormat:(id)a4 replacementEmbeddedThumbnailPixelBuffer:(__CVBuffer *)a5 replacementDepthData:(id)a6 replacementPortraitEffectsMatte:(id)a7 replacementHairSegmentationMatte:(id)a8 replacementSkinSegmentationMatte:(id)a9 replacementTeethSegmentationMatte:(id)a10 replacementGlassesSegmentationMatte:(id)a11 replacementRawCompressionSettings:(id)a12 exceptionReason:(id *)a13
{
  v125 = 0;
  v19 = [MEMORY[0x1E695DFD8] setWithArray:{+[AVCapturePhotoOutput validMetadataTopLevelCGImagePropertiesKeys](AVCapturePhotoOutput, "validMetadataTopLevelCGImagePropertiesKeys")}];
  v20 = [MEMORY[0x1E695DFA8] setWithArray:{objc_msgSend(a3, "allKeys")}];
  [v20 minusSet:v19];
  if ([v20 count])
  {
    v74 = [MEMORY[0x1E696AEC0] stringWithFormat:@"replacementMetadata contains invalid keys: %@", v20];
    v24 = 0;
    v73 = 0;
    v40 = 0;
    v125 = v74;
    if (!v74)
    {
      goto LABEL_114;
    }

    goto LABEL_113;
  }

  v120 = a8;
  if (a4)
  {
    v21 = *MEMORY[0x1E6987E08];
    v124[0] = *MEMORY[0x1E6987CB0];
    v124[1] = v21;
    v124[2] = *MEMORY[0x1E6987D70];
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:3];
    if (AVGestaltGetBoolAnswer(@"AVGQCapturePhotoSettingsSupportRawEmbeddedThumbnailFormat") && [(AVCapturePhoto *)self isRawPhoto])
    {
      v23 = [(AVCapturePhotoSettings *)self->_internal->unresolvedSettings availableRawEmbeddedThumbnailPhotoCodecTypes];
    }

    else
    {
      v23 = [(AVCapturePhotoSettings *)self->_internal->unresolvedSettings availableEmbeddedThumbnailPhotoCodecTypes];
    }

    if (![AVCaptureVideoSettingsValidator validateVideoSettings:a4 allowingFeatures:25 validPixelKeys:0 validPixelFormats:0 validCodecKeys:v22 validCodecs:v23 exceptionReason:&v125])
    {
      goto LABEL_109;
    }
  }

  else if (a5)
  {
    v40 = 0;
    v73 = 0;
    v24 = 0;
    v74 = @"If you specify a replacementEmbeddedThumbnailPixelBuffer, you must also specify a replacementEmbeddedThumbnailPhotoFormat";
    goto LABEL_199;
  }

  v24 = a6;
  if (a6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v40 = 0;
      v73 = 0;
      v24 = 0;
      v74 = @"replacementDepthData must be an instance of AVDepthData";
LABEL_199:
      v125 = v74;
      goto LABEL_113;
    }
  }

  if (!a7)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v40 = 0;
    v73 = 0;
    v24 = 0;
    v74 = @"replacementPortraitEffectsMatte must be an instance of AVPortraitEffectsMatte";
    goto LABEL_199;
  }

  if (!a6)
  {
    v40 = 0;
    v73 = 0;
    v74 = @"If you wish to include a portrait effects matte in the file data representation, you must also include depth data";
    goto LABEL_199;
  }

LABEL_15:
  if (!a8)
  {
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v40 = 0;
    v73 = 0;
    v24 = 0;
    v74 = @"replacementHairSegmentationMatte must be an instance of AVSemanticSegmentationMatte";
    goto LABEL_199;
  }

  if (([objc_msgSend(a8 "matteType")] & 1) == 0)
  {
    v40 = 0;
    v73 = 0;
    v24 = 0;
    v74 = @"replacementHairSegmentationMatte must have a matteType of AVSemanticSegmentationMatteTypeHair";
    goto LABEL_199;
  }

LABEL_18:
  if (!a9)
  {
    goto LABEL_21;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v40 = 0;
    v73 = 0;
    v24 = 0;
    v74 = @"replacementSkinSegmentationMatte must be an instance of AVSemanticSegmentationMatte";
    goto LABEL_199;
  }

  if (([objc_msgSend(a9 "matteType")] & 1) == 0)
  {
    v40 = 0;
    v73 = 0;
    v24 = 0;
    v74 = @"replacementSkinSegmentationMatte must have a matteType of AVSemanticSegmentationMatteTypeSkin";
    goto LABEL_199;
  }

LABEL_21:
  if (!a10)
  {
    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v40 = 0;
    v73 = 0;
    v24 = 0;
    v74 = @"replacementTeethSegmentationMatte must be an instance of AVSemanticSegmentationMatte";
    goto LABEL_199;
  }

  if (([objc_msgSend(a10 "matteType")] & 1) == 0)
  {
    v40 = 0;
    v73 = 0;
    v24 = 0;
    v74 = @"replacementTeethSegmentationMatte must have a matteType of AVSemanticSegmentationMatteTypeTeeth";
    goto LABEL_199;
  }

LABEL_24:
  if (!a11)
  {
    goto LABEL_27;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v40 = 0;
    v73 = 0;
    v24 = 0;
    v74 = @"replacementGlassesSegmentationMatte must be an instance of AVSemanticSegmentationMatte";
    goto LABEL_199;
  }

  if (([objc_msgSend(a11 "matteType")] & 1) == 0)
  {
    v40 = 0;
    v73 = 0;
    v24 = 0;
    v74 = @"replacementGlassesSegmentationMatte must have a matteType of AVSemanticSegmentationMatteTypeGlasses";
    goto LABEL_199;
  }

LABEL_27:
  v112 = a5;
  if (!a12)
  {
    v29 = [(AVCapturePhoto *)self _defaultRawCompressionSettings];
    goto LABEL_41;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v40 = 0;
    v73 = 0;
    v24 = 0;
    v74 = @"replacementRawCompressionSettings must be an instance of NSDictionary";
    goto LABEL_199;
  }

  v25 = *MEMORY[0x1E6987DC0];
  v26 = *MEMORY[0x1E6987C58];
  v123[0] = *MEMORY[0x1E6987DC0];
  v123[1] = v26;
  v27 = [MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v123, 2)}];
  v28 = [MEMORY[0x1E695DFA8] setWithArray:{objc_msgSend(a12, "allKeys")}];
  [v28 minusSet:v27];
  if ([v28 count])
  {
    v107 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported keys specified: %@. Supported keys are %@", v28, v27];
    v24 = 0;
    v73 = 0;
    v40 = 0;
    v125 = v107;
    goto LABEL_112;
  }

  v29 = [-[AVCapturePhoto _defaultRawCompressionSettings](self "_defaultRawCompressionSettings")];
  if ([a12 objectForKeyedSubscript:v25])
  {
    [a12 objectForKeyedSubscript:v25];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v24 = 0;
      v73 = 0;
      v40 = 0;
      v108 = @"replacementAppleProRAWCompressionSettings[AVVideoQualityKey] must be an instance of NSNumber";
      goto LABEL_204;
    }

    [objc_msgSend(a12 objectForKeyedSubscript:{v25), "doubleValue"}];
    if (v30 < 0.0 || v30 > 1.0)
    {
      v24 = 0;
      v73 = 0;
      v40 = 0;
      v108 = @"replacementAppleProRAWCompressionSettings[AVVideoQualityKey] must be a value >= 0.0 and <= 1.0";
      goto LABEL_204;
    }

    [v29 setObject:objc_msgSend(a12 forKeyedSubscript:{"objectForKeyedSubscript:", v25), v25}];
  }

  if ([a12 objectForKeyedSubscript:v26])
  {
    [a12 objectForKeyedSubscript:v26];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [objc_msgSend(a12 objectForKeyedSubscript:{v26), "intValue"}];
      v32 = a8;
      if (v31 >= 8)
      {
        v33 = a7;
        if (v31 <= [(AVCapturePhoto *)self _maximumAppleProRAWBitDepth])
        {
          [v29 setObject:objc_msgSend(a12 forKeyedSubscript:{"objectForKeyedSubscript:", v26), v26}];
          goto LABEL_42;
        }
      }

      v24 = 0;
      v73 = 0;
      v40 = 0;
      v108 = @"replacementAppleProRAWCompressionSettings[AVVideoAppleProRAWBitDepthKey] must be a value >= 8 and <= maximumBitDepth";
    }

    else
    {
      v24 = 0;
      v73 = 0;
      v40 = 0;
      v108 = @"replacementAppleProRAWCompressionSettings[AVVideoAppleProRAWBitDepthKey] must be an instance of NSNumber";
    }

LABEL_204:
    v125 = v108;
    goto LABEL_112;
  }

LABEL_41:
  v32 = a8;
  v33 = a7;
LABEL_42:
  v34 = [v29 isEqual:{-[AVCapturePhoto _defaultRawCompressionSettings](self, "_defaultRawCompressionSettings")}];
  if ([(AVCapturePhoto *)self metadata]== a3)
  {
    v119 = 0;
  }

  else
  {
    v119 = [(NSDictionary *)[(AVCapturePhoto *)self metadata] isEqual:a3]^ 1;
  }

  v35 = [(AVCapturePhoto *)self embeddedThumbnailPhotoFormat];
  if (v112)
  {
    v36 = 0;
  }

  else
  {
    v36 = v35 == a4;
  }

  v37 = !v36;
  v111 = v37;
  v113 = [(AVCapturePhoto *)self depthData];
  v114 = [(AVCapturePhoto *)self portraitEffectsMatte];
  v115 = [(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeHair"];
  v116 = [(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeSkin"];
  v117 = [(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeTeeth"];
  v118 = [(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeGlasses"];
  v38 = *MEMORY[0x1E696DE78];
  if ([a3 objectForKeyedSubscript:*MEMORY[0x1E696DE78]])
  {
    [a3 objectForKeyedSubscript:v38];
  }

  if (!((v119 | v111) & 1 | (v113 != a6 || v114 != v33) | (v115 != v32) | (v116 != a9 || v117 != a10) | (v118 != a11) | (v34 ^ 1) & 1))
  {
    return [(AVCapturePhoto *)self fileDataRepresentation];
  }

  if (!self->_internal->photoSurface)
  {
    goto LABEL_109;
  }

  v110 = a3;
  v39 = [MEMORY[0x1E695DF70] array];
  v40 = v39;
  if (!v39)
  {
    goto LABEL_96;
  }

  if (v113 != a6)
  {
    [(__CFData *)v39 addObject:*MEMORY[0x1E69917B0]];
    [(__CFData *)v40 addObject:*MEMORY[0x1E69917C8]];
  }

  if (v114 != v33)
  {
    [(__CFData *)v40 addObject:*MEMORY[0x1E69917D0]];
  }

  if (v115 != v32)
  {
    [(__CFData *)v40 addObject:*MEMORY[0x1E69917E0]];
  }

  if (v116 != a9)
  {
    [(__CFData *)v40 addObject:*MEMORY[0x1E69917E8]];
  }

  if (v117 != a10)
  {
    [(__CFData *)v40 addObject:*MEMORY[0x1E69917F8]];
  }

  if (v118 != a11)
  {
    [(__CFData *)v40 addObject:*MEMORY[0x1E69917D8]];
  }

  v41 = [(AVCapturePhoto *)self _isSushiRAWPhoto];
  v42 = [(AVCapturePhoto *)self _isProRAWPhoto];
  v43 = [(AVCapturePhotoSettings *)self->_internal->unresolvedSettings format];
  v44 = *MEMORY[0x1E6987CB0];
  v45 = [(NSDictionary *)v43 objectForKeyedSubscript:*MEMORY[0x1E6987CB0]];
  v109 = [v45 isEqualToString:*MEMORY[0x1E6987D00]];
  if ([(NSDictionary *)[(AVCapturePhotoSettings *)self->_internal->unresolvedSettings format] objectForKeyedSubscript:v44]&& !v41)
  {
    if (!v42)
    {
      v122 = 0;
      if (v112)
      {
        v46 = *MEMORY[0x1E6987E08];
        v47 = [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E6987E08]), "intValue"}];
        v48 = *MEMORY[0x1E6987D70];
        v49 = [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E6987D70]), "intValue"}];
        if (v47 <= v49)
        {
          v50 = v49;
        }

        else
        {
          v50 = v47;
        }

        v51 = v50;
        v122 = v50;
        if (!v50)
        {
          v52 = [-[NSDictionary objectForKeyedSubscript:](-[AVCapturePhotoSettings embeddedThumbnailPhotoFormat](self->_internal->unresolvedSettings "embeddedThumbnailPhotoFormat")];
          v53 = [-[NSDictionary objectForKeyedSubscript:](-[AVCapturePhotoSettings embeddedThumbnailPhotoFormat](self->_internal->unresolvedSettings "embeddedThumbnailPhotoFormat")];
          if (v52 <= v53)
          {
            LODWORD(v51) = v53;
          }

          else
          {
            LODWORD(v51) = v52;
          }

          v51 = v51;
          v122 = v51;
        }

        if (!v51)
        {
          if ([(NSString *)self->_internal->processedFileType isEqual:*MEMORY[0x1E69874B0]])
          {
            v54 = 160;
LABEL_136:
            v122 = v54;
            goto LABEL_137;
          }

          [(AVCapturePhoto *)self dimensions];
          [(AVCapturePhoto *)self dimensions];
          if (CMPhotoDetermineMIAFCompliantThumbnailMaxPixelSize())
          {
            v54 = 320;
            goto LABEL_136;
          }
        }
      }

LABEL_137:
      [a4 objectForKeyedSubscript:v44];
      v77 = AVOSTypeForString();
      photoSurfaceSize = self->_internal->photoSurfaceSize;
      v130 = 0;
      if (!CMPhotoCompressionSessionCreate())
      {
        v79 = *MEMORY[0x1E6991860];
        v129[0] = &unk_1F1CE9968;
        v80 = *MEMORY[0x1E6991858];
        v128[0] = v79;
        v128[1] = v80;
        v129[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:photoSurfaceSize];
        v128[2] = *MEMORY[0x1E6991888];
        v129[2] = [MEMORY[0x1E696AD98] numberWithBool:v119];
        v128[3] = *MEMORY[0x1E6991890];
        v129[3] = [MEMORY[0x1E696AD98] numberWithBool:v111];
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v129 forKeys:v128 count:4];
        if (!CMPhotoCompressionSessionOpenExistingContainerForModification() && (!v110 || !v119 || !CMPhotoCompressionSessionAddMetadataFromImageProperties()))
        {
          if (v112)
          {
            v81 = 160;
            if (v122 < 0xA0)
            {
              v81 = v122;
            }

            if (v109)
            {
              v82 = v81;
            }

            else
            {
              v82 = v122;
            }

            v126[0] = *MEMORY[0x1E69918D0];
            v127[0] = [MEMORY[0x1E696AD98] numberWithInt:v77];
            v126[1] = *MEMORY[0x1E6991940];
            v127[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v82];
            [MEMORY[0x1E695DF20] dictionaryWithObjects:v127 forKeys:v126 count:2];
            v83 = CMPhotoCompressionSessionAddThumbnail();
            v24 = v130;
            if (v83)
            {
              goto LABEL_110;
            }
          }

          else
          {
            v24 = v130;
          }

          v84 = a6;
          v85 = a10;
          if (a6 && v113 != a6)
          {
            if ([a6 depthDataType] != 1751411059)
            {
              v84 = [a6 depthDataByConvertingToDepthDataType:1751411059];
            }

            if ([v84 isDepthDataFiltered])
            {
              v86 = 0;
            }

            else
            {
              v86 = &unk_1F1CE9980;
            }

            v87 = [v84 copyAuxiliaryMetadata];
            v88 = *MEMORY[0x1E696D260];
            [v84 depthDataMap];
            _addAuxiliaryImage(v24, 0, v88, 1, 0, v87, v86);
            v85 = a10;
            if (v87)
            {
              CFRelease(v87);
            }
          }

          if (a7)
          {
            if (v114 != a7)
            {
              v89 = [a7 copyAuxiliaryMetadata];
              v90 = *MEMORY[0x1E696D288];
              [a7 mattingImage];
              v91 = v90;
              v85 = a10;
              _addAuxiliaryImage(v24, 0, v91, 5, 0, v89, 0);
              if (v89)
              {
                CFRelease(v89);
              }
            }
          }

          if (v120)
          {
            if (v115 != v120)
            {
              v92 = [(AVSemanticSegmentationMatte *)v120 copyAuxiliaryMetadata];
              v93 = *MEMORY[0x1E696D298];
              v94 = *MEMORY[0x1E69917E0];
              [(AVSemanticSegmentationMatte *)v120 mattingImage];
              v95 = v93;
              v85 = a10;
              _addAuxiliaryImage(v24, 0, v95, 4, v94, v92, 0);
              if (v92)
              {
                CFRelease(v92);
              }
            }
          }

          if (a9)
          {
            if (v116 != a9)
            {
              v96 = [a9 copyAuxiliaryMetadata];
              v97 = *MEMORY[0x1E696D2A0];
              v98 = *MEMORY[0x1E69917E8];
              [a9 mattingImage];
              v99 = v97;
              v85 = a10;
              _addAuxiliaryImage(v24, 0, v99, 4, v98, v96, 0);
              if (v96)
              {
                CFRelease(v96);
              }
            }
          }

          if (v85)
          {
            if (v117 != v85)
            {
              v100 = [(AVSemanticSegmentationMatte *)v85 copyAuxiliaryMetadata];
              v101 = v85;
              v102 = *MEMORY[0x1E696D2B0];
              v103 = *MEMORY[0x1E69917F8];
              [(AVSemanticSegmentationMatte *)v101 mattingImage];
              _addAuxiliaryImage(v24, 0, v102, 4, v103, v100, 0);
              if (v100)
              {
                CFRelease(v100);
              }
            }
          }

          if (a11)
          {
            if (v118 != a11)
            {
              v104 = [a11 copyAuxiliaryMetadata];
              v105 = *MEMORY[0x1E696D290];
              v106 = *MEMORY[0x1E69917D8];
              [a11 mattingImage];
              _addAuxiliaryImage(v24, 0, v105, 4, v106, v104, 0);
              if (v104)
              {
                CFRelease(v104);
              }
            }
          }

          v129[0] = 0;
          if (CMPhotoCompressionSessionCloseContainerAndCopyBacking())
          {
LABEL_110:
            v73 = 0;
LABEL_111:
            v40 = 0;
            goto LABEL_112;
          }

          CMPhotoCompressionSessionInvalidate();
          v40 = v129[0];
          goto LABEL_182;
        }
      }

      v72 = v130;
      if (!v130)
      {
LABEL_109:
        v24 = 0;
        goto LABEL_110;
      }

LABEL_108:
      CFRelease(v72);
      goto LABEL_109;
    }

    goto LABEL_85;
  }

  v55 = v110;
  if (!v42)
  {
    if (v41)
    {
      if ((v119 & 1) == 0)
      {
        v55 = [(AVCapturePhoto *)self metadata];
      }

      if ((v111 & 1) == 0)
      {
        v112 = [(AVCapturePhoto *)self _embeddedThumbnailSourcePixelBuffer];
        a4 = [(AVCapturePhoto *)self embeddedThumbnailPhotoFormat];
      }

      v65 = [a4 objectForKeyedSubscript:v44];
      v66 = [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E6987E08]), "intValue"}];
      v67 = avcp_copyDNGFileDataRepresentationForSushiRawBuffer(-[AVCapturePhoto pixelBuffer](self, "pixelBuffer"), v112, v55, 0, v65, v66 | ([objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E6987D70]), "intValue"}] << 32));
      v40 = v67;
    }

    else
    {
      v69 = [(AVCapturePhotoSettings *)self->_internal->unresolvedSettings format];
      if (![(NSDictionary *)v69 objectForKeyedSubscript:*MEMORY[0x1E6966130]])
      {
        goto LABEL_109;
      }

      if ((v119 & 1) == 0)
      {
        v55 = [(AVCapturePhoto *)self metadata];
      }

      if ((v111 & 1) == 0)
      {
        a4 = [(AVCapturePhoto *)self embeddedThumbnailPhotoFormat];
      }

      v70 = [a4 objectForKeyedSubscript:v44];
      v71 = avcp_copyCGImageForUncompressedBuffer(self->_internal->photoPixelBuffer);
      v40 = avcp_copyTIFFFileDataRepresentationForImage(v71, v55, v70);
      if (v71)
      {
        CFRelease(v71);
      }

      v67 = v40;
    }

    v68 = v67;
LABEL_96:
    v24 = 0;
LABEL_182:
    v73 = 0;
    goto LABEL_112;
  }

LABEL_85:
  v56 = [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E6987E08]), "intValue"}];
  v57 = [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E6987D70]), "intValue"}];
  v129[0] = 0;
  if (CMPhotoDNGCompressorCreateFromSourceDNGWithModificationHandler())
  {
    goto LABEL_107;
  }

  if ((v34 & 1) == 0)
  {
    v58 = [MEMORY[0x1E695DF90] dictionary];
    v59 = [objc_msgSend(v29 objectForKeyedSubscript:{*MEMORY[0x1E6987C58]), "intValue"}];
    v60 = [MEMORY[0x1E696AD98] numberWithInt:v59];
    [v58 setObject:v60 forKeyedSubscript:*MEMORY[0x1E6991A30]];
    [objc_msgSend(v29 objectForKeyedSubscript:{*MEMORY[0x1E6987DC0]), "doubleValue"}];
    v62 = v61;
    v63 = *MEMORY[0x1E6991A40];
    if (v61 == 1.0)
    {
      v64 = &unk_1F1CE9998;
    }

    else
    {
      [v58 setObject:&unk_1F1CE99B0 forKeyedSubscript:v63];
      v64 = [MEMORY[0x1E696AD98] numberWithDouble:v62];
      v63 = *MEMORY[0x1E6991A50];
    }

    [v58 setObject:v64 forKeyedSubscript:v63];
    if (CMPhotoDNGCompressorReplaceMainImageOptions())
    {
      goto LABEL_107;
    }
  }

  if (v119 && CMPhotoDNGCompressorReplaceMainImageProperties())
  {
    goto LABEL_107;
  }

  if (v111)
  {
    if (v112)
    {
      if (v56 <= v57)
      {
        v76 = v57;
      }

      else
      {
        v76 = v56;
      }

      v127[0] = *MEMORY[0x1E6991A60];
      v128[0] = [MEMORY[0x1E696AD98] numberWithInt:v76];
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v128 forKeys:v127 count:1];
      if ([AVCapturePhotoOutput isAppleProRAWPixelFormat:CVPixelBufferGetPixelFormatType(v112)])
      {
        if (CMPhotoDNGCompressorSetPreviewImageFromRAW())
        {
          goto LABEL_107;
        }
      }

      else if (CMPhotoDNGCompressorSetPreviewImage())
      {
        goto LABEL_107;
      }

      goto LABEL_132;
    }

    if (CMPhotoDNGCompressorSetCompressedPreviewImage())
    {
LABEL_107:
      v72 = v129[0];
      if (!v129[0])
      {
        goto LABEL_109;
      }

      goto LABEL_108;
    }
  }

LABEL_132:
  v73 = v129[0];
  v129[0] = 0;
  if (CMPhotoDNGCompressorFinalizeAndCreateData())
  {
    v24 = 0;
    goto LABEL_111;
  }

  v40 = v129[0];
  v24 = 0;
LABEL_112:
  v74 = v125;
  if (v125)
  {
LABEL_113:
    *a13 = v74;
  }

LABEL_114:
  if (v24)
  {
    CFRelease(v24);
  }

  if (v73)
  {
    CFRelease(v73);
  }

  return v40;
}

uint64_t __384__AVCapturePhoto__fileDataRepresentationWithReplacementMetadata_replacementEmbeddedThumbnailPhotoFormat_replacementEmbeddedThumbnailPixelBuffer_replacementDepthData_replacementPortraitEffectsMatte_replacementHairSegmentationMatte_replacementSkinSegmentationMatte_replacementTeethSegmentationMatte_replacementGlassesSegmentationMatte_replacementRawCompressionSettings_exceptionReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*MEMORY[0x1E6991828]];
  if ([v3 count] >= 2)
  {
    v4 = [v3 objectAtIndexedSubscript:1];
    if ([objc_msgSend(v4 objectForKeyedSubscript:{*MEMORY[0x1E6991818]), "unsignedIntValue"}] != 1953325424)
    {
      v23 = 1326;
      goto LABEL_34;
    }

    if (*(a1 + 48) == 1)
    {
      [v4 setObject:&unk_1F1CE9968 forKeyedSubscript:*MEMORY[0x1E6991838]];
    }
  }

  if ([v3 count] > 2)
  {
    v23 = 1335;
LABEL_34:
    __384__AVCapturePhoto__fileDataRepresentationWithReplacementMetadata_replacementEmbeddedThumbnailPhotoFormat_replacementEmbeddedThumbnailPixelBuffer_replacementDepthData_replacementPortraitEffectsMatte_replacementHairSegmentationMatte_replacementSkinSegmentationMatte_replacementTeethSegmentationMatte_replacementGlassesSegmentationMatte_replacementRawCompressionSettings_exceptionReason___block_invoke_cold_1(v23, &v34);
    return v34;
  }

  v5 = [v3 objectAtIndexedSubscript:0];
  if ((*(a1 + 49) & 1) == 0)
  {
    if ([*(a1 + 32) count])
    {
      v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E6991808]];
      v7 = [v6 count];
      if (v7 - 1 >= 0)
      {
        v8 = v7;
        v9 = *MEMORY[0x1E6991810];
        do
        {
          if ([*(a1 + 32) containsObject:{objc_msgSend(objc_msgSend(v6, "objectAtIndexedSubscript:", --v8), "objectForKeyedSubscript:", v9)}])
          {
            [v6 removeObjectAtIndex:v8];
          }
        }

        while (v8 > 0);
      }
    }
  }

  if (*(a1 + 48) != 1 || *(a1 + 50) != 1)
  {
    return 0;
  }

  v10 = *MEMORY[0x1E6991838];
  [v5 setObject:*(a1 + 40) forKeyedSubscript:*MEMORY[0x1E6991838]];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = [v3 objectAtIndexedSubscript:0];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x1E6991840]];
  v13 = [v12 countByEnumeratingWithState:&v30 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v30 + 1) + 8 * i) setObject:*(a1 + 40) forKeyedSubscript:v10];
      }

      v14 = [v12 countByEnumeratingWithState:&v30 objects:v29 count:16];
    }

    while (v14);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = [v3 objectAtIndexedSubscript:0];
  v18 = [v17 objectForKeyedSubscript:*MEMORY[0x1E6991808]];
  result = [v18 countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (result)
  {
    v20 = result;
    v21 = *v26;
    do
    {
      v22 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v25 + 1) + 8 * v22++) setObject:*(a1 + 40) forKeyedSubscript:v10];
      }

      while (v20 != v22);
      result = [v18 countByEnumeratingWithState:&v25 objects:v24 count:16];
      v20 = result;
    }

    while (result);
  }

  return result;
}

- (CGImageRef)CGImageRepresentation
{
  if ([(AVCapturePhoto *)self _isSushiRAWPhoto])
  {
    return 0;
  }

  if ([(AVCapturePhoto *)self _isUncompressedYUVOrRGBPhoto])
  {
    ImageAtIndex = avcp_copyCGImageForUncompressedBuffer(self->_internal->photoPixelBuffer);
    if (!ImageAtIndex)
    {
      return ImageAtIndex;
    }

    goto LABEL_7;
  }

  if (![(AVCapturePhoto *)self _isCompressedPhoto])
  {
    return 0;
  }

  v3 = [(AVCapturePhoto *)self fileDataRepresentation];
  if (!v3)
  {
    return 0;
  }

  v5 = v3;
  v6 = OUTLINED_FUNCTION_2(MEMORY[0x1E695DF20], v4, *MEMORY[0x1E696E118], self->_internal->processedFileType);
  v7 = CGImageSourceCreateWithData(v5, v6);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v7, 0, 0);
  CFRelease(v8);
  if (ImageAtIndex)
  {
LABEL_7:
    CFAutorelease(ImageAtIndex);
  }

  return ImageAtIndex;
}

- (CGImageRef)previewCGImageRepresentation
{
  previewPixelBuffer = self->_internal->previewPixelBuffer;
  if (!previewPixelBuffer)
  {
    return 0;
  }

  v3 = avcp_copyCGImageForUncompressedBuffer(previewPixelBuffer);
  v4 = v3;
  if (v3)
  {
    CFAutorelease(v3);
  }

  return v4;
}

- (uint64_t)portraitEffectsMatte
{
  AuxiliaryImageOfType = avcp_copyFirstAuxiliaryImageOfType();
  result = *a2;
  if (!AuxiliaryImageOfType)
  {
    if (!(result | *a3))
    {
      return 1;
    }

    *(*a1 + 144) = [[AVPortraitEffectsMatte alloc] initWithPixelBuffer:*a2 auxiliaryMetadata:*a3];
    result = *a2;
  }

  if (result)
  {
    CFRelease(result);
    return 0;
  }

  return result;
}

uint64_t __384__AVCapturePhoto__fileDataRepresentationWithReplacementMetadata_replacementEmbeddedThumbnailPhotoFormat_replacementEmbeddedThumbnailPixelBuffer_replacementDepthData_replacementPortraitEffectsMatte_replacementHairSegmentationMatte_replacementSkinSegmentationMatte_replacementTeethSegmentationMatte_replacementGlassesSegmentationMatte_replacementRawCompressionSettings_exceptionReason___block_invoke_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

@end