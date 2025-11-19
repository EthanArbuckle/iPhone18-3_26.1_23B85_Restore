@interface MTRClusterEnergyEVSE
- (id)readAttributeAcceptedCommandListWithParams:(id)a3;
- (id)readAttributeApproximateEVEfficiencyWithParams:(id)a3;
- (id)readAttributeAttributeListWithParams:(id)a3;
- (id)readAttributeBatteryCapacityWithParams:(id)a3;
- (id)readAttributeChargingEnabledUntilWithParams:(id)a3;
- (id)readAttributeCircuitCapacityWithParams:(id)a3;
- (id)readAttributeClusterRevisionWithParams:(id)a3;
- (id)readAttributeDischargingEnabledUntilWithParams:(id)a3;
- (id)readAttributeFaultStateWithParams:(id)a3;
- (id)readAttributeFeatureMapWithParams:(id)a3;
- (id)readAttributeGeneratedCommandListWithParams:(id)a3;
- (id)readAttributeMaximumChargeCurrentWithParams:(id)a3;
- (id)readAttributeMaximumDischargeCurrentWithParams:(id)a3;
- (id)readAttributeMinimumChargeCurrentWithParams:(id)a3;
- (id)readAttributeNextChargeRequiredEnergyWithParams:(id)a3;
- (id)readAttributeNextChargeStartTimeWithParams:(id)a3;
- (id)readAttributeNextChargeTargetSoCWithParams:(id)a3;
- (id)readAttributeNextChargeTargetTimeWithParams:(id)a3;
- (id)readAttributeRandomizationDelayWindowWithParams:(id)a3;
- (id)readAttributeSessionDurationWithParams:(id)a3;
- (id)readAttributeSessionEnergyChargedWithParams:(id)a3;
- (id)readAttributeSessionEnergyDischargedWithParams:(id)a3;
- (id)readAttributeSessionIDWithParams:(id)a3;
- (id)readAttributeStateOfChargeWithParams:(id)a3;
- (id)readAttributeStateWithParams:(id)a3;
- (id)readAttributeSupplyStateWithParams:(id)a3;
- (id)readAttributeUserMaximumChargeCurrentWithParams:(id)a3;
- (id)readAttributeVehicleIDWithParams:(id)a3;
- (void)clearTargetsWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)disableWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)enableChargingWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)enableDischargingWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)getTargetsWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)setTargetsWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)startDiagnosticsWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)writeAttributeApproximateEVEfficiencyWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5;
- (void)writeAttributeRandomizationDelayWindowWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5;
- (void)writeAttributeUserMaximumChargeCurrentWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5;
@end

@implementation MTRClusterEnergyEVSE

- (void)disableWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v10 = objc_alloc_init(MTREnergyEVSEClusterDisableParams);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_2393209C8;
  v22[3] = &unk_278A73118;
  v14 = v13;
  v23 = v14;
  v15 = MEMORY[0x23EE78590](v22);
  v16 = [(MTREnergyEVSEClusterDisableParams *)v10 timedInvokeTimeoutMs];
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
  v20 = [(MTREnergyEVSEClusterDisableParams *)v10 serverSideProcessingTimeout];
  v21 = [(MTRCluster *)self callbackQueue];
  [v18 _invokeKnownCommandWithEndpointID:v19 clusterID:&unk_284C42698 commandID:&unk_284C41768 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v17 serverSideProcessingTimeout:v20 responseClass:0 queue:v21 completion:v15];
}

- (void)enableChargingWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v10 = objc_alloc_init(MTREnergyEVSEClusterEnableChargingParams);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_239320BF4;
  v22[3] = &unk_278A73118;
  v14 = v13;
  v23 = v14;
  v15 = MEMORY[0x23EE78590](v22);
  v16 = [(MTREnergyEVSEClusterEnableChargingParams *)v10 timedInvokeTimeoutMs];
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
  v20 = [(MTREnergyEVSEClusterEnableChargingParams *)v10 serverSideProcessingTimeout];
  v21 = [(MTRCluster *)self callbackQueue];
  [v18 _invokeKnownCommandWithEndpointID:v19 clusterID:&unk_284C42698 commandID:&unk_284C41780 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v17 serverSideProcessingTimeout:v20 responseClass:0 queue:v21 completion:v15];
}

- (void)enableDischargingWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v10 = objc_alloc_init(MTREnergyEVSEClusterEnableDischargingParams);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_239320E20;
  v22[3] = &unk_278A73118;
  v14 = v13;
  v23 = v14;
  v15 = MEMORY[0x23EE78590](v22);
  v16 = [(MTREnergyEVSEClusterEnableDischargingParams *)v10 timedInvokeTimeoutMs];
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
  v20 = [(MTREnergyEVSEClusterEnableDischargingParams *)v10 serverSideProcessingTimeout];
  v21 = [(MTRCluster *)self callbackQueue];
  [v18 _invokeKnownCommandWithEndpointID:v19 clusterID:&unk_284C42698 commandID:&unk_284C41798 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v17 serverSideProcessingTimeout:v20 responseClass:0 queue:v21 completion:v15];
}

- (void)startDiagnosticsWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v10 = objc_alloc_init(MTREnergyEVSEClusterStartDiagnosticsParams);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_239321060;
  v22[3] = &unk_278A73118;
  v14 = v13;
  v23 = v14;
  v15 = MEMORY[0x23EE78590](v22);
  v16 = [(MTREnergyEVSEClusterStartDiagnosticsParams *)v10 timedInvokeTimeoutMs];
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
  v20 = [(MTREnergyEVSEClusterStartDiagnosticsParams *)v10 serverSideProcessingTimeout];
  v21 = [(MTRCluster *)self callbackQueue];
  [v18 _invokeKnownCommandWithEndpointID:v19 clusterID:&unk_284C42698 commandID:&unk_284C417B0 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v17 serverSideProcessingTimeout:v20 responseClass:0 queue:v21 completion:v15];
}

- (void)setTargetsWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v10 = objc_alloc_init(MTREnergyEVSEClusterSetTargetsParams);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_23932128C;
  v22[3] = &unk_278A73118;
  v14 = v13;
  v23 = v14;
  v15 = MEMORY[0x23EE78590](v22);
  v16 = [(MTREnergyEVSEClusterSetTargetsParams *)v10 timedInvokeTimeoutMs];
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
  v20 = [(MTREnergyEVSEClusterSetTargetsParams *)v10 serverSideProcessingTimeout];
  v21 = [(MTRCluster *)self callbackQueue];
  [v18 _invokeKnownCommandWithEndpointID:v19 clusterID:&unk_284C42698 commandID:&unk_284C417C8 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v17 serverSideProcessingTimeout:v20 responseClass:0 queue:v21 completion:v15];
}

- (void)getTargetsWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v23 = a4;
  v11 = a5;
  v12 = a6;
  v22 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTREnergyEVSEClusterGetTargetsParams);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2393214E4;
  v24[3] = &unk_278A73118;
  v13 = v12;
  v25 = v13;
  v14 = MEMORY[0x23EE78590](v24);
  v15 = [(MTREnergyEVSEClusterGetTargetsParams *)v10 timedInvokeTimeoutMs];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = &unk_284C42080;
  }

  v17 = [(MTRGenericCluster *)self device];
  v18 = [(MTRCluster *)self endpointID];
  v19 = [(MTREnergyEVSEClusterGetTargetsParams *)v10 serverSideProcessingTimeout];
  v20 = objc_opt_class();
  v21 = [(MTRCluster *)self callbackQueue];
  [v17 _invokeKnownCommandWithEndpointID:v18 clusterID:&unk_284C42698 commandID:&unk_284C418D0 commandPayload:v10 expectedValues:v23 expectedValueInterval:v11 timedInvokeTimeout:v16 serverSideProcessingTimeout:v19 responseClass:v20 queue:v21 completion:{v14, v22}];
}

- (void)clearTargetsWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v10 = objc_alloc_init(MTREnergyEVSEClusterClearTargetsParams);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_239321720;
  v22[3] = &unk_278A73118;
  v14 = v13;
  v23 = v14;
  v15 = MEMORY[0x23EE78590](v22);
  v16 = [(MTREnergyEVSEClusterClearTargetsParams *)v10 timedInvokeTimeoutMs];
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
  v20 = [(MTREnergyEVSEClusterClearTargetsParams *)v10 serverSideProcessingTimeout];
  v21 = [(MTRCluster *)self callbackQueue];
  [v18 _invokeKnownCommandWithEndpointID:v19 clusterID:&unk_284C42698 commandID:&unk_284C418E8 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v17 serverSideProcessingTimeout:v20 responseClass:0 queue:v21 completion:v15];
}

- (id)readAttributeStateWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C426B0 attributeID:&unk_284C416A8 params:v4];

  return v7;
}

- (id)readAttributeSupplyStateWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C426B0 attributeID:&unk_284C416C0 params:v4];

  return v7;
}

- (id)readAttributeFaultStateWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C426B0 attributeID:&unk_284C41930 params:v4];

  return v7;
}

- (id)readAttributeChargingEnabledUntilWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C426B0 attributeID:&unk_284C41690 params:v4];

  return v7;
}

- (id)readAttributeDischargingEnabledUntilWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C426B0 attributeID:&unk_284C417E0 params:v4];

  return v7;
}

- (id)readAttributeCircuitCapacityWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C426B0 attributeID:&unk_284C41948 params:v4];

  return v7;
}

- (id)readAttributeMinimumChargeCurrentWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C426B0 attributeID:&unk_284C41840 params:v4];

  return v7;
}

- (id)readAttributeMaximumChargeCurrentWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C426B0 attributeID:&unk_284C41B10 params:v4];

  return v7;
}

- (id)readAttributeMaximumDischargeCurrentWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C426B0 attributeID:&unk_284C41918 params:v4];

  return v7;
}

- (id)readAttributeUserMaximumChargeCurrentWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C426B0 attributeID:&unk_284C41B28 params:v4];

  return v7;
}

- (void)writeAttributeUserMaximumChargeCurrentWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = [a5 timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C426B0 attributeID:&unk_284C41B28 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (id)readAttributeRandomizationDelayWindowWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C426B0 attributeID:&unk_284C41B40 params:v4];

  return v7;
}

- (void)writeAttributeRandomizationDelayWindowWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = [a5 timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C426B0 attributeID:&unk_284C41B40 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (id)readAttributeNextChargeStartTimeWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C426B0 attributeID:&unk_284C41EA0 params:v4];

  return v7;
}

- (id)readAttributeNextChargeTargetTimeWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C426B0 attributeID:&unk_284C41EB8 params:v4];

  return v7;
}

- (id)readAttributeNextChargeRequiredEnergyWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C426B0 attributeID:&unk_284C41AC8 params:v4];

  return v7;
}

- (id)readAttributeNextChargeTargetSoCWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C426B0 attributeID:&unk_284C41ED0 params:v4];

  return v7;
}

- (id)readAttributeApproximateEVEfficiencyWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C426B0 attributeID:&unk_284C41EE8 params:v4];

  return v7;
}

- (void)writeAttributeApproximateEVEfficiencyWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = [a5 timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C426B0 attributeID:&unk_284C41EE8 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (id)readAttributeStateOfChargeWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C426B0 attributeID:&unk_284C41D50 params:v4];

  return v7;
}

- (id)readAttributeBatteryCapacityWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C426B0 attributeID:&unk_284C41D80 params:v4];

  return v7;
}

- (id)readAttributeVehicleIDWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C426B0 attributeID:&unk_284C41DB0 params:v4];

  return v7;
}

- (id)readAttributeSessionIDWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C426B0 attributeID:&unk_284C41FF0 params:v4];

  return v7;
}

- (id)readAttributeSessionDurationWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C426B0 attributeID:&unk_284C42110 params:v4];

  return v7;
}

- (id)readAttributeSessionEnergyChargedWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C426B0 attributeID:&unk_284C426C8 params:v4];

  return v7;
}

- (id)readAttributeSessionEnergyDischargedWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C426B0 attributeID:&unk_284C426E0 params:v4];

  return v7;
}

- (id)readAttributeGeneratedCommandListWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C426B0 attributeID:&unk_284C416D8 params:v4];

  return v7;
}

- (id)readAttributeAcceptedCommandListWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C426B0 attributeID:&unk_284C416F0 params:v4];

  return v7;
}

- (id)readAttributeAttributeListWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C426B0 attributeID:&unk_284C41708 params:v4];

  return v7;
}

- (id)readAttributeFeatureMapWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C426B0 attributeID:&unk_284C41720 params:v4];

  return v7;
}

- (id)readAttributeClusterRevisionWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C426B0 attributeID:&unk_284C41738 params:v4];

  return v7;
}

@end