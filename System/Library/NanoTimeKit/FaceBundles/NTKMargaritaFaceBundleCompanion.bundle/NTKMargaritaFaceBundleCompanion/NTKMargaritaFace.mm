@interface NTKMargaritaFace
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)_defaultSelectedSlotForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_orderedComplicationSlots;
+ (id)_richComplicationSlotsForDevice:(id)device;
+ (id)_slotsForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)firstStripeSlot;
+ (unint64_t)defaultColorForStripeIndex:(int64_t)index;
+ (unint64_t)totalStripeCount;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_complicationSlotDescriptors;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_localizedNameForDynamicSectionCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)complicationSlotsHiddenByEditOption:(id)option;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfDynamicSections;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKMargaritaFace

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy deviceCategory] == &dword_0 + 1)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = [deviceCopy supportsPDRCapability:3588072423] ^ 1;
  }

  return v4;
}

- (id)_complicationSlotDescriptors
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

+ (id)_slotsForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  if (mode == 10)
  {
    _colorSlots = [self _colorSlots];
  }

  else
  {
    _colorSlots = 0;
  }

  return _colorSlots;
}

+ (unint64_t)totalStripeCount
{
  _colorSlots = [self _colorSlots];
  v3 = [_colorSlots count];

  return v3;
}

+ (id)firstStripeSlot
{
  _colorSlots = [self _colorSlots];
  firstObject = [_colorSlots firstObject];

  return firstObject;
}

+ (id)_defaultSelectedSlotForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  if (mode == 10)
  {
    return @"0";
  }

  else
  {
    return 0;
  }
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  device = [(NTKMargaritaFace *)self device];
  v8 = 0;
  if (mode > 13)
  {
    if (mode == 14)
    {
      v9 = [NTKMargaritaRotationEditOption optionWithRotation:0 forDevice:device];
    }

    else
    {
      if (mode != 15)
      {
        goto LABEL_11;
      }

      v9 = [NTKMargaritaStyleEditOption optionWithMargaritaStyle:0 forDevice:device];
    }
  }

  else if (mode == 10)
  {
    v9 = +[NTKMargaritaColorEditOption optionWithMargaritaColor:forDevice:](NTKMargaritaColorEditOption, "optionWithMargaritaColor:forDevice:", [objc_opt_class() defaultColorForStripeIndex:{objc_msgSend(slotCopy, "integerValue")}], device);
  }

  else
  {
    if (mode != 11)
    {
      goto LABEL_11;
    }

    v9 = [NTKMargaritaStripeCountEditOption optionWithCount:9 forDevice:device];
  }

  v8 = v9;
LABEL_11:

  return v8;
}

+ (unint64_t)defaultColorForStripeIndex:(int64_t)index
{
  if (index > 8)
  {
    return 0;
  }

  else
  {
    return qword_CC58[index];
  }
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKMargaritaFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKMargaritaFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKMargaritaFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKMargaritaFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKMargaritaFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKMargaritaFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode - 10) <= 5 && ((0x33u >> (mode - 10)))
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_numberOfDynamicSections
{
  v2 = [(NTKMargaritaFace *)self selectedOptionForCustomEditMode:11 slot:0];
  objc_opt_class();
  v3 = 0;
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 count];
  }

  return v3;
}

- (id)_localizedNameForDynamicSectionCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 10)
  {
    slotCopy = slot;
    v6 = objc_opt_class();
    device = [(NTKMargaritaFace *)self device];
    slotCopy2 = [v6 localizedNameForCustomEditMode:10 forDevice:device];

    integerValue = [slotCopy integerValue];
    v10 = [NSString localizedStringWithFormat:slotCopy2, integerValue];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = NTKMargaritaFace;
    slotCopy2 = slot;
    v10 = [(NTKMargaritaFace *)&v14 _localizedNameForDynamicSectionCustomEditMode:mode slot:slotCopy2];
  }

  v12 = v10;

  return v12;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  deviceCopy = device;
  v7 = deviceCopy;
  switch(mode)
  {
    case 15:
      if ([deviceCopy supportsPDRCapability:3669496134])
      {
        v8 = @"EDIT_MODE_LABEL_MARGARITA_STYLE";
      }

      else
      {
        v8 = @"EDIT_MODE_LABEL_MARGARITA_STYLE_LEGACY";
      }

      goto LABEL_9;
    case 11:
      v8 = @"EDIT_MODE_LABEL_MARGARITA_DENSITY";
      goto LABEL_9;
    case 10:
      v8 = @"EDIT_MODE_LABEL_MARGARITA_COLOR";
LABEL_9:
      v9 = [(__CFString *)v8 stringByAppendingString:@"_COMPANION"];
      v10 = [NTKMargaritaFaceBundle localizedStringForKey:v9 comment:@"Edit Mode"];

      goto LABEL_11;
  }

  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS___NTKMargaritaFace;
  v10 = objc_msgSendSuper2(&v12, "_localizedNameOverrideForCustomEditMode:forDevice:", mode, deviceCopy);
LABEL_11:

  return v10;
}

- (id)complicationSlotsHiddenByEditOption:(id)option
{
  optionCopy = option;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (![optionCopy style] || objc_msgSend(optionCopy, "style") == &dword_0 + 1))
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
    v8.super_class = NTKMargaritaFace;
    v5 = [(NTKMargaritaFace *)&v8 complicationSlotsHiddenByEditOption:optionCopy];
  }

  v6 = v5;

  return v6;
}

- (id)_faceDescription
{
  _faceDescriptionKey = [(NTKMargaritaFace *)self _faceDescriptionKey];
  v3 = [NTKMargaritaFaceBundle localizedStringForKey:_faceDescriptionKey comment:&stru_14AF0];

  return v3;
}

@end