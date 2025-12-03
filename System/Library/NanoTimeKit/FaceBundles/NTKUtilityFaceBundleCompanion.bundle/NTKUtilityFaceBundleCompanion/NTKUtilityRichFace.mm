@interface NTKUtilityRichFace
+ (id)_complicationSlotDescriptors;
+ (id)_richComplicationSlotsForDevice:(id)device;
@end

@implementation NTKUtilityRichFace

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllSignatureCornerTypes();
  v13 = NTKAllUtilityLargeComplicationTypes();
  v3 = NTKWrappedDateComplicationType();
  v14[0] = NTKComplicationSlotTopLeft;
  v4 = NTKComplicationTypeRankedListWithDefaultTypes();
  v5 = NTKMultiFamilyComplicationSlotDescriptor();
  v15[0] = v5;
  v14[1] = NTKComplicationSlotTopRight;
  v6 = NTKComplicationTypeRankedListWithDefaultTypes();
  v7 = NTKMultiFamilyComplicationSlotDescriptor();
  v15[1] = v7;
  v14[2] = NTKComplicationSlotBottomCenter;
  v8 = NTKComplicationTypeRankedListWithDefaultTypes();
  v9 = NTKComplicationSlotDescriptor();
  v15[2] = v9;
  v14[3] = NTKComplicationSlotDate;
  v10 = NTKComplicationSlotDescriptor();
  v15[3] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];

  return v11;
}

+ (id)_richComplicationSlotsForDevice:(id)device
{
  v5[0] = NTKComplicationSlotTopLeft;
  v5[1] = NTKComplicationSlotTopRight;
  v3 = [NSArray arrayWithObjects:v5 count:2];

  return v3;
}

@end