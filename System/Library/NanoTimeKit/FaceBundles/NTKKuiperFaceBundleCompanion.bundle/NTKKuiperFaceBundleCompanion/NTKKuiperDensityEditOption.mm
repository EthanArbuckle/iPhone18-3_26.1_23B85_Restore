@interface NTKKuiperDensityEditOption
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKKuiperDensityEditOption

- (id)localizedName
{
  v2 = [NSString stringWithFormat:@"EDIT_MODE_LABEL_KUIPER_STYLE_%lu", [(NTKKuiperDensityEditOption *)self density]];
  v3 = [NTKKuiperFaceBundle localizedStringForKey:v2 comment:@"style"];

  return v3;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_16D28 != -1)
  {
    sub_7954();
  }

  v3 = qword_16D20;

  return v3;
}

@end