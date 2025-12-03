@interface NTKUtilityFace
+ (id)_complicationSlotDescriptors;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_orderedComplicationSlots;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (int64_t)_editModeForOldEncodingIndex:(int64_t)index;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)applyPreviewConfigurationWithFamily:(int64_t)family faceColor:(int64_t)color;
@end

@implementation NTKUtilityFace

- (id)_faceDescription
{
  _faceDescriptionKey = [(NTKUtilityFace *)self _faceDescriptionKey];
  v3 = [NTKUtilityFaceBundle localizedStringForKey:_faceDescriptionKey comment:_faceDescriptionKey];

  return v3;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  switch(mode)
  {
    case 13:
      device2 = +[NSLocale currentLocale];
      device = [(NTKUtilityFace *)self device];
      v11 = [NTKUtilityFaceTypefaceEditOption defaultOptionForLocale:device2 device:device];

      goto LABEL_8;
    case 11:
      device2 = [(NTKUtilityFace *)self device];
      v10 = [NTKDensityEditOption optionWithDensity:3 forDevice:device2];
      goto LABEL_6;
    case 10:
      device3 = [(NTKUtilityFace *)self device];
      v8 = NTKDefaultFaceColorForDeviceCollection();

      device2 = [(NTKUtilityFace *)self device];
      v10 = [NTKFaceColorUtilitarianEditOption optionWithFaceColor:v8 forDevice:device2];
LABEL_6:
      v11 = v10;
LABEL_8:

      goto LABEL_10;
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKUtilityFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKUtilityFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKUtilityFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKUtilityFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKUtilityFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKUtilityFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  switch(mode)
  {
    case 10:
      v4 = NTKFaceColorUtilitarianEditOption_ptr;
LABEL_7:
      v5 = *v4;
      v6 = objc_opt_class();

      return v6;
    case 13:
      v4 = &off_10258;
      goto LABEL_7;
    case 11:
      v4 = NTKDensityEditOption_ptr;
      goto LABEL_7;
  }

  v6 = 0;

  return v6;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  if (mode == 13)
  {
    if (NTKShowIndicScriptNumerals())
    {
      v4 = @"EDIT_MODE_LABEL_NUMERALS";
    }

    else
    {
      v4 = @"EDIT_MODE_LABEL_TYPEFACE";
    }

    v5 = [(__CFString *)v4 stringByAppendingString:@"_COMPANION"];
    v6 = NTKCompanionClockFaceLocalizedString();
  }

  else
  {
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS___NTKUtilityFace;
    v6 = objc_msgSendSuper2(&v8, "_localizedNameOverrideForCustomEditMode:forDevice:", mode, device);
  }

  return v6;
}

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllUtilitySmallComplicationTypes();
  v13 = NTKAllUtilityLargeComplicationTypes();
  v14[0] = NTKComplicationSlotTopLeft;
  v3 = NTKComplicationTypeRankedListWithDefaultTypes();
  v4 = NTKComplicationSlotDescriptor();
  v15[0] = v4;
  v14[1] = NTKComplicationSlotTopRight;
  v5 = NTKComplicationTypeRankedListWithDefaultTypes();
  v6 = NTKComplicationSlotDescriptor();
  v15[1] = v6;
  v14[2] = NTKComplicationSlotBottomCenter;
  v7 = NTKComplicationTypeRankedListWithDefaultTypes();
  v8 = NTKComplicationSlotDescriptor();
  v15[2] = v8;
  v14[3] = NTKComplicationSlotDate;
  v9 = NTKWrappedDateComplicationType();
  v10 = NTKComplicationSlotDescriptor();
  v15[3] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];

  return v11;
}

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotTopLeft;
  v4[1] = NTKComplicationSlotTopRight;
  v4[2] = NTKComplicationSlotDate;
  v4[3] = NTKComplicationSlotBottomCenter;
  v2 = [NSArray arrayWithObjects:v4 count:4];

  return v2;
}

- (void)applyPreviewConfigurationWithFamily:(int64_t)family faceColor:(int64_t)color
{
  v5 = [(NTKUtilityFace *)self device:family];
  v7 = [NTKFaceColorUtilitarianEditOption optionWithFaceColor:8 forDevice:v5];

  [(NTKUtilityFace *)self selectOption:v7 forCustomEditMode:10 slot:0];
  v6 = [NTKComplication anyComplicationOfType:0];
  [(NTKUtilityFace *)self setComplication:v6 forSlot:NTKComplicationSlotTopLeft];
  [(NTKUtilityFace *)self setComplication:v6 forSlot:NTKComplicationSlotTopRight];
  [(NTKUtilityFace *)self setComplication:v6 forSlot:NTKComplicationSlotBottomCenter];
}

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
    return 10;
  }
}

@end