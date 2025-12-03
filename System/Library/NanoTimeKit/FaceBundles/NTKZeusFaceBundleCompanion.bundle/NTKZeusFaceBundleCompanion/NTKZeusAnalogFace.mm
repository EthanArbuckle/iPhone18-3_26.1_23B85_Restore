@interface NTKZeusAnalogFace
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)_complicationSlotDescriptors;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_orderedComplicationSlots;
- (BOOL)customComplication:(id)complication supportsFamilies:(id)families forSlot:(id)slot;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_complicationMigrationPaths;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)customComplicationControllerForComplication:(id)complication variant:(id)variant slot:(id)slot;
- (id)customComplicationsForSlot:(id)slot;
- (int64_t)_editModeForOldEncodingIndex:(int64_t)index;
- (int64_t)customComplicationFamilyForComplication:(id)complication slot:(id)slot;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKZeusAnalogFace

- (int64_t)_editModeForOldEncodingIndex:(int64_t)index
{
  v3 = 11;
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
    return 13;
  }
}

- (id)_complicationMigrationPaths
{
  v4[0] = @"upper";
  v4[1] = @"lower";
  v5[0] = NTKComplicationSlotTop;
  v5[1] = NTKComplicationSlotBottom;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

+ (BOOL)isRestrictedForDevice:(id)device
{
  if ([device collectionType] == &dword_4 + 1)
  {
    return 0;
  }

  else
  {
    return NTKShowHardwareSpecificFaces() ^ 1;
  }
}

+ (id)_complicationSlotDescriptors
{
  v11 = xmmword_37BC8;
  v12 = 5;
  v2 = [NSIndexSet indexSetWithIndexes:&v11 count:3];
  nTKComplicationSlotTop = [NSIndexSet indexSetWithIndex:11, NTKComplicationSlotTop];
  v4 = NTKComplicationSlotDescriptor();
  v9[1] = NTKComplicationSlotBottom;
  v10[0] = v4;
  v5 = NTKComplicationTypeRankedListWithDefaultTypes();
  v6 = NTKComplicationSlotDescriptor();
  v10[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotTop;
  v4[1] = NTKComplicationSlotBottom;
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (id)customComplicationControllerForComplication:(id)complication variant:(id)variant slot:(id)slot
{
  complicationCopy = complication;
  variantCopy = variant;
  complicationType = [complicationCopy complicationType];
  if (complicationType == &dword_4)
  {
    v10 = off_444A0;
    goto LABEL_7;
  }

  if (complicationType == (&dword_4 + 1))
  {
    v10 = off_444A8;
    goto LABEL_7;
  }

  if (complicationType == (&dword_8 + 3))
  {
    v10 = off_44478;
LABEL_7:
    v11 = objc_alloc(*v10);
    device = [(NTKZeusAnalogFace *)self device];
    v13 = [v11 initWithComplication:complicationCopy variant:variantCopy device:device];

    goto LABEL_9;
  }

  v13 = 0;
LABEL_9:

  return v13;
}

- (id)customComplicationsForSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqual:NTKComplicationSlotTop])
  {
    v4 = [NTKComplication allComplicationsOfType:11];
  }

  else if ([slotCopy isEqual:NTKComplicationSlotBottom])
  {
    v4 = objc_opt_new();
    v5 = [NTKComplication allComplicationsOfType:5];
    [v4 addObjectsFromArray:v5];

    v6 = [NTKComplication allComplicationsOfType:4];
    [v4 addObjectsFromArray:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)customComplicationFamilyForComplication:(id)complication slot:(id)slot
{
  complicationCopy = complication;
  slotCopy = slot;
  if ([slotCopy isEqual:NTKComplicationSlotTop])
  {
    v8 = &NTKComplicationFamilyZeusUpper;
  }

  else
  {
    if (![slotCopy isEqual:NTKComplicationSlotBottom])
    {
      v11.receiver = self;
      v11.super_class = NTKZeusAnalogFace;
      v9 = [(NTKZeusAnalogFace *)&v11 customComplicationFamilyForComplication:complicationCopy slot:slotCopy];
      goto LABEL_7;
    }

    v8 = &NTKComplicationFamilyZeusLower;
  }

  v9 = *v8;
LABEL_7:

  return v9;
}

- (BOOL)customComplication:(id)complication supportsFamilies:(id)families forSlot:(id)slot
{
  familiesCopy = families;
  slotCopy = slot;
  complicationType = [complication complicationType];
  if ((complicationType - 4) >= 2)
  {
    if (complicationType == &dword_8 + 3 && [slotCopy isEqual:NTKComplicationSlotTop])
    {
      v10 = &NTKComplicationFamilyZeusUpper;
      goto LABEL_7;
    }

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  if (([slotCopy isEqual:NTKComplicationSlotBottom] & 1) == 0)
  {
    goto LABEL_8;
  }

  v10 = &NTKComplicationFamilyZeusLower;
LABEL_7:
  v11 = [NSNumber numberWithInteger:*v10];
  v12 = [familiesCopy containsObject:v11];

LABEL_9:
  return v12;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  v5 = [(NTKZeusAnalogFace *)self device:mode];
  switch(mode)
  {
    case 10:
      v6 = [NTKZeusColorEditOption optionWithColor:7 forDevice:v5];
      goto LABEL_7;
    case 11:
      v6 = [NTKZeusAnalogDensityEditOption optionWithDensity:3 forDevice:v5];
      goto LABEL_7;
    case 13:
      v6 = [NTKZeusAnalogStyleEditOption optionWithStyle:1 forDevice:v5];
LABEL_7:
      v7 = v6;
      goto LABEL_9;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  if (mode == 11)
  {
    v4 = [@"EDIT_MODE_LABEL_DIAL" stringByAppendingString:{@"_COMPANION", device}];
    v5 = NTKCompanionClockFaceLocalizedString();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___NTKZeusAnalogFace;
    v5 = objc_msgSendSuper2(&v7, "_localizedNameOverrideForCustomEditMode:forDevice:", mode, device);
  }

  return v5;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKZeusAnalogFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKZeusAnalogFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKZeusAnalogFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKZeusAnalogFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKZeusAnalogFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKZeusAnalogFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 10 || mode == 13 || mode == 11)
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
  _faceDescriptionKey = [(NTKZeusAnalogFace *)self _faceDescriptionKey];
  v3 = [NTKZeusAnalogFaceBundle localizedStringForKey:_faceDescriptionKey comment:&stru_45510];

  return v3;
}

@end