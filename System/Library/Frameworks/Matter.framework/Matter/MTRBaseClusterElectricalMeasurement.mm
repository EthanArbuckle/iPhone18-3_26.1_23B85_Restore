@interface MTRBaseClusterElectricalMeasurement
+ (void)readAttributeAcActivePowerOverloadWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAcActivePowerOverloadWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeAcCurrentDivisorWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAcCurrentDivisorWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeAcCurrentMultiplierWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAcCurrentMultiplierWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeAcCurrentOverloadWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAcCurrentOverloadWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeAcFrequencyDivisorWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAcFrequencyDivisorWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeAcFrequencyMaxWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAcFrequencyMaxWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeAcFrequencyMinWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAcFrequencyMinWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeAcFrequencyMultiplierWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAcFrequencyMultiplierWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeAcFrequencyWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAcFrequencyWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeAcOverloadAlarmsMaskWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAcOverloadAlarmsMaskWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeAcPowerDivisorWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAcPowerDivisorWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeAcPowerMultiplierWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAcPowerMultiplierWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeAcReactivePowerOverloadWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAcReactivePowerOverloadWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeAcVoltageDivisorWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAcVoltageDivisorWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeAcVoltageMultiplierWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAcVoltageMultiplierWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeAcVoltageOverloadWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAcVoltageOverloadWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeAcceptedCommandListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAcceptedCommandListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeActiveCurrentPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeActiveCurrentPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeActiveCurrentPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeActiveCurrentPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeActivePowerMaxPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeActivePowerMaxPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeActivePowerMaxPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeActivePowerMaxPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeActivePowerMaxWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeActivePowerMaxWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeActivePowerMinPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeActivePowerMinPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeActivePowerMinPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeActivePowerMinPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeActivePowerMinWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeActivePowerMinWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeActivePowerPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeActivePowerPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeActivePowerPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeActivePowerPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeActivePowerWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeActivePowerWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeApparentPowerPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeApparentPowerPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeApparentPowerPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeApparentPowerPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeApparentPowerWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeApparentPowerWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeAttributeListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAttributeListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeAverageRmsOverVoltageCounterPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAverageRmsOverVoltageCounterPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeAverageRmsOverVoltageCounterPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAverageRmsOverVoltageCounterPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeAverageRmsOverVoltageWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAverageRmsOverVoltageWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeAverageRmsUnderVoltageCounterPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAverageRmsUnderVoltageCounterPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeAverageRmsUnderVoltageCounterPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAverageRmsUnderVoltageCounterPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeAverageRmsUnderVoltageCounterWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAverageRmsUnderVoltageCounterWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeAverageRmsUnderVoltageWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAverageRmsUnderVoltageWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeAverageRmsVoltageMeasurementPeriodPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAverageRmsVoltageMeasurementPeriodPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeAverageRmsVoltageMeasurementPeriodPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAverageRmsVoltageMeasurementPeriodPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeAverageRmsVoltageMeasurementPeriodWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAverageRmsVoltageMeasurementPeriodWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeClusterRevisionWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeClusterRevisionWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeCurrentOverloadWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeCurrentOverloadWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeDcCurrentDivisorWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeDcCurrentDivisorWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeDcCurrentMaxWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeDcCurrentMaxWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeDcCurrentMinWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeDcCurrentMinWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeDcCurrentMultiplierWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeDcCurrentMultiplierWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeDcCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeDcCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeDcPowerDivisorWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeDcPowerDivisorWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeDcPowerMaxWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeDcPowerMaxWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeDcPowerMinWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeDcPowerMinWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeDcPowerMultiplierWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeDcPowerMultiplierWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeDcPowerWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeDcPowerWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeDcVoltageDivisorWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeDcVoltageDivisorWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeDcVoltageMaxWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeDcVoltageMaxWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeDcVoltageMinWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeDcVoltageMinWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeDcVoltageMultiplierWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeDcVoltageMultiplierWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeDcVoltageWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeDcVoltageWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeFeatureMapWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeFeatureMapWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeGeneratedCommandListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeGeneratedCommandListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeHarmonicCurrentMultiplierWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeHarmonicCurrentMultiplierWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeInstantaneousActiveCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeInstantaneousActiveCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeInstantaneousLineCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeInstantaneousLineCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeInstantaneousPowerWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeInstantaneousPowerWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeInstantaneousReactiveCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeInstantaneousReactiveCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeInstantaneousVoltageWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeInstantaneousVoltageWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeLineCurrentPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeLineCurrentPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeLineCurrentPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeLineCurrentPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeMeasured11thHarmonicCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeMeasured11thHarmonicCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeMeasured1stHarmonicCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeMeasured1stHarmonicCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeMeasured3rdHarmonicCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeMeasured3rdHarmonicCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeMeasured5thHarmonicCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeMeasured5thHarmonicCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeMeasured7thHarmonicCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeMeasured7thHarmonicCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeMeasured9thHarmonicCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeMeasured9thHarmonicCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeMeasuredPhase11thHarmonicCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeMeasuredPhase11thHarmonicCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeMeasuredPhase1stHarmonicCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeMeasuredPhase1stHarmonicCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeMeasuredPhase3rdHarmonicCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeMeasuredPhase3rdHarmonicCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeMeasuredPhase5thHarmonicCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeMeasuredPhase5thHarmonicCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeMeasuredPhase7thHarmonicCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeMeasuredPhase7thHarmonicCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeMeasuredPhase9thHarmonicCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeMeasuredPhase9thHarmonicCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeMeasurementTypeWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeMeasurementTypeWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeNeutralCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeNeutralCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeOverloadAlarmsMaskWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeOverloadAlarmsMaskWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributePhaseHarmonicCurrentMultiplierWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributePhaseHarmonicCurrentMultiplierWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributePowerDivisorWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributePowerDivisorWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributePowerFactorPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributePowerFactorPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributePowerFactorPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributePowerFactorPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributePowerFactorWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributePowerFactorWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributePowerMultiplierWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributePowerMultiplierWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeReactiveCurrentPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeReactiveCurrentPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeReactiveCurrentPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeReactiveCurrentPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeReactivePowerPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeReactivePowerPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeReactivePowerPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeReactivePowerPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeReactivePowerWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeReactivePowerWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRmsCurrentMaxPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRmsCurrentMaxPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRmsCurrentMaxPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRmsCurrentMaxPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRmsCurrentMaxWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRmsCurrentMaxWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRmsCurrentMinPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRmsCurrentMinPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRmsCurrentMinPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRmsCurrentMinPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRmsCurrentMinWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRmsCurrentMinWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRmsCurrentPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRmsCurrentPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRmsCurrentPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRmsCurrentPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRmsCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRmsCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRmsExtremeOverVoltagePeriodPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRmsExtremeOverVoltagePeriodPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRmsExtremeOverVoltagePeriodPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRmsExtremeOverVoltagePeriodPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRmsExtremeOverVoltagePeriodWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRmsExtremeOverVoltagePeriodWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRmsExtremeOverVoltageWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRmsExtremeOverVoltageWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRmsExtremeUnderVoltagePeriodPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRmsExtremeUnderVoltagePeriodPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRmsExtremeUnderVoltagePeriodPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRmsExtremeUnderVoltagePeriodPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRmsExtremeUnderVoltagePeriodWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRmsExtremeUnderVoltagePeriodWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRmsExtremeUnderVoltageWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRmsExtremeUnderVoltageWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRmsVoltageMaxPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRmsVoltageMaxPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRmsVoltageMaxPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRmsVoltageMaxPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRmsVoltageMaxWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRmsVoltageMaxWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRmsVoltageMinPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRmsVoltageMinPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRmsVoltageMinPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRmsVoltageMinPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRmsVoltageMinWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRmsVoltageMinWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRmsVoltagePhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRmsVoltagePhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRmsVoltagePhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRmsVoltagePhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRmsVoltageSagPeriodPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRmsVoltageSagPeriodPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRmsVoltageSagPeriodPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRmsVoltageSagPeriodPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRmsVoltageSagPeriodWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRmsVoltageSagPeriodWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRmsVoltageSagWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRmsVoltageSagWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRmsVoltageSwellPeriodPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRmsVoltageSwellPeriodPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRmsVoltageSwellPeriodPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRmsVoltageSwellPeriodPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRmsVoltageSwellPeriodWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRmsVoltageSwellPeriodWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRmsVoltageSwellWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRmsVoltageSwellWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRmsVoltageWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRmsVoltageWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeTotalActivePowerWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeTotalActivePowerWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeTotalApparentPowerWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeTotalApparentPowerWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeTotalReactivePowerWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeTotalReactivePowerWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeVoltageOverloadWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeVoltageOverloadWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
- (void)getMeasurementProfileCommandWithParams:(MTRElectricalMeasurementClusterGetMeasurementProfileCommandParams *)params completion:(MTRStatusCompletion)completion;
- (void)getProfileInfoCommandWithParams:(MTRElectricalMeasurementClusterGetProfileInfoCommandParams *)params completion:(MTRStatusCompletion)completion;
- (void)readAttributeAcActivePowerOverloadWithCompletion:(void *)completion;
- (void)readAttributeAcActivePowerOverloadWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAcCurrentDivisorWithCompletion:(void *)completion;
- (void)readAttributeAcCurrentDivisorWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAcCurrentMultiplierWithCompletion:(void *)completion;
- (void)readAttributeAcCurrentMultiplierWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAcCurrentOverloadWithCompletion:(void *)completion;
- (void)readAttributeAcCurrentOverloadWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAcFrequencyDivisorWithCompletion:(void *)completion;
- (void)readAttributeAcFrequencyDivisorWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAcFrequencyMaxWithCompletion:(void *)completion;
- (void)readAttributeAcFrequencyMaxWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAcFrequencyMinWithCompletion:(void *)completion;
- (void)readAttributeAcFrequencyMinWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAcFrequencyMultiplierWithCompletion:(void *)completion;
- (void)readAttributeAcFrequencyMultiplierWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAcFrequencyWithCompletion:(void *)completion;
- (void)readAttributeAcFrequencyWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAcOverloadAlarmsMaskWithCompletion:(void *)completion;
- (void)readAttributeAcOverloadAlarmsMaskWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAcPowerDivisorWithCompletion:(void *)completion;
- (void)readAttributeAcPowerDivisorWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAcPowerMultiplierWithCompletion:(void *)completion;
- (void)readAttributeAcPowerMultiplierWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAcReactivePowerOverloadWithCompletion:(void *)completion;
- (void)readAttributeAcReactivePowerOverloadWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAcVoltageDivisorWithCompletion:(void *)completion;
- (void)readAttributeAcVoltageDivisorWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAcVoltageMultiplierWithCompletion:(void *)completion;
- (void)readAttributeAcVoltageMultiplierWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAcVoltageOverloadWithCompletion:(void *)completion;
- (void)readAttributeAcVoltageOverloadWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAcceptedCommandListWithCompletion:(void *)completion;
- (void)readAttributeAcceptedCommandListWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeActiveCurrentPhaseBWithCompletion:(void *)completion;
- (void)readAttributeActiveCurrentPhaseBWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeActiveCurrentPhaseCWithCompletion:(void *)completion;
- (void)readAttributeActiveCurrentPhaseCWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeActivePowerMaxPhaseBWithCompletion:(void *)completion;
- (void)readAttributeActivePowerMaxPhaseBWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeActivePowerMaxPhaseCWithCompletion:(void *)completion;
- (void)readAttributeActivePowerMaxPhaseCWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeActivePowerMaxWithCompletion:(void *)completion;
- (void)readAttributeActivePowerMaxWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeActivePowerMinPhaseBWithCompletion:(void *)completion;
- (void)readAttributeActivePowerMinPhaseBWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeActivePowerMinPhaseCWithCompletion:(void *)completion;
- (void)readAttributeActivePowerMinPhaseCWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeActivePowerMinWithCompletion:(void *)completion;
- (void)readAttributeActivePowerMinWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeActivePowerPhaseBWithCompletion:(void *)completion;
- (void)readAttributeActivePowerPhaseBWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeActivePowerPhaseCWithCompletion:(void *)completion;
- (void)readAttributeActivePowerPhaseCWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeActivePowerWithCompletion:(void *)completion;
- (void)readAttributeActivePowerWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeApparentPowerPhaseBWithCompletion:(void *)completion;
- (void)readAttributeApparentPowerPhaseBWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeApparentPowerPhaseCWithCompletion:(void *)completion;
- (void)readAttributeApparentPowerPhaseCWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeApparentPowerWithCompletion:(void *)completion;
- (void)readAttributeApparentPowerWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAttributeListWithCompletion:(void *)completion;
- (void)readAttributeAttributeListWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAverageRmsOverVoltageCounterPhaseBWithCompletion:(void *)completion;
- (void)readAttributeAverageRmsOverVoltageCounterPhaseBWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAverageRmsOverVoltageCounterPhaseCWithCompletion:(void *)completion;
- (void)readAttributeAverageRmsOverVoltageCounterPhaseCWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAverageRmsOverVoltageWithCompletion:(void *)completion;
- (void)readAttributeAverageRmsOverVoltageWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAverageRmsUnderVoltageCounterPhaseBWithCompletion:(void *)completion;
- (void)readAttributeAverageRmsUnderVoltageCounterPhaseBWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAverageRmsUnderVoltageCounterPhaseCWithCompletion:(void *)completion;
- (void)readAttributeAverageRmsUnderVoltageCounterPhaseCWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAverageRmsUnderVoltageCounterWithCompletion:(void *)completion;
- (void)readAttributeAverageRmsUnderVoltageCounterWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAverageRmsUnderVoltageWithCompletion:(void *)completion;
- (void)readAttributeAverageRmsUnderVoltageWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAverageRmsVoltageMeasurementPeriodPhaseBWithCompletion:(void *)completion;
- (void)readAttributeAverageRmsVoltageMeasurementPeriodPhaseBWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAverageRmsVoltageMeasurementPeriodPhaseCWithCompletion:(void *)completion;
- (void)readAttributeAverageRmsVoltageMeasurementPeriodPhaseCWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAverageRmsVoltageMeasurementPeriodWithCompletion:(void *)completion;
- (void)readAttributeAverageRmsVoltageMeasurementPeriodWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeClusterRevisionWithCompletion:(void *)completion;
- (void)readAttributeClusterRevisionWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeCurrentOverloadWithCompletion:(void *)completion;
- (void)readAttributeCurrentOverloadWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeDcCurrentDivisorWithCompletion:(void *)completion;
- (void)readAttributeDcCurrentDivisorWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeDcCurrentMaxWithCompletion:(void *)completion;
- (void)readAttributeDcCurrentMaxWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeDcCurrentMinWithCompletion:(void *)completion;
- (void)readAttributeDcCurrentMinWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeDcCurrentMultiplierWithCompletion:(void *)completion;
- (void)readAttributeDcCurrentMultiplierWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeDcCurrentWithCompletion:(void *)completion;
- (void)readAttributeDcCurrentWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeDcPowerDivisorWithCompletion:(void *)completion;
- (void)readAttributeDcPowerDivisorWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeDcPowerMaxWithCompletion:(void *)completion;
- (void)readAttributeDcPowerMaxWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeDcPowerMinWithCompletion:(void *)completion;
- (void)readAttributeDcPowerMinWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeDcPowerMultiplierWithCompletion:(void *)completion;
- (void)readAttributeDcPowerMultiplierWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeDcPowerWithCompletion:(void *)completion;
- (void)readAttributeDcPowerWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeDcVoltageDivisorWithCompletion:(void *)completion;
- (void)readAttributeDcVoltageDivisorWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeDcVoltageMaxWithCompletion:(void *)completion;
- (void)readAttributeDcVoltageMaxWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeDcVoltageMinWithCompletion:(void *)completion;
- (void)readAttributeDcVoltageMinWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeDcVoltageMultiplierWithCompletion:(void *)completion;
- (void)readAttributeDcVoltageMultiplierWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeDcVoltageWithCompletion:(void *)completion;
- (void)readAttributeDcVoltageWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeFeatureMapWithCompletion:(void *)completion;
- (void)readAttributeFeatureMapWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeGeneratedCommandListWithCompletion:(void *)completion;
- (void)readAttributeGeneratedCommandListWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeHarmonicCurrentMultiplierWithCompletion:(void *)completion;
- (void)readAttributeHarmonicCurrentMultiplierWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeInstantaneousActiveCurrentWithCompletion:(void *)completion;
- (void)readAttributeInstantaneousActiveCurrentWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeInstantaneousLineCurrentWithCompletion:(void *)completion;
- (void)readAttributeInstantaneousLineCurrentWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeInstantaneousPowerWithCompletion:(void *)completion;
- (void)readAttributeInstantaneousPowerWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeInstantaneousReactiveCurrentWithCompletion:(void *)completion;
- (void)readAttributeInstantaneousReactiveCurrentWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeInstantaneousVoltageWithCompletion:(void *)completion;
- (void)readAttributeInstantaneousVoltageWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeLineCurrentPhaseBWithCompletion:(void *)completion;
- (void)readAttributeLineCurrentPhaseBWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeLineCurrentPhaseCWithCompletion:(void *)completion;
- (void)readAttributeLineCurrentPhaseCWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeMeasured11thHarmonicCurrentWithCompletion:(void *)completion;
- (void)readAttributeMeasured11thHarmonicCurrentWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeMeasured1stHarmonicCurrentWithCompletion:(void *)completion;
- (void)readAttributeMeasured1stHarmonicCurrentWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeMeasured3rdHarmonicCurrentWithCompletion:(void *)completion;
- (void)readAttributeMeasured3rdHarmonicCurrentWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeMeasured5thHarmonicCurrentWithCompletion:(void *)completion;
- (void)readAttributeMeasured5thHarmonicCurrentWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeMeasured7thHarmonicCurrentWithCompletion:(void *)completion;
- (void)readAttributeMeasured7thHarmonicCurrentWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeMeasured9thHarmonicCurrentWithCompletion:(void *)completion;
- (void)readAttributeMeasured9thHarmonicCurrentWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeMeasuredPhase11thHarmonicCurrentWithCompletion:(void *)completion;
- (void)readAttributeMeasuredPhase11thHarmonicCurrentWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeMeasuredPhase1stHarmonicCurrentWithCompletion:(void *)completion;
- (void)readAttributeMeasuredPhase1stHarmonicCurrentWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeMeasuredPhase3rdHarmonicCurrentWithCompletion:(void *)completion;
- (void)readAttributeMeasuredPhase3rdHarmonicCurrentWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeMeasuredPhase5thHarmonicCurrentWithCompletion:(void *)completion;
- (void)readAttributeMeasuredPhase5thHarmonicCurrentWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeMeasuredPhase7thHarmonicCurrentWithCompletion:(void *)completion;
- (void)readAttributeMeasuredPhase7thHarmonicCurrentWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeMeasuredPhase9thHarmonicCurrentWithCompletion:(void *)completion;
- (void)readAttributeMeasuredPhase9thHarmonicCurrentWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeMeasurementTypeWithCompletion:(void *)completion;
- (void)readAttributeMeasurementTypeWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeNeutralCurrentWithCompletion:(void *)completion;
- (void)readAttributeNeutralCurrentWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeOverloadAlarmsMaskWithCompletion:(void *)completion;
- (void)readAttributeOverloadAlarmsMaskWithCompletionHandler:(void *)completionHandler;
- (void)readAttributePhaseHarmonicCurrentMultiplierWithCompletion:(void *)completion;
- (void)readAttributePhaseHarmonicCurrentMultiplierWithCompletionHandler:(void *)completionHandler;
- (void)readAttributePowerDivisorWithCompletion:(void *)completion;
- (void)readAttributePowerDivisorWithCompletionHandler:(void *)completionHandler;
- (void)readAttributePowerFactorPhaseBWithCompletion:(void *)completion;
- (void)readAttributePowerFactorPhaseBWithCompletionHandler:(void *)completionHandler;
- (void)readAttributePowerFactorPhaseCWithCompletion:(void *)completion;
- (void)readAttributePowerFactorPhaseCWithCompletionHandler:(void *)completionHandler;
- (void)readAttributePowerFactorWithCompletion:(void *)completion;
- (void)readAttributePowerFactorWithCompletionHandler:(void *)completionHandler;
- (void)readAttributePowerMultiplierWithCompletion:(void *)completion;
- (void)readAttributePowerMultiplierWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeReactiveCurrentPhaseBWithCompletion:(void *)completion;
- (void)readAttributeReactiveCurrentPhaseBWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeReactiveCurrentPhaseCWithCompletion:(void *)completion;
- (void)readAttributeReactiveCurrentPhaseCWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeReactivePowerPhaseBWithCompletion:(void *)completion;
- (void)readAttributeReactivePowerPhaseBWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeReactivePowerPhaseCWithCompletion:(void *)completion;
- (void)readAttributeReactivePowerPhaseCWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeReactivePowerWithCompletion:(void *)completion;
- (void)readAttributeReactivePowerWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRmsCurrentMaxPhaseBWithCompletion:(void *)completion;
- (void)readAttributeRmsCurrentMaxPhaseBWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRmsCurrentMaxPhaseCWithCompletion:(void *)completion;
- (void)readAttributeRmsCurrentMaxPhaseCWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRmsCurrentMaxWithCompletion:(void *)completion;
- (void)readAttributeRmsCurrentMaxWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRmsCurrentMinPhaseBWithCompletion:(void *)completion;
- (void)readAttributeRmsCurrentMinPhaseBWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRmsCurrentMinPhaseCWithCompletion:(void *)completion;
- (void)readAttributeRmsCurrentMinPhaseCWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRmsCurrentMinWithCompletion:(void *)completion;
- (void)readAttributeRmsCurrentMinWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRmsCurrentPhaseBWithCompletion:(void *)completion;
- (void)readAttributeRmsCurrentPhaseBWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRmsCurrentPhaseCWithCompletion:(void *)completion;
- (void)readAttributeRmsCurrentPhaseCWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRmsCurrentWithCompletion:(void *)completion;
- (void)readAttributeRmsCurrentWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRmsExtremeOverVoltagePeriodPhaseBWithCompletion:(void *)completion;
- (void)readAttributeRmsExtremeOverVoltagePeriodPhaseBWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRmsExtremeOverVoltagePeriodPhaseCWithCompletion:(void *)completion;
- (void)readAttributeRmsExtremeOverVoltagePeriodPhaseCWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRmsExtremeOverVoltagePeriodWithCompletion:(void *)completion;
- (void)readAttributeRmsExtremeOverVoltagePeriodWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRmsExtremeOverVoltageWithCompletion:(void *)completion;
- (void)readAttributeRmsExtremeOverVoltageWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRmsExtremeUnderVoltagePeriodPhaseBWithCompletion:(void *)completion;
- (void)readAttributeRmsExtremeUnderVoltagePeriodPhaseBWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRmsExtremeUnderVoltagePeriodPhaseCWithCompletion:(void *)completion;
- (void)readAttributeRmsExtremeUnderVoltagePeriodPhaseCWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRmsExtremeUnderVoltagePeriodWithCompletion:(void *)completion;
- (void)readAttributeRmsExtremeUnderVoltagePeriodWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRmsExtremeUnderVoltageWithCompletion:(void *)completion;
- (void)readAttributeRmsExtremeUnderVoltageWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRmsVoltageMaxPhaseBWithCompletion:(void *)completion;
- (void)readAttributeRmsVoltageMaxPhaseBWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRmsVoltageMaxPhaseCWithCompletion:(void *)completion;
- (void)readAttributeRmsVoltageMaxPhaseCWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRmsVoltageMaxWithCompletion:(void *)completion;
- (void)readAttributeRmsVoltageMaxWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRmsVoltageMinPhaseBWithCompletion:(void *)completion;
- (void)readAttributeRmsVoltageMinPhaseBWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRmsVoltageMinPhaseCWithCompletion:(void *)completion;
- (void)readAttributeRmsVoltageMinPhaseCWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRmsVoltageMinWithCompletion:(void *)completion;
- (void)readAttributeRmsVoltageMinWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRmsVoltagePhaseBWithCompletion:(void *)completion;
- (void)readAttributeRmsVoltagePhaseBWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRmsVoltagePhaseCWithCompletion:(void *)completion;
- (void)readAttributeRmsVoltagePhaseCWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRmsVoltageSagPeriodPhaseBWithCompletion:(void *)completion;
- (void)readAttributeRmsVoltageSagPeriodPhaseBWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRmsVoltageSagPeriodPhaseCWithCompletion:(void *)completion;
- (void)readAttributeRmsVoltageSagPeriodPhaseCWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRmsVoltageSagPeriodWithCompletion:(void *)completion;
- (void)readAttributeRmsVoltageSagPeriodWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRmsVoltageSagWithCompletion:(void *)completion;
- (void)readAttributeRmsVoltageSagWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRmsVoltageSwellPeriodPhaseBWithCompletion:(void *)completion;
- (void)readAttributeRmsVoltageSwellPeriodPhaseBWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRmsVoltageSwellPeriodPhaseCWithCompletion:(void *)completion;
- (void)readAttributeRmsVoltageSwellPeriodPhaseCWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRmsVoltageSwellPeriodWithCompletion:(void *)completion;
- (void)readAttributeRmsVoltageSwellPeriodWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRmsVoltageSwellWithCompletion:(void *)completion;
- (void)readAttributeRmsVoltageSwellWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRmsVoltageWithCompletion:(void *)completion;
- (void)readAttributeRmsVoltageWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeTotalActivePowerWithCompletion:(void *)completion;
- (void)readAttributeTotalActivePowerWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeTotalApparentPowerWithCompletion:(void *)completion;
- (void)readAttributeTotalApparentPowerWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeTotalReactivePowerWithCompletion:(void *)completion;
- (void)readAttributeTotalReactivePowerWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeVoltageOverloadWithCompletion:(void *)completion;
- (void)readAttributeVoltageOverloadWithCompletionHandler:(void *)completionHandler;
- (void)subscribeAttributeAcActivePowerOverloadWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcActivePowerOverloadWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcCurrentDivisorWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcCurrentDivisorWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcCurrentMultiplierWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcCurrentMultiplierWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcCurrentOverloadWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcCurrentOverloadWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcFrequencyDivisorWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcFrequencyDivisorWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcFrequencyMaxWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcFrequencyMaxWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcFrequencyMinWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcFrequencyMinWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcFrequencyMultiplierWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcFrequencyMultiplierWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcFrequencyWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcFrequencyWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcOverloadAlarmsMaskWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcOverloadAlarmsMaskWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcPowerDivisorWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcPowerDivisorWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcPowerMultiplierWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcPowerMultiplierWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcReactivePowerOverloadWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcReactivePowerOverloadWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcVoltageDivisorWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcVoltageDivisorWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcVoltageMultiplierWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcVoltageMultiplierWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcVoltageOverloadWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcVoltageOverloadWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcceptedCommandListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcceptedCommandListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeActiveCurrentPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeActiveCurrentPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeActiveCurrentPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeActiveCurrentPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeActivePowerMaxPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeActivePowerMaxPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeActivePowerMaxPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeActivePowerMaxPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeActivePowerMaxWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeActivePowerMaxWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeActivePowerMinPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeActivePowerMinPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeActivePowerMinPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeActivePowerMinPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeActivePowerMinWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeActivePowerMinWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeActivePowerPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeActivePowerPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeActivePowerPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeActivePowerPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeActivePowerWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeActivePowerWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeApparentPowerPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeApparentPowerPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeApparentPowerPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeApparentPowerPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeApparentPowerWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeApparentPowerWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAttributeListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAttributeListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAverageRmsOverVoltageCounterPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAverageRmsOverVoltageCounterPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAverageRmsOverVoltageCounterPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAverageRmsOverVoltageCounterPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAverageRmsOverVoltageWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAverageRmsOverVoltageWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAverageRmsUnderVoltageCounterPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAverageRmsUnderVoltageCounterPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAverageRmsUnderVoltageCounterPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAverageRmsUnderVoltageCounterPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAverageRmsUnderVoltageCounterWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAverageRmsUnderVoltageCounterWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAverageRmsUnderVoltageWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAverageRmsUnderVoltageWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAverageRmsVoltageMeasurementPeriodPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAverageRmsVoltageMeasurementPeriodPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAverageRmsVoltageMeasurementPeriodPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAverageRmsVoltageMeasurementPeriodPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAverageRmsVoltageMeasurementPeriodWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAverageRmsVoltageMeasurementPeriodWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeClusterRevisionWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeClusterRevisionWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeCurrentOverloadWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeCurrentOverloadWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDcCurrentDivisorWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDcCurrentDivisorWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDcCurrentMaxWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDcCurrentMaxWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDcCurrentMinWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDcCurrentMinWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDcCurrentMultiplierWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDcCurrentMultiplierWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDcCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDcCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDcPowerDivisorWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDcPowerDivisorWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDcPowerMaxWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDcPowerMaxWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDcPowerMinWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDcPowerMinWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDcPowerMultiplierWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDcPowerMultiplierWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDcPowerWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDcPowerWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDcVoltageDivisorWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDcVoltageDivisorWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDcVoltageMaxWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDcVoltageMaxWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDcVoltageMinWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDcVoltageMinWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDcVoltageMultiplierWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDcVoltageMultiplierWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDcVoltageWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDcVoltageWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeFeatureMapWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeFeatureMapWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeGeneratedCommandListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeGeneratedCommandListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeHarmonicCurrentMultiplierWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeHarmonicCurrentMultiplierWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeInstantaneousActiveCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeInstantaneousActiveCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeInstantaneousLineCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeInstantaneousLineCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeInstantaneousPowerWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeInstantaneousPowerWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeInstantaneousReactiveCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeInstantaneousReactiveCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeInstantaneousVoltageWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeInstantaneousVoltageWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeLineCurrentPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeLineCurrentPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeLineCurrentPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeLineCurrentPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMeasured11thHarmonicCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMeasured11thHarmonicCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMeasured1stHarmonicCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMeasured1stHarmonicCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMeasured3rdHarmonicCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMeasured3rdHarmonicCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMeasured5thHarmonicCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMeasured5thHarmonicCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMeasured7thHarmonicCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMeasured7thHarmonicCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMeasured9thHarmonicCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMeasured9thHarmonicCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMeasuredPhase11thHarmonicCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMeasuredPhase11thHarmonicCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMeasuredPhase1stHarmonicCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMeasuredPhase1stHarmonicCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMeasuredPhase3rdHarmonicCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMeasuredPhase3rdHarmonicCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMeasuredPhase5thHarmonicCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMeasuredPhase5thHarmonicCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMeasuredPhase7thHarmonicCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMeasuredPhase7thHarmonicCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMeasuredPhase9thHarmonicCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMeasuredPhase9thHarmonicCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMeasurementTypeWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeMeasurementTypeWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeNeutralCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeNeutralCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeOverloadAlarmsMaskWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeOverloadAlarmsMaskWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributePhaseHarmonicCurrentMultiplierWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributePhaseHarmonicCurrentMultiplierWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributePowerDivisorWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributePowerDivisorWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributePowerFactorPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributePowerFactorPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributePowerFactorPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributePowerFactorPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributePowerFactorWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributePowerFactorWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributePowerMultiplierWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributePowerMultiplierWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeReactiveCurrentPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeReactiveCurrentPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeReactiveCurrentPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeReactiveCurrentPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeReactivePowerPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeReactivePowerPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeReactivePowerPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeReactivePowerPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeReactivePowerWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeReactivePowerWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsCurrentMaxPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsCurrentMaxPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsCurrentMaxPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsCurrentMaxPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsCurrentMaxWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsCurrentMaxWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsCurrentMinPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsCurrentMinPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsCurrentMinPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsCurrentMinPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsCurrentMinWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsCurrentMinWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsCurrentPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsCurrentPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsCurrentPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsCurrentPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsExtremeOverVoltagePeriodPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsExtremeOverVoltagePeriodPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsExtremeOverVoltagePeriodPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsExtremeOverVoltagePeriodPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsExtremeOverVoltagePeriodWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsExtremeOverVoltagePeriodWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsExtremeOverVoltageWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsExtremeOverVoltageWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsExtremeUnderVoltagePeriodPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsExtremeUnderVoltagePeriodPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsExtremeUnderVoltagePeriodPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsExtremeUnderVoltagePeriodPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsExtremeUnderVoltagePeriodWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsExtremeUnderVoltagePeriodWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsExtremeUnderVoltageWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsExtremeUnderVoltageWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsVoltageMaxPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsVoltageMaxPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsVoltageMaxPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsVoltageMaxPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsVoltageMaxWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsVoltageMaxWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsVoltageMinPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsVoltageMinPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsVoltageMinPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsVoltageMinPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsVoltageMinWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsVoltageMinWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsVoltagePhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsVoltagePhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsVoltagePhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsVoltagePhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsVoltageSagPeriodPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsVoltageSagPeriodPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsVoltageSagPeriodPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsVoltageSagPeriodPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsVoltageSagPeriodWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsVoltageSagPeriodWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsVoltageSagWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsVoltageSagWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsVoltageSwellPeriodPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsVoltageSwellPeriodPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsVoltageSwellPeriodPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsVoltageSwellPeriodPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsVoltageSwellPeriodWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsVoltageSwellPeriodWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsVoltageSwellWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsVoltageSwellWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsVoltageWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRmsVoltageWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTotalActivePowerWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTotalActivePowerWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTotalApparentPowerWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTotalApparentPowerWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTotalReactivePowerWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeTotalReactivePowerWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeVoltageOverloadWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeVoltageOverloadWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)writeAttributeAcOverloadAlarmsMaskWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeAverageRmsUnderVoltageCounterWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeAverageRmsVoltageMeasurementPeriodWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeOverloadAlarmsMaskWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeRmsExtremeOverVoltagePeriodWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeRmsExtremeUnderVoltagePeriodWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeRmsVoltageSagPeriodWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeRmsVoltageSwellPeriodWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
@end

@implementation MTRBaseClusterElectricalMeasurement

- (void)getProfileInfoCommandWithParams:(MTRElectricalMeasurementClusterGetProfileInfoCommandParams *)params completion:(MTRStatusCompletion)completion
{
  v5 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239240298;
  block[3] = &unk_278A72B88;
  v9 = v5;
  v7 = v5;
  dispatch_async(callbackQueue, block);
}

- (void)getMeasurementProfileCommandWithParams:(MTRElectricalMeasurementClusterGetMeasurementProfileCommandParams *)params completion:(MTRStatusCompletion)completion
{
  v5 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392403DC;
  block[3] = &unk_278A72B88;
  v9 = v5;
  v7 = v5;
  dispatch_async(callbackQueue, block);
}

- (void)readAttributeMeasurementTypeWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239240520;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeMeasurementTypeWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239240668;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeMeasurementTypeWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239240788;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeDcVoltageWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392408D0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeDcVoltageWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239240A18;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeDcVoltageWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239240B38;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeDcVoltageMinWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239240C80;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeDcVoltageMinWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239240DC8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeDcVoltageMinWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239240EE8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeDcVoltageMaxWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239241030;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeDcVoltageMaxWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239241178;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeDcVoltageMaxWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239241298;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeDcCurrentWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392413E0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeDcCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239241528;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeDcCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239241648;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeDcCurrentMinWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239241790;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeDcCurrentMinWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392418D8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeDcCurrentMinWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392419F8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeDcCurrentMaxWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239241B40;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeDcCurrentMaxWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239241C88;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeDcCurrentMaxWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239241DA8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeDcPowerWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239241EF0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeDcPowerWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239242038;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeDcPowerWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239242158;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeDcPowerMinWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392422A0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeDcPowerMinWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392423E8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeDcPowerMinWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239242508;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeDcPowerMaxWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239242650;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeDcPowerMaxWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239242798;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeDcPowerMaxWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392428B8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeDcVoltageMultiplierWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239242A00;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeDcVoltageMultiplierWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239242B48;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeDcVoltageMultiplierWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239242C68;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeDcVoltageDivisorWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239242DB0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeDcVoltageDivisorWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239242EF8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeDcVoltageDivisorWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239243018;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeDcCurrentMultiplierWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239243160;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeDcCurrentMultiplierWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392432A8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeDcCurrentMultiplierWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392433C8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeDcCurrentDivisorWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239243510;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeDcCurrentDivisorWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239243658;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeDcCurrentDivisorWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239243778;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeDcPowerMultiplierWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392438C0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeDcPowerMultiplierWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239243A08;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeDcPowerMultiplierWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239243B28;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeDcPowerDivisorWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239243C70;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeDcPowerDivisorWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239243DB8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeDcPowerDivisorWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239243ED8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeAcFrequencyWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239244020;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeAcFrequencyWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239244168;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeAcFrequencyWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239244288;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeAcFrequencyMinWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392443D0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeAcFrequencyMinWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239244518;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeAcFrequencyMinWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239244638;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeAcFrequencyMaxWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239244780;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeAcFrequencyMaxWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392448C8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeAcFrequencyMaxWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392449E8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeNeutralCurrentWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239244B30;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeNeutralCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239244C78;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeNeutralCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239244D98;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeTotalActivePowerWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239244EE0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeTotalActivePowerWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239245028;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeTotalActivePowerWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239245148;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeTotalReactivePowerWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239245290;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeTotalReactivePowerWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392453D8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeTotalReactivePowerWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392454F8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeTotalApparentPowerWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239245640;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeTotalApparentPowerWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239245788;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeTotalApparentPowerWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392458A8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeMeasured1stHarmonicCurrentWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392459F0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeMeasured1stHarmonicCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239245B38;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeMeasured1stHarmonicCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239245C58;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeMeasured3rdHarmonicCurrentWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239245DA0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeMeasured3rdHarmonicCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239245EE8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeMeasured3rdHarmonicCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239246008;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeMeasured5thHarmonicCurrentWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239246150;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeMeasured5thHarmonicCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239246298;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeMeasured5thHarmonicCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392463B8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeMeasured7thHarmonicCurrentWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239246500;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeMeasured7thHarmonicCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239246648;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeMeasured7thHarmonicCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239246768;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeMeasured9thHarmonicCurrentWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392468B0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeMeasured9thHarmonicCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392469F8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeMeasured9thHarmonicCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239246B18;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeMeasured11thHarmonicCurrentWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239246C60;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeMeasured11thHarmonicCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239246DA8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeMeasured11thHarmonicCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239246EC8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeMeasuredPhase1stHarmonicCurrentWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239247010;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeMeasuredPhase1stHarmonicCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239247158;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeMeasuredPhase1stHarmonicCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239247278;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeMeasuredPhase3rdHarmonicCurrentWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392473C0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeMeasuredPhase3rdHarmonicCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239247508;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeMeasuredPhase3rdHarmonicCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239247628;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeMeasuredPhase5thHarmonicCurrentWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239247770;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeMeasuredPhase5thHarmonicCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392478B8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeMeasuredPhase5thHarmonicCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392479D8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeMeasuredPhase7thHarmonicCurrentWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239247B20;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeMeasuredPhase7thHarmonicCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239247C68;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeMeasuredPhase7thHarmonicCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239247D88;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeMeasuredPhase9thHarmonicCurrentWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239247ED0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeMeasuredPhase9thHarmonicCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239248018;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeMeasuredPhase9thHarmonicCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239248138;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeMeasuredPhase11thHarmonicCurrentWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239248280;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeMeasuredPhase11thHarmonicCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392483C8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeMeasuredPhase11thHarmonicCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392484E8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeAcFrequencyMultiplierWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239248630;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeAcFrequencyMultiplierWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239248778;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeAcFrequencyMultiplierWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239248898;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeAcFrequencyDivisorWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392489E0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeAcFrequencyDivisorWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239248B28;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeAcFrequencyDivisorWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239248C48;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributePowerMultiplierWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239248D90;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributePowerMultiplierWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239248ED8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributePowerMultiplierWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239248FF8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributePowerDivisorWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239249140;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributePowerDivisorWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239249288;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributePowerDivisorWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392493A8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeHarmonicCurrentMultiplierWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392494F0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeHarmonicCurrentMultiplierWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239249638;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeHarmonicCurrentMultiplierWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239249758;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributePhaseHarmonicCurrentMultiplierWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392498A0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributePhaseHarmonicCurrentMultiplierWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392499E8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributePhaseHarmonicCurrentMultiplierWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239249B08;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeInstantaneousVoltageWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239249C50;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeInstantaneousVoltageWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239249D98;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeInstantaneousVoltageWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239249EB8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeInstantaneousLineCurrentWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924A000;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeInstantaneousLineCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924A148;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeInstantaneousLineCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924A268;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeInstantaneousActiveCurrentWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924A3B0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeInstantaneousActiveCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924A4F8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeInstantaneousActiveCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924A618;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeInstantaneousReactiveCurrentWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924A760;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeInstantaneousReactiveCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924A8A8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeInstantaneousReactiveCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924A9C8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeInstantaneousPowerWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924AB10;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeInstantaneousPowerWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924AC58;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeInstantaneousPowerWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924AD78;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeRmsVoltageWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924AEC0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeRmsVoltageWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924B008;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeRmsVoltageWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924B128;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeRmsVoltageMinWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924B270;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeRmsVoltageMinWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924B3B8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeRmsVoltageMinWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924B4D8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeRmsVoltageMaxWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924B620;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeRmsVoltageMaxWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924B768;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeRmsVoltageMaxWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924B888;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeRmsCurrentWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924B9D0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeRmsCurrentWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924BB18;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeRmsCurrentWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924BC38;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeRmsCurrentMinWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924BD80;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeRmsCurrentMinWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924BEC8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeRmsCurrentMinWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924BFE8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeRmsCurrentMaxWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924C130;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeRmsCurrentMaxWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924C278;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeRmsCurrentMaxWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924C398;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeActivePowerWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924C4E0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeActivePowerWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924C628;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeActivePowerWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924C748;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeActivePowerMinWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924C890;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeActivePowerMinWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924C9D8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeActivePowerMinWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924CAF8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeActivePowerMaxWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924CC40;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeActivePowerMaxWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924CD88;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeActivePowerMaxWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924CEA8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeReactivePowerWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924CFF0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeReactivePowerWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924D138;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeReactivePowerWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924D258;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeApparentPowerWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924D3A0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeApparentPowerWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924D4E8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeApparentPowerWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924D608;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributePowerFactorWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924D750;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributePowerFactorWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924D898;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributePowerFactorWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924D9B8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeAverageRmsVoltageMeasurementPeriodWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924DB00;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeAverageRmsVoltageMeasurementPeriodWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924DC54;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeAverageRmsVoltageMeasurementPeriodWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924DD98;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeAverageRmsVoltageMeasurementPeriodWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924DEB8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeAverageRmsUnderVoltageCounterWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924E000;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeAverageRmsUnderVoltageCounterWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924E154;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeAverageRmsUnderVoltageCounterWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924E298;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeAverageRmsUnderVoltageCounterWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924E3B8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeRmsExtremeOverVoltagePeriodWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924E500;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeRmsExtremeOverVoltagePeriodWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924E654;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeRmsExtremeOverVoltagePeriodWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924E798;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeRmsExtremeOverVoltagePeriodWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924E8B8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeRmsExtremeUnderVoltagePeriodWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924EA00;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeRmsExtremeUnderVoltagePeriodWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924EB54;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeRmsExtremeUnderVoltagePeriodWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924EC98;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeRmsExtremeUnderVoltagePeriodWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924EDB8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeRmsVoltageSagPeriodWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924EF00;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeRmsVoltageSagPeriodWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924F054;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeRmsVoltageSagPeriodWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924F198;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeRmsVoltageSagPeriodWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924F2B8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeRmsVoltageSwellPeriodWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924F400;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeRmsVoltageSwellPeriodWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924F554;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeRmsVoltageSwellPeriodWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924F698;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeRmsVoltageSwellPeriodWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924F7B8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeAcVoltageMultiplierWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924F900;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeAcVoltageMultiplierWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924FA48;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeAcVoltageMultiplierWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924FB68;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeAcVoltageDivisorWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924FCB0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeAcVoltageDivisorWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924FDF8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeAcVoltageDivisorWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23924FF18;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeAcCurrentMultiplierWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239250060;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeAcCurrentMultiplierWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392501A8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeAcCurrentMultiplierWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392502C8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeAcCurrentDivisorWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239250410;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeAcCurrentDivisorWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239250558;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeAcCurrentDivisorWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239250678;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeAcPowerMultiplierWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392507C0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeAcPowerMultiplierWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239250908;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeAcPowerMultiplierWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239250A28;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeAcPowerDivisorWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239250B70;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeAcPowerDivisorWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239250CB8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeAcPowerDivisorWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239250DD8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeOverloadAlarmsMaskWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239250F20;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeOverloadAlarmsMaskWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239251074;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeOverloadAlarmsMaskWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392511B8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeOverloadAlarmsMaskWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392512D8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeVoltageOverloadWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239251420;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeVoltageOverloadWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239251568;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeVoltageOverloadWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239251688;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeCurrentOverloadWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392517D0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeCurrentOverloadWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239251918;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeCurrentOverloadWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239251A38;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeAcOverloadAlarmsMaskWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239251B80;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeAcOverloadAlarmsMaskWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239251CD4;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeAcOverloadAlarmsMaskWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239251E18;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeAcOverloadAlarmsMaskWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239251F38;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeAcVoltageOverloadWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239252080;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeAcVoltageOverloadWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392521C8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeAcVoltageOverloadWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392522E8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeAcCurrentOverloadWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239252430;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeAcCurrentOverloadWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239252578;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeAcCurrentOverloadWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239252698;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeAcActivePowerOverloadWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392527E0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeAcActivePowerOverloadWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239252928;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeAcActivePowerOverloadWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239252A48;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeAcReactivePowerOverloadWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239252B90;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeAcReactivePowerOverloadWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239252CD8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeAcReactivePowerOverloadWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239252DF8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeAverageRmsOverVoltageWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239252F40;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeAverageRmsOverVoltageWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239253088;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeAverageRmsOverVoltageWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392531A8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeAverageRmsUnderVoltageWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392532F0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeAverageRmsUnderVoltageWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239253438;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeAverageRmsUnderVoltageWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239253558;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeRmsExtremeOverVoltageWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392536A0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeRmsExtremeOverVoltageWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392537E8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeRmsExtremeOverVoltageWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239253908;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeRmsExtremeUnderVoltageWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239253A50;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeRmsExtremeUnderVoltageWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239253B98;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeRmsExtremeUnderVoltageWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239253CB8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeRmsVoltageSagWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239253E00;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeRmsVoltageSagWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239253F48;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeRmsVoltageSagWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239254068;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeRmsVoltageSwellWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392541B0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeRmsVoltageSwellWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392542F8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeRmsVoltageSwellWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239254418;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeLineCurrentPhaseBWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239254560;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeLineCurrentPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392546A8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeLineCurrentPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392547C8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeActiveCurrentPhaseBWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239254910;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeActiveCurrentPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239254A58;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeActiveCurrentPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239254B78;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeReactiveCurrentPhaseBWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239254CC0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeReactiveCurrentPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239254E08;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeReactiveCurrentPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239254F28;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeRmsVoltagePhaseBWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239255070;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeRmsVoltagePhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392551B8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeRmsVoltagePhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392552D8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeRmsVoltageMinPhaseBWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239255420;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeRmsVoltageMinPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239255568;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeRmsVoltageMinPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239255688;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeRmsVoltageMaxPhaseBWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392557D0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeRmsVoltageMaxPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239255918;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeRmsVoltageMaxPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239255A38;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeRmsCurrentPhaseBWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239255B80;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeRmsCurrentPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239255CC8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeRmsCurrentPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239255DE8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeRmsCurrentMinPhaseBWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239255F30;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeRmsCurrentMinPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239256078;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeRmsCurrentMinPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239256198;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeRmsCurrentMaxPhaseBWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392562E0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeRmsCurrentMaxPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239256428;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeRmsCurrentMaxPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239256548;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeActivePowerPhaseBWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239256690;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeActivePowerPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392567D8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeActivePowerPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392568F8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeActivePowerMinPhaseBWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239256A40;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeActivePowerMinPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239256B88;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeActivePowerMinPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239256CA8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeActivePowerMaxPhaseBWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239256DF0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeActivePowerMaxPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239256F38;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeActivePowerMaxPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239257058;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeReactivePowerPhaseBWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392571A0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeReactivePowerPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392572E8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeReactivePowerPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239257408;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeApparentPowerPhaseBWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239257550;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeApparentPowerPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239257698;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeApparentPowerPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392577B8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributePowerFactorPhaseBWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239257900;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributePowerFactorPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239257A48;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributePowerFactorPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239257B68;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeAverageRmsVoltageMeasurementPeriodPhaseBWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239257CB0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeAverageRmsVoltageMeasurementPeriodPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239257DF8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeAverageRmsVoltageMeasurementPeriodPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239257F18;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeAverageRmsOverVoltageCounterPhaseBWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239258060;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeAverageRmsOverVoltageCounterPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392581A8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeAverageRmsOverVoltageCounterPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392582C8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeAverageRmsUnderVoltageCounterPhaseBWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239258410;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeAverageRmsUnderVoltageCounterPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239258558;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeAverageRmsUnderVoltageCounterPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239258678;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeRmsExtremeOverVoltagePeriodPhaseBWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392587C0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeRmsExtremeOverVoltagePeriodPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239258908;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeRmsExtremeOverVoltagePeriodPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239258A28;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeRmsExtremeUnderVoltagePeriodPhaseBWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239258B70;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeRmsExtremeUnderVoltagePeriodPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239258CB8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeRmsExtremeUnderVoltagePeriodPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239258DD8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeRmsVoltageSagPeriodPhaseBWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239258F20;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeRmsVoltageSagPeriodPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239259068;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeRmsVoltageSagPeriodPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239259188;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeRmsVoltageSwellPeriodPhaseBWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392592D0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeRmsVoltageSwellPeriodPhaseBWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239259418;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeRmsVoltageSwellPeriodPhaseBWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239259538;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeLineCurrentPhaseCWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239259680;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeLineCurrentPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392597C8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeLineCurrentPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392598E8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeActiveCurrentPhaseCWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239259A30;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeActiveCurrentPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239259B78;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeActiveCurrentPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239259C98;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeReactiveCurrentPhaseCWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239259DE0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeReactiveCurrentPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239259F28;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeReactiveCurrentPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925A048;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeRmsVoltagePhaseCWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925A190;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeRmsVoltagePhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925A2D8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeRmsVoltagePhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925A3F8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeRmsVoltageMinPhaseCWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925A540;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeRmsVoltageMinPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925A688;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeRmsVoltageMinPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925A7A8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeRmsVoltageMaxPhaseCWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925A8F0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeRmsVoltageMaxPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925AA38;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeRmsVoltageMaxPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925AB58;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeRmsCurrentPhaseCWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925ACA0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeRmsCurrentPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925ADE8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeRmsCurrentPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925AF08;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeRmsCurrentMinPhaseCWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925B050;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeRmsCurrentMinPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925B198;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeRmsCurrentMinPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925B2B8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeRmsCurrentMaxPhaseCWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925B400;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeRmsCurrentMaxPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925B548;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeRmsCurrentMaxPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925B668;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeActivePowerPhaseCWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925B7B0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeActivePowerPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925B8F8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeActivePowerPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925BA18;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeActivePowerMinPhaseCWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925BB60;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeActivePowerMinPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925BCA8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeActivePowerMinPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925BDC8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeActivePowerMaxPhaseCWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925BF10;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeActivePowerMaxPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925C058;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeActivePowerMaxPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925C178;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeReactivePowerPhaseCWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925C2C0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeReactivePowerPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925C408;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeReactivePowerPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925C528;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeApparentPowerPhaseCWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925C670;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeApparentPowerPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925C7B8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeApparentPowerPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925C8D8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributePowerFactorPhaseCWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925CA20;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributePowerFactorPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925CB68;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributePowerFactorPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925CC88;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeAverageRmsVoltageMeasurementPeriodPhaseCWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925CDD0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeAverageRmsVoltageMeasurementPeriodPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925CF18;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeAverageRmsVoltageMeasurementPeriodPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925D038;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeAverageRmsOverVoltageCounterPhaseCWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925D180;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeAverageRmsOverVoltageCounterPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925D2C8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeAverageRmsOverVoltageCounterPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925D3E8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeAverageRmsUnderVoltageCounterPhaseCWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925D530;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeAverageRmsUnderVoltageCounterPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925D678;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeAverageRmsUnderVoltageCounterPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925D798;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeRmsExtremeOverVoltagePeriodPhaseCWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925D8E0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeRmsExtremeOverVoltagePeriodPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925DA28;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeRmsExtremeOverVoltagePeriodPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925DB48;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeRmsExtremeUnderVoltagePeriodPhaseCWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925DC90;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeRmsExtremeUnderVoltagePeriodPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925DDD8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeRmsExtremeUnderVoltagePeriodPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925DEF8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeRmsVoltageSagPeriodPhaseCWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925E040;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeRmsVoltageSagPeriodPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925E188;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeRmsVoltageSagPeriodPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925E2A8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeRmsVoltageSwellPeriodPhaseCWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925E3F0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeRmsVoltageSwellPeriodPhaseCWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925E538;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeRmsVoltageSwellPeriodPhaseCWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925E658;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeGeneratedCommandListWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925E7A0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeGeneratedCommandListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925E8E8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeGeneratedCommandListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925EA08;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeAcceptedCommandListWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925EB50;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeAcceptedCommandListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925EC98;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeAcceptedCommandListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925EDB8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeAttributeListWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925EF00;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeAttributeListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925F048;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeAttributeListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925F168;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeFeatureMapWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925F2B0;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeFeatureMapWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925F3F8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeFeatureMapWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925F518;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeClusterRevisionWithCompletion:(void *)completion
{
  v4 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925F660;
  block[3] = &unk_278A72B88;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, block);
}

- (void)subscribeAttributeClusterRevisionWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v6 = reportHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925F7A8;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

+ (void)readAttributeClusterRevisionWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v7 = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23925F8C8;
  block[3] = &unk_278A72B88;
  v10 = v7;
  v8 = v7;
  dispatch_async(queue, block);
}

- (void)readAttributeMeasurementTypeWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23925FA14;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeMeasurementTypeWithCompletion:v6];
}

- (void)subscribeAttributeMeasurementTypeWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23925FB94;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeMeasurementTypeWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeMeasurementTypeWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23925FCBC;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeMeasurementTypeWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeDcVoltageWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23925FD78;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeDcVoltageWithCompletion:v6];
}

- (void)subscribeAttributeDcVoltageWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23925FEF8;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeDcVoltageWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeDcVoltageWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239260020;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeDcVoltageWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeDcVoltageMinWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2392600DC;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeDcVoltageMinWithCompletion:v6];
}

- (void)subscribeAttributeDcVoltageMinWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23926025C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeDcVoltageMinWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeDcVoltageMinWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239260384;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeDcVoltageMinWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeDcVoltageMaxWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239260440;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeDcVoltageMaxWithCompletion:v6];
}

- (void)subscribeAttributeDcVoltageMaxWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2392605C0;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeDcVoltageMaxWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeDcVoltageMaxWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2392606E8;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeDcVoltageMaxWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeDcCurrentWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2392607A4;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeDcCurrentWithCompletion:v6];
}

- (void)subscribeAttributeDcCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239260924;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeDcCurrentWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeDcCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239260A4C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeDcCurrentWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeDcCurrentMinWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239260B08;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeDcCurrentMinWithCompletion:v6];
}

- (void)subscribeAttributeDcCurrentMinWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239260C88;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeDcCurrentMinWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeDcCurrentMinWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239260DB0;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeDcCurrentMinWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeDcCurrentMaxWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239260E6C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeDcCurrentMaxWithCompletion:v6];
}

- (void)subscribeAttributeDcCurrentMaxWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239260FEC;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeDcCurrentMaxWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeDcCurrentMaxWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239261114;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeDcCurrentMaxWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeDcPowerWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2392611D0;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeDcPowerWithCompletion:v6];
}

- (void)subscribeAttributeDcPowerWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239261350;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeDcPowerWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeDcPowerWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239261478;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeDcPowerWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeDcPowerMinWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239261534;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeDcPowerMinWithCompletion:v6];
}

- (void)subscribeAttributeDcPowerMinWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2392616B4;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeDcPowerMinWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeDcPowerMinWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2392617DC;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeDcPowerMinWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeDcPowerMaxWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239261898;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeDcPowerMaxWithCompletion:v6];
}

- (void)subscribeAttributeDcPowerMaxWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239261A18;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeDcPowerMaxWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeDcPowerMaxWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239261B40;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeDcPowerMaxWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeDcVoltageMultiplierWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239261BFC;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeDcVoltageMultiplierWithCompletion:v6];
}

- (void)subscribeAttributeDcVoltageMultiplierWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239261D7C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeDcVoltageMultiplierWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeDcVoltageMultiplierWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239261EA4;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeDcVoltageMultiplierWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeDcVoltageDivisorWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239261F60;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeDcVoltageDivisorWithCompletion:v6];
}

- (void)subscribeAttributeDcVoltageDivisorWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2392620E0;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeDcVoltageDivisorWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeDcVoltageDivisorWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239262208;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeDcVoltageDivisorWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeDcCurrentMultiplierWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2392622C4;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeDcCurrentMultiplierWithCompletion:v6];
}

- (void)subscribeAttributeDcCurrentMultiplierWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239262444;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeDcCurrentMultiplierWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeDcCurrentMultiplierWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23926256C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeDcCurrentMultiplierWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeDcCurrentDivisorWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239262628;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeDcCurrentDivisorWithCompletion:v6];
}

- (void)subscribeAttributeDcCurrentDivisorWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2392627A8;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeDcCurrentDivisorWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeDcCurrentDivisorWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2392628D0;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeDcCurrentDivisorWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeDcPowerMultiplierWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23926298C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeDcPowerMultiplierWithCompletion:v6];
}

- (void)subscribeAttributeDcPowerMultiplierWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239262B0C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeDcPowerMultiplierWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeDcPowerMultiplierWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239262C34;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeDcPowerMultiplierWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeDcPowerDivisorWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239262CF0;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeDcPowerDivisorWithCompletion:v6];
}

- (void)subscribeAttributeDcPowerDivisorWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239262E70;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeDcPowerDivisorWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeDcPowerDivisorWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239262F98;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeDcPowerDivisorWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAcFrequencyWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239263054;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeAcFrequencyWithCompletion:v6];
}

- (void)subscribeAttributeAcFrequencyWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2392631D4;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeAcFrequencyWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAcFrequencyWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2392632FC;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeAcFrequencyWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAcFrequencyMinWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2392633B8;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeAcFrequencyMinWithCompletion:v6];
}

- (void)subscribeAttributeAcFrequencyMinWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239263538;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeAcFrequencyMinWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAcFrequencyMinWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239263660;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeAcFrequencyMinWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAcFrequencyMaxWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23926371C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeAcFrequencyMaxWithCompletion:v6];
}

- (void)subscribeAttributeAcFrequencyMaxWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23926389C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeAcFrequencyMaxWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAcFrequencyMaxWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2392639C4;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeAcFrequencyMaxWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeNeutralCurrentWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239263A80;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeNeutralCurrentWithCompletion:v6];
}

- (void)subscribeAttributeNeutralCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239263C00;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeNeutralCurrentWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeNeutralCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239263D28;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeNeutralCurrentWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeTotalActivePowerWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239263DE4;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeTotalActivePowerWithCompletion:v6];
}

- (void)subscribeAttributeTotalActivePowerWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239263F64;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeTotalActivePowerWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeTotalActivePowerWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23926408C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeTotalActivePowerWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeTotalReactivePowerWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239264148;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeTotalReactivePowerWithCompletion:v6];
}

- (void)subscribeAttributeTotalReactivePowerWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2392642C8;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeTotalReactivePowerWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeTotalReactivePowerWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2392643F0;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeTotalReactivePowerWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeTotalApparentPowerWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2392644AC;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeTotalApparentPowerWithCompletion:v6];
}

- (void)subscribeAttributeTotalApparentPowerWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23926462C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeTotalApparentPowerWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeTotalApparentPowerWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239264754;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeTotalApparentPowerWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeMeasured1stHarmonicCurrentWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239264810;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeMeasured1stHarmonicCurrentWithCompletion:v6];
}

- (void)subscribeAttributeMeasured1stHarmonicCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239264990;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeMeasured1stHarmonicCurrentWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeMeasured1stHarmonicCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239264AB8;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeMeasured1stHarmonicCurrentWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeMeasured3rdHarmonicCurrentWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239264B74;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeMeasured3rdHarmonicCurrentWithCompletion:v6];
}

- (void)subscribeAttributeMeasured3rdHarmonicCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239264CF4;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeMeasured3rdHarmonicCurrentWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeMeasured3rdHarmonicCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239264E1C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeMeasured3rdHarmonicCurrentWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeMeasured5thHarmonicCurrentWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239264ED8;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeMeasured5thHarmonicCurrentWithCompletion:v6];
}

- (void)subscribeAttributeMeasured5thHarmonicCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239265058;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeMeasured5thHarmonicCurrentWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeMeasured5thHarmonicCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239265180;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeMeasured5thHarmonicCurrentWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeMeasured7thHarmonicCurrentWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23926523C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeMeasured7thHarmonicCurrentWithCompletion:v6];
}

- (void)subscribeAttributeMeasured7thHarmonicCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2392653BC;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeMeasured7thHarmonicCurrentWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeMeasured7thHarmonicCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2392654E4;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeMeasured7thHarmonicCurrentWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeMeasured9thHarmonicCurrentWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2392655A0;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeMeasured9thHarmonicCurrentWithCompletion:v6];
}

- (void)subscribeAttributeMeasured9thHarmonicCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239265720;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeMeasured9thHarmonicCurrentWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeMeasured9thHarmonicCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239265848;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeMeasured9thHarmonicCurrentWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeMeasured11thHarmonicCurrentWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239265904;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeMeasured11thHarmonicCurrentWithCompletion:v6];
}

- (void)subscribeAttributeMeasured11thHarmonicCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239265A84;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeMeasured11thHarmonicCurrentWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeMeasured11thHarmonicCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239265BAC;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeMeasured11thHarmonicCurrentWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeMeasuredPhase1stHarmonicCurrentWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239265C68;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeMeasuredPhase1stHarmonicCurrentWithCompletion:v6];
}

- (void)subscribeAttributeMeasuredPhase1stHarmonicCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239265DE8;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeMeasuredPhase1stHarmonicCurrentWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeMeasuredPhase1stHarmonicCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239265F10;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeMeasuredPhase1stHarmonicCurrentWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeMeasuredPhase3rdHarmonicCurrentWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239265FCC;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeMeasuredPhase3rdHarmonicCurrentWithCompletion:v6];
}

- (void)subscribeAttributeMeasuredPhase3rdHarmonicCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23926614C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeMeasuredPhase3rdHarmonicCurrentWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeMeasuredPhase3rdHarmonicCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239266274;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeMeasuredPhase3rdHarmonicCurrentWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeMeasuredPhase5thHarmonicCurrentWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239266330;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeMeasuredPhase5thHarmonicCurrentWithCompletion:v6];
}

- (void)subscribeAttributeMeasuredPhase5thHarmonicCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2392664B0;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeMeasuredPhase5thHarmonicCurrentWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeMeasuredPhase5thHarmonicCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2392665D8;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeMeasuredPhase5thHarmonicCurrentWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeMeasuredPhase7thHarmonicCurrentWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239266694;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeMeasuredPhase7thHarmonicCurrentWithCompletion:v6];
}

- (void)subscribeAttributeMeasuredPhase7thHarmonicCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239266814;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeMeasuredPhase7thHarmonicCurrentWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeMeasuredPhase7thHarmonicCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23926693C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeMeasuredPhase7thHarmonicCurrentWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeMeasuredPhase9thHarmonicCurrentWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2392669F8;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeMeasuredPhase9thHarmonicCurrentWithCompletion:v6];
}

- (void)subscribeAttributeMeasuredPhase9thHarmonicCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239266B78;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeMeasuredPhase9thHarmonicCurrentWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeMeasuredPhase9thHarmonicCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239266CA0;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeMeasuredPhase9thHarmonicCurrentWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeMeasuredPhase11thHarmonicCurrentWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239266D5C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeMeasuredPhase11thHarmonicCurrentWithCompletion:v6];
}

- (void)subscribeAttributeMeasuredPhase11thHarmonicCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239266EDC;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeMeasuredPhase11thHarmonicCurrentWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeMeasuredPhase11thHarmonicCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239267004;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeMeasuredPhase11thHarmonicCurrentWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAcFrequencyMultiplierWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2392670C0;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeAcFrequencyMultiplierWithCompletion:v6];
}

- (void)subscribeAttributeAcFrequencyMultiplierWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239267240;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeAcFrequencyMultiplierWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAcFrequencyMultiplierWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239267368;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeAcFrequencyMultiplierWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAcFrequencyDivisorWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239267424;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeAcFrequencyDivisorWithCompletion:v6];
}

- (void)subscribeAttributeAcFrequencyDivisorWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2392675A4;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeAcFrequencyDivisorWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAcFrequencyDivisorWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2392676CC;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeAcFrequencyDivisorWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributePowerMultiplierWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239267788;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributePowerMultiplierWithCompletion:v6];
}

- (void)subscribeAttributePowerMultiplierWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239267908;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributePowerMultiplierWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributePowerMultiplierWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239267A30;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributePowerMultiplierWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributePowerDivisorWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239267AEC;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributePowerDivisorWithCompletion:v6];
}

- (void)subscribeAttributePowerDivisorWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239267C6C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributePowerDivisorWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributePowerDivisorWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239267D94;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributePowerDivisorWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeHarmonicCurrentMultiplierWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239267E50;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeHarmonicCurrentMultiplierWithCompletion:v6];
}

- (void)subscribeAttributeHarmonicCurrentMultiplierWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239267FD0;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeHarmonicCurrentMultiplierWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeHarmonicCurrentMultiplierWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2392680F8;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeHarmonicCurrentMultiplierWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributePhaseHarmonicCurrentMultiplierWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2392681B4;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributePhaseHarmonicCurrentMultiplierWithCompletion:v6];
}

- (void)subscribeAttributePhaseHarmonicCurrentMultiplierWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239268334;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributePhaseHarmonicCurrentMultiplierWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributePhaseHarmonicCurrentMultiplierWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23926845C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributePhaseHarmonicCurrentMultiplierWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeInstantaneousVoltageWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239268518;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeInstantaneousVoltageWithCompletion:v6];
}

- (void)subscribeAttributeInstantaneousVoltageWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239268698;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeInstantaneousVoltageWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeInstantaneousVoltageWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2392687C0;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeInstantaneousVoltageWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeInstantaneousLineCurrentWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23926887C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeInstantaneousLineCurrentWithCompletion:v6];
}

- (void)subscribeAttributeInstantaneousLineCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2392689FC;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeInstantaneousLineCurrentWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeInstantaneousLineCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239268B24;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeInstantaneousLineCurrentWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeInstantaneousActiveCurrentWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239268BE0;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeInstantaneousActiveCurrentWithCompletion:v6];
}

- (void)subscribeAttributeInstantaneousActiveCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239268D60;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeInstantaneousActiveCurrentWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeInstantaneousActiveCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239268E88;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeInstantaneousActiveCurrentWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeInstantaneousReactiveCurrentWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239268F44;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeInstantaneousReactiveCurrentWithCompletion:v6];
}

- (void)subscribeAttributeInstantaneousReactiveCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2392690C4;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeInstantaneousReactiveCurrentWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeInstantaneousReactiveCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2392691EC;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeInstantaneousReactiveCurrentWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeInstantaneousPowerWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2392692A8;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeInstantaneousPowerWithCompletion:v6];
}

- (void)subscribeAttributeInstantaneousPowerWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239269428;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeInstantaneousPowerWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeInstantaneousPowerWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239269550;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeInstantaneousPowerWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRmsVoltageWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23926960C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeRmsVoltageWithCompletion:v6];
}

- (void)subscribeAttributeRmsVoltageWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23926978C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeRmsVoltageWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRmsVoltageWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2392698B4;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRmsVoltageWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRmsVoltageMinWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239269970;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeRmsVoltageMinWithCompletion:v6];
}

- (void)subscribeAttributeRmsVoltageMinWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239269AF0;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeRmsVoltageMinWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRmsVoltageMinWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239269C18;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRmsVoltageMinWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRmsVoltageMaxWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239269CD4;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeRmsVoltageMaxWithCompletion:v6];
}

- (void)subscribeAttributeRmsVoltageMaxWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239269E54;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeRmsVoltageMaxWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRmsVoltageMaxWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239269F7C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRmsVoltageMaxWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRmsCurrentWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23926A038;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeRmsCurrentWithCompletion:v6];
}

- (void)subscribeAttributeRmsCurrentWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23926A1B8;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeRmsCurrentWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRmsCurrentWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23926A2E0;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRmsCurrentWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRmsCurrentMinWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23926A39C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeRmsCurrentMinWithCompletion:v6];
}

- (void)subscribeAttributeRmsCurrentMinWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23926A51C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeRmsCurrentMinWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRmsCurrentMinWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23926A644;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRmsCurrentMinWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRmsCurrentMaxWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23926A700;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeRmsCurrentMaxWithCompletion:v6];
}

- (void)subscribeAttributeRmsCurrentMaxWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23926A880;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeRmsCurrentMaxWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRmsCurrentMaxWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23926A9A8;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRmsCurrentMaxWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeActivePowerWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23926AA64;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeActivePowerWithCompletion:v6];
}

- (void)subscribeAttributeActivePowerWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23926ABE4;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeActivePowerWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeActivePowerWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23926AD0C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeActivePowerWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeActivePowerMinWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23926ADC8;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeActivePowerMinWithCompletion:v6];
}

- (void)subscribeAttributeActivePowerMinWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23926AF48;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeActivePowerMinWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeActivePowerMinWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23926B070;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeActivePowerMinWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeActivePowerMaxWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23926B12C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeActivePowerMaxWithCompletion:v6];
}

- (void)subscribeAttributeActivePowerMaxWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23926B2AC;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeActivePowerMaxWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeActivePowerMaxWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23926B3D4;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeActivePowerMaxWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeReactivePowerWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23926B490;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeReactivePowerWithCompletion:v6];
}

- (void)subscribeAttributeReactivePowerWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23926B610;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeReactivePowerWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeReactivePowerWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23926B738;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeReactivePowerWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeApparentPowerWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23926B7F4;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeApparentPowerWithCompletion:v6];
}

- (void)subscribeAttributeApparentPowerWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23926B974;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeApparentPowerWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeApparentPowerWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23926BA9C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeApparentPowerWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributePowerFactorWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23926BB58;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributePowerFactorWithCompletion:v6];
}

- (void)subscribeAttributePowerFactorWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23926BCD8;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributePowerFactorWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributePowerFactorWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23926BE00;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributePowerFactorWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAverageRmsVoltageMeasurementPeriodWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23926BEBC;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeAverageRmsVoltageMeasurementPeriodWithCompletion:v6];
}

- (void)subscribeAttributeAverageRmsVoltageMeasurementPeriodWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23926C04C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeAverageRmsVoltageMeasurementPeriodWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAverageRmsVoltageMeasurementPeriodWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23926C174;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeAverageRmsVoltageMeasurementPeriodWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAverageRmsUnderVoltageCounterWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23926C230;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeAverageRmsUnderVoltageCounterWithCompletion:v6];
}

- (void)subscribeAttributeAverageRmsUnderVoltageCounterWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23926C3C0;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeAverageRmsUnderVoltageCounterWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAverageRmsUnderVoltageCounterWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23926C4E8;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeAverageRmsUnderVoltageCounterWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRmsExtremeOverVoltagePeriodWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23926C5A4;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeRmsExtremeOverVoltagePeriodWithCompletion:v6];
}

- (void)subscribeAttributeRmsExtremeOverVoltagePeriodWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23926C734;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeRmsExtremeOverVoltagePeriodWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRmsExtremeOverVoltagePeriodWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23926C85C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRmsExtremeOverVoltagePeriodWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRmsExtremeUnderVoltagePeriodWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23926C918;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeRmsExtremeUnderVoltagePeriodWithCompletion:v6];
}

- (void)subscribeAttributeRmsExtremeUnderVoltagePeriodWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23926CAA8;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeRmsExtremeUnderVoltagePeriodWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRmsExtremeUnderVoltagePeriodWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23926CBD0;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRmsExtremeUnderVoltagePeriodWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRmsVoltageSagPeriodWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23926CC8C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeRmsVoltageSagPeriodWithCompletion:v6];
}

- (void)subscribeAttributeRmsVoltageSagPeriodWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23926CE1C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeRmsVoltageSagPeriodWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRmsVoltageSagPeriodWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23926CF44;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRmsVoltageSagPeriodWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRmsVoltageSwellPeriodWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23926D000;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeRmsVoltageSwellPeriodWithCompletion:v6];
}

- (void)subscribeAttributeRmsVoltageSwellPeriodWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23926D190;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeRmsVoltageSwellPeriodWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRmsVoltageSwellPeriodWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23926D2B8;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRmsVoltageSwellPeriodWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAcVoltageMultiplierWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23926D374;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeAcVoltageMultiplierWithCompletion:v6];
}

- (void)subscribeAttributeAcVoltageMultiplierWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23926D4F4;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeAcVoltageMultiplierWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAcVoltageMultiplierWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23926D61C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeAcVoltageMultiplierWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAcVoltageDivisorWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23926D6D8;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeAcVoltageDivisorWithCompletion:v6];
}

- (void)subscribeAttributeAcVoltageDivisorWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23926D858;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeAcVoltageDivisorWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAcVoltageDivisorWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23926D980;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeAcVoltageDivisorWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAcCurrentMultiplierWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23926DA3C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeAcCurrentMultiplierWithCompletion:v6];
}

- (void)subscribeAttributeAcCurrentMultiplierWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23926DBBC;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeAcCurrentMultiplierWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAcCurrentMultiplierWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23926DCE4;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeAcCurrentMultiplierWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAcCurrentDivisorWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23926DDA0;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeAcCurrentDivisorWithCompletion:v6];
}

- (void)subscribeAttributeAcCurrentDivisorWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23926DF20;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeAcCurrentDivisorWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAcCurrentDivisorWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23926E048;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeAcCurrentDivisorWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAcPowerMultiplierWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23926E104;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeAcPowerMultiplierWithCompletion:v6];
}

- (void)subscribeAttributeAcPowerMultiplierWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23926E284;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeAcPowerMultiplierWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAcPowerMultiplierWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23926E3AC;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeAcPowerMultiplierWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAcPowerDivisorWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23926E468;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeAcPowerDivisorWithCompletion:v6];
}

- (void)subscribeAttributeAcPowerDivisorWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23926E5E8;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeAcPowerDivisorWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAcPowerDivisorWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23926E710;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeAcPowerDivisorWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeOverloadAlarmsMaskWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23926E7CC;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeOverloadAlarmsMaskWithCompletion:v6];
}

- (void)subscribeAttributeOverloadAlarmsMaskWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23926E95C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeOverloadAlarmsMaskWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeOverloadAlarmsMaskWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23926EA84;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeOverloadAlarmsMaskWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeVoltageOverloadWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23926EB40;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeVoltageOverloadWithCompletion:v6];
}

- (void)subscribeAttributeVoltageOverloadWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23926ECC0;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeVoltageOverloadWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeVoltageOverloadWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23926EDE8;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeVoltageOverloadWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeCurrentOverloadWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23926EEA4;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeCurrentOverloadWithCompletion:v6];
}

- (void)subscribeAttributeCurrentOverloadWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23926F024;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeCurrentOverloadWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeCurrentOverloadWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23926F14C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeCurrentOverloadWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAcOverloadAlarmsMaskWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23926F208;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeAcOverloadAlarmsMaskWithCompletion:v6];
}

- (void)subscribeAttributeAcOverloadAlarmsMaskWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23926F398;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeAcOverloadAlarmsMaskWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAcOverloadAlarmsMaskWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23926F4C0;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeAcOverloadAlarmsMaskWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAcVoltageOverloadWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23926F57C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeAcVoltageOverloadWithCompletion:v6];
}

- (void)subscribeAttributeAcVoltageOverloadWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23926F6FC;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeAcVoltageOverloadWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAcVoltageOverloadWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23926F824;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeAcVoltageOverloadWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAcCurrentOverloadWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23926F8E0;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeAcCurrentOverloadWithCompletion:v6];
}

- (void)subscribeAttributeAcCurrentOverloadWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23926FA60;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeAcCurrentOverloadWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAcCurrentOverloadWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23926FB88;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeAcCurrentOverloadWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAcActivePowerOverloadWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23926FC44;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeAcActivePowerOverloadWithCompletion:v6];
}

- (void)subscribeAttributeAcActivePowerOverloadWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23926FDC4;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeAcActivePowerOverloadWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAcActivePowerOverloadWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23926FEEC;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeAcActivePowerOverloadWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAcReactivePowerOverloadWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23926FFA8;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeAcReactivePowerOverloadWithCompletion:v6];
}

- (void)subscribeAttributeAcReactivePowerOverloadWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239270128;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeAcReactivePowerOverloadWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAcReactivePowerOverloadWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239270250;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeAcReactivePowerOverloadWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAverageRmsOverVoltageWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23927030C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeAverageRmsOverVoltageWithCompletion:v6];
}

- (void)subscribeAttributeAverageRmsOverVoltageWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23927048C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeAverageRmsOverVoltageWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAverageRmsOverVoltageWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2392705B4;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeAverageRmsOverVoltageWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAverageRmsUnderVoltageWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239270670;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeAverageRmsUnderVoltageWithCompletion:v6];
}

- (void)subscribeAttributeAverageRmsUnderVoltageWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2392707F0;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeAverageRmsUnderVoltageWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAverageRmsUnderVoltageWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239270918;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeAverageRmsUnderVoltageWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRmsExtremeOverVoltageWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2392709D4;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeRmsExtremeOverVoltageWithCompletion:v6];
}

- (void)subscribeAttributeRmsExtremeOverVoltageWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239270B54;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeRmsExtremeOverVoltageWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRmsExtremeOverVoltageWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239270C7C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRmsExtremeOverVoltageWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRmsExtremeUnderVoltageWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239270D38;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeRmsExtremeUnderVoltageWithCompletion:v6];
}

- (void)subscribeAttributeRmsExtremeUnderVoltageWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239270EB8;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeRmsExtremeUnderVoltageWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRmsExtremeUnderVoltageWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239270FE0;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRmsExtremeUnderVoltageWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRmsVoltageSagWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23927109C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeRmsVoltageSagWithCompletion:v6];
}

- (void)subscribeAttributeRmsVoltageSagWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23927121C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeRmsVoltageSagWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRmsVoltageSagWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239271344;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRmsVoltageSagWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRmsVoltageSwellWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239271400;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeRmsVoltageSwellWithCompletion:v6];
}

- (void)subscribeAttributeRmsVoltageSwellWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239271580;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeRmsVoltageSwellWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRmsVoltageSwellWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2392716A8;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRmsVoltageSwellWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeLineCurrentPhaseBWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239271764;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeLineCurrentPhaseBWithCompletion:v6];
}

- (void)subscribeAttributeLineCurrentPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2392718E4;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeLineCurrentPhaseBWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeLineCurrentPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239271A0C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeLineCurrentPhaseBWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeActiveCurrentPhaseBWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239271AC8;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeActiveCurrentPhaseBWithCompletion:v6];
}

- (void)subscribeAttributeActiveCurrentPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239271C48;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeActiveCurrentPhaseBWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeActiveCurrentPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239271D70;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeActiveCurrentPhaseBWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeReactiveCurrentPhaseBWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239271E2C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeReactiveCurrentPhaseBWithCompletion:v6];
}

- (void)subscribeAttributeReactiveCurrentPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239271FAC;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeReactiveCurrentPhaseBWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeReactiveCurrentPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2392720D4;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeReactiveCurrentPhaseBWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRmsVoltagePhaseBWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239272190;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeRmsVoltagePhaseBWithCompletion:v6];
}

- (void)subscribeAttributeRmsVoltagePhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239272310;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeRmsVoltagePhaseBWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRmsVoltagePhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239272438;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRmsVoltagePhaseBWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRmsVoltageMinPhaseBWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2392724F4;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeRmsVoltageMinPhaseBWithCompletion:v6];
}

- (void)subscribeAttributeRmsVoltageMinPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239272674;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeRmsVoltageMinPhaseBWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRmsVoltageMinPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23927279C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRmsVoltageMinPhaseBWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRmsVoltageMaxPhaseBWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239272858;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeRmsVoltageMaxPhaseBWithCompletion:v6];
}

- (void)subscribeAttributeRmsVoltageMaxPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2392729D8;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeRmsVoltageMaxPhaseBWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRmsVoltageMaxPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239272B00;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRmsVoltageMaxPhaseBWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRmsCurrentPhaseBWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239272BBC;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeRmsCurrentPhaseBWithCompletion:v6];
}

- (void)subscribeAttributeRmsCurrentPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239272D3C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeRmsCurrentPhaseBWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRmsCurrentPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239272E64;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRmsCurrentPhaseBWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRmsCurrentMinPhaseBWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239272F20;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeRmsCurrentMinPhaseBWithCompletion:v6];
}

- (void)subscribeAttributeRmsCurrentMinPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2392730A0;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeRmsCurrentMinPhaseBWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRmsCurrentMinPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2392731C8;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRmsCurrentMinPhaseBWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRmsCurrentMaxPhaseBWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239273284;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeRmsCurrentMaxPhaseBWithCompletion:v6];
}

- (void)subscribeAttributeRmsCurrentMaxPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239273404;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeRmsCurrentMaxPhaseBWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRmsCurrentMaxPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23927352C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRmsCurrentMaxPhaseBWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeActivePowerPhaseBWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2392735E8;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeActivePowerPhaseBWithCompletion:v6];
}

- (void)subscribeAttributeActivePowerPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239273768;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeActivePowerPhaseBWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeActivePowerPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239273890;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeActivePowerPhaseBWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeActivePowerMinPhaseBWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23927394C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeActivePowerMinPhaseBWithCompletion:v6];
}

- (void)subscribeAttributeActivePowerMinPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239273ACC;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeActivePowerMinPhaseBWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeActivePowerMinPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239273BF4;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeActivePowerMinPhaseBWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeActivePowerMaxPhaseBWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239273CB0;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeActivePowerMaxPhaseBWithCompletion:v6];
}

- (void)subscribeAttributeActivePowerMaxPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239273E30;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeActivePowerMaxPhaseBWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeActivePowerMaxPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239273F58;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeActivePowerMaxPhaseBWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeReactivePowerPhaseBWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239274014;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeReactivePowerPhaseBWithCompletion:v6];
}

- (void)subscribeAttributeReactivePowerPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239274194;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeReactivePowerPhaseBWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeReactivePowerPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2392742BC;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeReactivePowerPhaseBWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeApparentPowerPhaseBWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239274378;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeApparentPowerPhaseBWithCompletion:v6];
}

- (void)subscribeAttributeApparentPowerPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2392744F8;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeApparentPowerPhaseBWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeApparentPowerPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239274620;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeApparentPowerPhaseBWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributePowerFactorPhaseBWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2392746DC;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributePowerFactorPhaseBWithCompletion:v6];
}

- (void)subscribeAttributePowerFactorPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23927485C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributePowerFactorPhaseBWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributePowerFactorPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239274984;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributePowerFactorPhaseBWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAverageRmsVoltageMeasurementPeriodPhaseBWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239274A40;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeAverageRmsVoltageMeasurementPeriodPhaseBWithCompletion:v6];
}

- (void)subscribeAttributeAverageRmsVoltageMeasurementPeriodPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239274BC0;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeAverageRmsVoltageMeasurementPeriodPhaseBWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAverageRmsVoltageMeasurementPeriodPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239274CE8;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeAverageRmsVoltageMeasurementPeriodPhaseBWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAverageRmsOverVoltageCounterPhaseBWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239274DA4;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeAverageRmsOverVoltageCounterPhaseBWithCompletion:v6];
}

- (void)subscribeAttributeAverageRmsOverVoltageCounterPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239274F24;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeAverageRmsOverVoltageCounterPhaseBWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAverageRmsOverVoltageCounterPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23927504C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeAverageRmsOverVoltageCounterPhaseBWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAverageRmsUnderVoltageCounterPhaseBWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239275108;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeAverageRmsUnderVoltageCounterPhaseBWithCompletion:v6];
}

- (void)subscribeAttributeAverageRmsUnderVoltageCounterPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239275288;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeAverageRmsUnderVoltageCounterPhaseBWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAverageRmsUnderVoltageCounterPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2392753B0;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeAverageRmsUnderVoltageCounterPhaseBWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRmsExtremeOverVoltagePeriodPhaseBWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23927546C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeRmsExtremeOverVoltagePeriodPhaseBWithCompletion:v6];
}

- (void)subscribeAttributeRmsExtremeOverVoltagePeriodPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2392755EC;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeRmsExtremeOverVoltagePeriodPhaseBWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRmsExtremeOverVoltagePeriodPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239275714;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRmsExtremeOverVoltagePeriodPhaseBWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRmsExtremeUnderVoltagePeriodPhaseBWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2392757D0;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeRmsExtremeUnderVoltagePeriodPhaseBWithCompletion:v6];
}

- (void)subscribeAttributeRmsExtremeUnderVoltagePeriodPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239275950;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeRmsExtremeUnderVoltagePeriodPhaseBWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRmsExtremeUnderVoltagePeriodPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239275A78;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRmsExtremeUnderVoltagePeriodPhaseBWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRmsVoltageSagPeriodPhaseBWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239275B34;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeRmsVoltageSagPeriodPhaseBWithCompletion:v6];
}

- (void)subscribeAttributeRmsVoltageSagPeriodPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239275CB4;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeRmsVoltageSagPeriodPhaseBWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRmsVoltageSagPeriodPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239275DDC;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRmsVoltageSagPeriodPhaseBWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRmsVoltageSwellPeriodPhaseBWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239275E98;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeRmsVoltageSwellPeriodPhaseBWithCompletion:v6];
}

- (void)subscribeAttributeRmsVoltageSwellPeriodPhaseBWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239276018;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeRmsVoltageSwellPeriodPhaseBWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRmsVoltageSwellPeriodPhaseBWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239276140;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRmsVoltageSwellPeriodPhaseBWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeLineCurrentPhaseCWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2392761FC;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeLineCurrentPhaseCWithCompletion:v6];
}

- (void)subscribeAttributeLineCurrentPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23927637C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeLineCurrentPhaseCWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeLineCurrentPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2392764A4;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeLineCurrentPhaseCWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeActiveCurrentPhaseCWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239276560;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeActiveCurrentPhaseCWithCompletion:v6];
}

- (void)subscribeAttributeActiveCurrentPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2392766E0;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeActiveCurrentPhaseCWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeActiveCurrentPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239276808;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeActiveCurrentPhaseCWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeReactiveCurrentPhaseCWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2392768C4;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeReactiveCurrentPhaseCWithCompletion:v6];
}

- (void)subscribeAttributeReactiveCurrentPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239276A44;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeReactiveCurrentPhaseCWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeReactiveCurrentPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239276B6C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeReactiveCurrentPhaseCWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRmsVoltagePhaseCWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239276C28;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeRmsVoltagePhaseCWithCompletion:v6];
}

- (void)subscribeAttributeRmsVoltagePhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239276DA8;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeRmsVoltagePhaseCWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRmsVoltagePhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239276ED0;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRmsVoltagePhaseCWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRmsVoltageMinPhaseCWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239276F8C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeRmsVoltageMinPhaseCWithCompletion:v6];
}

- (void)subscribeAttributeRmsVoltageMinPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23927710C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeRmsVoltageMinPhaseCWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRmsVoltageMinPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239277234;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRmsVoltageMinPhaseCWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRmsVoltageMaxPhaseCWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2392772F0;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeRmsVoltageMaxPhaseCWithCompletion:v6];
}

- (void)subscribeAttributeRmsVoltageMaxPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239277470;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeRmsVoltageMaxPhaseCWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRmsVoltageMaxPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239277598;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRmsVoltageMaxPhaseCWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRmsCurrentPhaseCWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239277654;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeRmsCurrentPhaseCWithCompletion:v6];
}

- (void)subscribeAttributeRmsCurrentPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2392777D4;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeRmsCurrentPhaseCWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRmsCurrentPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2392778FC;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRmsCurrentPhaseCWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRmsCurrentMinPhaseCWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2392779B8;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeRmsCurrentMinPhaseCWithCompletion:v6];
}

- (void)subscribeAttributeRmsCurrentMinPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239277B38;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeRmsCurrentMinPhaseCWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRmsCurrentMinPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239277C60;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRmsCurrentMinPhaseCWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRmsCurrentMaxPhaseCWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239277D1C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeRmsCurrentMaxPhaseCWithCompletion:v6];
}

- (void)subscribeAttributeRmsCurrentMaxPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239277E9C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeRmsCurrentMaxPhaseCWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRmsCurrentMaxPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239277FC4;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRmsCurrentMaxPhaseCWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeActivePowerPhaseCWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239278080;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeActivePowerPhaseCWithCompletion:v6];
}

- (void)subscribeAttributeActivePowerPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239278200;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeActivePowerPhaseCWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeActivePowerPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239278328;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeActivePowerPhaseCWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeActivePowerMinPhaseCWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2392783E4;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeActivePowerMinPhaseCWithCompletion:v6];
}

- (void)subscribeAttributeActivePowerMinPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239278564;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeActivePowerMinPhaseCWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeActivePowerMinPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23927868C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeActivePowerMinPhaseCWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeActivePowerMaxPhaseCWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239278748;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeActivePowerMaxPhaseCWithCompletion:v6];
}

- (void)subscribeAttributeActivePowerMaxPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2392788C8;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeActivePowerMaxPhaseCWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeActivePowerMaxPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2392789F0;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeActivePowerMaxPhaseCWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeReactivePowerPhaseCWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239278AAC;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeReactivePowerPhaseCWithCompletion:v6];
}

- (void)subscribeAttributeReactivePowerPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239278C2C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeReactivePowerPhaseCWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeReactivePowerPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239278D54;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeReactivePowerPhaseCWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeApparentPowerPhaseCWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239278E10;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeApparentPowerPhaseCWithCompletion:v6];
}

- (void)subscribeAttributeApparentPowerPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239278F90;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeApparentPowerPhaseCWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeApparentPowerPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2392790B8;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeApparentPowerPhaseCWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributePowerFactorPhaseCWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239279174;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributePowerFactorPhaseCWithCompletion:v6];
}

- (void)subscribeAttributePowerFactorPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2392792F4;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributePowerFactorPhaseCWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributePowerFactorPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23927941C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributePowerFactorPhaseCWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAverageRmsVoltageMeasurementPeriodPhaseCWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2392794D8;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeAverageRmsVoltageMeasurementPeriodPhaseCWithCompletion:v6];
}

- (void)subscribeAttributeAverageRmsVoltageMeasurementPeriodPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239279658;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeAverageRmsVoltageMeasurementPeriodPhaseCWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAverageRmsVoltageMeasurementPeriodPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239279780;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeAverageRmsVoltageMeasurementPeriodPhaseCWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAverageRmsOverVoltageCounterPhaseCWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23927983C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeAverageRmsOverVoltageCounterPhaseCWithCompletion:v6];
}

- (void)subscribeAttributeAverageRmsOverVoltageCounterPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2392799BC;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeAverageRmsOverVoltageCounterPhaseCWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAverageRmsOverVoltageCounterPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239279AE4;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeAverageRmsOverVoltageCounterPhaseCWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAverageRmsUnderVoltageCounterPhaseCWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239279BA0;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeAverageRmsUnderVoltageCounterPhaseCWithCompletion:v6];
}

- (void)subscribeAttributeAverageRmsUnderVoltageCounterPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_239279D20;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeAverageRmsUnderVoltageCounterPhaseCWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAverageRmsUnderVoltageCounterPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239279E48;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeAverageRmsUnderVoltageCounterPhaseCWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRmsExtremeOverVoltagePeriodPhaseCWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239279F04;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeRmsExtremeOverVoltagePeriodPhaseCWithCompletion:v6];
}

- (void)subscribeAttributeRmsExtremeOverVoltagePeriodPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23927A084;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeRmsExtremeOverVoltagePeriodPhaseCWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRmsExtremeOverVoltagePeriodPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23927A1AC;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRmsExtremeOverVoltagePeriodPhaseCWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRmsExtremeUnderVoltagePeriodPhaseCWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23927A268;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeRmsExtremeUnderVoltagePeriodPhaseCWithCompletion:v6];
}

- (void)subscribeAttributeRmsExtremeUnderVoltagePeriodPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23927A3E8;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeRmsExtremeUnderVoltagePeriodPhaseCWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRmsExtremeUnderVoltagePeriodPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23927A510;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRmsExtremeUnderVoltagePeriodPhaseCWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRmsVoltageSagPeriodPhaseCWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23927A5CC;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeRmsVoltageSagPeriodPhaseCWithCompletion:v6];
}

- (void)subscribeAttributeRmsVoltageSagPeriodPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23927A74C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeRmsVoltageSagPeriodPhaseCWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRmsVoltageSagPeriodPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23927A874;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRmsVoltageSagPeriodPhaseCWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRmsVoltageSwellPeriodPhaseCWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23927A930;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeRmsVoltageSwellPeriodPhaseCWithCompletion:v6];
}

- (void)subscribeAttributeRmsVoltageSwellPeriodPhaseCWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_23927AAB0;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeRmsVoltageSwellPeriodPhaseCWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRmsVoltageSwellPeriodPhaseCWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23927ABD8;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRmsVoltageSwellPeriodPhaseCWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeGeneratedCommandListWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23927AC94;
  v6[3] = &unk_278A73190;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeGeneratedCommandListWithCompletion:v6];
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
  v19[2] = sub_23927AE14;
  v19[3] = &unk_278A73190;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeGeneratedCommandListWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeGeneratedCommandListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23927AF3C;
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
  v6[2] = sub_23927AFF8;
  v6[3] = &unk_278A73190;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeAcceptedCommandListWithCompletion:v6];
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
  v19[2] = sub_23927B178;
  v19[3] = &unk_278A73190;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeAcceptedCommandListWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAcceptedCommandListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23927B2A0;
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
  v6[2] = sub_23927B35C;
  v6[3] = &unk_278A73190;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeAttributeListWithCompletion:v6];
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
  v19[2] = sub_23927B4DC;
  v19[3] = &unk_278A73190;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeAttributeListWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAttributeListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23927B604;
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
  v6[2] = sub_23927B6C0;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeFeatureMapWithCompletion:v6];
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
  v19[2] = sub_23927B840;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeFeatureMapWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeFeatureMapWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23927B968;
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
  v6[2] = sub_23927BA24;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterElectricalMeasurement *)self readAttributeClusterRevisionWithCompletion:v6];
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
  v19[2] = sub_23927BBA4;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterElectricalMeasurement *)self subscribeAttributeClusterRevisionWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeClusterRevisionWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23927BCCC;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeClusterRevisionWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

@end