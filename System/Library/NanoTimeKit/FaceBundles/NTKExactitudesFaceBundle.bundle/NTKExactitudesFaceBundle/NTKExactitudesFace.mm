@interface NTKExactitudesFace
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)_complicationSlotDescriptors;
+ (id)_initialDefaultComplicationForSlot:(id)slot forDevice:(id)device;
+ (id)_orderedComplicationSlots;
+ (id)_richComplicationSlotsForDevice:(id)device;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_localizedNameForComplicationSlot:(id)slot;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)complicationSlotsHiddenByEditOption:(id)option;
- (id)curatedGalleryBackgroundColors;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKExactitudesFace

- (id)curatedGalleryBackgroundColors
{
  v2 = NTKColorWithRGBA();
  v6[0] = v2;
  v3 = NTKColorWithRGBA();
  v6[1] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:2];

  return v4;
}

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
  v4 = [deviceCopy deviceCategory] == &dword_0 + 1;
  v5 = _os_feature_enabled_impl();
  isRunningNapiliGMOrLater = [deviceCopy isRunningNapiliGMOrLater];

  return v4 || (v5 & isRunningNapiliGMOrLater & 1) == 0;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 17)
  {
    v4 = off_30600;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (mode == 15)
  {
    v4 = &off_30608;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKExactitudesFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKExactitudesFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKExactitudesFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKExactitudesFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKExactitudesFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKExactitudesFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  if (mode == 17)
  {
    v7 = off_30600;
    goto LABEL_5;
  }

  if (mode == 15)
  {
    v7 = &off_30608;
LABEL_5:
    v8 = *v7;
    device = [(NTKExactitudesFace *)self device];
    v10 = [(__objc2_class *)v8 defaultOptionForDevice:device];

    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllSignatureCornerTypes();
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

+ (id)_initialDefaultComplicationForSlot:(id)slot forDevice:(id)device
{
  if ([slot isEqualToString:{NTKComplicationSlotBottomLeft, device}])
  {
    v4 = [NTKComplication timerComplicationWithDuration:900.0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotTopLeft;
  v4[1] = NTKComplicationSlotTopRight;
  v4[2] = NTKComplicationSlotBottomLeft;
  v4[3] = NTKComplicationSlotBottomRight;
  v2 = [NSArray arrayWithObjects:v4 count:4];

  return v2;
}

- (id)_localizedNameForComplicationSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:NTKComplicationSlotTopLeft])
  {
    v4 = @"TOP_LEFT";
  }

  else if ([slotCopy isEqualToString:NTKComplicationSlotTopRight])
  {
    v4 = @"TOP_RIGHT";
  }

  else if ([slotCopy isEqualToString:NTKComplicationSlotBottomLeft])
  {
    v4 = @"BOTTOM_LEFT";
  }

  else
  {
    v5 = [slotCopy isEqualToString:NTKComplicationSlotBottomRight];
    v4 = @"BOTTOM_RIGHT";
    if (!v5)
    {
      v4 = 0;
    }
  }

  v6 = [NSString stringWithFormat:@"SLOT_LABEL_%@", v4];
  v7 = NTKClockFaceLocalizedString();

  return v7;
}

- (id)complicationSlotsHiddenByEditOption:(id)option
{
  optionCopy = option;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([optionCopy style] == &dword_0 + 1 || objc_msgSend(optionCopy, "style") == &dword_0 + 2))
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
    v8.super_class = NTKExactitudesFace;
    v5 = [(NTKExactitudesFace *)&v8 complicationSlotsHiddenByEditOption:optionCopy];
  }

  v6 = v5;

  return v6;
}

@end