@interface NTKVictoryAnalogStyleEditOption
+ (id)_localizedNameForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)_orderedValuesForDevice:(id)a3;
+ (id)_stylesInGlory;
+ (id)_stylesInGrace;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKVictoryAnalogStyleEditOption

+ (id)_orderedValuesForDevice:(id)a3
{
  if ([a3 isRunningGraceOrLater])
  {
    [a1 _stylesInGrace];
  }

  else
  {
    [a1 _stylesInGlory];
  }
  v4 = ;

  return v4;
}

+ (id)_stylesInGrace
{
  if (qword_12468 != -1)
  {
    sub_66C4();
  }

  v3 = qword_12460;

  return v3;
}

+ (id)_stylesInGlory
{
  if (qword_12478 != -1)
  {
    sub_66D8();
  }

  v3 = qword_12470;

  return v3;
}

+ (id)_localizedNameForValue:(unint64_t)a3 forDevice:(id)a4
{
  v4 = [NSNumber numberWithUnsignedInteger:a3 + 1, a4];
  v5 = [NSString localizedStringWithFormat:@"%@", v4];

  return v5;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_12488 != -1)
  {
    sub_66EC();
  }

  v3 = qword_12480;

  return v3;
}

@end