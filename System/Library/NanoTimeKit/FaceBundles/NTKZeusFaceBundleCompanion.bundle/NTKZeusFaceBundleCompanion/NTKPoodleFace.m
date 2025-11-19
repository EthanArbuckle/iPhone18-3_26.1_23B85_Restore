@interface NTKPoodleFace
+ (BOOL)isRestrictedForDevice:(id)a3;
+ (id)_initialDefaultComplicationForSlot:(id)a3 forDevice:(id)a4;
+ (id)_orderedComplicationSlots;
+ (id)_richComplicationSlotsForDevice:(id)a3;
- (BOOL)customComplication:(id)a3 supportsFamilies:(id)a4 forSlot:(id)a5;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_complicationSlotDescriptors;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_localizedNameForComplicationSlot:(id)a3;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (id)customComplicationControllerForComplication:(id)a3 variant:(id)a4 slot:(id)a5;
- (id)customComplicationsForSlot:(id)a3;
- (int64_t)customComplicationFamilyForComplication:(id)a3 slot:(id)a4;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKPoodleFace

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v3 = a3;
  if ([v3 deviceCategory] == &dword_0 + 1 || !objc_msgSend(v3, "supportsPDRCapability:", 3588072423))
  {
    LOBYTE(v4) = 1;
  }

  else if ([v3 collectionType] == &dword_4 + 1)
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

+ (id)_initialDefaultComplicationForSlot:(id)a3 forDevice:(id)a4
{
  if ([a3 isEqualToString:{NTKComplicationSlotTopRight, a4}])
  {
    v4 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:NTKBundleComplicationNoiseBundleIdentifier appBundleIdentifier:NTKBundleComplicationNoiseAppBundleIdentifier complicationDescriptor:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)customComplicationControllerForComplication:(id)a3 variant:(id)a4 slot:(id)a5
{
  v8 = a3;
  v9 = a4;
  if (![a5 isEqual:NTKComplicationSlotBottom])
  {
    goto LABEL_5;
  }

  v10 = [v8 complicationType];
  if (v10 == (&dword_4 + 1))
  {
    v11 = off_444A8;
    goto LABEL_7;
  }

  if (v10 != &dword_4)
  {
LABEL_5:
    v12 = 0;
    goto LABEL_8;
  }

  v11 = off_444A0;
LABEL_7:
  v13 = objc_alloc(*v11);
  v14 = [(NTKPoodleFace *)self device];
  v12 = [v13 initWithComplication:v8 variant:v9 device:v14];

LABEL_8:

  return v12;
}

- (id)customComplicationsForSlot:(id)a3
{
  if ([a3 isEqual:NTKComplicationSlotBottom])
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

- (int64_t)customComplicationFamilyForComplication:(id)a3 slot:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqual:NTKComplicationSlotBottom])
  {
    v8 = NTKComplicationFamilyZeusLower;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NTKPoodleFace;
    v8 = [(NTKPoodleFace *)&v10 customComplicationFamilyForComplication:v6 slot:v7];
  }

  return v8;
}

- (BOOL)customComplication:(id)a3 supportsFamilies:(id)a4 forSlot:(id)a5
{
  v7 = a3;
  v8 = a4;
  if ([a5 isEqual:NTKComplicationSlotBottom] && (objc_msgSend(v7, "complicationType") & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v9 = [NSNumber numberWithInteger:NTKComplicationFamilyZeusLower];
    v10 = [v8 containsObject:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_localizedNameForComplicationSlot:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:NTKComplicationSlotBottom])
  {
    v5 = NTKClockFaceLocalizedString();
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKPoodleFace;
    v5 = [(NTKPoodleFace *)&v8 _localizedNameForComplicationSlot:v4];
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

+ (id)_richComplicationSlotsForDevice:(id)a3
{
  v5[0] = NTKComplicationSlotTopLeft;
  v5[1] = NTKComplicationSlotTopRight;
  v5[2] = NTKComplicationSlotBottomLeft;
  v5[3] = NTKComplicationSlotBottomRight;
  v5[4] = NTKComplicationSlotBottom;
  v3 = [NSArray arrayWithObjects:v5 count:5];

  return v3;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKPoodleFace *)self device:a3];
  if (a3 == 10)
  {
    v6 = [NTKPoodleColorEditOption optionWithPoodleColor:0 forDevice:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKPoodleFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKPoodleFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKPoodleFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKPoodleFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKPoodleFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKPoodleFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  if (a3 == 10)
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
  v2 = [(NTKPoodleFace *)self _faceDescriptionKey];
  v3 = [NTKPoodleFaceBundle localizedStringForKey:v2 comment:&stru_45510];

  return v3;
}

@end