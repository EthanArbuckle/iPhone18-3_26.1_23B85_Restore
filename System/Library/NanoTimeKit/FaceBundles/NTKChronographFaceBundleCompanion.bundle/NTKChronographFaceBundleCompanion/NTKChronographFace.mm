@interface NTKChronographFace
+ (id)_complicationSlotDescriptors;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_orderedComplicationSlots;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_chronoDefaultOption;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (int64_t)_editModeForOldEncodingIndex:(int64_t)index;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKChronographFace

- (id)_faceDescription
{
  _faceDescriptionKey = [(NTKChronographFace *)self _faceDescriptionKey];
  v3 = [NTKChronographFaceBundle localizedStringForKey:_faceDescriptionKey comment:_faceDescriptionKey];

  return v3;
}

+ (id)_complicationSlotDescriptors
{
  if (qword_233B0 != -1)
  {
    sub_FC98();
  }

  v12[0] = NTKComplicationSlotTopLeft;
  v2 = NTKComplicationTypeRankedListWithDefaultTypes();
  v3 = NTKComplicationSlotDescriptor();
  v13[0] = v3;
  v12[1] = NTKComplicationSlotBottomLeft;
  v4 = NTKComplicationTypeRankedListWithDefaultTypes();
  v5 = NTKComplicationSlotDescriptor();
  v13[1] = v5;
  v12[2] = NTKComplicationSlotBottomRight;
  v6 = NTKComplicationTypeRankedListWithDefaultTypes();
  v7 = NTKComplicationSlotDescriptor();
  v13[2] = v7;
  v12[3] = NTKComplicationSlotDate;
  v8 = NTKWrappedDateComplicationType();
  v9 = NTKComplicationSlotDescriptor();
  v13[3] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:4];

  return v10;
}

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotTopLeft;
  v4[1] = NTKComplicationSlotDate;
  v4[2] = NTKComplicationSlotBottomLeft;
  v4[3] = NTKComplicationSlotBottomRight;
  v2 = [NSArray arrayWithObjects:v4 count:4];

  return v2;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  if (mode == 11)
  {
    device = [(NTKChronographFace *)self device];
    _chronoDefaultOption = [NTKTimeScaleEditOption optionWithTimeScale:0 forDevice:device];
  }

  else if (mode == 10)
  {
    _chronoDefaultOption = [(NTKChronographFace *)self _chronoDefaultOption];
  }

  else
  {
    _chronoDefaultOption = 0;
  }

  return _chronoDefaultOption;
}

- (id)_chronoDefaultOption
{
  device = [(NTKChronographFace *)self device];
  v4 = NTKDefaultPaletteColorForDeviceCollection(device, 18);

  device2 = [(NTKChronographFace *)self device];
  v6 = [NTKPaletteColorEditOption optionWithPaletteColor:v4 forDevice:device2];

  return v6;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  if (mode == 11)
  {
    v4 = [@"EDIT_MODE_LABEL_CHRONO_DENSITY" stringByAppendingString:{@"_COMPANION", device}];
    v5 = [NTKChronographFaceBundle localizedStringForKey:v4 comment:@"Timescale"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKChronographFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKChronographFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKChronographFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKChronographFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKChronographFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKChronographFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 10 || mode == 11)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
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