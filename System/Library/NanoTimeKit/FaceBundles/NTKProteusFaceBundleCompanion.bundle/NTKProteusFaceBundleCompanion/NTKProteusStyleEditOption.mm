@interface NTKProteusStyleEditOption
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKProteusStyleEditOption

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  v4 = @"soft";
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
    return @"sharp";
  }
}

- (id)localizedName
{
  style = [(NTKProteusStyleEditOption *)self style];
  v3 = @"EDIT_OPTION_LABEL_PROTEUS_STYLE_SOFT";
  if (style != 1)
  {
    v3 = 0;
  }

  if (style)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"EDIT_OPTION_LABEL_PROTEUS_STYLE_SHARP";
  }

  v5 = [(__CFString *)v4 stringByAppendingString:@"_COMPANION"];
  v6 = [NTKProteusFaceBundle localizedStringForKey:v5 comment:&stru_106F0];

  return v6;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_16348 != -1)
  {
    sub_863C();
  }

  v3 = qword_16340;

  return v3;
}

@end