@interface CIPortraitEffectStageMonoV2
- (id)outputImage;
- (void)setDefaults;
@end

@implementation CIPortraitEffectStageMonoV2

- (void)setDefaults
{
  [(CIPortraitEffectLightV2 *)self setInputSmooth:&off_79E20];
  [(CIPortraitEffectLightV2 *)self setInputEnrich:&off_7A120];
  [(CIPortraitEffectLightV2 *)self setInputEyes:&off_79E20];
  [(CIPortraitEffectLightV2 *)self setInputLocalContrast:&off_7A260];
  [(CIPortraitEffectV2 *)self setInputStrength:&off_7A110];
  [(CIPortraitEffectContourV2 *)self setInputDepthThreshold:&off_7A160];
  [(CIPortraitEffectV2 *)self setInputScale:&off_7A110];
  [(CIPortraitEffectStageV2 *)self setInputSharpenRadius:&off_7A290];
  [(CIPortraitEffectLightV2 *)self setInputTeeth:&off_7A1B0];
  [(CIPortraitEffectStageV2 *)self setInputGrainAmount:&off_79F80];
  [(CIPortraitEffectV2 *)self setInputRenderProxy:&off_7A140];

  [(CIPortraitEffectV2 *)self setInputGenerateSpillMatte:&off_7A140];
}

- (id)outputImage
{
  if (!self->super.super.super.super.inputImage)
  {
    return 0;
  }

  v3.receiver = self;
  v3.super_class = CIPortraitEffectStageMonoV2;
  result = [(CIPortraitEffectStageV2 *)&v3 outputImage];
  if (result)
  {
    return [objc_msgSend(objc_msgSend(result imageByApplyingFilter:{@"CIPhotoEffectStageMono", "imageByApplyingFilter:withInputParameters:", @"CIHighKey", &off_7DD60), "imageByApplyingFilter:withInputParameters:", @"CISmartBlackAndWhite", &off_7DD88}];
  }

  return result;
}

@end