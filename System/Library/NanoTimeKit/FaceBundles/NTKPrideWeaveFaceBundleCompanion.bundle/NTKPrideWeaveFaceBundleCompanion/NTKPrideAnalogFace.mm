@interface NTKPrideAnalogFace
+ (BOOL)isAvailableForDevice:(id)device;
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)_complicationSlotDescriptors;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_orderedComplicationSlots;
- (BOOL)_hasOptionsForCustomEditMode:(int64_t)mode;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)complicationSlotsHiddenByEditOption:(id)option;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKPrideAnalogFace

- (id)_faceDescription
{
  _faceDescriptionKey = [(NTKPrideAnalogFace *)self _faceDescriptionKey];
  v3 = [NTKPrideAnalogFaceBundle localizedStringForKey:_faceDescriptionKey table:@"PrideAnalog" comment:@"Pride Analog face description"];

  return v3;
}

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllSmallComplicationTypes();
  v13[0] = NTKComplicationSlotTopLeft;
  v3 = NTKComplicationTypeRankedListWithDefaultTypes();
  v4 = NTKComplicationSlotDescriptor();
  v14[0] = v4;
  v13[1] = NTKComplicationSlotTopRight;
  v5 = NTKComplicationTypeRankedListWithDefaultTypes();
  v6 = NTKComplicationSlotDescriptor();
  v14[1] = v6;
  v13[2] = NTKComplicationSlotBottomLeft;
  v7 = NTKComplicationTypeRankedListWithDefaultTypes();
  v8 = NTKComplicationSlotDescriptor();
  v14[2] = v8;
  v13[3] = NTKComplicationSlotBottomRight;
  v9 = NTKComplicationTypeRankedListWithDefaultTypes();
  v10 = NTKComplicationSlotDescriptor();
  v14[3] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];

  return v11;
}

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotTopLeft;
  v4[1] = NTKComplicationSlotTopRight;
  v4[2] = NTKComplicationSlotBottomLeft;
  v4[3] = NTKComplicationSlotBottomRight;
  v2 = [NSArray arrayWithObjects:v4 count:4];

  return v2;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  if (mode == 12)
  {
    device = [(NTKPrideAnalogFace *)self device];
    pdrDeviceVersion = [device pdrDeviceVersion];

    v9 = NTKPrideAnalogStyleEditOption;
    device2 = [(NTKPrideAnalogFace *)self device];
    if (pdrDeviceVersion <= 0x50200)
    {
      goto LABEL_6;
    }

    v15 = [(NTKPrideStyleEditOption *)NTKPrideAnalogStyleEditOption optionWithStyle:2 forDevice:device2];

    device3 = [(NTKPrideAnalogFace *)self device];
    v17 = [v15 optionExistsInDevice:device3];

    if ((v17 & 1) == 0)
    {
      device2 = [(NTKPrideAnalogFace *)self device];
      v19 = [(NTKPrideStyleEditOption *)NTKPrideAnalogStyleEditOption optionWithStyle:1 forDevice:device2];

      v15 = v19;
      goto LABEL_8;
    }
  }

  else
  {
    if (mode == 15)
    {
      device4 = [(NTKPrideAnalogFace *)self device];
      deviceCategory = [device4 deviceCategory];

      v9 = NTKPrideAnalogShapeEditOption;
      device2 = [(NTKPrideAnalogFace *)self device];
      if (deviceCategory != &dword_0 + 1)
      {
        v11 = NTKPrideAnalogShapeEditOption;
        v12 = 1;
LABEL_7:
        v15 = [(__objc2_class *)v11 optionWithStyle:v12 forDevice:device2];
LABEL_8:

        goto LABEL_11;
      }

LABEL_6:
      v11 = v9;
      v12 = 0;
      goto LABEL_7;
    }

    v15 = 0;
  }

LABEL_11:

  return v15;
}

- (BOOL)_hasOptionsForCustomEditMode:(int64_t)mode
{
  if (mode != 15)
  {
    return 1;
  }

  device = [(NTKPrideAnalogFace *)self device];
  v4 = [device deviceCategory] != &dword_0 + 1;

  return v4;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  if (mode == 12)
  {
    v8 = [(NTKPrideAnalogFace *)self _optionClassForCustomEditMode:12];
    device = [(NTKPrideAnalogFace *)self device];
    v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

    v11 = v10 - 1;
  }

  else
  {
    v12 = [(NTKPrideAnalogFace *)self _optionClassForCustomEditMode:mode];
    device = [(NTKPrideAnalogFace *)self device];
    v11 = [(objc_class *)v12 indexOfOption:optionCopy forDevice:device];
  }

  return v11;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 12)
  {
    slot = [(NTKPrideAnalogFace *)self _optionClassForCustomEditMode:12, slot];
    device = [(NTKPrideAnalogFace *)self device];
    v7 = [(objc_class *)slot numberOfOptionsForDevice:device]- 1;
  }

  else
  {
    slot2 = [(NTKPrideAnalogFace *)self _optionClassForCustomEditMode:mode, slot];
    device = [(NTKPrideAnalogFace *)self device];
    v7 = [(objc_class *)slot2 numberOfOptionsForDevice:device];
  }

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 12)
  {
    slot = [(NTKPrideAnalogFace *)self _optionClassForCustomEditMode:12, 12, slot];
    device = [(NTKPrideAnalogFace *)self device];
    indexCopy = index + 1;
    v10 = slot;
  }

  else
  {
    v11 = [(NTKPrideAnalogFace *)self _optionClassForCustomEditMode:mode];
    device = [(NTKPrideAnalogFace *)self device];
    v10 = v11;
    indexCopy = index;
  }

  v12 = [(objc_class *)v10 optionAtIndex:indexCopy forDevice:device];

  return v12;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 15)
  {
    v4 = off_243E8;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (mode == 12)
  {
    v4 = &off_243F0;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
  if (NTKFaceStyleIsAvailable())
  {
    v4 = NTKGizmoOrCompanionAreRussian();
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (BOOL)isAvailableForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy pdrDeviceVersion] >= 0x50201)
  {
    v4 = ![NTKPrideAnalogFace isRestrictedForDevice:deviceCopy];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  deviceCopy = device;
  if (mode == 15)
  {
    v6 = @"EDIT_MODE_LABEL_DIAL";
    goto LABEL_5;
  }

  if (mode == 12)
  {
    v6 = @"EDIT_MODE_LABEL_STYLE";
LABEL_5:
    v7 = [(__CFString *)v6 stringByAppendingString:@"_COMPANION"];
    v8 = NTKCompanionClockFaceLocalizedString();

    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)complicationSlotsHiddenByEditOption:(id)option
{
  optionCopy = option;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [optionCopy style] == &dword_0 + 1)
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
    v8.super_class = NTKPrideAnalogFace;
    v5 = [(NTKPrideAnalogFace *)&v8 complicationSlotsHiddenByEditOption:optionCopy];
  }

  v6 = v5;

  return v6;
}

@end