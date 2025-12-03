@interface NTKSquallFace
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_faceDescription;
- (id)_localizedNameForComplicationSlot:(id)slot;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKSquallFace

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
  v4 = _os_feature_enabled_impl();
  if ([deviceCopy collectionType] == &dword_4 + 1)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = NTKShowHardwareSpecificFaces() ^ 1;
  }

  if ([deviceCopy deviceCategory] != &dword_4)
  {
    if (!(([deviceCopy deviceCategory] != &dword_4 + 2 || (v4 & 1) == 0) | v5 & 1))
    {
      goto LABEL_6;
    }

LABEL_8:
    LOBYTE(v6) = 1;
    goto LABEL_9;
  }

  if (v5 & 1 | ((v4 & 1) == 0))
  {
    goto LABEL_8;
  }

LABEL_6:
  v6 = [deviceCopy supportsPDRCapability:3669496134] ^ 1;
LABEL_9:

  return v6;
}

- (id)_localizedNameForComplicationSlot:(id)slot
{
  v5.receiver = self;
  v5.super_class = NTKSquallFace;
  v3 = [(NTKSquallFace *)&v5 _localizedNameForComplicationSlot:slot];

  return v3;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 10)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKSquallFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKSquallFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKSquallFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKSquallFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKSquallFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKSquallFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___NTKSquallFace;
  v4 = objc_msgSendSuper2(&v6, "_localizedNameOverrideForCustomEditMode:forDevice:", mode, device);

  return v4;
}

- (id)_faceDescription
{
  _faceDescriptionKey = [(NTKSquallFace *)self _faceDescriptionKey];
  v3 = [NTKSquallFaceBundle localizedStringForKey:_faceDescriptionKey comment:&stru_105B8];

  return v3;
}

@end