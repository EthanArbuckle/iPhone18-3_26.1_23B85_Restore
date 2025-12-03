@interface NTKAnalogBreatheFace
+ (id)_complicationSlotDescriptors;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_orderedComplicationSlots;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)faceDescription;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKAnalogBreatheFace

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllUtilitySmallComplicationTypes();
  v3 = NTKAllUtilityLargeComplicationTypes();
  v12[0] = NTKComplicationSlotTopLeft;
  v4 = NTKComplicationTypeRankedListWithDefaultTypes();
  v5 = NTKComplicationSlotDescriptor();
  v13[0] = v5;
  v12[1] = NTKComplicationSlotTopRight;
  v6 = NTKComplicationTypeRankedListWithDefaultTypes();
  v7 = NTKComplicationSlotDescriptor();
  v13[1] = v7;
  v12[2] = NTKComplicationSlotBottomCenter;
  v8 = NTKComplicationTypeRankedListWithDefaultTypes();
  v9 = NTKComplicationSlotDescriptor();
  v13[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];

  return v10;
}

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotTopLeft;
  v4[1] = NTKComplicationSlotTopRight;
  v4[2] = NTKComplicationSlotBottomCenter;
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 12)
  {
    v5 = [(NTKAnalogBreatheFace *)self device:12];
    v6 = [v5 supportsPDRCapability:4094027452];

    device = [(NTKAnalogBreatheFace *)self device];
    if (v6)
    {
      v8 = 3;
    }

    else
    {
      v8 = 0;
    }

    v9 = [NTKBreatheVideoStyleEditOption optionWithStyle:v8 forDevice:device];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKAnalogBreatheFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKAnalogBreatheFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKAnalogBreatheFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKAnalogBreatheFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKAnalogBreatheFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKAnalogBreatheFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 12)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  if (mode == 12)
  {
    v4 = [@"EDIT_MODE_LABEL_DENSITY" stringByAppendingString:{@"_COMPANION", device}];
    v5 = NTKCompanionClockFaceLocalizedString();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)faceDescription
{
  device = [(NTKAnalogBreatheFace *)self device];
  v3 = [device supportsPDRCapability:4094027452];

  if (v3)
  {
    v4 = [@"BREATHE_GALLERY_DESCRIPTION" stringByAppendingString:@"_2021"];
  }

  else
  {
    v4 = @"BREATHE_GALLERY_DESCRIPTION";
  }

  v5 = [@"Breathe" stringByAppendingString:@"-Companion"];
  v6 = [NTKBreatheFaceBundle localizedStringForKey:v4 table:v5 comment:@"Breathe description"];

  return v6;
}

@end