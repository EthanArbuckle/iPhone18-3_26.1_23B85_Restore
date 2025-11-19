@interface MTRClusterThermostat
- (NSDictionary)readAttributeACCapacityWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeACCapacityformatWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeACCoilTemperatureWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeACCompressorTypeWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeACErrorCodeWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeACLouverPositionWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeACRefrigerantTypeWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeACTypeWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAbsMaxCoolSetpointLimitWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAbsMaxHeatSetpointLimitWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAbsMinCoolSetpointLimitWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAbsMinHeatSetpointLimitWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeControlSequenceOfOperationWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeEmergencyHeatDeltaWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeHVACSystemTypeConfigurationWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeLocalTemperatureCalibrationWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeLocalTemperatureWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMaxCoolSetpointLimitWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMaxHeatSetpointLimitWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMinCoolSetpointLimitWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMinHeatSetpointLimitWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMinSetpointDeadBandWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeNumberOfDailyTransitionsWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeNumberOfWeeklyTransitionsWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeOccupancyWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeOccupiedCoolingSetpointWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeOccupiedHeatingSetpointWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeOccupiedSetbackMaxWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeOccupiedSetbackMinWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeOccupiedSetbackWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeOutdoorTemperatureWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePICoolingDemandWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePIHeatingDemandWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRemoteSensingWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeSetpointChangeAmountWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeSetpointChangeSourceTimestampWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeSetpointChangeSourceWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeStartOfWeekWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeSystemModeWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeTemperatureSetpointHoldDurationWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeTemperatureSetpointHoldWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeThermostatProgrammingOperationModeWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeThermostatRunningModeWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeThermostatRunningStateWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeUnoccupiedCoolingSetpointWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeUnoccupiedHeatingSetpointWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeUnoccupiedSetbackMaxWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeUnoccupiedSetbackMinWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeUnoccupiedSetbackWithParams:(MTRReadParams *)params;
- (id)readAttributeActivePresetHandleWithParams:(id)a3;
- (id)readAttributeActiveScheduleHandleWithParams:(id)a3;
- (id)readAttributeCurrentThermostatSuggestionWithParams:(id)a3;
- (id)readAttributeMaxThermostatSuggestionsWithParams:(id)a3;
- (id)readAttributeNumberOfPresetsWithParams:(id)a3;
- (id)readAttributeNumberOfScheduleTransitionPerDayWithParams:(id)a3;
- (id)readAttributeNumberOfScheduleTransitionsWithParams:(id)a3;
- (id)readAttributeNumberOfSchedulesWithParams:(id)a3;
- (id)readAttributePresetTypesWithParams:(id)a3;
- (id)readAttributePresetsWithParams:(id)a3;
- (id)readAttributeScheduleTypesWithParams:(id)a3;
- (id)readAttributeSchedulesWithParams:(id)a3;
- (id)readAttributeSetpointHoldExpiryTimestampWithParams:(id)a3;
- (id)readAttributeThermostatSuggestionNotFollowingReasonWithParams:(id)a3;
- (id)readAttributeThermostatSuggestionsWithParams:(id)a3;
- (void)addThermostatSuggestionWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)atomicRequestWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)clearWeeklyScheduleWithParams:(MTRThermostatClusterClearWeeklyScheduleParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)getWeeklyScheduleWithParams:(MTRThermostatClusterGetWeeklyScheduleParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(void *)completion;
- (void)getWeeklyScheduleWithParams:(MTRThermostatClusterGetWeeklyScheduleParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
- (void)removeThermostatSuggestionWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)setActivePresetRequestWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)setActiveScheduleRequestWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)setWeeklyScheduleWithParams:(MTRThermostatClusterSetWeeklyScheduleParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)setpointRaiseLowerWithParams:(MTRThermostatClusterSetpointRaiseLowerParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)writeAttributeACCapacityWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeACCapacityformatWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeACCompressorTypeWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeACErrorCodeWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeACLouverPositionWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeACRefrigerantTypeWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeACTypeWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeControlSequenceOfOperationWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeEmergencyHeatDeltaWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeHVACSystemTypeConfigurationWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeLocalTemperatureCalibrationWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeMaxCoolSetpointLimitWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeMaxHeatSetpointLimitWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeMinCoolSetpointLimitWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeMinHeatSetpointLimitWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeMinSetpointDeadBandWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeOccupiedCoolingSetpointWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeOccupiedHeatingSetpointWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeOccupiedSetbackWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributePresetsWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5;
- (void)writeAttributeRemoteSensingWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeSchedulesWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5;
- (void)writeAttributeSystemModeWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeTemperatureSetpointHoldDurationWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeTemperatureSetpointHoldWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeThermostatProgrammingOperationModeWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeUnoccupiedCoolingSetpointWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeUnoccupiedHeatingSetpointWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeUnoccupiedSetbackWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
@end

@implementation MTRClusterThermostat

- (void)setpointRaiseLowerWithParams:(MTRThermostatClusterSetpointRaiseLowerParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRThermostatClusterSetpointRaiseLowerParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2393347C8;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  v16 = [(MTRThermostatClusterSetpointRaiseLowerParams *)v10 timedInvokeTimeoutMs];
  v17 = [(MTRGenericCluster *)self device];
  v18 = [(MTRCluster *)self endpointID];
  v19 = [(MTRThermostatClusterSetpointRaiseLowerParams *)v10 serverSideProcessingTimeout];
  v20 = [(MTRCluster *)self callbackQueue];
  [v17 _invokeKnownCommandWithEndpointID:v18 clusterID:&unk_284C42C38 commandID:&unk_284C41660 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v16 serverSideProcessingTimeout:v19 responseClass:0 queue:v20 completion:v15];
}

- (void)setWeeklyScheduleWithParams:(MTRThermostatClusterSetWeeklyScheduleParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRThermostatClusterSetWeeklyScheduleParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2393349E8;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  v16 = [(MTRThermostatClusterSetWeeklyScheduleParams *)v10 timedInvokeTimeoutMs];
  v17 = [(MTRGenericCluster *)self device];
  v18 = [(MTRCluster *)self endpointID];
  v19 = [(MTRThermostatClusterSetWeeklyScheduleParams *)v10 serverSideProcessingTimeout];
  v20 = [(MTRCluster *)self callbackQueue];
  [v17 _invokeKnownCommandWithEndpointID:v18 clusterID:&unk_284C42C38 commandID:&unk_284C41768 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v16 serverSideProcessingTimeout:v19 responseClass:0 queue:v20 completion:v15];
}

- (void)getWeeklyScheduleWithParams:(MTRThermostatClusterGetWeeklyScheduleParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(void *)completion
{
  v10 = params;
  v22 = expectedDataValueDictionaries;
  v11 = expectedValueIntervalMs;
  v12 = completion;
  v21 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRThermostatClusterGetWeeklyScheduleParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_239334C20;
  v23[3] = &unk_278A73118;
  v13 = v12;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  v15 = [(MTRThermostatClusterGetWeeklyScheduleParams *)v10 timedInvokeTimeoutMs];
  v16 = [(MTRGenericCluster *)self device];
  v17 = [(MTRCluster *)self endpointID];
  v18 = [(MTRThermostatClusterGetWeeklyScheduleParams *)v10 serverSideProcessingTimeout];
  v19 = objc_opt_class();
  v20 = [(MTRCluster *)self callbackQueue];
  [v16 _invokeKnownCommandWithEndpointID:v17 clusterID:&unk_284C42C38 commandID:&unk_284C41780 commandPayload:v10 expectedValues:v22 expectedValueInterval:v11 timedInvokeTimeout:v15 serverSideProcessingTimeout:v18 responseClass:v19 queue:v20 completion:{v14, v21}];
}

- (void)clearWeeklyScheduleWithParams:(MTRThermostatClusterClearWeeklyScheduleParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRThermostatClusterClearWeeklyScheduleParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_239334E50;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  v16 = [(MTRThermostatClusterClearWeeklyScheduleParams *)v10 timedInvokeTimeoutMs];
  v17 = [(MTRGenericCluster *)self device];
  v18 = [(MTRCluster *)self endpointID];
  v19 = [(MTRThermostatClusterClearWeeklyScheduleParams *)v10 serverSideProcessingTimeout];
  v20 = [(MTRCluster *)self callbackQueue];
  [v17 _invokeKnownCommandWithEndpointID:v18 clusterID:&unk_284C42C38 commandID:&unk_284C41798 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v16 serverSideProcessingTimeout:v19 responseClass:0 queue:v20 completion:v15];
}

- (void)setActiveScheduleRequestWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRThermostatClusterSetActiveScheduleRequestParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_239335070;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  v16 = [(MTRThermostatClusterSetActiveScheduleRequestParams *)v10 timedInvokeTimeoutMs];
  v17 = [(MTRGenericCluster *)self device];
  v18 = [(MTRCluster *)self endpointID];
  v19 = [(MTRThermostatClusterSetActiveScheduleRequestParams *)v10 serverSideProcessingTimeout];
  v20 = [(MTRCluster *)self callbackQueue];
  [v17 _invokeKnownCommandWithEndpointID:v18 clusterID:&unk_284C42C38 commandID:&unk_284C417C8 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v16 serverSideProcessingTimeout:v19 responseClass:0 queue:v20 completion:v15];
}

- (void)setActivePresetRequestWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRThermostatClusterSetActivePresetRequestParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_239335290;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  v16 = [(MTRThermostatClusterSetActivePresetRequestParams *)v10 timedInvokeTimeoutMs];
  v17 = [(MTRGenericCluster *)self device];
  v18 = [(MTRCluster *)self endpointID];
  v19 = [(MTRThermostatClusterSetActivePresetRequestParams *)v10 serverSideProcessingTimeout];
  v20 = [(MTRCluster *)self callbackQueue];
  [v17 _invokeKnownCommandWithEndpointID:v18 clusterID:&unk_284C42C38 commandID:&unk_284C418D0 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v16 serverSideProcessingTimeout:v19 responseClass:0 queue:v20 completion:v15];
}

- (void)addThermostatSuggestionWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v22 = a4;
  v11 = a5;
  v12 = a6;
  v21 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRThermostatClusterAddThermostatSuggestionParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_2393354C8;
  v23[3] = &unk_278A73118;
  v13 = v12;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  v15 = [(MTRThermostatClusterAddThermostatSuggestionParams *)v10 timedInvokeTimeoutMs];
  v16 = [(MTRGenericCluster *)self device];
  v17 = [(MTRCluster *)self endpointID];
  v18 = [(MTRThermostatClusterAddThermostatSuggestionParams *)v10 serverSideProcessingTimeout];
  v19 = objc_opt_class();
  v20 = [(MTRCluster *)self callbackQueue];
  [v16 _invokeKnownCommandWithEndpointID:v17 clusterID:&unk_284C42C38 commandID:&unk_284C418E8 commandPayload:v10 expectedValues:v22 expectedValueInterval:v11 timedInvokeTimeout:v15 serverSideProcessingTimeout:v18 responseClass:v19 queue:v20 completion:{v14, v21}];
}

- (void)removeThermostatSuggestionWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRThermostatClusterRemoveThermostatSuggestionParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2393356E4;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  v16 = [(MTRThermostatClusterRemoveThermostatSuggestionParams *)v10 timedInvokeTimeoutMs];
  v17 = [(MTRGenericCluster *)self device];
  v18 = [(MTRCluster *)self endpointID];
  v19 = [(MTRThermostatClusterRemoveThermostatSuggestionParams *)v10 serverSideProcessingTimeout];
  v20 = [(MTRCluster *)self callbackQueue];
  [v17 _invokeKnownCommandWithEndpointID:v18 clusterID:&unk_284C42C38 commandID:&unk_284C41900 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v16 serverSideProcessingTimeout:v19 responseClass:0 queue:v20 completion:v15];
}

- (void)atomicRequestWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v22 = a4;
  v11 = a5;
  v12 = a6;
  v21 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRThermostatClusterAtomicRequestParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_23933591C;
  v23[3] = &unk_278A73118;
  v13 = v12;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  v15 = [(MTRThermostatClusterAtomicRequestParams *)v10 timedInvokeTimeoutMs];
  v16 = [(MTRGenericCluster *)self device];
  v17 = [(MTRCluster *)self endpointID];
  v18 = [(MTRThermostatClusterAtomicRequestParams *)v10 serverSideProcessingTimeout];
  v19 = objc_opt_class();
  v20 = [(MTRCluster *)self callbackQueue];
  [v16 _invokeKnownCommandWithEndpointID:v17 clusterID:&unk_284C42C38 commandID:&unk_284C42C50 commandPayload:v10 expectedValues:v22 expectedValueInterval:v11 timedInvokeTimeout:v15 serverSideProcessingTimeout:v18 responseClass:v19 queue:v20 completion:{v14, v21}];
}

- (NSDictionary)readAttributeLocalTemperatureWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C416A8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeOutdoorTemperatureWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C416C0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeOccupancyWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41930 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAbsMinHeatSetpointLimitWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41690 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAbsMaxHeatSetpointLimitWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C417E0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAbsMinCoolSetpointLimitWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41948 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAbsMaxCoolSetpointLimitWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41840 params:v4];

  return v7;
}

- (NSDictionary)readAttributePICoolingDemandWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41B10 params:v4];

  return v7;
}

- (NSDictionary)readAttributePIHeatingDemandWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41918 params:v4];

  return v7;
}

- (NSDictionary)readAttributeHVACSystemTypeConfigurationWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41B28 params:v4];

  return v7;
}

- (void)writeAttributeHVACSystemTypeConfigurationWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42C68 attributeID:&unk_284C41B28 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeLocalTemperatureCalibrationWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41978 params:v4];

  return v7;
}

- (void)writeAttributeLocalTemperatureCalibrationWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42C68 attributeID:&unk_284C41978 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeOccupiedCoolingSetpointWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41990 params:v4];

  return v7;
}

- (void)writeAttributeOccupiedCoolingSetpointWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42C68 attributeID:&unk_284C41990 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeOccupiedHeatingSetpointWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C419A8 params:v4];

  return v7;
}

- (void)writeAttributeOccupiedHeatingSetpointWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42C68 attributeID:&unk_284C419A8 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeUnoccupiedCoolingSetpointWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C419C0 params:v4];

  return v7;
}

- (void)writeAttributeUnoccupiedCoolingSetpointWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42C68 attributeID:&unk_284C419C0 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeUnoccupiedHeatingSetpointWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C419D8 params:v4];

  return v7;
}

- (void)writeAttributeUnoccupiedHeatingSetpointWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42C68 attributeID:&unk_284C419D8 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeMinHeatSetpointLimitWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41BB8 params:v4];

  return v7;
}

- (void)writeAttributeMinHeatSetpointLimitWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42C68 attributeID:&unk_284C41BB8 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeMaxHeatSetpointLimitWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41BD0 params:v4];

  return v7;
}

- (void)writeAttributeMaxHeatSetpointLimitWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42C68 attributeID:&unk_284C41BD0 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeMinCoolSetpointLimitWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41CD8 params:v4];

  return v7;
}

- (void)writeAttributeMinCoolSetpointLimitWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42C68 attributeID:&unk_284C41CD8 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeMaxCoolSetpointLimitWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41BE8 params:v4];

  return v7;
}

- (void)writeAttributeMaxCoolSetpointLimitWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42C68 attributeID:&unk_284C41BE8 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeMinSetpointDeadBandWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41CF0 params:v4];

  return v7;
}

- (void)writeAttributeMinSetpointDeadBandWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42C68 attributeID:&unk_284C41CF0 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeRemoteSensingWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41D08 params:v4];

  return v7;
}

- (void)writeAttributeRemoteSensingWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42C68 attributeID:&unk_284C41D08 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeControlSequenceOfOperationWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41D20 params:v4];

  return v7;
}

- (void)writeAttributeControlSequenceOfOperationWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42C68 attributeID:&unk_284C41D20 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeSystemModeWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C419F0 params:v4];

  return v7;
}

- (void)writeAttributeSystemModeWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42C68 attributeID:&unk_284C419F0 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeThermostatRunningModeWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41A20 params:v4];

  return v7;
}

- (NSDictionary)readAttributeStartOfWeekWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41E58 params:v4];

  return v7;
}

- (NSDictionary)readAttributeNumberOfWeeklyTransitionsWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41E70 params:v4];

  return v7;
}

- (NSDictionary)readAttributeNumberOfDailyTransitionsWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41E88 params:v4];

  return v7;
}

- (NSDictionary)readAttributeTemperatureSetpointHoldWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41EA0 params:v4];

  return v7;
}

- (void)writeAttributeTemperatureSetpointHoldWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42C68 attributeID:&unk_284C41EA0 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeTemperatureSetpointHoldDurationWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41EB8 params:v4];

  return v7;
}

- (void)writeAttributeTemperatureSetpointHoldDurationWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42C68 attributeID:&unk_284C41EB8 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeThermostatProgrammingOperationModeWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41AC8 params:v4];

  return v7;
}

- (void)writeAttributeThermostatProgrammingOperationModeWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42C68 attributeID:&unk_284C41AC8 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeThermostatRunningStateWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41C18 params:v4];

  return v7;
}

- (NSDictionary)readAttributeSetpointChangeSourceWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41D50 params:v4];

  return v7;
}

- (NSDictionary)readAttributeSetpointChangeAmountWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41D80 params:v4];

  return v7;
}

- (NSDictionary)readAttributeSetpointChangeSourceTimestampWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41DB0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeOccupiedSetbackWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41E10 params:v4];

  return v7;
}

- (void)writeAttributeOccupiedSetbackWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42C68 attributeID:&unk_284C41E10 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeOccupiedSetbackMinWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41E40 params:v4];

  return v7;
}

- (NSDictionary)readAttributeOccupiedSetbackMaxWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41F00 params:v4];

  return v7;
}

- (NSDictionary)readAttributeUnoccupiedSetbackWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41F18 params:v4];

  return v7;
}

- (void)writeAttributeUnoccupiedSetbackWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42C68 attributeID:&unk_284C41F18 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeUnoccupiedSetbackMinWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41F30 params:v4];

  return v7;
}

- (NSDictionary)readAttributeUnoccupiedSetbackMaxWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41F48 params:v4];

  return v7;
}

- (NSDictionary)readAttributeEmergencyHeatDeltaWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41F60 params:v4];

  return v7;
}

- (void)writeAttributeEmergencyHeatDeltaWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42C68 attributeID:&unk_284C41F60 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeACTypeWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41FF0 params:v4];

  return v7;
}

- (void)writeAttributeACTypeWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42C68 attributeID:&unk_284C41FF0 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeACCapacityWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C42110 params:v4];

  return v7;
}

- (void)writeAttributeACCapacityWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42C68 attributeID:&unk_284C42110 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeACRefrigerantTypeWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C426C8 params:v4];

  return v7;
}

- (void)writeAttributeACRefrigerantTypeWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42C68 attributeID:&unk_284C426C8 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeACCompressorTypeWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C426E0 params:v4];

  return v7;
}

- (void)writeAttributeACCompressorTypeWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42C68 attributeID:&unk_284C426E0 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeACErrorCodeWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C42C80 params:v4];

  return v7;
}

- (void)writeAttributeACErrorCodeWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42C68 attributeID:&unk_284C42C80 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeACLouverPositionWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C42128 params:v4];

  return v7;
}

- (void)writeAttributeACLouverPositionWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42C68 attributeID:&unk_284C42128 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeACCoilTemperatureWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C42158 params:v4];

  return v7;
}

- (NSDictionary)readAttributeACCapacityformatWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C42188 params:v4];

  return v7;
}

- (void)writeAttributeACCapacityformatWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42C68 attributeID:&unk_284C42188 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (id)readAttributePresetTypesWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C421B8 params:v4];

  return v7;
}

- (id)readAttributeScheduleTypesWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C421E8 params:v4];

  return v7;
}

- (id)readAttributeNumberOfPresetsWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C42200 params:v4];

  return v7;
}

- (id)readAttributeNumberOfSchedulesWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C42C98 params:v4];

  return v7;
}

- (id)readAttributeNumberOfScheduleTransitionsWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C42CB0 params:v4];

  return v7;
}

- (id)readAttributeNumberOfScheduleTransitionPerDayWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C42CC8 params:v4];

  return v7;
}

- (id)readAttributeActivePresetHandleWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C42CE0 params:v4];

  return v7;
}

- (id)readAttributeActiveScheduleHandleWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C42CF8 params:v4];

  return v7;
}

- (id)readAttributePresetsWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C42230 params:v4];

  return v7;
}

- (void)writeAttributePresetsWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = [a5 timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42C68 attributeID:&unk_284C42230 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (id)readAttributeSchedulesWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C42260 params:v4];

  return v7;
}

- (void)writeAttributeSchedulesWithValue:(id)a3 expectedValueInterval:(id)a4 params:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = [a5 timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C42C68 attributeID:&unk_284C42260 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (id)readAttributeSetpointHoldExpiryTimestampWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C42290 params:v4];

  return v7;
}

- (id)readAttributeMaxThermostatSuggestionsWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C422A8 params:v4];

  return v7;
}

- (id)readAttributeThermostatSuggestionsWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C422D8 params:v4];

  return v7;
}

- (id)readAttributeCurrentThermostatSuggestionWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C42308 params:v4];

  return v7;
}

- (id)readAttributeThermostatSuggestionNotFollowingReasonWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C42338 params:v4];

  return v7;
}

- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C416D8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C416F0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41708 params:v4];

  return v7;
}

- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41720 params:v4];

  return v7;
}

- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C42C68 attributeID:&unk_284C41738 params:v4];

  return v7;
}

- (void)getWeeklyScheduleWithParams:(MTRThermostatClusterGetWeeklyScheduleParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_23933ACC4;
  v12[3] = &unk_278A73690;
  v13 = v10;
  v11 = v10;
  [(MTRClusterThermostat *)self getWeeklyScheduleWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

@end