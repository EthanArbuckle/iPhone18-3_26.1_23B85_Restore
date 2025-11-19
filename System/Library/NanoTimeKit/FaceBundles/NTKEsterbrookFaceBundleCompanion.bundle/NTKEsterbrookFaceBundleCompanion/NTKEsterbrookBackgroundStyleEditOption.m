@interface NTKEsterbrookBackgroundStyleEditOption
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKEsterbrookBackgroundStyleEditOption

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  v4 = @"sunday";
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
    return @"daily";
  }
}

- (id)localizedName
{
  v4 = objc_msgSend_style(self, a2, v2, v3);
  v7 = @"ESTERBROOK_STYLE_EDIT_OPTION_SUNDAY";
  if (v4 != 1)
  {
    v7 = 0;
  }

  if (v4)
  {
    objc_msgSend_stringByAppendingString_(v7, v5, @"_COMPANION", v6);
  }

  else
  {
    objc_msgSend_stringByAppendingString_(@"ESTERBROOK_STYLE_EDIT_OPTION_DAILY", v5, @"_COMPANION", v6);
  }
  v8 = ;
  v10 = objc_msgSend_localizedStringForKey_comment_(NTKEsterbrookFaceBundle, v9, v8, &stru_284E95F18);

  return v10;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_27E1C97C8 != -1)
  {
    sub_23BE325A0();
  }

  v3 = qword_27E1C97C0;

  return v3;
}

@end