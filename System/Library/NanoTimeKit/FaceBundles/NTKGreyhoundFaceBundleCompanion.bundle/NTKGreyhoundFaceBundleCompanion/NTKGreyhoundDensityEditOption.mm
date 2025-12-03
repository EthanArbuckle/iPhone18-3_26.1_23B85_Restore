@interface NTKGreyhoundDensityEditOption
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKGreyhoundDensityEditOption

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  v4 = @"detailed";
  if (value != 1)
  {
    v4 = 0;
  }

  if (value)
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
  density = [(NTKGreyhoundDensityEditOption *)self density];
  v3 = @"EDIT_OPTION_LABEL_DENSITY_DETAILED";
  if (density != 1)
  {
    v3 = 0;
  }

  if (density)
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