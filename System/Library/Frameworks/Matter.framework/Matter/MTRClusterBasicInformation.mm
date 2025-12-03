@interface MTRClusterBasicInformation
- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeCapabilityMinimaWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeDataModelRevisionWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeHardwareVersionStringWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeHardwareVersionWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeLocalConfigDisabledWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeLocationWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeManufacturingDateWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeNodeLabelWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePartNumberWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeProductAppearanceWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeProductIDWithParams:(MTRReadParams *)params;
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
- (id)readAttributeConfigurationVersionWithParams:(id)params;
- (id)readAttributeMaxPathsPerInvokeWithParams:(id)params;
- (id)readAttributeSpecificationVersionWithParams:(id)params;
- (void)mfgSpecificPingWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion;
- (void)writeAttributeLocalConfigDisabledWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeLocationWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeNodeLabelWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
@end

@implementation MTRClusterBasicInformation

- (void)mfgSpecificPingWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion
{
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRBasicClusterMfgSpecificPingParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2392EDD28;
  v21[3] = &unk_278A73118;
  v14 = completionCopy;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRBasicClusterMfgSpecificPingParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRBasicClusterMfgSpecificPingParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C41AE0 commandID:&unk_284C41660 commandPayload:paramsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (NSDictionary)readAttributeDataModelRevisionWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41AF8 attributeID:&unk_284C416A8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeVendorNameWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41AF8 attributeID:&unk_284C416C0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeVendorIDWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41AF8 attributeID:&unk_284C41930 params:v4];

  return v7;
}

- (NSDictionary)readAttributeProductNameWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41AF8 attributeID:&unk_284C41690 params:v4];

  return v7;
}

- (NSDictionary)readAttributeProductIDWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41AF8 attributeID:&unk_284C417E0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeNodeLabelWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41AF8 attributeID:&unk_284C41948 params:v4];

  return v7;
}

- (void)writeAttributeNodeLabelWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  timedWriteTimeout = [(MTRWriteParams *)params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C41AF8 attributeID:&unk_284C41948 value:v12 expectedValueInterval:v8 timedWriteTimeout:timedWriteTimeout];
}

- (NSDictionary)readAttributeLocationWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41AF8 attributeID:&unk_284C41840 params:v4];

  return v7;
}

- (void)writeAttributeLocationWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  timedWriteTimeout = [(MTRWriteParams *)params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C41AF8 attributeID:&unk_284C41840 value:v12 expectedValueInterval:v8 timedWriteTimeout:timedWriteTimeout];
}

- (NSDictionary)readAttributeHardwareVersionWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41AF8 attributeID:&unk_284C41B10 params:v4];

  return v7;
}

- (NSDictionary)readAttributeHardwareVersionStringWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41AF8 attributeID:&unk_284C41918 params:v4];

  return v7;
}

- (NSDictionary)readAttributeSoftwareVersionWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41AF8 attributeID:&unk_284C41B28 params:v4];

  return v7;
}

- (NSDictionary)readAttributeSoftwareVersionStringWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41AF8 attributeID:&unk_284C41B40 params:v4];

  return v7;
}

- (NSDictionary)readAttributeManufacturingDateWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41AF8 attributeID:&unk_284C41B58 params:v4];

  return v7;
}

- (NSDictionary)readAttributePartNumberWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41AF8 attributeID:&unk_284C41B70 params:v4];

  return v7;
}

- (NSDictionary)readAttributeProductURLWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41AF8 attributeID:&unk_284C41B88 params:v4];

  return v7;
}

- (NSDictionary)readAttributeProductLabelWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41AF8 attributeID:&unk_284C41BA0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeSerialNumberWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41AF8 attributeID:&unk_284C41960 params:v4];

  return v7;
}

- (NSDictionary)readAttributeLocalConfigDisabledWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41AF8 attributeID:&unk_284C41978 params:v4];

  return v7;
}

- (void)writeAttributeLocalConfigDisabledWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  timedWriteTimeout = [(MTRWriteParams *)params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C41AF8 attributeID:&unk_284C41978 value:v12 expectedValueInterval:v8 timedWriteTimeout:timedWriteTimeout];
}

- (NSDictionary)readAttributeReachableWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41AF8 attributeID:&unk_284C41990 params:v4];

  return v7;
}

- (NSDictionary)readAttributeUniqueIDWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41AF8 attributeID:&unk_284C419A8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeCapabilityMinimaWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41AF8 attributeID:&unk_284C419C0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeProductAppearanceWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41AF8 attributeID:&unk_284C419D8 params:v4];

  return v7;
}

- (id)readAttributeSpecificationVersionWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41AF8 attributeID:&unk_284C41BB8 params:paramsCopy];

  return v7;
}

- (id)readAttributeMaxPathsPerInvokeWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41AF8 attributeID:&unk_284C41BD0 params:paramsCopy];

  return v7;
}

- (id)readAttributeConfigurationVersionWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41AF8 attributeID:&unk_284C41BE8 params:paramsCopy];

  return v7;
}

- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41AF8 attributeID:&unk_284C416D8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41AF8 attributeID:&unk_284C416F0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41AF8 attributeID:&unk_284C41708 params:v4];

  return v7;
}

- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41AF8 attributeID:&unk_284C41720 params:v4];

  return v7;
}

- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C41AF8 attributeID:&unk_284C41738 params:v4];

  return v7;
}

@end