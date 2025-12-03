@interface AVCaptureDeferredPhotoProxy
- ($2825F4736939C4A6D3AD43837233062D)dimensions;
- (AVCaptureDeferredPhotoProxy)init;
- (AVCaptureDeferredPhotoProxy)initWithApplicationIdentifier:(id)identifier captureRequestIdentifier:(id)requestIdentifier photoIdentifier:(id)photoIdentifier timestamp:(id *)timestamp expectedPhotoProcessingFlags:(unsigned int)flags;
- (AVCaptureDeferredPhotoProxy)initWithDeferredPhotoIdentifier:(id)identifier applicationIdentifier:(id)applicationIdentifier;
- (AVCaptureDeferredPhotoProxy)initWithDeferredPhotoIdentifier:(id)identifier applicationIdentifier:(id)applicationIdentifier photoLibraryThumbnailDimensions:(id)dimensions;
- (AVCaptureDeferredPhotoProxy)initWithTimestamp:(id *)timestamp proxySurface:(__IOSurface *)surface proxySurfaceSize:(unint64_t)size proxyFileType:(id)type previewPhotoSurface:(__IOSurface *)photoSurface metadata:(id)metadata captureRequest:(id)request sequenceCount:(unint64_t)self0 photoCount:(unint64_t)self1 applicationIdentifier:(id)self2 captureRequestIdentifier:(id)self3 photoIdentifier:(id)self4 expectedPhotoProcessingFlags:(unsigned int)self5 sourceDeviceType:(id)self6;
- (BOOL)isEqual:(id)equal;
- (id)captureRequestIdentifier;
- (id)debugDescription;
- (id)description;
- (void)dealloc;
@end

@implementation AVCaptureDeferredPhotoProxy

- (AVCaptureDeferredPhotoProxy)init
{
  if (AVCaptureClientHasEntitlement(AVCaptureEntitlementDeferredPhotoProcessor))
  {
    v5.receiver = self;
    v5.super_class = AVCaptureDeferredPhotoProxy;
    return [(AVCaptureDeferredPhotoProxy *)&v5 init];
  }

  else
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v4);
    }

    NSLog(&cfstr_SuppressingExc.isa, v4);
    return 0;
  }
}

- (AVCaptureDeferredPhotoProxy)initWithApplicationIdentifier:(id)identifier captureRequestIdentifier:(id)requestIdentifier photoIdentifier:(id)photoIdentifier timestamp:(id *)timestamp expectedPhotoProcessingFlags:(unsigned int)flags
{
  if (AVCaptureClientHasEntitlement(AVCaptureEntitlementDeferredPhotoProcessor))
  {
    v19.receiver = self;
    v19.super_class = AVCaptureDeferredPhotoProxy;
    v17 = *&timestamp->var0;
    var3 = timestamp->var3;
    flagsCopy = flags;
    v13 = [(AVCapturePhoto *)&v19 initWithTimestamp:&v17 photoSurface:0 photoSurfaceSize:0 processedFileType:0 previewPhotoSurface:0 embeddedThumbnailSourceSurface:0 photoLibraryThumbnails:0 metadata:0 depthDataSurface:0 depthMetadataDictionary:0 portraitEffectsMatteSurface:0 portraitEffectsMatteMetadataDictionary:0 hairSegmentationMatteSurface:0 hairSegmentationMatteMetadataDictionary:0 skinSegmentationMatteSurface:0 skinSegmentationMatteMetadataDictionary:0 teethSegmentationMatteSurface:0 teethSegmentationMatteMetadataDictionary:0 glassesSegmentationMatteSurface:0 glassesSegmentationMatteMetadataDictionary:0 constantColorConfidenceMapSurface:0 constantColorMetadataDictionary:0 captureRequest:0 bracketSettings:0 sequenceCount:1 photoCount:1 expectedPhotoProcessingFlags:flagsCopy sourceDeviceType:@"AVCaptureDeviceTypeBuiltInWideAngleCamera"];
    if (v13)
    {
      v13->_applicationIdentifier = [identifier copy];
      v13->_captureRequestIdentifier = [requestIdentifier copy];
      v13->_photoIdentifier = [photoIdentifier copy];
    }
  }

  else
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v14);
    }

    NSLog(&cfstr_SuppressingExc.isa, v14);
    return 0;
  }

  return v13;
}

- (AVCaptureDeferredPhotoProxy)initWithTimestamp:(id *)timestamp proxySurface:(__IOSurface *)surface proxySurfaceSize:(unint64_t)size proxyFileType:(id)type previewPhotoSurface:(__IOSurface *)photoSurface metadata:(id)metadata captureRequest:(id)request sequenceCount:(unint64_t)self0 photoCount:(unint64_t)self1 applicationIdentifier:(id)self2 captureRequestIdentifier:(id)self3 photoIdentifier:(id)self4 expectedPhotoProcessingFlags:(unsigned int)self5 sourceDeviceType:(id)self6
{
  v19.receiver = self;
  v19.super_class = AVCaptureDeferredPhotoProxy;
  v18 = *timestamp;
  v16 = [(AVCapturePhoto *)&v19 initWithTimestamp:&v18 photoSurface:surface photoSurfaceSize:size processedFileType:type previewPhotoSurface:photoSurface embeddedThumbnailSourceSurface:0 photoLibraryThumbnails:0 metadata:metadata depthDataSurface:0 depthMetadataDictionary:0 portraitEffectsMatteSurface:0 portraitEffectsMatteMetadataDictionary:0 hairSegmentationMatteSurface:0 hairSegmentationMatteMetadataDictionary:0 skinSegmentationMatteSurface:0 skinSegmentationMatteMetadataDictionary:0 teethSegmentationMatteSurface:0 teethSegmentationMatteMetadataDictionary:0 glassesSegmentationMatteSurface:0 glassesSegmentationMatteMetadataDictionary:0 constantColorConfidenceMapSurface:0 constantColorMetadataDictionary:0 captureRequest:request bracketSettings:0 sequenceCount:count photoCount:photoCount expectedPhotoProcessingFlags:flags sourceDeviceType:deviceType];
  if (v16)
  {
    v16->_applicationIdentifier = [identifier copy];
    v16->_captureRequestIdentifier = [requestIdentifier copy];
    v16->_photoIdentifier = [photoIdentifier copy];
  }

  return v16;
}

- (AVCaptureDeferredPhotoProxy)initWithDeferredPhotoIdentifier:(id)identifier applicationIdentifier:(id)applicationIdentifier photoLibraryThumbnailDimensions:(id)dimensions
{
  v6 = [(AVCaptureDeferredPhotoProxy *)self initWithDeferredPhotoIdentifier:identifier applicationIdentifier:applicationIdentifier];
  if (v6)
  {
    v6->_photoLibraryThumbnailDimensions = [dimensions copy];
  }

  return v6;
}

- (AVCaptureDeferredPhotoProxy)initWithDeferredPhotoIdentifier:(id)identifier applicationIdentifier:(id)applicationIdentifier
{
  if (AVCaptureClientHasEntitlement(AVCaptureEntitlementDeferredPhotoProcessor))
  {
    v7 = [identifier componentsSeparatedByString:@"/"];
    if ([v7 count] == 2)
    {
      v8 = [v7 objectAtIndexedSubscript:0];
      v9 = [v7 objectAtIndexedSubscript:1];
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    if ([v8 length] && objc_msgSend(v9, "length"))
    {
      v13 = *MEMORY[0x1E6960C70];
      v14 = *(MEMORY[0x1E6960C70] + 16);
      return [(AVCaptureDeferredPhotoProxy *)self initWithApplicationIdentifier:applicationIdentifier captureRequestIdentifier:v8 photoIdentifier:v9 timestamp:&v13 expectedPhotoProcessingFlags:0];
    }

    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:{0, identifier}];

    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v12);
    }

    NSLog(&cfstr_SuppressingExc.isa, v12);
  }

  else
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v10);
    }

    NSLog(&cfstr_SuppressingExc.isa, v10);
  }

  return 0;
}

- (id)captureRequestIdentifier
{
  v2 = self->_captureRequestIdentifier;

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureDeferredPhotoProxy;
  [(AVCapturePhoto *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = -[NSString isEqual:](self->_applicationIdentifier, "isEqual:", [equal applicationIdentifier]);
      if (v5)
      {
        v5 = -[NSString isEqual:](self->_captureRequestIdentifier, "isEqual:", [equal captureRequestIdentifier]);
        if (v5)
        {
          photoIdentifier = self->_photoIdentifier;
          persistentStorageUUID = [equal persistentStorageUUID];

          LOBYTE(v5) = [(NSString *)photoIdentifier isEqual:persistentStorageUUID];
        }
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"proxy:{%dx%d deferredPhotoIdentifier:%@%@}", -[AVCaptureDeferredPhotoProxy dimensions](self, "dimensions"), -[AVCaptureDeferredPhotoProxy dimensions](self, "dimensions") >> 32, -[AVCaptureDeferredPhotoProxy deferredPhotoIdentifier](self, "deferredPhotoIdentifier"), &stru_1F1CBCFE8];
  v4 = MEMORY[0x1E696AEC0];
  if (self)
  {
    [(AVCapturePhoto *)self timestamp];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);
  photoCount = [(AVCapturePhoto *)self photoCount];
  expectedPhotoCount = [(AVCaptureResolvedPhotoSettings *)[(AVCapturePhoto *)self resolvedSettings] expectedPhotoCount];
  v8 = [(AVCaptureResolvedPhotoSettings *)[(AVCapturePhoto *)self resolvedSettings] debugDescription];
  [(AVCapturePhoto *)self expectedPhotoProcessingFlags];
  return [v4 stringWithFormat:@"pts:%f %d/%d %@ settings:%@ flags: %@", *&Seconds, photoCount, expectedPhotoCount, v3, v8, AVAppleMakerNoteProcessingFlagsToShortString()];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[AVCaptureDeferredPhotoProxy debugDescription](self, "debugDescription")];
}

- ($2825F4736939C4A6D3AD43837233062D)dimensions
{
  v2 = [(AVCapturePhoto *)self internal][112];

  return [v2 deferredPhotoProxyDimensions];
}

@end