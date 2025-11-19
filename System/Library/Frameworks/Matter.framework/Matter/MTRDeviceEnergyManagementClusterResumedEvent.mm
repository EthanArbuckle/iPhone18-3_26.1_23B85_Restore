@interface MTRDeviceEnergyManagementClusterResumedEvent
- (MTRDeviceEnergyManagementClusterResumedEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRDeviceEnergyManagementClusterResumedEvent

- (MTRDeviceEnergyManagementClusterResumedEvent)init
{
  v6.receiver = self;
  v6.super_class = MTRDeviceEnergyManagementClusterResumedEvent;
  v2 = [(MTRDeviceEnergyManagementClusterResumedEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    cause = v2->_cause;
    v2->_cause = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRDeviceEnergyManagementClusterResumedEvent);
  v5 = [(MTRDeviceEnergyManagementClusterResumedEvent *)self cause];
  [(MTRDeviceEnergyManagementClusterResumedEvent *)v4 setCause:v5];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: cause:%@ >", v5, self->_cause];;

  return v6;
}

@end