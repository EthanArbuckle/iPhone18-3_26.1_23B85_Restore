@interface NTKColorAnalogFace
+ (id)_complicationSlotDescriptors;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_orderedComplicationSlots;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_defaultOptionForMissingCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)complicationSlotsHiddenByEditOption:(id)option;
- (int64_t)_editModeForOldEncodingIndex:(int64_t)index;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)applyPreviewConfigurationWithFamily:(int64_t)family faceColor:(int64_t)color;
@end

@implementation NTKColorAnalogFace

- (id)_faceDescription
{
  _faceDescriptionKey = [(NTKColorAnalogFace *)self _faceDescriptionKey];
  v3 = [NTKColorAnalogFaceBundle localizedStringForKey:_faceDescriptionKey comment:@"Color Analog Face Description"];

  return v3;
}

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllSmallComplicationTypes();
  v15[0] = NTKComplicationSlotTopLeft;
  v14 = NTKComplicationTypeRankedListWithDefaultTypes();
  v13 = NTKComplicationSlotDescriptor();
  v16[0] = v13;
  v15[1] = NTKComplicationSlotTopRight;
  v3 = NTKComplicationTypeRankedListWithDefaultTypes();
  v4 = NTKComplicationSlotDescriptor();
  v16[1] = v4;
  v15[2] = NTKComplicationSlotBottomLeft;
  v5 = NTKComplicationTypeRankedListWithDefaultTypes();
  v6 = NTKComplicationSlotDescriptor();
  v16[2] = v6;
  v15[3] = NTKComplicationSlotBottomRight;
  v7 = NTKComplicationTypeRankedListWithDefaultTypes();
  v8 = NTKComplicationSlotDescriptor();
  v16[3] = v8;
  v15[4] = NTKComplicationSlotMonogram;
  v9 = [NSIndexSet indexSetWithIndex:14];
  v10 = NTKComplicationSlotDescriptor();
  v16[4] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:5];

  return v11;
}

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotTopLeft;
  v4[1] = NTKComplicationSlotTopRight;
  v4[2] = NTKComplicationSlotMonogram;
  v4[3] = NTKComplicationSlotBottomLeft;
  v4[4] = NTKComplicationSlotBottomRight;
  v2 = [NSArray arrayWithObjects:v4 count:5];

  return v2;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 10)
  {
    v5 = [(NTKColorAnalogFace *)self device:10];
    v6 = NTKDefaultFaceColorForDeviceCollection();

    device = [(NTKColorAnalogFace *)self device];
    [NTKFaceColorEditOption optionWithFaceColor:v6 forDevice:device];
  }

  else
  {
    device = [(NTKColorAnalogFace *)self device:mode];
    [NTKColorAnalogStyleEditOption optionWithStyle:1 forDevice:device];
  }
  v8 = ;

  return v8;
}

- (id)_defaultOptionForMissingCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 15)
  {
    v4 = [(NTKColorAnalogFace *)self device:15];
    v5 = [NTKColorAnalogStyleEditOption optionWithStyle:0 forDevice:v4];
  }

  else
  {
    v5 = [(NTKColorAnalogFace *)self _defaultOptionForCustomEditMode:mode slot:slot];
  }

  return v5;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  v4 = NTKFaceColorEditOption_ptr;
  if (mode != 10)
  {
    v4 = &off_10260;
  }

  v5 = *v4;
  device = [(NTKColorAnalogFace *)self device];
  v7 = [v5 numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v6 = NTKFaceColorEditOption_ptr;
  if (mode != 10)
  {
    v6 = &off_10260;
  }

  v7 = *v6;
  device = [(NTKColorAnalogFace *)self device];
  v9 = [v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v6 = NTKFaceColorEditOption_ptr;
  if (mode != 10)
  {
    v6 = &off_10260;
  }

  v7 = *v6;
  optionCopy = option;
  device = [(NTKColorAnalogFace *)self device];
  v10 = [v7 indexOfOption:optionCopy forDevice:device];

  return v10;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  if (mode == 15)
  {
    v4 = [@"EDIT_MODE_LABEL_DIAL" stringByAppendingString:{@"_COMPANION", device}];
    v5 = NTKCompanionClockFaceLocalizedString();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___NTKColorAnalogFace;
    v5 = objc_msgSendSuper2(&v7, "_localizedNameOverrideForCustomEditMode:forDevice:", mode, device);
  }

  return v5;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 10)
  {
    v4 = NTKFaceColorEditOption_ptr;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (mode == 15)
  {
    v4 = &off_10260;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
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
    v8.super_class = NTKColorAnalogFace;
    v5 = [(NTKColorAnalogFace *)&v8 complicationSlotsHiddenByEditOption:optionCopy];
  }

  v6 = v5;

  return v6;
}

- (void)applyPreviewConfigurationWithFamily:(int64_t)family faceColor:(int64_t)color
{
  if (color > 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_A110[color];
  }

  device = [(NTKColorAnalogFace *)self device];
  v13 = [NTKFaceColorEditOption optionWithFaceColor:v5 forDevice:device];

  pigmentEditOption = [v13 pigmentEditOption];
  [(NTKColorAnalogFace *)self selectOption:pigmentEditOption forCustomEditMode:10 slot:0];

  device2 = [(NTKColorAnalogFace *)self device];
  v9 = [NTKColorAnalogStyleEditOption optionWithStyle:1 forDevice:device2];

  [(NTKColorAnalogFace *)self selectOption:v9 forCustomEditMode:15 slot:0];
  v10 = [NTKComplication anyComplicationOfType:7];
  [(NTKColorAnalogFace *)self setComplication:v10 forSlot:NTKComplicationSlotTopRight];
  v11 = [NTKComplication anyComplicationOfType:17];

  [(NTKColorAnalogFace *)self setComplication:v11 forSlot:NTKComplicationSlotBottomLeft];
  v12 = [NTKComplication anyComplicationOfType:10];

  [(NTKColorAnalogFace *)self setComplication:v12 forSlot:NTKComplicationSlotBottomRight];
}

- (int64_t)_editModeForOldEncodingIndex:(int64_t)index
{
  if (index)
  {
    return 0;
  }

  else
  {
    return 10;
  }
}

@end