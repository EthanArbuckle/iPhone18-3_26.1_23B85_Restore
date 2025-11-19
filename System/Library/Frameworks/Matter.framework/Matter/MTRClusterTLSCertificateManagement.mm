@interface MTRClusterTLSCertificateManagement
- (id)readAttributeAcceptedCommandListWithParams:(id)a3;
- (id)readAttributeAttributeListWithParams:(id)a3;
- (id)readAttributeClusterRevisionWithParams:(id)a3;
- (id)readAttributeFeatureMapWithParams:(id)a3;
- (id)readAttributeGeneratedCommandListWithParams:(id)a3;
- (id)readAttributeMaxClientCertificatesWithParams:(id)a3;
- (id)readAttributeMaxRootCertificatesWithParams:(id)a3;
- (id)readAttributeProvisionedClientCertificatesWithParams:(id)a3;
- (id)readAttributeProvisionedRootCertificatesWithParams:(id)a3;
- (void)clientCSRWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)findClientCertificateWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)findRootCertificateWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)lookupClientCertificateWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)lookupRootCertificateWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)provisionClientCertificateWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)provisionRootCertificateWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)removeClientCertificateWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)removeRootCertificateWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
@end

@implementation MTRClusterTLSCertificateManagement

- (void)provisionRootCertificateWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v22 = a4;
  v11 = a5;
  v12 = a6;
  v21 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRTLSCertificateManagementClusterProvisionRootCertificateParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_239372214;
  v23[3] = &unk_278A73118;
  v13 = v12;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  v15 = [(MTRTLSCertificateManagementClusterProvisionRootCertificateParams *)v10 timedInvokeTimeoutMs];
  v16 = [(MTRGenericCluster *)self device];
  v17 = [(MTRCluster *)self endpointID];
  v18 = [(MTRTLSCertificateManagementClusterProvisionRootCertificateParams *)v10 serverSideProcessingTimeout];
  v19 = objc_opt_class();
  v20 = [(MTRCluster *)self callbackQueue];
  [v16 _invokeKnownCommandWithEndpointID:v17 clusterID:&unk_284C43598 commandID:&unk_284C41660 commandPayload:v10 expectedValues:v22 expectedValueInterval:v11 timedInvokeTimeout:v15 serverSideProcessingTimeout:v18 responseClass:v19 queue:v20 completion:{v14, v21}];
}

- (void)findRootCertificateWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v22 = a4;
  v11 = a5;
  v12 = a6;
  v21 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRTLSCertificateManagementClusterFindRootCertificateParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_239372448;
  v23[3] = &unk_278A73118;
  v13 = v12;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  v15 = [(MTRTLSCertificateManagementClusterFindRootCertificateParams *)v10 timedInvokeTimeoutMs];
  v16 = [(MTRGenericCluster *)self device];
  v17 = [(MTRCluster *)self endpointID];
  v18 = [(MTRTLSCertificateManagementClusterFindRootCertificateParams *)v10 serverSideProcessingTimeout];
  v19 = objc_opt_class();
  v20 = [(MTRCluster *)self callbackQueue];
  [v16 _invokeKnownCommandWithEndpointID:v17 clusterID:&unk_284C43598 commandID:&unk_284C41780 commandPayload:v10 expectedValues:v22 expectedValueInterval:v11 timedInvokeTimeout:v15 serverSideProcessingTimeout:v18 responseClass:v19 queue:v20 completion:{v14, v21}];
}

- (void)lookupRootCertificateWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v22 = a4;
  v11 = a5;
  v12 = a6;
  v21 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRTLSCertificateManagementClusterLookupRootCertificateParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_23937267C;
  v23[3] = &unk_278A73118;
  v13 = v12;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  v15 = [(MTRTLSCertificateManagementClusterLookupRootCertificateParams *)v10 timedInvokeTimeoutMs];
  v16 = [(MTRGenericCluster *)self device];
  v17 = [(MTRCluster *)self endpointID];
  v18 = [(MTRTLSCertificateManagementClusterLookupRootCertificateParams *)v10 serverSideProcessingTimeout];
  v19 = objc_opt_class();
  v20 = [(MTRCluster *)self callbackQueue];
  [v16 _invokeKnownCommandWithEndpointID:v17 clusterID:&unk_284C43598 commandID:&unk_284C417B0 commandPayload:v10 expectedValues:v22 expectedValueInterval:v11 timedInvokeTimeout:v15 serverSideProcessingTimeout:v18 responseClass:v19 queue:v20 completion:{v14, v21}];
}

- (void)removeRootCertificateWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRTLSCertificateManagementClusterRemoveRootCertificateParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_239372898;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  v16 = [(MTRTLSCertificateManagementClusterRemoveRootCertificateParams *)v10 timedInvokeTimeoutMs];
  v17 = [(MTRGenericCluster *)self device];
  v18 = [(MTRCluster *)self endpointID];
  v19 = [(MTRTLSCertificateManagementClusterRemoveRootCertificateParams *)v10 serverSideProcessingTimeout];
  v20 = [(MTRCluster *)self callbackQueue];
  [v17 _invokeKnownCommandWithEndpointID:v18 clusterID:&unk_284C43598 commandID:&unk_284C418D0 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v16 serverSideProcessingTimeout:v19 responseClass:0 queue:v20 completion:v15];
}

- (void)clientCSRWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v22 = a4;
  v11 = a5;
  v12 = a6;
  v21 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRTLSCertificateManagementClusterClientCSRParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_239372AD0;
  v23[3] = &unk_278A73118;
  v13 = v12;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  v15 = [(MTRTLSCertificateManagementClusterClientCSRParams *)v10 timedInvokeTimeoutMs];
  v16 = [(MTRGenericCluster *)self device];
  v17 = [(MTRCluster *)self endpointID];
  v18 = [(MTRTLSCertificateManagementClusterClientCSRParams *)v10 serverSideProcessingTimeout];
  v19 = objc_opt_class();
  v20 = [(MTRCluster *)self callbackQueue];
  [v16 _invokeKnownCommandWithEndpointID:v17 clusterID:&unk_284C43598 commandID:&unk_284C418E8 commandPayload:v10 expectedValues:v22 expectedValueInterval:v11 timedInvokeTimeout:v15 serverSideProcessingTimeout:v18 responseClass:v19 queue:v20 completion:{v14, v21}];
}

- (void)provisionClientCertificateWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRTLSCertificateManagementClusterProvisionClientCertificateParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_239372CEC;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  v16 = [(MTRTLSCertificateManagementClusterProvisionClientCertificateParams *)v10 timedInvokeTimeoutMs];
  v17 = [(MTRGenericCluster *)self device];
  v18 = [(MTRCluster *)self endpointID];
  v19 = [(MTRTLSCertificateManagementClusterProvisionClientCertificateParams *)v10 serverSideProcessingTimeout];
  v20 = [(MTRCluster *)self callbackQueue];
  [v17 _invokeKnownCommandWithEndpointID:v18 clusterID:&unk_284C43598 commandID:&unk_284C41A80 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v16 serverSideProcessingTimeout:v19 responseClass:0 queue:v20 completion:v15];
}

- (void)findClientCertificateWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v22 = a4;
  v11 = a5;
  v12 = a6;
  v21 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRTLSCertificateManagementClusterFindClientCertificateParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_239372F24;
  v23[3] = &unk_278A73118;
  v13 = v12;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  v15 = [(MTRTLSCertificateManagementClusterFindClientCertificateParams *)v10 timedInvokeTimeoutMs];
  v16 = [(MTRGenericCluster *)self device];
  v17 = [(MTRCluster *)self endpointID];
  v18 = [(MTRTLSCertificateManagementClusterFindClientCertificateParams *)v10 serverSideProcessingTimeout];
  v19 = objc_opt_class();
  v20 = [(MTRCluster *)self callbackQueue];
  [v16 _invokeKnownCommandWithEndpointID:v17 clusterID:&unk_284C43598 commandID:&unk_284C41A98 commandPayload:v10 expectedValues:v22 expectedValueInterval:v11 timedInvokeTimeout:v15 serverSideProcessingTimeout:v18 responseClass:v19 queue:v20 completion:{v14, v21}];
}

- (void)lookupClientCertificateWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v22 = a4;
  v11 = a5;
  v12 = a6;
  v21 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRTLSCertificateManagementClusterLookupClientCertificateParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_239373158;
  v23[3] = &unk_278A73118;
  v13 = v12;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  v15 = [(MTRTLSCertificateManagementClusterLookupClientCertificateParams *)v10 timedInvokeTimeoutMs];
  v16 = [(MTRGenericCluster *)self device];
  v17 = [(MTRCluster *)self endpointID];
  v18 = [(MTRTLSCertificateManagementClusterLookupClientCertificateParams *)v10 serverSideProcessingTimeout];
  v19 = objc_opt_class();
  v20 = [(MTRCluster *)self callbackQueue];
  [v16 _invokeKnownCommandWithEndpointID:v17 clusterID:&unk_284C43598 commandID:&unk_284C420C8 commandPayload:v10 expectedValues:v22 expectedValueInterval:v11 timedInvokeTimeout:v15 serverSideProcessingTimeout:v18 responseClass:v19 queue:v20 completion:{v14, v21}];
}

- (void)removeClientCertificateWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRTLSCertificateManagementClusterRemoveClientCertificateParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_239373374;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  v16 = [(MTRTLSCertificateManagementClusterRemoveClientCertificateParams *)v10 timedInvokeTimeoutMs];
  v17 = [(MTRGenericCluster *)self device];
  v18 = [(MTRCluster *)self endpointID];
  v19 = [(MTRTLSCertificateManagementClusterRemoveClientCertificateParams *)v10 serverSideProcessingTimeout];
  v20 = [(MTRCluster *)self callbackQueue];
  [v17 _invokeKnownCommandWithEndpointID:v18 clusterID:&unk_284C43598 commandID:&unk_284C427E8 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v16 serverSideProcessingTimeout:v19 responseClass:0 queue:v20 completion:v15];
}

- (id)readAttributeMaxRootCertificatesWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C435B0 attributeID:&unk_284C416A8 params:v4];

  return v7;
}

- (id)readAttributeProvisionedRootCertificatesWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C435B0 attributeID:&unk_284C416C0 params:v4];

  return v7;
}

- (id)readAttributeMaxClientCertificatesWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C435B0 attributeID:&unk_284C41930 params:v4];

  return v7;
}

- (id)readAttributeProvisionedClientCertificatesWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C435B0 attributeID:&unk_284C41690 params:v4];

  return v7;
}

- (id)readAttributeGeneratedCommandListWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C435B0 attributeID:&unk_284C416D8 params:v4];

  return v7;
}

- (id)readAttributeAcceptedCommandListWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C435B0 attributeID:&unk_284C416F0 params:v4];

  return v7;
}

- (id)readAttributeAttributeListWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C435B0 attributeID:&unk_284C41708 params:v4];

  return v7;
}

- (id)readAttributeFeatureMapWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C435B0 attributeID:&unk_284C41720 params:v4];

  return v7;
}

- (id)readAttributeClusterRevisionWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C435B0 attributeID:&unk_284C41738 params:v4];

  return v7;
}

@end