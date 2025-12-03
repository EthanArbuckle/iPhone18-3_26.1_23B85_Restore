@interface NTKHadesFace
+ (BOOL)isRestrictedForDevice:(id)device;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKHadesFace

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy deviceCategory] == &dword_0 + 1 || objc_msgSend(deviceCopy, "deviceCategory") == &dword_4 || objc_msgSend(deviceCopy, "deviceCategory") == &dword_4 + 2 || !objc_msgSend(deviceCopy, "supportsPDRCapability:", 4094027452))
  {
    LOBYTE(v4) = 1;
  }

  else if ([deviceCopy collectionType] == &dword_4 + 1)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = NTKShowHardwareSpecificFaces() ^ 1;
  }

  return v4;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 15)
  {
    v4 = [(NTKHadesFace *)self device:15];
    v5 = [NTKHadesRotationEditOption optionWithRotation:0 forDevice:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKHadesFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKHadesFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKHadesFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKHadesFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKHadesFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKHadesFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 15)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_faceDescription
{
  _faceDescriptionKey = [(NTKHadesFace *)self _faceDescriptionKey];
  v3 = [NTKHadesFaceBundle localizedStringForKey:_faceDescriptionKey comment:&stru_45510];

  return v3;
}

@end