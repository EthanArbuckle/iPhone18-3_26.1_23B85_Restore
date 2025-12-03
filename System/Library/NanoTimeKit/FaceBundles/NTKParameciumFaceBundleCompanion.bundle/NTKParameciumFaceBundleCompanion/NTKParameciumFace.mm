@interface NTKParameciumFace
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)_initialDefaultComplicationForSlot:(id)slot forDevice:(id)device;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)complicationConfiguration;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)complicationSlotsHiddenByEditOption:(id)option;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKParameciumFace

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
  v4 = _os_feature_enabled_impl();
  v5 = [deviceCopy supportsPDRCapability:2080325187];
  if ([deviceCopy sizeClass] && ((objc_msgSend(deviceCopy, "sizeClass") != &dword_0 + 1) & v5 & v4) == 1)
  {
    v6 = NTKGizmoOrCompanionAreRussian();
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

+ (id)complicationConfiguration
{
  if (qword_1A3E8 != -1)
  {
    sub_8E9C();
  }

  v3 = qword_1A3E0;

  return v3;
}

+ (id)_initialDefaultComplicationForSlot:(id)slot forDevice:(id)device
{
  if ([slot isEqualToString:{NTKComplicationSlotBottomLeft, device}])
  {
    v4 = [NTKComplication timerComplicationWithDuration:180.0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)complicationSlotsHiddenByEditOption:(id)option
{
  optionCopy = option;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [optionCopy style] == &dword_0 + 2)
  {
    v9[0] = NTKComplicationSlotTopLeft;
    v9[1] = NTKComplicationSlotTopRight;
    v9[2] = NTKComplicationSlotBottomLeft;
    v9[3] = NTKComplicationSlotBottomRight;
    v5 = [NSArray arrayWithObjects:v9 count:4];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKParameciumFace;
    v5 = [(NTKParameciumFace *)&v8 complicationSlotsHiddenByEditOption:optionCopy];
  }

  v6 = v5;

  return v6;
}

- (id)_faceDescription
{
  _faceDescriptionKey = [(NTKParameciumFace *)self _faceDescriptionKey];
  v3 = [NTKParameciumFaceBundle localizedStringForKey:_faceDescriptionKey comment:@"Paramecium face description"];

  return v3;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  v5 = [(NTKParameciumFace *)self device:mode];
  if (mode == 12)
  {
    v6 = [NTKParameciumStyleEditOption optionWithParameciumStyle:2 forDevice:v5];
    goto LABEL_5;
  }

  if (mode == 15)
  {
    v6 = [NTKParameciumBackgroundEditOption optionWithParameciumBackground:0 forDevice:v5];
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKParameciumFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKParameciumFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKParameciumFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKParameciumFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKParameciumFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKParameciumFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 15)
  {
    v4 = off_142F8;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (mode == 12)
  {
    v4 = &off_14300;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  deviceCopy = device;
  switch(mode)
  {
    case 15:
      v7 = @"EDIT_MODE_LABEL_PARAMECIUM_STYLE";
      goto LABEL_7;
    case 14:
      v7 = @"EDIT_MODE_LABEL_PARAMECIUM_DIAL";
      goto LABEL_7;
    case 12:
      v7 = @"EDIT_MODE_LABEL_PARAMECIUM_CONTENT";
LABEL_7:
      v8 = [(__CFString *)v7 stringByAppendingString:@"_COMPANION"];
      v9 = [NTKParameciumFaceBundle localizedStringForKey:v8 comment:@"Paramecium custom edit mode name"];

      goto LABEL_9;
  }

  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___NTKParameciumFace;
  v9 = objc_msgSendSuper2(&v11, "_localizedNameOverrideForCustomEditMode:forDevice:", mode, deviceCopy);
LABEL_9:

  return v9;
}

@end