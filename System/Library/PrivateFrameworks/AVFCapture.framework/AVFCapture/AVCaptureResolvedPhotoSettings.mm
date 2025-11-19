@interface AVCaptureResolvedPhotoSettings
+ (id)resolvedSettingsWithUniqueID:(int64_t)a3 photoDimensions:(id)a4 rawPhotoDimensions:(id)a5 previewDimensions:(id)a6 embeddedThumbnailDimensions:(id)a7 rawEmbeddedThumbnailDimensions:(id)a8 livePhotoMovieEnabled:(BOOL)a9 livePhotoMovieDimensions:(id)a10 portraitEffectsMatteDimensions:(id)a11 hairSegmentationMatteDimensions:(id)a12 skinSegmentationMatteDimensions:(id)a13 teethSegmentationMatteDimensions:(id)a14 glassesSegmentationMatteDimensions:(id)a15 spatialOverCapturePhotoDimensions:(id)a16 turboModeEnabled:(BOOL)a17 flashEnabled:(BOOL)a18 redEyeReductionEnabled:(BOOL)a19 HDREnabled:(BOOL)a20 adjustedPhotoFiltersEnabled:(BOOL)a21 EV0PhotoDeliveryEnabled:(BOOL)a22 stillImageStabilizationEnabled:(BOOL)a23 virtualDeviceFusionEnabled:(BOOL)a24 squareCropEnabled:(BOOL)a25 deferredPhotoProxyDimensions:(id)a26 photoProcessingTimeRange:(id *)a27 contentAwareDistortionCorrectionEnabled:(BOOL)a28 spatialPhotoCaptureEnabled:(BOOL)a29 photoManifest:(id)a30 digitalFlashUserInterfaceHints:(unint64_t)a31 digitalFlashUserInterfaceRGBEstimate:(id)a32 captureBeforeResolvingSettingsEnabled:(BOOL)a33;
- (CMTimeRange)photoProcessingTimeRange;
- (CMVideoDimensions)dimensionsForSemanticSegmentationMatteOfType:(AVSemanticSegmentationMatteType)semanticSegmentationMatteType;
- (CMVideoDimensions)embeddedThumbnailDimensions;
- (id)_initWithUniqueID:(int64_t)a3 photoDimensions:(id)a4 rawPhotoDimensions:(id)a5 previewDimensions:(id)a6 embeddedThumbnailDimensions:(id)a7 rawEmbeddedThumbnailDimensions:(id)a8 livePhotoMovieEnabled:(BOOL)a9 livePhotoMovieDimensions:(id)a10 portraitEffectsMatteDimensions:(id)a11 hairSegmentationMatteDimensions:(id)a12 skinSegmentationMatteDimensions:(id)a13 teethSegmentationMatteDimensions:(id)a14 glassesSegmentationMatteDimensions:(id)a15 spatialOverCapturePhotoDimensions:(id)a16 turboModeEnabled:(BOOL)a17 flashEnabled:(BOOL)a18 redEyeReductionEnabled:(BOOL)a19 HDREnabled:(BOOL)a20 adjustedPhotoFiltersEnabled:(BOOL)a21 EV0PhotoDeliveryEnabled:(BOOL)a22 stillImageStabilizationEnabled:(BOOL)a23 virtualDeviceFusionEnabled:(BOOL)a24 squareCropEnabled:(BOOL)a25 deferredPhotoProxyDimensions:(id)a26 photoProcessingTimeRange:(id *)a27 contentAwareDistortionCorrectionEnabled:(BOOL)a28 spatialPhotoCaptureEnabled:(BOOL)a29 photoManifest:(id)a30 digitalFlashUserInterfaceHints:(unint64_t)a31 digitalFlashUserInterfaceRGBEstimate:(id)a32 captureBeforeResolvingSettingsEnabled:(BOOL)a33;
- (id)debugDescription;
- (id)description;
- (id)digitalFlashUserInterfaceRGBEstimate;
- (id)photoManifest;
- (void)dealloc;
@end

@implementation AVCaptureResolvedPhotoSettings

+ (id)resolvedSettingsWithUniqueID:(int64_t)a3 photoDimensions:(id)a4 rawPhotoDimensions:(id)a5 previewDimensions:(id)a6 embeddedThumbnailDimensions:(id)a7 rawEmbeddedThumbnailDimensions:(id)a8 livePhotoMovieEnabled:(BOOL)a9 livePhotoMovieDimensions:(id)a10 portraitEffectsMatteDimensions:(id)a11 hairSegmentationMatteDimensions:(id)a12 skinSegmentationMatteDimensions:(id)a13 teethSegmentationMatteDimensions:(id)a14 glassesSegmentationMatteDimensions:(id)a15 spatialOverCapturePhotoDimensions:(id)a16 turboModeEnabled:(BOOL)a17 flashEnabled:(BOOL)a18 redEyeReductionEnabled:(BOOL)a19 HDREnabled:(BOOL)a20 adjustedPhotoFiltersEnabled:(BOOL)a21 EV0PhotoDeliveryEnabled:(BOOL)a22 stillImageStabilizationEnabled:(BOOL)a23 virtualDeviceFusionEnabled:(BOOL)a24 squareCropEnabled:(BOOL)a25 deferredPhotoProxyDimensions:(id)a26 photoProcessingTimeRange:(id *)a27 contentAwareDistortionCorrectionEnabled:(BOOL)a28 spatialPhotoCaptureEnabled:(BOOL)a29 photoManifest:(id)a30 digitalFlashUserInterfaceHints:(unint64_t)a31 digitalFlashUserInterfaceRGBEstimate:(id)a32 captureBeforeResolvingSettingsEnabled:(BOOL)a33
{
  v33 = objc_alloc(objc_opt_class());
  v34 = *&a27->var0.var3;
  v47[0] = *&a27->var0.var0;
  v47[1] = v34;
  v47[2] = *&a27->var1.var1;
  LOBYTE(v40) = a33;
  LOWORD(v39) = __PAIR16__(a29, a28);
  LOBYTE(v38) = a25;
  HIBYTE(v37) = a24;
  BYTE6(v37) = a23;
  WORD2(v37) = __PAIR16__(a22, a21);
  WORD1(v37) = __PAIR16__(a20, a19);
  LOWORD(v37) = __PAIR16__(a18, a17);
  LOBYTE(v36) = a9;
  return [v33 _initWithUniqueID:a3 photoDimensions:a4 rawPhotoDimensions:a5 previewDimensions:a6 embeddedThumbnailDimensions:a7 rawEmbeddedThumbnailDimensions:a8 livePhotoMovieEnabled:v36 livePhotoMovieDimensions:a10 portraitEffectsMatteDimensions:a11 hairSegmentationMatteDimensions:a12 skinSegmentationMatteDimensions:a13 teethSegmentationMatteDimensions:a14 glassesSegmentationMatteDimensions:a15 spatialOverCapturePhotoDimensions:a16 turboModeEnabled:v37 flashEnabled:v38 redEyeReductionEnabled:a26 HDREnabled:v47 adjustedPhotoFiltersEnabled:v39 EV0PhotoDeliveryEnabled:a30 stillImageStabilizationEnabled:a31 virtualDeviceFusionEnabled:a32 squareCropEnabled:v40 deferredPhotoProxyDimensions:? photoProcessingTimeRange:? contentAwareDistortionCorrectionEnabled:? spatialPhotoCaptureEnabled:? photoManifest:? digitalFlashUserInterfaceHints:? digitalFlashUserInterfaceRGBEstimate:? captureBeforeResolvingSettingsEnabled:?];
}

- (id)_initWithUniqueID:(int64_t)a3 photoDimensions:(id)a4 rawPhotoDimensions:(id)a5 previewDimensions:(id)a6 embeddedThumbnailDimensions:(id)a7 rawEmbeddedThumbnailDimensions:(id)a8 livePhotoMovieEnabled:(BOOL)a9 livePhotoMovieDimensions:(id)a10 portraitEffectsMatteDimensions:(id)a11 hairSegmentationMatteDimensions:(id)a12 skinSegmentationMatteDimensions:(id)a13 teethSegmentationMatteDimensions:(id)a14 glassesSegmentationMatteDimensions:(id)a15 spatialOverCapturePhotoDimensions:(id)a16 turboModeEnabled:(BOOL)a17 flashEnabled:(BOOL)a18 redEyeReductionEnabled:(BOOL)a19 HDREnabled:(BOOL)a20 adjustedPhotoFiltersEnabled:(BOOL)a21 EV0PhotoDeliveryEnabled:(BOOL)a22 stillImageStabilizationEnabled:(BOOL)a23 virtualDeviceFusionEnabled:(BOOL)a24 squareCropEnabled:(BOOL)a25 deferredPhotoProxyDimensions:(id)a26 photoProcessingTimeRange:(id *)a27 contentAwareDistortionCorrectionEnabled:(BOOL)a28 spatialPhotoCaptureEnabled:(BOOL)a29 photoManifest:(id)a30 digitalFlashUserInterfaceHints:(unint64_t)a31 digitalFlashUserInterfaceRGBEstimate:(id)a32 captureBeforeResolvingSettingsEnabled:(BOOL)a33
{
  v45.receiver = self;
  v45.super_class = AVCaptureResolvedPhotoSettings;
  v39 = [(AVCaptureResolvedPhotoSettings *)&v45 init];
  if (v39)
  {
    v40 = objc_alloc_init(AVCaptureResolvedPhotoSettingsInternal);
    v39->_internal = v40;
    if (v40)
    {
      v40->uniqueID = a3;
      v39->_internal->photoDimensions = a4;
      v39->_internal->rawPhotoDimensions = a5;
      v39->_internal->previewDimensions = a6;
      v39->_internal->embeddedThumbnailDimensions = a7;
      v39->_internal->rawEmbeddedThumbnailDimensions = a8;
      v39->_internal->livePhotoMovieEnabled = a9;
      v39->_internal->livePhotoMovieDimensions = a10;
      v39->_internal->portraitEffectsMatteDimensions = a11;
      v39->_internal->hairSegmentationMatteDimensions = a12;
      v39->_internal->skinSegmentationMatteDimensions = a13;
      v39->_internal->teethSegmentationMatteDimensions = a14;
      v39->_internal->glassesSegmentationMatteDimensions = a15;
      v39->_internal->spatialOverCapturePhotoDimensions = a16;
      v39->_internal->turboModeEnabled = a17;
      v39->_internal->flashEnabled = a18;
      v39->_internal->redEyeReductionEnabled = a19;
      v39->_internal->HDREnabled = a20;
      v39->_internal->adjustedPhotoFiltersEnabled = a21;
      v39->_internal->EV0PhotoDeliveryEnabled = a22;
      v39->_internal->stillImageStabilizationEnabled = a23;
      v39->_internal->virtualDeviceFusionEnabled = a24;
      v39->_internal->squareCropEnabled = a25;
      v39->_internal->deferredPhotoProxyDimensions = a26;
      v41 = *&a27->var0.var0;
      v42 = *&a27->var0.var3;
      internal = v39->_internal;
      *&internal->photoProcessingTimeRange.duration.timescale = *&a27->var1.var1;
      *&internal->photoProcessingTimeRange.start.epoch = v42;
      *&internal->photoProcessingTimeRange.start.value = v41;
      v39->_internal->contentAwareDistortionCorrectionEnabled = a28;
      v39->_internal->spatialPhotoCaptureEnabled = a29;
      v39->_internal->photoManifest = [a30 copy];
      v39->_internal->digitalFlashUserInterfaceHints = a31;
      v39->_internal->digitalFlashUserInterfaceRGBEstimate = [a32 copy];
      v39->_internal->captureBeforeResolvingSettingsEnabled = a33;
    }
  }

  return v39;
}

- (void)dealloc
{
  internal = self->_internal;
  if (internal)
  {
  }

  v4.receiver = self;
  v4.super_class = AVCaptureResolvedPhotoSettings;
  [(AVCaptureResolvedPhotoSettings *)&v4 dealloc];
}

- (id)debugDescription
{
  internal = self->_internal;
  v4 = &stru_1F1CBCFE8;
  if (internal->flashEnabled)
  {
    v5 = @" flash:ON";
  }

  else
  {
    v5 = &stru_1F1CBCFE8;
  }

  v52 = v5;
  if (internal->redEyeReductionEnabled)
  {
    v6 = @" red-eye reduction:ON";
  }

  else
  {
    v6 = &stru_1F1CBCFE8;
  }

  if (internal->HDREnabled)
  {
    v7 = @" HDR:ON";
  }

  else
  {
    v7 = &stru_1F1CBCFE8;
  }

  if (internal->adjustedPhotoFiltersEnabled)
  {
    v8 = @" filters:ON";
  }

  else
  {
    v8 = &stru_1F1CBCFE8;
  }

  if (internal->EV0PhotoDeliveryEnabled)
  {
    v9 = @" (EV0:ON)";
  }

  else
  {
    v9 = &stru_1F1CBCFE8;
  }

  if (internal->stillImageStabilizationEnabled)
  {
    v10 = @" SIS:ON";
  }

  else
  {
    v10 = &stru_1F1CBCFE8;
  }

  if (internal->virtualDeviceFusionEnabled)
  {
    v11 = @" virtualdevice-fusion:ON";
  }

  else
  {
    v11 = &stru_1F1CBCFE8;
  }

  if (internal->squareCropEnabled)
  {
    v12 = @" square:ON";
  }

  else
  {
    v12 = &stru_1F1CBCFE8;
  }

  v13 = [(NSArray *)internal->photoManifest count];
  v14 = 0x1E696A000;
  v15 = &stru_1F1CBCFE8;
  if (v13 >= 2)
  {
    v16 = MEMORY[0x1E696AEC0];
    v45 = [(NSArray *)self->_internal->photoManifest count];
    v17 = v16;
    v14 = 0x1E696A000uLL;
    v15 = [v17 stringWithFormat:@" expected photos:%d", v45];
  }

  v53 = [*(v14 + 3776) stringWithFormat:@" photo:{%dx%d%@%@%@%@%@%@%@%@%@%@}", self->_internal->photoDimensions.width, self->_internal->photoDimensions.height, v52, v6, &stru_1F1CBCFE8, v7, v8, v9, v10, v11, v12, v15];
  v18 = self->_internal;
  if (v18->rawPhotoDimensions.width >= 1)
  {
    height = v18->rawPhotoDimensions.height;
    if (height >= 1)
    {
      v4 = [*(v14 + 3776) stringWithFormat:@" raw:{%dx%d}", v18->rawPhotoDimensions.width, height];
      v18 = self->_internal;
    }
  }

  width = v18->previewDimensions.width;
  if (width < 1 || (v21 = v18->previewDimensions.height, v21 < 1))
  {
    v51 = &stru_1F1CBCFE8;
  }

  else
  {
    v51 = [*(v14 + 3776) stringWithFormat:@" prev:{%dx%d}", width, v21];
  }

  v22 = [(AVCaptureResolvedPhotoSettings *)self embeddedThumbnailDimensions];
  v23 = &stru_1F1CBCFE8;
  if (v22.width >= 1 && v22.height >= 1)
  {
    v23 = [*(v14 + 3776) stringWithFormat:@" thumb:{%dx%d}", v22, HIDWORD(*&v22)];
  }

  v50 = v23;
  v24 = [(AVCaptureResolvedPhotoSettings *)self rawEmbeddedThumbnailDimensions];
  v25 = &stru_1F1CBCFE8;
  if (v24.width >= 1 && v24.height >= 1)
  {
    v25 = [*(v14 + 3776) stringWithFormat:@" raw-thumb:{%dx%d}", v24, HIDWORD(*&v24)];
  }

  v49 = v25;
  v26 = self->_internal;
  if (v26->livePhotoMovieEnabled)
  {
    v48 = [*(v14 + 3776) stringWithFormat:@" mov:{%dx%d}", v26->livePhotoMovieDimensions.width, v26->livePhotoMovieDimensions.height];
    v26 = self->_internal;
  }

  else
  {
    v48 = &stru_1F1CBCFE8;
  }

  v27 = v26->portraitEffectsMatteDimensions.width;
  if (v27 < 1)
  {
    v47 = &stru_1F1CBCFE8;
  }

  else
  {
    v47 = [*(v14 + 3776) stringWithFormat:@" portrait-matte:{%dx%d}", v27, v26->portraitEffectsMatteDimensions.height];
    v26 = self->_internal;
  }

  v28 = v26->hairSegmentationMatteDimensions.width;
  if (v28 < 1)
  {
    v46 = &stru_1F1CBCFE8;
  }

  else
  {
    v46 = [*(v14 + 3776) stringWithFormat:@" hair-matte:{%dx%d}", v28, v26->hairSegmentationMatteDimensions.height];
    v26 = self->_internal;
  }

  v29 = v26->skinSegmentationMatteDimensions.width;
  if (v29 < 1)
  {
    v30 = &stru_1F1CBCFE8;
  }

  else
  {
    v30 = [*(v14 + 3776) stringWithFormat:@" skin-matte:{%dx%d}", v29, v26->skinSegmentationMatteDimensions.height];
    v26 = self->_internal;
  }

  v31 = v26->teethSegmentationMatteDimensions.width;
  if (v31 < 1)
  {
    v32 = &stru_1F1CBCFE8;
  }

  else
  {
    v32 = [*(v14 + 3776) stringWithFormat:@" teeth-matte:{%dx%d}", v31, v26->teethSegmentationMatteDimensions.height];
    v26 = self->_internal;
  }

  v33 = v26->glassesSegmentationMatteDimensions.width;
  if (v33 < 1)
  {
    v34 = &stru_1F1CBCFE8;
  }

  else
  {
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@" glasses-matte:{%dx%d}", v33, v26->glassesSegmentationMatteDimensions.height];
    v26 = self->_internal;
  }

  contentAwareDistortionCorrectionEnabled = v26->contentAwareDistortionCorrectionEnabled;
  spatialPhotoCaptureEnabled = v26->spatialPhotoCaptureEnabled;
  v37 = v26->spatialOverCapturePhotoDimensions.width;
  if (v37 < 1)
  {
    v38 = &stru_1F1CBCFE8;
  }

  else
  {
    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@" spatial-overcapture:{%dx%d}", v37, v26->spatialOverCapturePhotoDimensions.height];
    v26 = self->_internal;
  }

  if (spatialPhotoCaptureEnabled)
  {
    v39 = @" spatial-photo:1";
  }

  else
  {
    v39 = &stru_1F1CBCFE8;
  }

  if (contentAwareDistortionCorrectionEnabled)
  {
    v40 = @" distortion-correction:1";
  }

  else
  {
    v40 = &stru_1F1CBCFE8;
  }

  v41 = MEMORY[0x1E696AEC0];
  time = v26->photoProcessingTimeRange.start;
  Seconds = CMTimeGetSeconds(&time);
  v43 = self->_internal;
  lhs = v43->photoProcessingTimeRange.start;
  rhs = v43->photoProcessingTimeRange.duration;
  CMTimeAdd(&time, &lhs, &rhs);
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"uid:%lld %@%@%@%@%@%@%@%@%@%@%@%@%@%@%@", self->_internal->uniqueID, v53, v4, v51, v50, v49, v48, v47, v46, v30, v32, v34, v40, v39, v38, objc_msgSend(v41, "stringWithFormat:", @" time:%.3f-%.3f", *&Seconds, CMTimeGetSeconds(&time))];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[AVCaptureResolvedPhotoSettings debugDescription](self, "debugDescription")];
}

- (CMVideoDimensions)embeddedThumbnailDimensions
{
  BoolAnswer = AVGestaltGetBoolAnswer(@"AVGQCapturePhotoSettingsSupportRawEmbeddedThumbnailFormat");
  internal = self->_internal;
  if ((BoolAnswer & 1) != 0 || internal->embeddedThumbnailDimensions.width || (p_embeddedThumbnailDimensions = &internal->rawEmbeddedThumbnailDimensions, !internal->rawEmbeddedThumbnailDimensions.width))
  {
    p_embeddedThumbnailDimensions = &internal->embeddedThumbnailDimensions;
  }

  return *p_embeddedThumbnailDimensions;
}

- (CMVideoDimensions)dimensionsForSemanticSegmentationMatteOfType:(AVSemanticSegmentationMatteType)semanticSegmentationMatteType
{
  if (([(NSString *)semanticSegmentationMatteType isEqual:@"AVSemanticSegmentationMatteTypeHair"]& 1) != 0)
  {
    v5 = 80;
    v6 = 76;
  }

  else if (([(NSString *)semanticSegmentationMatteType isEqual:@"AVSemanticSegmentationMatteTypeSkin"]& 1) != 0)
  {
    v5 = 88;
    v6 = 84;
  }

  else if (([(NSString *)semanticSegmentationMatteType isEqual:@"AVSemanticSegmentationMatteTypeTeeth"]& 1) != 0)
  {
    v5 = 96;
    v6 = 92;
  }

  else
  {
    if (![(NSString *)semanticSegmentationMatteType isEqual:@"AVSemanticSegmentationMatteTypeGlasses"])
    {
      return 0;
    }

    v5 = 104;
    v6 = 100;
  }

  return (*(&self->_internal->super.isa + v6) | (*(&self->_internal->super.isa + v5) << 32));
}

- (id)photoManifest
{
  v2 = self->_internal->photoManifest;

  return v2;
}

- (CMTimeRange)photoProcessingTimeRange
{
  v3 = *&self->start.timescale;
  v4 = *(v3 + 152);
  *&retstr->start.value = *(v3 + 136);
  *&retstr->start.epoch = v4;
  *&retstr->duration.timescale = *(v3 + 168);
  return self;
}

- (id)digitalFlashUserInterfaceRGBEstimate
{
  if (self->_internal->digitalFlashUserInterfaceRGBEstimate)
  {
    return self->_internal->digitalFlashUserInterfaceRGBEstimate;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

@end