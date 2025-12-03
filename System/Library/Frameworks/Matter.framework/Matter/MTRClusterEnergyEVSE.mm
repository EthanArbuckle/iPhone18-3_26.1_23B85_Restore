@interface MTRClusterEnergyEVSE
- (id)readAttributeAcceptedCommandListWithParams:(id)params;
- (id)readAttributeApproximateEVEfficiencyWithParams:(id)params;
- (id)readAttributeAttributeListWithParams:(id)params;
- (id)readAttributeBatteryCapacityWithParams:(id)params;
- (id)readAttributeChargingEnabledUntilWithParams:(id)params;
- (id)readAttributeCircuitCapacityWithParams:(id)params;
- (id)readAttributeClusterRevisionWithParams:(id)params;
- (id)readAttributeDischargingEnabledUntilWithParams:(id)params;
- (id)readAttributeFaultStateWithParams:(id)params;
- (id)readAttributeFeatureMapWithParams:(id)params;
- (id)readAttributeGeneratedCommandListWithParams:(id)params;
- (id)readAttributeMaximumChargeCurrentWithParams:(id)params;
- (id)readAttributeMaximumDischargeCurrentWithParams:(id)params;
- (id)readAttributeMinimumChargeCurrentWithParams:(id)params;
- (id)readAttributeNextChargeRequiredEnergyWithParams:(id)params;
- (id)readAttributeNextChargeStartTimeWithParams:(id)params;
- (id)readAttributeNextChargeTargetSoCWithParams:(id)params;
- (id)readAttributeNextChargeTargetTimeWithParams:(id)params;
- (id)readAttributeRandomizationDelayWindowWithParams:(id)params;
- (id)readAttributeSessionDurationWithParams:(id)params;
- (id)readAttributeSessionEnergyChargedWithParams:(id)params;
- (id)readAttributeSessionEnergyDischargedWithParams:(id)params;
- (id)readAttributeSessionIDWithParams:(id)params;
- (id)readAttributeStateOfChargeWithParams:(id)params;
- (id)readAttributeStateWithParams:(id)params;
- (id)readAttributeSupplyStateWithParams:(id)params;
- (id)readAttributeUserMaximumChargeCurrentWithParams:(id)params;
- (id)readAttributeVehicleIDWithParams:(id)params;
- (void)clearTargetsWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion;
- (void)disableWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion;
- (void)enableChargingWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion;
- (void)enableDischargingWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion;
- (void)getTargetsWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion;
- (void)setTargetsWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion;
- (void)startDiagnosticsWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion;
- (void)writeAttributeApproximateEVEfficiencyWithValue:(id)value expectedValueInterval:(id)interval params:(id)params;
- (void)writeAttributeRandomizationDelayWindowWithValue:(id)value expectedValueInterval:(id)interval params:(id)params;
- (void)writeAttributeUserMaximumChargeCurrentWithValue:(id)value expectedValueInterval:(id)interval params:(id)params;
@end

@implementation MTRClusterEnergyEVSE

- (void)disableWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion
{
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTREnergyEVSEClusterDisableParams);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_2393209C8;
  v22[3] = &unk_278A73118;
  v14 = completionCopy;
  v23 = v14;
  v15 = MEMORY[0x23EE78590](v22);
  timedInvokeTimeoutMs = [(MTREnergyEVSEClusterDisableParams *)paramsCopy timedInvokeTimeoutMs];
  if (timedInvokeTimeoutMs)
  {
    v17 = timedInvokeTimeoutMs;
  }

  else
  {
    v17 = &unk_284C42080;
  }

  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTREnergyEVSEClusterDisableParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C42698 commandID:&unk_284C41768 commandPayload:paramsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:v17 serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (void)enableChargingWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion
{
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTREnergyEVSEClusterEnableChargingParams);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_239320BF4;
  v22[3] = &unk_278A73118;
  v14 = completionCopy;
  v23 = v14;
  v15 = MEMORY[0x23EE78590](v22);
  timedInvokeTimeoutMs = [(MTREnergyEVSEClusterEnableChargingParams *)paramsCopy timedInvokeTimeoutMs];
  if (timedInvokeTimeoutMs)
  {
    v17 = timedInvokeTimeoutMs;
  }

  else
  {
    v17 = &unk_284C42080;
  }

  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTREnergyEVSEClusterEnableChargingParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C42698 commandID:&unk_284C41780 commandPayload:paramsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:v17 serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (void)enableDischargingWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion
{
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTREnergyEVSEClusterEnableDischargingParams);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_239320E20;
  v22[3] = &unk_278A73118;
  v14 = completionCopy;
  v23 = v14;
  v15 = MEMORY[0x23EE78590](v22);
  timedInvokeTimeoutMs = [(MTREnergyEVSEClusterEnableDischargingParams *)paramsCopy timedInvokeTimeoutMs];
  if (timedInvokeTimeoutMs)
  {
    v17 = timedInvokeTimeoutMs;
  }

  else
  {
    v17 = &unk_284C42080;
  }

  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTREnergyEVSEClusterEnableDischargingParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C42698 commandID:&unk_284C41798 commandPayload:paramsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:v17 serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (void)startDiagnosticsWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion
{
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTREnergyEVSEClusterStartDiagnosticsParams);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_239321060;
  v22[3] = &unk_278A73118;
  v14 = completionCopy;
  v23 = v14;
  v15 = MEMORY[0x23EE78590](v22);
  timedInvokeTimeoutMs = [(MTREnergyEVSEClusterStartDiagnosticsParams *)paramsCopy timedInvokeTimeoutMs];
  if (timedInvokeTimeoutMs)
  {
    v17 = timedInvokeTimeoutMs;
  }

  else
  {
    v17 = &unk_284C42080;
  }

  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTREnergyEVSEClusterStartDiagnosticsParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C42698 commandID:&unk_284C417B0 commandPayload:paramsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:v17 serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (void)setTargetsWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion
{
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTREnergyEVSEClusterSetTargetsParams);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_23932128C;
  v22[3] = &unk_278A73118;
  v14 = completionCopy;
  v23 = v14;
  v15 = MEMORY[0x23EE78590](v22);
  timedInvokeTimeoutMs = [(MTREnergyEVSEClusterSetTargetsParams *)paramsCopy timedInvokeTimeoutMs];
  if (timedInvokeTimeoutMs)
  {
    v17 = timedInvokeTimeoutMs;
  }

  else
  {
    v17 = &unk_284C42080;
  }

  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTREnergyEVSEClusterSetTargetsParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C42698 commandID:&unk_284C417C8 commandPayload:paramsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:v17 serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (void)getTargetsWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion
{
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  completionCopy = completion;
  v22 = completionCopy;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTREnergyEVSEClusterGetTargetsParams);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2393214E4;
  v24[3] = &unk_278A73118;
  v13 = completionCopy;
  v25 = v13;
  v14 = MEMORY[0x23EE78590](v24);
  timedInvokeTimeoutMs = [(MTREnergyEVSEClusterGetTargetsParams *)paramsCopy timedInvokeTimeoutMs];
  if (timedInvokeTimeoutMs)
  {
    v16 = timedInvokeTimeoutMs;
  }

  else
  {
    v16 = &unk_284C42080;
  }

  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTREnergyEVSEClusterGetTargetsParams *)paramsCopy serverSideProcessingTimeout];
  v20 = objc_opt_class();
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C42698 commandID:&unk_284C418D0 commandPayload:paramsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:v16 serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:v20 queue:callbackQueue completion:{v14, v22}];
}

- (void)clearTargetsWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion
{
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTREnergyEVSEClusterClearTargetsParams);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_239321720;
  v22[3] = &unk_278A73118;
  v14 = completionCopy;
  v23 = v14;
  v15 = MEMORY[0x23EE78590](v22);
  timedInvokeTimeoutMs = [(MTREnergyEVSEClusterClearTargetsParams *)paramsCopy timedInvokeTimeoutMs];
  if (timedInvokeTimeoutMs)
  {
    v17 = timedInvokeTimeoutMs;
  }

  else
  {
    v17 = &unk_284C42080;
  }

  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTREnergyEVSEClusterClearTargetsParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C42698 commandID:&unk_284C418E8 commandPayload:paramsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:v17 serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (id)readAttributeStateWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C426B0 attributeID:&unk_284C416A8 params:paramsCopy];

  return v7;
}

- (id)readAttributeSupplyStateWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C426B0 attributeID:&unk_284C416C0 params:paramsCopy];

  return v7;
}

- (id)readAttributeFaultStateWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C426B0 attributeID:&unk_284C41930 params:paramsCopy];

  return v7;
}

- (id)readAttributeChargingEnabledUntilWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C426B0 attributeID:&unk_284C41690 params:paramsCopy];

  return v7;
}

- (id)readAttributeDischargingEnabledUntilWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C426B0 attributeID:&unk_284C417E0 params:paramsCopy];

  return v7;
}

- (id)readAttributeCircuitCapacityWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C426B0 attributeID:&unk_284C41948 params:paramsCopy];

  return v7;
}

- (id)readAttributeMinimumChargeCurrentWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C426B0 attributeID:&unk_284C41840 params:paramsCopy];

  return v7;
}

- (id)readAttributeMaximumChargeCurrentWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C426B0 attributeID:&unk_284C41B10 params:paramsCopy];

  return v7;
}

- (id)readAttributeMaximumDischargeCurrentWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C426B0 attributeID:&unk_284C41918 params:paramsCopy];

  return v7;
}

- (id)readAttributeUserMaximumChargeCurrentWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C426B0 attributeID:&unk_284C41B28 params:paramsCopy];

  return v7;
}

- (void)writeAttributeUserMaximumChargeCurrentWithValue:(id)value expectedValueInterval:(id)interval params:(id)params
{
  valueCopy = value;
  intervalCopy = interval;
  timedWriteTimeout = [params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C426B0 attributeID:&unk_284C41B28 value:valueCopy expectedValueInterval:intervalCopy timedWriteTimeout:timedWriteTimeout];
}

- (id)readAttributeRandomizationDelayWindowWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C426B0 attributeID:&unk_284C41B40 params:paramsCopy];

  return v7;
}

- (void)writeAttributeRandomizationDelayWindowWithValue:(id)value expectedValueInterval:(id)interval params:(id)params
{
  valueCopy = value;
  intervalCopy = interval;
  timedWriteTimeout = [params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C426B0 attributeID:&unk_284C41B40 value:valueCopy expectedValueInterval:intervalCopy timedWriteTimeout:timedWriteTimeout];
}

- (id)readAttributeNextChargeStartTimeWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C426B0 attributeID:&unk_284C41EA0 params:paramsCopy];

  return v7;
}

- (id)readAttributeNextChargeTargetTimeWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C426B0 attributeID:&unk_284C41EB8 params:paramsCopy];

  return v7;
}

- (id)readAttributeNextChargeRequiredEnergyWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C426B0 attributeID:&unk_284C41AC8 params:paramsCopy];

  return v7;
}

- (id)readAttributeNextChargeTargetSoCWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C426B0 attributeID:&unk_284C41ED0 params:paramsCopy];

  return v7;
}

- (id)readAttributeApproximateEVEfficiencyWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C426B0 attributeID:&unk_284C41EE8 params:paramsCopy];

  return v7;
}

- (void)writeAttributeApproximateEVEfficiencyWithValue:(id)value expectedValueInterval:(id)interval params:(id)params
{
  valueCopy = value;
  intervalCopy = interval;
  timedWriteTimeout = [params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C426B0 attributeID:&unk_284C41EE8 value:valueCopy expectedValueInterval:intervalCopy timedWriteTimeout:timedWriteTimeout];
}

- (id)readAttributeStateOfChargeWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C426B0 attributeID:&unk_284C41D50 params:paramsCopy];

  return v7;
}

- (id)readAttributeBatteryCapacityWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C426B0 attributeID:&unk_284C41D80 params:paramsCopy];

  return v7;
}

- (id)readAttributeVehicleIDWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C426B0 attributeID:&unk_284C41DB0 params:paramsCopy];

  return v7;
}

- (id)readAttributeSessionIDWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C426B0 attributeID:&unk_284C41FF0 params:paramsCopy];

  return v7;
}

- (id)readAttributeSessionDurationWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C426B0 attributeID:&unk_284C42110 params:paramsCopy];

  return v7;
}

- (id)readAttributeSessionEnergyChargedWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C426B0 attributeID:&unk_284C426C8 params:paramsCopy];

  return v7;
}

- (id)readAttributeSessionEnergyDischargedWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C426B0 attributeID:&unk_284C426E0 params:paramsCopy];

  return v7;
}

- (id)readAttributeGeneratedCommandListWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C426B0 attributeID:&unk_284C416D8 params:paramsCopy];

  return v7;
}

- (id)readAttributeAcceptedCommandListWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C426B0 attributeID:&unk_284C416F0 params:paramsCopy];

  return v7;
}

- (id)readAttributeAttributeListWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C426B0 attributeID:&unk_284C41708 params:paramsCopy];

  return v7;
}

- (id)readAttributeFeatureMapWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C426B0 attributeID:&unk_284C41720 params:paramsCopy];

  return v7;
}

- (id)readAttributeClusterRevisionWithParams:(id)params
{
  paramsCopy = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C426B0 attributeID:&unk_284C41738 params:paramsCopy];

  return v7;
}

@end