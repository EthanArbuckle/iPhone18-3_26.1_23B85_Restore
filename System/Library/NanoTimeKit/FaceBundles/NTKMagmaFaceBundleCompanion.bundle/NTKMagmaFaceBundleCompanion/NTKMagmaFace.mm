@interface NTKMagmaFace
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKMagmaFace

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy deviceCategory] == &dword_0 + 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [deviceCopy supportsPDRCapability:4094027452];
  }

  v5 = NTKShowVictoryFaces() & v4;

  return v5 ^ 1;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  v5 = [(NTKMagmaFace *)self device:mode];
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
  slot = [(NTKMagmaFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKMagmaFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKMagmaFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKMagmaFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKMagmaFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKMagmaFace *)self device];
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
    v4 = [@"EDIT_MODE_LABEL_MAGMA_STYLE" stringByAppendingString:{@"_COMPANION", device}];
    v5 = [NTKMagmaFaceBundle localizedStringForKey:v4 comment:@"Magma custom edit mode name"];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___NTKMagmaFace;
    v5 = objc_msgSendSuper2(&v7, "_localizedNameOverrideForCustomEditMode:forDevice:", mode, device);
  }

  return v5;
}

- (id)_faceDescription
{
  device = [(NTKMagmaFace *)self device];
  supportsVictoryFaces = [device supportsVictoryFaces];

  if (supportsVictoryFaces)
  {
    [NTKMagmaFaceBundle localizedStringForKey:@"FACE_STYLE_MAGMA_DESCRIPTION_LIGHTHOUSE" tableSuffix:@"Lighthouse" comment:@"lighthouse description"];
  }

  else
  {
    [NTKMagmaFaceBundle localizedStringForKey:@"FACE_STYLE_MAGMA_DESCRIPTION" comment:@"description"];
  }
  v4 = ;

  return v4;
}

@end