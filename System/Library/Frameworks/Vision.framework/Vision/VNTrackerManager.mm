@interface VNTrackerManager
+ (id)_trackerClassToNameMapTableObjectForKey:(Class)key;
+ (id)_trackerTypeToClassDictionary;
+ (id)trackerClassForOptions:(void *)options error:;
- (VNTrackerManager)init;
- (id)_createTracker:(id)tracker type:(id)type options:(id)options error:(id *)error;
- (id)_getTracker:(id)tracker;
- (id)_supportedComputeDeviceTypesForTrackerType:(id)type options:(id)options error:(id *)error;
- (int64_t)_maximumTrackersOfType:(id)type;
- (void)_releaseTracker_NO_LOCK_DO_NOT_EXECUTE_DIRECTLY:(id)y;
@end

@implementation VNTrackerManager

- (void)_releaseTracker_NO_LOCK_DO_NOT_EXECUTE_DIRECTLY:(id)y
{
  yCopy = y;
  if (yCopy)
  {
    trackers = self->_trackers;
    v12 = yCopy;
    v6 = [yCopy key];
    [(NSMutableDictionary *)trackers removeObjectForKey:v6];

    v7 = objc_opt_class();
    v8 = [v7 _trackerClassToNameMapTableObjectForKey:objc_opt_class()];
    v9 = [(NSMutableDictionary *)self->_liveTrackerCounter objectForKey:v8];
    integerValue = [v9 integerValue];

    v11 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue - 1];
    [(NSMutableDictionary *)self->_liveTrackerCounter setObject:v11 forKeyedSubscript:v8];

    yCopy = v12;
  }
}

- (id)_createTracker:(id)tracker type:(id)type options:(id)options error:(id *)error
{
  typeCopy = type;
  optionsCopy = options;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__12646;
  v35 = __Block_byref_object_dispose__12647;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__12646;
  v29 = __Block_byref_object_dispose__12647;
  v30 = 0;
  _trackerTypeToClassDictionary = [objc_opt_class() _trackerTypeToClassDictionary];
  trackersCollectionManagementQueue = self->_trackersCollectionManagementQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __54__VNTrackerManager__createTracker_type_options_error___block_invoke;
  v19[3] = &unk_1E77B3A58;
  v19[4] = self;
  v13 = typeCopy;
  v20 = v13;
  v23 = &v25;
  v14 = optionsCopy;
  v21 = v14;
  v15 = _trackerTypeToClassDictionary;
  v22 = v15;
  v24 = &v31;
  dispatch_sync(trackersCollectionManagementQueue, v19);
  v16 = v32[5];
  if (error && !v16)
  {
    *error = v26[5];
    v16 = v32[5];
  }

  v17 = v16;

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v17;
}

void __54__VNTrackerManager__createTracker_type_options_error___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
  v3 = [v2 integerValue];

  if (v3 < [*(a1 + 32) _maximumTrackersOfType:*(a1 + 40)])
  {
    v4 = [*(a1 + 48) mutableCopy];
    if ([*(a1 + 40) isEqualToString:@"VNObjectTrackerRevision2Type"])
    {
      v5 = *(*(a1 + 64) + 8);
      obj = *(v5 + 40);
      v6 = [VNValidationUtilities requiredSessionInOptions:v4 error:&obj];
      objc_storeStrong((v5 + 40), obj);
      if (!v6)
      {
        goto LABEL_9;
      }

      v7 = +[VNObjectTrackerRevision2 rpnTrackerInitModelName];
      [v4 setObject:v7 forKeyedSubscript:@"VNObjectTrackerRevision2Type_RPNTrackerInitModelName"];

      v8 = +[VNObjectTrackerRevision2 rpnTrackerTrackModelName];
      [v4 setObject:v8 forKeyedSubscript:@"VNObjectTrackerRevision2Type_RPNTrackerTrackModelName"];

      v9 = *(*(a1 + 64) + 8);
      v24 = *(v9 + 40);
      v10 = [v6 trackerResourcesConfiguredWithOptions:v4 error:&v24];
      objc_storeStrong((v9 + 40), v24);
      if (!v10)
      {
LABEL_8:

        goto LABEL_9;
      }

      [v4 setObject:v10 forKeyedSubscript:@"VNTrackerOption_RPNEspressoResources"];
    }

    v11 = objc_alloc([*(a1 + 56) objectForKeyedSubscript:*(a1 + 40)]);
    v12 = *(*(a1 + 64) + 8);
    v23 = *(v12 + 40);
    v13 = [v11 initWithOptions:v4 error:&v23];
    objc_storeStrong((v12 + 40), v23);
    v14 = *(*(a1 + 72) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    if (*(*(*(a1 + 72) + 8) + 40))
    {
      v16 = [MEMORY[0x1E696AD98] numberWithInteger:v3 + 1];
      [*(*(a1 + 32) + 8) setObject:v16 forKeyedSubscript:*(a1 + 40)];

      v17 = *(*(a1 + 32) + 40);
      v18 = *(*(*(a1 + 72) + 8) + 40);
      v6 = [v4 objectForKeyedSubscript:@"VNTrackingOption_TrackerKey"];
      [v17 setObject:v18 forKey:v6];
      goto LABEL_8;
    }

LABEL_9:

    return;
  }

  v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Internal error: Exceeded maximum allowed number of Trackers for a tracker type: %@", *(a1 + 40)];
  v19 = [VNError errorForInternalErrorWithLocalizedDescription:?];
  v20 = *(*(a1 + 64) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;
}

- (id)_getTracker:(id)tracker
{
  trackerCopy = tracker;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__12646;
  v16 = __Block_byref_object_dispose__12647;
  v17 = 0;
  trackersCollectionManagementQueue = self->_trackersCollectionManagementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__VNTrackerManager__getTracker___block_invoke;
  block[3] = &unk_1E77B3A28;
  v10 = trackerCopy;
  v11 = &v12;
  block[4] = self;
  v6 = trackerCopy;
  dispatch_sync(trackersCollectionManagementQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __32__VNTrackerManager__getTracker___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 40) objectForKey:a1[5]];

  return MEMORY[0x1EEE66BB8]();
}

- (int64_t)_maximumTrackersOfType:(id)type
{
  v3 = [(NSDictionary *)self->_liveTrackerCounterLimit objectForKeyedSubscript:type];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (VNTrackerManager)init
{
  v28[4] = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = VNTrackerManager;
  v2 = [(VNTrackerManager *)&v24 init];
  if (v2)
  {
    v27[0] = @"VNObjectTrackerRevision1Type";
    v27[1] = @"VNObjectTrackerRevision2Type";
    v28[0] = &unk_1F19C1480;
    v28[1] = &unk_1F19C1480;
    v27[2] = @"VNObjectTrackerRevisionLegacyFaceCoreType";
    v27[3] = @"VNRectangleTrackerType";
    v28[2] = &unk_1F19C1480;
    v28[3] = &unk_1F19C1480;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:4];
    v4 = [v3 mutableCopy];
    liveTrackerCounter = v2->_liveTrackerCounter;
    v2->_liveTrackerCounter = v4;

    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.VN.trackersCollectionManagementQueue_%lu", v2];
    v7 = v6;
    uTF8String = [v6 UTF8String];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create(uTF8String, v9);
    trackersCollectionManagementQueue = v2->_trackersCollectionManagementQueue;
    v2->_trackersCollectionManagementQueue = v10;

    v25[0] = @"VNObjectTrackerRevision1Type";
    v25[1] = @"VNObjectTrackerRevision2Type";
    v26[0] = &unk_1F19C1498;
    v26[1] = &unk_1F19C1498;
    v25[2] = @"VNObjectTrackerRevisionLegacyFaceCoreType";
    v25[3] = @"VNRectangleTrackerType";
    v26[2] = &unk_1F19C1498;
    v26[3] = &unk_1F19C1498;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:4];
    liveTrackerCounterLimit = v2->_liveTrackerCounterLimit;
    v2->_liveTrackerCounterLimit = v12;

    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.VN.trackingProcessingQueue_%lu", v2];
    v15 = v14;
    uTF8String2 = [v14 UTF8String];
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create(uTF8String2, v17);
    trackingProcessingQueue = v2->_trackingProcessingQueue;
    v2->_trackingProcessingQueue = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    trackers = v2->_trackers;
    v2->_trackers = v20;

    v22 = v2;
  }

  return v2;
}

- (id)_supportedComputeDeviceTypesForTrackerType:(id)type options:(id)options error:(id *)error
{
  typeCopy = type;
  optionsCopy = options;
  _trackerTypeToClassDictionary = [objc_opt_class() _trackerTypeToClassDictionary];
  v10 = [_trackerTypeToClassDictionary objectForKeyedSubscript:typeCopy];
  if (v10)
  {
    error = [v10 supportedComputeDevicesForOptions:optionsCopy error:error];
  }

  else if (error)
  {
    typeCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unknown tracker type %@", typeCopy];
    *error = [VNError errorForInternalErrorWithLocalizedDescription:typeCopy];

    error = 0;
  }

  return error;
}

+ (id)_trackerClassToNameMapTableObjectForKey:(Class)key
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__VNTrackerManager__trackerClassToNameMapTableObjectForKey___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[VNTrackerManager _trackerClassToNameMapTableObjectForKey:]::onceToken != -1)
  {
    dispatch_once(&+[VNTrackerManager _trackerClassToNameMapTableObjectForKey:]::onceToken, block);
  }

  v4 = [+[VNTrackerManager _trackerClassToNameMapTableObjectForKey:]::trackerClassToNameMapTable objectForKey:key];

  return v4;
}

void __60__VNTrackerManager__trackerClassToNameMapTableObjectForKey___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _trackerTypeToClassDictionary];
  v1 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v2 = +[VNTrackerManager _trackerClassToNameMapTableObjectForKey:]::trackerClassToNameMapTable;
  +[VNTrackerManager _trackerClassToNameMapTableObjectForKey:]::trackerClassToNameMapTable = v1;

  [v3 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_51_12679];
}

+ (id)_trackerTypeToClassDictionary
{
  if (+[VNTrackerManager _trackerTypeToClassDictionary]::onceToken != -1)
  {
    dispatch_once(&+[VNTrackerManager _trackerTypeToClassDictionary]::onceToken, &__block_literal_global_12682);
  }

  v3 = +[VNTrackerManager _trackerTypeToClassDictionary]::trackerTypeToClassDictionary;

  return v3;
}

void __49__VNTrackerManager__trackerTypeToClassDictionary__block_invoke()
{
  v3[4] = *MEMORY[0x1E69E9840];
  v2[0] = @"VNObjectTrackerRevision1Type";
  v3[0] = objc_opt_class();
  v2[1] = @"VNObjectTrackerRevision2Type";
  v3[1] = objc_opt_class();
  v2[2] = @"VNObjectTrackerRevisionLegacyFaceCoreType";
  v3[2] = objc_opt_class();
  v2[3] = @"VNRectangleTrackerType";
  v3[3] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:4];
  v1 = +[VNTrackerManager _trackerTypeToClassDictionary]::trackerTypeToClassDictionary;
  +[VNTrackerManager _trackerTypeToClassDictionary]::trackerTypeToClassDictionary = v0;
}

+ (id)trackerClassForOptions:(void *)options error:
{
  v4 = a2;
  objc_opt_self();
  v5 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNTrackingOption_TrackerType" inOptions:v4 error:options];
  if (v5)
  {
    _trackerTypeToClassDictionary = [objc_opt_class() _trackerTypeToClassDictionary];
    v7 = [_trackerTypeToClassDictionary objectForKeyedSubscript:v5];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else if (options)
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown tracker type %@", v5];
      *options = [VNError errorForInvalidOptionWithLocalizedDescription:v10];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __38__VNTrackerManager_releaseAllTrackers__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 40) allValues];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v2 = v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    do
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 32) _releaseTracker_NO_LOCK_DO_NOT_EXECUTE_DIRECTLY:{*(*(&v9 + 1) + 8 * v5++), v9}];
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = *(a1 + 32);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

@end