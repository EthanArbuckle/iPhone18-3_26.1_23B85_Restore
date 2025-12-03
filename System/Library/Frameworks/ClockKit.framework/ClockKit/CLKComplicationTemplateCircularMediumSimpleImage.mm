@interface CLKComplicationTemplateCircularMediumSimpleImage
+ (void)_imageSDKSize:(CGSize *)size deviceSize:(CGSize *)deviceSize forSDKVersion:(int64_t)version;
@end

@implementation CLKComplicationTemplateCircularMediumSimpleImage

+ (void)_imageSDKSize:(CGSize *)size deviceSize:(CGSize *)deviceSize forSDKVersion:(int64_t)version
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = &unk_284A34110;
  v10[0] = &unk_284A34DF8;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  _SquareImageSizeScaled(v8, 1, version, size, deviceSize, 28.0);
}

@end