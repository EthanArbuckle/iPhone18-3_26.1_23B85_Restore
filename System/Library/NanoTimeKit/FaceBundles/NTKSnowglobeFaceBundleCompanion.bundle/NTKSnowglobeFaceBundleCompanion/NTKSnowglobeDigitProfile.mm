@interface NTKSnowglobeDigitProfile
+ (id)profileForCharacter:(unint64_t)character;
@end

@implementation NTKSnowglobeDigitProfile

+ (id)profileForCharacter:(unint64_t)character
{
  v3 = objc_opt_new();
  CLKInterpolateBetweenFloatsClipped();
  *&v4 = v4;
  v3[2] = LODWORD(v4);
  CLKInterpolateBetweenFloatsClipped();
  *&v5 = v5;
  v3[3] = LODWORD(v5);
  CLKInterpolateBetweenFloatsClipped();
  *&v6 = v6;
  v3[4] = LODWORD(v6);
  CLKInterpolateBetweenFloatsClipped();
  *&v7 = v7;
  v3[5] = LODWORD(v7);
  CLKInterpolateBetweenFloatsClipped();
  *&v8 = v8;
  v3[6] = LODWORD(v8);
  v3[7] = 1077936128;
  CLKInterpolateBetweenFloatsClipped();
  *&v9 = v9 / (1.0 - v9);
  v3[8] = LODWORD(v9);

  return v3;
}

@end