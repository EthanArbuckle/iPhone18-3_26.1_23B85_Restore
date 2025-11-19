@interface NTKPrideDigitalFace
+ (BOOL)isAvailableForDevice:(id)a3;
+ (BOOL)isRestrictedForDevice:(id)a3;
+ (id)_complicationSlotDescriptors;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
+ (id)_orderedComplicationSlots;
+ (unint64_t)enabledState;
+ (void)setEnabledState:(unint64_t)a3;
- (BOOL)_hasOptionsForCustomEditMode:(int64_t)a3;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_localizedNameForComplicationSlot:(id)a3;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKPrideDigitalFace

- (id)_faceDescription
{
  v2 = [(NTKPrideDigitalFace *)self _faceDescriptionKey];
  v3 = [NTKPrideDigitalFaceBundle localizedStringForKey:v2 table:@"PrideDigital" comment:@"Pride Digital face description"];

  return v3;
}

+ (unint64_t)enabledState
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(@"PrideFaceEnabledState", NTKFacePreferencesDomain, &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    return 0;
  }

  return result;
}

+ (void)setEnabledState:(unint64_t)a3
{
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  v3 = NTKFacePreferencesDomain;
  CFPreferencesSetAppValue(@"PrideFaceEnabledState", v4, NTKFacePreferencesDomain);
  CFPreferencesAppSynchronize(v3);
}

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v3 = a3;
  if (NTKFaceStyleIsAvailable())
  {
    v4 = NTKGizmoOrCompanionAreRussian();
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (BOOL)isAvailableForDevice:(id)a3
{
  v3 = a3;
  if ([v3 pdrDeviceVersion] >= 0x40301)
  {
    v4 = ![NTKPrideDigitalFace isRestrictedForDevice:v3];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllUtilitySmallFlatComplicationTypes();
  v3 = NTKAllUtilityLargeNarrowComplicationTypes();
  v9[0] = NTKComplicationSlotTopRight;
  v4 = NTKComplicationTypeRankedListWithDefaultTypes();
  v5 = NTKComplicationSlotDescriptor();
  v10[0] = v5;
  v9[1] = NTKComplicationSlotBottom;
  v6 = NTKComplicationSlotDescriptor();
  v10[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotTopRight;
  v4[1] = NTKComplicationSlotBottom;
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 != 15)
  {
    v8 = 0;
    goto LABEL_8;
  }

  v5 = [(NTKPrideDigitalFace *)self device:15];
  v6 = [v5 pdrDeviceVersion];

  v7 = [(NTKPrideDigitalFace *)self device];
  if (v6 > 0x50200)
  {
    v8 = [NTKPrideStyleEditOption optionWithStyle:2 forDevice:v7];

    v9 = [(NTKPrideDigitalFace *)self device];
    v10 = [v8 optionExistsInDevice:v9];

    if (v10)
    {
      goto LABEL_8;
    }

    v7 = [(NTKPrideDigitalFace *)self device];
    v11 = [NTKPrideStyleEditOption optionWithStyle:1 forDevice:v7];

    v8 = v11;
  }

  else
  {
    v8 = [NTKPrideStyleEditOption optionWithStyle:0 forDevice:v7];
  }

LABEL_8:

  return v8;
}

- (BOOL)_hasOptionsForCustomEditMode:(int64_t)a3
{
  v3 = [(NTKPrideDigitalFace *)self device];
  v4 = [v3 isRunningGloryFOrLater];

  return v4;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKPrideDigitalFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKPrideDigitalFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKPrideDigitalFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKPrideDigitalFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKPrideDigitalFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKPrideDigitalFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  if (a3 == 15)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_localizedNameForComplicationSlot:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:NTKComplicationSlotDate])
  {
    v10.receiver = self;
    v10.super_class = NTKPrideDigitalFace;
    v5 = [(NTKPrideDigitalFace *)&v10 _localizedNameForComplicationSlot:v4];
  }

  else
  {
    if ([v4 isEqualToString:NTKComplicationSlotTopRight])
    {
      v6 = @"TOP";
    }

    else
    {
      v7 = [v4 isEqualToString:NTKComplicationSlotBottom];
      v6 = @"BOTTOM";
      if (!v7)
      {
        v6 = 0;
      }
    }

    v8 = [NSString stringWithFormat:@"SLOT_LABEL_%@", v6];
    v5 = NTKClockFaceLocalizedString();
  }

  return v5;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 15)
  {
    v4 = [@"EDIT_MODE_LABEL_STYLE" stringByAppendingString:{@"_COMPANION", a4}];
    v5 = NTKCompanionClockFaceLocalizedString();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end