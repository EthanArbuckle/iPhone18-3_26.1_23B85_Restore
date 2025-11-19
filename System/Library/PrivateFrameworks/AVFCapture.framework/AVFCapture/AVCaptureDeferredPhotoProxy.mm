@interface AVCaptureDeferredPhotoProxy
- ($2825F4736939C4A6D3AD43837233062D)dimensions;
- (AVCaptureDeferredPhotoProxy)init;
- (AVCaptureDeferredPhotoProxy)initWithApplicationIdentifier:(id)a3 captureRequestIdentifier:(id)a4 photoIdentifier:(id)a5 timestamp:(id *)a6 expectedPhotoProcessingFlags:(unsigned int)a7;
- (AVCaptureDeferredPhotoProxy)initWithDeferredPhotoIdentifier:(id)a3 applicationIdentifier:(id)a4;
- (AVCaptureDeferredPhotoProxy)initWithDeferredPhotoIdentifier:(id)a3 applicationIdentifier:(id)a4 photoLibraryThumbnailDimensions:(id)a5;
- (AVCaptureDeferredPhotoProxy)initWithTimestamp:(id *)a3 proxySurface:(__IOSurface *)a4 proxySurfaceSize:(unint64_t)a5 proxyFileType:(id)a6 previewPhotoSurface:(__IOSurface *)a7 metadata:(id)a8 captureRequest:(id)a9 sequenceCount:(unint64_t)a10 photoCount:(unint64_t)a11 applicationIdentifier:(id)a12 captureRequestIdentifier:(id)a13 photoIdentifier:(id)a14 expectedPhotoProcessingFlags:(unsigned int)a15 sourceDeviceType:(id)a16;
- (BOOL)isEqual:(id)a3;
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

- (AVCaptureDeferredPhotoProxy)initWithApplicationIdentifier:(id)a3 captureRequestIdentifier:(id)a4 photoIdentifier:(id)a5 timestamp:(id *)a6 expectedPhotoProcessingFlags:(unsigned int)a7
{
  if (AVCaptureClientHasEntitlement(AVCaptureEntitlementDeferredPhotoProcessor))
  {
    v19.receiver = self;
    v19.super_class = AVCaptureDeferredPhotoProxy;
    v17 = *&a6->var0;
    var3 = a6->var3;
    v16 = a7;
    v13 = [(AVCapturePhoto *)&v19 initWithTimestamp:&v17 photoSurface:0 photoSurfaceSize:0 processedFileType:0 previewPhotoSurface:0 embeddedThumbnailSourceSurface:0 photoLibraryThumbnails:0 metadata:0 depthDataSurface:0 depthMetadataDictionary:0 portraitEffectsMatteSurface:0 portraitEffectsMatteMetadataDictionary:0 hairSegmentationMatteSurface:0 hairSegmentationMatteMetadataDictionary:0 skinSegmentationMatteSurface:0 skinSegmentationMatteMetadataDictionary:0 teethSegmentationMatteSurface:0 teethSegmentationMatteMetadataDictionary:0 glassesSegmentationMatteSurface:0 glassesSegmentationMatteMetadataDictionary:0 constantColorConfidenceMapSurface:0 constantColorMetadataDictionary:0 captureRequest:0 bracketSettings:0 sequenceCount:1 photoCount:1 expectedPhotoProcessingFlags:v16 sourceDeviceType:@"AVCaptureDeviceTypeBuiltInWideAngleCamera"];
    if (v13)
    {
      v13->_applicationIdentifier = [a3 copy];
      v13->_captureRequestIdentifier = [a4 copy];
      v13->_photoIdentifier = [a5 copy];
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

- (AVCaptureDeferredPhotoProxy)initWithTimestamp:(id *)a3 proxySurface:(__IOSurface *)a4 proxySurfaceSize:(unint64_t)a5 proxyFileType:(id)a6 previewPhotoSurface:(__IOSurface *)a7 metadata:(id)a8 captureRequest:(id)a9 sequenceCount:(unint64_t)a10 photoCount:(unint64_t)a11 applicationIdentifier:(id)a12 captureRequestIdentifier:(id)a13 photoIdentifier:(id)a14 expectedPhotoProcessingFlags:(unsigned int)a15 sourceDeviceType:(id)a16
{
  v19.receiver = self;
  v19.super_class = AVCaptureDeferredPhotoProxy;
  v18 = *a3;
  v16 = [(AVCapturePhoto *)&v19 initWithTimestamp:&v18 photoSurface:a4 photoSurfaceSize:a5 processedFileType:a6 previewPhotoSurface:a7 embeddedThumbnailSourceSurface:0 photoLibraryThumbnails:0 metadata:a8 depthDataSurface:0 depthMetadataDictionary:0 portraitEffectsMatteSurface:0 portraitEffectsMatteMetadataDictionary:0 hairSegmentationMatteSurface:0 hairSegmentationMatteMetadataDictionary:0 skinSegmentationMatteSurface:0 skinSegmentationMatteMetadataDictionary:0 teethSegmentationMatteSurface:0 teethSegmentationMatteMetadataDictionary:0 glassesSegmentationMatteSurface:0 glassesSegmentationMatteMetadataDictionary:0 constantColorConfidenceMapSurface:0 constantColorMetadataDictionary:0 captureRequest:a9 bracketSettings:0 sequenceCount:a10 photoCount:a11 expectedPhotoProcessingFlags:a15 sourceDeviceType:a16];
  if (v16)
  {
    v16->_applicationIdentifier = [a12 copy];
    v16->_captureRequestIdentifier = [a13 copy];
    v16->_photoIdentifier = [a14 copy];
  }

  return v16;
}

- (AVCaptureDeferredPhotoProxy)initWithDeferredPhotoIdentifier:(id)a3 applicationIdentifier:(id)a4 photoLibraryThumbnailDimensions:(id)a5
{
  v6 = [(AVCaptureDeferredPhotoProxy *)self initWithDeferredPhotoIdentifier:a3 applicationIdentifier:a4];
  if (v6)
  {
    v6->_photoLibraryThumbnailDimensions = [a5 copy];
  }

  return v6;
}

- (AVCaptureDeferredPhotoProxy)initWithDeferredPhotoIdentifier:(id)a3 applicationIdentifier:(id)a4
{
  if (AVCaptureClientHasEntitlement(AVCaptureEntitlementDeferredPhotoProcessor))
  {
    v7 = [a3 componentsSeparatedByString:@"/"];
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
      return [(AVCaptureDeferredPhotoProxy *)self initWithApplicationIdentifier:a4 captureRequestIdentifier:v8 photoIdentifier:v9 timestamp:&v13 expectedPhotoProcessingFlags:0];
    }

    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:{0, a3}];

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

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = -[NSString isEqual:](self->_applicationIdentifier, "isEqual:", [a3 applicationIdentifier]);
      if (v5)
      {
        v5 = -[NSString isEqual:](self->_captureRequestIdentifier, "isEqual:", [a3 captureRequestIdentifier]);
        if (v5)
        {
          photoIdentifier = self->_photoIdentifier;
          v7 = [a3 persistentStorageUUID];

          LOBYTE(v5) = [(NSString *)photoIdentifier isEqual:v7];
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
  v6 = [(AVCapturePhoto *)self photoCount];
  v7 = [(AVCaptureResolvedPhotoSettings *)[(AVCapturePhoto *)self resolvedSettings] expectedPhotoCount];
  v8 = [(AVCaptureResolvedPhotoSettings *)[(AVCapturePhoto *)self resolvedSettings] debugDescription];
  [(AVCapturePhoto *)self expectedPhotoProcessingFlags];
  return [v4 stringWithFormat:@"pts:%f %d/%d %@ settings:%@ flags: %@", *&Seconds, v6, v7, v3, v8, AVAppleMakerNoteProcessingFlagsToShortString()];
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