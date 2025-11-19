@interface NTKCrosswindFace
+ (BOOL)isRestrictedForDevice:(id)a3;
+ (id)_initialDefaultComplicationForSlot:(id)a3 forDevice:(id)a4;
+ (id)complicationConfiguration;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKCrosswindFace

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v3 = a3;
  if (_os_feature_enabled_impl() && [v3 deviceCategory] != &dword_0 + 1)
  {
    v4 = [v3 supportsPDRCapability:3887189377] ^ 1;
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

+ (id)_initialDefaultComplicationForSlot:(id)a3 forDevice:(id)a4
{
  if ([a3 isEqualToString:{NTKComplicationSlotBottomLeft, a4}] && (!os_variant_has_internal_diagnostics() || _os_feature_enabled_impl()))
  {
    v4 = +[NSLocale currentLocale];
    v5 = [v4 countryCode];

    if ([v5 isEqualToString:@"US"])
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

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKCrosswindFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKCrosswindFace *)self device];
  v7 = [v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKCrosswindFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKCrosswindFace *)self device];
  v9 = [v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKCrosswindFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKCrosswindFace *)self device];
  v10 = [v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

@end