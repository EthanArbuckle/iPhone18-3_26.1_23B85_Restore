@interface NTKCaliforniaFaceComplicationDescriptor
- (id)complicationSlotDescriptors;
- (id)localizedNameForComplicationSlot:(id)slot;
- (id)orderedComplicationSlots;
- (id)richComplicationSlotsForDevice:(id)device;
@end

@implementation NTKCaliforniaFaceComplicationDescriptor

- (id)complicationSlotDescriptors
{
  v14.receiver = self;
  v14.super_class = NTKCaliforniaFaceComplicationDescriptor;
  complicationSlotDescriptors = [(NTKCaliforniaFaceComplicationDescriptor *)&v14 complicationSlotDescriptors];
  v3 = [complicationSlotDescriptors mutableCopy];

  v4 = NTKAllSignatureCircularTypes();
  v5 = NTKAllSimpleTextComplicationTypes();
  v6 = NTKAllUtilityLargeComplicationTypes();
  v7 = NTKComplicationTypeRankedListWithDefaultTypes();
  v8 = NTKComplicationTypeRankedListWithDefaultTypes();
  v15[0] = NTKComplicationSlotBezel;
  v9 = NTKComplicationSlotDescriptor();
  v16[0] = v9;
  v15[1] = NTKComplicationSlotSubdialTop;
  v10 = NTKComplicationSlotDescriptor();
  v16[1] = v10;
  v15[2] = NTKComplicationSlotSubdialBottom;
  v11 = NTKComplicationSlotDescriptor();
  v16[2] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];

  [v3 addEntriesFromDictionary:v12];

  return v3;
}

- (id)orderedComplicationSlots
{
  v6.receiver = self;
  v6.super_class = NTKCaliforniaFaceComplicationDescriptor;
  orderedComplicationSlots = [(NTKCaliforniaFaceComplicationDescriptor *)&v6 orderedComplicationSlots];
  v7[0] = NTKComplicationSlotBezel;
  v7[1] = NTKComplicationSlotSubdialTop;
  v7[2] = NTKComplicationSlotSubdialBottom;
  v3 = [NSArray arrayWithObjects:v7 count:3];
  v4 = [orderedComplicationSlots arrayByAddingObjectsFromArray:v3];

  return v4;
}

- (id)localizedNameForComplicationSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:NTKComplicationSlotBezel])
  {
    v5 = NTKClockFaceLocalizedString();
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKCaliforniaFaceComplicationDescriptor;
    v5 = [(NTKCaliforniaFaceComplicationDescriptor *)&v8 localizedNameForComplicationSlot:slotCopy];
  }

  v6 = v5;

  return v6;
}

- (id)richComplicationSlotsForDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = NTKCaliforniaFaceComplicationDescriptor;
  v3 = [(NTKCaliforniaFaceComplicationDescriptor *)&v6 richComplicationSlotsForDevice:device];
  v4 = [v3 arrayByAddingObject:NTKComplicationSlotSubdialBottom];

  return v4;
}

@end