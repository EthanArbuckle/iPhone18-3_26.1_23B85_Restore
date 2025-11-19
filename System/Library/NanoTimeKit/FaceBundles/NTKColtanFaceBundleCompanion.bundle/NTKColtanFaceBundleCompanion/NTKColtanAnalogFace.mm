@interface NTKColtanAnalogFace
+ (BOOL)isRestrictedForDevice:(id)a3;
+ (id)_complicationSlotDescriptors;
+ (id)_initialDefaultComplicationForSlot:(id)a3 forDevice:(id)a4;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
+ (id)_orderedComplicationSlots;
+ (id)_richComplicationSlotsForDevice:(id)a3;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (id)editOptionThatHidesAllComplications;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKColtanAnalogFace

- (id)_faceDescription
{
  v2 = [(NTKColtanAnalogFace *)self _faceDescriptionKey];
  v3 = [NTKColtanFaceBundle localizedStringForKey:v2 comment:@"Coltan face description"];

  return v3;
}

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 deviceCategory] == &dword_0 + 1;
  v5 = [v3 supportsPDRCapability:3049862277];

  return v4 || (v5 & 1) == 0;
}

+ (id)_complicationSlotDescriptors
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

+ (id)_initialDefaultComplicationForSlot:(id)a3 forDevice:(id)a4
{
  v4 = a3;
  if ([v4 isEqualToString:NTKComplicationSlotTopLeft])
  {
    v5 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:NTKBundleComplicationNoiseBundleIdentifier appBundleIdentifier:NTKBundleComplicationNoiseAppBundleIdentifier complicationDescriptor:0];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  if ([v4 isEqualToString:NTKComplicationSlotBottomLeft])
  {
    v5 = [NTKComplication timerComplicationWithDuration:180.0];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
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

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  if (a3 == 11)
  {
    v7 = [(NTKColtanAnalogFace *)self device];
    v8 = [NTKColtanDensityEditOption optionWithDensity:0 forDevice:v7];
    goto LABEL_5;
  }

  if (a3 == 12)
  {
    v7 = [(NTKColtanAnalogFace *)self device];
    v8 = [NTKAnalogDialShapeEditOption optionWithShape:1 forDevice:v7];
LABEL_5:
    v9 = v8;

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKColtanAnalogFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKColtanAnalogFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKColtanAnalogFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKColtanAnalogFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKColtanAnalogFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKColtanAnalogFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  if (a3 == 12)
  {
    v4 = NTKAnalogDialShapeEditOption_ptr;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (a3 == 11)
  {
    v4 = &off_10250;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 12)
  {
    v4 = [@"EDIT_MODE_LABEL_DIAL" stringByAppendingString:{@"_COMPANION", a4}];
    v5 = NTKCompanionClockFaceLocalizedString();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)editOptionThatHidesAllComplications
{
  v2 = [(NTKColtanAnalogFace *)self device];
  v3 = [NTKAnalogDialShapeEditOption optionWithShape:1 forDevice:v2];

  return v3;
}

@end