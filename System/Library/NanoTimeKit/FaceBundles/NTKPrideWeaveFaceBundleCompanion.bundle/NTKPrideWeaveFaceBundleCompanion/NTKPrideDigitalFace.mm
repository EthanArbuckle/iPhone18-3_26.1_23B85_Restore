@interface NTKPrideDigitalFace
+ (BOOL)isAvailableForDevice:(id)device;
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)_complicationSlotDescriptors;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_orderedComplicationSlots;
+ (unint64_t)enabledState;
+ (void)setEnabledState:(unint64_t)state;
- (BOOL)_hasOptionsForCustomEditMode:(int64_t)mode;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_localizedNameForComplicationSlot:(id)slot;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKPrideDigitalFace

- (id)_faceDescription
{
  _faceDescriptionKey = [(NTKPrideDigitalFace *)self _faceDescriptionKey];
  v3 = [NTKPrideDigitalFaceBundle localizedStringForKey:_faceDescriptionKey table:@"PrideDigital" comment:@"Pride Digital face description"];

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

+ (void)setEnabledState:(unint64_t)state
{
  v4 = [NSNumber numberWithUnsignedInteger:state];
  v3 = NTKFacePreferencesDomain;
  CFPreferencesSetAppValue(@"PrideFaceEnabledState", v4, NTKFacePreferencesDomain);
  CFPreferencesAppSynchronize(v3);
}

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
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

+ (BOOL)isAvailableForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy pdrDeviceVersion] >= 0x40301)
  {
    v4 = ![NTKPrideDigitalFace isRestrictedForDevice:deviceCopy];
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

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode != 15)
  {
    v8 = 0;
    goto LABEL_8;
  }

  v5 = [(NTKPrideDigitalFace *)self device:15];
  pdrDeviceVersion = [v5 pdrDeviceVersion];

  device = [(NTKPrideDigitalFace *)self device];
  if (pdrDeviceVersion > 0x50200)
  {
    v8 = [NTKPrideStyleEditOption optionWithStyle:2 forDevice:device];

    device2 = [(NTKPrideDigitalFace *)self device];
    v10 = [v8 optionExistsInDevice:device2];

    if (v10)
    {
      goto LABEL_8;
    }

    device = [(NTKPrideDigitalFace *)self device];
    v11 = [NTKPrideStyleEditOption optionWithStyle:1 forDevice:device];

    v8 = v11;
  }

  else
  {
    v8 = [NTKPrideStyleEditOption optionWithStyle:0 forDevice:device];
  }

LABEL_8:

  return v8;
}

- (BOOL)_hasOptionsForCustomEditMode:(int64_t)mode
{
  device = [(NTKPrideDigitalFace *)self device];
  isRunningGloryFOrLater = [device isRunningGloryFOrLater];

  return isRunningGloryFOrLater;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKPrideDigitalFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKPrideDigitalFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKPrideDigitalFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKPrideDigitalFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKPrideDigitalFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKPrideDigitalFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 15)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_localizedNameForComplicationSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:NTKComplicationSlotDate])
  {
    v10.receiver = self;
    v10.super_class = NTKPrideDigitalFace;
    v5 = [(NTKPrideDigitalFace *)&v10 _localizedNameForComplicationSlot:slotCopy];
  }

  else
  {
    if ([slotCopy isEqualToString:NTKComplicationSlotTopRight])
    {
      v6 = @"TOP";
    }

    else
    {
      v7 = [slotCopy isEqualToString:NTKComplicationSlotBottom];
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

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  if (mode == 15)
  {
    v4 = [@"EDIT_MODE_LABEL_STYLE" stringByAppendingString:{@"_COMPANION", device}];
    v5 = NTKCompanionClockFaceLocalizedString();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end