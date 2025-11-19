@interface MTRClusterBridgedDeviceBasicInformation
- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeHardwareVersionStringWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeHardwareVersionWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeManufacturingDateWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeNodeLabelWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePartNumberWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeProductAppearanceWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeProductLabelWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeProductNameWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeProductURLWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeReachableWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeSerialNumberWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeSoftwareVersionStringWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeSoftwareVersionWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeUniqueIDWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeVendorIDWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeVendorNameWithParams:(MTRReadParams *)params;
- (id)readAttributeConfigurationVersionWithParams:(id)a3;
- (id)readAttributeProductIDWithParams:(id)a3;
- (void)keepActiveWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)writeAttributeNodeLabelWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
@end

@implementation MTRClusterBridgedDeviceBasicInformation

- (void)keepActiveWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRBridgedDeviceBasicInformationClusterKeepActiveParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2393016F8;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  v16 = [(MTRBridgedDeviceBasicInformationClusterKeepActiveParams *)v10 timedInvokeTimeoutMs];
  v17 = [(MTRGenericCluster *)self device];
  v18 = [(MTRCluster *)self endpointID];
  v19 = [(MTRBridgedDeviceBasicInformationClusterKeepActiveParams *)v10 serverSideProcessingTimeout];
  v20 = [(MTRCluster *)self callbackQueue];
  [v17 _invokeKnownCommandWithEndpointID:v18 clusterID:&unk_284C42050 commandID:&unk_284C42068 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v16 serverSideProcessingTimeout:v19 responseClass:0 queue:v20 completion:v15];
}

- (NSDictionary)readAttributeVendorNameWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F48 attributeID:&unk_284C416C0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeVendorIDWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F48 attributeID:&unk_284C41930 params:v4];

  return v7;
}

- (NSDictionary)readAttributeProductNameWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F48 attributeID:&unk_284C41690 params:v4];

  return v7;
}

- (id)readAttributeProductIDWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F48 attributeID:&unk_284C417E0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeNodeLabelWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F48 attributeID:&unk_284C41948 params:v4];

  return v7;
}

- (void)writeAttributeNodeLabelWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C41F48 attributeID:&unk_284C41948 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeHardwareVersionWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F48 attributeID:&unk_284C41B10 params:v4];

  return v7;
}

- (NSDictionary)readAttributeHardwareVersionStringWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F48 attributeID:&unk_284C41918 params:v4];

  return v7;
}

- (NSDictionary)readAttributeSoftwareVersionWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F48 attributeID:&unk_284C41B28 params:v4];

  return v7;
}

- (NSDictionary)readAttributeSoftwareVersionStringWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F48 attributeID:&unk_284C41B40 params:v4];

  return v7;
}

- (NSDictionary)readAttributeManufacturingDateWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F48 attributeID:&unk_284C41B58 params:v4];

  return v7;
}

- (NSDictionary)readAttributePartNumberWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F48 attributeID:&unk_284C41B70 params:v4];

  return v7;
}

- (NSDictionary)readAttributeProductURLWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F48 attributeID:&unk_284C41B88 params:v4];

  return v7;
}

- (NSDictionary)readAttributeProductLabelWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F48 attributeID:&unk_284C41BA0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeSerialNumberWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F48 attributeID:&unk_284C41960 params:v4];

  return v7;
}

- (NSDictionary)readAttributeReachableWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F48 attributeID:&unk_284C41990 params:v4];

  return v7;
}

- (NSDictionary)readAttributeUniqueIDWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F48 attributeID:&unk_284C419A8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeProductAppearanceWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F48 attributeID:&unk_284C419D8 params:v4];

  return v7;
}

- (id)readAttributeConfigurationVersionWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F48 attributeID:&unk_284C41BE8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F48 attributeID:&unk_284C416D8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F48 attributeID:&unk_284C416F0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F48 attributeID:&unk_284C41708 params:v4];

  return v7;
}

- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F48 attributeID:&unk_284C41720 params:v4];

  return v7;
}

- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F48 attributeID:&unk_284C41738 params:v4];

  return v7;
}

@end