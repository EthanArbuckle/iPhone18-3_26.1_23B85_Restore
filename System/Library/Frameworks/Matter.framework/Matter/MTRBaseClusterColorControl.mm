@interface MTRBaseClusterColorControl
+ (void)readAttributeAcceptedCommandListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAcceptedCommandListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeAttributeListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAttributeListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeClusterRevisionWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeClusterRevisionWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeColorCapabilitiesWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeColorCapabilitiesWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeColorLoopActiveWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeColorLoopActiveWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeColorLoopDirectionWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeColorLoopDirectionWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeColorLoopStartEnhancedHueWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeColorLoopStartEnhancedHueWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeColorLoopStoredEnhancedHueWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeColorLoopStoredEnhancedHueWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeColorLoopTimeWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeColorLoopTimeWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeColorModeWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeColorModeWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeColorPointBIntensityWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeColorPointBIntensityWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeColorPointBXWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeColorPointBXWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeColorPointBYWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeColorPointBYWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeColorPointGIntensityWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeColorPointGIntensityWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeColorPointGXWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeColorPointGXWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeColorPointGYWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeColorPointGYWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeColorPointRIntensityWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeColorPointRIntensityWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeColorPointRXWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeColorPointRXWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeColorPointRYWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeColorPointRYWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeColorTempPhysicalMaxMiredsWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeColorTempPhysicalMaxMiredsWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeColorTempPhysicalMinMiredsWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeColorTempPhysicalMinMiredsWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeColorTemperatureMiredsWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeColorTemperatureMiredsWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeCompensationTextWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeCompensationTextWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeCoupleColorTempToLevelMinMiredsWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeCoupleColorTempToLevelMinMiredsWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeCurrentHueWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeCurrentHueWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeCurrentSaturationWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeCurrentSaturationWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeCurrentXWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeCurrentXWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeCurrentYWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeCurrentYWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeDriftCompensationWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeDriftCompensationWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeEnhancedColorModeWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeEnhancedColorModeWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeEnhancedCurrentHueWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeEnhancedCurrentHueWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeFeatureMapWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeFeatureMapWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeGeneratedCommandListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeGeneratedCommandListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeNumberOfPrimariesWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeNumberOfPrimariesWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeOptionsWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeOptionsWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributePrimary1IntensityWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributePrimary1IntensityWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributePrimary1XWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributePrimary1XWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributePrimary1YWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributePrimary1YWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributePrimary2IntensityWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributePrimary2IntensityWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributePrimary2XWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributePrimary2XWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributePrimary2YWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributePrimary2YWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributePrimary3IntensityWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributePrimary3IntensityWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributePrimary3XWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributePrimary3XWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributePrimary3YWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributePrimary3YWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributePrimary4IntensityWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributePrimary4IntensityWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributePrimary4XWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributePrimary4XWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributePrimary4YWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributePrimary4YWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributePrimary5IntensityWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributePrimary5IntensityWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributePrimary5XWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributePrimary5XWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributePrimary5YWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributePrimary5YWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributePrimary6IntensityWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributePrimary6IntensityWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributePrimary6XWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributePrimary6XWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributePrimary6YWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributePrimary6YWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeRemainingTimeWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeRemainingTimeWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeStartUpColorTemperatureMiredsWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeStartUpColorTemperatureMiredsWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeWhitePointXWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeWhitePointXWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
+ (void)readAttributeWhitePointYWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeWhitePointYWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion;
- (void)colorLoopSetWithParams:(MTRColorControlClusterColorLoopSetParams *)params completion:(MTRStatusCompletion)completion;
- (void)enhancedMoveHueWithParams:(MTRColorControlClusterEnhancedMoveHueParams *)params completion:(MTRStatusCompletion)completion;
- (void)enhancedMoveToHueAndSaturationWithParams:(MTRColorControlClusterEnhancedMoveToHueAndSaturationParams *)params completion:(MTRStatusCompletion)completion;
- (void)enhancedMoveToHueWithParams:(MTRColorControlClusterEnhancedMoveToHueParams *)params completion:(MTRStatusCompletion)completion;
- (void)enhancedStepHueWithParams:(MTRColorControlClusterEnhancedStepHueParams *)params completion:(MTRStatusCompletion)completion;
- (void)moveColorTemperatureWithParams:(MTRColorControlClusterMoveColorTemperatureParams *)params completion:(MTRStatusCompletion)completion;
- (void)moveColorWithParams:(MTRColorControlClusterMoveColorParams *)params completion:(MTRStatusCompletion)completion;
- (void)moveHueWithParams:(MTRColorControlClusterMoveHueParams *)params completion:(MTRStatusCompletion)completion;
- (void)moveSaturationWithParams:(MTRColorControlClusterMoveSaturationParams *)params completion:(MTRStatusCompletion)completion;
- (void)moveToColorTemperatureWithParams:(MTRColorControlClusterMoveToColorTemperatureParams *)params completion:(MTRStatusCompletion)completion;
- (void)moveToColorWithParams:(MTRColorControlClusterMoveToColorParams *)params completion:(MTRStatusCompletion)completion;
- (void)moveToHueAndSaturationWithParams:(MTRColorControlClusterMoveToHueAndSaturationParams *)params completion:(MTRStatusCompletion)completion;
- (void)moveToHueWithParams:(MTRColorControlClusterMoveToHueParams *)params completion:(MTRStatusCompletion)completion;
- (void)moveToSaturationWithParams:(MTRColorControlClusterMoveToSaturationParams *)params completion:(MTRStatusCompletion)completion;
- (void)readAttributeAcceptedCommandListWithCompletion:(void *)completion;
- (void)readAttributeAcceptedCommandListWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAttributeListWithCompletion:(void *)completion;
- (void)readAttributeAttributeListWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeClusterRevisionWithCompletion:(void *)completion;
- (void)readAttributeClusterRevisionWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeColorCapabilitiesWithCompletion:(void *)completion;
- (void)readAttributeColorCapabilitiesWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeColorLoopActiveWithCompletion:(void *)completion;
- (void)readAttributeColorLoopActiveWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeColorLoopDirectionWithCompletion:(void *)completion;
- (void)readAttributeColorLoopDirectionWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeColorLoopStartEnhancedHueWithCompletion:(void *)completion;
- (void)readAttributeColorLoopStartEnhancedHueWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeColorLoopStoredEnhancedHueWithCompletion:(void *)completion;
- (void)readAttributeColorLoopStoredEnhancedHueWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeColorLoopTimeWithCompletion:(void *)completion;
- (void)readAttributeColorLoopTimeWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeColorModeWithCompletion:(void *)completion;
- (void)readAttributeColorModeWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeColorPointBIntensityWithCompletion:(void *)completion;
- (void)readAttributeColorPointBIntensityWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeColorPointBXWithCompletion:(void *)completion;
- (void)readAttributeColorPointBXWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeColorPointBYWithCompletion:(void *)completion;
- (void)readAttributeColorPointBYWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeColorPointGIntensityWithCompletion:(void *)completion;
- (void)readAttributeColorPointGIntensityWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeColorPointGXWithCompletion:(void *)completion;
- (void)readAttributeColorPointGXWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeColorPointGYWithCompletion:(void *)completion;
- (void)readAttributeColorPointGYWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeColorPointRIntensityWithCompletion:(void *)completion;
- (void)readAttributeColorPointRIntensityWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeColorPointRXWithCompletion:(void *)completion;
- (void)readAttributeColorPointRXWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeColorPointRYWithCompletion:(void *)completion;
- (void)readAttributeColorPointRYWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeColorTempPhysicalMaxMiredsWithCompletion:(void *)completion;
- (void)readAttributeColorTempPhysicalMaxMiredsWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeColorTempPhysicalMinMiredsWithCompletion:(void *)completion;
- (void)readAttributeColorTempPhysicalMinMiredsWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeColorTemperatureMiredsWithCompletion:(void *)completion;
- (void)readAttributeColorTemperatureMiredsWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeCompensationTextWithCompletion:(void *)completion;
- (void)readAttributeCompensationTextWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeCoupleColorTempToLevelMinMiredsWithCompletion:(void *)completion;
- (void)readAttributeCoupleColorTempToLevelMinMiredsWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeCurrentHueWithCompletion:(void *)completion;
- (void)readAttributeCurrentHueWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeCurrentSaturationWithCompletion:(void *)completion;
- (void)readAttributeCurrentSaturationWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeCurrentXWithCompletion:(void *)completion;
- (void)readAttributeCurrentXWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeCurrentYWithCompletion:(void *)completion;
- (void)readAttributeCurrentYWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeDriftCompensationWithCompletion:(void *)completion;
- (void)readAttributeDriftCompensationWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeEnhancedColorModeWithCompletion:(void *)completion;
- (void)readAttributeEnhancedColorModeWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeEnhancedCurrentHueWithCompletion:(void *)completion;
- (void)readAttributeEnhancedCurrentHueWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeFeatureMapWithCompletion:(void *)completion;
- (void)readAttributeFeatureMapWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeGeneratedCommandListWithCompletion:(void *)completion;
- (void)readAttributeGeneratedCommandListWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeNumberOfPrimariesWithCompletion:(void *)completion;
- (void)readAttributeNumberOfPrimariesWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeOptionsWithCompletion:(void *)completion;
- (void)readAttributeOptionsWithCompletionHandler:(void *)completionHandler;
- (void)readAttributePrimary1IntensityWithCompletion:(void *)completion;
- (void)readAttributePrimary1IntensityWithCompletionHandler:(void *)completionHandler;
- (void)readAttributePrimary1XWithCompletion:(void *)completion;
- (void)readAttributePrimary1XWithCompletionHandler:(void *)completionHandler;
- (void)readAttributePrimary1YWithCompletion:(void *)completion;
- (void)readAttributePrimary1YWithCompletionHandler:(void *)completionHandler;
- (void)readAttributePrimary2IntensityWithCompletion:(void *)completion;
- (void)readAttributePrimary2IntensityWithCompletionHandler:(void *)completionHandler;
- (void)readAttributePrimary2XWithCompletion:(void *)completion;
- (void)readAttributePrimary2XWithCompletionHandler:(void *)completionHandler;
- (void)readAttributePrimary2YWithCompletion:(void *)completion;
- (void)readAttributePrimary2YWithCompletionHandler:(void *)completionHandler;
- (void)readAttributePrimary3IntensityWithCompletion:(void *)completion;
- (void)readAttributePrimary3IntensityWithCompletionHandler:(void *)completionHandler;
- (void)readAttributePrimary3XWithCompletion:(void *)completion;
- (void)readAttributePrimary3XWithCompletionHandler:(void *)completionHandler;
- (void)readAttributePrimary3YWithCompletion:(void *)completion;
- (void)readAttributePrimary3YWithCompletionHandler:(void *)completionHandler;
- (void)readAttributePrimary4IntensityWithCompletion:(void *)completion;
- (void)readAttributePrimary4IntensityWithCompletionHandler:(void *)completionHandler;
- (void)readAttributePrimary4XWithCompletion:(void *)completion;
- (void)readAttributePrimary4XWithCompletionHandler:(void *)completionHandler;
- (void)readAttributePrimary4YWithCompletion:(void *)completion;
- (void)readAttributePrimary4YWithCompletionHandler:(void *)completionHandler;
- (void)readAttributePrimary5IntensityWithCompletion:(void *)completion;
- (void)readAttributePrimary5IntensityWithCompletionHandler:(void *)completionHandler;
- (void)readAttributePrimary5XWithCompletion:(void *)completion;
- (void)readAttributePrimary5XWithCompletionHandler:(void *)completionHandler;
- (void)readAttributePrimary5YWithCompletion:(void *)completion;
- (void)readAttributePrimary5YWithCompletionHandler:(void *)completionHandler;
- (void)readAttributePrimary6IntensityWithCompletion:(void *)completion;
- (void)readAttributePrimary6IntensityWithCompletionHandler:(void *)completionHandler;
- (void)readAttributePrimary6XWithCompletion:(void *)completion;
- (void)readAttributePrimary6XWithCompletionHandler:(void *)completionHandler;
- (void)readAttributePrimary6YWithCompletion:(void *)completion;
- (void)readAttributePrimary6YWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeRemainingTimeWithCompletion:(void *)completion;
- (void)readAttributeRemainingTimeWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeStartUpColorTemperatureMiredsWithCompletion:(void *)completion;
- (void)readAttributeStartUpColorTemperatureMiredsWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeWhitePointXWithCompletion:(void *)completion;
- (void)readAttributeWhitePointXWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeWhitePointYWithCompletion:(void *)completion;
- (void)readAttributeWhitePointYWithCompletionHandler:(void *)completionHandler;
- (void)stepColorTemperatureWithParams:(MTRColorControlClusterStepColorTemperatureParams *)params completion:(MTRStatusCompletion)completion;
- (void)stepColorWithParams:(MTRColorControlClusterStepColorParams *)params completion:(MTRStatusCompletion)completion;
- (void)stepHueWithParams:(MTRColorControlClusterStepHueParams *)params completion:(MTRStatusCompletion)completion;
- (void)stepSaturationWithParams:(MTRColorControlClusterStepSaturationParams *)params completion:(MTRStatusCompletion)completion;
- (void)stopMoveStepWithParams:(MTRColorControlClusterStopMoveStepParams *)params completion:(MTRStatusCompletion)completion;
- (void)subscribeAttributeAcceptedCommandListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAcceptedCommandListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAttributeListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAttributeListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeClusterRevisionWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeClusterRevisionWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorCapabilitiesWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorCapabilitiesWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorLoopActiveWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorLoopActiveWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorLoopDirectionWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorLoopDirectionWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorLoopStartEnhancedHueWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorLoopStartEnhancedHueWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorLoopStoredEnhancedHueWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorLoopStoredEnhancedHueWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorLoopTimeWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorLoopTimeWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorModeWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorModeWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorPointBIntensityWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorPointBIntensityWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorPointBXWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorPointBXWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorPointBYWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorPointBYWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorPointGIntensityWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorPointGIntensityWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorPointGXWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorPointGXWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorPointGYWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorPointGYWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorPointRIntensityWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorPointRIntensityWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorPointRXWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorPointRXWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorPointRYWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorPointRYWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorTempPhysicalMaxMiredsWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorTempPhysicalMaxMiredsWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorTempPhysicalMinMiredsWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorTempPhysicalMinMiredsWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorTemperatureMiredsWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeColorTemperatureMiredsWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeCompensationTextWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeCompensationTextWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeCoupleColorTempToLevelMinMiredsWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeCoupleColorTempToLevelMinMiredsWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeCurrentHueWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeCurrentHueWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeCurrentSaturationWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeCurrentSaturationWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeCurrentXWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeCurrentXWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeCurrentYWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeCurrentYWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDriftCompensationWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDriftCompensationWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeEnhancedColorModeWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeEnhancedColorModeWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeEnhancedCurrentHueWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeEnhancedCurrentHueWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeFeatureMapWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeFeatureMapWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeGeneratedCommandListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeGeneratedCommandListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeNumberOfPrimariesWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeNumberOfPrimariesWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeOptionsWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeOptionsWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary1IntensityWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary1IntensityWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary1XWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary1XWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary1YWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary1YWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary2IntensityWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary2IntensityWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary2XWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary2XWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary2YWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary2YWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary3IntensityWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary3IntensityWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary3XWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary3XWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary3YWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary3YWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary4IntensityWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary4IntensityWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary4XWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary4XWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary4YWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary4YWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary5IntensityWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary5IntensityWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary5XWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary5XWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary5YWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary5YWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary6IntensityWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary6IntensityWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary6XWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary6XWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary6YWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributePrimary6YWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRemainingTimeWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeRemainingTimeWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeStartUpColorTemperatureMiredsWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeStartUpColorTemperatureMiredsWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeWhitePointXWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeWhitePointXWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)subscribeAttributeWhitePointYWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeWhitePointYWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler;
- (void)writeAttributeColorPointBIntensityWithValue:(NSNumber *)value completion:(MTRStatusCompletion)completion;
- (void)writeAttributeColorPointBIntensityWithValue:(NSNumber *)value completionHandler:(MTRStatusCompletion)completionHandler;
- (void)writeAttributeColorPointBIntensityWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeColorPointBIntensityWithValue:(NSNumber *)value params:(MTRWriteParams *)params completionHandler:(MTRStatusCompletion)completionHandler;
- (void)writeAttributeColorPointBXWithValue:(NSNumber *)value completion:(MTRStatusCompletion)completion;
- (void)writeAttributeColorPointBXWithValue:(NSNumber *)value completionHandler:(MTRStatusCompletion)completionHandler;
- (void)writeAttributeColorPointBXWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeColorPointBXWithValue:(NSNumber *)value params:(MTRWriteParams *)params completionHandler:(MTRStatusCompletion)completionHandler;
- (void)writeAttributeColorPointBYWithValue:(NSNumber *)value completion:(MTRStatusCompletion)completion;
- (void)writeAttributeColorPointBYWithValue:(NSNumber *)value completionHandler:(MTRStatusCompletion)completionHandler;
- (void)writeAttributeColorPointBYWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeColorPointBYWithValue:(NSNumber *)value params:(MTRWriteParams *)params completionHandler:(MTRStatusCompletion)completionHandler;
- (void)writeAttributeColorPointGIntensityWithValue:(NSNumber *)value completion:(MTRStatusCompletion)completion;
- (void)writeAttributeColorPointGIntensityWithValue:(NSNumber *)value completionHandler:(MTRStatusCompletion)completionHandler;
- (void)writeAttributeColorPointGIntensityWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeColorPointGIntensityWithValue:(NSNumber *)value params:(MTRWriteParams *)params completionHandler:(MTRStatusCompletion)completionHandler;
- (void)writeAttributeColorPointGXWithValue:(NSNumber *)value completion:(MTRStatusCompletion)completion;
- (void)writeAttributeColorPointGXWithValue:(NSNumber *)value completionHandler:(MTRStatusCompletion)completionHandler;
- (void)writeAttributeColorPointGXWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeColorPointGXWithValue:(NSNumber *)value params:(MTRWriteParams *)params completionHandler:(MTRStatusCompletion)completionHandler;
- (void)writeAttributeColorPointGYWithValue:(NSNumber *)value completion:(MTRStatusCompletion)completion;
- (void)writeAttributeColorPointGYWithValue:(NSNumber *)value completionHandler:(MTRStatusCompletion)completionHandler;
- (void)writeAttributeColorPointGYWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeColorPointGYWithValue:(NSNumber *)value params:(MTRWriteParams *)params completionHandler:(MTRStatusCompletion)completionHandler;
- (void)writeAttributeColorPointRIntensityWithValue:(NSNumber *)value completion:(MTRStatusCompletion)completion;
- (void)writeAttributeColorPointRIntensityWithValue:(NSNumber *)value completionHandler:(MTRStatusCompletion)completionHandler;
- (void)writeAttributeColorPointRIntensityWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeColorPointRIntensityWithValue:(NSNumber *)value params:(MTRWriteParams *)params completionHandler:(MTRStatusCompletion)completionHandler;
- (void)writeAttributeColorPointRXWithValue:(NSNumber *)value completion:(MTRStatusCompletion)completion;
- (void)writeAttributeColorPointRXWithValue:(NSNumber *)value completionHandler:(MTRStatusCompletion)completionHandler;
- (void)writeAttributeColorPointRXWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeColorPointRXWithValue:(NSNumber *)value params:(MTRWriteParams *)params completionHandler:(MTRStatusCompletion)completionHandler;
- (void)writeAttributeColorPointRYWithValue:(NSNumber *)value completion:(MTRStatusCompletion)completion;
- (void)writeAttributeColorPointRYWithValue:(NSNumber *)value completionHandler:(MTRStatusCompletion)completionHandler;
- (void)writeAttributeColorPointRYWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeColorPointRYWithValue:(NSNumber *)value params:(MTRWriteParams *)params completionHandler:(MTRStatusCompletion)completionHandler;
- (void)writeAttributeOptionsWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeStartUpColorTemperatureMiredsWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeWhitePointXWithValue:(NSNumber *)value completion:(MTRStatusCompletion)completion;
- (void)writeAttributeWhitePointXWithValue:(NSNumber *)value completionHandler:(MTRStatusCompletion)completionHandler;
- (void)writeAttributeWhitePointXWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeWhitePointXWithValue:(NSNumber *)value params:(MTRWriteParams *)params completionHandler:(MTRStatusCompletion)completionHandler;
- (void)writeAttributeWhitePointYWithValue:(NSNumber *)value completion:(MTRStatusCompletion)completion;
- (void)writeAttributeWhitePointYWithValue:(NSNumber *)value completionHandler:(MTRStatusCompletion)completionHandler;
- (void)writeAttributeWhitePointYWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion;
- (void)writeAttributeWhitePointYWithValue:(NSNumber *)value params:(MTRWriteParams *)params completionHandler:(MTRStatusCompletion)completionHandler;
@end

@implementation MTRBaseClusterColorControl

- (void)moveToHueWithParams:(MTRColorControlClusterMoveToHueParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRColorControlClusterMoveToHueParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2390BAD48;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRColorControlClusterMoveToHueParams *)v6 timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterMoveToHueParams *)v6 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3FC80 commandID:&unk_284C3E678 commandPayload:v6 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)moveHueWithParams:(MTRColorControlClusterMoveHueParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRColorControlClusterMoveHueParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2390BAF34;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRColorControlClusterMoveHueParams *)v6 timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterMoveHueParams *)v6 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3FC80 commandID:&unk_284C3E768 commandPayload:v6 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)stepHueWithParams:(MTRColorControlClusterStepHueParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRColorControlClusterStepHueParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2390BB120;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRColorControlClusterStepHueParams *)v6 timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterStepHueParams *)v6 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3FC80 commandID:&unk_284C3E780 commandPayload:v6 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)moveToSaturationWithParams:(MTRColorControlClusterMoveToSaturationParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRColorControlClusterMoveToSaturationParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2390BB30C;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRColorControlClusterMoveToSaturationParams *)v6 timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterMoveToSaturationParams *)v6 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3FC80 commandID:&unk_284C3E798 commandPayload:v6 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)moveSaturationWithParams:(MTRColorControlClusterMoveSaturationParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRColorControlClusterMoveSaturationParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2390BB4F8;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRColorControlClusterMoveSaturationParams *)v6 timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterMoveSaturationParams *)v6 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3FC80 commandID:&unk_284C3E7B0 commandPayload:v6 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)stepSaturationWithParams:(MTRColorControlClusterStepSaturationParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRColorControlClusterStepSaturationParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2390BB6E4;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRColorControlClusterStepSaturationParams *)v6 timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterStepSaturationParams *)v6 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3FC80 commandID:&unk_284C3E7C8 commandPayload:v6 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)moveToHueAndSaturationWithParams:(MTRColorControlClusterMoveToHueAndSaturationParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRColorControlClusterMoveToHueAndSaturationParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2390BB8D0;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRColorControlClusterMoveToHueAndSaturationParams *)v6 timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterMoveToHueAndSaturationParams *)v6 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3FC80 commandID:&unk_284C3E8A0 commandPayload:v6 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)moveToColorWithParams:(MTRColorControlClusterMoveToColorParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRColorControlClusterMoveToColorParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2390BBABC;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRColorControlClusterMoveToColorParams *)v6 timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterMoveToColorParams *)v6 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3FC80 commandID:&unk_284C3E8B8 commandPayload:v6 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)moveColorWithParams:(MTRColorControlClusterMoveColorParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRColorControlClusterMoveColorParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2390BBCA8;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRColorControlClusterMoveColorParams *)v6 timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterMoveColorParams *)v6 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3FC80 commandID:&unk_284C3E8D0 commandPayload:v6 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)stepColorWithParams:(MTRColorControlClusterStepColorParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRColorControlClusterStepColorParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2390BBE94;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRColorControlClusterStepColorParams *)v6 timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterStepColorParams *)v6 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3FC80 commandID:&unk_284C3EA68 commandPayload:v6 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)moveToColorTemperatureWithParams:(MTRColorControlClusterMoveToColorTemperatureParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRColorControlClusterMoveToColorTemperatureParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2390BC080;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRColorControlClusterMoveToColorTemperatureParams *)v6 timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterMoveToColorTemperatureParams *)v6 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3FC80 commandID:&unk_284C3EA80 commandPayload:v6 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)enhancedMoveToHueWithParams:(MTRColorControlClusterEnhancedMoveToHueParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRColorControlClusterEnhancedMoveToHueParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2390BC26C;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRColorControlClusterEnhancedMoveToHueParams *)v6 timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterEnhancedMoveToHueParams *)v6 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3FC80 commandID:&unk_284C3E690 commandPayload:v6 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)enhancedMoveHueWithParams:(MTRColorControlClusterEnhancedMoveHueParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRColorControlClusterEnhancedMoveHueParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2390BC458;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRColorControlClusterEnhancedMoveHueParams *)v6 timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterEnhancedMoveHueParams *)v6 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3FC80 commandID:&unk_284C3E7F8 commandPayload:v6 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)enhancedStepHueWithParams:(MTRColorControlClusterEnhancedStepHueParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRColorControlClusterEnhancedStepHueParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2390BC644;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRColorControlClusterEnhancedStepHueParams *)v6 timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterEnhancedStepHueParams *)v6 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3FC80 commandID:&unk_284C3E810 commandPayload:v6 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)enhancedMoveToHueAndSaturationWithParams:(MTRColorControlClusterEnhancedMoveToHueAndSaturationParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRColorControlClusterEnhancedMoveToHueAndSaturationParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2390BC830;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRColorControlClusterEnhancedMoveToHueAndSaturationParams *)v6 timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterEnhancedMoveToHueAndSaturationParams *)v6 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3FC80 commandID:&unk_284C3FC98 commandPayload:v6 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)colorLoopSetWithParams:(MTRColorControlClusterColorLoopSetParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRColorControlClusterColorLoopSetParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2390BCA1C;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRColorControlClusterColorLoopSetParams *)v6 timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterColorLoopSetParams *)v6 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3FC80 commandID:&unk_284C3FCB0 commandPayload:v6 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)stopMoveStepWithParams:(MTRColorControlClusterStopMoveStepParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRColorControlClusterStopMoveStepParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2390BCC08;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRColorControlClusterStopMoveStepParams *)v6 timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterStopMoveStepParams *)v6 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3FC80 commandID:&unk_284C3FCC8 commandPayload:v6 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)moveColorTemperatureWithParams:(MTRColorControlClusterMoveColorTemperatureParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRColorControlClusterMoveColorTemperatureParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2390BCDF4;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRColorControlClusterMoveColorTemperatureParams *)v6 timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterMoveColorTemperatureParams *)v6 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3FC80 commandID:&unk_284C3FCE0 commandPayload:v6 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)stepColorTemperatureWithParams:(MTRColorControlClusterStepColorTemperatureParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = params;
  v7 = completion;
  if (!v6)
  {
    v6 = objc_alloc_init(MTRColorControlClusterStepColorTemperatureParams);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2390BCFE0;
  v18 = &unk_278A73118;
  v8 = v7;
  v19 = v8;
  v9 = MEMORY[0x23EE78590](&v15);
  timedInvokeTimeoutMs = [(MTRColorControlClusterStepColorTemperatureParams *)v6 timedInvokeTimeoutMs];
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  serverSideProcessingTimeout = [(MTRColorControlClusterStepColorTemperatureParams *)v6 serverSideProcessingTimeout];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _invokeKnownCommandWithEndpointID:endpointID clusterID:&unk_284C3FC80 commandID:&unk_284C3FCF8 commandPayload:v6 timedInvokeTimeout:timedInvokeTimeoutMs serverSideProcessingTimeout:serverSideProcessingTimeout responseClass:0 queue:callbackQueue completion:{v9, v15, v16, v17, v18}];
}

- (void)readAttributeCurrentHueWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E6A8 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeCurrentHueWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E6A8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeCurrentHueWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:0 queue:v10 completion:v11];
}

- (void)readAttributeCurrentSaturationWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E6C0 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeCurrentSaturationWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E6C0 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeCurrentSaturationWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:1 queue:v10 completion:v11];
}

- (void)readAttributeRemainingTimeWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E8E8 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeRemainingTimeWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E8E8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeRemainingTimeWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:2 queue:v10 completion:v11];
}

- (void)readAttributeCurrentXWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E900 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeCurrentXWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E900 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeCurrentXWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:3 queue:v10 completion:v11];
}

- (void)readAttributeCurrentYWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E918 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeCurrentYWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E918 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeCurrentYWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:4 queue:v10 completion:v11];
}

- (void)readAttributeDriftCompensationWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E930 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeDriftCompensationWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E930 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeDriftCompensationWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:5 queue:v10 completion:v11];
}

- (void)readAttributeCompensationTextWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E948 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeCompensationTextWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E948 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeCompensationTextWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:6 queue:v10 completion:v11];
}

- (void)readAttributeColorTemperatureMiredsWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EAC8 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeColorTemperatureMiredsWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EAC8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeColorTemperatureMiredsWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:7 queue:v10 completion:v11];
}

- (void)readAttributeColorModeWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EAE0 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeColorModeWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EAE0 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeColorModeWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:8 queue:v10 completion:v11];
}

- (void)readAttributeOptionsWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E960 params:0 queue:callbackQueue completion:v7];
}

- (void)writeAttributeOptionsWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v7 = value;
  v8 = params;
  v9 = completion;
  [(MTRWriteParams *)v8 copy];

  [(NSNumber *)v7 copy];
  operator new();
}

- (void)subscribeAttributeOptionsWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E960 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeOptionsWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:15 queue:v10 completion:v11];
}

- (void)readAttributeNumberOfPrimariesWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E978 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeNumberOfPrimariesWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E978 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeNumberOfPrimariesWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:16 queue:v10 completion:v11];
}

- (void)readAttributePrimary1XWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E990 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributePrimary1XWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E990 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributePrimary1XWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:17 queue:v10 completion:v11];
}

- (void)readAttributePrimary1YWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E9A8 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributePrimary1YWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E9A8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributePrimary1YWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:18 queue:v10 completion:v11];
}

- (void)readAttributePrimary1IntensityWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E9C0 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributePrimary1IntensityWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E9C0 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributePrimary1IntensityWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:19 queue:v10 completion:v11];
}

- (void)readAttributePrimary2XWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EB88 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributePrimary2XWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EB88 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributePrimary2XWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:21 queue:v10 completion:v11];
}

- (void)readAttributePrimary2YWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EBA0 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributePrimary2YWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EBA0 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributePrimary2YWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:22 queue:v10 completion:v11];
}

- (void)readAttributePrimary2IntensityWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EC78 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributePrimary2IntensityWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EC78 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributePrimary2IntensityWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:23 queue:v10 completion:v11];
}

- (void)readAttributePrimary3XWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EC90 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributePrimary3XWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EC90 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributePrimary3XWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:25 queue:v10 completion:v11];
}

- (void)readAttributePrimary3YWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3ECA8 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributePrimary3YWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3ECA8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributePrimary3YWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:26 queue:v10 completion:v11];
}

- (void)readAttributePrimary3IntensityWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3ECC0 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributePrimary3IntensityWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3ECC0 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributePrimary3IntensityWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:27 queue:v10 completion:v11];
}

- (void)readAttributePrimary4XWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EDC8 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributePrimary4XWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EDC8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributePrimary4XWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:32 queue:v10 completion:v11];
}

- (void)readAttributePrimary4YWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EDE0 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributePrimary4YWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EDE0 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributePrimary4YWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:33 queue:v10 completion:v11];
}

- (void)readAttributePrimary4IntensityWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EDF8 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributePrimary4IntensityWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EDF8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributePrimary4IntensityWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:34 queue:v10 completion:v11];
}

- (void)readAttributePrimary5XWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EE28 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributePrimary5XWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EE28 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributePrimary5XWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:36 queue:v10 completion:v11];
}

- (void)readAttributePrimary5YWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EE40 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributePrimary5YWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EE40 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributePrimary5YWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:37 queue:v10 completion:v11];
}

- (void)readAttributePrimary5IntensityWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EE58 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributePrimary5IntensityWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EE58 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributePrimary5IntensityWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:38 queue:v10 completion:v11];
}

- (void)readAttributePrimary6XWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EE88 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributePrimary6XWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EE88 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributePrimary6XWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:40 queue:v10 completion:v11];
}

- (void)readAttributePrimary6YWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EEA0 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributePrimary6YWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EEA0 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributePrimary6YWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:41 queue:v10 completion:v11];
}

- (void)readAttributePrimary6IntensityWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EEB8 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributePrimary6IntensityWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EEB8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributePrimary6IntensityWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:42 queue:v10 completion:v11];
}

- (void)readAttributeWhitePointXWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EF48 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeWhitePointXWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EF48 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeWhitePointXWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:48 queue:v10 completion:v11];
}

- (void)readAttributeWhitePointYWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EF60 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeWhitePointYWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EF60 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeWhitePointYWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:49 queue:v10 completion:v11];
}

- (void)readAttributeColorPointRXWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EF78 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeColorPointRXWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EF78 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeColorPointRXWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:50 queue:v10 completion:v11];
}

- (void)readAttributeColorPointRYWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EF90 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeColorPointRYWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EF90 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeColorPointRYWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:51 queue:v10 completion:v11];
}

- (void)readAttributeColorPointRIntensityWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EFA8 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeColorPointRIntensityWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EFA8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeColorPointRIntensityWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:52 queue:v10 completion:v11];
}

- (void)readAttributeColorPointGXWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EFD8 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeColorPointGXWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EFD8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeColorPointGXWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:54 queue:v10 completion:v11];
}

- (void)readAttributeColorPointGYWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EFF0 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeColorPointGYWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3EFF0 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeColorPointGYWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:55 queue:v10 completion:v11];
}

- (void)readAttributeColorPointGIntensityWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3F008 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeColorPointGIntensityWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3F008 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeColorPointGIntensityWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:56 queue:v10 completion:v11];
}

- (void)readAttributeColorPointBXWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3F038 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeColorPointBXWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3F038 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeColorPointBXWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:58 queue:v10 completion:v11];
}

- (void)readAttributeColorPointBYWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3F050 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeColorPointBYWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3F050 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeColorPointBYWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:59 queue:v10 completion:v11];
}

- (void)readAttributeColorPointBIntensityWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3F068 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeColorPointBIntensityWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3F068 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeColorPointBIntensityWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:60 queue:v10 completion:v11];
}

- (void)readAttributeEnhancedCurrentHueWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E828 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeEnhancedCurrentHueWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E828 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeEnhancedCurrentHueWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:0x4000 queue:v10 completion:v11];
}

- (void)readAttributeEnhancedColorModeWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E840 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeEnhancedColorModeWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E840 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeEnhancedColorModeWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:16385 queue:v10 completion:v11];
}

- (void)readAttributeColorLoopActiveWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E858 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeColorLoopActiveWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E858 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeColorLoopActiveWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:16386 queue:v10 completion:v11];
}

- (void)readAttributeColorLoopDirectionWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E870 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeColorLoopDirectionWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E870 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeColorLoopDirectionWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:16387 queue:v10 completion:v11];
}

- (void)readAttributeColorLoopTimeWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3FD10 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeColorLoopTimeWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3FD10 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeColorLoopTimeWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:16388 queue:v10 completion:v11];
}

- (void)readAttributeColorLoopStartEnhancedHueWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3FD28 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeColorLoopStartEnhancedHueWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3FD28 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeColorLoopStartEnhancedHueWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:16389 queue:v10 completion:v11];
}

- (void)readAttributeColorLoopStoredEnhancedHueWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3FD40 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeColorLoopStoredEnhancedHueWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3FD40 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeColorLoopStoredEnhancedHueWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:16390 queue:v10 completion:v11];
}

- (void)readAttributeColorCapabilitiesWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3FD58 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeColorCapabilitiesWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3FD58 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeColorCapabilitiesWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:16394 queue:v10 completion:v11];
}

- (void)readAttributeColorTempPhysicalMinMiredsWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3FD70 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeColorTempPhysicalMinMiredsWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3FD70 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeColorTempPhysicalMinMiredsWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:16395 queue:v10 completion:v11];
}

- (void)readAttributeColorTempPhysicalMaxMiredsWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3FD88 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeColorTempPhysicalMaxMiredsWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3FD88 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeColorTempPhysicalMaxMiredsWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:16396 queue:v10 completion:v11];
}

- (void)readAttributeCoupleColorTempToLevelMinMiredsWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3FDA0 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeCoupleColorTempToLevelMinMiredsWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3FDA0 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeCoupleColorTempToLevelMinMiredsWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:16397 queue:v10 completion:v11];
}

- (void)readAttributeStartUpColorTemperatureMiredsWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3FDB8 params:0 queue:callbackQueue completion:v7];
}

- (void)writeAttributeStartUpColorTemperatureMiredsWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v7 = value;
  v8 = params;
  v9 = completion;
  [(MTRWriteParams *)v8 copy];

  [(NSNumber *)v7 copy];
  operator new();
}

- (void)subscribeAttributeStartUpColorTemperatureMiredsWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3FDB8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeStartUpColorTemperatureMiredsWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:16400 queue:v10 completion:v11];
}

- (void)readAttributeGeneratedCommandListWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E6D8 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeGeneratedCommandListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E6D8 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeGeneratedCommandListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:65528 queue:v10 completion:v11];
}

- (void)readAttributeAcceptedCommandListWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E6F0 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeAcceptedCommandListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E6F0 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeAcceptedCommandListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:65529 queue:v10 completion:v11];
}

- (void)readAttributeAttributeListWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E708 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeAttributeListWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E708 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeAttributeListWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:65531 queue:v10 completion:v11];
}

- (void)readAttributeFeatureMapWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E720 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeFeatureMapWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E720 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeFeatureMapWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:65532 queue:v10 completion:v11];
}

- (void)readAttributeClusterRevisionWithCompletion:(void *)completion
{
  v7 = completion;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _readKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E738 params:0 queue:callbackQueue completion:v7];
}

- (void)subscribeAttributeClusterRevisionWithParams:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished reportHandler:(void *)reportHandler
{
  v13 = params;
  v8 = subscriptionEstablished;
  v9 = reportHandler;
  device = [(MTRGenericBaseCluster *)self device];
  endpointID = [(MTRCluster *)self endpointID];
  callbackQueue = [(MTRCluster *)self callbackQueue];
  [device _subscribeToKnownAttributeWithEndpointID:endpointID clusterID:&unk_284C3FC80 attributeID:&unk_284C3E738 params:v13 queue:callbackQueue reportHandler:v9 subscriptionEstablished:v8];
}

+ (void)readAttributeClusterRevisionWithClusterStateCache:(MTRClusterStateCacheContainer *)clusterStateCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completion:(void *)completion
{
  v12 = clusterStateCacheContainer;
  v9 = endpoint;
  v10 = queue;
  v11 = completion;
  [(MTRClusterStateCacheContainer *)v12 _readKnownCachedAttributeWithEndpointID:[(NSNumber *)v9 unsignedShortValue] clusterID:768 attributeID:65533 queue:v10 completion:v11];
}

- (void)readAttributeCurrentHueWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390C7828;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeCurrentHueWithCompletion:v6];
}

- (void)subscribeAttributeCurrentHueWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390C79A8;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeCurrentHueWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeCurrentHueWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390C7AD0;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeCurrentHueWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeCurrentSaturationWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390C7B8C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeCurrentSaturationWithCompletion:v6];
}

- (void)subscribeAttributeCurrentSaturationWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390C7D0C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeCurrentSaturationWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeCurrentSaturationWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390C7E34;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeCurrentSaturationWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeRemainingTimeWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390C7EF0;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeRemainingTimeWithCompletion:v6];
}

- (void)subscribeAttributeRemainingTimeWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390C8070;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeRemainingTimeWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeRemainingTimeWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390C8198;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeRemainingTimeWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeCurrentXWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390C8254;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeCurrentXWithCompletion:v6];
}

- (void)subscribeAttributeCurrentXWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390C83D4;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeCurrentXWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeCurrentXWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390C84FC;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeCurrentXWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeCurrentYWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390C85B8;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeCurrentYWithCompletion:v6];
}

- (void)subscribeAttributeCurrentYWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390C8738;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeCurrentYWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeCurrentYWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390C8860;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeCurrentYWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeDriftCompensationWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390C891C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeDriftCompensationWithCompletion:v6];
}

- (void)subscribeAttributeDriftCompensationWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390C8A9C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeDriftCompensationWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeDriftCompensationWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390C8BC4;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeDriftCompensationWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeCompensationTextWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390C8C80;
  v6[3] = &unk_278A73258;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeCompensationTextWithCompletion:v6];
}

- (void)subscribeAttributeCompensationTextWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390C8E00;
  v19[3] = &unk_278A73258;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeCompensationTextWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeCompensationTextWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390C8F28;
  v15[3] = &unk_278A73258;
  v14 = v12;
  v16 = v14;
  [self readAttributeCompensationTextWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeColorTemperatureMiredsWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390C8FE4;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeColorTemperatureMiredsWithCompletion:v6];
}

- (void)subscribeAttributeColorTemperatureMiredsWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390C9164;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeColorTemperatureMiredsWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeColorTemperatureMiredsWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390C928C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeColorTemperatureMiredsWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeColorModeWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390C9348;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeColorModeWithCompletion:v6];
}

- (void)subscribeAttributeColorModeWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390C94C8;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeColorModeWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeColorModeWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390C95F0;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeColorModeWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeOptionsWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390C96AC;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeOptionsWithCompletion:v6];
}

- (void)subscribeAttributeOptionsWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390C983C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeOptionsWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeOptionsWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390C9964;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeOptionsWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeNumberOfPrimariesWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390C9A20;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeNumberOfPrimariesWithCompletion:v6];
}

- (void)subscribeAttributeNumberOfPrimariesWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390C9BA0;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeNumberOfPrimariesWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeNumberOfPrimariesWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390C9CC8;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeNumberOfPrimariesWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributePrimary1XWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390C9D84;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributePrimary1XWithCompletion:v6];
}

- (void)subscribeAttributePrimary1XWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390C9F04;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributePrimary1XWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributePrimary1XWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390CA02C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributePrimary1XWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributePrimary1YWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390CA0E8;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributePrimary1YWithCompletion:v6];
}

- (void)subscribeAttributePrimary1YWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390CA268;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributePrimary1YWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributePrimary1YWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390CA390;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributePrimary1YWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributePrimary1IntensityWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390CA44C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributePrimary1IntensityWithCompletion:v6];
}

- (void)subscribeAttributePrimary1IntensityWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390CA5CC;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributePrimary1IntensityWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributePrimary1IntensityWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390CA6F4;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributePrimary1IntensityWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributePrimary2XWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390CA7B0;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributePrimary2XWithCompletion:v6];
}

- (void)subscribeAttributePrimary2XWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390CA930;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributePrimary2XWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributePrimary2XWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390CAA58;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributePrimary2XWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributePrimary2YWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390CAB14;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributePrimary2YWithCompletion:v6];
}

- (void)subscribeAttributePrimary2YWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390CAC94;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributePrimary2YWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributePrimary2YWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390CADBC;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributePrimary2YWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributePrimary2IntensityWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390CAE78;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributePrimary2IntensityWithCompletion:v6];
}

- (void)subscribeAttributePrimary2IntensityWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390CAFF8;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributePrimary2IntensityWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributePrimary2IntensityWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390CB120;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributePrimary2IntensityWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributePrimary3XWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390CB1DC;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributePrimary3XWithCompletion:v6];
}

- (void)subscribeAttributePrimary3XWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390CB35C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributePrimary3XWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributePrimary3XWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390CB484;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributePrimary3XWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributePrimary3YWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390CB540;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributePrimary3YWithCompletion:v6];
}

- (void)subscribeAttributePrimary3YWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390CB6C0;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributePrimary3YWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributePrimary3YWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390CB7E8;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributePrimary3YWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributePrimary3IntensityWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390CB8A4;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributePrimary3IntensityWithCompletion:v6];
}

- (void)subscribeAttributePrimary3IntensityWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390CBA24;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributePrimary3IntensityWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributePrimary3IntensityWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390CBB4C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributePrimary3IntensityWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributePrimary4XWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390CBC08;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributePrimary4XWithCompletion:v6];
}

- (void)subscribeAttributePrimary4XWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390CBD88;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributePrimary4XWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributePrimary4XWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390CBEB0;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributePrimary4XWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributePrimary4YWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390CBF6C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributePrimary4YWithCompletion:v6];
}

- (void)subscribeAttributePrimary4YWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390CC0EC;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributePrimary4YWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributePrimary4YWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390CC214;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributePrimary4YWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributePrimary4IntensityWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390CC2D0;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributePrimary4IntensityWithCompletion:v6];
}

- (void)subscribeAttributePrimary4IntensityWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390CC450;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributePrimary4IntensityWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributePrimary4IntensityWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390CC578;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributePrimary4IntensityWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributePrimary5XWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390CC634;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributePrimary5XWithCompletion:v6];
}

- (void)subscribeAttributePrimary5XWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390CC7B4;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributePrimary5XWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributePrimary5XWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390CC8DC;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributePrimary5XWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributePrimary5YWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390CC998;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributePrimary5YWithCompletion:v6];
}

- (void)subscribeAttributePrimary5YWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390CCB18;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributePrimary5YWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributePrimary5YWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390CCC40;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributePrimary5YWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributePrimary5IntensityWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390CCCFC;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributePrimary5IntensityWithCompletion:v6];
}

- (void)subscribeAttributePrimary5IntensityWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390CCE7C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributePrimary5IntensityWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributePrimary5IntensityWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390CCFA4;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributePrimary5IntensityWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributePrimary6XWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390CD060;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributePrimary6XWithCompletion:v6];
}

- (void)subscribeAttributePrimary6XWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390CD1E0;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributePrimary6XWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributePrimary6XWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390CD308;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributePrimary6XWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributePrimary6YWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390CD3C4;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributePrimary6YWithCompletion:v6];
}

- (void)subscribeAttributePrimary6YWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390CD544;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributePrimary6YWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributePrimary6YWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390CD66C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributePrimary6YWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributePrimary6IntensityWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390CD728;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributePrimary6IntensityWithCompletion:v6];
}

- (void)subscribeAttributePrimary6IntensityWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390CD8A8;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributePrimary6IntensityWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributePrimary6IntensityWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390CD9D0;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributePrimary6IntensityWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeWhitePointXWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390CDA8C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeWhitePointXWithCompletion:v6];
}

- (void)subscribeAttributeWhitePointXWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390CDC0C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeWhitePointXWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeWhitePointXWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390CDD34;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeWhitePointXWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeWhitePointYWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390CDDF0;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeWhitePointYWithCompletion:v6];
}

- (void)subscribeAttributeWhitePointYWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390CDF70;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeWhitePointYWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeWhitePointYWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390CE098;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeWhitePointYWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeColorPointRXWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390CE154;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeColorPointRXWithCompletion:v6];
}

- (void)subscribeAttributeColorPointRXWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390CE2D4;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeColorPointRXWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeColorPointRXWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390CE3FC;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeColorPointRXWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeColorPointRYWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390CE4B8;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeColorPointRYWithCompletion:v6];
}

- (void)subscribeAttributeColorPointRYWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390CE638;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeColorPointRYWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeColorPointRYWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390CE760;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeColorPointRYWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeColorPointRIntensityWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390CE81C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeColorPointRIntensityWithCompletion:v6];
}

- (void)subscribeAttributeColorPointRIntensityWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390CE99C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeColorPointRIntensityWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeColorPointRIntensityWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390CEAC4;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeColorPointRIntensityWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeColorPointGXWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390CEB80;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeColorPointGXWithCompletion:v6];
}

- (void)subscribeAttributeColorPointGXWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390CED00;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeColorPointGXWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeColorPointGXWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390CEE28;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeColorPointGXWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeColorPointGYWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390CEEE4;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeColorPointGYWithCompletion:v6];
}

- (void)subscribeAttributeColorPointGYWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390CF064;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeColorPointGYWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeColorPointGYWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390CF18C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeColorPointGYWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeColorPointGIntensityWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390CF248;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeColorPointGIntensityWithCompletion:v6];
}

- (void)subscribeAttributeColorPointGIntensityWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390CF3C8;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeColorPointGIntensityWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeColorPointGIntensityWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390CF4F0;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeColorPointGIntensityWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeColorPointBXWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390CF5AC;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeColorPointBXWithCompletion:v6];
}

- (void)subscribeAttributeColorPointBXWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390CF72C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeColorPointBXWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeColorPointBXWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390CF854;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeColorPointBXWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeColorPointBYWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390CF910;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeColorPointBYWithCompletion:v6];
}

- (void)subscribeAttributeColorPointBYWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390CFA90;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeColorPointBYWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeColorPointBYWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390CFBB8;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeColorPointBYWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeColorPointBIntensityWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390CFC74;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeColorPointBIntensityWithCompletion:v6];
}

- (void)subscribeAttributeColorPointBIntensityWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390CFDF4;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeColorPointBIntensityWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeColorPointBIntensityWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390CFF1C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeColorPointBIntensityWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeEnhancedCurrentHueWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390CFFD8;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeEnhancedCurrentHueWithCompletion:v6];
}

- (void)subscribeAttributeEnhancedCurrentHueWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390D0158;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeEnhancedCurrentHueWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeEnhancedCurrentHueWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390D0280;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeEnhancedCurrentHueWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeEnhancedColorModeWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390D033C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeEnhancedColorModeWithCompletion:v6];
}

- (void)subscribeAttributeEnhancedColorModeWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390D04BC;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeEnhancedColorModeWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeEnhancedColorModeWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390D05E4;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeEnhancedColorModeWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeColorLoopActiveWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390D06A0;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeColorLoopActiveWithCompletion:v6];
}

- (void)subscribeAttributeColorLoopActiveWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390D0820;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeColorLoopActiveWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeColorLoopActiveWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390D0948;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeColorLoopActiveWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeColorLoopDirectionWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390D0A04;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeColorLoopDirectionWithCompletion:v6];
}

- (void)subscribeAttributeColorLoopDirectionWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390D0B84;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeColorLoopDirectionWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeColorLoopDirectionWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390D0CAC;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeColorLoopDirectionWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeColorLoopTimeWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390D0D68;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeColorLoopTimeWithCompletion:v6];
}

- (void)subscribeAttributeColorLoopTimeWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390D0EE8;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeColorLoopTimeWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeColorLoopTimeWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390D1010;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeColorLoopTimeWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeColorLoopStartEnhancedHueWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390D10CC;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeColorLoopStartEnhancedHueWithCompletion:v6];
}

- (void)subscribeAttributeColorLoopStartEnhancedHueWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390D124C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeColorLoopStartEnhancedHueWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeColorLoopStartEnhancedHueWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390D1374;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeColorLoopStartEnhancedHueWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeColorLoopStoredEnhancedHueWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390D1430;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeColorLoopStoredEnhancedHueWithCompletion:v6];
}

- (void)subscribeAttributeColorLoopStoredEnhancedHueWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390D15B0;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeColorLoopStoredEnhancedHueWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeColorLoopStoredEnhancedHueWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390D16D8;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeColorLoopStoredEnhancedHueWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeColorCapabilitiesWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390D1794;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeColorCapabilitiesWithCompletion:v6];
}

- (void)subscribeAttributeColorCapabilitiesWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390D1914;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeColorCapabilitiesWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeColorCapabilitiesWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390D1A3C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeColorCapabilitiesWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeColorTempPhysicalMinMiredsWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390D1AF8;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeColorTempPhysicalMinMiredsWithCompletion:v6];
}

- (void)subscribeAttributeColorTempPhysicalMinMiredsWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390D1C78;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeColorTempPhysicalMinMiredsWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeColorTempPhysicalMinMiredsWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390D1DA0;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeColorTempPhysicalMinMiredsWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeColorTempPhysicalMaxMiredsWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390D1E5C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeColorTempPhysicalMaxMiredsWithCompletion:v6];
}

- (void)subscribeAttributeColorTempPhysicalMaxMiredsWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390D1FDC;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeColorTempPhysicalMaxMiredsWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeColorTempPhysicalMaxMiredsWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390D2104;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeColorTempPhysicalMaxMiredsWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeCoupleColorTempToLevelMinMiredsWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390D21C0;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeCoupleColorTempToLevelMinMiredsWithCompletion:v6];
}

- (void)subscribeAttributeCoupleColorTempToLevelMinMiredsWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390D2340;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeCoupleColorTempToLevelMinMiredsWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeCoupleColorTempToLevelMinMiredsWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390D2468;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeCoupleColorTempToLevelMinMiredsWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeStartUpColorTemperatureMiredsWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390D2524;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeStartUpColorTemperatureMiredsWithCompletion:v6];
}

- (void)subscribeAttributeStartUpColorTemperatureMiredsWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
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
  v19[2] = sub_2390D26B4;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeStartUpColorTemperatureMiredsWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeStartUpColorTemperatureMiredsWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390D27DC;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeStartUpColorTemperatureMiredsWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeGeneratedCommandListWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2390D2898;
  v6[3] = &unk_278A73190;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeGeneratedCommandListWithCompletion:v6];
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
  v19[2] = sub_2390D2A18;
  v19[3] = &unk_278A73190;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeGeneratedCommandListWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeGeneratedCommandListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390D2B40;
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
  v6[2] = sub_2390D2BFC;
  v6[3] = &unk_278A73190;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeAcceptedCommandListWithCompletion:v6];
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
  v19[2] = sub_2390D2D7C;
  v19[3] = &unk_278A73190;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeAcceptedCommandListWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAcceptedCommandListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390D2EA4;
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
  v6[2] = sub_2390D2F60;
  v6[3] = &unk_278A73190;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeAttributeListWithCompletion:v6];
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
  v19[2] = sub_2390D30E0;
  v19[3] = &unk_278A73190;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeAttributeListWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAttributeListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390D3208;
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
  v6[2] = sub_2390D32C4;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeFeatureMapWithCompletion:v6];
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
  v19[2] = sub_2390D3444;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeFeatureMapWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeFeatureMapWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390D356C;
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
  v6[2] = sub_2390D3628;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterColorControl *)self readAttributeClusterRevisionWithCompletion:v6];
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
  v19[2] = sub_2390D37A8;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterColorControl *)self subscribeAttributeClusterRevisionWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeClusterRevisionWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  realContainer = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2390D38D0;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [self readAttributeClusterRevisionWithClusterStateCache:realContainer endpoint:v10 queue:v11 completion:v15];
}

- (void)writeAttributeWhitePointXWithValue:(NSNumber *)value completion:(MTRStatusCompletion)completion
{
  v5 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392278A8;
  block[3] = &unk_278A72B88;
  v9 = v5;
  v7 = v5;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeWhitePointXWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392279E0;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeWhitePointYWithValue:(NSNumber *)value completion:(MTRStatusCompletion)completion
{
  v5 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239227B18;
  block[3] = &unk_278A72B88;
  v9 = v5;
  v7 = v5;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeWhitePointYWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239227C50;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointRXWithValue:(NSNumber *)value completion:(MTRStatusCompletion)completion
{
  v5 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239227D88;
  block[3] = &unk_278A72B88;
  v9 = v5;
  v7 = v5;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointRXWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239227EC0;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointRYWithValue:(NSNumber *)value completion:(MTRStatusCompletion)completion
{
  v5 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239227FF8;
  block[3] = &unk_278A72B88;
  v9 = v5;
  v7 = v5;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointRYWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239228130;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointRIntensityWithValue:(NSNumber *)value completion:(MTRStatusCompletion)completion
{
  v5 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239228268;
  block[3] = &unk_278A72B88;
  v9 = v5;
  v7 = v5;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointRIntensityWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392283A0;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointGXWithValue:(NSNumber *)value completion:(MTRStatusCompletion)completion
{
  v5 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392284D8;
  block[3] = &unk_278A72B88;
  v9 = v5;
  v7 = v5;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointGXWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239228610;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointGYWithValue:(NSNumber *)value completion:(MTRStatusCompletion)completion
{
  v5 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239228748;
  block[3] = &unk_278A72B88;
  v9 = v5;
  v7 = v5;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointGYWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239228880;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointGIntensityWithValue:(NSNumber *)value completion:(MTRStatusCompletion)completion
{
  v5 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392289B8;
  block[3] = &unk_278A72B88;
  v9 = v5;
  v7 = v5;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointGIntensityWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239228AF0;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointBXWithValue:(NSNumber *)value completion:(MTRStatusCompletion)completion
{
  v5 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239228C28;
  block[3] = &unk_278A72B88;
  v9 = v5;
  v7 = v5;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointBXWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239228D60;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointBYWithValue:(NSNumber *)value completion:(MTRStatusCompletion)completion
{
  v5 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239228E98;
  block[3] = &unk_278A72B88;
  v9 = v5;
  v7 = v5;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointBYWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239228FD0;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointBIntensityWithValue:(NSNumber *)value completion:(MTRStatusCompletion)completion
{
  v5 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239229108;
  block[3] = &unk_278A72B88;
  v9 = v5;
  v7 = v5;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointBIntensityWithValue:(NSNumber *)value params:(MTRWriteParams *)params completion:(MTRStatusCompletion)completion
{
  v6 = completion;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239229240;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeWhitePointXWithValue:(NSNumber *)value completionHandler:(MTRStatusCompletion)completionHandler
{
  v5 = completionHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239229378;
  block[3] = &unk_278A72B88;
  v9 = v5;
  v7 = v5;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeWhitePointXWithValue:(NSNumber *)value params:(MTRWriteParams *)params completionHandler:(MTRStatusCompletion)completionHandler
{
  v6 = completionHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392294B0;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeWhitePointYWithValue:(NSNumber *)value completionHandler:(MTRStatusCompletion)completionHandler
{
  v5 = completionHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392295E8;
  block[3] = &unk_278A72B88;
  v9 = v5;
  v7 = v5;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeWhitePointYWithValue:(NSNumber *)value params:(MTRWriteParams *)params completionHandler:(MTRStatusCompletion)completionHandler
{
  v6 = completionHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239229720;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointRXWithValue:(NSNumber *)value completionHandler:(MTRStatusCompletion)completionHandler
{
  v5 = completionHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239229858;
  block[3] = &unk_278A72B88;
  v9 = v5;
  v7 = v5;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointRXWithValue:(NSNumber *)value params:(MTRWriteParams *)params completionHandler:(MTRStatusCompletion)completionHandler
{
  v6 = completionHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239229990;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointRYWithValue:(NSNumber *)value completionHandler:(MTRStatusCompletion)completionHandler
{
  v5 = completionHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239229AC8;
  block[3] = &unk_278A72B88;
  v9 = v5;
  v7 = v5;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointRYWithValue:(NSNumber *)value params:(MTRWriteParams *)params completionHandler:(MTRStatusCompletion)completionHandler
{
  v6 = completionHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239229C00;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointRIntensityWithValue:(NSNumber *)value completionHandler:(MTRStatusCompletion)completionHandler
{
  v5 = completionHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239229D38;
  block[3] = &unk_278A72B88;
  v9 = v5;
  v7 = v5;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointRIntensityWithValue:(NSNumber *)value params:(MTRWriteParams *)params completionHandler:(MTRStatusCompletion)completionHandler
{
  v6 = completionHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239229E70;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointGXWithValue:(NSNumber *)value completionHandler:(MTRStatusCompletion)completionHandler
{
  v5 = completionHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239229FA8;
  block[3] = &unk_278A72B88;
  v9 = v5;
  v7 = v5;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointGXWithValue:(NSNumber *)value params:(MTRWriteParams *)params completionHandler:(MTRStatusCompletion)completionHandler
{
  v6 = completionHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23922A0E0;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointGYWithValue:(NSNumber *)value completionHandler:(MTRStatusCompletion)completionHandler
{
  v5 = completionHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23922A218;
  block[3] = &unk_278A72B88;
  v9 = v5;
  v7 = v5;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointGYWithValue:(NSNumber *)value params:(MTRWriteParams *)params completionHandler:(MTRStatusCompletion)completionHandler
{
  v6 = completionHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23922A350;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointGIntensityWithValue:(NSNumber *)value completionHandler:(MTRStatusCompletion)completionHandler
{
  v5 = completionHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23922A488;
  block[3] = &unk_278A72B88;
  v9 = v5;
  v7 = v5;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointGIntensityWithValue:(NSNumber *)value params:(MTRWriteParams *)params completionHandler:(MTRStatusCompletion)completionHandler
{
  v6 = completionHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23922A5C0;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointBXWithValue:(NSNumber *)value completionHandler:(MTRStatusCompletion)completionHandler
{
  v5 = completionHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23922A6F8;
  block[3] = &unk_278A72B88;
  v9 = v5;
  v7 = v5;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointBXWithValue:(NSNumber *)value params:(MTRWriteParams *)params completionHandler:(MTRStatusCompletion)completionHandler
{
  v6 = completionHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23922A830;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointBYWithValue:(NSNumber *)value completionHandler:(MTRStatusCompletion)completionHandler
{
  v5 = completionHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23922A968;
  block[3] = &unk_278A72B88;
  v9 = v5;
  v7 = v5;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointBYWithValue:(NSNumber *)value params:(MTRWriteParams *)params completionHandler:(MTRStatusCompletion)completionHandler
{
  v6 = completionHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23922AAA0;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointBIntensityWithValue:(NSNumber *)value completionHandler:(MTRStatusCompletion)completionHandler
{
  v5 = completionHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23922ABD8;
  block[3] = &unk_278A72B88;
  v9 = v5;
  v7 = v5;
  dispatch_async(callbackQueue, block);
}

- (void)writeAttributeColorPointBIntensityWithValue:(NSNumber *)value params:(MTRWriteParams *)params completionHandler:(MTRStatusCompletion)completionHandler
{
  v6 = completionHandler;
  callbackQueue = [(MTRCluster *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23922AD10;
  block[3] = &unk_278A72B88;
  v10 = v6;
  v8 = v6;
  dispatch_async(callbackQueue, block);
}

@end