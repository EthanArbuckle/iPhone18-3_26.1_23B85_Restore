@interface NTKPrideAnalogRichFace
+ (id)_complicationSlotDescriptors;
+ (id)_richComplicationSlotsForDevice:(id)a3;
@end

@implementation NTKPrideAnalogRichFace

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllSignatureCornerTypes();
  v13[0] = NTKComplicationSlotTopLeft;
  v3 = NTKComplicationTypeRankedListWithDefaultTypes();
  v4 = NTKMultiFamilyComplicationSlotDescriptor();
  v14[0] = v4;
  v13[1] = NTKComplicationSlotTopRight;
  v5 = NTKComplicationTypeRankedListWithDefaultTypes();
  v6 = NTKMultiFamilyComplicationSlotDescriptor();
  v14[1] = v6;
  v13[2] = NTKComplicationSlotBottomLeft;
  v7 = NTKComplicationTypeRankedListWithDefaultTypes();
  v8 = NTKMultiFamilyComplicationSlotDescriptor();
  v14[2] = v8;
  v13[3] = NTKComplicationSlotBottomRight;
  v9 = NTKComplicationTypeRankedListWithDefaultTypes();
  v10 = NTKMultiFamilyComplicationSlotDescriptor();
  v14[3] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];

  return v11;
}

+ (id)_richComplicationSlotsForDevice:(id)a3
{
  v5[0] = NTKComplicationSlotTopLeft;
  v5[1] = NTKComplicationSlotTopRight;
  v5[2] = NTKComplicationSlotBottomLeft;
  v5[3] = NTKComplicationSlotBottomRight;
  v3 = [NSArray arrayWithObjects:v5 count:4];

  return v3;
}

@end