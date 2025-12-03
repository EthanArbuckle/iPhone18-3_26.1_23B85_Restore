@interface NTKFoghornFaceBezelStyleEditOption
+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)_orderedValuesForDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKFoghornFaceBezelStyleEditOption

+ (id)_orderedValuesForDevice:(id)device
{
  deviceCopy = device;
  v6 = objc_msgSend_arrayByAddingObject_(&unk_284EB72A0, v4, v5, &unk_284EB7540);
  v9 = objc_msgSend_supportsPDRCapability_(deviceCopy, v7, v8, 554439219);

  if (v9)
  {
    v12 = objc_msgSend_arrayByAddingObject_(v6, v10, v11, &unk_284EB7558);

    v6 = v12;
  }

  return v6;
}

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 5)
  {
    return 0;
  }

  else
  {
    return off_278BA12D8[value];
  }
}

+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 5)
  {
    v6 = 0;
  }

  else
  {
    v6 = objc_msgSend_stringByAppendingString_(@"EDIT_OPTION_LABEL_FOGHORN_BEZEL_", a2, v5, off_278BA1308[value], device);
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
  if (qword_27E1DF4E0 != -1)
  {
    sub_23BEE7054();
  }

  v3 = qword_27E1DF4D8;

  return v3;
}

@end