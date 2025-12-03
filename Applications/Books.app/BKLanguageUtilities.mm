@interface BKLanguageUtilities
+ (id)dominantLanguageForString:(id)string;
- (BKLanguageUtilities)init;
@end

@implementation BKLanguageUtilities

+ (id)dominantLanguageForString:(id)string
{
  stringCopy = string;
  _s5Books17LanguageUtilitiesC08dominantB03forSSSgSo7JSValueC_tFZ_0(stringCopy);
  v5 = v4;

  if (v5)
  {
    v6 = sub_1007A2214();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BKLanguageUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LanguageUtilities();
  return [(BKLanguageUtilities *)&v3 init];
}

@end