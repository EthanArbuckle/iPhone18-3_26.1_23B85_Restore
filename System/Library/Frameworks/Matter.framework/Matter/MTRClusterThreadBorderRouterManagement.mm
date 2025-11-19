@interface MTRClusterThreadBorderRouterManagement
- (id)readAttributeAcceptedCommandListWithParams:(id)a3;
- (id)readAttributeActiveDatasetTimestampWithParams:(id)a3;
- (id)readAttributeAttributeListWithParams:(id)a3;
- (id)readAttributeBorderAgentIDWithParams:(id)a3;
- (id)readAttributeBorderRouterNameWithParams:(id)a3;
- (id)readAttributeClusterRevisionWithParams:(id)a3;
- (id)readAttributeFeatureMapWithParams:(id)a3;
- (id)readAttributeGeneratedCommandListWithParams:(id)a3;
- (id)readAttributeInterfaceEnabledWithParams:(id)a3;
- (id)readAttributePendingDatasetTimestampWithParams:(id)a3;
- (id)readAttributeThreadVersionWithParams:(id)a3;
- (void)getActiveDatasetRequestWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)getPendingDatasetRequestWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)setActiveDatasetRequestWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)setPendingDatasetRequestWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
@end

@implementation MTRClusterThreadBorderRouterManagement

- (void)getActiveDatasetRequestWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v22 = a4;
  v11 = a5;
  v12 = a6;
  v21 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRThreadBorderRouterManagementClusterGetActiveDatasetRequestParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_239350788;
  v23[3] = &unk_278A73118;
  v13 = v12;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  v15 = [(MTRThreadBorderRouterManagementClusterGetActiveDatasetRequestParams *)v10 timedInvokeTimeoutMs];
  v16 = [(MTRGenericCluster *)self device];
  v17 = [(MTRCluster *)self endpointID];
  v18 = [(MTRThreadBorderRouterManagementClusterGetActiveDatasetRequestParams *)v10 serverSideProcessingTimeout];
  v19 = objc_opt_class();
  v20 = [(MTRCluster *)self callbackQueue];
  [v16 _invokeKnownCommandWithEndpointID:v17 clusterID:&unk_284C430A0 commandID:&unk_284C41660 commandPayload:v10 expectedValues:v22 expectedValueInterval:v11 timedInvokeTimeout:v15 serverSideProcessingTimeout:v18 responseClass:v19 queue:v20 completion:{v14, v21}];
}

- (void)getPendingDatasetRequestWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v22 = a4;
  v11 = a5;
  v12 = a6;
  v21 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRThreadBorderRouterManagementClusterGetPendingDatasetRequestParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_2393509D0;
  v23[3] = &unk_278A73118;
  v13 = v12;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  v15 = [(MTRThreadBorderRouterManagementClusterGetPendingDatasetRequestParams *)v10 timedInvokeTimeoutMs];
  v16 = [(MTRGenericCluster *)self device];
  v17 = [(MTRCluster *)self endpointID];
  v18 = [(MTRThreadBorderRouterManagementClusterGetPendingDatasetRequestParams *)v10 serverSideProcessingTimeout];
  v19 = objc_opt_class();
  v20 = [(MTRCluster *)self callbackQueue];
  [v16 _invokeKnownCommandWithEndpointID:v17 clusterID:&unk_284C430A0 commandID:&unk_284C41768 commandPayload:v10 expectedValues:v22 expectedValueInterval:v11 timedInvokeTimeout:v15 serverSideProcessingTimeout:v18 responseClass:v19 queue:v20 completion:{v14, v21}];
}

- (void)setActiveDatasetRequestWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRThreadBorderRouterManagementClusterSetActiveDatasetRequestParams);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_239350BF8;
  v22[3] = &unk_278A73118;
  v14 = v13;
  v23 = v14;
  v15 = MEMORY[0x23EE78590](v22);
  v16 = [(MTRThreadBorderRouterManagementClusterSetActiveDatasetRequestParams *)v10 timedInvokeTimeoutMs];
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = &unk_284C42080;
  }

  v18 = [(MTRGenericCluster *)self device];
  v19 = [(MTRCluster *)self endpointID];
  v20 = [(MTRThreadBorderRouterManagementClusterSetActiveDatasetRequestParams *)v10 serverSideProcessingTimeout];
  v21 = [(MTRCluster *)self callbackQueue];
  [v18 _invokeKnownCommandWithEndpointID:v19 clusterID:&unk_284C430A0 commandID:&unk_284C41798 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v17 serverSideProcessingTimeout:v20 responseClass:0 queue:v21 completion:v15];
}

- (void)setPendingDatasetRequestWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRThreadBorderRouterManagementClusterSetPendingDatasetRequestParams);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_239350E24;
  v22[3] = &unk_278A73118;
  v14 = v13;
  v23 = v14;
  v15 = MEMORY[0x23EE78590](v22);
  v16 = [(MTRThreadBorderRouterManagementClusterSetPendingDatasetRequestParams *)v10 timedInvokeTimeoutMs];
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = &unk_284C42080;
  }

  v18 = [(MTRGenericCluster *)self device];
  v19 = [(MTRCluster *)self endpointID];
  v20 = [(MTRThreadBorderRouterManagementClusterSetPendingDatasetRequestParams *)v10 serverSideProcessingTimeout];
  v21 = [(MTRCluster *)self callbackQueue];
  [v18 _invokeKnownCommandWithEndpointID:v19 clusterID:&unk_284C430A0 commandID:&unk_284C417B0 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v17 serverSideProcessingTimeout:v20 responseClass:0 queue:v21 completion:v15];
}

- (id)readAttributeBorderRouterNameWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C430B8 attributeID:&unk_284C416A8 params:v4];

  return v7;
}

- (id)readAttributeBorderAgentIDWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C430B8 attributeID:&unk_284C416C0 params:v4];

  return v7;
}

- (id)readAttributeThreadVersionWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C430B8 attributeID:&unk_284C41930 params:v4];

  return v7;
}

- (id)readAttributeInterfaceEnabledWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C430B8 attributeID:&unk_284C41690 params:v4];

  return v7;
}

- (id)readAttributeActiveDatasetTimestampWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C430B8 attributeID:&unk_284C417E0 params:v4];

  return v7;
}

- (id)readAttributePendingDatasetTimestampWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C430B8 attributeID:&unk_284C41948 params:v4];

  return v7;
}

- (id)readAttributeGeneratedCommandListWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C430B8 attributeID:&unk_284C416D8 params:v4];

  return v7;
}

- (id)readAttributeAcceptedCommandListWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C430B8 attributeID:&unk_284C416F0 params:v4];

  return v7;
}

- (id)readAttributeAttributeListWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C430B8 attributeID:&unk_284C41708 params:v4];

  return v7;
}

- (id)readAttributeFeatureMapWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C430B8 attributeID:&unk_284C41720 params:v4];

  return v7;
}

- (id)readAttributeClusterRevisionWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C430B8 attributeID:&unk_284C41738 params:v4];

  return v7;
}

@end