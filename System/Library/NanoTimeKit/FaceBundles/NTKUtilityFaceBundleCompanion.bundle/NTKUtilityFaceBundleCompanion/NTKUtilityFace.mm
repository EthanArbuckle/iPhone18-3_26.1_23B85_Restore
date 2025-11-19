@interface NTKUtilityFace
+ (id)_complicationSlotDescriptors;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
+ (id)_orderedComplicationSlots;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (int64_t)_editModeForOldEncodingIndex:(int64_t)a3;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (void)applyPreviewConfigurationWithFamily:(int64_t)a3 faceColor:(int64_t)a4;
@end

@implementation NTKUtilityFace

- (id)_faceDescription
{
  v2 = [(NTKUtilityFace *)self _faceDescriptionKey];
  v3 = [NTKUtilityFaceBundle localizedStringForKey:v2 comment:v2];

  return v3;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  switch(a3)
  {
    case 13:
      v9 = +[NSLocale currentLocale];
      v12 = [(NTKUtilityFace *)self device];
      v11 = [NTKUtilityFaceTypefaceEditOption defaultOptionForLocale:v9 device:v12];

      goto LABEL_8;
    case 11:
      v9 = [(NTKUtilityFace *)self device];
      v10 = [NTKDensityEditOption optionWithDensity:3 forDevice:v9];
      goto LABEL_6;
    case 10:
      v7 = [(NTKUtilityFace *)self device];
      v8 = NTKDefaultFaceColorForDeviceCollection();

      v9 = [(NTKUtilityFace *)self device];
      v10 = [NTKFaceColorUtilitarianEditOption optionWithFaceColor:v8 forDevice:v9];
LABEL_6:
      v11 = v10;
LABEL_8:

      goto LABEL_10;
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKUtilityFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKUtilityFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKUtilityFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKUtilityFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKUtilityFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKUtilityFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  switch(a3)
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

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 13)
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
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS___NTKUtilityFace;
    v6 = objc_msgSendSuper2(&v8, "_localizedNameOverrideForCustomEditMode:forDevice:", a3, a4);
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

- (void)applyPreviewConfigurationWithFamily:(int64_t)a3 faceColor:(int64_t)a4
{
  v5 = [(NTKUtilityFace *)self device:a3];
  v7 = [NTKFaceColorUtilitarianEditOption optionWithFaceColor:8 forDevice:v5];

  [(NTKUtilityFace *)self selectOption:v7 forCustomEditMode:10 slot:0];
  v6 = [NTKComplication anyComplicationOfType:0];
  [(NTKUtilityFace *)self setComplication:v6 forSlot:NTKComplicationSlotTopLeft];
  [(NTKUtilityFace *)self setComplication:v6 forSlot:NTKComplicationSlotTopRight];
  [(NTKUtilityFace *)self setComplication:v6 forSlot:NTKComplicationSlotBottomCenter];
}

- (int64_t)_editModeForOldEncodingIndex:(int64_t)a3
{
  v3 = 11;
  if (a3 != 1)
  {
    v3 = 0;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 10;
  }
}

@end