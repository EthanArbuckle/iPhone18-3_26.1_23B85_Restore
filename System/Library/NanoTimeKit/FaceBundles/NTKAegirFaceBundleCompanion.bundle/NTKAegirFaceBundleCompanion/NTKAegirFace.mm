@interface NTKAegirFace
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)_complicationSlotDescriptors;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_orderedComplicationSlots;
- (BOOL)_snapshotContext:(id)context isStaleRelativeToContext:(id)toContext;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_complicationSlotDescriptors;
- (id)_customEditModes;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_faceDescriptionKey;
- (id)_localizedNameForComplicationSlot:(id)slot;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_orderedComplicationSlots;
- (id)editOptionsThatHideEditModes;
- (id)localizedExplanationMessageForDisabledEditMode:(int64_t)mode;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKAegirFace

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
  v4 = [[NSUUID alloc] initWithUUIDString:@"157666B2-886F-4DBB-BFEE-669DE191D8BB"];
  if ([deviceCopy supportsCapability:v4])
  {
    v5 = [deviceCopy deviceCategory] == &dword_0 + 1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)_faceDescriptionKey
{
  device = [(NTKAegirFace *)self device];
  v3 = [[NSUUID alloc] initWithUUIDString:@"BD0302DD-00BC-43C2-81E9-48C038E6F8BB"];
  v4 = [device supportsCapability:v3];

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
  _faceDescriptionKey = [(NTKAegirFace *)self _faceDescriptionKey];
  v3 = [NTKAegirFaceBundle localizedStringForKey:_faceDescriptionKey comment:_faceDescriptionKey];

  return v3;
}

- (BOOL)_snapshotContext:(id)context isStaleRelativeToContext:(id)toContext
{
  contextCopy = context;
  toContextCopy = toContext;
  v11.receiver = self;
  v11.super_class = NTKAegirFace;
  if (!-[NTKAegirFace _snapshotContext:isStaleRelativeToContext:](&v11, "_snapshotContext:isStaleRelativeToContext:", contextCopy, toContextCopy) && [contextCopy calendarDateMatchesContext:toContextCopy] && objc_msgSend(contextCopy, "localeMatchesContext:", toContextCopy))
  {
    [contextCopy distanceInKilometersFromContext:toContextCopy];
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
  _complicationSlotDescriptors = [(NTKAegirFace *)&v4 _complicationSlotDescriptors];

  return _complicationSlotDescriptors;
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
  _orderedComplicationSlots = [(NTKAegirFace *)&v4 _orderedComplicationSlots];

  return _orderedComplicationSlots;
}

- (id)_localizedNameForComplicationSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:NTKComplicationSlotTopRight])
  {
    v4 = @"TOP";
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

- (id)_customEditModes
{
  device = [(NTKAegirFace *)self device];
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

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  v7 = 0;
  if (mode > 14)
  {
    if (mode == 15)
    {
      device = [(NTKAegirFace *)self device];
      v9 = [NTKAegirStyleEditOption optionWithStyle:7 forDevice:device];
    }

    else
    {
      if (mode != 19)
      {
        goto LABEL_11;
      }

      CLKLocaleNumberSystemForFirstLanguage();
      v10 = NTKNumeralOptionFromCLKLocaleNumberSystem();
      device = [(NTKAegirFace *)self device];
      v9 = [NTKNumeralEditOption optionWithNumeral:v10 forDevice:device];
    }
  }

  else if (mode == 12)
  {
    device = [(NTKAegirFace *)self device];
    v9 = [NTKAegirVistaEditOption optionWithVista:0 forDevice:device];
  }

  else
  {
    if (mode != 13)
    {
      goto LABEL_11;
    }

    device = [(NTKAegirFace *)self device];
    v9 = [NTKAegirTypefaceEditOption optionWithTypeface:1 forDevice:device];
  }

  v7 = v9;

LABEL_11:

  return v7;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  deviceCopy = device;
  v7 = mode - 12;
  if (mode - 12) <= 7 && ((0x8Bu >> v7))
  {
    v8 = [(__CFString *)off_144E8[v7] stringByAppendingString:@"_COMPANION"];
    v9 = [NTKAegirFaceBundle localizedStringForKey:v8 comment:v8];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = &OBJC_METACLASS___NTKAegirFace;
    v9 = objc_msgSendSuper2(&v11, "_localizedNameOverrideForCustomEditMode:forDevice:", mode, deviceCopy);
  }

  return v9;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKAegirFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKAegirFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKAegirFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKAegirFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKAegirFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKAegirFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  v4 = mode - 12;
  if (mode - 12) <= 7 && ((0x8Bu >> v4))
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
  device = [(NTKAegirFace *)self device];
  v3 = [NTKNumeralEditOption partiallySupportedEditOptionsForDevice:device];
  v7 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  return v4;
}

- (id)localizedExplanationMessageForDisabledEditMode:(int64_t)mode
{
  if (mode == 13)
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