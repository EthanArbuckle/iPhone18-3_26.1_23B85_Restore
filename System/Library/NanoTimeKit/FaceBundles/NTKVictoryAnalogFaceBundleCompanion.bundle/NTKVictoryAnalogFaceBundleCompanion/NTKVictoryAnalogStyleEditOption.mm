@interface NTKVictoryAnalogStyleEditOption
+ (id)_localizedNameForValue:(unint64_t)value forDevice:(id)device;
+ (id)_orderedValuesForDevice:(id)device;
+ (id)_stylesInGlory;
+ (id)_stylesInGrace;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKVictoryAnalogStyleEditOption

+ (id)_orderedValuesForDevice:(id)device
{
  if ([device isRunningGraceOrLater])
  {
    [self _stylesInGrace];
  }

  else
  {
    [self _stylesInGlory];
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

+ (id)_localizedNameForValue:(unint64_t)value forDevice:(id)device
{
  device = [NSNumber numberWithUnsignedInteger:value + 1, device];
  v5 = [NSString localizedStringWithFormat:@"%@", device];

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