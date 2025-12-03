@interface MTRDeviceEnergyManagementClusterCostStruct
- (MTRDeviceEnergyManagementClusterCostStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRDeviceEnergyManagementClusterCostStruct

- (MTRDeviceEnergyManagementClusterCostStruct)init
{
  v9.receiver = self;
  v9.super_class = MTRDeviceEnergyManagementClusterCostStruct;
  v2 = [(MTRDeviceEnergyManagementClusterCostStruct *)&v9 init];
  v3 = v2;
  if (v2)
  {
    costType = v2->_costType;
    v2->_costType = &unk_284C3E588;

    value = v3->_value;
    v3->_value = &unk_284C3E588;

    decimalPoints = v3->_decimalPoints;
    v3->_decimalPoints = &unk_284C3E588;

    currency = v3->_currency;
    v3->_currency = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRDeviceEnergyManagementClusterCostStruct);
  costType = [(MTRDeviceEnergyManagementClusterCostStruct *)self costType];
  [(MTRDeviceEnergyManagementClusterCostStruct *)v4 setCostType:costType];

  value = [(MTRDeviceEnergyManagementClusterCostStruct *)self value];
  [(MTRDeviceEnergyManagementClusterCostStruct *)v4 setValue:value];

  decimalPoints = [(MTRDeviceEnergyManagementClusterCostStruct *)self decimalPoints];
  [(MTRDeviceEnergyManagementClusterCostStruct *)v4 setDecimalPoints:decimalPoints];

  currency = [(MTRDeviceEnergyManagementClusterCostStruct *)self currency];
  [(MTRDeviceEnergyManagementClusterCostStruct *)v4 setCurrency:currency];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: costType:%@ value:%@; decimalPoints:%@; currency:%@; >", v5, self->_costType, self->_value, self->_decimalPoints, self->_currency];;

  return v6;
}

@end