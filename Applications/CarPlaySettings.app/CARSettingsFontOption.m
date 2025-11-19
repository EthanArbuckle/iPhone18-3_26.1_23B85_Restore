@interface CARSettingsFontOption
+ (id)optionWithFontName:(id)a3 displayName:(id)a4 value:(id)a5;
@end

@implementation CARSettingsFontOption

+ (id)optionWithFontName:(id)a3 displayName:(id)a4 value:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
  v12 = v11;
  if (v8)
  {
    [v11 pointSize];
    v13 = [UIFont fontWithName:v8 size:?];

    v12 = v13;
  }

  v14 = [a1 optionWithTitle:v9 value:v10];
  v15 = v14[4];
  v14[4] = v12;

  return v14;
}

@end