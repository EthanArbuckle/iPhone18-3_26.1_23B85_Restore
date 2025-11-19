@interface NTKSnowglobeBackgroundEditOption
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKSnowglobeBackgroundEditOption

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  v4 = @"off";
  if (a3 != 1)
  {
    v4 = 0;
  }

  if (a3)
  {
    return v4;
  }

  else
  {
    return @"on";
  }
}

- (id)localizedName
{
  v2 = [(NTKSnowglobeBackgroundEditOption *)self background];
  v3 = @"EDIT_OPTION_LABEL_SNOWGLOBE_BACKGROUND_OFF";
  if (v2 != 1)
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"EDIT_OPTION_LABEL_SNOWGLOBE_BACKGROUND_ON";
  }

  v5 = [(__CFString *)v4 stringByAppendingString:@"_COMPANION"];
  v6 = [(NTKFaceBundle *)NTKSnowglobeFaceBundle localizedStringForKey:v5 comment:&stru_284ED92E0];

  return v6;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_27E1EDE20 != -1)
  {
    sub_23C08EE90();
  }

  v3 = qword_27E1EDE18;

  return v3;
}

@end