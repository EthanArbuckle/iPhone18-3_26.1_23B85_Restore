@interface MTRDataTypeLocationDescriptorStruct
- (MTRDataTypeLocationDescriptorStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRDataTypeLocationDescriptorStruct

- (MTRDataTypeLocationDescriptorStruct)init
{
  v8.receiver = self;
  v8.super_class = MTRDataTypeLocationDescriptorStruct;
  v2 = [(MTRDataTypeLocationDescriptorStruct *)&v8 init];
  v3 = v2;
  if (v2)
  {
    locationName = v2->_locationName;
    v2->_locationName = &stru_284BD0DD8;

    floorNumber = v3->_floorNumber;
    v3->_floorNumber = 0;

    areaType = v3->_areaType;
    v3->_areaType = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRDataTypeLocationDescriptorStruct);
  locationName = [(MTRDataTypeLocationDescriptorStruct *)self locationName];
  [(MTRDataTypeLocationDescriptorStruct *)v4 setLocationName:locationName];

  floorNumber = [(MTRDataTypeLocationDescriptorStruct *)self floorNumber];
  [(MTRDataTypeLocationDescriptorStruct *)v4 setFloorNumber:floorNumber];

  areaType = [(MTRDataTypeLocationDescriptorStruct *)self areaType];
  [(MTRDataTypeLocationDescriptorStruct *)v4 setAreaType:areaType];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: locationName:%@ floorNumber:%@; areaType:%@; >", v5, self->_locationName, self->_floorNumber, self->_areaType];;

  return v6;
}

@end