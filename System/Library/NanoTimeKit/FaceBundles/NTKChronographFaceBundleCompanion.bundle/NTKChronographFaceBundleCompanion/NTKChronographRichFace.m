@interface NTKChronographRichFace
+ (id)_complicationSlotDescriptors;
+ (id)_richComplicationSlotsForDevice:(id)a3;
@end

@implementation NTKChronographRichFace

+ (id)_complicationSlotDescriptors
{
  if (qword_233C0 != -1)
  {
    sub_FCAC();
  }

  v2 = NTKWrappedDateComplicationType();
  v12[0] = NTKComplicationSlotTopLeft;
  v3 = NTKComplicationTypeRankedListWithDefaultTypes();
  v4 = NTKComplicationSlotDescriptor();
  v13[0] = v4;
  v12[1] = NTKComplicationSlotBottomLeft;
  v5 = NTKComplicationTypeRankedListWithDefaultTypes();
  v6 = NTKComplicationSlotDescriptor();
  v13[1] = v6;
  v12[2] = NTKComplicationSlotBottomRight;
  v7 = NTKComplicationTypeRankedListWithDefaultTypes();
  v8 = NTKComplicationSlotDescriptor();
  v13[2] = v8;
  v12[3] = NTKComplicationSlotDate;
  v9 = NTKComplicationSlotDescriptor();
  v13[3] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:4];

  return v10;
}

+ (id)_richComplicationSlotsForDevice:(id)a3
{
  v5[0] = NTKComplicationSlotTopLeft;
  v5[1] = NTKComplicationSlotBottomLeft;
  v5[2] = NTKComplicationSlotBottomRight;
  v3 = [NSArray arrayWithObjects:v5 count:3];

  return v3;
}

@end