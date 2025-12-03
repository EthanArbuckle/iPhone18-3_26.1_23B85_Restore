@interface NTKExplorerRichFace
+ (id)_complicationSlotDescriptors;
+ (id)_richComplicationSlotsForDevice:(id)device;
@end

@implementation NTKExplorerRichFace

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllSignatureCornerTypes();
  v12[0] = NTKComplicationSlotTopLeft;
  v3 = NTKComplicationTypeRankedListWithDefaultTypes();
  v4 = NTKMultiFamilyComplicationSlotDescriptor();
  v13[0] = v4;
  v12[1] = NTKComplicationSlotTopRight;
  v5 = NTKComplicationTypeRankedListWithDefaultTypes();
  v6 = NTKMultiFamilyComplicationSlotDescriptor();
  v13[1] = v6;
  v12[2] = NTKComplicationSlotBottomCenter;
  v7 = NTKAllUtilityLargeComplicationTypes();
  v8 = NTKComplicationTypeRankedListWithDefaultTypes();
  v9 = NTKComplicationSlotDescriptor();
  v13[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];

  return v10;
}

+ (id)_richComplicationSlotsForDevice:(id)device
{
  v5[0] = NTKComplicationSlotTopLeft;
  v5[1] = NTKComplicationSlotTopRight;
  v3 = [NSArray arrayWithObjects:v5 count:2];

  return v3;
}

@end