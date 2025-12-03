@interface NTKCrosswindFace
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)_initialDefaultComplicationForSlot:(id)slot forDevice:(id)device;
+ (id)complicationConfiguration;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKCrosswindFace

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
  if (_os_feature_enabled_impl() && [deviceCopy deviceCategory] != &dword_0 + 1)
  {
    v4 = [deviceCopy supportsPDRCapability:3887189377] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

+ (id)complicationConfiguration
{
  if (qword_16AA8 != -1)
  {
    sub_7740();
  }

  v3 = qword_16AA0;

  return v3;
}

+ (id)_initialDefaultComplicationForSlot:(id)slot forDevice:(id)device
{
  if ([slot isEqualToString:{NTKComplicationSlotBottomLeft, device}] && (!os_variant_has_internal_diagnostics() || _os_feature_enabled_impl()))
  {
    v4 = +[NSLocale currentLocale];
    countryCode = [v4 countryCode];

    if ([countryCode isEqualToString:@"US"])
    {
      v6 = [CLKWidgetComplicationDescriptor alloc];
      v7 = NTKCarbonaraWidgetIntent();
      v8 = [v6 initWithExtensionBundleIdentifier:@"com.apple.NanoHome.NanoHomeWidgets" containerBundleIdentifier:@"com.apple.NanoHome" kind:@"com.apple.HomeEnergyUI.EnergyForecastComplication" intent:v7];

      v9 = [NTKWidgetComplication complicationWithDescriptor:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKCrosswindFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKCrosswindFace *)self device];
  v7 = [slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKCrosswindFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKCrosswindFace *)self device];
  v9 = [v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKCrosswindFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKCrosswindFace *)self device];
  v10 = [v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

@end