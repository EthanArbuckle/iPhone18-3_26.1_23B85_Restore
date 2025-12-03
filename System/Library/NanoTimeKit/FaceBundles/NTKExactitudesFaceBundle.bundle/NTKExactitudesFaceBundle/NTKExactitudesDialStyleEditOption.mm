@interface NTKExactitudesDialStyleEditOption
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKExactitudesDialStyleEditOption

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 2)
  {
    return 0;
  }

  else
  {
    return off_30A60[value];
  }
}

- (id)localizedName
{
  style = [(NTKExactitudesDialStyleEditOption *)self style];
  v3 = @"EDIT_OPTION_LABEL_DIAL_CLOSED";
  if (style == 1)
  {
    v3 = @"EDIT_OPTION_LABEL_DIAL_OPEN_I";
  }

  if (style == 2)
  {
    v4 = @"EDIT_OPTION_LABEL_DIAL_OPEN_II";
  }

  else
  {
    v4 = v3;
  }

  return [NTKExactitudesFaceBundle localizedStringForKey:v4 comment:@"style"];
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_381E8 != -1)
  {
    sub_20D40();
  }

  v3 = qword_381E0;

  return v3;
}

@end