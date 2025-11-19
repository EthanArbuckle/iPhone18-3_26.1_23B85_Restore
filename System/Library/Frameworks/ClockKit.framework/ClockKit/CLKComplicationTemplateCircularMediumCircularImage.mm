@interface CLKComplicationTemplateCircularMediumCircularImage
+ (void)_imageSDKSize:(CGSize *)a3 deviceSize:(CGSize *)a4 forSDKVersion:(int64_t)a5;
@end

@implementation CLKComplicationTemplateCircularMediumCircularImage

+ (void)_imageSDKSize:(CGSize *)a3 deviceSize:(CGSize *)a4 forSDKVersion:(int64_t)a5
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = &unk_284A34110;
  v9[1] = &unk_284A34128;
  v10[0] = &unk_284A34DD8;
  v10[1] = &unk_284A34E08;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  _SquareImageSizeScaled(v8, 1, a5, a3, a4, 42.0);
}

@end