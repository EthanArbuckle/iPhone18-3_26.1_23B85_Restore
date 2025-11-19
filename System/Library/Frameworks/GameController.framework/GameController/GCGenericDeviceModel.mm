@interface GCGenericDeviceModel
@end

@implementation GCGenericDeviceModel

GCHapticActuator *__76__GCGenericDeviceModel_DeviceDelegate__physicalDeviceGetHapticCapabilities___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [GCHapticActuator alloc];
  v6 = [v4 name];

  v7 = [(GCHapticActuator *)v5 initWithLabel:v6 type:0 index:a3];

  return v7;
}

@end