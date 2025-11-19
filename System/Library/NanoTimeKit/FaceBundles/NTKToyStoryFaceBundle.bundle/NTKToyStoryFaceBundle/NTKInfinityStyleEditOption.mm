@interface NTKInfinityStyleEditOption
+ (id)_localizedNameForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKInfinityStyleEditOption

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_C610 + a3);
  }
}

+ (id)_localizedNameForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 3)
  {
    v6 = &stru_CC10;
  }

  else
  {
    v6 = [NTKToyStoryFaceBundle localizedStringForKey:*(&off_C630 + a3) table:@"ToyBox" comment:@"Character", v4];
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