@interface PKPencilDevice
+ (id)activePencil;
+ (id)squeezeThreshold;
- (BOOL)isRollSupported;
- (PKPencilDevice)init;
- (double)baseRollAngle;
- (double)timeIntervalSinceUsed;
- (int64_t)pencilVersionForAnalytics;
- (void)appSceneDidEnterBackground;
- (void)checkIfRollIsSupported:(id)supported;
- (void)dealloc;
- (void)resetRollSupportedState;
- (void)setBaseRollAngle:(double)angle;
- (void)tagAsUsed;
@end

@implementation PKPencilDevice

- (void)resetRollSupportedState
{
  if (self)
  {
    v2 = os_log_create("com.apple.pencilkit", "PencilDevice");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "Clearing roll support state.", v3, 2u);
    }

    *(self + 36) = 0;
  }
}

+ (id)activePencil
{
  if (_MergedGlobals_126 != -1)
  {
    dispatch_once(&_MergedGlobals_126, &__block_literal_global_19);
  }

  v3 = qword_1ED6A5010;

  return v3;
}

void __30__PKPencilDevice_activePencil__block_invoke()
{
  v0 = objc_alloc_init(PKPencilDevice);
  v1 = qword_1ED6A5010;
  qword_1ED6A5010 = v0;
}

- (PKPencilDevice)init
{
  v19[3] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = PKPencilDevice;
  v2 = [(PKPencilDevice *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v2->_rollSupportState = 0;
    v4 = IOHIDManagerCreate(*MEMORY[0x1E695E480], 0);
    v3->_stylusHidManager = v4;
    if (v4)
    {
      v5 = v4;
      v6 = os_log_create("com.apple.pencilkit", "PencilDevice");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEFAULT, "Created stylus HID manager.", buf, 2u);
      }

      v18[0] = @"PrimaryUsagePage";
      v18[1] = @"PrimaryUsage";
      v19[0] = &unk_1F47C10B8;
      v19[1] = &unk_1F47C10D0;
      v18[2] = @"ProductIDArray";
      v19[2] = &unk_1F47C1940;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
      IOHIDManagerSetDeviceMatching(v3->_stylusHidManager, v7);
      stylusHidManager = v3->_stylusHidManager;
      v9 = hidQueue();
      IOHIDManagerSetDispatchQueue(stylusHidManager, v9);

      IOHIDManagerRegisterDeviceMatchingCallback(v3->_stylusHidManager, stylusDeviceAddedCallback, v3);
      IOHIDManagerRegisterDeviceRemovalCallback(v3->_stylusHidManager, stylusDeviceRemovedCallback, v3);
      v10 = v3->_stylusHidManager;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __22__PKPencilDevice_init__block_invoke;
      handler[3] = &__block_descriptor_40_e5_v8__0l;
      handler[4] = v5;
      IOHIDManagerSetCancelHandler(v10, handler);
      v11 = hidQueue();
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __22__PKPencilDevice_init__block_invoke_2;
      v13[3] = &unk_1E82D7148;
      v14 = v3;
      dispatch_async(v11, v13);
    }
  }

  return v3;
}

- (void)dealloc
{
  stylusHidManager = self->_stylusHidManager;
  if (stylusHidManager)
  {
    v4 = hidQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __25__PKPencilDevice_dealloc__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = stylusHidManager;
    dispatch_async(v4, block);
  }

  v5.receiver = self;
  v5.super_class = PKPencilDevice;
  [(PKPencilDevice *)&v5 dealloc];
}

- (int64_t)pencilVersionForAnalytics
{
  pencilVersion = [(PKPencilDevice *)self pencilVersion];
  if ((pencilVersion - 2) >= 3)
  {
    return 3;
  }

  else
  {
    return pencilVersion - 2;
  }
}

- (void)tagAsUsed
{
  v3 = CACurrentMediaTime();

  [(PKPencilDevice *)self _setLastUsedTimestamp:v3];
}

- (double)timeIntervalSinceUsed
{
  v3 = CACurrentMediaTime();

  [(PKPencilDevice *)self _timeIntervalSinceUsedForTimestamp:v3];
  return result;
}

- (void)appSceneDidEnterBackground
{
  [(PKPencilDevice *)self resetRollSupportedState];
  if (self->_rollSupportState)
  {
    self->_rollSupportState = 0;
  }
}

- (void)checkIfRollIsSupported:(id)supported
{
  supportedCopy = supported;
  rollSupportState = self->_rollSupportState;
  if (!rollSupportState)
  {
    v6 = os_log_create("com.apple.pencilkit", "PencilDevice");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEFAULT, "Checking if roll is supported.", buf, 2u);
    }

    v7 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__PKPencilDevice_checkIfRollIsSupported___block_invoke;
    block[3] = &unk_1E82D7AE8;
    block[4] = self;
    v13 = supportedCopy;
    dispatch_async(v7, block);

    v8 = v13;
    goto LABEL_8;
  }

  if (![MEMORY[0x1E696AF00] isMainThread])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __41__PKPencilDevice_checkIfRollIsSupported___block_invoke_2;
    v9[3] = &unk_1E82D7B10;
    v10 = supportedCopy;
    v11 = rollSupportState == 1;
    dispatch_async(MEMORY[0x1E69E96A0], v9);
    v8 = v10;
LABEL_8:

    goto LABEL_9;
  }

  (*(supportedCopy + 2))(supportedCopy, rollSupportState == 1);
LABEL_9:
}

void __41__PKPencilDevice_checkIfRollIsSupported___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (+[PKHoverSettings isHoverActive](PKHoverSettings, "isHoverActive") && +[PKHoverSettings isHoverEnabled])
  {
    IsRollSupported = PKQueryIsRollSupported();
  }

  else
  {
    IsRollSupported = 0;
  }

  v3 = os_log_create("com.apple.pencilkit", "PencilDevice");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = IsRollSupported;
    _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEFAULT, "Found roll supported: %d.", buf, 8u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__PKPencilDevice_checkIfRollIsSupported___block_invoke_25;
  block[3] = &unk_1E82D7AC0;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = IsRollSupported;
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __41__PKPencilDevice_checkIfRollIsSupported___block_invoke_25(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  *(*(a1 + 32) + 36) = v1;
  return (*(*(a1 + 40) + 16))();
}

- (BOOL)isRollSupported
{
  rollSupportState = self->_rollSupportState;
  if (rollSupportState)
  {
    return rollSupportState == 1;
  }

  else
  {
    return PKQueryIsRollSupported();
  }
}

- (double)baseRollAngle
{
  os_unfair_lock_lock(&self->_lock);
  baseRollAngle = self->_baseRollAngle;
  os_unfair_lock_unlock(&self->_lock);
  return baseRollAngle;
}

- (void)setBaseRollAngle:(double)angle
{
  os_unfair_lock_lock(&self->_lock);
  self->_baseRollAngle = angle;

  os_unfair_lock_unlock(&self->_lock);
}

+ (id)squeezeThreshold
{
  v18[2] = *MEMORY[0x1E69E9840];
  v2 = IOHIDEventSystemClientCreateWithType();
  if (v2)
  {
    v3 = v2;
    v17[0] = @"PrimaryUsagePage";
    v17[1] = @"PrimaryUsage";
    v18[0] = &unk_1F47C1148;
    v18[1] = &unk_1F47C1160;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
    IOHIDEventSystemClientSetMatching();
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = IOHIDEventSystemClientCopyServices(v3);
    v6 = [(__CFArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = IOHIDServiceClientCopyProperty(*(*(&v12 + 1) + 8 * v9), @"SqueezeThreshold");
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [(__CFArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v10 = 0;
    }

    CFRelease(v3);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end