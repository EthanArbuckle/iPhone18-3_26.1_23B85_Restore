@interface NTKLeghornHiVizComplicationStyleEditOption
+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKLeghornHiVizComplicationStyleEditOption

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 2)
  {
    return 0;
  }

  else
  {
    return off_278BA1BA8[value];
  }
}

+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = objc_msgSend_stringByAppendingString_(@"EDIT_OPTION_LABEL_LEGHORN_HIVIZ_STYLE_", a2, v5, off_278BA1BC0[value], device);
  }

  return v6;
}

- (id)localizedName
{
  v3 = objc_opt_class();
  v6 = objc_msgSend__value(self, v4, v5);
  v9 = objc_msgSend_device(self, v7, v8);
  v12 = objc_msgSend__nameLocalizationKeyForValue_forDevice_(v3, v10, v11, v6, v9);

  v15 = objc_msgSend_stringByAppendingString_(v12, v13, v14, @"_COMPANION");

  if (v15)
  {
    v16 = NTKFoghornFaceLocalizedString(v15);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_27E1DF650 != -1)
  {
    sub_23BEE7394();
  }

  v3 = qword_27E1DF648;

  return v3;
}

@end