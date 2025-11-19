@interface NTKAnalogSmokeRichFace
+ (id)_complicationSlotDescriptors;
+ (id)_richComplicationSlotsForDevice:(id)a3;
@end

@implementation NTKAnalogSmokeRichFace

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllSignatureCornerTypes();
  v3 = NTKAllUtilityLargeComplicationTypes();
  v4 = NTKComplicationTypeRankedListWithDefaultTypes();
  v10[0] = NTKComplicationSlotTopLeft;
  v5 = NTKMultiFamilyComplicationSlotDescriptor();
  v11[0] = v5;
  v10[1] = NTKComplicationSlotTopRight;
  v6 = NTKMultiFamilyComplicationSlotDescriptor();
  v11[1] = v6;
  v10[2] = NTKComplicationSlotBottomCenter;
  v7 = NTKComplicationSlotDescriptor();
  v11[2] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

+ (id)_richComplicationSlotsForDevice:(id)a3
{
  v5[0] = NTKComplicationSlotTopLeft;
  v5[1] = NTKComplicationSlotTopRight;
  v3 = [NSArray arrayWithObjects:v5 count:2];

  return v3;
}

@end