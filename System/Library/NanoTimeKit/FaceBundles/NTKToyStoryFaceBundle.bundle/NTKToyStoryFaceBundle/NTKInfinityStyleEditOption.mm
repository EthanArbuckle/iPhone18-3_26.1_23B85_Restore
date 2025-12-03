@interface NTKInfinityStyleEditOption
+ (id)_localizedNameForValue:(unint64_t)value forDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKInfinityStyleEditOption

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_C610 + value);
  }
}

+ (id)_localizedNameForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 3)
  {
    v6 = &stru_CC10;
  }

  else
  {
    v6 = [NTKToyStoryFaceBundle localizedStringForKey:*(&off_C630 + value) table:@"ToyBox" comment:@"Character", v4];
  }

  return v6;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_117C0 != -1)
  {
    sub_5B50();
  }

  v3 = qword_117B8;

  return v3;
}

@end