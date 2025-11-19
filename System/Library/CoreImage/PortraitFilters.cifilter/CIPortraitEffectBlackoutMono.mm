@interface CIPortraitEffectBlackoutMono
- (id)outputImage;
- (void)setDefaults;
@end

@implementation CIPortraitEffectBlackoutMono

- (void)setDefaults
{
  v3.receiver = self;
  v3.super_class = CIPortraitEffectBlackoutMono;
  [(CIPortraitEffectBlack *)&v3 setDefaults];
  [(CIPortraitEffectBlack *)self setInputSharpenRadius:&off_7A790];
  [(CIPortraitEffectBlack *)self setInputGrainAmount:&off_7A680];
}

- (id)outputImage
{
  if (!self->super.super.super.inputImage)
  {
    return 0;
  }

  v3.receiver = self;
  v3.super_class = CIPortraitEffectBlackoutMono;
  result = [(CIPortraitEffectBlack *)&v3 outputImage];
  if (result)
  {
    return [result imageByApplyingFilter:@"CIPhotoEffectStageMono"];
  }

  return result;
}

@end