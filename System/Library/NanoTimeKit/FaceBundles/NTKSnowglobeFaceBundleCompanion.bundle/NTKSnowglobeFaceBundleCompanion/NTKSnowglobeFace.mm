@interface NTKSnowglobeFace
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKSnowglobeFace

- (id)_faceDescription
{
  device = [(NTKFace *)self device];
  v3 = [device supportsPDRCapability:3171091165];
  v4 = @"FACE_STYLE_SNOWGLOBE_DESCRIPTION";
  if (v3)
  {
    v4 = @"FACE_STYLE_SNOWGLOBE_DESCRIPTION_LIGHTHOUSE";
  }

  v5 = v4;

  v6 = [(NTKFaceBundle *)NTKSnowglobeFaceBundle localizedStringForKey:v5 comment:@"Description"];

  return v6;
}

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy deviceCategory] == 1)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = [deviceCopy supportsPDRCapability:360081074] ^ 1;
  }

  return v4;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  v5 = [(NTKFace *)self device:mode];
  if (mode == 15)
  {
    v6 = [NTKSnowglobeBackgroundEditOption optionWithSnowglobeBackground:0 forDevice:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKSnowglobeFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKSnowglobeFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKSnowglobeFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKFace *)self device];
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
    v4 = [@"EDIT_MODE_LABEL_SNOWGLOBE_STYLE" stringByAppendingString:{@"_COMPANION", device}];
    v5 = [(NTKFaceBundle *)NTKSnowglobeFaceBundle localizedStringForKey:v4 comment:@"Snowglobe custom edit mode name"];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___NTKSnowglobeFace;
    v5 = objc_msgSendSuper2(&v7, sel__localizedNameOverrideForCustomEditMode_forDevice_, mode, device);
  }

  return v5;
}

@end