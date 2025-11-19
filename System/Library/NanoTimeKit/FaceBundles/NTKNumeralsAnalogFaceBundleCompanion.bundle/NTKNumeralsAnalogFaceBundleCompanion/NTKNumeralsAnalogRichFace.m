@interface NTKNumeralsAnalogRichFace
+ (id)_complicationSlotDescriptors;
+ (id)_richComplicationSlotsForDevice:(id)a3;
@end

@implementation NTKNumeralsAnalogRichFace

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllSignatureCircularTypes();
  v7 = NTKComplicationSlot1;
  v3 = NTKComplicationTypeRankedListWithDefaultTypes();
  v4 = NTKMultiFamilyComplicationSlotDescriptor();
  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  return v5;
}

+ (id)_richComplicationSlotsForDevice:(id)a3
{
  v5 = NTKComplicationSlot1;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

@end