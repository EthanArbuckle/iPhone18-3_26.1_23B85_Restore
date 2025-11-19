@interface NTKColorAnalogRichFace
+ (id)_complicationSlotDescriptors;
+ (id)_richComplicationSlotsForDevice:(id)a3;
@end

@implementation NTKColorAnalogRichFace

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllSignatureCornerTypes();
  v15[0] = NTKComplicationSlotTopLeft;
  v14 = NTKComplicationTypeRankedListWithDefaultTypes();
  v13 = NTKMultiFamilyComplicationSlotDescriptor();
  v16[0] = v13;
  v15[1] = NTKComplicationSlotTopRight;
  v3 = NTKComplicationTypeRankedListWithDefaultTypes();
  v4 = NTKMultiFamilyComplicationSlotDescriptor();
  v16[1] = v4;
  v15[2] = NTKComplicationSlotBottomLeft;
  v5 = NTKComplicationTypeRankedListWithDefaultTypes();
  v6 = NTKMultiFamilyComplicationSlotDescriptor();
  v16[2] = v6;
  v15[3] = NTKComplicationSlotBottomRight;
  v7 = NTKComplicationTypeRankedListWithDefaultTypes();
  v8 = NTKMultiFamilyComplicationSlotDescriptor();
  v16[3] = v8;
  v15[4] = NTKComplicationSlotMonogram;
  v9 = [NSIndexSet indexSetWithIndex:14];
  v10 = NTKComplicationSlotDescriptor();
  v16[4] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:5];

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