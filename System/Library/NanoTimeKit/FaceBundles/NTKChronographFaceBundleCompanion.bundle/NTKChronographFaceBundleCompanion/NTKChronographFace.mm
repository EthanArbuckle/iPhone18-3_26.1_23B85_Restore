@interface NTKChronographFace
+ (id)_complicationSlotDescriptors;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
+ (id)_orderedComplicationSlots;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_chronoDefaultOption;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (int64_t)_editModeForOldEncodingIndex:(int64_t)a3;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKChronographFace

- (id)_faceDescription
{
  v2 = [(NTKChronographFace *)self _faceDescriptionKey];
  v3 = [NTKChronographFaceBundle localizedStringForKey:v2 comment:v2];

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

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  if (a3 == 11)
  {
    v8 = [(NTKChronographFace *)self device];
    v7 = [NTKTimeScaleEditOption optionWithTimeScale:0 forDevice:v8];
  }

  else if (a3 == 10)
  {
    v7 = [(NTKChronographFace *)self _chronoDefaultOption];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_chronoDefaultOption
{
  v3 = [(NTKChronographFace *)self device];
  v4 = NTKDefaultPaletteColorForDeviceCollection(v3, 18);

  v5 = [(NTKChronographFace *)self device];
  v6 = [NTKPaletteColorEditOption optionWithPaletteColor:v4 forDevice:v5];

  return v6;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 11)
  {
    v4 = [@"EDIT_MODE_LABEL_CHRONO_DENSITY" stringByAppendingString:{@"_COMPANION", a4}];
    v5 = [NTKChronographFaceBundle localizedStringForKey:v4 comment:@"Timescale"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKChronographFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKChronographFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKChronographFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKChronographFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKChronographFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKChronographFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  if (a3 == 10 || a3 == 11)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
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