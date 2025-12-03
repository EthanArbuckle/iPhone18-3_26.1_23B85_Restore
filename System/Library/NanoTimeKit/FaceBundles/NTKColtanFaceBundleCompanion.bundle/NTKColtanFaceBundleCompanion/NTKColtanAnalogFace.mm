@interface NTKColtanAnalogFace
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)_complicationSlotDescriptors;
+ (id)_initialDefaultComplicationForSlot:(id)slot forDevice:(id)device;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_orderedComplicationSlots;
+ (id)_richComplicationSlotsForDevice:(id)device;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)editOptionThatHidesAllComplications;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKColtanAnalogFace

- (id)_faceDescription
{
  _faceDescriptionKey = [(NTKColtanAnalogFace *)self _faceDescriptionKey];
  v3 = [NTKColtanFaceBundle localizedStringForKey:_faceDescriptionKey comment:@"Coltan face description"];

  return v3;
}

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
  v4 = [deviceCopy deviceCategory] == &dword_0 + 1;
  v5 = [deviceCopy supportsPDRCapability:3049862277];

  return v4 || (v5 & 1) == 0;
}

+ (id)_complicationSlotDescriptors
{
  v14 = +[NSMutableIndexSet indexSet];
  v2 = NTKAllSignatureCircularTypes();
  [v14 addIndexes:v2];

  v3 = NTKAllSignatureCornerTypes();
  v4 = NTKComplicationTypeRankedListWithDefaultTypes();
  v5 = NTKComplicationTypeRankedListWithDefaultTypes();
  v6 = NTKComplicationTypeRankedListWithDefaultTypes();
  v7 = NTKComplicationTypeRankedListWithDefaultTypes();
  v15[0] = NTKComplicationSlotTopLeft;
  v8 = NTKComplicationSlotDescriptor();
  v16[0] = v8;
  v15[1] = NTKComplicationSlotTopRight;
  v9 = NTKComplicationSlotDescriptor();
  v16[1] = v9;
  v15[2] = NTKComplicationSlotBottomLeft;
  v10 = NTKComplicationSlotDescriptor();
  v16[2] = v10;
  v15[3] = NTKComplicationSlotBottomRight;
  v11 = NTKComplicationSlotDescriptor();
  v16[3] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:4];

  return v12;
}

+ (id)_initialDefaultComplicationForSlot:(id)slot forDevice:(id)device
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:NTKComplicationSlotTopLeft])
  {
    v5 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:NTKBundleComplicationNoiseBundleIdentifier appBundleIdentifier:NTKBundleComplicationNoiseAppBundleIdentifier complicationDescriptor:0];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  if ([slotCopy isEqualToString:NTKComplicationSlotBottomLeft])
  {
    v5 = [NTKComplication timerComplicationWithDuration:180.0];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
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

+ (id)_richComplicationSlotsForDevice:(id)device
{
  v5[0] = NTKComplicationSlotTopLeft;
  v5[1] = NTKComplicationSlotTopRight;
  v5[2] = NTKComplicationSlotBottomLeft;
  v5[3] = NTKComplicationSlotBottomRight;
  v3 = [NSArray arrayWithObjects:v5 count:4];

  return v3;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  if (mode == 11)
  {
    device = [(NTKColtanAnalogFace *)self device];
    v8 = [NTKColtanDensityEditOption optionWithDensity:0 forDevice:device];
    goto LABEL_5;
  }

  if (mode == 12)
  {
    device = [(NTKColtanAnalogFace *)self device];
    v8 = [NTKAnalogDialShapeEditOption optionWithShape:1 forDevice:device];
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
  slot = [(NTKColtanAnalogFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKColtanAnalogFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKColtanAnalogFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKColtanAnalogFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKColtanAnalogFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKColtanAnalogFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 12)
  {
    v4 = NTKAnalogDialShapeEditOption_ptr;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (mode == 11)
  {
    v4 = &off_10250;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
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

- (id)editOptionThatHidesAllComplications
{
  device = [(NTKColtanAnalogFace *)self device];
  v3 = [NTKAnalogDialShapeEditOption optionWithShape:1 forDevice:device];

  return v3;
}

@end