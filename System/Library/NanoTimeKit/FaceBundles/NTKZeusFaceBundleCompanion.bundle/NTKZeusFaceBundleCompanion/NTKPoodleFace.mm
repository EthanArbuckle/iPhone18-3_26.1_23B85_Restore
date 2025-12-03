@interface NTKPoodleFace
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)_initialDefaultComplicationForSlot:(id)slot forDevice:(id)device;
+ (id)_orderedComplicationSlots;
+ (id)_richComplicationSlotsForDevice:(id)device;
- (BOOL)customComplication:(id)complication supportsFamilies:(id)families forSlot:(id)slot;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_complicationSlotDescriptors;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_localizedNameForComplicationSlot:(id)slot;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)customComplicationControllerForComplication:(id)complication variant:(id)variant slot:(id)slot;
- (id)customComplicationsForSlot:(id)slot;
- (int64_t)customComplicationFamilyForComplication:(id)complication slot:(id)slot;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKPoodleFace

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy deviceCategory] == &dword_0 + 1 || !objc_msgSend(deviceCopy, "supportsPDRCapability:", 3588072423))
  {
    LOBYTE(v4) = 1;
  }

  else if ([deviceCopy collectionType] == &dword_4 + 1)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = NTKShowHardwareSpecificFaces() ^ 1;
  }

  return v4;
}

- (id)_complicationSlotDescriptors
{
  v19 = xmmword_37AE0;
  v20 = 5;
  v2 = [NSIndexSet indexSetWithIndexes:&v19 count:3];
  v3 = NTKAllSignatureCornerTypes();
  v16 = NTKComplicationTypeRankedListWithDefaultTypes();
  v15 = NTKComplicationTypeRankedListWithDefaultTypes();
  v14 = NTKComplicationTypeRankedListWithDefaultTypes();
  v4 = NTKComplicationTypeRankedListWithDefaultTypes();
  v17[0] = NTKComplicationSlotTopLeft;
  v5 = NTKComplicationSlotDescriptor();
  v18[0] = v5;
  v17[1] = NTKComplicationSlotTopRight;
  v6 = NTKComplicationSlotDescriptor();
  v18[1] = v6;
  v17[2] = NTKComplicationSlotBottomLeft;
  v7 = NTKComplicationSlotDescriptor();
  v18[2] = v7;
  v17[3] = NTKComplicationSlotBottomRight;
  v8 = NTKComplicationSlotDescriptor();
  v18[3] = v8;
  v17[4] = NTKComplicationSlotBottom;
  v9 = NTKComplicationTypeRankedListWithDefaultTypes();
  v10 = v2;
  v11 = NTKComplicationSlotDescriptor();
  v18[4] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:5];

  return v12;
}

+ (id)_initialDefaultComplicationForSlot:(id)slot forDevice:(id)device
{
  if ([slot isEqualToString:{NTKComplicationSlotTopRight, device}])
  {
    v4 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:NTKBundleComplicationNoiseBundleIdentifier appBundleIdentifier:NTKBundleComplicationNoiseAppBundleIdentifier complicationDescriptor:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)customComplicationControllerForComplication:(id)complication variant:(id)variant slot:(id)slot
{
  complicationCopy = complication;
  variantCopy = variant;
  if (![slot isEqual:NTKComplicationSlotBottom])
  {
    goto LABEL_5;
  }

  complicationType = [complicationCopy complicationType];
  if (complicationType == (&dword_4 + 1))
  {
    v11 = off_444A8;
    goto LABEL_7;
  }

  if (complicationType != &dword_4)
  {
LABEL_5:
    v12 = 0;
    goto LABEL_8;
  }

  v11 = off_444A0;
LABEL_7:
  v13 = objc_alloc(*v11);
  device = [(NTKPoodleFace *)self device];
  v12 = [v13 initWithComplication:complicationCopy variant:variantCopy device:device];

LABEL_8:

  return v12;
}

- (id)customComplicationsForSlot:(id)slot
{
  if ([slot isEqual:NTKComplicationSlotBottom])
  {
    v3 = objc_opt_new();
    v4 = [NTKComplication allComplicationsOfType:5];
    [v3 addObjectsFromArray:v4];

    v5 = [NTKComplication allComplicationsOfType:4];
    [v3 addObjectsFromArray:v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)customComplicationFamilyForComplication:(id)complication slot:(id)slot
{
  complicationCopy = complication;
  slotCopy = slot;
  if ([slotCopy isEqual:NTKComplicationSlotBottom])
  {
    v8 = NTKComplicationFamilyZeusLower;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NTKPoodleFace;
    v8 = [(NTKPoodleFace *)&v10 customComplicationFamilyForComplication:complicationCopy slot:slotCopy];
  }

  return v8;
}

- (BOOL)customComplication:(id)complication supportsFamilies:(id)families forSlot:(id)slot
{
  complicationCopy = complication;
  familiesCopy = families;
  if ([slot isEqual:NTKComplicationSlotBottom] && (objc_msgSend(complicationCopy, "complicationType") & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v9 = [NSNumber numberWithInteger:NTKComplicationFamilyZeusLower];
    v10 = [familiesCopy containsObject:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_localizedNameForComplicationSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:NTKComplicationSlotBottom])
  {
    v5 = NTKClockFaceLocalizedString();
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKPoodleFace;
    v5 = [(NTKPoodleFace *)&v8 _localizedNameForComplicationSlot:slotCopy];
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
  v4[4] = NTKComplicationSlotBottom;
  v2 = [NSArray arrayWithObjects:v4 count:5];

  return v2;
}

+ (id)_richComplicationSlotsForDevice:(id)device
{
  v5[0] = NTKComplicationSlotTopLeft;
  v5[1] = NTKComplicationSlotTopRight;
  v5[2] = NTKComplicationSlotBottomLeft;
  v5[3] = NTKComplicationSlotBottomRight;
  v5[4] = NTKComplicationSlotBottom;
  v3 = [NSArray arrayWithObjects:v5 count:5];

  return v3;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  v5 = [(NTKPoodleFace *)self device:mode];
  if (mode == 10)
  {
    v6 = [NTKPoodleColorEditOption optionWithPoodleColor:0 forDevice:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKPoodleFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKPoodleFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKPoodleFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKPoodleFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKPoodleFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKPoodleFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 10)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_faceDescription
{
  _faceDescriptionKey = [(NTKPoodleFace *)self _faceDescriptionKey];
  v3 = [NTKPoodleFaceBundle localizedStringForKey:_faceDescriptionKey comment:&stru_45510];

  return v3;
}

@end