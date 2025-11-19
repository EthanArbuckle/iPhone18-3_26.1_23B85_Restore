@interface NTKAlaskanComplicationsConfiguration
- (NTKAlaskanComplicationsConfiguration)init;
- (id)complicationSlotDescriptors;
- (id)orderedComplicationSlots;
- (id)richComplicationSlotsForDevice:(id)a3;
@end

@implementation NTKAlaskanComplicationsConfiguration

- (NTKAlaskanComplicationsConfiguration)init
{
  v3.receiver = self;
  v3.super_class = NTKAlaskanComplicationsConfiguration;
  return [(NTKAlaskanComplicationsConfiguration *)&v3 initWithTopLeftComplication:43 topRightComplication:10 bottomLeftComplication:19 bottomRightComplication:7];
}

- (id)complicationSlotDescriptors
{
  v7.receiver = self;
  v7.super_class = NTKAlaskanComplicationsConfiguration;
  v2 = [(NTKAlaskanComplicationsConfiguration *)&v7 complicationSlotDescriptors];
  v3 = [v2 mutableCopy];

  v4 = NTKWrappedDateComplicationType();
  v5 = NTKComplicationSlotDescriptor();
  [v3 setObject:v5 forKeyedSubscript:NTKComplicationSlotDate];

  return v3;
}

- (id)orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotTopLeft;
  v4[1] = NTKComplicationSlotTopRight;
  v4[2] = NTKComplicationSlotDate;
  v4[3] = NTKComplicationSlotBottomLeft;
  v4[4] = NTKComplicationSlotBottomRight;
  v2 = [NSArray arrayWithObjects:v4 count:5];

  return v2;
}

- (id)richComplicationSlotsForDevice:(id)a3
{
  v5[0] = NTKComplicationSlotTopLeft;
  v5[1] = NTKComplicationSlotTopRight;
  v5[2] = NTKComplicationSlotBottomLeft;
  v5[3] = NTKComplicationSlotBottomRight;
  v3 = [NSArray arrayWithObjects:v5 count:4];

  return v3;
}

@end