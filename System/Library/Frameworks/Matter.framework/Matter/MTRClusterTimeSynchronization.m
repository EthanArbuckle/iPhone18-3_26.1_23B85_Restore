@interface MTRClusterTimeSynchronization
- (id)readAttributeAcceptedCommandListWithParams:(id)a3;
- (id)readAttributeAttributeListWithParams:(id)a3;
- (id)readAttributeClusterRevisionWithParams:(id)a3;
- (id)readAttributeDSTOffsetListMaxSizeWithParams:(id)a3;
- (id)readAttributeDSTOffsetWithParams:(id)a3;
- (id)readAttributeDefaultNTPWithParams:(id)a3;
- (id)readAttributeFeatureMapWithParams:(id)a3;
- (id)readAttributeGeneratedCommandListWithParams:(id)a3;
- (id)readAttributeGranularityWithParams:(id)a3;
- (id)readAttributeLocalTimeWithParams:(id)a3;
- (id)readAttributeNTPServerAvailableWithParams:(id)a3;
- (id)readAttributeSupportsDNSResolveWithParams:(id)a3;
- (id)readAttributeTimeSourceWithParams:(id)a3;
- (id)readAttributeTimeZoneDatabaseWithParams:(id)a3;
- (id)readAttributeTimeZoneListMaxSizeWithParams:(id)a3;
- (id)readAttributeTimeZoneWithParams:(id)a3;
- (id)readAttributeTrustedTimeSourceWithParams:(id)a3;
- (id)readAttributeUTCTimeWithParams:(id)a3;
- (void)setDSTOffsetWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)setDefaultNTPWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)setTimeZoneWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)setTrustedTimeSourceWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)setUTCTimeWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
@end

@implementation MTRClusterTimeSynchronization

- (void)setUTCTimeWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRTimeSynchronizationClusterSetUTCTimeParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2392FFEC4;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  v16 = [(MTRTimeSynchronizationClusterSetUTCTimeParams *)v10 timedInvokeTimeoutMs];
  v17 = [(MTRGenericCluster *)self device];
  v18 = [(MTRCluster *)self endpointID];
  v19 = [(MTRTimeSynchronizationClusterSetUTCTimeParams *)v10 serverSideProcessingTimeout];
  v20 = [(MTRCluster *)self callbackQueue];
  [v17 _invokeKnownCommandWithEndpointID:v18 clusterID:&unk_284C42038 commandID:&unk_284C41660 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v16 serverSideProcessingTimeout:v19 responseClass:0 queue:v20 completion:v15];
}

- (void)setTrustedTimeSourceWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRTimeSynchronizationClusterSetTrustedTimeSourceParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2393000E4;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  v16 = [(MTRTimeSynchronizationClusterSetTrustedTimeSourceParams *)v10 timedInvokeTimeoutMs];
  v17 = [(MTRGenericCluster *)self device];
  v18 = [(MTRCluster *)self endpointID];
  v19 = [(MTRTimeSynchronizationClusterSetTrustedTimeSourceParams *)v10 serverSideProcessingTimeout];
  v20 = [(MTRCluster *)self callbackQueue];
  [v17 _invokeKnownCommandWithEndpointID:v18 clusterID:&unk_284C42038 commandID:&unk_284C41768 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v16 serverSideProcessingTimeout:v19 responseClass:0 queue:v20 completion:v15];
}

- (void)setTimeZoneWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v22 = a4;
  v11 = a5;
  v12 = a6;
  v21 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRTimeSynchronizationClusterSetTimeZoneParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_23930031C;
  v23[3] = &unk_278A73118;
  v13 = v12;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  v15 = [(MTRTimeSynchronizationClusterSetTimeZoneParams *)v10 timedInvokeTimeoutMs];
  v16 = [(MTRGenericCluster *)self device];
  v17 = [(MTRCluster *)self endpointID];
  v18 = [(MTRTimeSynchronizationClusterSetTimeZoneParams *)v10 serverSideProcessingTimeout];
  v19 = objc_opt_class();
  v20 = [(MTRCluster *)self callbackQueue];
  [v16 _invokeKnownCommandWithEndpointID:v17 clusterID:&unk_284C42038 commandID:&unk_284C41780 commandPayload:v10 expectedValues:v22 expectedValueInterval:v11 timedInvokeTimeout:v15 serverSideProcessingTimeout:v18 responseClass:v19 queue:v20 completion:{v14, v21}];
}

- (void)setDSTOffsetWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRTimeSynchronizationClusterSetDSTOffsetParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_239300538;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  v16 = [(MTRTimeSynchronizationClusterSetDSTOffsetParams *)v10 timedInvokeTimeoutMs];
  v17 = [(MTRGenericCluster *)self device];
  v18 = [(MTRCluster *)self endpointID];
  v19 = [(MTRTimeSynchronizationClusterSetDSTOffsetParams *)v10 serverSideProcessingTimeout];
  v20 = [(MTRCluster *)self callbackQueue];
  [v17 _invokeKnownCommandWithEndpointID:v18 clusterID:&unk_284C42038 commandID:&unk_284C417B0 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v16 serverSideProcessingTimeout:v19 responseClass:0 queue:v20 completion:v15];
}

- (void)setDefaultNTPWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRTimeSynchronizationClusterSetDefaultNTPParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_239300758;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  v16 = [(MTRTimeSynchronizationClusterSetDefaultNTPParams *)v10 timedInvokeTimeoutMs];
  v17 = [(MTRGenericCluster *)self device];
  v18 = [(MTRCluster *)self endpointID];
  v19 = [(MTRTimeSynchronizationClusterSetDefaultNTPParams *)v10 serverSideProcessingTimeout];
  v20 = [(MTRCluster *)self callbackQueue];
  [v17 _invokeKnownCommandWithEndpointID:v18 clusterID:&unk_284C42038 commandID:&unk_284C417C8 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v16 serverSideProcessingTimeout:v19 responseClass:0 queue:v20 completion:v15];
}

- (id)readAttributeUTCTimeWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F30 attributeID:&unk_284C416A8 params:v4];

  return v7;
}

- (id)readAttributeGranularityWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F30 attributeID:&unk_284C416C0 params:v4];

  return v7;
}

- (id)readAttributeTimeSourceWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F30 attributeID:&unk_284C41930 params:v4];

  return v7;
}

- (id)readAttributeTrustedTimeSourceWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F30 attributeID:&unk_284C41690 params:v4];

  return v7;
}

- (id)readAttributeDefaultNTPWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F30 attributeID:&unk_284C417E0 params:v4];

  return v7;
}

- (id)readAttributeTimeZoneWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F30 attributeID:&unk_284C41948 params:v4];

  return v7;
}

- (id)readAttributeDSTOffsetWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F30 attributeID:&unk_284C41840 params:v4];

  return v7;
}

- (id)readAttributeLocalTimeWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F30 attributeID:&unk_284C41B10 params:v4];

  return v7;
}

- (id)readAttributeTimeZoneDatabaseWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F30 attributeID:&unk_284C41918 params:v4];

  return v7;
}

- (id)readAttributeNTPServerAvailableWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F30 attributeID:&unk_284C41B28 params:v4];

  return v7;
}

- (id)readAttributeTimeZoneListMaxSizeWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F30 attributeID:&unk_284C41B40 params:v4];

  return v7;
}

- (id)readAttributeDSTOffsetListMaxSizeWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F30 attributeID:&unk_284C41B58 params:v4];

  return v7;
}

- (id)readAttributeSupportsDNSResolveWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F30 attributeID:&unk_284C41B70 params:v4];

  return v7;
}

- (id)readAttributeGeneratedCommandListWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F30 attributeID:&unk_284C416D8 params:v4];

  return v7;
}

- (id)readAttributeAcceptedCommandListWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F30 attributeID:&unk_284C416F0 params:v4];

  return v7;
}

- (id)readAttributeAttributeListWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F30 attributeID:&unk_284C41708 params:v4];

  return v7;
}

- (id)readAttributeFeatureMapWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F30 attributeID:&unk_284C41720 params:v4];

  return v7;
}

- (id)readAttributeClusterRevisionWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C41F30 attributeID:&unk_284C41738 params:v4];

  return v7;
}

@end