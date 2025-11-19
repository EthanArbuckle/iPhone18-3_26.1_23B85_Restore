@interface GCDeviceHaptics
- (CHHapticEngine)createEngineWithLocality:(GCHapticsLocality)locality;
- (GCController)controller;
- (GCDeviceHaptics)initWithCapabilityGraph:(id)a3;
@end

@implementation GCDeviceHaptics

- (CHHapticEngine)createEngineWithLocality:(GCHapticsLocality)locality
{
  v36[6] = *MEMORY[0x1E69E9840];
  v4 = locality;
  if (v4 && [(NSMutableSet *)self->_supportedLocalities containsObject:v4])
  {
    v5 = [(GCHapticCapabilityGraph *)self->_capabilityGraph nodes];
    v6 = [v5 objectForKeyedSubscript:v4];

    v7 = GCCurrentProcessLinkedOnAfter(0x7E70901FFFFFFFFuLL);
    v36[0] = @"com.apple.GameController.gamecontrollerd.haptics";
    v35[0] = @"MachServiceName";
    v35[1] = @"actuators";
    v8 = MEMORY[0x1E696ACC8];
    v33 = v6;
    v32 = [v6 actuators];
    v31 = [v8 archivedDataWithRootObject:v32 requiringSecureCoding:1 error:0];
    v36[1] = v31;
    v35[2] = @"controllerIdentifier";
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    v10 = [WeakRetained identifier];
    v36[2] = v10;
    v35[3] = @"persistentControllerIdentifier";
    v11 = objc_loadWeakRetained(&self->_controller);
    v12 = [v11 persistentIdentifier];
    v36[3] = v12;
    v35[4] = @"controllerProductCategory";
    v13 = objc_loadWeakRetained(&self->_controller);
    v14 = [v13 productCategory];
    v36[4] = v14;
    v35[5] = @"shouldSquareContinuousIntensity";
    v15 = [MEMORY[0x1E696AD98] numberWithBool:v7 ^ 1u];
    v36[5] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:6];

    if (gc_isInternalBuild())
    {
      [GCDeviceHaptics createEngineWithLocality:];
    }

    v34 = 0;
    v17 = [objc_alloc(MEMORY[0x1E695F570]) initWithOptions:v16 error:&v34];
    v18 = v34;
    isInternalBuild = gc_isInternalBuild();
    if (v18)
    {
      if (isInternalBuild)
      {
        [(GCDeviceHaptics *)v16 createEngineWithLocality:v18];
      }

      v20 = +[GCAnalytics instance];
      v21 = currentProcessBundleIdentifier();
      v22 = objc_loadWeakRetained(&self->_controller);
      v23 = [v22 productCategory];
      [v20 sendHapticsErrorRaisedEventFromSource:v21 productCategory:v23 errorType:@"CHHapticEngineCreationFailure"];

      v24 = 0;
    }

    else
    {
      if (isInternalBuild)
      {
        [GCDeviceHaptics createEngineWithLocality:];
      }

      v25 = +[GCAnalytics instance];
      v26 = currentProcessBundleIdentifier();
      v27 = [(GCDeviceHaptics *)self controller];
      v28 = [v27 productCategory];
      [v25 sendHapticsEngineCreatedEventForBundleID:v26 productCategory:v28 hapticsLocality:v4];

      v24 = v17;
    }
  }

  else
  {
    v24 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];

  return v24;
}

- (GCController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (GCDeviceHaptics)initWithCapabilityGraph:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = GCDeviceHaptics;
  v6 = [(GCDeviceHaptics *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_capabilityGraph, a3);
    v8 = [v5 exposedCapabilities];
    v9 = [v8 copy];
    supportedLocalities = v7->_supportedLocalities;
    v7->_supportedLocalities = v9;
  }

  return v7;
}

- (void)createEngineWithLocality:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = getGCLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1_19(&dword_1D2CD5000, v1, v2, "Creating CHHapticEngine with options %@", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)createEngineWithLocality:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = getGCLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412546;
    v7 = a1;
    v8 = 2112;
    v9 = a2;
    _os_log_error_impl(&dword_1D2CD5000, v4, OS_LOG_TYPE_ERROR, "Error creating CHHapticEngine with options %@ - %@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)createEngineWithLocality:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = getGCLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1_19(&dword_1D2CD5000, v1, v2, "Created CHHapticEngine %@", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end