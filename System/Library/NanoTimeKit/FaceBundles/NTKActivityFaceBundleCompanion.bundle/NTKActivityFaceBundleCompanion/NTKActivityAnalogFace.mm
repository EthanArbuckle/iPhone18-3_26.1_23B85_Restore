@interface NTKActivityAnalogFace
+ (id)_complicationSlotDescriptors;
+ (id)_orderedComplicationSlots;
+ (id)richComplicationSlotsForDevice:(id)device;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (int64_t)_editModeForOldEncodingIndex:(int64_t)index;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)applyPreviewConfigurationWithFamily:(int64_t)family faceColor:(int64_t)color;
@end

@implementation NTKActivityAnalogFace

- (id)_faceDescription
{
  if (NTKIsWheelchairUser())
  {
    v2 = @"FACE_STYLE_ACTIVITY_ANALOG_ROLL_DESCRIPTION";
  }

  else
  {
    v2 = @"FACE_STYLE_ACTIVITY_ANALOG_STAND_DESCRIPTION";
  }

  return [NTKActivityAnalogFaceBundle localizedStringForKey:v2 comment:@"description"];
}

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllSmallComplicationTypes();
  v3 = NTKAllUtilityLargeComplicationTypes();
  v12[0] = NTKComplicationSlotTopLeft;
  v4 = NTKComplicationTypeRankedListWithDefaultTypes();
  v5 = NTKComplicationSlotDescriptor();
  v13[0] = v5;
  v12[1] = NTKComplicationSlotTopRight;
  v6 = NTKComplicationTypeRankedListWithDefaultTypes();
  v7 = NTKComplicationSlotDescriptor();
  v13[1] = v7;
  v12[2] = NTKComplicationSlotBottomCenter;
  v8 = NTKComplicationTypeRankedListWithDefaultTypes();
  v9 = NTKComplicationSlotDescriptor();
  v13[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];

  return v10;
}

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotTopLeft;
  v4[1] = NTKComplicationSlotTopRight;
  v4[2] = NTKComplicationSlotBottomCenter;
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

+ (id)richComplicationSlotsForDevice:(id)device
{
  v5[0] = NTKComplicationSlotTopLeft;
  v5[1] = NTKComplicationSlotTopRight;
  v3 = [NSArray arrayWithObjects:v5 count:2];

  return v3;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  if (mode == 10)
  {
    device = [(NTKActivityAnalogFace *)self device];
    v8 = [NTKFaceColorEditOption optionWithFaceColor:7 forDevice:device];
    goto LABEL_5;
  }

  if (mode == 11)
  {
    device = [(NTKActivityAnalogFace *)self device];
    v8 = [NTKActivityAnalogDensityEditOption optionWithDensity:1 forDevice:device];
LABEL_5:
    v9 = v8;

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKActivityAnalogFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKActivityAnalogFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKActivityAnalogFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKActivityAnalogFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKActivityAnalogFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKActivityAnalogFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 11)
  {
    v4 = &off_20480;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (mode == 10)
  {
    v4 = NTKFaceColorEditOption_ptr;
    goto LABEL_5;
  }

  v6 = 0;

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
    v5 = qword_18870[color];
  }

  device = [(NTKActivityAnalogFace *)self device];
  v7 = [NTKFaceColorEditOption optionWithFaceColor:v5 forDevice:device];
  pigmentEditOption = [v7 pigmentEditOption];

  [(NTKActivityAnalogFace *)self selectOption:pigmentEditOption forCustomEditMode:10 slot:0];
  v8 = [NTKComplication anyComplicationOfType:10];
  [(NTKActivityAnalogFace *)self setComplication:v8 forSlot:NTKComplicationSlotTopLeft];
  v9 = [NTKComplication anyComplicationOfType:18];

  [(NTKActivityAnalogFace *)self setComplication:v9 forSlot:NTKComplicationSlotTopRight];
  v10 = [NTKComplication anyComplicationOfType:10];

  [(NTKActivityAnalogFace *)self setComplication:v10 forSlot:NTKComplicationSlotBottomCenter];
}

- (int64_t)_editModeForOldEncodingIndex:(int64_t)index
{
  v3 = 10;
  if (index != 1)
  {
    v3 = 0;
  }

  if (index)
  {
    return v3;
  }

  else
  {
    return 11;
  }
}

@end