@interface NTKSimpleFace
+ (id)_complicationSlotDescriptors;
+ (id)_orderedComplicationSlots;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKSimpleFace

- (id)_faceDescription
{
  _faceDescriptionKey = [(NTKSimpleFace *)self _faceDescriptionKey];
  v3 = [NTKSimpleFaceBundle localizedStringForKey:_faceDescriptionKey comment:_faceDescriptionKey];

  return v3;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  if (mode == 11)
  {
    device = [(NTKSimpleFace *)self device];
    v10 = [NTKDensityEditOption optionWithDensity:3 forDevice:device];
    goto LABEL_5;
  }

  if (mode == 10)
  {
    device2 = [(NTKSimpleFace *)self device];
    v8 = NTKDefaultFaceColorForDeviceCollection();

    device = [(NTKSimpleFace *)self device];
    v10 = [NTKFaceColorUtilitarianEditOption optionWithFaceColor:v8 forDevice:device];
LABEL_5:
    v11 = v10;

    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKSimpleFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKSimpleFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKSimpleFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKSimpleFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKSimpleFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKSimpleFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 10)
  {
    v4 = NTKFaceColorUtilitarianEditOption_ptr;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (mode == 11)
  {
    v4 = NTKDensityEditOption_ptr;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllUtilitySmallComplicationTypes();
  v15[0] = NTKComplicationSlotTopLeft;
  v14 = NTKComplicationTypeRankedListWithDefaultTypes();
  v13 = NTKComplicationSlotDescriptor();
  v16[0] = v13;
  v15[1] = NTKComplicationSlotTopRight;
  v3 = NTKComplicationTypeRankedListWithDefaultTypes();
  v4 = NTKComplicationSlotDescriptor();
  v16[1] = v4;
  v15[2] = NTKComplicationSlotBottomLeft;
  v5 = NTKComplicationTypeRankedListWithDefaultTypes();
  v6 = NTKComplicationSlotDescriptor();
  v16[2] = v6;
  v15[3] = NTKComplicationSlotBottomRight;
  v7 = NTKComplicationTypeRankedListWithDefaultTypes();
  v8 = NTKComplicationSlotDescriptor();
  v16[3] = v8;
  v15[4] = NTKComplicationSlotDate;
  v9 = NTKWrappedDateComplicationType();
  v10 = NTKComplicationSlotDescriptor();
  v16[4] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:5];

  return v11;
}

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotTopLeft;
  v4[1] = NTKComplicationSlotTopRight;
  v4[2] = NTKComplicationSlotDate;
  v4[3] = NTKComplicationSlotBottomLeft;
  v4[4] = NTKComplicationSlotBottomRight;
  v2 = [NSArray arrayWithObjects:v4 count:5];

  return v2;
}

@end