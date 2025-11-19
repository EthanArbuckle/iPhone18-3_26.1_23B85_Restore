@interface MTREcosystemInformationClusterEcosystemLocationStruct
- (MTREcosystemInformationClusterEcosystemLocationStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTREcosystemInformationClusterEcosystemLocationStruct

- (MTREcosystemInformationClusterEcosystemLocationStruct)init
{
  v10.receiver = self;
  v10.super_class = MTREcosystemInformationClusterEcosystemLocationStruct;
  v2 = [(MTREcosystemInformationClusterEcosystemLocationStruct *)&v10 init];
  v3 = v2;
  if (v2)
  {
    uniqueLocationID = v2->_uniqueLocationID;
    v2->_uniqueLocationID = &stru_284BD0DD8;

    v5 = objc_opt_new();
    locationDescriptor = v3->_locationDescriptor;
    v3->_locationDescriptor = v5;

    locationDescriptorLastEdit = v3->_locationDescriptorLastEdit;
    v3->_locationDescriptorLastEdit = &unk_284C3E588;

    fabricIndex = v3->_fabricIndex;
    v3->_fabricIndex = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTREcosystemInformationClusterEcosystemLocationStruct);
  v5 = [(MTREcosystemInformationClusterEcosystemLocationStruct *)self uniqueLocationID];
  [(MTREcosystemInformationClusterEcosystemLocationStruct *)v4 setUniqueLocationID:v5];

  v6 = [(MTREcosystemInformationClusterEcosystemLocationStruct *)self locationDescriptor];
  [(MTREcosystemInformationClusterEcosystemLocationStruct *)v4 setLocationDescriptor:v6];

  v7 = [(MTREcosystemInformationClusterEcosystemLocationStruct *)self locationDescriptorLastEdit];
  [(MTREcosystemInformationClusterEcosystemLocationStruct *)v4 setLocationDescriptorLastEdit:v7];

  v8 = [(MTREcosystemInformationClusterEcosystemLocationStruct *)self fabricIndex];
  [(MTREcosystemInformationClusterEcosystemLocationStruct *)v4 setFabricIndex:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: uniqueLocationID:%@ locationDescriptor:%@; locationDescriptorLastEdit:%@; fabricIndex:%@; >", v5, self->_uniqueLocationID, self->_locationDescriptor, self->_locationDescriptorLastEdit, self->_fabricIndex];;

  return v6;
}

@end