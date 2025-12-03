@interface NTKSpectrumAnalogFace
+ (id)_complicationSlotDescriptors;
+ (id)_initialDefaultComplicationForSlot:(id)slot forDevice:(id)device;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_orderedComplicationSlots;
+ (id)_richComplicationSlotsForDevice:(id)device;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultColorOption;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_localizedNameForComplicationSlot:(id)slot;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)editOptionThatHidesAllComplications;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKSpectrumAnalogFace

- (id)_faceDescription
{
  _faceDescriptionKey = [(NTKSpectrumAnalogFace *)self _faceDescriptionKey];
  v3 = [NTKSpectrumFaceBundle localizedStringForKey:_faceDescriptionKey comment:@"Gradient face description"];

  return v3;
}

+ (id)_complicationSlotDescriptors
{
  v17 = +[NSMutableIndexSet indexSet];
  v2 = NTKAllSignatureCircularTypes();
  [v17 addIndexes:v2];

  v3 = NTKAllSignatureCornerTypes();
  v4 = NTKAllUtilityLargeComplicationTypes();
  v16 = NTKComplicationTypeRankedListWithDefaultTypes();
  v15 = NTKComplicationTypeRankedListWithDefaultTypes();
  v14 = NTKComplicationTypeRankedListWithDefaultTypes();
  v5 = NTKComplicationTypeRankedListWithDefaultTypes();
  v6 = NTKComplicationTypeRankedListWithDefaultTypes();
  v18[0] = NTKComplicationSlotTopLeft;
  v7 = NTKComplicationSlotDescriptor();
  v19[0] = v7;
  v18[1] = NTKComplicationSlotTopRight;
  v8 = NTKComplicationSlotDescriptor();
  v19[1] = v8;
  v18[2] = NTKComplicationSlotBottomLeft;
  v9 = NTKComplicationSlotDescriptor();
  v19[2] = v9;
  v18[3] = NTKComplicationSlotBottomRight;
  v10 = NTKComplicationSlotDescriptor();
  v19[3] = v10;
  v18[4] = NTKComplicationSlotBezel;
  v11 = NTKComplicationSlotDescriptor();
  v19[4] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:5];

  return v12;
}

+ (id)_initialDefaultComplicationForSlot:(id)slot forDevice:(id)device
{
  if ([slot isEqualToString:{NTKComplicationSlotTopLeft, device}])
  {
    v4 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:NTKBundleComplicationNoiseBundleIdentifier appBundleIdentifier:NTKBundleComplicationNoiseAppBundleIdentifier complicationDescriptor:0];
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
  if ([slotCopy isEqualToString:NTKComplicationSlotBezel])
  {
    v5 = NTKClockFaceLocalizedString();
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKSpectrumAnalogFace;
    v5 = [(NTKSpectrumAnalogFace *)&v8 _localizedNameForComplicationSlot:slotCopy];
  }

  v6 = v5;

  return v6;
}

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotTopLeft;
  v4[1] = NTKComplicationSlotTopRight;
  v4[2] = NTKComplicationSlotBottomLeft;
  v4[3] = NTKComplicationSlotBottomRight;
  v4[4] = NTKComplicationSlotBezel;
  v2 = [NSArray arrayWithObjects:v4 count:5];

  return v2;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  switch(mode)
  {
    case 10:
      _defaultColorOption = [(NTKSpectrumAnalogFace *)self _defaultColorOption];
      break;
    case 12:
      device = [(NTKSpectrumAnalogFace *)self device];
      v8 = [NTKAnalogDialShapeEditOption optionWithShape:1 forDevice:device];
      goto LABEL_6;
    case 15:
      device = [(NTKSpectrumAnalogFace *)self device];
      v8 = [NTKSpectrumStyleEditOption optionWithStyle:2 forDevice:device];
LABEL_6:
      _defaultColorOption = v8;

      break;
    default:
      _defaultColorOption = 0;
      break;
  }

  return _defaultColorOption;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKSpectrumAnalogFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKSpectrumAnalogFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKSpectrumAnalogFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKSpectrumAnalogFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKSpectrumAnalogFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKSpectrumAnalogFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  switch(mode)
  {
    case 10:
      v4 = &off_10290;
LABEL_7:
      v5 = *v4;
      v6 = objc_opt_class();

      return v6;
    case 12:
      v4 = NTKAnalogDialShapeEditOption_ptr;
      goto LABEL_7;
    case 15:
      v4 = NTKSpectrumStyleEditOption_ptr;
      goto LABEL_7;
  }

  v6 = 0;

  return v6;
}

+ (id)_richComplicationSlotsForDevice:(id)device
{
  v5[0] = NTKComplicationSlotTopLeft;
  v5[1] = NTKComplicationSlotTopRight;
  v5[2] = NTKComplicationSlotBottomLeft;
  v5[3] = NTKComplicationSlotBottomRight;
  v3 = [NSArray arrayWithObjects:v5 count:4];

  return v3;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  if (mode == 12)
  {
    v4 = [@"EDIT_MODE_LABEL_DIAL" stringByAppendingString:{@"_COMPANION", device}];
    v5 = NTKCompanionClockFaceLocalizedString();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_defaultColorOption
{
  device = [(NTKSpectrumAnalogFace *)self device];
  collectionType = [device collectionType];

  v5 = 6;
  if (collectionType == &dword_4 + 2)
  {
    v5 = 103;
  }

  if (collectionType == &dword_4 + 1)
  {
    v6 = 102;
  }

  else
  {
    v6 = v5;
  }

  device2 = [(NTKSpectrumAnalogFace *)self device];
  v8 = [NTKSpectrumAnalogColorEditOption optionWithFaceColor:v6 forDevice:device2];

  return v8;
}

- (id)editOptionThatHidesAllComplications
{
  device = [(NTKSpectrumAnalogFace *)self device];
  v3 = [NTKAnalogDialShapeEditOption optionWithShape:1 forDevice:device];

  return v3;
}

@end