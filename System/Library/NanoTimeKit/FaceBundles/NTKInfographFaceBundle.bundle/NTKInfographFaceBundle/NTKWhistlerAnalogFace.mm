@interface NTKWhistlerAnalogFace
+ (id)_complicationSlotDescriptors;
+ (id)_orderedComplicationSlots;
+ (id)_richComplicationSlotsForDevice:(id)a3;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_defaultColorOption;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_localizedNameForComplicationSlot:(id)a3;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (void)applyPreviewConfigurationWithFamily:(int64_t)a3 faceColor:(int64_t)a4;
@end

@implementation NTKWhistlerAnalogFace

- (id)_faceDescription
{
  v2 = [(NTKWhistlerAnalogFace *)self device];
  v3 = NTKShowBlueRidgeUI();

  if (v3)
  {
    v4 = [@"FACE_DESCRIPTION" stringByAppendingString:@"_KINCAID"];
  }

  else
  {
    v4 = @"FACE_DESCRIPTION";
  }

  v5 = [NTKInfographFaceBundle localizedStringForKey:v4 table:@"Infograph" comment:@"description"];

  return v5;
}

+ (id)_complicationSlotDescriptors
{
  v2 = +[NSMutableIndexSet indexSet];
  v3 = NTKAllSignatureCircularTypes();
  [v2 addIndexes:v3];

  v4 = NTKAllSignatureCornerTypes();
  v14 = NTKAllSignatureBezelTypes();
  v19 = NTKComplicationTypeRankedListWithDefaultTypes();
  v16 = NTKComplicationTypeRankedListWithDefaultTypes();
  v18 = NTKComplicationTypeRankedListWithDefaultTypes();
  v23 = NTKComplicationTypeRankedListWithDefaultTypes();
  v22 = NTKComplicationTypeRankedListWithDefaultTypes();
  v20 = NTKComplicationTypeRankedListWithDefaultTypes();
  v17 = NTKComplicationTypeRankedListWithDefaultTypes();
  v15 = NTKComplicationTypeRankedListWithDefaultTypes();
  v24[0] = NTKComplicationSlotTopLeft;
  v21 = NTKComplicationSlotDescriptor();
  v25[0] = v21;
  v24[1] = NTKComplicationSlotTopRight;
  v5 = NTKComplicationSlotDescriptor();
  v25[1] = v5;
  v24[2] = NTKComplicationSlotBottomLeft;
  v6 = NTKComplicationSlotDescriptor();
  v25[2] = v6;
  v24[3] = NTKComplicationSlotBottomRight;
  v7 = NTKComplicationSlotDescriptor();
  v25[3] = v7;
  v24[4] = NTKComplicationSlot1;
  v8 = NTKComplicationSlotDescriptor();
  v25[4] = v8;
  v24[5] = NTKComplicationSlot2;
  v9 = NTKComplicationSlotDescriptor();
  v25[5] = v9;
  v24[6] = NTKComplicationSlot3;
  v10 = NTKComplicationSlotDescriptor();
  v25[6] = v10;
  v24[7] = NTKComplicationSlotBezel;
  v11 = NTKComplicationSlotDescriptor();
  v25[7] = v11;
  v13 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:8];

  return v13;
}

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotTopLeft;
  v4[1] = NTKComplicationSlotTopRight;
  v4[2] = NTKComplicationSlotBottomLeft;
  v4[3] = NTKComplicationSlotBottomRight;
  v4[4] = NTKComplicationSlotBezel;
  v4[5] = NTKComplicationSlot1;
  v4[6] = NTKComplicationSlot2;
  v4[7] = NTKComplicationSlot3;
  v2 = [NSArray arrayWithObjects:v4 count:8];

  return v2;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 == 10)
  {
    v6 = [(NTKWhistlerAnalogFace *)self _defaultColorOption:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKWhistlerAnalogFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKWhistlerAnalogFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKWhistlerAnalogFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKWhistlerAnalogFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKWhistlerAnalogFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKWhistlerAnalogFace *)self device];
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

+ (id)_richComplicationSlotsForDevice:(id)a3
{
  v5[0] = NTKComplicationSlot1;
  v5[1] = NTKComplicationSlot2;
  v5[2] = NTKComplicationSlot3;
  v5[3] = NTKComplicationSlotBezel;
  v5[4] = NTKComplicationSlotTopLeft;
  v5[5] = NTKComplicationSlotTopRight;
  v5[6] = NTKComplicationSlotBottomLeft;
  v5[7] = NTKComplicationSlotBottomRight;
  v3 = [NSArray arrayWithObjects:v5 count:8];

  return v3;
}

- (id)_defaultColorOption
{
  v3 = [(NTKWhistlerAnalogFace *)self device];
  v4 = [v3 collectionType];

  v5 = 7;
  if (v4 == &dword_4 + 2)
  {
    v5 = 103;
  }

  if (v4 == &dword_4 + 1)
  {
    v6 = 102;
  }

  else
  {
    v6 = v5;
  }

  v7 = [(NTKWhistlerAnalogFace *)self device];
  v8 = [NTKWhistlerAnalogColorEditOption optionWithFaceColor:v6 forDevice:v7];

  return v8;
}

- (id)_localizedNameForComplicationSlot:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:NTKComplicationSlot1] || objc_msgSend(v4, "isEqualToString:", NTKComplicationSlot2) || objc_msgSend(v4, "isEqualToString:", NTKComplicationSlot3) || objc_msgSend(v4, "isEqualToString:", NTKComplicationSlotBezel))
  {
    v5 = NTKClockFaceLocalizedString();
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKWhistlerAnalogFace;
    v5 = [(NTKWhistlerAnalogFace *)&v8 _localizedNameForComplicationSlot:v4];
  }

  v6 = v5;

  return v6;
}

- (void)applyPreviewConfigurationWithFamily:(int64_t)a3 faceColor:(int64_t)a4
{
  if (a4 > 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = *&asc_9228[8 * a4];
  }

  v6 = [(NTKWhistlerAnalogFace *)self device];
  v8 = [NTKWhistlerAnalogColorEditOption optionWithFaceColor:v5 forDevice:v6];

  [(NTKWhistlerAnalogFace *)self selectOption:v8 forCustomEditMode:10 slot:0];
  v7 = [NTKComplication anyComplicationOfType:0];
  [(NTKWhistlerAnalogFace *)self setComplication:v7 forSlot:NTKComplicationSlotTopLeft];
  [(NTKWhistlerAnalogFace *)self setComplication:v7 forSlot:NTKComplicationSlotTopRight];
  [(NTKWhistlerAnalogFace *)self setComplication:v7 forSlot:NTKComplicationSlotBottomLeft];
  [(NTKWhistlerAnalogFace *)self setComplication:v7 forSlot:NTKComplicationSlotBottomRight];
  [(NTKWhistlerAnalogFace *)self setComplication:v7 forSlot:NTKComplicationSlotBezel];
  [(NTKWhistlerAnalogFace *)self setComplication:v7 forSlot:NTKComplicationSlot1];
  [(NTKWhistlerAnalogFace *)self setComplication:v7 forSlot:NTKComplicationSlot2];
  [(NTKWhistlerAnalogFace *)self setComplication:v7 forSlot:NTKComplicationSlot3];
}

@end