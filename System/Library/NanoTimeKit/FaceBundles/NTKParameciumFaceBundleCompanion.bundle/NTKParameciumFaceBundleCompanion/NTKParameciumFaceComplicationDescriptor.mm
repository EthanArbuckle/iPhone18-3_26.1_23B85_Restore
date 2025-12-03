@interface NTKParameciumFaceComplicationDescriptor
- (id)complicationSlotDescriptors;
- (id)localizedNameForComplicationSlot:(id)slot;
- (id)orderedComplicationSlots;
- (id)richComplicationSlotsForDevice:(id)device;
@end

@implementation NTKParameciumFaceComplicationDescriptor

- (id)complicationSlotDescriptors
{
  v8.receiver = self;
  v8.super_class = NTKParameciumFaceComplicationDescriptor;
  complicationSlotDescriptors = [(NTKParameciumFaceComplicationDescriptor *)&v8 complicationSlotDescriptors];
  v3 = [complicationSlotDescriptors mutableCopy];

  v4 = +[NSMutableIndexSet indexSet];
  [v4 addIndex:57];
  [v4 addIndex:14];
  [v4 addIndex:1];
  v9 = NTKComplicationSlotSubdialTop;
  v5 = NTKComplicationSlotDescriptor();
  v10 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];

  [v3 addEntriesFromDictionary:v6];

  return v3;
}

- (id)orderedComplicationSlots
{
  v6.receiver = self;
  v6.super_class = NTKParameciumFaceComplicationDescriptor;
  orderedComplicationSlots = [(NTKParameciumFaceComplicationDescriptor *)&v6 orderedComplicationSlots];
  v7 = NTKComplicationSlotSubdialTop;
  v3 = [NSArray arrayWithObjects:&v7 count:1];
  v4 = [orderedComplicationSlots arrayByAddingObjectsFromArray:v3];

  return v4;
}

- (id)localizedNameForComplicationSlot:(id)slot
{
  v5.receiver = self;
  v5.super_class = NTKParameciumFaceComplicationDescriptor;
  v3 = [(NTKParameciumFaceComplicationDescriptor *)&v5 localizedNameForComplicationSlot:slot];

  return v3;
}

- (id)richComplicationSlotsForDevice:(id)device
{
  v5.receiver = self;
  v5.super_class = NTKParameciumFaceComplicationDescriptor;
  v3 = [(NTKParameciumFaceComplicationDescriptor *)&v5 richComplicationSlotsForDevice:device];

  return v3;
}

@end