@interface NTKLeghornTimeStyleEditOption
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKLeghornTimeStyleEditOption

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  v4 = @"analog";
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
    return @"digital";
  }
}

- (id)localizedName
{
  v3 = objc_msgSend_timeStyle(self, a2, v2);
  v6 = @"EDIT_OPTION_LABEL_LEGHORN_TIME_STYLE_ANALOG";
  if (v3 != 1)
  {
    v6 = 0;
  }

  if (v3)
  {
    objc_msgSend_stringByAppendingString_(v6, v4, v5, @"_COMPANION");
  }

  else
  {
    objc_msgSend_stringByAppendingString_(@"EDIT_OPTION_LABEL_LEGHORN_TIME_STYLE_DIGITAL", v4, v5, @"_COMPANION");
  }
  v7 = ;
  v8 = NTKFoghornFaceLocalizedString(v7);

  return v8;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_27E1DF660 != -1)
  {
    sub_23BEE73A8();
  }

  v3 = qword_27E1DF658;

  return v3;
}

@end