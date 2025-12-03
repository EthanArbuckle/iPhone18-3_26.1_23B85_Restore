@interface NTKBigNumeralsAnalogFace
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKBigNumeralsAnalogFace

- (id)_faceDescription
{
  _faceDescriptionKey = [(NTKBigNumeralsAnalogFace *)self _faceDescriptionKey];
  v3 = [NTKBigNumeralsAnalogFaceBundle localizedStringForKey:_faceDescriptionKey comment:@"Numerals Mono Description"];

  return v3;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  if (mode == 10)
  {
    device = [(NTKBigNumeralsAnalogFace *)self device];
    collectionType = [device collectionType];

    if (collectionType == &dword_4 + 1)
    {
      device2 = [(NTKBigNumeralsAnalogFace *)self device];
      v13 = 102;
    }

    else
    {
      device3 = [(NTKBigNumeralsAnalogFace *)self device];
      collectionType2 = [device3 collectionType];

      device2 = [(NTKBigNumeralsAnalogFace *)self device];
      if (collectionType2 == &dword_4 + 2)
      {
        v13 = 103;
      }

      else
      {
        v13 = 65;
      }
    }

    v10 = [NTKBigNumeralsAnalogColorEditOption optionWithFaceColor:v13 forDevice:device2];
    goto LABEL_13;
  }

  if (mode == 15)
  {
    device2 = [(NTKBigNumeralsAnalogFace *)self device];
    v10 = [NTKBigNumeralsAnalogStyleEditOption optionWithStyle:0 forDevice:device2];
LABEL_13:
    v9 = v10;
    goto LABEL_14;
  }

  if (mode != 13)
  {
    v9 = 0;
    goto LABEL_15;
  }

  device2 = +[NSLocale currentLocale];
  device4 = [(NTKBigNumeralsAnalogFace *)self device];
  v9 = [NTKBigNumeralsAnalogTypefaceEditOption defaultOptionForLocale:device2 device:device4];

LABEL_14:
LABEL_15:

  return v9;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKBigNumeralsAnalogFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKBigNumeralsAnalogFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKBigNumeralsAnalogFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKBigNumeralsAnalogFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKBigNumeralsAnalogFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKBigNumeralsAnalogFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  switch(mode)
  {
    case 10:
      v4 = off_C1B0;
LABEL_7:
      v5 = *v4;
      v6 = objc_opt_class();

      return v6;
    case 13:
      v4 = &off_C1C0;
      goto LABEL_7;
    case 15:
      v4 = off_C1B8;
      goto LABEL_7;
  }

  v6 = 0;

  return v6;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  deviceCopy = device;
  if (mode == 13)
  {
    if (_os_feature_enabled_impl() && ([deviceCopy supportsPDRCapability:270936181] & 1) != 0)
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
    v11.receiver = self;
    v11.super_class = &OBJC_METACLASS___NTKBigNumeralsAnalogFace;
    v8 = objc_msgSendSuper2(&v11, "_localizedNameOverrideForCustomEditMode:forDevice:", mode, deviceCopy);
  }

  return v8;
}

@end