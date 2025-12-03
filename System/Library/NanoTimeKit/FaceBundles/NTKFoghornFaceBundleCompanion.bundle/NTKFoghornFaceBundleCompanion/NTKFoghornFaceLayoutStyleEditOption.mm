@interface NTKFoghornFaceLayoutStyleEditOption
+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKFoghornFaceLayoutStyleEditOption

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 5)
  {
    return 0;
  }

  else
  {
    return off_278B9CAB8[value];
  }
}

+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = objc_msgSend_stringByAppendingString_(@"EDIT_OPTION_LABEL_FOGHORN_STYLE_", a2, off_278B9CAE8[value], device);
  }

  return v5;
}

- (id)localizedName
{
  v3 = objc_opt_class();
  v7 = objc_msgSend__value(self, v4, v5, v6);
  v11 = objc_msgSend_device(self, v8, v9, v10);
  v13 = objc_msgSend__nameLocalizationKeyForValue_forDevice_(v3, v12, v7, v11);

  v16 = objc_msgSend_stringByAppendingString_(v13, v14, @"_COMPANION", v15);

  if (v16)
  {
    v17 = NTKFoghornFaceLocalizedString(v16);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_27E1DD140 != -1)
  {
    sub_23BE7D35C();
  }

  v3 = qword_27E1DD138;

  return v3;
}

@end