@interface NTKGalleonTimeModeEditOption
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKGalleonTimeModeEditOption

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  v4 = @"minute";
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
    return @"hour";
  }
}

- (id)localizedName
{
  v4 = objc_msgSend_timeMode(self, a2, v2, v3);
  v7 = @"EDIT_OPTION_LABEL_GALLEON_TIME_MODE_MINUTE";
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
    objc_msgSend_stringByAppendingString_(@"EDIT_OPTION_LABEL_GALLEON_TIME_MODE_HOUR", v5, @"_COMPANION", v6);
  }
  v8 = ;
  v10 = objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, v9, v8, &stru_284EA1D18);

  return v10;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_27E1DD748 != -1)
  {
    sub_23BEA4218();
  }

  v3 = qword_27E1DD740;

  return v3;
}

@end