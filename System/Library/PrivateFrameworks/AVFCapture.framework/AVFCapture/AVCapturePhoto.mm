@interface AVCapturePhoto
+ (id)AVFileTypeFromFigCaptureStillImageSettingsFileType:(int)type codec:(unsigned int)codec unresolvedSettings:(id)settings;
- (AVCameraCalibrationData)cameraCalibrationData;
- (AVCaptureDeviceType)sourceDeviceType;
- (AVCaptureLensStabilizationStatus)lensStabilizationStatus;
- (AVCapturePhoto)initWithTimestamp:(id *)timestamp photoSurface:(__IOSurface *)surface photoSurfaceSize:(unint64_t)size processedFileType:(id)type previewPhotoSurface:(__IOSurface *)photoSurface embeddedThumbnailSourceSurface:(__IOSurface *)sourceSurface photoLibraryThumbnails:(id)thumbnails metadata:(id)self0 depthDataSurface:(__IOSurface *)self1 depthMetadataDictionary:(id)self2 portraitEffectsMatteSurface:(__IOSurface *)self3 portraitEffectsMatteMetadataDictionary:(id)self4 hairSegmentationMatteSurface:(__IOSurface *)self5 hairSegmentationMatteMetadataDictionary:(id)self6 skinSegmentationMatteSurface:(__IOSurface *)self7 skinSegmentationMatteMetadataDictionary:(id)self8 teethSegmentationMatteSurface:(__IOSurface *)self9 teethSegmentationMatteMetadataDictionary:(id)teethSegmentationMatteMetadataDictionary glassesSegmentationMatteSurface:(__IOSurface *)glassesSegmentationMatteSurface glassesSegmentationMatteMetadataDictionary:(id)glassesSegmentationMatteMetadataDictionary constantColorConfidenceMapSurface:(__IOSurface *)mapSurface constantColorMetadataDictionary:(id)colorMetadataDictionary captureRequest:(id)request bracketSettings:(id)settings sequenceCount:(unint64_t)count photoCount:(unint64_t)photoCount expectedPhotoProcessingFlags:(unsigned int)flags sourceDeviceType:(id)timestamp0;
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
- (id)_fileDataRepresentationWithReplacementMetadata:(id)metadata replacementEmbeddedThumbnailPhotoFormat:(id)format replacementEmbeddedThumbnailPixelBuffer:(__CVBuffer *)buffer replacementDepthData:(id)data replacementPortraitEffectsMatte:(id)matte replacementHairSegmentationMatte:(id)segmentationMatte replacementSkinSegmentationMatte:(id)skinSegmentationMatte replacementTeethSegmentationMatte:(id)self0 replacementGlassesSegmentationMatte:(id)self1 replacementRawCompressionSettings:(id)self2 exceptionReason:(id *)self3;
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

- (AVCapturePhoto)initWithTimestamp:(id *)timestamp photoSurface:(__IOSurface *)surface photoSurfaceSize:(unint64_t)size processedFileType:(id)type previewPhotoSurface:(__IOSurface *)photoSurface embeddedThumbnailSourceSurface:(__IOSurface *)sourceSurface photoLibraryThumbnails:(id)thumbnails metadata:(id)self0 depthDataSurface:(__IOSurface *)self1 depthMetadataDictionary:(id)self2 portraitEffectsMatteSurface:(__IOSurface *)self3 portraitEffectsMatteMetadataDictionary:(id)self4 hairSegmentationMatteSurface:(__IOSurface *)self5 hairSegmentationMatteMetadataDictionary:(id)self6 skinSegmentationMatteSurface:(__IOSurface *)self7 skinSegmentationMatteMetadataDictionary:(id)self8 teethSegmentationMatteSurface:(__IOSurface *)self9 teethSegmentationMatteMetadataDictionary:(id)teethSegmentationMatteMetadataDictionary glassesSegmentationMatteSurface:(__IOSurface *)glassesSegmentationMatteSurface glassesSegmentationMatteMetadataDictionary:(id)glassesSegmentationMatteMetadataDictionary constantColorConfidenceMapSurface:(__IOSurface *)mapSurface constantColorMetadataDictionary:(id)colorMetadataDictionary captureRequest:(id)request bracketSettings:(id)settings sequenceCount:(unint64_t)count photoCount:(unint64_t)photoCount expectedPhotoProcessingFlags:(unsigned int)flags sourceDeviceType:(id)timestamp0
{
  v69.receiver = self;
  v69.super_class = AVCapturePhoto;
  v36 = [(AVCapturePhoto *)&v69 init];
  if (!v36)
  {
    return v36;
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@" constantColorConfidence:%p", mapSurface];
  v37 = objc_alloc_init(AVCapturePhotoInternal);
  v36->_internal = v37;
  if (!v37)
  {

    return 0;
  }

  surface = photoSurface;
  v38 = *&timestamp->var0;
  v37->timestamp.epoch = timestamp->var3;
  *&v37->timestamp.value = v38;
  if (surface)
  {
    v39 = CFRetain(surface);
  }

  else
  {
    v39 = 0;
  }

  v36->_internal->photoSurface = v39;
  v36->_internal->photoSurfaceSize = size;
  if (!type)
  {
    type = [objc_msgSend(request "unresolvedSettings")];
  }

  v36->_internal->processedFileType = type;
  v36->_internal->photoLibraryThumbnails = thumbnails;
  if (metadata)
  {
    v36->_internal->privateClientMetadata = [[AVCapturePhotoPrivateClientMetadata alloc] initWithMetadataDictionary:metadata];
    if (v36->_internal->privateClientMetadata)
    {
      v40 = [metadata mutableCopy];
      [v40 setObject:0 forKeyedSubscript:*MEMORY[0x1E6990CB0]];
    }

    else
    {
      v40 = 0;
    }

    v42 = [metadata objectForKeyedSubscript:0x1F1CCCB68];
    if (v42)
    {
      v36->_internal->portraitMetadata = [[AVApplePortraitMetadata alloc] initWithPortraitMetadataDictionary:v42];
      if (!v40)
      {
        v40 = [metadata mutableCopy];
      }

      [v40 setObject:0 forKeyedSubscript:0x1F1CCCB68];
    }

    if (v40)
    {

      v36->_internal->metadata = [v40 copy];
      goto LABEL_21;
    }

    metadataCopy = metadata;
  }

  else
  {
    metadataCopy = objc_alloc_init(MEMORY[0x1E695DF20]);
  }

  v36->_internal->metadata = metadataCopy;
LABEL_21:
  v36->_internal->resolvedSettings = [request resolvedSettings];
  v36->_internal->unresolvedSettings = [request unresolvedSettings];
  v36->_internal->bracketSettings = settings;
  v36->_internal->sequenceCount = count;
  v36->_internal->photoCount = photoCount;
  v36->_internal->sourceDeviceType = deviceType;
  v43 = [metadata objectForKeyedSubscript:*MEMORY[0x1E696DE30]];
  v36->_internal->expectedPhotoProcessingFlags = flags;
  v36->_internal->actualPhotoProcessingFlags = [objc_msgSend(v43 objectForKeyedSubscript:{@"25", "unsignedIntValue"}];
  _isSushiRAWPhoto = [(AVCapturePhoto *)v36 _isSushiRAWPhoto];
  _isProRAWPhoto = [(AVCapturePhoto *)v36 _isProRAWPhoto];
  v36->_internal->lensStabilizationSupported = [request lensStabilizationSupported];
  resolvedSettings = v36->_internal->resolvedSettings;
  if (_isSushiRAWPhoto || _isProRAWPhoto)
  {
    rawEmbeddedThumbnailDimensions = [(AVCaptureResolvedPhotoSettings *)resolvedSettings rawEmbeddedThumbnailDimensions];
    rawEmbeddedThumbnailPhotoFormat = [(AVCapturePhotoSettings *)v36->_internal->unresolvedSettings rawEmbeddedThumbnailPhotoFormat];
  }

  else
  {
    rawEmbeddedThumbnailDimensions = [(AVCaptureResolvedPhotoSettings *)resolvedSettings embeddedThumbnailDimensions];
    rawEmbeddedThumbnailPhotoFormat = [(AVCapturePhotoSettings *)v36->_internal->unresolvedSettings embeddedThumbnailPhotoFormat];
  }

  v49 = *MEMORY[0x1E6987CB0];
  v50 = [(NSDictionary *)rawEmbeddedThumbnailPhotoFormat objectForKeyedSubscript:*MEMORY[0x1E6987CB0]];
  v51 = HIDWORD(rawEmbeddedThumbnailDimensions);
  if (HIDWORD(rawEmbeddedThumbnailDimensions))
  {
    if (rawEmbeddedThumbnailDimensions)
    {
      v52 = v50;
      if (v50)
      {
        v53 = objc_alloc(MEMORY[0x1E695DF20]);
        v54 = [MEMORY[0x1E696AD98] numberWithInt:rawEmbeddedThumbnailDimensions];
        v55 = *MEMORY[0x1E6987E08];
        v56 = [MEMORY[0x1E696AD98] numberWithInt:v51];
        v36->_internal->embeddedThumbnailPhotoFormat = [v53 initWithObjectsAndKeys:{v52, v49, v54, v55, v56, *MEMORY[0x1E6987D70], 0}];
      }
    }
  }

  v57 = MEMORY[0x1E695E480];
  if (surface && (_isSushiRAWPhoto || [(AVCapturePhoto *)v36 _isUncompressedYUVOrRGBPhoto]))
  {
    CVPixelBufferCreateWithIOSurface(*v57, surface, 0, &v36->_internal->photoPixelBuffer);
  }

  if (surface)
  {
    CVPixelBufferCreateWithIOSurface(*v57, surface, 0, &v36->_internal->previewPixelBuffer);
  }

  if (sourceSurface)
  {
    CVPixelBufferCreateWithIOSurface(*v57, sourceSurface, 0, &v36->_internal->embeddedThumbnailSourcePixelBuffer);
  }

  if (dataSurface)
  {
    pixelBufferOut = 0;
    CVPixelBufferCreateWithIOSurface(*v57, dataSurface, 0, &pixelBufferOut);
    v58 = [AVDepthData alloc];
    v36->_internal->depthData = [(AVDepthData *)v58 initWithPixelBuffer:pixelBufferOut depthMetadataDictionary:dictionary];
    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
    }
  }

  if (matteSurface)
  {
    pixelBufferOut = 0;
    CVPixelBufferCreateWithIOSurface(*v57, matteSurface, 0, &pixelBufferOut);
    v59 = [AVPortraitEffectsMatte alloc];
    v36->_internal->portraitEffectsMatte = [(AVPortraitEffectsMatte *)v59 initWithPixelBuffer:pixelBufferOut portraitEffectsMatteMetadataDictionary:metadataDictionary];
    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
    }
  }

  if (segmentationMatteSurface)
  {
    pixelBufferOut = 0;
    CVPixelBufferCreateWithIOSurface(*v57, segmentationMatteSurface, 0, &pixelBufferOut);
    v60 = [AVSemanticSegmentationMatte alloc];
    v36->_internal->hairSegmentationMatte = [(AVSemanticSegmentationMatte *)v60 initWithType:@"AVSemanticSegmentationMatteTypeHair" pixelBuffer:pixelBufferOut semanticSegmentationMatteMetadataDictionary:matteMetadataDictionary];
    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
    }
  }

  if (skinSegmentationMatteSurface)
  {
    pixelBufferOut = 0;
    CVPixelBufferCreateWithIOSurface(*v57, skinSegmentationMatteSurface, 0, &pixelBufferOut);
    v61 = [AVSemanticSegmentationMatte alloc];
    v36->_internal->skinSegmentationMatte = [(AVSemanticSegmentationMatte *)v61 initWithType:@"AVSemanticSegmentationMatteTypeSkin" pixelBuffer:pixelBufferOut semanticSegmentationMatteMetadataDictionary:segmentationMatteMetadataDictionary];
    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
    }
  }

  if (teethSegmentationMatteSurface)
  {
    pixelBufferOut = 0;
    CVPixelBufferCreateWithIOSurface(*v57, teethSegmentationMatteSurface, 0, &pixelBufferOut);
    v62 = [AVSemanticSegmentationMatte alloc];
    v36->_internal->teethSegmentationMatte = [(AVSemanticSegmentationMatte *)v62 initWithType:@"AVSemanticSegmentationMatteTypeTeeth" pixelBuffer:pixelBufferOut semanticSegmentationMatteMetadataDictionary:teethSegmentationMatteMetadataDictionary];
    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
    }
  }

  if (glassesSegmentationMatteSurface)
  {
    pixelBufferOut = 0;
    CVPixelBufferCreateWithIOSurface(*v57, glassesSegmentationMatteSurface, 0, &pixelBufferOut);
    v63 = [AVSemanticSegmentationMatte alloc];
    v36->_internal->glassesSegmentationMatte = [(AVSemanticSegmentationMatte *)v63 initWithType:@"AVSemanticSegmentationMatteTypeGlasses" pixelBuffer:pixelBufferOut semanticSegmentationMatteMetadataDictionary:glassesSegmentationMatteMetadataDictionary];
    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
    }
  }

  if (mapSurface)
  {
    pixelBufferOut = 0;
    CVPixelBufferCreateWithIOSurface(*v57, mapSurface, 0, &pixelBufferOut);
    v36->_internal->constantColorConfidenceMap = pixelBufferOut;
    if (colorMetadataDictionary)
    {
      [objc_msgSend(colorMetadataDictionary objectForKeyedSubscript:{*MEMORY[0x1E6991300]), "floatValue"}];
      v36->_internal->constantColorCenterWeightedMeanConfidenceLevel = v64;
    }
  }

  isCameraCalibrationDataDeliveryEnabled = [(AVCapturePhotoSettings *)v36->_internal->unresolvedSettings isCameraCalibrationDataDeliveryEnabled];
  if (dictionary && isCameraCalibrationDataDeliveryEnabled)
  {
    v36->_internal->cameraCalibrationData = [[AVCameraCalibrationData alloc] initWithDepthMetadataDictionary:dictionary];
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

  isRawPhoto = [(AVCapturePhoto *)self isRawPhoto];
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

  if (isRawPhoto)
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
    virtualDeviceConstituentPhotoDeliveryEnabledDevices = [(AVCapturePhotoSettings *)self->_internal->unresolvedSettings virtualDeviceConstituentPhotoDeliveryEnabledDevices];
    v7 = [(NSArray *)virtualDeviceConstituentPhotoDeliveryEnabledDevices countByEnumeratingWithState:&v15 objects:v14 count:16];
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
            objc_enumerationMutation(virtualDeviceConstituentPhotoDeliveryEnabledDevices);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          [v11 lensAperture];
          if (v5 == v12)
          {
            return [v11 deviceType];
          }
        }

        v8 = [(NSArray *)virtualDeviceConstituentPhotoDeliveryEnabledDevices countByEnumeratingWithState:&v15 objects:v14 count:16];
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
      embeddedThumbnailPhotoFormat = [(AVCapturePhoto *)self embeddedThumbnailPhotoFormat];
      v10 = [(NSDictionary *)embeddedThumbnailPhotoFormat objectForKeyedSubscript:*MEMORY[0x1E6987CB0]];
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

  embeddedThumbnailPhotoFormat2 = [(AVCapturePhoto *)self embeddedThumbnailPhotoFormat];
  v4 = avcp_copyDNGFileDataRepresentationForSushiRawBuffer([(AVCapturePhoto *)self pixelBuffer], [(AVCapturePhoto *)self _embeddedThumbnailSourcePixelBuffer], [(AVCapturePhoto *)self metadata], [(AVCapturePhoto *)self depthData], [(NSDictionary *)embeddedThumbnailPhotoFormat2 objectForKeyedSubscript:*MEMORY[0x1E6987CB0]], [(AVCaptureResolvedPhotoSettings *)self->_internal->resolvedSettings rawEmbeddedThumbnailDimensions]);
  v5 = v4;
LABEL_4:
  v6 = v4;
  return v5;
}

- (NSData)fileDataRepresentationWithReplacementMetadata:(NSDictionary *)replacementMetadata replacementEmbeddedThumbnailPhotoFormat:(NSDictionary *)replacementEmbeddedThumbnailPhotoFormat replacementEmbeddedThumbnailPixelBuffer:(CVPixelBufferRef)replacementEmbeddedThumbnailPixelBuffer replacementDepthData:(AVDepthData *)replacementDepthData
{
  v15 = 0;
  portraitEffectsMatte = 0;
  if ([(AVCapturePhoto *)self depthData]== replacementDepthData)
  {
    portraitEffectsMatte = [(AVCapturePhoto *)self portraitEffectsMatte];
  }

  v12 = [(AVCapturePhoto *)self _fileDataRepresentationWithReplacementMetadata:replacementMetadata replacementEmbeddedThumbnailPhotoFormat:replacementEmbeddedThumbnailPhotoFormat replacementEmbeddedThumbnailPixelBuffer:replacementEmbeddedThumbnailPixelBuffer replacementDepthData:replacementDepthData replacementPortraitEffectsMatte:portraitEffectsMatte replacementHairSegmentationMatte:[(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeHair"] replacementSkinSegmentationMatte:[(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeSkin"] replacementTeethSegmentationMatte:[(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeTeeth"] replacementGlassesSegmentationMatte:[(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeGlasses"] replacementRawCompressionSettings:0 exceptionReason:&v15];
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
  metadata = [(AVCapturePhoto *)self metadata];
  embeddedThumbnailPhotoFormat = [(AVCapturePhoto *)self embeddedThumbnailPhotoFormat];
  depthData = [(AVCapturePhoto *)self depthData];
  portraitEffectsMatte = [(AVCapturePhoto *)self portraitEffectsMatte];
  v16 = [(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeHair"];
  v5 = [(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeSkin"];
  v6 = [(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeTeeth"];
  v7 = [(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeGlasses"];
  if (customizer)
  {
    v8 = v7;
    if (objc_opt_respondsToSelector())
    {
      metadata = [customizer replacementMetadataForPhoto:self];
    }

    if (objc_opt_respondsToSelector())
    {
      v15 = [customizer replacementEmbeddedThumbnailPixelBufferWithPhotoFormat:&embeddedThumbnailPhotoFormat forPhoto:self];
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
        v10 = [(AVCapturePhoto *)self _fileDataRepresentationWithReplacementMetadata:metadata replacementEmbeddedThumbnailPhotoFormat:embeddedThumbnailPhotoFormat replacementEmbeddedThumbnailPixelBuffer:v15 replacementDepthData:depthData replacementPortraitEffectsMatte:portraitEffectsMatte replacementHairSegmentationMatte:v12 replacementSkinSegmentationMatte:v5 replacementTeethSegmentationMatte:v6 replacementGlassesSegmentationMatte:v8 replacementRawCompressionSettings:v11 exceptionReason:&v20];
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
        depthData = [customizer replacementDepthDataForPhoto:self];
      }

      if (objc_opt_respondsToSelector())
      {
        portraitEffectsMatte = [customizer replacementPortraitEffectsMatteForPhoto:self];
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
  intValue = [v7 intValue];
  if (([v10 intValue] & 6) != 0)
  {
    return 3;
  }

  if ((intValue - 1) <= 4)
  {
    return qword_1A92AB0E0[intValue - 1];
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
  isConstantColorEnabled = [(AVCapturePhotoSettings *)self->_internal->unresolvedSettings isConstantColorEnabled];
  if (isConstantColorEnabled)
  {
    LOBYTE(isConstantColorEnabled) = self->_internal->constantColorConfidenceMap == 0;
  }

  return isConstantColorEnabled;
}

+ (id)AVFileTypeFromFigCaptureStillImageSettingsFileType:(int)type codec:(unsigned int)codec unresolvedSettings:(id)settings
{
  if (type > 1751476581)
  {
    switch(type)
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
    switch(type)
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
  if (codec > 1635148592)
  {
    switch(codec)
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
        return [settings processedFileType];
    }
  }

  else
  {
    if (codec != 875704422 && codec != 875704438 && codec != 1111970369)
    {
      return [settings processedFileType];
    }

    v7 = MEMORY[0x1E69874C8];
  }

  result = *v7;
  if (!*v7)
  {
    return [settings processedFileType];
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

  format = [(AVCapturePhotoSettings *)internal->unresolvedSettings format];
  if ([(NSDictionary *)format objectForKeyedSubscript:*MEMORY[0x1E6987CB0]])
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
  format = [(AVCapturePhotoSettings *)self->_internal->unresolvedSettings format];
  v4 = [(NSDictionary *)format objectForKeyedSubscript:*MEMORY[0x1E6966130]];
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
  metadata = [(AVCapturePhoto *)self metadata];
  v3 = [(NSDictionary *)metadata objectForKeyedSubscript:*MEMORY[0x1E696DE78]];
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

- (id)_fileDataRepresentationWithReplacementMetadata:(id)metadata replacementEmbeddedThumbnailPhotoFormat:(id)format replacementEmbeddedThumbnailPixelBuffer:(__CVBuffer *)buffer replacementDepthData:(id)data replacementPortraitEffectsMatte:(id)matte replacementHairSegmentationMatte:(id)segmentationMatte replacementSkinSegmentationMatte:(id)skinSegmentationMatte replacementTeethSegmentationMatte:(id)self0 replacementGlassesSegmentationMatte:(id)self1 replacementRawCompressionSettings:(id)self2 exceptionReason:(id *)self3
{
  v125 = 0;
  v19 = [MEMORY[0x1E695DFD8] setWithArray:{+[AVCapturePhotoOutput validMetadataTopLevelCGImagePropertiesKeys](AVCapturePhotoOutput, "validMetadataTopLevelCGImagePropertiesKeys")}];
  v20 = [MEMORY[0x1E695DFA8] setWithArray:{objc_msgSend(metadata, "allKeys")}];
  [v20 minusSet:v19];
  if ([v20 count])
  {
    v74 = [MEMORY[0x1E696AEC0] stringWithFormat:@"replacementMetadata contains invalid keys: %@", v20];
    dataCopy = 0;
    v73 = 0;
    v40 = 0;
    v125 = v74;
    if (!v74)
    {
      goto LABEL_114;
    }

    goto LABEL_113;
  }

  segmentationMatteCopy = segmentationMatte;
  if (format)
  {
    v21 = *MEMORY[0x1E6987E08];
    v124[0] = *MEMORY[0x1E6987CB0];
    v124[1] = v21;
    v124[2] = *MEMORY[0x1E6987D70];
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:3];
    if (AVGestaltGetBoolAnswer(@"AVGQCapturePhotoSettingsSupportRawEmbeddedThumbnailFormat") && [(AVCapturePhoto *)self isRawPhoto])
    {
      availableRawEmbeddedThumbnailPhotoCodecTypes = [(AVCapturePhotoSettings *)self->_internal->unresolvedSettings availableRawEmbeddedThumbnailPhotoCodecTypes];
    }

    else
    {
      availableRawEmbeddedThumbnailPhotoCodecTypes = [(AVCapturePhotoSettings *)self->_internal->unresolvedSettings availableEmbeddedThumbnailPhotoCodecTypes];
    }

    if (![AVCaptureVideoSettingsValidator validateVideoSettings:format allowingFeatures:25 validPixelKeys:0 validPixelFormats:0 validCodecKeys:v22 validCodecs:availableRawEmbeddedThumbnailPhotoCodecTypes exceptionReason:&v125])
    {
      goto LABEL_109;
    }
  }

  else if (buffer)
  {
    v40 = 0;
    v73 = 0;
    dataCopy = 0;
    v74 = @"If you specify a replacementEmbeddedThumbnailPixelBuffer, you must also specify a replacementEmbeddedThumbnailPhotoFormat";
    goto LABEL_199;
  }

  dataCopy = data;
  if (data)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v40 = 0;
      v73 = 0;
      dataCopy = 0;
      v74 = @"replacementDepthData must be an instance of AVDepthData";
LABEL_199:
      v125 = v74;
      goto LABEL_113;
    }
  }

  if (!matte)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v40 = 0;
    v73 = 0;
    dataCopy = 0;
    v74 = @"replacementPortraitEffectsMatte must be an instance of AVPortraitEffectsMatte";
    goto LABEL_199;
  }

  if (!data)
  {
    v40 = 0;
    v73 = 0;
    v74 = @"If you wish to include a portrait effects matte in the file data representation, you must also include depth data";
    goto LABEL_199;
  }

LABEL_15:
  if (!segmentationMatte)
  {
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v40 = 0;
    v73 = 0;
    dataCopy = 0;
    v74 = @"replacementHairSegmentationMatte must be an instance of AVSemanticSegmentationMatte";
    goto LABEL_199;
  }

  if (([objc_msgSend(segmentationMatte "matteType")] & 1) == 0)
  {
    v40 = 0;
    v73 = 0;
    dataCopy = 0;
    v74 = @"replacementHairSegmentationMatte must have a matteType of AVSemanticSegmentationMatteTypeHair";
    goto LABEL_199;
  }

LABEL_18:
  if (!skinSegmentationMatte)
  {
    goto LABEL_21;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v40 = 0;
    v73 = 0;
    dataCopy = 0;
    v74 = @"replacementSkinSegmentationMatte must be an instance of AVSemanticSegmentationMatte";
    goto LABEL_199;
  }

  if (([objc_msgSend(skinSegmentationMatte "matteType")] & 1) == 0)
  {
    v40 = 0;
    v73 = 0;
    dataCopy = 0;
    v74 = @"replacementSkinSegmentationMatte must have a matteType of AVSemanticSegmentationMatteTypeSkin";
    goto LABEL_199;
  }

LABEL_21:
  if (!teethSegmentationMatte)
  {
    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v40 = 0;
    v73 = 0;
    dataCopy = 0;
    v74 = @"replacementTeethSegmentationMatte must be an instance of AVSemanticSegmentationMatte";
    goto LABEL_199;
  }

  if (([objc_msgSend(teethSegmentationMatte "matteType")] & 1) == 0)
  {
    v40 = 0;
    v73 = 0;
    dataCopy = 0;
    v74 = @"replacementTeethSegmentationMatte must have a matteType of AVSemanticSegmentationMatteTypeTeeth";
    goto LABEL_199;
  }

LABEL_24:
  if (!glassesSegmentationMatte)
  {
    goto LABEL_27;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v40 = 0;
    v73 = 0;
    dataCopy = 0;
    v74 = @"replacementGlassesSegmentationMatte must be an instance of AVSemanticSegmentationMatte";
    goto LABEL_199;
  }

  if (([objc_msgSend(glassesSegmentationMatte "matteType")] & 1) == 0)
  {
    v40 = 0;
    v73 = 0;
    dataCopy = 0;
    v74 = @"replacementGlassesSegmentationMatte must have a matteType of AVSemanticSegmentationMatteTypeGlasses";
    goto LABEL_199;
  }

LABEL_27:
  bufferCopy = buffer;
  if (!settings)
  {
    _defaultRawCompressionSettings = [(AVCapturePhoto *)self _defaultRawCompressionSettings];
    goto LABEL_41;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v40 = 0;
    v73 = 0;
    dataCopy = 0;
    v74 = @"replacementRawCompressionSettings must be an instance of NSDictionary";
    goto LABEL_199;
  }

  v25 = *MEMORY[0x1E6987DC0];
  v26 = *MEMORY[0x1E6987C58];
  v123[0] = *MEMORY[0x1E6987DC0];
  v123[1] = v26;
  v27 = [MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v123, 2)}];
  v28 = [MEMORY[0x1E695DFA8] setWithArray:{objc_msgSend(settings, "allKeys")}];
  [v28 minusSet:v27];
  if ([v28 count])
  {
    v107 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported keys specified: %@. Supported keys are %@", v28, v27];
    dataCopy = 0;
    v73 = 0;
    v40 = 0;
    v125 = v107;
    goto LABEL_112;
  }

  _defaultRawCompressionSettings = [-[AVCapturePhoto _defaultRawCompressionSettings](self "_defaultRawCompressionSettings")];
  if ([settings objectForKeyedSubscript:v25])
  {
    [settings objectForKeyedSubscript:v25];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      dataCopy = 0;
      v73 = 0;
      v40 = 0;
      v108 = @"replacementAppleProRAWCompressionSettings[AVVideoQualityKey] must be an instance of NSNumber";
      goto LABEL_204;
    }

    [objc_msgSend(settings objectForKeyedSubscript:{v25), "doubleValue"}];
    if (v30 < 0.0 || v30 > 1.0)
    {
      dataCopy = 0;
      v73 = 0;
      v40 = 0;
      v108 = @"replacementAppleProRAWCompressionSettings[AVVideoQualityKey] must be a value >= 0.0 and <= 1.0";
      goto LABEL_204;
    }

    [_defaultRawCompressionSettings setObject:objc_msgSend(settings forKeyedSubscript:{"objectForKeyedSubscript:", v25), v25}];
  }

  if ([settings objectForKeyedSubscript:v26])
  {
    [settings objectForKeyedSubscript:v26];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [objc_msgSend(settings objectForKeyedSubscript:{v26), "intValue"}];
      segmentationMatteCopy3 = segmentationMatte;
      if (v31 >= 8)
      {
        matteCopy2 = matte;
        if (v31 <= [(AVCapturePhoto *)self _maximumAppleProRAWBitDepth])
        {
          [_defaultRawCompressionSettings setObject:objc_msgSend(settings forKeyedSubscript:{"objectForKeyedSubscript:", v26), v26}];
          goto LABEL_42;
        }
      }

      dataCopy = 0;
      v73 = 0;
      v40 = 0;
      v108 = @"replacementAppleProRAWCompressionSettings[AVVideoAppleProRAWBitDepthKey] must be a value >= 8 and <= maximumBitDepth";
    }

    else
    {
      dataCopy = 0;
      v73 = 0;
      v40 = 0;
      v108 = @"replacementAppleProRAWCompressionSettings[AVVideoAppleProRAWBitDepthKey] must be an instance of NSNumber";
    }

LABEL_204:
    v125 = v108;
    goto LABEL_112;
  }

LABEL_41:
  segmentationMatteCopy3 = segmentationMatte;
  matteCopy2 = matte;
LABEL_42:
  v34 = [_defaultRawCompressionSettings isEqual:{-[AVCapturePhoto _defaultRawCompressionSettings](self, "_defaultRawCompressionSettings")}];
  if ([(AVCapturePhoto *)self metadata]== metadata)
  {
    v119 = 0;
  }

  else
  {
    v119 = [(NSDictionary *)[(AVCapturePhoto *)self metadata] isEqual:metadata]^ 1;
  }

  embeddedThumbnailPhotoFormat = [(AVCapturePhoto *)self embeddedThumbnailPhotoFormat];
  if (bufferCopy)
  {
    v36 = 0;
  }

  else
  {
    v36 = embeddedThumbnailPhotoFormat == format;
  }

  v37 = !v36;
  v111 = v37;
  depthData = [(AVCapturePhoto *)self depthData];
  portraitEffectsMatte = [(AVCapturePhoto *)self portraitEffectsMatte];
  v115 = [(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeHair"];
  v116 = [(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeSkin"];
  v117 = [(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeTeeth"];
  v118 = [(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeGlasses"];
  v38 = *MEMORY[0x1E696DE78];
  if ([metadata objectForKeyedSubscript:*MEMORY[0x1E696DE78]])
  {
    [metadata objectForKeyedSubscript:v38];
  }

  if (!((v119 | v111) & 1 | (depthData != data || portraitEffectsMatte != matteCopy2) | (v115 != segmentationMatteCopy3) | (v116 != skinSegmentationMatte || v117 != teethSegmentationMatte) | (v118 != glassesSegmentationMatte) | (v34 ^ 1) & 1))
  {
    return [(AVCapturePhoto *)self fileDataRepresentation];
  }

  if (!self->_internal->photoSurface)
  {
    goto LABEL_109;
  }

  metadataCopy = metadata;
  array = [MEMORY[0x1E695DF70] array];
  v40 = array;
  if (!array)
  {
    goto LABEL_96;
  }

  if (depthData != data)
  {
    [(__CFData *)array addObject:*MEMORY[0x1E69917B0]];
    [(__CFData *)v40 addObject:*MEMORY[0x1E69917C8]];
  }

  if (portraitEffectsMatte != matteCopy2)
  {
    [(__CFData *)v40 addObject:*MEMORY[0x1E69917D0]];
  }

  if (v115 != segmentationMatteCopy3)
  {
    [(__CFData *)v40 addObject:*MEMORY[0x1E69917E0]];
  }

  if (v116 != skinSegmentationMatte)
  {
    [(__CFData *)v40 addObject:*MEMORY[0x1E69917E8]];
  }

  if (v117 != teethSegmentationMatte)
  {
    [(__CFData *)v40 addObject:*MEMORY[0x1E69917F8]];
  }

  if (v118 != glassesSegmentationMatte)
  {
    [(__CFData *)v40 addObject:*MEMORY[0x1E69917D8]];
  }

  _isSushiRAWPhoto = [(AVCapturePhoto *)self _isSushiRAWPhoto];
  _isProRAWPhoto = [(AVCapturePhoto *)self _isProRAWPhoto];
  format = [(AVCapturePhotoSettings *)self->_internal->unresolvedSettings format];
  v44 = *MEMORY[0x1E6987CB0];
  v45 = [(NSDictionary *)format objectForKeyedSubscript:*MEMORY[0x1E6987CB0]];
  v109 = [v45 isEqualToString:*MEMORY[0x1E6987D00]];
  if ([(NSDictionary *)[(AVCapturePhotoSettings *)self->_internal->unresolvedSettings format] objectForKeyedSubscript:v44]&& !_isSushiRAWPhoto)
  {
    if (!_isProRAWPhoto)
    {
      v122 = 0;
      if (bufferCopy)
      {
        v46 = *MEMORY[0x1E6987E08];
        v47 = [objc_msgSend(format objectForKeyedSubscript:{*MEMORY[0x1E6987E08]), "intValue"}];
        v48 = *MEMORY[0x1E6987D70];
        v49 = [objc_msgSend(format objectForKeyedSubscript:{*MEMORY[0x1E6987D70]), "intValue"}];
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
      [format objectForKeyedSubscript:v44];
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
        if (!CMPhotoCompressionSessionOpenExistingContainerForModification() && (!metadataCopy || !v119 || !CMPhotoCompressionSessionAddMetadataFromImageProperties()))
        {
          if (bufferCopy)
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
            dataCopy = v130;
            if (v83)
            {
              goto LABEL_110;
            }
          }

          else
          {
            dataCopy = v130;
          }

          dataCopy2 = data;
          teethSegmentationMatteCopy5 = teethSegmentationMatte;
          if (data && depthData != data)
          {
            if ([data depthDataType] != 1751411059)
            {
              dataCopy2 = [data depthDataByConvertingToDepthDataType:1751411059];
            }

            if ([dataCopy2 isDepthDataFiltered])
            {
              v86 = 0;
            }

            else
            {
              v86 = &unk_1F1CE9980;
            }

            copyAuxiliaryMetadata = [dataCopy2 copyAuxiliaryMetadata];
            v88 = *MEMORY[0x1E696D260];
            [dataCopy2 depthDataMap];
            _addAuxiliaryImage(dataCopy, 0, v88, 1, 0, copyAuxiliaryMetadata, v86);
            teethSegmentationMatteCopy5 = teethSegmentationMatte;
            if (copyAuxiliaryMetadata)
            {
              CFRelease(copyAuxiliaryMetadata);
            }
          }

          if (matte)
          {
            if (portraitEffectsMatte != matte)
            {
              copyAuxiliaryMetadata2 = [matte copyAuxiliaryMetadata];
              v90 = *MEMORY[0x1E696D288];
              [matte mattingImage];
              v91 = v90;
              teethSegmentationMatteCopy5 = teethSegmentationMatte;
              _addAuxiliaryImage(dataCopy, 0, v91, 5, 0, copyAuxiliaryMetadata2, 0);
              if (copyAuxiliaryMetadata2)
              {
                CFRelease(copyAuxiliaryMetadata2);
              }
            }
          }

          if (segmentationMatteCopy)
          {
            if (v115 != segmentationMatteCopy)
            {
              copyAuxiliaryMetadata3 = [(AVSemanticSegmentationMatte *)segmentationMatteCopy copyAuxiliaryMetadata];
              v93 = *MEMORY[0x1E696D298];
              v94 = *MEMORY[0x1E69917E0];
              [(AVSemanticSegmentationMatte *)segmentationMatteCopy mattingImage];
              v95 = v93;
              teethSegmentationMatteCopy5 = teethSegmentationMatte;
              _addAuxiliaryImage(dataCopy, 0, v95, 4, v94, copyAuxiliaryMetadata3, 0);
              if (copyAuxiliaryMetadata3)
              {
                CFRelease(copyAuxiliaryMetadata3);
              }
            }
          }

          if (skinSegmentationMatte)
          {
            if (v116 != skinSegmentationMatte)
            {
              copyAuxiliaryMetadata4 = [skinSegmentationMatte copyAuxiliaryMetadata];
              v97 = *MEMORY[0x1E696D2A0];
              v98 = *MEMORY[0x1E69917E8];
              [skinSegmentationMatte mattingImage];
              v99 = v97;
              teethSegmentationMatteCopy5 = teethSegmentationMatte;
              _addAuxiliaryImage(dataCopy, 0, v99, 4, v98, copyAuxiliaryMetadata4, 0);
              if (copyAuxiliaryMetadata4)
              {
                CFRelease(copyAuxiliaryMetadata4);
              }
            }
          }

          if (teethSegmentationMatteCopy5)
          {
            if (v117 != teethSegmentationMatteCopy5)
            {
              copyAuxiliaryMetadata5 = [(AVSemanticSegmentationMatte *)teethSegmentationMatteCopy5 copyAuxiliaryMetadata];
              v101 = teethSegmentationMatteCopy5;
              v102 = *MEMORY[0x1E696D2B0];
              v103 = *MEMORY[0x1E69917F8];
              [(AVSemanticSegmentationMatte *)v101 mattingImage];
              _addAuxiliaryImage(dataCopy, 0, v102, 4, v103, copyAuxiliaryMetadata5, 0);
              if (copyAuxiliaryMetadata5)
              {
                CFRelease(copyAuxiliaryMetadata5);
              }
            }
          }

          if (glassesSegmentationMatte)
          {
            if (v118 != glassesSegmentationMatte)
            {
              copyAuxiliaryMetadata6 = [glassesSegmentationMatte copyAuxiliaryMetadata];
              v105 = *MEMORY[0x1E696D290];
              v106 = *MEMORY[0x1E69917D8];
              [glassesSegmentationMatte mattingImage];
              _addAuxiliaryImage(dataCopy, 0, v105, 4, v106, copyAuxiliaryMetadata6, 0);
              if (copyAuxiliaryMetadata6)
              {
                CFRelease(copyAuxiliaryMetadata6);
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
        dataCopy = 0;
        goto LABEL_110;
      }

LABEL_108:
      CFRelease(v72);
      goto LABEL_109;
    }

    goto LABEL_85;
  }

  metadata = metadataCopy;
  if (!_isProRAWPhoto)
  {
    if (_isSushiRAWPhoto)
    {
      if ((v119 & 1) == 0)
      {
        metadata = [(AVCapturePhoto *)self metadata];
      }

      if ((v111 & 1) == 0)
      {
        bufferCopy = [(AVCapturePhoto *)self _embeddedThumbnailSourcePixelBuffer];
        format = [(AVCapturePhoto *)self embeddedThumbnailPhotoFormat];
      }

      v65 = [format objectForKeyedSubscript:v44];
      v66 = [objc_msgSend(format objectForKeyedSubscript:{*MEMORY[0x1E6987E08]), "intValue"}];
      v67 = avcp_copyDNGFileDataRepresentationForSushiRawBuffer(-[AVCapturePhoto pixelBuffer](self, "pixelBuffer"), bufferCopy, metadata, 0, v65, v66 | ([objc_msgSend(format objectForKeyedSubscript:{*MEMORY[0x1E6987D70]), "intValue"}] << 32));
      v40 = v67;
    }

    else
    {
      format2 = [(AVCapturePhotoSettings *)self->_internal->unresolvedSettings format];
      if (![(NSDictionary *)format2 objectForKeyedSubscript:*MEMORY[0x1E6966130]])
      {
        goto LABEL_109;
      }

      if ((v119 & 1) == 0)
      {
        metadata = [(AVCapturePhoto *)self metadata];
      }

      if ((v111 & 1) == 0)
      {
        format = [(AVCapturePhoto *)self embeddedThumbnailPhotoFormat];
      }

      v70 = [format objectForKeyedSubscript:v44];
      v71 = avcp_copyCGImageForUncompressedBuffer(self->_internal->photoPixelBuffer);
      v40 = avcp_copyTIFFFileDataRepresentationForImage(v71, metadata, v70);
      if (v71)
      {
        CFRelease(v71);
      }

      v67 = v40;
    }

    v68 = v67;
LABEL_96:
    dataCopy = 0;
LABEL_182:
    v73 = 0;
    goto LABEL_112;
  }

LABEL_85:
  v56 = [objc_msgSend(format objectForKeyedSubscript:{*MEMORY[0x1E6987E08]), "intValue"}];
  v57 = [objc_msgSend(format objectForKeyedSubscript:{*MEMORY[0x1E6987D70]), "intValue"}];
  v129[0] = 0;
  if (CMPhotoDNGCompressorCreateFromSourceDNGWithModificationHandler())
  {
    goto LABEL_107;
  }

  if ((v34 & 1) == 0)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v59 = [objc_msgSend(_defaultRawCompressionSettings objectForKeyedSubscript:{*MEMORY[0x1E6987C58]), "intValue"}];
    v60 = [MEMORY[0x1E696AD98] numberWithInt:v59];
    [dictionary setObject:v60 forKeyedSubscript:*MEMORY[0x1E6991A30]];
    [objc_msgSend(_defaultRawCompressionSettings objectForKeyedSubscript:{*MEMORY[0x1E6987DC0]), "doubleValue"}];
    v62 = v61;
    v63 = *MEMORY[0x1E6991A40];
    if (v61 == 1.0)
    {
      v64 = &unk_1F1CE9998;
    }

    else
    {
      [dictionary setObject:&unk_1F1CE99B0 forKeyedSubscript:v63];
      v64 = [MEMORY[0x1E696AD98] numberWithDouble:v62];
      v63 = *MEMORY[0x1E6991A50];
    }

    [dictionary setObject:v64 forKeyedSubscript:v63];
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
    if (bufferCopy)
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
      if ([AVCapturePhotoOutput isAppleProRAWPixelFormat:CVPixelBufferGetPixelFormatType(bufferCopy)])
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
    dataCopy = 0;
    goto LABEL_111;
  }

  v40 = v129[0];
  dataCopy = 0;
LABEL_112:
  v74 = v125;
  if (v125)
  {
LABEL_113:
    *reason = v74;
  }

LABEL_114:
  if (dataCopy)
  {
    CFRelease(dataCopy);
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

  fileDataRepresentation = [(AVCapturePhoto *)self fileDataRepresentation];
  if (!fileDataRepresentation)
  {
    return 0;
  }

  v5 = fileDataRepresentation;
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

    *(*self + 144) = [[AVPortraitEffectsMatte alloc] initWithPixelBuffer:*a2 auxiliaryMetadata:*a3];
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