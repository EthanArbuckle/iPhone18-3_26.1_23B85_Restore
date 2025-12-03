@interface MTRBaseClusterDoorLock
+ (void)readAttributeAcceptedCommandListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAcceptedCommandListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeActuatorEnabledWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeActuatorEnabledWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeAliroBLEAdvertisingVersionWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeAliroExpeditedTransactionSupportedProtocolVersionsWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeAliroGroupResolvingKeyWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeAliroReaderGroupIdentifierWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeAliroReaderGroupSubIdentifierWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeAliroReaderVerificationKeyWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeAliroSupportedBLEUWBProtocolVersionsWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeAppleAliroBLEAdvertisingVersionWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeAppleAliroExpeditedTransactionSupportedProtocolVersionsWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeAppleAliroGroupResolvingKeyWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeAppleAliroReaderGroupIdentifierWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeAppleAliroReaderGroupSubIdentifierWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeAppleAliroReaderVerificationKeyWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeAppleAliroSupportedBLEUWBProtocolVersionsWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeAppleNumberOfAliroCredentialIssuerKeysSupportedWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeAppleNumberOfAliroEndpointKeysSupportedWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeAttributeListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAttributeListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeAutoRelockTimeWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAutoRelockTimeWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeClusterRevisionWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeClusterRevisionWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeCredentialRulesSupportWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeCredentialRulesSupportWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeDefaultConfigurationRegisterWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeDefaultConfigurationRegisterWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeDoorClosedEventsWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeDoorClosedEventsWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeDoorOpenEventsWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeDoorOpenEventsWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeDoorStateWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeDoorStateWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeEnableInsideStatusLEDWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeEnableInsideStatusLEDWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeEnableLocalProgrammingWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeEnableLocalProgrammingWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeEnableOneTouchLockingWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeEnableOneTouchLockingWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeEnablePrivacyModeButtonWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeEnablePrivacyModeButtonWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeExpiringUserTimeoutWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeExpiringUserTimeoutWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeFeatureMapWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeFeatureMapWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeGeneratedCommandListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeGeneratedCommandListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeLEDSettingsWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeLEDSettingsWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeLanguageWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeLanguageWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeLocalProgrammingFeaturesWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeLocalProgrammingFeaturesWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeLockStateWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeLockStateWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeLockTypeWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeLockTypeWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeMaxPINCodeLengthWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeMaxPINCodeLengthWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeMaxRFIDCodeLengthWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeMaxRFIDCodeLengthWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeMinPINCodeLengthWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeMinPINCodeLengthWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeMinRFIDCodeLengthWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeMinRFIDCodeLengthWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeNumberOfAliroCredentialIssuerKeysSupportedWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeNumberOfAliroEndpointKeysSupportedWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion;
+ (void)readAttributeNumberOfCredentialsSupportedPerUserWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeNumberOfCredentialsSupportedPerUserWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeNumberOfHolidaySchedulesSupportedWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeNumberOfHolidaySchedulesSupportedWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeNumberOfPINUsersSupportedWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeNumberOfPINUsersSupportedWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeNumberOfRFIDUsersSupportedWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeNumberOfRFIDUsersSupportedWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeNumberOfTotalUsersSupportedWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeNumberOfTotalUsersSupportedWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeNumberOfWeekDaySchedulesSupportedPerUserWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeNumberOfWeekDaySchedulesSupportedPerUserWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeNumberOfYearDaySchedulesSupportedPerUserWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeNumberOfYearDaySchedulesSupportedPerUserWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeOpenPeriodWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeOpenPeriodWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeOperatingModeWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeOperatingModeWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRequirePINforRemoteOperationWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRequirePINforRemoteOperationWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeSendPINOverTheAirWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeSendPINOverTheAirWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeSoundVolumeWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeSoundVolumeWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeSupportedOperatingModesWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeSupportedOperatingModesWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeUserCodeTemporaryDisableTimeWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeUserCodeTemporaryDisableTimeWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeWrongCodeEntryLimitWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeWrongCodeEntryLimitWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
- (void)appleClearAliroCredentialWithParams:(id)params completion:(id)completion;
- (void)appleClearAliroReaderConfigWithParams:(id)params completion:(id)completion;
- (void)appleGetAliroCredentialStatusWithParams:(id)params completion:(id)completion;
- (void)appleSetAliroCredentialWithParams:(id)params completion:(id)completion;
- (void)appleSetAliroReaderConfigWithParams:(id)params completion:(id)completion;
- (void)clearAliroReaderConfigWithParams:(id)params completion:(id)completion;
- (void)clearCredentialWithParams:(MTRDoorLockClusterClearCredentialParams *)params completion:(MTRStatusCompletion)completion;
- (void)clearHolidayScheduleWithParams:(MTRDoorLockClusterClearHolidayScheduleParams *)params completion:(MTRStatusCompletion)completion;
- (void)clearUserWithParams:(MTRDoorLockClusterClearUserParams *)params completion:(MTRStatusCompletion)completion;
- (void)clearWeekDayScheduleWithParams:(MTRDoorLockClusterClearWeekDayScheduleParams *)params completion:(MTRStatusCompletion)completion;
- (void)clearYearDayScheduleWithParams:(MTRDoorLockClusterClearYearDayScheduleParams *)params completion:(MTRStatusCompletion)completion;
- (void)getCredentialStatusWithParams:(MTRDoorLockClusterGetCredentialStatusParams *)params completion:(void *)completion;
- (void)getCredentialStatusWithParams:(MTRDoorLockClusterGetCredentialStatusParams *)params completionHandler:(void *)completionHandler;
- (void)getHolidayScheduleWithParams:(MTRDoorLockClusterGetHolidayScheduleParams *)params completion:(void *)completion;
- (void)getHolidayScheduleWithParams:(MTRDoorLockClusterGetHolidayScheduleParams *)params completionHandler:(void *)completionHandler;
- (void)getUserWithParams:(MTRDoorLockClusterGetUserParams *)params completion:(void *)completion;
- (void)getUserWithParams:(MTRDoorLockClusterGetUserParams *)params completionHandler:(void *)completionHandler;
- (void)getWeekDayScheduleWithParams:(MTRDoorLockClusterGetWeekDayScheduleParams *)params completion:(void *)completion;
- (void)getWeekDayScheduleWithParams:(MTRDoorLockClusterGetWeekDayScheduleParams *)params completionHandler:(void *)completionHandler;
- (void)getYearDayScheduleWithParams:(MTRDoorLockClusterGetYearDayScheduleParams *)params completion:(void *)completion;
- (void)getYearDayScheduleWithParams:(MTRDoorLockClusterGetYearDayScheduleParams *)params completionHandler:(void *)completionHandler;
- (void)lockDoorWithParams:(MTRDoorLockClusterLockDoorParams *)params completion:(MTRStatusCompletion)completion;
- (void)readAttributeAcceptedCommandListWithCompletion:(void *)completion;
- (void)readAttributeAcceptedCommandListWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeActuatorEnabledWithCompletion:(void *)completion;
- (void)readAttributeActuatorEnabledWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAliroBLEAdvertisingVersionWithCompletion:(id)completion;
- (void)readAttributeAliroExpeditedTransactionSupportedProtocolVersionsWithCompletion:(id)completion;
- (void)readAttributeAliroGroupResolvingKeyWithCompletion:(id)completion;
- (void)readAttributeAliroReaderGroupIdentifierWithCompletion:(id)completion;
- (void)readAttributeAliroReaderGroupSubIdentifierWithCompletion:(id)completion;
- (void)readAttributeAliroReaderVerificationKeyWithCompletion:(id)completion;
- (void)readAttributeAliroSupportedBLEUWBProtocolVersionsWithCompletion:(id)completion;
- (void)readAttributeAppleAliroBLEAdvertisingVersionWithCompletion:(id)completion;
- (void)readAttributeAppleAliroExpeditedTransactionSupportedProtocolVersionsWithCompletion:(id)completion;
- (void)readAttributeAppleAliroGroupResolvingKeyWithCompletion:(id)completion;
- (void)readAttributeAppleAliroReaderGroupIdentifierWithCompletion:(id)completion;
- (void)readAttributeAppleAliroReaderGroupSubIdentifierWithCompletion:(id)completion;
- (void)readAttributeAppleAliroReaderVerificationKeyWithCompletion:(id)completion;
- (void)readAttributeAppleAliroSupportedBLEUWBProtocolVersionsWithCompletion:(id)completion;
- (void)readAttributeAppleNumberOfAliroCredentialIssuerKeysSupportedWithCompletion:(id)completion;
- (void)readAttributeAppleNumberOfAliroEndpointKeysSupportedWithCompletion:(id)completion;
- (void)readAttributeAttributeListWithCompletion:(void *)completion;
- (void)readAttributeAttributeListWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAutoRelockTimeWithCompletion:(void *)completion;
- (void)readAttributeAutoRelockTimeWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeClusterRevisionWithCompletion:(void *)completion;
- (void)readAttributeClusterRevisionWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeCredentialRulesSupportWithCompletion:(void *)completion;
- (void)readAttributeCredentialRulesSupportWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeDefaultConfigurationRegisterWithCompletion:(void *)completion;
- (void)readAttributeDefaultConfigurationRegisterWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeDoorClosedEventsWithCompletion:(void *)completion;
- (void)readAttributeDoorClosedEventsWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeDoorOpenEventsWithCompletion:(void *)completion;
- (void)readAttributeDoorOpenEventsWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeDoorStateWithCompletion:(void *)completion;
- (void)readAttributeDoorStateWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeEnableInsideStatusLEDWithCompletion:(void *)completion;
- (void)readAttributeEnableInsideStatusLEDWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeEnableLocalProgrammingWithCompletion:(void *)completion;
- (void)readAttributeEnableLocalProgrammingWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeEnableOneTouchLockingWithCompletion:(void *)completion;
- (void)readAttributeEnableOneTouchLockingWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeEnablePrivacyModeButtonWithCompletion:(void *)completion;
- (void)readAttributeEnablePrivacyModeButtonWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeExpiringUserTimeoutWithCompletion:(void *)completion;
- (void)readAttributeExpiringUserTimeoutWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeFeatureMapWithCompletion:(void *)completion;
- (void)readAttributeFeatureMapWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeGeneratedCommandListWithCompletion:(void *)completion;
- (void)readAttributeGeneratedCommandListWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeLEDSettingsWithCompletion:(void *)completion;
- (void)readAttributeLEDSettingsWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeLanguageWithCompletion:(void *)completion;
- (void)readAttributeLanguageWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeLocalProgrammingFeaturesWithCompletion:(void *)completion;
- (void)readAttributeLocalProgrammingFeaturesWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeLockStateWithCompletion:(void *)completion;
- (void)readAttributeLockStateWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeLockTypeWithCompletion:(void *)completion;
- (void)readAttributeLockTypeWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeMaxPINCodeLengthWithCompletion:(void *)completion;
- (void)readAttributeMaxPINCodeLengthWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeMaxRFIDCodeLengthWithCompletion:(void *)completion;
- (void)readAttributeMaxRFIDCodeLengthWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeMinPINCodeLengthWithCompletion:(void *)completion;
- (void)readAttributeMinPINCodeLengthWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeMinRFIDCodeLengthWithCompletion:(void *)completion;
- (void)readAttributeMinRFIDCodeLengthWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeNumberOfAliroCredentialIssuerKeysSupportedWithCompletion:(id)completion;
- (void)readAttributeNumberOfAliroEndpointKeysSupportedWithCompletion:(id)completion;
- (void)readAttributeNumberOfCredentialsSupportedPerUserWithCompletion:(void *)completion;
- (void)readAttributeNumberOfCredentialsSupportedPerUserWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeNumberOfHolidaySchedulesSupportedWithCompletion:(void *)completion;
- (void)readAttributeNumberOfHolidaySchedulesSupportedWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeNumberOfPINUsersSupportedWithCompletion:(void *)completion;
- (void)readAttributeNumberOfPINUsersSupportedWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeNumberOfRFIDUsersSupportedWithCompletion:(void *)completion;
- (void)readAttributeNumberOfRFIDUsersSupportedWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeNumberOfTotalUsersSupportedWithCompletion:(void *)completion;
- (void)readAttributeNumberOfTotalUsersSupportedWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeNumberOfWeekDaySchedulesSupportedPerUserWithCompletion:(void *)completion;
- (void)readAttributeNumberOfWeekDaySchedulesSupportedPerUserWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeNumberOfYearDaySchedulesSupportedPerUserWithCompletion:(void *)completion;
- (void)readAttributeNumberOfYearDaySchedulesSupportedPerUserWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeOpenPeriodWithCompletion:(void *)completion;
- (void)readAttributeOpenPeriodWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeOperatingModeWithCompletion:(void *)completion;
- (void)readAttributeOperatingModeWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRequirePINforRemoteOperationWithCompletion:(void *)completion;
- (void)readAttributeRequirePINforRemoteOperationWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeSendPINOverTheAirWithCompletion:(void *)completion;
- (void)readAttributeSendPINOverTheAirWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeSoundVolumeWithCompletion:(void *)completion;
- (void)readAttributeSoundVolumeWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeSupportedOperatingModesWithCompletion:(void *)completion;
- (void)readAttributeSupportedOperatingModesWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeUserCodeTemporaryDisableTimeWithCompletion:(void *)completion;
- (void)readAttributeUserCodeTemporaryDisableTimeWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeWrongCodeEntryLimitWithCompletion:(void *)completion;
- (void)readAttributeWrongCodeEntryLimitWithCompletionHandler:(void *)completionHandler;
- (void)setAliroReaderConfigWithParams:(id)params completion:(id)completion;
- (void)setCredentialWithParams:(MTRDoorLockClusterSetCredentialParams *)params completion:(void *)completion;
- (void)setCredentialWithParams:(MTRDoorLockClusterSetCredentialParams *)params completionHandler:(void *)completionHandler;
- (void)setHolidayScheduleWithParams:(MTRDoorLockClusterSetHolidayScheduleParams *)params completion:(MTRStatusCompletion)completion;
- (void)setUserWithParams:(MTRDoorLockClusterSetUserParams *)params completion:(MTRStatusCompletion)completion;
- (void)setWeekDayScheduleWithParams:(MTRDoorLockClusterSetWeekDayScheduleParams *)params completion:(MTRStatusCompletion)completion;
- (void)setYearDayScheduleWithParams:(MTRDoorLockClusterSetYearDayScheduleParams *)params completion:(MTRStatusCompletion)completion;
- (void)subscribeAttributeAcceptedCommandListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcceptedCommandListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeActuatorEnabledWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeActuatorEnabledWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAliroBLEAdvertisingVersionWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeAliroExpeditedTransactionSupportedProtocolVersionsWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeAliroGroupResolvingKeyWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeAliroReaderGroupIdentifierWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeAliroReaderGroupSubIdentifierWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeAliroReaderVerificationKeyWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeAliroSupportedBLEUWBProtocolVersionsWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeAppleAliroBLEAdvertisingVersionWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeAppleAliroExpeditedTransactionSupportedProtocolVersionsWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeAppleAliroGroupResolvingKeyWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeAppleAliroReaderGroupIdentifierWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeAppleAliroReaderGroupSubIdentifierWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeAppleAliroReaderVerificationKeyWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeAppleAliroSupportedBLEUWBProtocolVersionsWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeAppleNumberOfAliroCredentialIssuerKeysSupportedWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeAppleNumberOfAliroEndpointKeysSupportedWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeAttributeListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAttributeListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAutoRelockTimeWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAutoRelockTimeWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeClusterRevisionWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeClusterRevisionWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeCredentialRulesSupportWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeCredentialRulesSupportWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDefaultConfigurationRegisterWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDefaultConfigurationRegisterWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDoorClosedEventsWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDoorClosedEventsWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDoorOpenEventsWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDoorOpenEventsWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDoorStateWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDoorStateWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeEnableInsideStatusLEDWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeEnableInsideStatusLEDWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeEnableLocalProgrammingWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeEnableLocalProgrammingWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeEnableOneTouchLockingWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeEnableOneTouchLockingWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeEnablePrivacyModeButtonWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeEnablePrivacyModeButtonWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeExpiringUserTimeoutWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeExpiringUserTimeoutWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeFeatureMapWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeFeatureMapWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeGeneratedCommandListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeGeneratedCommandListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeLEDSettingsWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeLEDSettingsWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeLanguageWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeLanguageWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeLocalProgrammingFeaturesWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeLocalProgrammingFeaturesWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeLockStateWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeLockStateWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeLockTypeWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeLockTypeWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMaxPINCodeLengthWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMaxPINCodeLengthWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMaxRFIDCodeLengthWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMaxRFIDCodeLengthWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMinPINCodeLengthWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMinPINCodeLengthWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMinRFIDCodeLengthWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMinRFIDCodeLengthWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeNumberOfAliroCredentialIssuerKeysSupportedWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeNumberOfAliroEndpointKeysSupportedWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler;
- (void)subscribeAttributeNumberOfCredentialsSupportedPerUserWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeNumberOfCredentialsSupportedPerUserWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeNumberOfHolidaySchedulesSupportedWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeNumberOfHolidaySchedulesSupportedWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeNumberOfPINUsersSupportedWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeNumberOfPINUsersSupportedWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeNumberOfRFIDUsersSupportedWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeNumberOfRFIDUsersSupportedWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeNumberOfTotalUsersSupportedWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeNumberOfTotalUsersSupportedWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeNumberOfWeekDaySchedulesSupportedPerUserWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeNumberOfWeekDaySchedulesSupportedPerUserWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeNumberOfYearDaySchedulesSupportedPerUserWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeNumberOfYearDaySchedulesSupportedPerUserWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeOpenPeriodWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeOpenPeriodWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeOperatingModeWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeOperatingModeWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRequirePINforRemoteOperationWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRequirePINforRemoteOperationWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeSendPINOverTheAirWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeSendPINOverTheAirWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeSoundVolumeWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeSoundVolumeWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeSupportedOperatingModesWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeSupportedOperatingModesWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeUserCodeTemporaryDisableTimeWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeUserCodeTemporaryDisableTimeWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeWrongCodeEntryLimitWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeWrongCodeEntryLimitWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)unboltDoorWithParams:(id)params completion:(id)completion;
- (void)unlockDoorWithParams:(MTRDoorLockClusterUnlockDoorParams *)params completion:(MTRStatusCompletion)completion;
- (void)unlockWithTimeoutWithParams:(MTRDoorLockClusterUnlockWithTimeoutParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeAutoRelockTimeWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeDoorClosedEventsWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeDoorOpenEventsWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeEnableInsideStatusLEDWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeEnableLocalProgrammingWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeEnableOneTouchLockingWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeEnablePrivacyModeButtonWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeExpiringUserTimeoutWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeLEDSettingsWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeLanguageWithValue:(NSString *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeLocalProgrammingFeaturesWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeOpenPeriodWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeOperatingModeWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeRequirePINforRemoteOperationWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeSendPINOverTheAirWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeSoundVolumeWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeUserCodeTemporaryDisableTimeWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeWrongCodeEntryLimitWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
@end

@implementation MTRBaseClusterDoorLock

- (void)lockDoorWithParams:(MTRDoorLockClusterLockDoorParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRDoorLockClusterLockDoorParams);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_23905235C;
  v19 = &unk_278A73118;
  v8 = v7;
  v20 = v8;
  v9 = MEMORY[0x23EE78590](&v16);
  timedInvokeTimeoutMs = [(MTRDoorLockClusterLockDoorParams *)v6 timedInvokeTimeoutMs];
  if (timedInvokeTimeoutMs)
  {
    v11 = timedInvokeTimeoutMs;
  }

  else
  {
    v11 = &unk_284C3F170;
  }

  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRDoorLockClusterLockDoorParams *)v6 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3F638 commandID:&unk_284C3E678 commandPayload:v6 timedInvokeTimeout:v11 serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v16, v17, v18, v19}];
}

- (void)unlockDoorWithParams:(MTRDoorLockClusterUnlockDoorParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRDoorLockClusterUnlockDoorParams);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_239052560;
  v19 = &unk_278A73118;
  v8 = v7;
  v20 = v8;
  v9 = MEMORY[0x23EE78590](&v16);
  timedInvokeTimeoutMs = [(MTRDoorLockClusterUnlockDoorParams *)v6 timedInvokeTimeoutMs];
  if (timedInvokeTimeoutMs)
  {
    v11 = timedInvokeTimeoutMs;
  }

  else
  {
    v11 = &unk_284C3F170;
  }

  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRDoorLockClusterUnlockDoorParams *)v6 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3F638 commandID:&unk_284C3E768 commandPayload:v6 timedInvokeTimeout:v11 serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v16, v17, v18, v19}];
}

- (void)unlockWithTimeoutWithParams:(MTRDoorLockClusterUnlockWithTimeoutParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRDoorLockClusterUnlockWithTimeoutParams);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_239052758;
  v19 = &unk_278A73118;
  v8 = v7;
  v20 = v8;
  v9 = MEMORY[0x23EE78590](&v16);
  timedInvokeTimeoutMs = [(MTRDoorLockClusterUnlockWithTimeoutParams *)v6 timedInvokeTimeoutMs];
  if (timedInvokeTimeoutMs)
  {
    v11 = timedInvokeTimeoutMs;
  }

  else
  {
    v11 = &unk_284C3F170;
  }

  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRDoorLockClusterUnlockWithTimeoutParams *)v6 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3F638 commandID:&unk_284C3E798 commandPayload:v6 timedInvokeTimeout:v11 serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v16, v17, v18, v19}];
}

- (void)setWeekDayScheduleWithParams:(MTRDoorLockClusterSetWeekDayScheduleParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRDoorLockClusterSetWeekDayScheduleParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_239052944;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRDoorLockClusterSetWeekDayScheduleParams *)v6 timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRDoorLockClusterSetWeekDayScheduleParams *)v6 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3F638 commandID:&unk_284C3EA98 commandPayload:v6 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)getWeekDayScheduleWithParams:(MTRDoorLockClusterGetWeekDayScheduleParams *)params completion:(void *)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRDoorLockClusterGetWeekDayScheduleParams);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_239052B40;
  v19 = &unk_278A73118;
  v8 = v7;
  v20 = v8;
  v9 = MEMORY[0x23EE78590](&v16);
  timedInvokeTimeoutMs = [(MTRDoorLockClusterGetWeekDayScheduleParams *)v6 timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRDoorLockClusterGetWeekDayScheduleParams *)v6 serverSideProcessingTimeout];
  v14 = objc_opt_class();
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3F638 commandID:&unk_284C3F1B8 commandPayload:v6 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:v14 queue:callbackQueue completion:{v9, v16, v17, v18, v19}];
}

- (void)clearWeekDayScheduleWithParams:(MTRDoorLockClusterClearWeekDayScheduleParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRDoorLockClusterClearWeekDayScheduleParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_239052D28;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRDoorLockClusterClearWeekDayScheduleParams *)v6 timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRDoorLockClusterClearWeekDayScheduleParams *)v6 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3F638 commandID:&unk_284C3F1D0 commandPayload:v6 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)setYearDayScheduleWithParams:(MTRDoorLockClusterSetYearDayScheduleParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRDoorLockClusterSetYearDayScheduleParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_239052F14;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRDoorLockClusterSetYearDayScheduleParams *)v6 timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRDoorLockClusterSetYearDayScheduleParams *)v6 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3F638 commandID:&unk_284C3F650 commandPayload:v6 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)getYearDayScheduleWithParams:(MTRDoorLockClusterGetYearDayScheduleParams *)params completion:(void *)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRDoorLockClusterGetYearDayScheduleParams);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_239053110;
  v19 = &unk_278A73118;
  v8 = v7;
  v20 = v8;
  v9 = MEMORY[0x23EE78590](&v16);
  timedInvokeTimeoutMs = [(MTRDoorLockClusterGetYearDayScheduleParams *)v6 timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRDoorLockClusterGetYearDayScheduleParams *)v6 serverSideProcessingTimeout];
  v14 = objc_opt_class();
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3F638 commandID:&unk_284C3F668 commandPayload:v6 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:v14 queue:callbackQueue completion:{v9, v16, v17, v18, v19}];
}

- (void)clearYearDayScheduleWithParams:(MTRDoorLockClusterClearYearDayScheduleParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRDoorLockClusterClearYearDayScheduleParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2390532F8;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRDoorLockClusterClearYearDayScheduleParams *)v6 timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRDoorLockClusterClearYearDayScheduleParams *)v6 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3F638 commandID:&unk_284C3F680 commandPayload:v6 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)setHolidayScheduleWithParams:(MTRDoorLockClusterSetHolidayScheduleParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRDoorLockClusterSetHolidayScheduleParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2390534E4;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRDoorLockClusterSetHolidayScheduleParams *)v6 timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRDoorLockClusterSetHolidayScheduleParams *)v6 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3F638 commandID:&unk_284C3F698 commandPayload:v6 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)getHolidayScheduleWithParams:(MTRDoorLockClusterGetHolidayScheduleParams *)params completion:(void *)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRDoorLockClusterGetHolidayScheduleParams);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_2390536E0;
  v19 = &unk_278A73118;
  v8 = v7;
  v20 = v8;
  v9 = MEMORY[0x23EE78590](&v16);
  timedInvokeTimeoutMs = [(MTRDoorLockClusterGetHolidayScheduleParams *)v6 timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRDoorLockClusterGetHolidayScheduleParams *)v6 serverSideProcessingTimeout];
  v14 = objc_opt_class();
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3F638 commandID:&unk_284C3F6B0 commandPayload:v6 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:v14 queue:callbackQueue completion:{v9, v16, v17, v18, v19}];
}

- (void)clearHolidayScheduleWithParams:(MTRDoorLockClusterClearHolidayScheduleParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRDoorLockClusterClearHolidayScheduleParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2390538C8;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRDoorLockClusterClearHolidayScheduleParams *)v6 timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRDoorLockClusterClearHolidayScheduleParams *)v6 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3F638 commandID:&unk_284C3F6C8 commandPayload:v6 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)setUserWithParams:(MTRDoorLockClusterSetUserParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRDoorLockClusterSetUserParams);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_239053AC0;
  v19 = &unk_278A73118;
  v8 = v7;
  v20 = v8;
  v9 = MEMORY[0x23EE78590](&v16);
  timedInvokeTimeoutMs = [(MTRDoorLockClusterSetUserParams *)v6 timedInvokeTimeoutMs];
  if (timedInvokeTimeoutMs)
  {
    v11 = timedInvokeTimeoutMs;
  }

  else
  {
    v11 = &unk_284C3F170;
  }

  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRDoorLockClusterSetUserParams *)v6 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3F638 commandID:&unk_284C3F6E0 commandPayload:v6 timedInvokeTimeout:v11 serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v16, v17, v18, v19}];
}

- (void)getUserWithParams:(MTRDoorLockClusterGetUserParams *)params completion:(void *)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRDoorLockClusterGetUserParams);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_239053CBC;
  v19 = &unk_278A73118;
  v8 = v7;
  v20 = v8;
  v9 = MEMORY[0x23EE78590](&v16);
  timedInvokeTimeoutMs = [(MTRDoorLockClusterGetUserParams *)v6 timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRDoorLockClusterGetUserParams *)v6 serverSideProcessingTimeout];
  v14 = objc_opt_class();
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3F638 commandID:&unk_284C3F6F8 commandPayload:v6 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:v14 queue:callbackQueue completion:{v9, v16, v17, v18, v19}];
}

- (void)clearUserWithParams:(MTRDoorLockClusterClearUserParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRDoorLockClusterClearUserParams);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_239053EB0;
  v19 = &unk_278A73118;
  v8 = v7;
  v20 = v8;
  v9 = MEMORY[0x23EE78590](&v16);
  timedInvokeTimeoutMs = [(MTRDoorLockClusterClearUserParams *)v6 timedInvokeTimeoutMs];
  if (timedInvokeTimeoutMs)
  {
    v11 = timedInvokeTimeoutMs;
  }

  else
  {
    v11 = &unk_284C3F170;
  }

  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRDoorLockClusterClearUserParams *)v6 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3F638 commandID:&unk_284C3F710 commandPayload:v6 timedInvokeTimeout:v11 serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v16, v17, v18, v19}];
}

- (void)setCredentialWithParams:(MTRDoorLockClusterSetCredentialParams *)params completion:(void *)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRDoorLockClusterSetCredentialParams);
  }

  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = sub_2390540B8;
  v20 = &unk_278A73118;
  v8 = v7;
  v21 = v8;
  v9 = MEMORY[0x23EE78590](&v17);
  timedInvokeTimeoutMs = [(MTRDoorLockClusterSetCredentialParams *)v6 timedInvokeTimeoutMs];
  if (timedInvokeTimeoutMs)
  {
    v11 = timedInvokeTimeoutMs;
  }

  else
  {
    v11 = &unk_284C3F170;
  }

  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRDoorLockClusterSetCredentialParams *)v6 serverSideProcessingTimeout];
  v15 = objc_opt_class();
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3F638 commandID:&unk_284C3F728 commandPayload:v6 timedInvokeTimeout:v11 serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:v15 queue:callbackQueue completion:{v9, v17, v18, v19, v20}];
}

- (void)getCredentialStatusWithParams:(MTRDoorLockClusterGetCredentialStatusParams *)params completion:(void *)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRDoorLockClusterGetCredentialStatusParams);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_2390542B0;
  v19 = &unk_278A73118;
  v8 = v7;
  v20 = v8;
  v9 = MEMORY[0x23EE78590](&v16);
  timedInvokeTimeoutMs = [(MTRDoorLockClusterGetCredentialStatusParams *)v6 timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRDoorLockClusterGetCredentialStatusParams *)v6 serverSideProcessingTimeout];
  v14 = objc_opt_class();
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3F638 commandID:&unk_284C3F740 commandPayload:v6 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:v14 queue:callbackQueue completion:{v9, v16, v17, v18, v19}];
}

- (void)clearCredentialWithParams:(MTRDoorLockClusterClearCredentialParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRDoorLockClusterClearCredentialParams);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_2390544A4;
  v19 = &unk_278A73118;
  v8 = v7;
  v20 = v8;
  v9 = MEMORY[0x23EE78590](&v16);
  timedInvokeTimeoutMs = [(MTRDoorLockClusterClearCredentialParams *)v6 timedInvokeTimeoutMs];
  if (timedInvokeTimeoutMs)
  {
    v11 = timedInvokeTimeoutMs;
  }

  else
  {
    v11 = &unk_284C3F170;
  }

  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRDoorLockClusterClearCredentialParams *)v6 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3F638 commandID:&unk_284C3F758 commandPayload:v6 timedInvokeTimeout:v11 serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v16, v17, v18, v19}];
}

- (void)unboltDoorWithParams:(id)params completion:(id)completion
{
  paramsCopy = params;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRDoorLockClusterUnboltDoorParams);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_2390546A8;
  v19 = &unk_278A73118;
  v8 = completionCopy;
  v20 = v8;
  v9 = MEMORY[0x23EE78590](&v16);
  timedInvokeTimeoutMs = [(MTRDoorLockClusterUnboltDoorParams *)paramsCopy timedInvokeTimeoutMs];
  if (timedInvokeTimeoutMs)
  {
    v11 = timedInvokeTimeoutMs;
  }

  else
  {
    v11 = &unk_284C3F170;
  }

  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRDoorLockClusterUnboltDoorParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3F638 commandID:&unk_284C3F770 commandPayload:paramsCopy timedInvokeTimeout:v11 serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v16, v17, v18, v19}];
}

- (void)setAliroReaderConfigWithParams:(id)params completion:(id)completion
{
  paramsCopy = params;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRDoorLockClusterSetAliroReaderConfigParams);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_2390548A0;
  v19 = &unk_278A73118;
  v8 = completionCopy;
  v20 = v8;
  v9 = MEMORY[0x23EE78590](&v16);
  timedInvokeTimeoutMs = [(MTRDoorLockClusterSetAliroReaderConfigParams *)paramsCopy timedInvokeTimeoutMs];
  if (timedInvokeTimeoutMs)
  {
    v11 = timedInvokeTimeoutMs;
  }

  else
  {
    v11 = &unk_284C3F170;
  }

  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRDoorLockClusterSetAliroReaderConfigParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3F638 commandID:&unk_284C3F788 commandPayload:paramsCopy timedInvokeTimeout:v11 serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v16, v17, v18, v19}];
}

- (void)clearAliroReaderConfigWithParams:(id)params completion:(id)completion
{
  paramsCopy = params;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRDoorLockClusterClearAliroReaderConfigParams);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_239054AA4;
  v19 = &unk_278A73118;
  v8 = completionCopy;
  v20 = v8;
  v9 = MEMORY[0x23EE78590](&v16);
  timedInvokeTimeoutMs = [(MTRDoorLockClusterClearAliroReaderConfigParams *)paramsCopy timedInvokeTimeoutMs];
  if (timedInvokeTimeoutMs)
  {
    v11 = timedInvokeTimeoutMs;
  }

  else
  {
    v11 = &unk_284C3F170;
  }

  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRDoorLockClusterClearAliroReaderConfigParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3F638 commandID:&unk_284C3F7A0 commandPayload:paramsCopy timedInvokeTimeout:v11 serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v16, v17, v18, v19}];
}

- (void)appleSetAliroCredentialWithParams:(id)params completion:(id)completion
{
  paramsCopy = params;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRDoorLockClusterAppleSetAliroCredentialParams);
  }

  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = sub_239054CAC;
  v20 = &unk_278A73118;
  v8 = completionCopy;
  v21 = v8;
  v9 = MEMORY[0x23EE78590](&v17);
  timedInvokeTimeoutMs = [(MTRDoorLockClusterAppleSetAliroCredentialParams *)paramsCopy timedInvokeTimeoutMs];
  if (timedInvokeTimeoutMs)
  {
    v11 = timedInvokeTimeoutMs;
  }

  else
  {
    v11 = &unk_284C3F170;
  }

  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRDoorLockClusterAppleSetAliroCredentialParams *)paramsCopy serverSideProcessingTimeout];
  v15 = objc_opt_class();
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3F638 commandID:&unk_284C3F7B8 commandPayload:paramsCopy timedInvokeTimeout:v11 serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:v15 queue:callbackQueue completion:{v9, v17, v18, v19, v20}];
}

- (void)appleGetAliroCredentialStatusWithParams:(id)params completion:(id)completion
{
  paramsCopy = params;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRDoorLockClusterAppleGetAliroCredentialStatusParams);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_239054EA4;
  v19 = &unk_278A73118;
  v8 = completionCopy;
  v20 = v8;
  v9 = MEMORY[0x23EE78590](&v16);
  timedInvokeTimeoutMs = [(MTRDoorLockClusterAppleGetAliroCredentialStatusParams *)paramsCopy timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRDoorLockClusterAppleGetAliroCredentialStatusParams *)paramsCopy serverSideProcessingTimeout];
  v14 = objc_opt_class();
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3F638 commandID:&unk_284C3F7D0 commandPayload:paramsCopy timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:v14 queue:callbackQueue completion:{v9, v16, v17, v18, v19}];
}

- (void)appleClearAliroCredentialWithParams:(id)params completion:(id)completion
{
  paramsCopy = params;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRDoorLockClusterAppleClearAliroCredentialParams);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_239055098;
  v19 = &unk_278A73118;
  v8 = completionCopy;
  v20 = v8;
  v9 = MEMORY[0x23EE78590](&v16);
  timedInvokeTimeoutMs = [(MTRDoorLockClusterAppleClearAliroCredentialParams *)paramsCopy timedInvokeTimeoutMs];
  if (timedInvokeTimeoutMs)
  {
    v11 = timedInvokeTimeoutMs;
  }

  else
  {
    v11 = &unk_284C3F170;
  }

  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRDoorLockClusterAppleClearAliroCredentialParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3F638 commandID:&unk_284C3F7E8 commandPayload:paramsCopy timedInvokeTimeout:v11 serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v16, v17, v18, v19}];
}

- (void)appleSetAliroReaderConfigWithParams:(id)params completion:(id)completion
{
  paramsCopy = params;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRDoorLockClusterAppleSetAliroReaderConfigParams);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_239055290;
  v19 = &unk_278A73118;
  v8 = completionCopy;
  v20 = v8;
  v9 = MEMORY[0x23EE78590](&v16);
  timedInvokeTimeoutMs = [(MTRDoorLockClusterAppleSetAliroReaderConfigParams *)paramsCopy timedInvokeTimeoutMs];
  if (timedInvokeTimeoutMs)
  {
    v11 = timedInvokeTimeoutMs;
  }

  else
  {
    v11 = &unk_284C3F170;
  }

  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRDoorLockClusterAppleSetAliroReaderConfigParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3F638 commandID:&unk_284C3F800 commandPayload:paramsCopy timedInvokeTimeout:v11 serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v16, v17, v18, v19}];
}

- (void)appleClearAliroReaderConfigWithParams:(id)params completion:(id)completion
{
  paramsCopy = params;
  completionCopy = completion;
  if (!paramsCopy)
  {
    paramsCopy = objc_alloc_init(MTRDoorLockClusterAppleClearAliroReaderConfigParams);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_239055494;
  v19 = &unk_278A73118;
  v8 = completionCopy;
  v20 = v8;
  v9 = MEMORY[0x23EE78590](&v16);
  timedInvokeTimeoutMs = [(MTRDoorLockClusterAppleClearAliroReaderConfigParams *)paramsCopy timedInvokeTimeoutMs];
  if (timedInvokeTimeoutMs)
  {
    v11 = timedInvokeTimeoutMs;
  }

  else
  {
    v11 = &unk_284C3F170;
  }

  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRDoorLockClusterAppleClearAliroReaderConfigParams *)paramsCopy serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3F638 commandID:&unk_284C3F818 commandPayload:paramsCopy timedInvokeTimeout:v11 serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v16, v17, v18, v19}];
}

- (void)readAttributeLockStateWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3E6A8 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeLockStateWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3E6A8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeLockStateWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:0 queue:v10 completion:v11];
}

- (void)readAttributeLockTypeWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3E6C0 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeLockTypeWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3E6C0 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeLockTypeWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:1 queue:v10 completion:v11];
}

- (void)readAttributeActuatorEnabledWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3E8E8 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeActuatorEnabledWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3E8E8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeActuatorEnabledWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:2 queue:v10 completion:v11];
}

- (void)readAttributeDoorStateWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3E900 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeDoorStateWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3E900 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeDoorStateWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:3 queue:v10 completion:v11];
}

- (void)readAttributeDoorOpenEventsWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3E918 params:0 queue:callbackQueue completion:v7];
}

- (void)writeAttributeDoorOpenEventsWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v7 = value;
  v8 = params;
  v9 = completion;
  [(MTRWriteParams *)v8 copy];

  [(NSNumber *)v7 copy];
  operator new();
}

- (void)subscribeAttributeDoorOpenEventsWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3E918 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeDoorOpenEventsWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:4 queue:v10 completion:v11];
}

- (void)readAttributeDoorClosedEventsWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3E930 params:0 queue:callbackQueue completion:v7];
}

- (void)writeAttributeDoorClosedEventsWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v7 = value;
  v8 = params;
  v9 = completion;
  [(MTRWriteParams *)v8 copy];

  [(NSNumber *)v7 copy];
  operator new();
}

- (void)subscribeAttributeDoorClosedEventsWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3E930 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeDoorClosedEventsWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:5 queue:v10 completion:v11];
}

- (void)readAttributeOpenPeriodWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3E948 params:0 queue:callbackQueue completion:v7];
}

- (void)writeAttributeOpenPeriodWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v7 = value;
  v8 = params;
  v9 = completion;
  [(MTRWriteParams *)v8 copy];

  [(NSNumber *)v7 copy];
  operator new();
}

- (void)subscribeAttributeOpenPeriodWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3E948 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeOpenPeriodWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:6 queue:v10 completion:v11];
}

- (void)readAttributeNumberOfTotalUsersSupportedWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3E990 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeNumberOfTotalUsersSupportedWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3E990 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeNumberOfTotalUsersSupportedWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:17 queue:v10 completion:v11];
}

- (void)readAttributeNumberOfPINUsersSupportedWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3E9A8 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeNumberOfPINUsersSupportedWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3E9A8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeNumberOfPINUsersSupportedWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:18 queue:v10 completion:v11];
}

- (void)readAttributeNumberOfRFIDUsersSupportedWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3E9C0 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeNumberOfRFIDUsersSupportedWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3E9C0 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeNumberOfRFIDUsersSupportedWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:19 queue:v10 completion:v11];
}

- (void)readAttributeNumberOfWeekDaySchedulesSupportedPerUserWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3E9D8 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeNumberOfWeekDaySchedulesSupportedPerUserWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3E9D8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeNumberOfWeekDaySchedulesSupportedPerUserWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:20 queue:v10 completion:v11];
}

- (void)readAttributeNumberOfYearDaySchedulesSupportedPerUserWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EB88 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeNumberOfYearDaySchedulesSupportedPerUserWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EB88 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeNumberOfYearDaySchedulesSupportedPerUserWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:21 queue:v10 completion:v11];
}

- (void)readAttributeNumberOfHolidaySchedulesSupportedWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EBA0 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeNumberOfHolidaySchedulesSupportedWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EBA0 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeNumberOfHolidaySchedulesSupportedWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:22 queue:v10 completion:v11];
}

- (void)readAttributeMaxPINCodeLengthWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EC78 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeMaxPINCodeLengthWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EC78 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeMaxPINCodeLengthWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:23 queue:v10 completion:v11];
}

- (void)readAttributeMinPINCodeLengthWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EBB8 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeMinPINCodeLengthWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EBB8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeMinPINCodeLengthWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:24 queue:v10 completion:v11];
}

- (void)readAttributeMaxRFIDCodeLengthWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EC90 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeMaxRFIDCodeLengthWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EC90 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeMaxRFIDCodeLengthWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:25 queue:v10 completion:v11];
}

- (void)readAttributeMinRFIDCodeLengthWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3ECA8 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeMinRFIDCodeLengthWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3ECA8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeMinRFIDCodeLengthWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:26 queue:v10 completion:v11];
}

- (void)readAttributeCredentialRulesSupportWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3ECC0 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeCredentialRulesSupportWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3ECC0 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeCredentialRulesSupportWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:27 queue:v10 completion:v11];
}

- (void)readAttributeNumberOfCredentialsSupportedPerUserWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3ECD8 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeNumberOfCredentialsSupportedPerUserWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3ECD8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeNumberOfCredentialsSupportedPerUserWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:28 queue:v10 completion:v11];
}

- (void)readAttributeLanguageWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EDE0 params:0 queue:callbackQueue completion:v7];
}

- (void)writeAttributeLanguageWithValue:(NSString *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v7 = value;
  v8 = params;
  v9 = completion;
  [(MTRWriteParams *)v8 copy];

  [(NSString *)v7 copy];
  operator new();
}

- (void)subscribeAttributeLanguageWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EDE0 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeLanguageWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:33 queue:v10 completion:v11];
}

- (void)readAttributeLEDSettingsWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EDF8 params:0 queue:callbackQueue completion:v7];
}

- (void)writeAttributeLEDSettingsWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v7 = value;
  v8 = params;
  v9 = completion;
  [(MTRWriteParams *)v8 copy];

  [(NSNumber *)v7 copy];
  operator new();
}

- (void)subscribeAttributeLEDSettingsWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EDF8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeLEDSettingsWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:34 queue:v10 completion:v11];
}

- (void)readAttributeAutoRelockTimeWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EE10 params:0 queue:callbackQueue completion:v7];
}

- (void)writeAttributeAutoRelockTimeWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v7 = value;
  v8 = params;
  v9 = completion;
  [(MTRWriteParams *)v8 copy];

  [(NSNumber *)v7 copy];
  operator new();
}

- (void)subscribeAttributeAutoRelockTimeWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EE10 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeAutoRelockTimeWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:35 queue:v10 completion:v11];
}

- (void)readAttributeSoundVolumeWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EE28 params:0 queue:callbackQueue completion:v7];
}

- (void)writeAttributeSoundVolumeWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v7 = value;
  v8 = params;
  v9 = completion;
  [(MTRWriteParams *)v8 copy];

  [(NSNumber *)v7 copy];
  operator new();
}

- (void)subscribeAttributeSoundVolumeWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EE28 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeSoundVolumeWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:36 queue:v10 completion:v11];
}

- (void)readAttributeOperatingModeWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EE40 params:0 queue:callbackQueue completion:v7];
}

- (void)writeAttributeOperatingModeWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v7 = value;
  v8 = params;
  v9 = completion;
  [(MTRWriteParams *)v8 copy];

  [(NSNumber *)v7 copy];
  operator new();
}

- (void)subscribeAttributeOperatingModeWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EE40 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeOperatingModeWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:37 queue:v10 completion:v11];
}

- (void)readAttributeSupportedOperatingModesWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EE58 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeSupportedOperatingModesWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EE58 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeSupportedOperatingModesWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:38 queue:v10 completion:v11];
}

- (void)readAttributeDefaultConfigurationRegisterWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EE70 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeDefaultConfigurationRegisterWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EE70 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeDefaultConfigurationRegisterWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:39 queue:v10 completion:v11];
}

- (void)readAttributeEnableLocalProgrammingWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EE88 params:0 queue:callbackQueue completion:v7];
}

- (void)writeAttributeEnableLocalProgrammingWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v7 = value;
  v8 = params;
  v9 = completion;
  [(MTRWriteParams *)v8 copy];

  [(NSNumber *)v7 copy];
  operator new();
}

- (void)subscribeAttributeEnableLocalProgrammingWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EE88 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeEnableLocalProgrammingWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:40 queue:v10 completion:v11];
}

- (void)readAttributeEnableOneTouchLockingWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EEA0 params:0 queue:callbackQueue completion:v7];
}

- (void)writeAttributeEnableOneTouchLockingWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v7 = value;
  v8 = params;
  v9 = completion;
  [(MTRWriteParams *)v8 copy];

  [(NSNumber *)v7 copy];
  operator new();
}

- (void)subscribeAttributeEnableOneTouchLockingWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EEA0 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeEnableOneTouchLockingWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:41 queue:v10 completion:v11];
}

- (void)readAttributeEnableInsideStatusLEDWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EEB8 params:0 queue:callbackQueue completion:v7];
}

- (void)writeAttributeEnableInsideStatusLEDWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v7 = value;
  v8 = params;
  v9 = completion;
  [(MTRWriteParams *)v8 copy];

  [(NSNumber *)v7 copy];
  operator new();
}

- (void)subscribeAttributeEnableInsideStatusLEDWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EEB8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeEnableInsideStatusLEDWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:42 queue:v10 completion:v11];
}

- (void)readAttributeEnablePrivacyModeButtonWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EED0 params:0 queue:callbackQueue completion:v7];
}

- (void)writeAttributeEnablePrivacyModeButtonWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v7 = value;
  v8 = params;
  v9 = completion;
  [(MTRWriteParams *)v8 copy];

  [(NSNumber *)v7 copy];
  operator new();
}

- (void)subscribeAttributeEnablePrivacyModeButtonWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EED0 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeEnablePrivacyModeButtonWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:43 queue:v10 completion:v11];
}

- (void)readAttributeLocalProgrammingFeaturesWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EEE8 params:0 queue:callbackQueue completion:v7];
}

- (void)writeAttributeLocalProgrammingFeaturesWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v7 = value;
  v8 = params;
  v9 = completion;
  [(MTRWriteParams *)v8 copy];

  [(NSNumber *)v7 copy];
  operator new();
}

- (void)subscribeAttributeLocalProgrammingFeaturesWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EEE8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeLocalProgrammingFeaturesWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:44 queue:v10 completion:v11];
}

- (void)readAttributeWrongCodeEntryLimitWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EF48 params:0 queue:callbackQueue completion:v7];
}

- (void)writeAttributeWrongCodeEntryLimitWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v7 = value;
  v8 = params;
  v9 = completion;
  [(MTRWriteParams *)v8 copy];

  [(NSNumber *)v7 copy];
  operator new();
}

- (void)subscribeAttributeWrongCodeEntryLimitWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EF48 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeWrongCodeEntryLimitWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:48 queue:v10 completion:v11];
}

- (void)readAttributeUserCodeTemporaryDisableTimeWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EF60 params:0 queue:callbackQueue completion:v7];
}

- (void)writeAttributeUserCodeTemporaryDisableTimeWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v7 = value;
  v8 = params;
  v9 = completion;
  [(MTRWriteParams *)v8 copy];

  [(NSNumber *)v7 copy];
  operator new();
}

- (void)subscribeAttributeUserCodeTemporaryDisableTimeWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EF60 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeUserCodeTemporaryDisableTimeWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:49 queue:v10 completion:v11];
}

- (void)readAttributeSendPINOverTheAirWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EF78 params:0 queue:callbackQueue completion:v7];
}

- (void)writeAttributeSendPINOverTheAirWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v7 = value;
  v8 = params;
  v9 = completion;
  [(MTRWriteParams *)v8 copy];

  [(NSNumber *)v7 copy];
  operator new();
}

- (void)subscribeAttributeSendPINOverTheAirWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EF78 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeSendPINOverTheAirWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:50 queue:v10 completion:v11];
}

- (void)readAttributeRequirePINforRemoteOperationWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EF90 params:0 queue:callbackQueue completion:v7];
}

- (void)writeAttributeRequirePINforRemoteOperationWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v7 = value;
  v8 = params;
  v9 = completion;
  [(MTRWriteParams *)v8 copy];

  [(NSNumber *)v7 copy];
  operator new();
}

- (void)subscribeAttributeRequirePINforRemoteOperationWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EF90 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeRequirePINforRemoteOperationWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:51 queue:v10 completion:v11];
}

- (void)readAttributeExpiringUserTimeoutWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EFC0 params:0 queue:callbackQueue completion:v7];
}

- (void)writeAttributeExpiringUserTimeoutWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v7 = value;
  v8 = params;
  v9 = completion;
  [(MTRWriteParams *)v8 copy];

  [(NSNumber *)v7 copy];
  operator new();
}

- (void)subscribeAttributeExpiringUserTimeoutWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3EFC0 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeExpiringUserTimeoutWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:53 queue:v10 completion:v11];
}

- (void)readAttributeAliroReaderVerificationKeyWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F830 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeAliroReaderVerificationKeyWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F830 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeAliroReaderVerificationKeyWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:257 queue:128 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeAliroReaderGroupIdentifierWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F848 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeAliroReaderGroupIdentifierWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F848 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeAliroReaderGroupIdentifierWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:257 queue:129 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeAliroReaderGroupSubIdentifierWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F860 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeAliroReaderGroupSubIdentifierWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F860 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeAliroReaderGroupSubIdentifierWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:257 queue:130 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeAliroExpeditedTransactionSupportedProtocolVersionsWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F878 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeAliroExpeditedTransactionSupportedProtocolVersionsWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F878 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeAliroExpeditedTransactionSupportedProtocolVersionsWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:257 queue:131 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeAliroGroupResolvingKeyWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F890 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeAliroGroupResolvingKeyWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F890 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeAliroGroupResolvingKeyWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:257 queue:132 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeAliroSupportedBLEUWBProtocolVersionsWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F8A8 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeAliroSupportedBLEUWBProtocolVersionsWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F8A8 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeAliroSupportedBLEUWBProtocolVersionsWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:257 queue:133 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeAliroBLEAdvertisingVersionWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F8C0 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeAliroBLEAdvertisingVersionWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F8C0 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeAliroBLEAdvertisingVersionWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:257 queue:134 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeNumberOfAliroCredentialIssuerKeysSupportedWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F8D8 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeNumberOfAliroCredentialIssuerKeysSupportedWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F8D8 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeNumberOfAliroCredentialIssuerKeysSupportedWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:257 queue:135 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeNumberOfAliroEndpointKeysSupportedWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F8F0 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeNumberOfAliroEndpointKeysSupportedWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F8F0 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeNumberOfAliroEndpointKeysSupportedWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:257 queue:136 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeGeneratedCommandListWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3E6D8 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeGeneratedCommandListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3E6D8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeGeneratedCommandListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:65528 queue:v10 completion:v11];
}

- (void)readAttributeAcceptedCommandListWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3E6F0 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeAcceptedCommandListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3E6F0 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeAcceptedCommandListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:65529 queue:v10 completion:v11];
}

- (void)readAttributeAttributeListWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3E708 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeAttributeListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3E708 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeAttributeListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:65531 queue:v10 completion:v11];
}

- (void)readAttributeFeatureMapWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3E720 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeFeatureMapWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3E720 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeFeatureMapWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:65532 queue:v10 completion:v11];
}

- (void)readAttributeClusterRevisionWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3E738 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeClusterRevisionWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3E738 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeClusterRevisionWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:257 attributeID:65533 queue:v10 completion:v11];
}

- (void)readAttributeAppleAliroReaderVerificationKeyWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F908 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeAppleAliroReaderVerificationKeyWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F908 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeAppleAliroReaderVerificationKeyWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:257 queue:323551232 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeAppleAliroReaderGroupIdentifierWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F920 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeAppleAliroReaderGroupIdentifierWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F920 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeAppleAliroReaderGroupIdentifierWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:257 queue:323551233 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeAppleAliroReaderGroupSubIdentifierWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F938 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeAppleAliroReaderGroupSubIdentifierWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F938 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeAppleAliroReaderGroupSubIdentifierWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:257 queue:323551234 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeAppleAliroExpeditedTransactionSupportedProtocolVersionsWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F950 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeAppleAliroExpeditedTransactionSupportedProtocolVersionsWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F950 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeAppleAliroExpeditedTransactionSupportedProtocolVersionsWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:257 queue:323551235 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeAppleAliroGroupResolvingKeyWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F968 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeAppleAliroGroupResolvingKeyWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F968 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeAppleAliroGroupResolvingKeyWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:257 queue:323551236 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeAppleAliroSupportedBLEUWBProtocolVersionsWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F980 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeAppleAliroSupportedBLEUWBProtocolVersionsWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F980 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeAppleAliroSupportedBLEUWBProtocolVersionsWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:257 queue:323551237 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeAppleAliroBLEAdvertisingVersionWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F998 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeAppleAliroBLEAdvertisingVersionWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F998 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeAppleAliroBLEAdvertisingVersionWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:257 queue:323551238 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeAppleNumberOfAliroCredentialIssuerKeysSupportedWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F9B0 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeAppleNumberOfAliroCredentialIssuerKeysSupportedWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F9B0 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeAppleNumberOfAliroCredentialIssuerKeysSupportedWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:257 queue:323551239 completion:{queueCopy, completionCopy}];
}

- (void)readAttributeAppleNumberOfAliroEndpointKeysSupportedWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F9C8 params:0 queue:callbackQueue completion:completionCopy];
}

- (void)subscribeAttributeAppleNumberOfAliroEndpointKeysSupportedWithParams:(id)params subscriptionEstablished:(id)established reportHandler:(id)handler
{
  paramsCopy = params;
  establishedCopy = established;
  handlerCopy = handler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3F638 attributeID:&unk_284C3F9C8 params:paramsCopy queue:callbackQueue reportHandler:handlerCopy subscriptionEstablished:establishedCopy];
}

+ (void)readAttributeAppleNumberOfAliroEndpointKeysSupportedWithClusterStateCache:(id)cache endpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  cacheCopy = cache;
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  [cacheCopy _readKnownCachedAttributeWithEndpointID:objc_msgSend(endpointCopy clusterID:"unsignedShortValue") attributeID:257 queue:323551240 completion:{queueCopy, completionCopy}];
}

- (void)getWeekDayScheduleWithParams:(MTRDoorLockClusterGetWeekDayScheduleParams *)params completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_239064780;
  v8[3] = &unk_278A735A0;
  v9 = v6;
  v7 = v6;
  [(MTRBaseClusterDoorLock *)self getWeekDayScheduleWithParams:params completion:v8];
}

- (void)getYearDayScheduleWithParams:(MTRDoorLockClusterGetYearDayScheduleParams *)params completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_239064854;
  v8[3] = &unk_278A735C8;
  v9 = v6;
  v7 = v6;
  [(MTRBaseClusterDoorLock *)self getYearDayScheduleWithParams:params completion:v8];
}

- (void)getHolidayScheduleWithParams:(MTRDoorLockClusterGetHolidayScheduleParams *)params completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_239064928;
  v8[3] = &unk_278A735F0;
  v9 = v6;
  v7 = v6;
  [(MTRBaseClusterDoorLock *)self getHolidayScheduleWithParams:params completion:v8];
}

- (void)getUserWithParams:(MTRDoorLockClusterGetUserParams *)params completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2390649FC;
  v8[3] = &unk_278A73618;
  v9 = v6;
  v7 = v6;
  [(MTRBaseClusterDoorLock *)self getUserWithParams:params completion:v8];
}

- (void)setCredentialWithParams:(MTRDoorLockClusterSetCredentialParams *)params completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_239064ACC;
  v8[3] = &unk_278A73640;
  v9 = v6;
  v7 = v6;
  [(MTRBaseClusterDoorLock *)self setCredentialWithParams:params completion:v8];
}

- (void)getCredentialStatusWithParams:(MTRDoorLockClusterGetCredentialStatusParams *)params completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_239064B98;
  v8[3] = &unk_278A73668;
  v9 = v6;
  v7 = v6;
  [(MTRBaseClusterDoorLock *)self getCredentialStatusWithParams:params completion:v8];
}

- (void)readAttributeLockStateWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239064C58;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeLockStateWithCompletion:v6];
}

- (void)subscribeAttributeLockStateWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_239064DD8;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeLockStateWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeLockStateWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239064F00;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeLockStateWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeLockTypeWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239064FBC;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeLockTypeWithCompletion:v6];
}

- (void)subscribeAttributeLockTypeWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_23906513C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeLockTypeWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeLockTypeWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239065264;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeLockTypeWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeActuatorEnabledWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239065320;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeActuatorEnabledWithCompletion:v6];
}

- (void)subscribeAttributeActuatorEnabledWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2390654A0;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeActuatorEnabledWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeActuatorEnabledWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390655C8;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeActuatorEnabledWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeDoorStateWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239065684;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeDoorStateWithCompletion:v6];
}

- (void)subscribeAttributeDoorStateWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_239065804;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeDoorStateWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeDoorStateWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23906592C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeDoorStateWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeDoorOpenEventsWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390659E8;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeDoorOpenEventsWithCompletion:v6];
}

- (void)subscribeAttributeDoorOpenEventsWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_239065B78;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeDoorOpenEventsWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeDoorOpenEventsWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239065CA0;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeDoorOpenEventsWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeDoorClosedEventsWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239065D5C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeDoorClosedEventsWithCompletion:v6];
}

- (void)subscribeAttributeDoorClosedEventsWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_239065EEC;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeDoorClosedEventsWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeDoorClosedEventsWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239066014;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeDoorClosedEventsWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeOpenPeriodWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390660D0;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeOpenPeriodWithCompletion:v6];
}

- (void)subscribeAttributeOpenPeriodWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_239066260;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeOpenPeriodWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeOpenPeriodWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239066388;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeOpenPeriodWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeNumberOfTotalUsersSupportedWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239066444;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeNumberOfTotalUsersSupportedWithCompletion:v6];
}

- (void)subscribeAttributeNumberOfTotalUsersSupportedWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2390665C4;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeNumberOfTotalUsersSupportedWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeNumberOfTotalUsersSupportedWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390666EC;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeNumberOfTotalUsersSupportedWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeNumberOfPINUsersSupportedWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390667A8;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeNumberOfPINUsersSupportedWithCompletion:v6];
}

- (void)subscribeAttributeNumberOfPINUsersSupportedWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_239066928;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeNumberOfPINUsersSupportedWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeNumberOfPINUsersSupportedWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239066A50;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeNumberOfPINUsersSupportedWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeNumberOfRFIDUsersSupportedWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239066B0C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeNumberOfRFIDUsersSupportedWithCompletion:v6];
}

- (void)subscribeAttributeNumberOfRFIDUsersSupportedWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_239066C8C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeNumberOfRFIDUsersSupportedWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeNumberOfRFIDUsersSupportedWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239066DB4;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeNumberOfRFIDUsersSupportedWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeNumberOfWeekDaySchedulesSupportedPerUserWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239066E70;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeNumberOfWeekDaySchedulesSupportedPerUserWithCompletion:v6];
}

- (void)subscribeAttributeNumberOfWeekDaySchedulesSupportedPerUserWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_239066FF0;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeNumberOfWeekDaySchedulesSupportedPerUserWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeNumberOfWeekDaySchedulesSupportedPerUserWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239067118;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeNumberOfWeekDaySchedulesSupportedPerUserWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeNumberOfYearDaySchedulesSupportedPerUserWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390671D4;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeNumberOfYearDaySchedulesSupportedPerUserWithCompletion:v6];
}

- (void)subscribeAttributeNumberOfYearDaySchedulesSupportedPerUserWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_239067354;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeNumberOfYearDaySchedulesSupportedPerUserWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeNumberOfYearDaySchedulesSupportedPerUserWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23906747C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeNumberOfYearDaySchedulesSupportedPerUserWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeNumberOfHolidaySchedulesSupportedWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239067538;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeNumberOfHolidaySchedulesSupportedWithCompletion:v6];
}

- (void)subscribeAttributeNumberOfHolidaySchedulesSupportedWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2390676B8;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeNumberOfHolidaySchedulesSupportedWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeNumberOfHolidaySchedulesSupportedWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390677E0;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeNumberOfHolidaySchedulesSupportedWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeMaxPINCodeLengthWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23906789C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeMaxPINCodeLengthWithCompletion:v6];
}

- (void)subscribeAttributeMaxPINCodeLengthWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_239067A1C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeMaxPINCodeLengthWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeMaxPINCodeLengthWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239067B44;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeMaxPINCodeLengthWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeMinPINCodeLengthWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239067C00;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeMinPINCodeLengthWithCompletion:v6];
}

- (void)subscribeAttributeMinPINCodeLengthWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_239067D80;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeMinPINCodeLengthWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeMinPINCodeLengthWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239067EA8;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeMinPINCodeLengthWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeMaxRFIDCodeLengthWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239067F64;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeMaxRFIDCodeLengthWithCompletion:v6];
}

- (void)subscribeAttributeMaxRFIDCodeLengthWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2390680E4;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeMaxRFIDCodeLengthWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeMaxRFIDCodeLengthWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23906820C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeMaxRFIDCodeLengthWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeMinRFIDCodeLengthWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390682C8;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeMinRFIDCodeLengthWithCompletion:v6];
}

- (void)subscribeAttributeMinRFIDCodeLengthWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_239068448;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeMinRFIDCodeLengthWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeMinRFIDCodeLengthWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239068570;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeMinRFIDCodeLengthWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeCredentialRulesSupportWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23906862C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeCredentialRulesSupportWithCompletion:v6];
}

- (void)subscribeAttributeCredentialRulesSupportWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2390687AC;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeCredentialRulesSupportWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeCredentialRulesSupportWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390688D4;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeCredentialRulesSupportWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeNumberOfCredentialsSupportedPerUserWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239068990;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeNumberOfCredentialsSupportedPerUserWithCompletion:v6];
}

- (void)subscribeAttributeNumberOfCredentialsSupportedPerUserWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_239068B10;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeNumberOfCredentialsSupportedPerUserWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeNumberOfCredentialsSupportedPerUserWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239068C38;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeNumberOfCredentialsSupportedPerUserWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeLanguageWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239068CF4;
  v6[3] = &unk_278A73258;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeLanguageWithCompletion:v6];
}

- (void)subscribeAttributeLanguageWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_239068E84;
  v19[3] = &unk_278A73258;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeLanguageWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeLanguageWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239068FAC;
  v15[3] = &unk_278A73258;
  v14 = v12;
  v16 = v14;
  [self readAttributeLanguageWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeLEDSettingsWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239069068;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeLEDSettingsWithCompletion:v6];
}

- (void)subscribeAttributeLEDSettingsWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2390691F8;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeLEDSettingsWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeLEDSettingsWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239069320;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeLEDSettingsWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAutoRelockTimeWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390693DC;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeAutoRelockTimeWithCompletion:v6];
}

- (void)subscribeAttributeAutoRelockTimeWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_23906956C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeAutoRelockTimeWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAutoRelockTimeWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239069694;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeAutoRelockTimeWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeSoundVolumeWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239069750;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeSoundVolumeWithCompletion:v6];
}

- (void)subscribeAttributeSoundVolumeWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2390698E0;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeSoundVolumeWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeSoundVolumeWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239069A08;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeSoundVolumeWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeOperatingModeWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239069AC4;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeOperatingModeWithCompletion:v6];
}

- (void)subscribeAttributeOperatingModeWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_239069C54;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeOperatingModeWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeOperatingModeWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239069D7C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeOperatingModeWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeSupportedOperatingModesWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239069E38;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeSupportedOperatingModesWithCompletion:v6];
}

- (void)subscribeAttributeSupportedOperatingModesWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_239069FB8;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeSupportedOperatingModesWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeSupportedOperatingModesWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23906A0E0;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeSupportedOperatingModesWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeDefaultConfigurationRegisterWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23906A19C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeDefaultConfigurationRegisterWithCompletion:v6];
}

- (void)subscribeAttributeDefaultConfigurationRegisterWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_23906A31C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeDefaultConfigurationRegisterWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeDefaultConfigurationRegisterWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23906A444;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeDefaultConfigurationRegisterWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeEnableLocalProgrammingWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23906A500;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeEnableLocalProgrammingWithCompletion:v6];
}

- (void)subscribeAttributeEnableLocalProgrammingWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_23906A690;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeEnableLocalProgrammingWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeEnableLocalProgrammingWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23906A7B8;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeEnableLocalProgrammingWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeEnableOneTouchLockingWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23906A874;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeEnableOneTouchLockingWithCompletion:v6];
}

- (void)subscribeAttributeEnableOneTouchLockingWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_23906AA04;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeEnableOneTouchLockingWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeEnableOneTouchLockingWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23906AB2C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeEnableOneTouchLockingWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeEnableInsideStatusLEDWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23906ABE8;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeEnableInsideStatusLEDWithCompletion:v6];
}

- (void)subscribeAttributeEnableInsideStatusLEDWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_23906AD78;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeEnableInsideStatusLEDWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeEnableInsideStatusLEDWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23906AEA0;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeEnableInsideStatusLEDWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeEnablePrivacyModeButtonWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23906AF5C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeEnablePrivacyModeButtonWithCompletion:v6];
}

- (void)subscribeAttributeEnablePrivacyModeButtonWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_23906B0EC;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeEnablePrivacyModeButtonWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeEnablePrivacyModeButtonWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23906B214;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeEnablePrivacyModeButtonWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeLocalProgrammingFeaturesWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23906B2D0;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeLocalProgrammingFeaturesWithCompletion:v6];
}

- (void)subscribeAttributeLocalProgrammingFeaturesWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_23906B460;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeLocalProgrammingFeaturesWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeLocalProgrammingFeaturesWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23906B588;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeLocalProgrammingFeaturesWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeWrongCodeEntryLimitWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23906B644;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeWrongCodeEntryLimitWithCompletion:v6];
}

- (void)subscribeAttributeWrongCodeEntryLimitWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_23906B7D4;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeWrongCodeEntryLimitWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeWrongCodeEntryLimitWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23906B8FC;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeWrongCodeEntryLimitWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeUserCodeTemporaryDisableTimeWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23906B9B8;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeUserCodeTemporaryDisableTimeWithCompletion:v6];
}

- (void)subscribeAttributeUserCodeTemporaryDisableTimeWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_23906BB48;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeUserCodeTemporaryDisableTimeWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeUserCodeTemporaryDisableTimeWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23906BC70;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeUserCodeTemporaryDisableTimeWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeSendPINOverTheAirWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23906BD2C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeSendPINOverTheAirWithCompletion:v6];
}

- (void)subscribeAttributeSendPINOverTheAirWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_23906BEBC;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeSendPINOverTheAirWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeSendPINOverTheAirWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23906BFE4;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeSendPINOverTheAirWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRequirePINforRemoteOperationWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23906C0A0;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeRequirePINforRemoteOperationWithCompletion:v6];
}

- (void)subscribeAttributeRequirePINforRemoteOperationWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_23906C230;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeRequirePINforRemoteOperationWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRequirePINforRemoteOperationWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23906C358;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRequirePINforRemoteOperationWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeExpiringUserTimeoutWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23906C414;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeExpiringUserTimeoutWithCompletion:v6];
}

- (void)subscribeAttributeExpiringUserTimeoutWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_23906C5A4;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeExpiringUserTimeoutWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeExpiringUserTimeoutWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23906C6CC;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeExpiringUserTimeoutWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeGeneratedCommandListWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23906C788;
  v6[3] = &unk_278A73190;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeGeneratedCommandListWithCompletion:v6];
}

- (void)subscribeAttributeGeneratedCommandListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_23906C908;
  v19[3] = &unk_278A73190;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeGeneratedCommandListWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeGeneratedCommandListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23906CA30;
  v15[3] = &unk_278A73190;
  v14 = v12;
  v16 = v14;
  [self readAttributeGeneratedCommandListWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAcceptedCommandListWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23906CAEC;
  v6[3] = &unk_278A73190;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeAcceptedCommandListWithCompletion:v6];
}

- (void)subscribeAttributeAcceptedCommandListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_23906CC6C;
  v19[3] = &unk_278A73190;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeAcceptedCommandListWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAcceptedCommandListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23906CD94;
  v15[3] = &unk_278A73190;
  v14 = v12;
  v16 = v14;
  [self readAttributeAcceptedCommandListWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAttributeListWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23906CE50;
  v6[3] = &unk_278A73190;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeAttributeListWithCompletion:v6];
}

- (void)subscribeAttributeAttributeListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_23906CFD0;
  v19[3] = &unk_278A73190;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeAttributeListWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAttributeListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23906D0F8;
  v15[3] = &unk_278A73190;
  v14 = v12;
  v16 = v14;
  [self readAttributeAttributeListWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeFeatureMapWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23906D1B4;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeFeatureMapWithCompletion:v6];
}

- (void)subscribeAttributeFeatureMapWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_23906D334;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeFeatureMapWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeFeatureMapWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23906D45C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeFeatureMapWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeClusterRevisionWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23906D518;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterDoorLock *)self readAttributeClusterRevisionWithCompletion:v6];
}

- (void)subscribeAttributeClusterRevisionWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_23906D698;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterDoorLock *)self subscribeAttributeClusterRevisionWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeClusterRevisionWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23906D7C0;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeClusterRevisionWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

@end