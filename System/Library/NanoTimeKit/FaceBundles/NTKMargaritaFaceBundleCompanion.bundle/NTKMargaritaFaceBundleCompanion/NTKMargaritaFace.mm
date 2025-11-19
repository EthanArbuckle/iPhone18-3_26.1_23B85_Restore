@interface NTKMargaritaFace
+ (BOOL)isRestrictedForDevice:(id)a3;
+ (id)_defaultSelectedSlotForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
+ (id)_orderedComplicationSlots;
+ (id)_richComplicationSlotsForDevice:(id)a3;
+ (id)_slotsForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
+ (id)firstStripeSlot;
+ (unint64_t)defaultColorForStripeIndex:(int64_t)a3;
+ (unint64_t)totalStripeCount;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_complicationSlotDescriptors;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_localizedNameForDynamicSectionCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (id)complicationSlotsHiddenByEditOption:(id)a3;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfDynamicSections;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKMargaritaFace

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v3 = a3;
  if ([v3 deviceCategory] == &dword_0 + 1)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = [v3 supportsPDRCapability:3588072423] ^ 1;
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

+ (id)_richComplicationSlotsForDevice:(id)a3
{
  v5[0] = NTKComplicationSlotTopLeft;
  v5[1] = NTKComplicationSlotTopRight;
  v5[2] = NTKComplicationSlotBottomLeft;
  v5[3] = NTKComplicationSlotBottomRight;
  v3 = [NSArray arrayWithObjects:v5 count:4];

  return v3;
}

+ (id)_slotsForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 10)
  {
    v6 = [a1 _colorSlots];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (unint64_t)totalStripeCount
{
  v2 = [a1 _colorSlots];
  v3 = [v2 count];

  return v3;
}

+ (id)firstStripeSlot
{
  v2 = [a1 _colorSlots];
  v3 = [v2 firstObject];

  return v3;
}

+ (id)_defaultSelectedSlotForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 10)
  {
    return @"0";
  }

  else
  {
    return 0;
  }
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  v7 = [(NTKMargaritaFace *)self device];
  v8 = 0;
  if (a3 > 13)
  {
    if (a3 == 14)
    {
      v9 = [NTKMargaritaRotationEditOption optionWithRotation:0 forDevice:v7];
    }

    else
    {
      if (a3 != 15)
      {
        goto LABEL_11;
      }

      v9 = [NTKMargaritaStyleEditOption optionWithMargaritaStyle:0 forDevice:v7];
    }
  }

  else if (a3 == 10)
  {
    v9 = +[NTKMargaritaColorEditOption optionWithMargaritaColor:forDevice:](NTKMargaritaColorEditOption, "optionWithMargaritaColor:forDevice:", [objc_opt_class() defaultColorForStripeIndex:{objc_msgSend(v6, "integerValue")}], v7);
  }

  else
  {
    if (a3 != 11)
    {
      goto LABEL_11;
    }

    v9 = [NTKMargaritaStripeCountEditOption optionWithCount:9 forDevice:v7];
  }

  v8 = v9;
LABEL_11:

  return v8;
}

+ (unint64_t)defaultColorForStripeIndex:(int64_t)a3
{
  if (a3 > 8)
  {
    return 0;
  }

  else
  {
    return qword_CC58[a3];
  }
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKMargaritaFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKMargaritaFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKMargaritaFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKMargaritaFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKMargaritaFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKMargaritaFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  if (a3 - 10) <= 5 && ((0x33u >> (a3 - 10)))
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

- (id)_localizedNameForDynamicSectionCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 == 10)
  {
    v5 = a4;
    v6 = objc_opt_class();
    v7 = [(NTKMargaritaFace *)self device];
    v8 = [v6 localizedNameForCustomEditMode:10 forDevice:v7];

    v9 = [v5 integerValue];
    v10 = [NSString localizedStringWithFormat:v8, v9];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = NTKMargaritaFace;
    v8 = a4;
    v10 = [(NTKMargaritaFace *)&v14 _localizedNameForDynamicSectionCustomEditMode:a3 slot:v8];
  }

  v12 = v10;

  return v12;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  v6 = a4;
  v7 = v6;
  switch(a3)
  {
    case 15:
      if ([v6 supportsPDRCapability:3669496134])
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

  v12.receiver = a1;
  v12.super_class = &OBJC_METACLASS___NTKMargaritaFace;
  v10 = objc_msgSendSuper2(&v12, "_localizedNameOverrideForCustomEditMode:forDevice:", a3, v6);
LABEL_11:

  return v10;
}

- (id)complicationSlotsHiddenByEditOption:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (![v4 style] || objc_msgSend(v4, "style") == &dword_0 + 1))
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
    v5 = [(NTKMargaritaFace *)&v8 complicationSlotsHiddenByEditOption:v4];
  }

  v6 = v5;

  return v6;
}

- (id)_faceDescription
{
  v2 = [(NTKMargaritaFace *)self _faceDescriptionKey];
  v3 = [NTKMargaritaFaceBundle localizedStringForKey:v2 comment:&stru_14AF0];

  return v3;
}

@end