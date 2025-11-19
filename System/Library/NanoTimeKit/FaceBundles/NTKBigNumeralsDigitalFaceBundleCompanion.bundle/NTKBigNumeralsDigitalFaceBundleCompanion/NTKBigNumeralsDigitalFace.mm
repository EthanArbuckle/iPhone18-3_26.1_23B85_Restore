@interface NTKBigNumeralsDigitalFace
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKBigNumeralsDigitalFace

- (id)_faceDescription
{
  v2 = [(NTKBigNumeralsDigitalFace *)self _faceDescriptionKey];
  v3 = [NTKBigNumeralsDigitalFaceBundle localizedStringForKey:v2 comment:@"Numerals Duo Description"];

  return v3;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  if (a3 == 10)
  {
    v11 = [(NTKBigNumeralsDigitalFace *)self device];
    v12 = [v11 collectionType];

    if (v12 == &dword_4 + 1)
    {
      v7 = [(NTKBigNumeralsDigitalFace *)self device];
      v13 = 102;
    }

    else
    {
      v14 = [(NTKBigNumeralsDigitalFace *)self device];
      v15 = [v14 collectionType];

      v7 = [(NTKBigNumeralsDigitalFace *)self device];
      if (v15 != &dword_4 + 2)
      {
        v10 = [NTKBigNumeralsDigitalColorEditOption optionWithColor:3005 forDevice:v7];
        goto LABEL_13;
      }

      v13 = 103;
    }

    v10 = [NTKBigNumeralsDigitalColorEditOption optionWithFaceColor:v13 forDevice:v7];
LABEL_13:
    v9 = v10;
    goto LABEL_14;
  }

  if (a3 == 15)
  {
    v7 = [(NTKBigNumeralsDigitalFace *)self device];
    v10 = [NTKBigNumeralsDigitalStyleEditOption optionWithStyle:0 forDevice:v7];
    goto LABEL_13;
  }

  if (a3 != 13)
  {
    v9 = 0;
    goto LABEL_15;
  }

  v7 = +[NSLocale currentLocale];
  v8 = [(NTKBigNumeralsDigitalFace *)self device];
  v9 = [NTKBigNumeralsDigitalTypefaceEditOption defaultOptionForLocale:v7 device:v8];

LABEL_14:
LABEL_15:

  return v9;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKBigNumeralsDigitalFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKBigNumeralsDigitalFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKBigNumeralsDigitalFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKBigNumeralsDigitalFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKBigNumeralsDigitalFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKBigNumeralsDigitalFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  switch(a3)
  {
    case 10:
      v4 = off_C1D0;
LABEL_7:
      v5 = *v4;
      v6 = objc_opt_class();

      return v6;
    case 13:
      v4 = &off_C1E0;
      goto LABEL_7;
    case 15:
      v4 = off_C1D8;
      goto LABEL_7;
  }

  v6 = 0;

  return v6;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  v6 = a4;
  if (a3 == 13)
  {
    if (_os_feature_enabled_impl() && ([v6 supportsPDRCapability:270936181] & 1) != 0)
    {
      v7 = @"EDIT_MODE_LABEL_NUMERALS";
    }

    else
    {
      v7 = @"EDIT_MODE_LABEL_SYMBOLS_LEGACY";
    }

    v9 = [(__CFString *)v7 stringByAppendingString:@"_COMPANION"];
    v8 = NTKCompanionClockFaceLocalizedString();
  }

  else
  {
    v11.receiver = a1;
    v11.super_class = &OBJC_METACLASS___NTKBigNumeralsDigitalFace;
    v8 = objc_msgSendSuper2(&v11, "_localizedNameOverrideForCustomEditMode:forDevice:", a3, v6);
  }

  return v8;
}

@end