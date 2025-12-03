@interface NTKVictoryAnalogFace
+ (id)_complicationSlotDescriptors;
+ (id)_initialDefaultComplicationForSlot:(id)slot forDevice:(id)device;
+ (id)_orderedComplicationSlots;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)editOptionThatHidesAllComplications;
- (int64_t)_editModeForOldEncodingIndex:(int64_t)index;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKVictoryAnalogFace

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

+ (id)_initialDefaultComplicationForSlot:(id)slot forDevice:(id)device
{
  if ([slot isEqualToString:{NTKComplicationSlotBottomCenter, device}])
  {
    v4 = +[NTKVictoryAppLauncher complication];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  if (mode == 11)
  {
    device = [(NTKVictoryAnalogFace *)self device];
    v8 = [NTKVictoryAnalogStyleEditOption optionWithStyle:3 forDevice:device];
    goto LABEL_5;
  }

  if (mode == 10)
  {
    device = [(NTKVictoryAnalogFace *)self device];
    v8 = [NTKVictoryAnalogColorEditOption optionWithVictoryColor:2 forDevice:device];
LABEL_5:
    v9 = v8;

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKVictoryAnalogFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKVictoryAnalogFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKVictoryAnalogFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKVictoryAnalogFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKVictoryAnalogFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKVictoryAnalogFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 10)
  {
    v4 = off_C250;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (mode == 11)
  {
    v4 = &off_C258;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

- (id)editOptionThatHidesAllComplications
{
  device = [(NTKVictoryAnalogFace *)self device];
  v3 = [NTKVictoryAnalogStyleEditOption optionWithStyle:4 forDevice:device];

  return v3;
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