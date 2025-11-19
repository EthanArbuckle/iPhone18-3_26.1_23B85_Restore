@interface NTKEsterbrookFace
+ (BOOL)isRestrictedForDevice:(id)a3;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKEsterbrookFace

- (id)_faceDescription
{
  v4 = objc_msgSend__faceDescriptionKey(self, a2, v2, v3);
  v6 = objc_msgSend_localizedStringForKey_comment_(NTKEsterbrookFaceBundle, v5, v4, v4);

  return v6;
}

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v3 = a3;
  v7 = objc_msgSend_deviceCategory(v3, v4, v5, v6);
  v8 = _os_feature_enabled_impl();
  v11 = objc_msgSend_supportsPDRCapability_(v3, v9, 3887189377, v10);
  v14 = objc_msgSend_supportsPDRCapability_(v3, v12, 822091474, v13);

  return !((v7 != 1) & (v8 & v11) & v14);
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = objc_msgSend_device(self, a2, a3, a4);
  if (a3 == 11)
  {
    v7 = objc_msgSend_optionWithDensity_forDevice_(NTKEsterbrookDensityEditOption, v5, 1, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = objc_msgSend__optionClassForCustomEditMode_(self, a2, a3, a4);
  v9 = objc_msgSend_device(self, v6, v7, v8);
  v12 = objc_msgSend_numberOfOptionsForDevice_(v5, v10, v9, v11);

  return v12;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = objc_msgSend__optionClassForCustomEditMode_(self, a2, a4, a4, a5);
  v11 = objc_msgSend_device(self, v8, v9, v10);
  v13 = objc_msgSend_optionAtIndex_forDevice_(v7, v12, a3, v11);

  return v13;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v10 = objc_msgSend__optionClassForCustomEditMode_(self, v8, a4, v9);
  v14 = objc_msgSend_device(self, v11, v12, v13);
  v16 = objc_msgSend_indexOfOption_forDevice_(v10, v15, v7, v14);

  return v16;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  if (a3 == 11)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end