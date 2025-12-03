@interface MTRClusterColorControl
- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeColorCapabilitiesWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeColorLoopActiveWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeColorLoopDirectionWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeColorLoopStartEnhancedHueWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeColorLoopStoredEnhancedHueWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeColorLoopTimeWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeColorModeWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeColorPointBIntensityWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeColorPointBXWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeColorPointBYWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeColorPointGIntensityWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeColorPointGXWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeColorPointGYWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeColorPointRIntensityWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeColorPointRXWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeColorPointRYWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeColorTempPhysicalMaxMiredsWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeColorTempPhysicalMinMiredsWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeColorTemperatureMiredsWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeCompensationTextWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeCoupleColorTempToLevelMinMiredsWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeCurrentHueWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeCurrentSaturationWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeCurrentXWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeCurrentYWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeDriftCompensationWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeEnhancedColorModeWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeEnhancedCurrentHueWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeNumberOfPrimariesWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeOptionsWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePrimary1IntensityWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePrimary1XWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePrimary1YWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePrimary2IntensityWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePrimary2XWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePrimary2YWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePrimary3IntensityWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePrimary3XWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePrimary3YWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePrimary4IntensityWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePrimary4XWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePrimary4YWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePrimary5IntensityWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePrimary5XWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePrimary5YWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePrimary6IntensityWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePrimary6XWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributePrimary6YWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeRemainingTimeWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeStartUpColorTemperatureMiredsWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeWhitePointXWithParams:(MTRReadParams *)params;
- (NSDictionary)readAttributeWhitePointYWithParams:(MTRReadParams *)params;
- (void)colorLoopSetWithParams:(MTRColorControlClusterColorLoopSetParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)enhancedMoveHueWithParams:(MTRColorControlClusterEnhancedMoveHueParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)enhancedMoveToHueAndSaturationWithParams:(MTRColorControlClusterEnhancedMoveToHueAndSaturationParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)enhancedMoveToHueWithParams:(MTRColorControlClusterEnhancedMoveToHueParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)enhancedStepHueWithParams:(MTRColorControlClusterEnhancedStepHueParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)moveColorTemperatureWithParams:(MTRColorControlClusterMoveColorTemperatureParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)moveColorWithParams:(MTRColorControlClusterMoveColorParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)moveHueWithParams:(MTRColorControlClusterMoveHueParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)moveSaturationWithParams:(MTRColorControlClusterMoveSaturationParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)moveToColorTemperatureWithParams:(MTRColorControlClusterMoveToColorTemperatureParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)moveToColorWithParams:(MTRColorControlClusterMoveToColorParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)moveToHueAndSaturationWithParams:(MTRColorControlClusterMoveToHueAndSaturationParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)moveToHueWithParams:(MTRColorControlClusterMoveToHueParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)moveToSaturationWithParams:(MTRColorControlClusterMoveToSaturationParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)stepColorTemperatureWithParams:(MTRColorControlClusterStepColorTemperatureParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)stepColorWithParams:(MTRColorControlClusterStepColorParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)stepHueWithParams:(MTRColorControlClusterStepHueParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)stepSaturationWithParams:(MTRColorControlClusterStepSaturationParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)stopMoveStepWithParams:(MTRColorControlClusterStopMoveStepParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion;
- (void)writeAttributeColorPointBIntensityWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeColorPointBXWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeColorPointBYWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeColorPointGIntensityWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeColorPointGXWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeColorPointGYWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeColorPointRIntensityWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeColorPointRXWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeColorPointRYWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeOptionsWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeStartUpColorTemperatureMiredsWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeWhitePointXWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
- (void)writeAttributeWhitePointYWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params;
@end

@implementation MTRClusterColorControl

- (void)writeAttributeWhitePointXWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  timedWriteTimeout = [(MTRWriteParams *)params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C406A0 attributeID:&unk_284C406B8 value:v12 expectedValueInterval:v8 timedWriteTimeout:timedWriteTimeout];
}

- (void)writeAttributeWhitePointYWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  timedWriteTimeout = [(MTRWriteParams *)params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C406A0 attributeID:&unk_284C406D0 value:v12 expectedValueInterval:v8 timedWriteTimeout:timedWriteTimeout];
}

- (void)writeAttributeColorPointRXWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  timedWriteTimeout = [(MTRWriteParams *)params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C406A0 attributeID:&unk_284C406E8 value:v12 expectedValueInterval:v8 timedWriteTimeout:timedWriteTimeout];
}

- (void)writeAttributeColorPointRYWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  timedWriteTimeout = [(MTRWriteParams *)params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C406A0 attributeID:&unk_284C40700 value:v12 expectedValueInterval:v8 timedWriteTimeout:timedWriteTimeout];
}

- (void)writeAttributeColorPointRIntensityWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  timedWriteTimeout = [(MTRWriteParams *)params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C406A0 attributeID:&unk_284C40718 value:v12 expectedValueInterval:v8 timedWriteTimeout:timedWriteTimeout];
}

- (void)writeAttributeColorPointGXWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  timedWriteTimeout = [(MTRWriteParams *)params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C406A0 attributeID:&unk_284C40730 value:v12 expectedValueInterval:v8 timedWriteTimeout:timedWriteTimeout];
}

- (void)writeAttributeColorPointGYWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  timedWriteTimeout = [(MTRWriteParams *)params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C406A0 attributeID:&unk_284C40748 value:v12 expectedValueInterval:v8 timedWriteTimeout:timedWriteTimeout];
}

- (void)writeAttributeColorPointGIntensityWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  timedWriteTimeout = [(MTRWriteParams *)params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C406A0 attributeID:&unk_284C40760 value:v12 expectedValueInterval:v8 timedWriteTimeout:timedWriteTimeout];
}

- (void)writeAttributeColorPointBXWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  timedWriteTimeout = [(MTRWriteParams *)params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C406A0 attributeID:&unk_284C40778 value:v12 expectedValueInterval:v8 timedWriteTimeout:timedWriteTimeout];
}

- (void)writeAttributeColorPointBYWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  timedWriteTimeout = [(MTRWriteParams *)params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C406A0 attributeID:&unk_284C40790 value:v12 expectedValueInterval:v8 timedWriteTimeout:timedWriteTimeout];
}

- (void)writeAttributeColorPointBIntensityWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  timedWriteTimeout = [(MTRWriteParams *)params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C406A0 attributeID:&unk_284C407A8 value:v12 expectedValueInterval:v8 timedWriteTimeout:timedWriteTimeout];
}

- (void)moveToHueWithParams:(MTRColorControlClusterMoveToHueParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRColorControlClusterMoveToHueParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23933CF90;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRColorControlClusterMoveToHueParams *)v10 timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterMoveToHueParams *)v10 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C42D58 commandID:&unk_284C41660 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (void)moveHueWithParams:(MTRColorControlClusterMoveHueParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRColorControlClusterMoveHueParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23933D1B0;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRColorControlClusterMoveHueParams *)v10 timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterMoveHueParams *)v10 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C42D58 commandID:&unk_284C41768 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (void)stepHueWithParams:(MTRColorControlClusterStepHueParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRColorControlClusterStepHueParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23933D3D0;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRColorControlClusterStepHueParams *)v10 timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterStepHueParams *)v10 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C42D58 commandID:&unk_284C41780 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (void)moveToSaturationWithParams:(MTRColorControlClusterMoveToSaturationParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRColorControlClusterMoveToSaturationParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23933D5F0;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRColorControlClusterMoveToSaturationParams *)v10 timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterMoveToSaturationParams *)v10 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C42D58 commandID:&unk_284C41798 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (void)moveSaturationWithParams:(MTRColorControlClusterMoveSaturationParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRColorControlClusterMoveSaturationParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23933D810;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRColorControlClusterMoveSaturationParams *)v10 timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterMoveSaturationParams *)v10 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C42D58 commandID:&unk_284C417B0 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (void)stepSaturationWithParams:(MTRColorControlClusterStepSaturationParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRColorControlClusterStepSaturationParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23933DA30;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRColorControlClusterStepSaturationParams *)v10 timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterStepSaturationParams *)v10 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C42D58 commandID:&unk_284C417C8 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (void)moveToHueAndSaturationWithParams:(MTRColorControlClusterMoveToHueAndSaturationParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRColorControlClusterMoveToHueAndSaturationParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23933DC50;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRColorControlClusterMoveToHueAndSaturationParams *)v10 timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterMoveToHueAndSaturationParams *)v10 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C42D58 commandID:&unk_284C418D0 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (void)moveToColorWithParams:(MTRColorControlClusterMoveToColorParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRColorControlClusterMoveToColorParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23933DE70;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRColorControlClusterMoveToColorParams *)v10 timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterMoveToColorParams *)v10 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C42D58 commandID:&unk_284C418E8 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (void)moveColorWithParams:(MTRColorControlClusterMoveColorParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRColorControlClusterMoveColorParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23933E090;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRColorControlClusterMoveColorParams *)v10 timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterMoveColorParams *)v10 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C42D58 commandID:&unk_284C41900 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (void)stepColorWithParams:(MTRColorControlClusterStepColorParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRColorControlClusterStepColorParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23933E2B0;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRColorControlClusterStepColorParams *)v10 timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterStepColorParams *)v10 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C42D58 commandID:&unk_284C41A80 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (void)moveToColorTemperatureWithParams:(MTRColorControlClusterMoveToColorTemperatureParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRColorControlClusterMoveToColorTemperatureParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23933E4D0;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRColorControlClusterMoveToColorTemperatureParams *)v10 timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterMoveToColorTemperatureParams *)v10 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C42D58 commandID:&unk_284C41A98 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (void)enhancedMoveToHueWithParams:(MTRColorControlClusterEnhancedMoveToHueParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRColorControlClusterEnhancedMoveToHueParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23933E6F0;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRColorControlClusterEnhancedMoveToHueParams *)v10 timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterEnhancedMoveToHueParams *)v10 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C42D58 commandID:&unk_284C41678 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (void)enhancedMoveHueWithParams:(MTRColorControlClusterEnhancedMoveHueParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRColorControlClusterEnhancedMoveHueParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23933E910;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRColorControlClusterEnhancedMoveHueParams *)v10 timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterEnhancedMoveHueParams *)v10 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C42D58 commandID:&unk_284C41810 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (void)enhancedStepHueWithParams:(MTRColorControlClusterEnhancedStepHueParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRColorControlClusterEnhancedStepHueParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23933EB30;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRColorControlClusterEnhancedStepHueParams *)v10 timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterEnhancedStepHueParams *)v10 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C42D58 commandID:&unk_284C41828 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (void)enhancedMoveToHueAndSaturationWithParams:(MTRColorControlClusterEnhancedMoveToHueAndSaturationParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRColorControlClusterEnhancedMoveToHueAndSaturationParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23933ED50;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRColorControlClusterEnhancedMoveToHueAndSaturationParams *)v10 timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterEnhancedMoveToHueAndSaturationParams *)v10 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C42D58 commandID:&unk_284C42D70 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (void)colorLoopSetWithParams:(MTRColorControlClusterColorLoopSetParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRColorControlClusterColorLoopSetParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23933EF70;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRColorControlClusterColorLoopSetParams *)v10 timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterColorLoopSetParams *)v10 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C42D58 commandID:&unk_284C42D88 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (void)stopMoveStepWithParams:(MTRColorControlClusterStopMoveStepParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRColorControlClusterStopMoveStepParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23933F190;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRColorControlClusterStopMoveStepParams *)v10 timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterStopMoveStepParams *)v10 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C42D58 commandID:&unk_284C42DA0 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (void)moveColorTemperatureWithParams:(MTRColorControlClusterMoveColorTemperatureParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRColorControlClusterMoveColorTemperatureParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23933F3B0;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRColorControlClusterMoveColorTemperatureParams *)v10 timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterMoveColorTemperatureParams *)v10 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C42D58 commandID:&unk_284C42DB8 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (void)stepColorTemperatureWithParams:(MTRColorControlClusterStepColorTemperatureParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completion:(MTRStatusCompletion)completion
{
  v10 = params;
  v11 = expectedDataValueDictionaries;
  v12 = expectedValueIntervalMs;
  v13 = completion;
  if (!v10)
  {
    v10 = objc_alloc_init(MTRColorControlClusterStepColorTemperatureParams);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23933F5D0;
  v21[3] = &unk_278A73118;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x23EE78590](v21);
  timedInvokeTimeoutMs = [(MTRColorControlClusterStepColorTemperatureParams *)v10 timedInvokeTimeoutMs];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterStepColorTemperatureParams *)v10 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C42D58 commandID:&unk_284C42DD0 commandPayload:v10 expectedValues:v11 expectedValueInterval:v12 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:v15];
}

- (NSDictionary)readAttributeCurrentHueWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C416A8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeCurrentSaturationWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C416C0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeRemainingTimeWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41930 params:v4];

  return v7;
}

- (NSDictionary)readAttributeCurrentXWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41690 params:v4];

  return v7;
}

- (NSDictionary)readAttributeCurrentYWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C417E0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeDriftCompensationWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41948 params:v4];

  return v7;
}

- (NSDictionary)readAttributeCompensationTextWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41840 params:v4];

  return v7;
}

- (NSDictionary)readAttributeColorTemperatureMiredsWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41B10 params:v4];

  return v7;
}

- (NSDictionary)readAttributeColorModeWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41918 params:v4];

  return v7;
}

- (NSDictionary)readAttributeOptionsWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41960 params:v4];

  return v7;
}

- (void)writeAttributeOptionsWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  timedWriteTimeout = [(MTRWriteParams *)params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41960 value:v12 expectedValueInterval:v8 timedWriteTimeout:timedWriteTimeout];
}

- (NSDictionary)readAttributeNumberOfPrimariesWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41978 params:v4];

  return v7;
}

- (NSDictionary)readAttributePrimary1XWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41990 params:v4];

  return v7;
}

- (NSDictionary)readAttributePrimary1YWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C419A8 params:v4];

  return v7;
}

- (NSDictionary)readAttributePrimary1IntensityWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C419C0 params:v4];

  return v7;
}

- (NSDictionary)readAttributePrimary2XWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41BB8 params:v4];

  return v7;
}

- (NSDictionary)readAttributePrimary2YWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41BD0 params:v4];

  return v7;
}

- (NSDictionary)readAttributePrimary2IntensityWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41CD8 params:v4];

  return v7;
}

- (NSDictionary)readAttributePrimary3XWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41CF0 params:v4];

  return v7;
}

- (NSDictionary)readAttributePrimary3YWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41D08 params:v4];

  return v7;
}

- (NSDictionary)readAttributePrimary3IntensityWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41D20 params:v4];

  return v7;
}

- (NSDictionary)readAttributePrimary4XWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41E58 params:v4];

  return v7;
}

- (NSDictionary)readAttributePrimary4YWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41E70 params:v4];

  return v7;
}

- (NSDictionary)readAttributePrimary4IntensityWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41E88 params:v4];

  return v7;
}

- (NSDictionary)readAttributePrimary5XWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41EB8 params:v4];

  return v7;
}

- (NSDictionary)readAttributePrimary5YWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41AC8 params:v4];

  return v7;
}

- (NSDictionary)readAttributePrimary5IntensityWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41ED0 params:v4];

  return v7;
}

- (NSDictionary)readAttributePrimary6XWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41AF8 params:v4];

  return v7;
}

- (NSDictionary)readAttributePrimary6YWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41C18 params:v4];

  return v7;
}

- (NSDictionary)readAttributePrimary6IntensityWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41C48 params:v4];

  return v7;
}

- (NSDictionary)readAttributeWhitePointXWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41D50 params:v4];

  return v7;
}

- (NSDictionary)readAttributeWhitePointYWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41D80 params:v4];

  return v7;
}

- (NSDictionary)readAttributeColorPointRXWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41DB0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeColorPointRYWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41DE0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeColorPointRIntensityWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41E10 params:v4];

  return v7;
}

- (NSDictionary)readAttributeColorPointGXWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41F00 params:v4];

  return v7;
}

- (NSDictionary)readAttributeColorPointGYWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41F18 params:v4];

  return v7;
}

- (NSDictionary)readAttributeColorPointGIntensityWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41F30 params:v4];

  return v7;
}

- (NSDictionary)readAttributeColorPointBXWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41F60 params:v4];

  return v7;
}

- (NSDictionary)readAttributeColorPointBYWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41F78 params:v4];

  return v7;
}

- (NSDictionary)readAttributeColorPointBIntensityWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41F90 params:v4];

  return v7;
}

- (NSDictionary)readAttributeEnhancedCurrentHueWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41858 params:v4];

  return v7;
}

- (NSDictionary)readAttributeEnhancedColorModeWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41870 params:v4];

  return v7;
}

- (NSDictionary)readAttributeColorLoopActiveWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41888 params:v4];

  return v7;
}

- (NSDictionary)readAttributeColorLoopDirectionWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C418A0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeColorLoopTimeWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C42E00 params:v4];

  return v7;
}

- (NSDictionary)readAttributeColorLoopStartEnhancedHueWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C42E18 params:v4];

  return v7;
}

- (NSDictionary)readAttributeColorLoopStoredEnhancedHueWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C42E30 params:v4];

  return v7;
}

- (NSDictionary)readAttributeColorCapabilitiesWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C42E48 params:v4];

  return v7;
}

- (NSDictionary)readAttributeColorTempPhysicalMinMiredsWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C42E60 params:v4];

  return v7;
}

- (NSDictionary)readAttributeColorTempPhysicalMaxMiredsWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C42E78 params:v4];

  return v7;
}

- (NSDictionary)readAttributeCoupleColorTempToLevelMinMiredsWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C42E90 params:v4];

  return v7;
}

- (NSDictionary)readAttributeStartUpColorTemperatureMiredsWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C42EA8 params:v4];

  return v7;
}

- (void)writeAttributeStartUpColorTemperatureMiredsWithValue:(NSDictionary *)dataValueDictionary expectedValueInterval:(NSNumber *)expectedValueIntervalMs params:(MTRWriteParams *)params
{
  v12 = dataValueDictionary;
  v8 = expectedValueIntervalMs;
  timedWriteTimeout = [(MTRWriteParams *)params timedWriteTimeout];
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  [device writeAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C42EA8 value:v12 expectedValueInterval:v8 timedWriteTimeout:timedWriteTimeout];
}

- (NSDictionary)readAttributeGeneratedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C416D8 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAcceptedCommandListWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C416F0 params:v4];

  return v7;
}

- (NSDictionary)readAttributeAttributeListWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41708 params:v4];

  return v7;
}

- (NSDictionary)readAttributeFeatureMapWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41720 params:v4];

  return v7;
}

- (NSDictionary)readAttributeClusterRevisionWithParams:(MTRReadParams *)params
{
  v4 = params;
  device = [(MTRGenericCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  v7 = [device readAttributeWithEndpointID:endpointID clusterID:&unk_284C42DE8 attributeID:&unk_284C41738 params:v4];

  return v7;
}

@end