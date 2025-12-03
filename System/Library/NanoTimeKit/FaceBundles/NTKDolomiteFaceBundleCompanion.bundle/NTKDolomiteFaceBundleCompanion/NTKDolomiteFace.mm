@interface NTKDolomiteFace
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKDolomiteFace

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
  v4 = [deviceCopy deviceCategory] == &dword_0 + 1;
  v5 = _os_feature_enabled_impl();
  v6 = [deviceCopy supportsPDRCapability:3669496134];

  return v4 || (v5 & v6 & 1) == 0;
}

- (id)_faceDescription
{
  _faceDescriptionKey = [(NTKDolomiteFace *)self _faceDescriptionKey];
  v3 = [NTKDolomiteFaceBundle localizedStringForKey:_faceDescriptionKey comment:@"FACE_STYLE_DOLOMITE_DESCRIPTION"];

  return v3;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 19)
  {
    v4 = off_D5C270;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (mode == 15)
  {
    v4 = &off_D5C278;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKDolomiteFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKDolomiteFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKDolomiteFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKDolomiteFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKDolomiteFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKDolomiteFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  deviceCopy = device;
  if (mode == 19)
  {
    v7 = @"EDIT_MODE_LABEL_NUMERAL";
    goto LABEL_5;
  }

  if (mode == 15)
  {
    v7 = @"EDIT_MODE_LABEL_STYLE";
LABEL_5:
    v8 = [NTKDolomiteFaceBundle localizedStringForKey:v7 comment:@"Edit Mode"];
    goto LABEL_7;
  }

  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___NTKDolomiteFace;
  v8 = objc_msgSendSuper2(&v11, "_localizedNameOverrideForCustomEditMode:forDevice:", mode, deviceCopy);
LABEL_7:
  v9 = v8;

  return v9;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  if (mode == 19)
  {
    v7 = off_D5C270;
    goto LABEL_5;
  }

  if (mode == 15)
  {
    v7 = &off_D5C278;
LABEL_5:
    v8 = *v7;
    device = [(NTKDolomiteFace *)self device];
    v10 = [(__objc2_class *)v8 defaultOptionForDevice:device];

    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

@end