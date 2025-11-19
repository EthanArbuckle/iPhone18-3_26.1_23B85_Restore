@interface NTKAegirFace
+ (BOOL)isRestrictedForDevice:(id)a3;
+ (id)_complicationSlotDescriptors;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
+ (id)_orderedComplicationSlots;
- (BOOL)_snapshotContext:(id)a3 isStaleRelativeToContext:(id)a4;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_complicationSlotDescriptors;
- (id)_customEditModes;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_faceDescriptionKey;
- (id)_localizedNameForComplicationSlot:(id)a3;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (id)_orderedComplicationSlots;
- (id)editOptionsThatHideEditModes;
- (id)localizedExplanationMessageForDisabledEditMode:(int64_t)a3;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKAegirFace

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v3 = a3;
  v4 = [[NSUUID alloc] initWithUUIDString:@"157666B2-886F-4DBB-BFEE-669DE191D8BB"];
  if ([v3 supportsCapability:v4])
  {
    v5 = [v3 deviceCategory] == &dword_0 + 1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)_faceDescriptionKey
{
  v2 = [(NTKAegirFace *)self device];
  v3 = [[NSUUID alloc] initWithUUIDString:@"BD0302DD-00BC-43C2-81E9-48C038E6F8BB"];
  v4 = [v2 supportsCapability:v3];

  if (v4)
  {
    return @"FACE_STYLE_AEGIR_FACE_DESCRIPTION_LIGHTHOUSE";
  }

  else
  {
    return @"FACE_STYLE_AEGIR_FACE_DESCRIPTION";
  }
}

- (id)_faceDescription
{
  v2 = [(NTKAegirFace *)self _faceDescriptionKey];
  v3 = [NTKAegirFaceBundle localizedStringForKey:v2 comment:v2];

  return v3;
}

- (BOOL)_snapshotContext:(id)a3 isStaleRelativeToContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = NTKAegirFace;
  if (!-[NTKAegirFace _snapshotContext:isStaleRelativeToContext:](&v11, "_snapshotContext:isStaleRelativeToContext:", v6, v7) && [v6 calendarDateMatchesContext:v7] && objc_msgSend(v6, "localeMatchesContext:", v7))
  {
    [v6 distanceInKilometersFromContext:v7];
    v9 = v8 > 500.0;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllUtilitySmallFlatComplicationTypes();
  v3 = NTKAllUtilityLargeNarrowComplicationTypes();
  v10[0] = NTKComplicationSlotTopRight;
  v4 = NTKComplicationTypeRankedListWithDefaultTypes();
  v5 = NTKComplicationSlotDescriptor();
  v11[0] = v5;
  v10[1] = NTKComplicationSlotBottom;
  v6 = NTKComplicationTypeRankedListWithDefaultTypes();
  v7 = NTKComplicationSlotDescriptor();
  v11[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];

  return v8;
}

- (id)_complicationSlotDescriptors
{
  v4.receiver = self;
  v4.super_class = NTKAegirFace;
  v2 = [(NTKAegirFace *)&v4 _complicationSlotDescriptors];

  return v2;
}

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotTopRight;
  v4[1] = NTKComplicationSlotBottom;
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (id)_orderedComplicationSlots
{
  v4.receiver = self;
  v4.super_class = NTKAegirFace;
  v2 = [(NTKAegirFace *)&v4 _orderedComplicationSlots];

  return v2;
}

- (id)_localizedNameForComplicationSlot:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:NTKComplicationSlotTopRight])
  {
    v4 = @"TOP";
  }

  else
  {
    v5 = [v3 isEqualToString:NTKComplicationSlotBottom];
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

- (id)_customEditModes
{
  v2 = [(NTKAegirFace *)self device];
  v3 = NTKShowIndicScriptNumerals();

  if (v3)
  {
    return &off_15D40;
  }

  else
  {
    return &off_15D58;
  }
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  v7 = 0;
  if (a3 > 14)
  {
    if (a3 == 15)
    {
      v8 = [(NTKAegirFace *)self device];
      v9 = [NTKAegirStyleEditOption optionWithStyle:7 forDevice:v8];
    }

    else
    {
      if (a3 != 19)
      {
        goto LABEL_11;
      }

      CLKLocaleNumberSystemForFirstLanguage();
      v10 = NTKNumeralOptionFromCLKLocaleNumberSystem();
      v8 = [(NTKAegirFace *)self device];
      v9 = [NTKNumeralEditOption optionWithNumeral:v10 forDevice:v8];
    }
  }

  else if (a3 == 12)
  {
    v8 = [(NTKAegirFace *)self device];
    v9 = [NTKAegirVistaEditOption optionWithVista:0 forDevice:v8];
  }

  else
  {
    if (a3 != 13)
    {
      goto LABEL_11;
    }

    v8 = [(NTKAegirFace *)self device];
    v9 = [NTKAegirTypefaceEditOption optionWithTypeface:1 forDevice:v8];
  }

  v7 = v9;

LABEL_11:

  return v7;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  v6 = a4;
  v7 = a3 - 12;
  if (a3 - 12) <= 7 && ((0x8Bu >> v7))
  {
    v8 = [(__CFString *)off_144E8[v7] stringByAppendingString:@"_COMPANION"];
    v9 = [NTKAegirFaceBundle localizedStringForKey:v8 comment:v8];
  }

  else
  {
    v11.receiver = a1;
    v11.super_class = &OBJC_METACLASS___NTKAegirFace;
    v9 = objc_msgSendSuper2(&v11, "_localizedNameOverrideForCustomEditMode:forDevice:", a3, v6);
  }

  return v9;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKAegirFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKAegirFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKAegirFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKAegirFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKAegirFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKAegirFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  v4 = a3 - 12;
  if (a3 - 12) <= 7 && ((0x8Bu >> v4))
  {
    v5 = *off_14528[v4];
    v6 = objc_opt_class();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)editOptionsThatHideEditModes
{
  v6 = &off_15680;
  v2 = [(NTKAegirFace *)self device];
  v3 = [NTKNumeralEditOption partiallySupportedEditOptionsForDevice:v2];
  v7 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  return v4;
}

- (id)localizedExplanationMessageForDisabledEditMode:(int64_t)a3
{
  if (a3 == 13)
  {
    v5 = [NTKAegirFaceBundle localizedStringForKey:@"AEGIR_TIME_FONT_CANNOT_BE_CHANGED_EXPLANATION" comment:@"Time font cannot be changed description", v3];
  }

  else
  {
    v5 = &stru_14CD0;
  }

  return v5;
}

@end