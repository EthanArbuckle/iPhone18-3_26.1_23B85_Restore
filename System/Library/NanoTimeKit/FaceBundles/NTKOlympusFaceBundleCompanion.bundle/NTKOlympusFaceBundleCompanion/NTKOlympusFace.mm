@interface NTKOlympusFace
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)_complicationSlotDescriptors;
+ (id)_initialDefaultComplicationForSlot:(id)slot forDevice:(id)device;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_orderedComplicationSlots;
+ (id)_richComplicationSlotsForDevice:(id)device;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_localizedNameForComplicationSlot:(id)slot;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)editOptionThatHidesAllComplications;
- (int64_t)timeStyle;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)selectOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKOlympusFace

- (int64_t)timeStyle
{
  v2 = [(NTKOlympusFace *)self selectedOptionForCustomEditMode:15 slot:0];
  v3 = [v2 style] == 0;

  return v3;
}

- (void)selectOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  v10 = [(NTKOlympusFace *)self selectedOptionForCustomEditMode:mode slot:slotCopy];
  v12.receiver = self;
  v12.super_class = NTKOlympusFace;
  [(NTKOlympusFace *)&v12 selectOption:optionCopy forCustomEditMode:mode slot:slotCopy];

  if (mode == 15 && (NTKEqualObjects() & 1) == 0)
  {
    v11 = v10;
    if (![optionCopy style] || !objc_msgSend(v11, "style"))
    {
      [(NTKOlympusFace *)self _notifyObserversFaceTimeStyleChanged];
    }
  }
}

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
  deviceCategory = [deviceCopy deviceCategory];
  v5 = NTKShowVictoryFaces();

  if (deviceCategory == &dword_0 + 1)
  {
    return 1;
  }

  else
  {
    return v5 ^ 1;
  }
}

- (id)_faceDescription
{
  device = [(NTKOlympusFace *)self device];
  supportsVictoryFaces = [device supportsVictoryFaces];

  if (supportsVictoryFaces)
  {
    [NTKOlympusFaceBundle localizedStringForKey:@"FACE_STYLE_OLYMPUS_DESCRIPTION_KINCAID" tableSuffix:@"Kincaid" comment:@"kincaid description"];
  }

  else
  {
    [NTKOlympusFaceBundle localizedStringForKey:@"FACE_STYLE_OLYMPUS_DESCRIPTION" comment:@"description"];
  }
  v4 = ;

  return v4;
}

+ (id)_complicationSlotDescriptors
{
  v17 = +[NSMutableIndexSet indexSet];
  v2 = NTKAllSignatureCircularTypes();
  [v17 addIndexes:v2];

  v3 = NTKAllSignatureCornerTypes();
  v4 = NTKAllUtilityLargeComplicationTypes();
  v16 = NTKComplicationTypeRankedListWithDefaultTypes();
  v15 = NTKComplicationTypeRankedListWithDefaultTypes();
  v14 = NTKComplicationTypeRankedListWithDefaultTypes();
  v5 = NTKComplicationTypeRankedListWithDefaultTypes();
  v6 = NTKComplicationTypeRankedListWithDefaultTypes();
  v18[0] = NTKComplicationSlotTopLeft;
  v7 = NTKComplicationSlotDescriptor();
  v19[0] = v7;
  v18[1] = NTKComplicationSlotTopRight;
  v8 = NTKComplicationSlotDescriptor();
  v19[1] = v8;
  v18[2] = NTKComplicationSlotBottomLeft;
  v9 = NTKComplicationSlotDescriptor();
  v19[2] = v9;
  v18[3] = NTKComplicationSlotBottomRight;
  v10 = NTKComplicationSlotDescriptor();
  v19[3] = v10;
  v18[4] = NTKComplicationSlotBezel;
  v11 = NTKComplicationSlotDescriptor();
  v19[4] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:5];

  return v12;
}

- (id)_localizedNameForComplicationSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:NTKComplicationSlotBezel])
  {
    v5 = NTKClockFaceLocalizedString();
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKOlympusFace;
    v5 = [(NTKOlympusFace *)&v8 _localizedNameForComplicationSlot:slotCopy];
  }

  v6 = v5;

  return v6;
}

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotTopLeft;
  v4[1] = NTKComplicationSlotTopRight;
  v4[2] = NTKComplicationSlotBottomLeft;
  v4[3] = NTKComplicationSlotBottomRight;
  v4[4] = NTKComplicationSlotBezel;
  v2 = [NSArray arrayWithObjects:v4 count:5];

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

+ (id)_initialDefaultComplicationForSlot:(id)slot forDevice:(id)device
{
  if ([slot isEqualToString:{NTKComplicationSlotBezel, device}])
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
  switch(mode)
  {
    case 15:
      device = [(NTKOlympusFace *)self device];
      v8 = [NTKOlympusStyleEditOption optionWithStyle:0 forDevice:device];
      goto LABEL_7;
    case 12:
      device = [(NTKOlympusFace *)self device];
      v8 = [NTKOlympusDialShapeEditOption optionWithShape:0 forDevice:device];
      goto LABEL_7;
    case 10:
      device = [(NTKOlympusFace *)self device];
      v8 = [NTKOlympusColorEditOption optionWithOlympusColor:7 forDevice:device];
LABEL_7:
      v9 = v8;

      goto LABEL_9;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKOlympusFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKOlympusFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKOlympusFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKOlympusFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKOlympusFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKOlympusFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  switch(mode)
  {
    case 10:
      v4 = NTKOlympusColorEditOption_ptr;
LABEL_7:
      v5 = *v4;
      v6 = objc_opt_class();

      return v6;
    case 12:
      v4 = &off_101F0;
      goto LABEL_7;
    case 15:
      v4 = NTKOlympusStyleEditOption_ptr;
      goto LABEL_7;
  }

  v6 = 0;

  return v6;
}

- (id)editOptionThatHidesAllComplications
{
  device = [(NTKOlympusFace *)self device];
  v3 = [NTKOlympusDialShapeEditOption optionWithShape:1 forDevice:device];

  return v3;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  deviceCopy = device;
  if (mode == 15)
  {
    v7 = @"EDIT_MODE_LABEL_TIME";
    goto LABEL_5;
  }

  if (mode == 12)
  {
    v7 = @"EDIT_MODE_LABEL_DIAL";
LABEL_5:
    v8 = [(__CFString *)v7 stringByAppendingString:@"_COMPANION"];
    v9 = NTKCompanionClockFaceLocalizedString();

    goto LABEL_7;
  }

  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___NTKOlympusFace;
  v9 = objc_msgSendSuper2(&v11, "_localizedNameOverrideForCustomEditMode:forDevice:", mode, deviceCopy);
LABEL_7:

  return v9;
}

@end