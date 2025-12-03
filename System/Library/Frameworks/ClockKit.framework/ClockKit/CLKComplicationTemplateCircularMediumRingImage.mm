@interface CLKComplicationTemplateCircularMediumRingImage
+ (void)_imageSDKSize:(CGSize *)size deviceSize:(CGSize *)deviceSize forSDKVersion:(int64_t)version;
@end

@implementation CLKComplicationTemplateCircularMediumRingImage

+ (void)_imageSDKSize:(CGSize *)size deviceSize:(CGSize *)deviceSize forSDKVersion:(int64_t)version
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = &unk_284A34110;
  v9[1] = &unk_284A34128;
  v10[0] = &unk_284A34E18;
  v10[1] = &unk_284A34E28;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  _SquareImageSizeScaled(v8, 1, version, size, deviceSize, 25.0);
}

@end