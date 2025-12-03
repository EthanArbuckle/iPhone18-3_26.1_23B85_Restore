@interface NTKPlumeriaFace
+ (BOOL)isRestrictedForDevice:(id)device;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKPlumeriaFace

- (id)_faceDescription
{
  _faceDescriptionKey = [(NTKPlumeriaFace *)self _faceDescriptionKey];
  v3 = [NTKPlumeriaFaceBundle localizedStringForKey:_faceDescriptionKey comment:@"FACE_STYLE_PLUMERIA_DESCRIPTION"];

  return v3;
}

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
  v4 = NTKGizmoOrCompanionAreRussian();
  deviceCategory = [deviceCopy deviceCategory];
  v6 = [deviceCopy supportsPDRCapability:2851856547];

  v7 = _os_feature_enabled_impl();
  if (deviceCategory == &dword_0 + 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v4;
  }

  return v8 & 1 | ((v7 & v6 & 1) == 0);
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKPlumeriaFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKPlumeriaFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKPlumeriaFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKPlumeriaFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKPlumeriaFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKPlumeriaFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

@end