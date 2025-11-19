@interface MTRClusterDoorLock
- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeActuatorEnabledWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAutoRelockTimeWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeCredentialRulesSupportWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeDefaultConfigurationRegisterWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeDoorClosedEventsWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeDoorOpenEventsWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeDoorStateWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeEnableInsideStatusLEDWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeEnableLocalProgrammingWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeEnableOneTouchLockingWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeEnablePrivacyModeButtonWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeExpiringUserTimeoutWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeLEDSettingsWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeLanguageWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeLocalProgrammingFeaturesWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeLockStateWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeLockTypeWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMaxPINCodeLengthWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMaxRFIDCodeLengthWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMinPINCodeLengthWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeMinRFIDCodeLengthWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeNumberOfCredentialsSupportedPerUserWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeNumberOfHolidaySchedulesSupportedWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeNumberOfPINUsersSupportedWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeNumberOfRFIDUsersSupportedWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeNumberOfTotalUsersSupportedWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeNumberOfWeekDaySchedulesSupportedPerUserWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeNumberOfYearDaySchedulesSupportedPerUserWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeOpenPeriodWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeOperatingModeWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRequirePINforRemoteOperationWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeSendPINOverTheAirWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeSoundVolumeWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeSupportedOperatingModesWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeUserCodeTemporaryDisableTimeWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeWrongCodeEntryLimitWithParams:(MTRReadParams *)params;
- (id)readAttributeAliroBLEAdvertisingVersionWithParams:(id)a3;
- (id)readAttributeAliroExpeditedTransactionSupportedProtocolVersionsWithParams:(id)a3;
- (id)readAttributeAliroGroupResolvingKeyWithParams:(id)a3;
- (id)readAttributeAliroReaderGroupIdentifierWithParams:(id)a3;
- (id)readAttributeAliroReaderGroupSubIdentifierWithParams:(id)a3;
- (id)readAttributeAliroReaderVerificationKeyWithParams:(id)a3;
- (id)readAttributeAliroSupportedBLEUWBProtocolVersionsWithParams:(id)a3;
- (id)readAttributeAppleAliroBLEAdvertisingVersionWithParams:(id)a3;
- (id)readAttributeAppleAliroExpeditedTransactionSupportedProtocolVersionsWithParams:(id)a3;
- (id)readAttributeAppleAliroGroupResolvingKeyWithParams:(id)a3;
- (id)readAttributeAppleAliroReaderGroupIdentifierWithParams:(id)a3;
- (id)readAttributeAppleAliroReaderGroupSubIdentifierWithParams:(id)a3;
- (id)readAttributeAppleAliroReaderVerificationKeyWithParams:(id)a3;
- (id)readAttributeAppleAliroSupportedBLEUWBProtocolVersionsWithParams:(id)a3;
- (id)readAttributeAppleNumberOfAliroCredentialIssuerKeysSupportedWithParams:(id)a3;
- (id)readAttributeAppleNumberOfAliroEndpointKeysSupportedWithParams:(id)a3;
- (id)readAttributeNumberOfAliroCredentialIssuerKeysSupportedWithParams:(id)a3;
- (id)readAttributeNumberOfAliroEndpointKeysSupportedWithParams:(id)a3;
- (void)appleClearAliroCredentialWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)appleClearAliroReaderConfigWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)appleGetAliroCredentialStatusWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)appleSetAliroCredentialWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)appleSetAliroReaderConfigWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)clearAliroReaderConfigWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)clearCredentialWithParams:(MTRDoorLockClusterClearCredentialParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)clearHolidayScheduleWithParams:(MTRDoorLockClusterClearHolidayScheduleParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)clearUserWithParams:(MTRDoorLockClusterClearUserParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)clearWeekDayScheduleWithParams:(MTRDoorLockClusterClearWeekDayScheduleParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)clearYearDayScheduleWithParams:(MTRDoorLockClusterClearYearDayScheduleParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)getCredentialStatusWithParams:(MTRDoorLockClusterGetCredentialStatusParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(void *)completion;
- (void)getCredentialStatusWithParams:(MTRDoorLockClusterGetCredentialStatusParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
- (void)getHolidayScheduleWithParams:(MTRDoorLockClusterGetHolidayScheduleParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(void *)completion;
- (void)getHolidayScheduleWithParams:(MTRDoorLockClusterGetHolidayScheduleParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
- (void)getUserWithParams:(MTRDoorLockClusterGetUserParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(void *)completion;
- (void)getUserWithParams:(MTRDoorLockClusterGetUserParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
- (void)getWeekDayScheduleWithParams:(MTRDoorLockClusterGetWeekDayScheduleParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(void *)completion;
- (void)getWeekDayScheduleWithParams:(MTRDoorLockClusterGetWeekDayScheduleParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
- (void)getYearDayScheduleWithParams:(MTRDoorLockClusterGetYearDayScheduleParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(void *)completion;
- (void)getYearDayScheduleWithParams:(MTRDoorLockClusterGetYearDayScheduleParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
- (void)lockDoorWithParams:(MTRDoorLockClusterLockDoorParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)setAliroReaderConfigWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)setCredentialWithParams:(MTRDoorLockClusterSetCredentialParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(void *)completion;
- (void)setCredentialWithParams:(MTRDoorLockClusterSetCredentialParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
- (void)setHolidayScheduleWithParams:(MTRDoorLockClusterSetHolidayScheduleParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)setUserWithParams:(MTRDoorLockClusterSetUserParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)setWeekDayScheduleWithParams:(MTRDoorLockClusterSetWeekDayScheduleParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)setYearDayScheduleWithParams:(MTRDoorLockClusterSetYearDayScheduleParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)unboltDoorWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
- (void)unlockDoorWithParams:(MTRDoorLockClusterUnlockDoorParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)unlockWithTimeoutWithParams:(MTRDoorLockClusterUnlockWithTimeoutParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)writeAttributeAutoRelockTimeWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeDoorClosedEventsWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeDoorOpenEventsWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeEnableInsideStatusLEDWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeEnableLocalProgrammingWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeEnableOneTouchLockingWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeEnablePrivacyModeButtonWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeExpiringUserTimeoutWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeLEDSettingsWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeLanguageWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeLocalProgrammingFeaturesWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeOpenPeriodWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeOperatingModeWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeRequirePINforRemoteOperationWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeSendPINOverTheAirWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeSoundVolumeWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeUserCodeTemporaryDisableTimeWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeWrongCodeEntryLimitWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
@end

@implementation MTRClusterDoorLock

- (void)lockDoorWithParams:(MTRDoorLockClusterLockDoorParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRDoorLockClusterLockDoorParams);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_239325DC4;
  v22[3] = &unk_278A73118;
  v14 = v13;
  v23 = v14;
  v15 = MEMORY[0x23EE78590](v22);
  v16 = [(MTRDoorLockClusterLockDoorParams *)v10 timedInvokeTimeoutMs];
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
  v20 = [(MTRDoorLockClusterLockDoorParams *)v10 serverSideProcessingTimeout];
  v21 = [(MTRCluster *)self callbackQueue];
  [v18 _invokeKnownCommandWithEndpointID:v19 clusterID:&unk_284C427D0 commandID:&unk_284C41660 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v17 serverSideProcessingTimeout:v20 responseClass:0 queue:v21 completion:v15];
}

- (void)unlockDoorWithParams:(MTRDoorLockClusterUnlockDoorParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRDoorLockClusterUnlockDoorParams);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_239326004;
  v22[3] = &unk_278A73118;
  v14 = v13;
  v23 = v14;
  v15 = MEMORY[0x23EE78590](v22);
  v16 = [(MTRDoorLockClusterUnlockDoorParams *)v10 timedInvokeTimeoutMs];
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
  v20 = [(MTRDoorLockClusterUnlockDoorParams *)v10 serverSideProcessingTimeout];
  v21 = [(MTRCluster *)self callbackQueue];
  [v18 _invokeKnownCommandWithEndpointID:v19 clusterID:&unk_284C427D0 commandID:&unk_284C41768 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v17 serverSideProcessingTimeout:v20 responseClass:0 queue:v21 completion:v15];
}

- (void)unlockWithTimeoutWithParams:(MTRDoorLockClusterUnlockWithTimeoutParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRDoorLockClusterUnlockWithTimeoutParams);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_239326230;
  v22[3] = &unk_278A73118;
  v14 = v13;
  v23 = v14;
  v15 = MEMORY[0x23EE78590](v22);
  v16 = [(MTRDoorLockClusterUnlockWithTimeoutParams *)v10 timedInvokeTimeoutMs];
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
  v20 = [(MTRDoorLockClusterUnlockWithTimeoutParams *)v10 serverSideProcessingTimeout];
  v21 = [(MTRCluster *)self callbackQueue];
  [v18 _invokeKnownCommandWithEndpointID:v19 clusterID:&unk_284C427D0 commandID:&unk_284C41798 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v17 serverSideProcessingTimeout:v20 responseClass:0 queue:v21 completion:v15];
}

- (void)setWeekDayScheduleWithParams:(MTRDoorLockClusterSetWeekDayScheduleParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRDoorLockClusterSetWeekDayScheduleParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_239326450;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  v16 = [(MTRDoorLockClusterSetWeekDayScheduleParams *)v10 timedInvokeTimeoutMs];
  v17 = [(MTRGenericCluster *)self device];
  v18 = [(MTRCluster *)self endpointID];
  v19 = [(MTRDoorLockClusterSetWeekDayScheduleParams *)v10 serverSideProcessingTimeout];
  v20 = [(MTRCluster *)self callbackQueue];
  [v17 _invokeKnownCommandWithEndpointID:v18 clusterID:&unk_284C427D0 commandID:&unk_284C41AB0 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v16 serverSideProcessingTimeout:v19 responseClass:0 queue:v20 completion:v15];
}

- (void)getWeekDayScheduleWithParams:(MTRDoorLockClusterGetWeekDayScheduleParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(void *)completion
{
  v10 = params;
  v22 = expectedDataValueDictionaries;
  v11 = expectedValueIntervalMs;
  v12 = completion;
  v21 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRDoorLockClusterGetWeekDayScheduleParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_239326688;
  v23[3] = &unk_278A73118;
  v13 = v12;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  v15 = [(MTRDoorLockClusterGetWeekDayScheduleParams *)v10 timedInvokeTimeoutMs];
  v16 = [(MTRGenericCluster *)self device];
  v17 = [(MTRCluster *)self endpointID];
  v18 = [(MTRDoorLockClusterGetWeekDayScheduleParams *)v10 serverSideProcessingTimeout];
  v19 = objc_opt_class();
  v20 = [(MTRCluster *)self callbackQueue];
  [v16 _invokeKnownCommandWithEndpointID:v17 clusterID:&unk_284C427D0 commandID:&unk_284C420C8 commandPayload:v10 expectedValues:v22 expectedValueInterval:v11 timedInvokeTimeout:v15 serverSideProcessingTimeout:v18 responseClass:v19 queue:v20 completion:{v14, v21}];
}

- (void)clearWeekDayScheduleWithParams:(MTRDoorLockClusterClearWeekDayScheduleParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRDoorLockClusterClearWeekDayScheduleParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2393268A4;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  v16 = [(MTRDoorLockClusterClearWeekDayScheduleParams *)v10 timedInvokeTimeoutMs];
  v17 = [(MTRGenericCluster *)self device];
  v18 = [(MTRCluster *)self endpointID];
  v19 = [(MTRDoorLockClusterClearWeekDayScheduleParams *)v10 serverSideProcessingTimeout];
  v20 = [(MTRCluster *)self callbackQueue];
  [v17 _invokeKnownCommandWithEndpointID:v18 clusterID:&unk_284C427D0 commandID:&unk_284C420E0 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v16 serverSideProcessingTimeout:v19 responseClass:0 queue:v20 completion:v15];
}

- (void)setYearDayScheduleWithParams:(MTRDoorLockClusterSetYearDayScheduleParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRDoorLockClusterSetYearDayScheduleParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_239326AC4;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  v16 = [(MTRDoorLockClusterSetYearDayScheduleParams *)v10 timedInvokeTimeoutMs];
  v17 = [(MTRGenericCluster *)self device];
  v18 = [(MTRCluster *)self endpointID];
  v19 = [(MTRDoorLockClusterSetYearDayScheduleParams *)v10 serverSideProcessingTimeout];
  v20 = [(MTRCluster *)self callbackQueue];
  [v17 _invokeKnownCommandWithEndpointID:v18 clusterID:&unk_284C427D0 commandID:&unk_284C427E8 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v16 serverSideProcessingTimeout:v19 responseClass:0 queue:v20 completion:v15];
}

- (void)getYearDayScheduleWithParams:(MTRDoorLockClusterGetYearDayScheduleParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(void *)completion
{
  v10 = params;
  v22 = expectedDataValueDictionaries;
  v11 = expectedValueIntervalMs;
  v12 = completion;
  v21 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRDoorLockClusterGetYearDayScheduleParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_239326CFC;
  v23[3] = &unk_278A73118;
  v13 = v12;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  v15 = [(MTRDoorLockClusterGetYearDayScheduleParams *)v10 timedInvokeTimeoutMs];
  v16 = [(MTRGenericCluster *)self device];
  v17 = [(MTRCluster *)self endpointID];
  v18 = [(MTRDoorLockClusterGetYearDayScheduleParams *)v10 serverSideProcessingTimeout];
  v19 = objc_opt_class();
  v20 = [(MTRCluster *)self callbackQueue];
  [v16 _invokeKnownCommandWithEndpointID:v17 clusterID:&unk_284C427D0 commandID:&unk_284C42800 commandPayload:v10 expectedValues:v22 expectedValueInterval:v11 timedInvokeTimeout:v15 serverSideProcessingTimeout:v18 responseClass:v19 queue:v20 completion:{v14, v21}];
}

- (void)clearYearDayScheduleWithParams:(MTRDoorLockClusterClearYearDayScheduleParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRDoorLockClusterClearYearDayScheduleParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_239326F18;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  v16 = [(MTRDoorLockClusterClearYearDayScheduleParams *)v10 timedInvokeTimeoutMs];
  v17 = [(MTRGenericCluster *)self device];
  v18 = [(MTRCluster *)self endpointID];
  v19 = [(MTRDoorLockClusterClearYearDayScheduleParams *)v10 serverSideProcessingTimeout];
  v20 = [(MTRCluster *)self callbackQueue];
  [v17 _invokeKnownCommandWithEndpointID:v18 clusterID:&unk_284C427D0 commandID:&unk_284C42818 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v16 serverSideProcessingTimeout:v19 responseClass:0 queue:v20 completion:v15];
}

- (void)setHolidayScheduleWithParams:(MTRDoorLockClusterSetHolidayScheduleParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRDoorLockClusterSetHolidayScheduleParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_239327138;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  v16 = [(MTRDoorLockClusterSetHolidayScheduleParams *)v10 timedInvokeTimeoutMs];
  v17 = [(MTRGenericCluster *)self device];
  v18 = [(MTRCluster *)self endpointID];
  v19 = [(MTRDoorLockClusterSetHolidayScheduleParams *)v10 serverSideProcessingTimeout];
  v20 = [(MTRCluster *)self callbackQueue];
  [v17 _invokeKnownCommandWithEndpointID:v18 clusterID:&unk_284C427D0 commandID:&unk_284C42830 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v16 serverSideProcessingTimeout:v19 responseClass:0 queue:v20 completion:v15];
}

- (void)getHolidayScheduleWithParams:(MTRDoorLockClusterGetHolidayScheduleParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(void *)completion
{
  v10 = params;
  v22 = expectedDataValueDictionaries;
  v11 = expectedValueIntervalMs;
  v12 = completion;
  v21 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRDoorLockClusterGetHolidayScheduleParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_239327370;
  v23[3] = &unk_278A73118;
  v13 = v12;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  v15 = [(MTRDoorLockClusterGetHolidayScheduleParams *)v10 timedInvokeTimeoutMs];
  v16 = [(MTRGenericCluster *)self device];
  v17 = [(MTRCluster *)self endpointID];
  v18 = [(MTRDoorLockClusterGetHolidayScheduleParams *)v10 serverSideProcessingTimeout];
  v19 = objc_opt_class();
  v20 = [(MTRCluster *)self callbackQueue];
  [v16 _invokeKnownCommandWithEndpointID:v17 clusterID:&unk_284C427D0 commandID:&unk_284C42848 commandPayload:v10 expectedValues:v22 expectedValueInterval:v11 timedInvokeTimeout:v15 serverSideProcessingTimeout:v18 responseClass:v19 queue:v20 completion:{v14, v21}];
}

- (void)clearHolidayScheduleWithParams:(MTRDoorLockClusterClearHolidayScheduleParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRDoorLockClusterClearHolidayScheduleParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23932758C;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  v16 = [(MTRDoorLockClusterClearHolidayScheduleParams *)v10 timedInvokeTimeoutMs];
  v17 = [(MTRGenericCluster *)self device];
  v18 = [(MTRCluster *)self endpointID];
  v19 = [(MTRDoorLockClusterClearHolidayScheduleParams *)v10 serverSideProcessingTimeout];
  v20 = [(MTRCluster *)self callbackQueue];
  [v17 _invokeKnownCommandWithEndpointID:v18 clusterID:&unk_284C427D0 commandID:&unk_284C42860 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v16 serverSideProcessingTimeout:v19 responseClass:0 queue:v20 completion:v15];
}

- (void)setUserWithParams:(MTRDoorLockClusterSetUserParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRDoorLockClusterSetUserParams);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_2393277B8;
  v22[3] = &unk_278A73118;
  v14 = v13;
  v23 = v14;
  v15 = MEMORY[0x23EE78590](v22);
  v16 = [(MTRDoorLockClusterSetUserParams *)v10 timedInvokeTimeoutMs];
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
  v20 = [(MTRDoorLockClusterSetUserParams *)v10 serverSideProcessingTimeout];
  v21 = [(MTRCluster *)self callbackQueue];
  [v18 _invokeKnownCommandWithEndpointID:v19 clusterID:&unk_284C427D0 commandID:&unk_284C42878 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v17 serverSideProcessingTimeout:v20 responseClass:0 queue:v21 completion:v15];
}

- (void)getUserWithParams:(MTRDoorLockClusterGetUserParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(void *)completion
{
  v10 = params;
  v22 = expectedDataValueDictionaries;
  v11 = expectedValueIntervalMs;
  v12 = completion;
  v21 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRDoorLockClusterGetUserParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_2393279F0;
  v23[3] = &unk_278A73118;
  v13 = v12;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  v15 = [(MTRDoorLockClusterGetUserParams *)v10 timedInvokeTimeoutMs];
  v16 = [(MTRGenericCluster *)self device];
  v17 = [(MTRCluster *)self endpointID];
  v18 = [(MTRDoorLockClusterGetUserParams *)v10 serverSideProcessingTimeout];
  v19 = objc_opt_class();
  v20 = [(MTRCluster *)self callbackQueue];
  [v16 _invokeKnownCommandWithEndpointID:v17 clusterID:&unk_284C427D0 commandID:&unk_284C42890 commandPayload:v10 expectedValues:v22 expectedValueInterval:v11 timedInvokeTimeout:v15 serverSideProcessingTimeout:v18 responseClass:v19 queue:v20 completion:{v14, v21}];
}

- (void)clearUserWithParams:(MTRDoorLockClusterClearUserParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRDoorLockClusterClearUserParams);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_239327C18;
  v22[3] = &unk_278A73118;
  v14 = v13;
  v23 = v14;
  v15 = MEMORY[0x23EE78590](v22);
  v16 = [(MTRDoorLockClusterClearUserParams *)v10 timedInvokeTimeoutMs];
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
  v20 = [(MTRDoorLockClusterClearUserParams *)v10 serverSideProcessingTimeout];
  v21 = [(MTRCluster *)self callbackQueue];
  [v18 _invokeKnownCommandWithEndpointID:v19 clusterID:&unk_284C427D0 commandID:&unk_284C428A8 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v17 serverSideProcessingTimeout:v20 responseClass:0 queue:v21 completion:v15];
}

- (void)setCredentialWithParams:(MTRDoorLockClusterSetCredentialParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(void *)completion
{
  v10 = params;
  v23 = expectedDataValueDictionaries;
  v11 = expectedValueIntervalMs;
  v12 = completion;
  v22 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRDoorLockClusterSetCredentialParams);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_239327E5C;
  v24[3] = &unk_278A73118;
  v13 = v12;
  v25 = v13;
  v14 = MEMORY[0x23EE78590](v24);
  v15 = [(MTRDoorLockClusterSetCredentialParams *)v10 timedInvokeTimeoutMs];
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
  v19 = [(MTRDoorLockClusterSetCredentialParams *)v10 serverSideProcessingTimeout];
  v20 = objc_opt_class();
  v21 = [(MTRCluster *)self callbackQueue];
  [v17 _invokeKnownCommandWithEndpointID:v18 clusterID:&unk_284C427D0 commandID:&unk_284C428C0 commandPayload:v10 expectedValues:v23 expectedValueInterval:v11 timedInvokeTimeout:v16 serverSideProcessingTimeout:v19 responseClass:v20 queue:v21 completion:{v14, v22}];
}

- (void)getCredentialStatusWithParams:(MTRDoorLockClusterGetCredentialStatusParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(void *)completion
{
  v10 = params;
  v22 = expectedDataValueDictionaries;
  v11 = expectedValueIntervalMs;
  v12 = completion;
  v21 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRDoorLockClusterGetCredentialStatusParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_239328090;
  v23[3] = &unk_278A73118;
  v13 = v12;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  v15 = [(MTRDoorLockClusterGetCredentialStatusParams *)v10 timedInvokeTimeoutMs];
  v16 = [(MTRGenericCluster *)self device];
  v17 = [(MTRCluster *)self endpointID];
  v18 = [(MTRDoorLockClusterGetCredentialStatusParams *)v10 serverSideProcessingTimeout];
  v19 = objc_opt_class();
  v20 = [(MTRCluster *)self callbackQueue];
  [v16 _invokeKnownCommandWithEndpointID:v17 clusterID:&unk_284C427D0 commandID:&unk_284C428D8 commandPayload:v10 expectedValues:v22 expectedValueInterval:v11 timedInvokeTimeout:v15 serverSideProcessingTimeout:v18 responseClass:v19 queue:v20 completion:{v14, v21}];
}

- (void)clearCredentialWithParams:(MTRDoorLockClusterClearCredentialParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRDoorLockClusterClearCredentialParams);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_2393282B8;
  v22[3] = &unk_278A73118;
  v14 = v13;
  v23 = v14;
  v15 = MEMORY[0x23EE78590](v22);
  v16 = [(MTRDoorLockClusterClearCredentialParams *)v10 timedInvokeTimeoutMs];
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
  v20 = [(MTRDoorLockClusterClearCredentialParams *)v10 serverSideProcessingTimeout];
  v21 = [(MTRCluster *)self callbackQueue];
  [v18 _invokeKnownCommandWithEndpointID:v19 clusterID:&unk_284C427D0 commandID:&unk_284C428F0 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v17 serverSideProcessingTimeout:v20 responseClass:0 queue:v21 completion:v15];
}

- (void)unboltDoorWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRDoorLockClusterUnboltDoorParams);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_2393284F8;
  v22[3] = &unk_278A73118;
  v14 = v13;
  v23 = v14;
  v15 = MEMORY[0x23EE78590](v22);
  v16 = [(MTRDoorLockClusterUnboltDoorParams *)v10 timedInvokeTimeoutMs];
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
  v20 = [(MTRDoorLockClusterUnboltDoorParams *)v10 serverSideProcessingTimeout];
  v21 = [(MTRCluster *)self callbackQueue];
  [v18 _invokeKnownCommandWithEndpointID:v19 clusterID:&unk_284C427D0 commandID:&unk_284C42908 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v17 serverSideProcessingTimeout:v20 responseClass:0 queue:v21 completion:v15];
}

- (void)setAliroReaderConfigWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRDoorLockClusterSetAliroReaderConfigParams);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_239328724;
  v22[3] = &unk_278A73118;
  v14 = v13;
  v23 = v14;
  v15 = MEMORY[0x23EE78590](v22);
  v16 = [(MTRDoorLockClusterSetAliroReaderConfigParams *)v10 timedInvokeTimeoutMs];
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
  v20 = [(MTRDoorLockClusterSetAliroReaderConfigParams *)v10 serverSideProcessingTimeout];
  v21 = [(MTRCluster *)self callbackQueue];
  [v18 _invokeKnownCommandWithEndpointID:v19 clusterID:&unk_284C427D0 commandID:&unk_284C42920 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v17 serverSideProcessingTimeout:v20 responseClass:0 queue:v21 completion:v15];
}

- (void)clearAliroReaderConfigWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRDoorLockClusterClearAliroReaderConfigParams);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_239328964;
  v22[3] = &unk_278A73118;
  v14 = v13;
  v23 = v14;
  v15 = MEMORY[0x23EE78590](v22);
  v16 = [(MTRDoorLockClusterClearAliroReaderConfigParams *)v10 timedInvokeTimeoutMs];
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
  v20 = [(MTRDoorLockClusterClearAliroReaderConfigParams *)v10 serverSideProcessingTimeout];
  v21 = [(MTRCluster *)self callbackQueue];
  [v18 _invokeKnownCommandWithEndpointID:v19 clusterID:&unk_284C427D0 commandID:&unk_284C42938 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v17 serverSideProcessingTimeout:v20 responseClass:0 queue:v21 completion:v15];
}

- (void)appleSetAliroCredentialWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v23 = a4;
  v11 = a5;
  v12 = a6;
  v22 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRDoorLockClusterAppleSetAliroCredentialParams);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_239328BA8;
  v24[3] = &unk_278A73118;
  v13 = v12;
  v25 = v13;
  v14 = MEMORY[0x23EE78590](v24);
  v15 = [(MTRDoorLockClusterAppleSetAliroCredentialParams *)v10 timedInvokeTimeoutMs];
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
  v19 = [(MTRDoorLockClusterAppleSetAliroCredentialParams *)v10 serverSideProcessingTimeout];
  v20 = objc_opt_class();
  v21 = [(MTRCluster *)self callbackQueue];
  [v17 _invokeKnownCommandWithEndpointID:v18 clusterID:&unk_284C427D0 commandID:&unk_284C42950 commandPayload:v10 expectedValues:v23 expectedValueInterval:v11 timedInvokeTimeout:v16 serverSideProcessingTimeout:v19 responseClass:v20 queue:v21 completion:{v14, v22}];
}

- (void)appleGetAliroCredentialStatusWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v22 = a4;
  v11 = a5;
  v12 = a6;
  v21 = v12;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRDoorLockClusterAppleGetAliroCredentialStatusParams);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_239328DDC;
  v23[3] = &unk_278A73118;
  v13 = v12;
  v24 = v13;
  v14 = MEMORY[0x23EE78590](v23);
  v15 = [(MTRDoorLockClusterAppleGetAliroCredentialStatusParams *)v10 timedInvokeTimeoutMs];
  v16 = [(MTRGenericCluster *)self device];
  v17 = [(MTRCluster *)self endpointID];
  v18 = [(MTRDoorLockClusterAppleGetAliroCredentialStatusParams *)v10 serverSideProcessingTimeout];
  v19 = objc_opt_class();
  v20 = [(MTRCluster *)self callbackQueue];
  [v16 _invokeKnownCommandWithEndpointID:v17 clusterID:&unk_284C427D0 commandID:&unk_284C42968 commandPayload:v10 expectedValues:v22 expectedValueInterval:v11 timedInvokeTimeout:v15 serverSideProcessingTimeout:v18 responseClass:v19 queue:v20 completion:{v14, v21}];
}

- (void)appleClearAliroCredentialWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRDoorLockClusterAppleClearAliroCredentialParams);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_239329004;
  v22[3] = &unk_278A73118;
  v14 = v13;
  v23 = v14;
  v15 = MEMORY[0x23EE78590](v22);
  v16 = [(MTRDoorLockClusterAppleClearAliroCredentialParams *)v10 timedInvokeTimeoutMs];
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
  v20 = [(MTRDoorLockClusterAppleClearAliroCredentialParams *)v10 serverSideProcessingTimeout];
  v21 = [(MTRCluster *)self callbackQueue];
  [v18 _invokeKnownCommandWithEndpointID:v19 clusterID:&unk_284C427D0 commandID:&unk_284C42980 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v17 serverSideProcessingTimeout:v20 responseClass:0 queue:v21 completion:v15];
}

- (void)appleSetAliroReaderConfigWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRDoorLockClusterAppleSetAliroReaderConfigParams);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_239329230;
  v22[3] = &unk_278A73118;
  v14 = v13;
  v23 = v14;
  v15 = MEMORY[0x23EE78590](v22);
  v16 = [(MTRDoorLockClusterAppleSetAliroReaderConfigParams *)v10 timedInvokeTimeoutMs];
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
  v20 = [(MTRDoorLockClusterAppleSetAliroReaderConfigParams *)v10 serverSideProcessingTimeout];
  v21 = [(MTRCluster *)self callbackQueue];
  [v18 _invokeKnownCommandWithEndpointID:v19 clusterID:&unk_284C427D0 commandID:&unk_284C42998 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v17 serverSideProcessingTimeout:v20 responseClass:0 queue:v21 completion:v15];
}

- (void)appleClearAliroReaderConfigWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRDoorLockClusterAppleClearAliroReaderConfigParams);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_239329470;
  v22[3] = &unk_278A73118;
  v14 = v13;
  v23 = v14;
  v15 = MEMORY[0x23EE78590](v22);
  v16 = [(MTRDoorLockClusterAppleClearAliroReaderConfigParams *)v10 timedInvokeTimeoutMs];
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
  v20 = [(MTRDoorLockClusterAppleClearAliroReaderConfigParams *)v10 serverSideProcessingTimeout];
  v21 = [(MTRCluster *)self callbackQueue];
  [v18 _invokeKnownCommandWithEndpointID:v19 clusterID:&unk_284C427D0 commandID:&unk_284C429B0 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:v17 serverSideProcessingTimeout:v20 responseClass:0 queue:v21 completion:v15];
}

- (NSDictionary)readAttributeLockStateWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C416A8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeLockTypeWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C416C0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeActuatorEnabledWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C41930 params:v4];

  return v7;
}

- (NSDictionary)readAttributeDoorStateWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C41690 params:v4];

  return v7;
}

- (NSDictionary)readAttributeDoorOpenEventsWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C417E0 params:v4];

  return v7;
}

- (void)writeAttributeDoorOpenEventsWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C429C8 attributeID:&unk_284C417E0 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeDoorClosedEventsWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C41948 params:v4];

  return v7;
}

- (void)writeAttributeDoorClosedEventsWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C429C8 attributeID:&unk_284C41948 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeOpenPeriodWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C41840 params:v4];

  return v7;
}

- (void)writeAttributeOpenPeriodWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C429C8 attributeID:&unk_284C41840 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeNumberOfTotalUsersSupportedWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C41990 params:v4];

  return v7;
}

- (NSDictionary)readAttributeNumberOfPINUsersSupportedWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C419A8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeNumberOfRFIDUsersSupportedWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C419C0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeNumberOfWeekDaySchedulesSupportedPerUserWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C419D8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeNumberOfYearDaySchedulesSupportedPerUserWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C41BB8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeNumberOfHolidaySchedulesSupportedWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C41BD0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeMaxPINCodeLengthWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C41CD8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeMinPINCodeLengthWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C41BE8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeMaxRFIDCodeLengthWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C41CF0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeMinRFIDCodeLengthWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C41D08 params:v4];

  return v7;
}

- (NSDictionary)readAttributeCredentialRulesSupportWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C41D20 params:v4];

  return v7;
}

- (NSDictionary)readAttributeNumberOfCredentialsSupportedPerUserWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C419F0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeLanguageWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C41E70 params:v4];

  return v7;
}

- (void)writeAttributeLanguageWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C429C8 attributeID:&unk_284C41E70 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeLEDSettingsWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C41E88 params:v4];

  return v7;
}

- (void)writeAttributeLEDSettingsWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C429C8 attributeID:&unk_284C41E88 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeAutoRelockTimeWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C41EA0 params:v4];

  return v7;
}

- (void)writeAttributeAutoRelockTimeWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C429C8 attributeID:&unk_284C41EA0 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeSoundVolumeWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C41EB8 params:v4];

  return v7;
}

- (void)writeAttributeSoundVolumeWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C429C8 attributeID:&unk_284C41EB8 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeOperatingModeWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C41AC8 params:v4];

  return v7;
}

- (void)writeAttributeOperatingModeWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C429C8 attributeID:&unk_284C41AC8 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeSupportedOperatingModesWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C41ED0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeDefaultConfigurationRegisterWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C41EE8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeEnableLocalProgrammingWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C41AF8 params:v4];

  return v7;
}

- (void)writeAttributeEnableLocalProgrammingWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C429C8 attributeID:&unk_284C41AF8 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeEnableOneTouchLockingWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C41C18 params:v4];

  return v7;
}

- (void)writeAttributeEnableOneTouchLockingWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C429C8 attributeID:&unk_284C41C18 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeEnableInsideStatusLEDWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C41C48 params:v4];

  return v7;
}

- (void)writeAttributeEnableInsideStatusLEDWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C429C8 attributeID:&unk_284C41C48 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeEnablePrivacyModeButtonWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C41C60 params:v4];

  return v7;
}

- (void)writeAttributeEnablePrivacyModeButtonWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C429C8 attributeID:&unk_284C41C60 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeLocalProgrammingFeaturesWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C41C78 params:v4];

  return v7;
}

- (void)writeAttributeLocalProgrammingFeaturesWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C429C8 attributeID:&unk_284C41C78 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeWrongCodeEntryLimitWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C41D50 params:v4];

  return v7;
}

- (void)writeAttributeWrongCodeEntryLimitWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C429C8 attributeID:&unk_284C41D50 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeUserCodeTemporaryDisableTimeWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C41D80 params:v4];

  return v7;
}

- (void)writeAttributeUserCodeTemporaryDisableTimeWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C429C8 attributeID:&unk_284C41D80 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeSendPINOverTheAirWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C41DB0 params:v4];

  return v7;
}

- (void)writeAttributeSendPINOverTheAirWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C429C8 attributeID:&unk_284C41DB0 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeRequirePINforRemoteOperationWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C41DE0 params:v4];

  return v7;
}

- (void)writeAttributeRequirePINforRemoteOperationWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C429C8 attributeID:&unk_284C41DE0 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (NSDictionary)readAttributeExpiringUserTimeoutWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C41E40 params:v4];

  return v7;
}

- (void)writeAttributeExpiringUserTimeoutWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  v9 = [(MTRWriteParams *)params timedWriteTimeout];
  v10 = [(MTRGenericCluster *)self device];
  v11 = [(MTRCluster *)self endpointID];
  [v10 writeAttributeWithEndpointID:v11 clusterID:&unk_284C429C8 attributeID:&unk_284C41E40 value:v12 expectedValueInterval:v8 timedWriteTimeout:v9];
}

- (id)readAttributeAliroReaderVerificationKeyWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C42560 params:v4];

  return v7;
}

- (id)readAttributeAliroReaderGroupIdentifierWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C42590 params:v4];

  return v7;
}

- (id)readAttributeAliroReaderGroupSubIdentifierWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C429E0 params:v4];

  return v7;
}

- (id)readAttributeAliroExpeditedTransactionSupportedProtocolVersionsWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C429F8 params:v4];

  return v7;
}

- (id)readAttributeAliroGroupResolvingKeyWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C42A10 params:v4];

  return v7;
}

- (id)readAttributeAliroSupportedBLEUWBProtocolVersionsWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C42A28 params:v4];

  return v7;
}

- (id)readAttributeAliroBLEAdvertisingVersionWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C42A40 params:v4];

  return v7;
}

- (id)readAttributeNumberOfAliroCredentialIssuerKeysSupportedWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C42A58 params:v4];

  return v7;
}

- (id)readAttributeNumberOfAliroEndpointKeysSupportedWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C42A70 params:v4];

  return v7;
}

- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C416D8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C416F0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C41708 params:v4];

  return v7;
}

- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C41720 params:v4];

  return v7;
}

- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params
{
  v4 = params;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C41738 params:v4];

  return v7;
}

- (id)readAttributeAppleAliroReaderVerificationKeyWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C42A88 params:v4];

  return v7;
}

- (id)readAttributeAppleAliroReaderGroupIdentifierWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C42AA0 params:v4];

  return v7;
}

- (id)readAttributeAppleAliroReaderGroupSubIdentifierWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C42AB8 params:v4];

  return v7;
}

- (id)readAttributeAppleAliroExpeditedTransactionSupportedProtocolVersionsWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C42AD0 params:v4];

  return v7;
}

- (id)readAttributeAppleAliroGroupResolvingKeyWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C42AE8 params:v4];

  return v7;
}

- (id)readAttributeAppleAliroSupportedBLEUWBProtocolVersionsWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C42B00 params:v4];

  return v7;
}

- (id)readAttributeAppleAliroBLEAdvertisingVersionWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C42B18 params:v4];

  return v7;
}

- (id)readAttributeAppleNumberOfAliroCredentialIssuerKeysSupportedWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C42B30 params:v4];

  return v7;
}

- (id)readAttributeAppleNumberOfAliroEndpointKeysSupportedWithParams:(id)a3
{
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];
  v6 = [(MTRCluster *)self endpointID];
  v7 = [v5 readAttributeWithEndpointID:v6 clusterID:&unk_284C429C8 attributeID:&unk_284C42B48 params:v4];

  return v7;
}

- (void)getWeekDayScheduleWithParams:(MTRDoorLockClusterGetWeekDayScheduleParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_23932D520;
  v12[3] = &unk_278A735A0;
  v13 = v10;
  v11 = v10;
  [(MTRClusterDoorLock *)self getWeekDayScheduleWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

- (void)getYearDayScheduleWithParams:(MTRDoorLockClusterGetYearDayScheduleParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_23932D60C;
  v12[3] = &unk_278A735C8;
  v13 = v10;
  v11 = v10;
  [(MTRClusterDoorLock *)self getYearDayScheduleWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

- (void)getHolidayScheduleWithParams:(MTRDoorLockClusterGetHolidayScheduleParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_23932D6F8;
  v12[3] = &unk_278A735F0;
  v13 = v10;
  v11 = v10;
  [(MTRClusterDoorLock *)self getHolidayScheduleWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

- (void)getUserWithParams:(MTRDoorLockClusterGetUserParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_23932D7E4;
  v12[3] = &unk_278A73618;
  v13 = v10;
  v11 = v10;
  [(MTRClusterDoorLock *)self getUserWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

- (void)setCredentialWithParams:(MTRDoorLockClusterSetCredentialParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_23932D8CC;
  v12[3] = &unk_278A73640;
  v13 = v10;
  v11 = v10;
  [(MTRClusterDoorLock *)self setCredentialWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

- (void)getCredentialStatusWithParams:(MTRDoorLockClusterGetCredentialStatusParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_23932D9B0;
  v12[3] = &unk_278A73668;
  v13 = v10;
  v11 = v10;
  [(MTRClusterDoorLock *)self getCredentialStatusWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

@end