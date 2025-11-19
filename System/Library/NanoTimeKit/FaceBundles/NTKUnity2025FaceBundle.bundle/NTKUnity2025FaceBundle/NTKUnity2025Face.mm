@interface NTKUnity2025Face
+ (id)_complicationSlotDescriptors;
+ (id)_orderedComplicationSlots;
+ (id)_richComplicationSlotsForDevice:(id)a3;
- (id)_localizedNameForComplicationSlot:(id)a3;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKUnity2025Face

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKUnity2025Face *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKUnity2025Face *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKUnity2025Face *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

+ (id)_complicationSlotDescriptors
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = NTKAllSignatureCircularTypes();
  v10[0] = *MEMORY[0x277D2BF08];
  v3 = NTKComplicationTypeRankedListWithDefaultTypes();
  v4 = NTKMultiFamilyComplicationSlotDescriptor();
  v11[0] = v4;
  v10[1] = *MEMORY[0x277D2BEE8];
  v5 = NTKComplicationTypeRankedListWithDefaultTypes();
  v6 = NTKMultiFamilyComplicationSlotDescriptor();
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)_richComplicationSlotsForDevice:(id)a3
{
  v7[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D2BEE8];
  v7[0] = *MEMORY[0x277D2BF08];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)_orderedComplicationSlots
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D2BEE8];
  v6[0] = *MEMORY[0x277D2BF08];
  v6[1] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_localizedNameForComplicationSlot:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277D2BF08]])
  {
    v4 = @"TOP_LEFT";
  }

  else
  {
    v5 = [v3 isEqualToString:*MEMORY[0x277D2BEE8]];
    v4 = @"BOTTOM_RIGHT";
    if (!v5)
    {
      v4 = 0;
    }
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"SLOT_LABEL_%@", v4];
  v7 = NTKClockFaceLocalizedString();

  return v7;
}

@end