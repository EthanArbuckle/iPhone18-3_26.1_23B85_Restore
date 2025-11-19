@interface NTKProteusStyleEditOption
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKProteusStyleEditOption

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  v4 = @"soft";
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
    return @"sharp";
  }
}

- (id)localizedName
{
  v2 = [(NTKProteusStyleEditOption *)self style];
  v3 = @"EDIT_OPTION_LABEL_PROTEUS_STYLE_SOFT";
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