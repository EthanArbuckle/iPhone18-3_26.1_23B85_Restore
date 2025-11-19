@interface AXSSMotionTrackingInputManager
- (AXSSMotionTrackingInputConfiguration)configuration;
- (AXSSMotionTrackingInputManager)initWithConfiguration:(id)a3;
- (AXSSMotionTrackingInputManagerDelegate)delegate;
- (BOOL)_supportsCameraInputs;
- (BOOL)_supportsMotionTrackingType:(unint64_t)a3;
- (NSArray)allInputs;
- (NSArray)compatibleInputs;
- (id)_compatibleCameraInputMatchingCaptureDeviceUniqueID:(id)a3;
- (void)_inputUpdated;
- (void)_updateMonitoring;
- (void)motionTrackingCameraManager:(id)a3 updatedCompatibleCaptureDevices:(id)a4;
- (void)motionTrackingHIDManager:(id)a3 updatedDevices:(id)a4;
- (void)motionTrackingVideoFileInputManager:(id)a3 updatedVideoFileInputNames:(id)a4;
- (void)setConfiguration:(id)a3;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation AXSSMotionTrackingInputManager

- (AXSSMotionTrackingInputManager)initWithConfiguration:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = AXSSMotionTrackingInputManager;
  v5 = [(AXSSMotionTrackingInputManager *)&v27 init];
  if (v5)
  {
    v6 = [v4 copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    v8 = objc_alloc_init(AXSSMotionTrackingCameraManager);
    cameraManager = v5->__cameraManager;
    v5->__cameraManager = v8;

    [(AXSSMotionTrackingCameraManager *)v5->__cameraManager setDelegate:v5];
    v10 = [MEMORY[0x1E695DF70] array];
    compatibleCameraInputs = v5->__compatibleCameraInputs;
    v5->__compatibleCameraInputs = v10;

    v12 = [MEMORY[0x1E695DF70] array];
    allCameraInputs = v5->__allCameraInputs;
    v5->__allCameraInputs = v12;

    v14 = objc_alloc_init(AXSSMotionTrackingHIDManager);
    hidManager = v5->__hidManager;
    v5->__hidManager = v14;

    [(AXSSMotionTrackingHIDManager *)v5->__hidManager setDelegate:v5];
    v16 = [MEMORY[0x1E695DF70] array];
    hidInputs = v5->__hidInputs;
    v5->__hidInputs = v16;

    if (+[AXSSMotionTrackingVideoFileInputManager allowVideoFileInput])
    {
      v18 = objc_alloc_init(AXSSMotionTrackingVideoFileInputManager);
      videoFileInputManager = v5->__videoFileInputManager;
      v5->__videoFileInputManager = v18;

      [(AXSSMotionTrackingVideoFileInputManager *)v5->__videoFileInputManager setDelegate:v5];
      v20 = [MEMORY[0x1E695DF70] array];
      videoFileInputs = v5->__videoFileInputs;
      v5->__videoFileInputs = v20;
    }

    v22 = [MEMORY[0x1E695DF70] array];
    allInputs = v5->__allInputs;
    v5->__allInputs = v22;

    v24 = [MEMORY[0x1E695DF70] array];
    compatibleInputs = v5->__compatibleInputs;
    v5->__compatibleInputs = v24;
  }

  return v5;
}

- (void)startMonitoring
{
  v6 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AF00] isMainThread];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)stopMonitoring
{
  v6 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AF00] isMainThread];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_updateMonitoring
{
  if ([(AXSSMotionTrackingInputManager *)self _monitoring]&& [(AXSSMotionTrackingInputManager *)self _supportsCameraInputs])
  {
    v3 = [(AXSSMotionTrackingInputManager *)self _cameraManager];
    [v3 startMonitoring];
  }

  else
  {
    v4 = [(AXSSMotionTrackingInputManager *)self _allCameraInputs];
    [v4 removeAllObjects];

    v5 = [(AXSSMotionTrackingInputManager *)self _compatibleCameraInputs];
    [v5 removeAllObjects];

    v3 = [(AXSSMotionTrackingInputManager *)self _cameraManager];
    [v3 stopMonitoring];
  }

  if ([(AXSSMotionTrackingInputManager *)self _monitoring]&& [(AXSSMotionTrackingInputManager *)self _supportsCameraInputs])
  {
    v6 = [(AXSSMotionTrackingInputManager *)self _videoFileInputManager];
    [v6 startMonitoring];
  }

  else
  {
    v7 = [(AXSSMotionTrackingInputManager *)self _videoFileInputs];
    [v7 removeAllObjects];

    v6 = [(AXSSMotionTrackingInputManager *)self _videoFileInputManager];
    [v6 stopMonitoring];
  }

  if ([(AXSSMotionTrackingInputManager *)self _monitoring]&& [(AXSSMotionTrackingInputManager *)self _supportsHIDInputs])
  {
    v9 = [(AXSSMotionTrackingInputManager *)self _hidManager];
    [v9 startMonitoring];
  }

  else
  {
    v8 = [(AXSSMotionTrackingInputManager *)self _hidInputs];
    [v8 removeAllObjects];

    v9 = [(AXSSMotionTrackingInputManager *)self _hidManager];
    [v9 stopMonitoring];
  }
}

- (NSArray)compatibleInputs
{
  v2 = [(AXSSMotionTrackingInputManager *)self _compatibleInputs];
  v3 = [v2 copy];

  return v3;
}

- (NSArray)allInputs
{
  v2 = [(AXSSMotionTrackingInputManager *)self _allInputs];
  v3 = [v2 copy];

  return v3;
}

- (AXSSMotionTrackingInputConfiguration)configuration
{
  v2 = [(AXSSMotionTrackingInputConfiguration *)self->_configuration copy];

  return v2;
}

- (void)setConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(AXSSMotionTrackingInputManager *)self configuration];
  v6 = [v4 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    v7 = AXSSLogForCategory(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(AXSSMotionTrackingInputManager *)v4 setConfiguration:v7];
    }

    v8 = [v4 copy];
    configuration = self->_configuration;
    self->_configuration = v8;

    if ([(AXSSMotionTrackingInputManager *)self _monitoring])
    {
      [(AXSSMotionTrackingInputManager *)self _updateMonitoring];
      [(AXSSMotionTrackingInputManager *)self _inputUpdated];
    }
  }
}

- (BOOL)_supportsMotionTrackingType:(unint64_t)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = [(AXSSMotionTrackingInputManager *)self configuration];
    if (v5)
    {
      v6 = [(AXSSMotionTrackingInputManager *)self configuration];
      LOBYTE(v3) = [v6 supportsTrackingType:v3];
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (BOOL)_supportsCameraInputs
{
  if ([(AXSSMotionTrackingInputManager *)self _supportsMotionTrackingType:1])
  {
    return 1;
  }

  return [(AXSSMotionTrackingInputManager *)self _supportsMotionTrackingType:3];
}

- (void)motionTrackingCameraManager:(id)a3 updatedCompatibleCaptureDevices:(id)a4
{
  v5 = [(AXSSMotionTrackingInputManager *)self _compatibleCameraInputs:a3];
  [v5 removeAllObjects];

  v6 = [(AXSSMotionTrackingInputManager *)self _allCameraInputs];
  [v6 removeAllObjects];

  v7 = [(AXSSMotionTrackingInputManager *)self _cameraManager];
  v8 = [v7 allCaptureDevices];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __94__AXSSMotionTrackingInputManager_motionTrackingCameraManager_updatedCompatibleCaptureDevices___block_invoke;
  v9[3] = &unk_1E8135558;
  v9[4] = self;
  [v8 enumerateObjectsUsingBlock:v9];

  [(AXSSMotionTrackingInputManager *)self _inputUpdated];
}

void __94__AXSSMotionTrackingInputManager_motionTrackingCameraManager_updatedCompatibleCaptureDevices___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _cameraManager];
  v6 = [v5 compatibleCaptureDevices];
  v7 = [v6 containsObject:v4];

  v10 = [AXSSMotionTrackingCameraInput motionTrackingCameraInputWithAVCaptureDevice:v4];

  if (v7 && [*(a1 + 32) _supportsMotionTrackingType:{objc_msgSend(v10, "trackingType")}])
  {
    v8 = [*(a1 + 32) _compatibleCameraInputs];
    [v8 addObject:v10];
  }

  v9 = [*(a1 + 32) _allCameraInputs];
  [v9 addObject:v10];
}

- (void)motionTrackingHIDManager:(id)a3 updatedDevices:(id)a4
{
  v5 = [(AXSSMotionTrackingInputManager *)self _hidInputs:a3];
  [v5 removeAllObjects];

  v6 = [(AXSSMotionTrackingInputManager *)self _hidManager];
  v7 = [v6 devices];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__AXSSMotionTrackingInputManager_motionTrackingHIDManager_updatedDevices___block_invoke;
  v8[3] = &unk_1E8135580;
  v8[4] = self;
  [v7 enumerateObjectsUsingBlock:v8];

  [(AXSSMotionTrackingInputManager *)self _inputUpdated];
}

void __74__AXSSMotionTrackingInputManager_motionTrackingHIDManager_updatedDevices___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [AXSSMotionTrackingHIDInput motionTrackingHIDInputWithDevice:a2];
  if (v3)
  {
    v5 = v3;
    v4 = [*(a1 + 32) _hidInputs];
    [v4 addObject:v5];

    v3 = v5;
  }
}

- (void)motionTrackingVideoFileInputManager:(id)a3 updatedVideoFileInputNames:(id)a4
{
  if ([AXSSMotionTrackingVideoFileInputManager allowVideoFileInput:a3])
  {
    v5 = [(AXSSMotionTrackingInputManager *)self _videoFileInputs];
    [v5 removeAllObjects];

    v6 = [(AXSSMotionTrackingInputManager *)self _videoFileInputManager];
    v7 = [v6 videoFileInputNames];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __97__AXSSMotionTrackingInputManager_motionTrackingVideoFileInputManager_updatedVideoFileInputNames___block_invoke;
    v8[3] = &unk_1E81355A8;
    v8[4] = self;
    [v7 enumerateObjectsUsingBlock:v8];

    [(AXSSMotionTrackingInputManager *)self _inputUpdated];
  }
}

void __97__AXSSMotionTrackingInputManager_motionTrackingVideoFileInputManager_updatedVideoFileInputNames___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 length])
  {
    v3 = [AXSSMotionTrackingVideoFileInput videoFileInputWithName:v6];
    if (v3)
    {
      v4 = v3;
      v5 = [*(a1 + 32) _videoFileInputs];
      [v5 addObject:v4];
    }
  }
}

- (id)_compatibleCameraInputMatchingCaptureDeviceUniqueID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__5;
    v15 = __Block_byref_object_dispose__5;
    v16 = 0;
    v5 = [(AXSSMotionTrackingInputManager *)self _compatibleInputs];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __86__AXSSMotionTrackingInputManager__compatibleCameraInputMatchingCaptureDeviceUniqueID___block_invoke;
    v8[3] = &unk_1E81355D0;
    v9 = v4;
    v10 = &v11;
    [v5 enumerateObjectsUsingBlock:v8];

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __86__AXSSMotionTrackingInputManager__compatibleCameraInputMatchingCaptureDeviceUniqueID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v10;
    v8 = [v7 captureDeviceUniqueID];
    if ([v8 length] && objc_msgSend(v8, "isEqualToString:", *(a1 + 32)))
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)_inputUpdated
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [a1 _compatibleInputs];
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

void __47__AXSSMotionTrackingInputManager__inputUpdated__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [*(a1 + 32) _compatibleInputs];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__AXSSMotionTrackingInputManager__inputUpdated__block_invoke_2;
  v9[3] = &unk_1E81355F8;
  v10 = v6;
  v11 = *(a1 + 32);
  v12 = a4;
  v8 = v6;
  [v7 enumerateObjectsUsingBlock:v9];
}

void __47__AXSSMotionTrackingInputManager__inputUpdated__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 isEqual:*(a1 + 32)] && objc_msgSend(*(a1 + 40), "_supportsMotionTrackingType:", objc_msgSend(v7, "trackingType")))
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *a4 = 1;
    **(a1 + 56) = 1;
  }
}

void __47__AXSSMotionTrackingInputManager__inputUpdated__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([*(a1 + 32) _supportsMotionTrackingType:{objc_msgSend(v7, "trackingType")}])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (AXSSMotionTrackingInputManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setConfiguration:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1C0E8A000, a2, OS_LOG_TYPE_DEBUG, "AXSSMotionTrackingInputManager: setConfinguration %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end