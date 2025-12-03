@interface MTREcosystemInformationClusterEcosystemDeviceStruct
- (MTREcosystemInformationClusterEcosystemDeviceStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTREcosystemInformationClusterEcosystemDeviceStruct

- (MTREcosystemInformationClusterEcosystemDeviceStruct)init
{
  v15.receiver = self;
  v15.super_class = MTREcosystemInformationClusterEcosystemDeviceStruct;
  v2 = [(MTREcosystemInformationClusterEcosystemDeviceStruct *)&v15 init];
  v3 = v2;
  if (v2)
  {
    deviceName = v2->_deviceName;
    v2->_deviceName = 0;

    deviceNameLastEdit = v3->_deviceNameLastEdit;
    v3->_deviceNameLastEdit = 0;

    bridgedEndpoint = v3->_bridgedEndpoint;
    v3->_bridgedEndpoint = &unk_284C3E588;

    originalEndpoint = v3->_originalEndpoint;
    v3->_originalEndpoint = &unk_284C3E588;

    array = [MEMORY[0x277CBEA60] array];
    deviceTypes = v3->_deviceTypes;
    v3->_deviceTypes = array;

    array2 = [MEMORY[0x277CBEA60] array];
    uniqueLocationIDs = v3->_uniqueLocationIDs;
    v3->_uniqueLocationIDs = array2;

    uniqueLocationIDsLastEdit = v3->_uniqueLocationIDsLastEdit;
    v3->_uniqueLocationIDsLastEdit = &unk_284C3E588;

    fabricIndex = v3->_fabricIndex;
    v3->_fabricIndex = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTREcosystemInformationClusterEcosystemDeviceStruct);
  deviceName = [(MTREcosystemInformationClusterEcosystemDeviceStruct *)self deviceName];
  [(MTREcosystemInformationClusterEcosystemDeviceStruct *)v4 setDeviceName:deviceName];

  deviceNameLastEdit = [(MTREcosystemInformationClusterEcosystemDeviceStruct *)self deviceNameLastEdit];
  [(MTREcosystemInformationClusterEcosystemDeviceStruct *)v4 setDeviceNameLastEdit:deviceNameLastEdit];

  bridgedEndpoint = [(MTREcosystemInformationClusterEcosystemDeviceStruct *)self bridgedEndpoint];
  [(MTREcosystemInformationClusterEcosystemDeviceStruct *)v4 setBridgedEndpoint:bridgedEndpoint];

  originalEndpoint = [(MTREcosystemInformationClusterEcosystemDeviceStruct *)self originalEndpoint];
  [(MTREcosystemInformationClusterEcosystemDeviceStruct *)v4 setOriginalEndpoint:originalEndpoint];

  deviceTypes = [(MTREcosystemInformationClusterEcosystemDeviceStruct *)self deviceTypes];
  [(MTREcosystemInformationClusterEcosystemDeviceStruct *)v4 setDeviceTypes:deviceTypes];

  uniqueLocationIDs = [(MTREcosystemInformationClusterEcosystemDeviceStruct *)self uniqueLocationIDs];
  [(MTREcosystemInformationClusterEcosystemDeviceStruct *)v4 setUniqueLocationIDs:uniqueLocationIDs];

  uniqueLocationIDsLastEdit = [(MTREcosystemInformationClusterEcosystemDeviceStruct *)self uniqueLocationIDsLastEdit];
  [(MTREcosystemInformationClusterEcosystemDeviceStruct *)v4 setUniqueLocationIDsLastEdit:uniqueLocationIDsLastEdit];

  fabricIndex = [(MTREcosystemInformationClusterEcosystemDeviceStruct *)self fabricIndex];
  [(MTREcosystemInformationClusterEcosystemDeviceStruct *)v4 setFabricIndex:fabricIndex];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: deviceName:%@ deviceNameLastEdit:%@; bridgedEndpoint:%@; originalEndpoint:%@; deviceTypes:%@; uniqueLocationIDs:%@; uniqueLocationIDsLastEdit:%@; fabricIndex:%@; >", v5, self->_deviceName, self->_deviceNameLastEdit, self->_bridgedEndpoint, self->_originalEndpoint, self->_deviceTypes, self->_uniqueLocationIDs, self->_uniqueLocationIDsLastEdit, self->_fabricIndex];;

  return v6;
}

@end