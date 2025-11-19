@interface NTKDolomiteFace
+ (BOOL)isRestrictedForDevice:(id)a3;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKDolomiteFace

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 deviceCategory] == &dword_0 + 1;
  v5 = _os_feature_enabled_impl();
  v6 = [v3 supportsPDRCapability:3669496134];

  return v4 || (v5 & v6 & 1) == 0;
}

- (id)_faceDescription
{
  v2 = [(NTKDolomiteFace *)self _faceDescriptionKey];
  v3 = [NTKDolomiteFaceBundle localizedStringForKey:v2 comment:@"FACE_STYLE_DOLOMITE_DESCRIPTION"];

  return v3;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  if (a3 == 19)
  {
    v4 = off_D5C270;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (a3 == 15)
  {
    v4 = &off_D5C278;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKDolomiteFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKDolomiteFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKDolomiteFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKDolomiteFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKDolomiteFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKDolomiteFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  v6 = a4;
  if (a3 == 19)
  {
    v7 = @"EDIT_MODE_LABEL_NUMERAL";
    goto LABEL_5;
  }

  if (a3 == 15)
  {
    v7 = @"EDIT_MODE_LABEL_STYLE";
LABEL_5:
    v8 = [NTKDolomiteFaceBundle localizedStringForKey:v7 comment:@"Edit Mode"];
    goto LABEL_7;
  }

  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS___NTKDolomiteFace;
  v8 = objc_msgSendSuper2(&v11, "_localizedNameOverrideForCustomEditMode:forDevice:", a3, v6);
LABEL_7:
  v9 = v8;

  return v9;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  if (a3 == 19)
  {
    v7 = off_D5C270;
    goto LABEL_5;
  }

  if (a3 == 15)
  {
    v7 = &off_D5C278;
LABEL_5:
    v8 = *v7;
    v9 = [(NTKDolomiteFace *)self device];
    v10 = [(__objc2_class *)v8 defaultOptionForDevice:v9];

    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

@end