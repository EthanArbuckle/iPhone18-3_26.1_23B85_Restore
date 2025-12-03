@interface NTKAnalogMetallicFace
+ (id)_complicationSlotDescriptors;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_orderedComplicationSlots;
- (BOOL)_hasOptionsForCustomEditMode:(int64_t)mode;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)editOptionThatHidesAllComplications;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKAnalogMetallicFace

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllUtilitySmallComplicationTypes();
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

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  if (mode == 10)
  {
    device = [(NTKAnalogMetallicFace *)self device];
    v10 = [NTKMetallicColorEditOption optionWithColor:0 forDevice:device];
    goto LABEL_5;
  }

  if (mode == 15)
  {
    device2 = [(NTKAnalogMetallicFace *)self device];
    v8 = [device2 deviceCategory] != &dword_0 + 1;

    device = [(NTKAnalogMetallicFace *)self device];
    v10 = [NTKAnalogDialShapeEditOption optionWithShape:v8 forDevice:device];
LABEL_5:
    v11 = v10;

    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (BOOL)_hasOptionsForCustomEditMode:(int64_t)mode
{
  if (mode == 10)
  {
    return 1;
  }

  if (mode != 15)
  {
    return 0;
  }

  device = [(NTKAnalogMetallicFace *)self device];
  v4 = [device deviceCategory] != &dword_0 + 1;

  return v4;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKAnalogMetallicFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKAnalogMetallicFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKAnalogMetallicFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKAnalogMetallicFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKAnalogMetallicFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKAnalogMetallicFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 10)
  {
    v4 = &off_8158;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (mode == 15)
  {
    v4 = NTKAnalogDialShapeEditOption_ptr;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
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
    v5 = 0;
  }

  return v5;
}

- (id)editOptionThatHidesAllComplications
{
  device = [(NTKAnalogMetallicFace *)self device];
  deviceCategory = [device deviceCategory];

  if (deviceCategory == &dword_0 + 1)
  {
    v5 = 0;
  }

  else
  {
    device2 = [(NTKAnalogMetallicFace *)self device];
    v5 = [NTKAnalogDialShapeEditOption optionWithShape:1 forDevice:device2];
  }

  return v5;
}

@end