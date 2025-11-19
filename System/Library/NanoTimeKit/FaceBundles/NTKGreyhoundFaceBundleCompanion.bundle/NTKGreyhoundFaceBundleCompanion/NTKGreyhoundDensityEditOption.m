@interface NTKGreyhoundDensityEditOption
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKGreyhoundDensityEditOption

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  v4 = @"detailed";
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
    return @"simple";
  }
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_1A5A0 != -1)
  {
    sub_C820();
  }

  v3 = qword_1A598;

  return v3;
}

- (id)localizedName
{
  v2 = [(NTKGreyhoundDensityEditOption *)self density];
  v3 = @"EDIT_OPTION_LABEL_DENSITY_DETAILED";
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
    v4 = @"EDIT_OPTION_LABEL_DENSITY_SIMPLE";
  }

  return [NTKGreyhoundFaceBundle localizedStringForKey:v4 comment:@"typeface"];
}

@end