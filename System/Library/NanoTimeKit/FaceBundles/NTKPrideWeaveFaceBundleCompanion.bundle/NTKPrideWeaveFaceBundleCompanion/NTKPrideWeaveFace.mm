@interface NTKPrideWeaveFace
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

@implementation NTKPrideWeaveFace

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

+ (id)complicationConfiguration
{
  if (qword_2CCA8 != -1)
  {
    sub_15200();
  }

  v3 = qword_2CCA0;

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

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 12)
  {
    v4 = [(NTKPrideWeaveFace *)self device:12];
    v5 = [NTKAnalogDialShapeEditOption optionWithShape:1 forDevice:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKPrideWeaveFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKPrideWeaveFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKPrideWeaveFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKPrideWeaveFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKPrideWeaveFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKPrideWeaveFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (id)complicationSlotsHiddenByEditOption:(id)option
{
  optionCopy = option;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [optionCopy dialShape] == &dword_0 + 1)
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
    v8.super_class = NTKPrideWeaveFace;
    v5 = [(NTKPrideWeaveFace *)&v8 complicationSlotsHiddenByEditOption:optionCopy];
  }

  v6 = v5;

  return v6;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 12)
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
  device = [(NTKPrideWeaveFace *)self device];
  v3 = [device supportsPDRCapability:3171091165];

  if (v3)
  {
    v4 = @"FACE_STYLE_PRIDE_WEAVE_DESCRIPTION_LIGHTHOUSE";
  }

  else
  {
    v4 = @"FACE_STYLE_PRIDE_WEAVE_DESCRIPTION";
  }

  return [NTKPrideWeaveFaceBundle localizedStringForKey:v4 comment:&stru_24DF0];
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  if (mode == 12)
  {
    v4 = [@"EDIT_MODE_LABEL_DIAL" stringByAppendingString:{@"_COMPANION", device}];
    v5 = NTKCompanionClockFaceLocalizedString();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end