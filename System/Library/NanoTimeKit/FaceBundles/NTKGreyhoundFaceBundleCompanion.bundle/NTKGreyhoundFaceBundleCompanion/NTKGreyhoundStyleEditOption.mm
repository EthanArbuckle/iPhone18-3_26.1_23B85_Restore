@interface NTKGreyhoundStyleEditOption
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)defaultOptionForDevice:(id)a3;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKGreyhoundStyleEditOption

+ (id)defaultOptionForDevice:(id)a3
{
  v3 = a3;
  v4 = CLKLocaleCurrentNumberSystem();
  v5 = 3;
  if (v4 != 2)
  {
    v5 = 1;
  }

  if (v4 == 1)
  {
    v6 = 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [NTKGreyhoundStyleEditOption optionWithStyle:v6 forDevice:v3];

  return v7;
}

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return off_145E8[a3];
  }
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_1A5F0 != -1)
  {
    sub_C834();
  }

  v3 = qword_1A5E8;

  return v3;
}

- (id)localizedName
{
  if (_os_feature_enabled_impl())
  {
    v3 = [(NTKGreyhoundStyleEditOption *)self device];
    v4 = [v3 supportsPDRCapability:270936181];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NTKGreyhoundStyleEditOption *)self style];
  v6 = @"EDIT_OPTION_LABEL_STYLE_ARABIC_INDIC_COMPATIBILITY";
  if (v4)
  {
    v6 = @"EDIT_OPTION_LABEL_STYLE_ARABIC_INDIC";
  }

  v7 = @"EDIT_OPTION_LABEL_STYLE_CHINESE";
  if (v5 != 4)
  {
    v7 = 0;
  }

  if (v5 == 3)
  {
    v7 = @"EDIT_OPTION_LABEL_STYLE_DEVANAGARI";
  }

  if (v5 != 2)
  {
    v6 = v7;
  }

  v8 = @"EDIT_OPTION_LABEL_STYLE_ARABIC";
  if (!v4)
  {
    v8 = @"EDIT_OPTION_LABEL_STYLE_ARABIC_COMPATIBILITY";
  }

  if (v5 != 1)
  {
    v8 = 0;
  }

  if (!v5)
  {
    v8 = @"EDIT_OPTION_LABEL_STYLE_ROMAN";
  }

  if (v5 <= 1)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  return [NTKGreyhoundFaceBundle localizedStringForKey:v9 comment:@"style"];
}

@end