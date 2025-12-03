@interface CARSettingsFontOption
+ (id)optionWithFontName:(id)name displayName:(id)displayName value:(id)value;
@end

@implementation CARSettingsFontOption

+ (id)optionWithFontName:(id)name displayName:(id)displayName value:(id)value
{
  nameCopy = name;
  displayNameCopy = displayName;
  valueCopy = value;
  v11 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
  v12 = v11;
  if (nameCopy)
  {
    [v11 pointSize];
    v13 = [UIFont fontWithName:nameCopy size:?];

    v12 = v13;
  }

  v14 = [self optionWithTitle:displayNameCopy value:valueCopy];
  v15 = v14[4];
  v14[4] = v12;

  return v14;
}

@end