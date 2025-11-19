@interface NTKVictoryDigitalRichFace
+ (id)_complicationSlotDescriptors;
+ (id)_richComplicationSlotsForDevice:(id)a3;
@end

@implementation NTKVictoryDigitalRichFace

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllSignatureCircularTypes();
  v3 = NTKAllUtilityLargeComplicationTypes();
  v12[0] = NTKComplicationSlot1;
  v4 = NTKComplicationTypeRankedListWithDefaultTypes();
  v5 = NTKMultiFamilyComplicationSlotDescriptor();
  v13[0] = v5;
  v12[1] = NTKComplicationSlot2;
  v6 = NTKComplicationTypeRankedListWithDefaultTypes();
  v7 = NTKMultiFamilyComplicationSlotDescriptor();
  v13[1] = v7;
  v12[2] = NTKComplicationSlotBottom;
  v8 = NTKComplicationTypeRankedListWithDefaultTypes();
  v9 = NTKComplicationSlotDescriptor();
  v13[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];

  return v10;
}

+ (id)_richComplicationSlotsForDevice:(id)a3
{
  v5[0] = NTKComplicationSlot1;
  v5[1] = NTKComplicationSlot2;
  v3 = [NSArray arrayWithObjects:v5 count:2];

  return v3;
}

@end