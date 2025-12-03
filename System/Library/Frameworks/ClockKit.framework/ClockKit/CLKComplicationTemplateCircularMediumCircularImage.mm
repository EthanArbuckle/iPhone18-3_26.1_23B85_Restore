@interface CLKComplicationTemplateCircularMediumCircularImage
+ (void)_imageSDKSize:(CGSize *)size deviceSize:(CGSize *)deviceSize forSDKVersion:(int64_t)version;
@end

@implementation CLKComplicationTemplateCircularMediumCircularImage

+ (void)_imageSDKSize:(CGSize *)size deviceSize:(CGSize *)deviceSize forSDKVersion:(int64_t)version
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = &unk_284A34110;
  v9[1] = &unk_284A34128;
  v10[0] = &unk_284A34DD8;
  v10[1] = &unk_284A34E08;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  _SquareImageSizeScaled(v8, 1, version, size, deviceSize, 42.0);
}

@end