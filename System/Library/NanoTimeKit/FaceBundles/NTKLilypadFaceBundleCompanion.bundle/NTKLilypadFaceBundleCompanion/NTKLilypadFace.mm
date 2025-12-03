@interface NTKLilypadFace
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)argon_embeddedOverlayAssetURL;
- (int64_t)argon_overlayAssetType;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKLilypadFace

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
  v4 = [deviceCopy supportsPDRCapability:277329136];
  if ([deviceCopy sizeClass] && ((objc_msgSend(deviceCopy, "sizeClass") != &dword_0 + 1) & v4) == 1)
  {
    v5 = NTKGizmoOrCompanionAreRussian();
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)_faceDescription
{
  _faceDescriptionKey = [(NTKLilypadFace *)self _faceDescriptionKey];
  v3 = [NTKLilypadFaceBundle localizedStringForKey:_faceDescriptionKey comment:@"Lilypad face description"];

  return v3;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  v5 = [(NTKLilypadFace *)self device:mode];
  if (mode == 15)
  {
    v6 = [NTKFaceBackgroundStyleEditOption optionWithBackgroundStyle:1 forDevice:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKLilypadFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKLilypadFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKLilypadFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKLilypadFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKLilypadFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKLilypadFace *)self device];
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

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  if (mode == 15)
  {
    v4 = [@"EDIT_MODE_LABEL_LILYPAD_STYLE" stringByAppendingString:{@"_COMPANION", device}];
    v5 = [NTKLilypadFaceBundle localizedStringForKey:v4 comment:@"Lilypad custom edit mode name"];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___NTKLilypadFace;
    v5 = objc_msgSendSuper2(&v7, "_localizedNameOverrideForCustomEditMode:forDevice:", mode, device);
  }

  return v5;
}

- (int64_t)argon_overlayAssetType
{
  device = [(NTKLilypadFace *)self device];
  [device sizeClass];

  return 1;
}

- (id)argon_embeddedOverlayAssetURL
{
  device = [(NTKLilypadFace *)self device];
  sizeClass = [device sizeClass];

  if ((sizeClass - 2) > 7)
  {
    v6 = 0;
  }

  else
  {
    v4 = off_C3D8[(sizeClass - 2)];
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 URLForResource:v4 withExtension:@"pdf"];
  }

  return v6;
}

@end