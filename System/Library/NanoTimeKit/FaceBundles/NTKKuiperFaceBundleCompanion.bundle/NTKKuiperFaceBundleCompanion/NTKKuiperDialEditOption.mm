@interface NTKKuiperDialEditOption
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKKuiperDialEditOption

- (id)localizedName
{
  v2 = [NSString stringWithFormat:@"EDIT_MODE_LABEL_KUIPER_DIAL_%lu", [(NTKKuiperDialEditOption *)self dial]];
  v3 = [NTKKuiperFaceBundle localizedStringForKey:v2 comment:@"dial"];

  return v3;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_16D38 != -1)
  {
    sub_7968();
  }

  v3 = qword_16D30;

  return v3;
}

@end