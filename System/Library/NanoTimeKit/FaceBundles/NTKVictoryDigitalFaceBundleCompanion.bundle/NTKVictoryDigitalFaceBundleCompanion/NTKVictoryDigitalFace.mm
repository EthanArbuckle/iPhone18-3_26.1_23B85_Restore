@interface NTKVictoryDigitalFace
+ (id)_complicationSlotDescriptors;
+ (id)_initialDefaultComplicationForSlot:(id)slot forDevice:(id)device;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_orderedComplicationSlots;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_localizedNameForComplicationSlot:(id)slot;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (int64_t)_editModeForOldEncodingIndex:(int64_t)index;
- (int64_t)preferredComplicationFamilyForComplication:(id)complication withSlot:(id)slot;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKVictoryDigitalFace

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllCircularMediumComplicationTypes();
  v3 = NTKAllUtilityLargeComplicationTypes();
  v12[0] = NTKComplicationSlot1;
  v4 = NTKComplicationTypeRankedListWithDefaultTypes();
  v5 = NTKComplicationSlotDescriptor();
  v13[0] = v5;
  v12[1] = NTKComplicationSlot2;
  v6 = NTKComplicationTypeRankedListWithDefaultTypes();
  v7 = NTKComplicationSlotDescriptor();
  v13[1] = v7;
  v12[2] = NTKComplicationSlotBottom;
  v8 = NTKComplicationTypeRankedListWithDefaultTypes();
  v9 = NTKComplicationSlotDescriptor();
  v13[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];

  return v10;
}

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlot1;
  v4[1] = NTKComplicationSlot2;
  v4[2] = NTKComplicationSlotBottom;
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

- (id)_localizedNameForComplicationSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:NTKComplicationSlot1])
  {
    v4 = @"MIDDLE_LEFT";
  }

  else if ([slotCopy isEqualToString:NTKComplicationSlot2])
  {
    v4 = @"BOTTOM_LEFT";
  }

  else
  {
    v5 = [slotCopy isEqualToString:NTKComplicationSlotBottom];
    v4 = @"BOTTOM";
    if (!v5)
    {
      v4 = 0;
    }
  }

  v6 = [NSString stringWithFormat:@"SLOT_LABEL_%@", v4];
  v7 = NTKClockFaceLocalizedString();

  return v7;
}

+ (id)_initialDefaultComplicationForSlot:(id)slot forDevice:(id)device
{
  if ([slot isEqualToString:{NTKComplicationSlotBottom, device}])
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
  if (mode == 13)
  {
    device = [(NTKVictoryDigitalFace *)self device];
    v8 = [NTKVictoryDigitalStyleEditOption optionWithStyle:3 forDevice:device];
    goto LABEL_5;
  }

  if (mode == 10)
  {
    device = [(NTKVictoryDigitalFace *)self device];
    v8 = [NTKVictoryDigitalColorEditOption optionWithVictoryColor:2 forDevice:device];
LABEL_5:
    v9 = v8;

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  if (mode == 13)
  {
    v4 = [@"EDIT_MODE_LABEL_STYLE" stringByAppendingString:{@"_COMPANION", device}];
    v5 = NTKCompanionClockFaceLocalizedString();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___NTKVictoryDigitalFace;
    v5 = objc_msgSendSuper2(&v7, "_localizedNameOverrideForCustomEditMode:forDevice:", mode, device);
  }

  return v5;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKVictoryDigitalFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKVictoryDigitalFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKVictoryDigitalFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKVictoryDigitalFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKVictoryDigitalFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKVictoryDigitalFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 10)
  {
    v4 = off_10258;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (mode == 13)
  {
    v4 = &off_10260;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

- (int64_t)preferredComplicationFamilyForComplication:(id)complication withSlot:(id)slot
{
  complicationCopy = complication;
  slotCopy = slot;
  if ([objc_opt_class() usesCircularMedium] && ((objc_msgSend(slotCopy, "isEqualToString:", NTKComplicationSlot1) & 1) != 0 || objc_msgSend(slotCopy, "isEqualToString:", NTKComplicationSlot2)))
  {
    v8 = CLKComplicationFamilyCircularMedium;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NTKVictoryDigitalFace;
    v8 = [(NTKVictoryDigitalFace *)&v10 preferredComplicationFamilyForComplication:complicationCopy withSlot:slotCopy];
  }

  return v8;
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
    return 13;
  }
}

@end