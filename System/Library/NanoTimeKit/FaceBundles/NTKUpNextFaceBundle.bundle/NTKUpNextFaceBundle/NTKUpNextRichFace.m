@interface NTKUpNextRichFace
+ (id)_complicationSlotDescriptors;
+ (id)_leftSlotDescriptorTypes;
+ (id)_richComplicationSlotsForDevice:(id)a3;
@end

@implementation NTKUpNextRichFace

+ (id)_leftSlotDescriptorTypes
{
  v2 = objc_opt_new();
  v3 = NTKAllSignatureCircularTypes();
  [v2 addIndexes:v3];

  [v2 addIndex:29];
  v4 = [[NSIndexSet alloc] initWithIndexSet:v2];

  return v4;
}

+ (id)_complicationSlotDescriptors
{
  v2 = [a1 _leftSlotDescriptorTypes];
  v3 = NTKAllUtilitySmallFlatComplicationTypes();
  v11 = &off_19080;
  v12[0] = NTKComplicationSlotTopLeft;
  v4 = [NSArray arrayWithObjects:&v11 count:1];
  v5 = NTKComplicationTypeRankedListWithDefaultTypes();
  v6 = NTKMultiFamilyComplicationSlotDescriptor();
  v13[0] = v6;
  v12[1] = NTKComplicationSlotTopRight;
  v7 = NTKComplicationTypeRankedListWithDefaultTypes();
  v8 = NTKComplicationSlotDescriptor();
  v13[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v9;
}

+ (id)_richComplicationSlotsForDevice:(id)a3
{
  v5 = NTKComplicationSlotTopLeft;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

@end