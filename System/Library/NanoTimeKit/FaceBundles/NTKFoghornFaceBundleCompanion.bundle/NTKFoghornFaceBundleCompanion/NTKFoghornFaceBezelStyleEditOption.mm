@interface NTKFoghornFaceBezelStyleEditOption
+ (id)_nameLocalizationKeyForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)_orderedValuesForDevice:(id)a3;
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKFoghornFaceBezelStyleEditOption

+ (id)_orderedValuesForDevice:(id)a3
{
  if (objc_msgSend_supportsPDRCapability_(a3, a2, 554439219, v3))
  {
    v6 = objc_msgSend_arrayByAddingObject_(&unk_284EA1428, v4, &unk_284EA0FD8, v5);
  }

  else
  {
    v6 = &unk_284EA1428;
  }

  return v6;
}

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return off_278B9C7D0[a3];
  }
}

+ (id)_nameLocalizationKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = objc_msgSend_stringByAppendingString_(@"EDIT_OPTION_LABEL_FOGHORN_BEZEL_", a2, off_278B9C7F8[a3], a4);
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
  if (qword_27E1DCAA8 != -1)
  {
    sub_23BE7D2D0();
  }

  v3 = qword_27E1DCAA0;

  return v3;
}

@end