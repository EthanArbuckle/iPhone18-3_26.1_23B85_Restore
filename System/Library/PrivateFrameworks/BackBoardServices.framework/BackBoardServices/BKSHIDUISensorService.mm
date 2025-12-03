@interface BKSHIDUISensorService
+ (id)sharedInstance;
- (BKSHIDUISensorCharacteristics)sensorCharacteristics;
- (BKSHIDUISensorService)init;
- (id)requestUISensorMode:(id)mode;
- (void)_lock_pushCurrentModeToServer;
- (void)proximityDidUnoccludeAfterWake;
@end

@implementation BKSHIDUISensorService

void __29__BKSHIDUISensorService_init__block_invoke_2(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 24));
  [*(a1 + 32) _lock_pushCurrentModeToServer];
  v2 = (*(a1 + 32) + 24);

  os_unfair_lock_unlock(v2);
}

- (void)_lock_pushCurrentModeToServer
{
  v23 = *MEMORY[0x1E69E9840];
  if (([(BSCompoundAssertion *)self->_suppressionAssertion isActive]& 1) == 0)
  {
    orderedContext = [(BSCompoundAssertion *)self->_modeAssertion orderedContext];
    array = [orderedContext array];
    v5 = [BKSHIDUISensorMode _prevailingMode:array];

    lock_prevailingMode = self->_lock_prevailingMode;
    p_lock_prevailingMode = &self->_lock_prevailingMode;
    if (BSEqualObjects())
    {
LABEL_19:

      goto LABEL_20;
    }

    if ([orderedContext count] < 2)
    {
      v8 = BKLogUISensor();
      v10 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (v5)
      {
        if (!v10)
        {
          goto LABEL_12;
        }

        *buf = 138543362;
        v20 = v5;
        v11 = "prevailing client request: %{public}@";
        v12 = v8;
        v13 = 12;
      }

      else
      {
        if (!v10)
        {
          goto LABEL_12;
        }

        *buf = 0;
        v11 = "prevailing client request: none!";
        v12 = v8;
        v13 = 2;
      }

      _os_log_impl(&dword_186345000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
    }

    else
    {
      v8 = BKLogUISensor();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [MEMORY[0x1E698E688] descriptionForRootObject:orderedContext];
        *buf = 138543618;
        v20 = v5;
        v21 = 2114;
        v22 = v9;
        _os_log_impl(&dword_186345000, v8, OS_LOG_TYPE_DEFAULT, "prevailing client request: %{public}@ all modes:%{public}@", buf, 0x16u);
      }
    }

LABEL_12:

    objc_storeStrong(p_lock_prevailingMode, v5);
    if (v5)
    {
      v18 = 0;
      v14 = [MEMORY[0x1E698E750] encodeObject:v5 error:&v18];
      v15 = v18;
      if (!v14)
      {
        v14 = BKLogUISensor();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v20 = v15;
          v21 = 2114;
          v22 = v5;
          _os_log_error_impl(&dword_186345000, v14, OS_LOG_TYPE_ERROR, "error encoding BKSHIDUISensorMode: %{public}@ : %{public}@", buf, 0x16u);
        }

        goto LABEL_18;
      }
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    v16 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
    _BKSHIDRequestUISensorMode(v16, [v14 bs_bytesForMIG], [v14 bs_lengthForMIG]);
LABEL_18:

    goto LABEL_19;
  }

LABEL_20:
  v17 = *MEMORY[0x1E69E9840];
}

void __29__BKSHIDUISensorService_init__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 24));
  [*(a1 + 32) _lock_pushCurrentModeToServer];
  v2 = (*(a1 + 32) + 24);

  os_unfair_lock_unlock(v2);
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_186 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_186, &__block_literal_global_187);
  }

  v3 = sharedInstance_service_188;

  return v3;
}

- (BKSHIDUISensorCharacteristics)sensorCharacteristics
{
  if (sensorCharacteristics_onceToken != -1)
  {
    dispatch_once(&sensorCharacteristics_onceToken, &__block_literal_global_8);
  }

  v3 = sensorCharacteristics_sCharacteristics;

  return v3;
}

void __46__BKSHIDUISensorService_sensorCharacteristics__block_invoke()
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v10 = 0;
  v0 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  v1 = _BKSHIDGetUISensorCharacteristics(v0, &v11, &v10);
  if (v1)
  {
    v2 = v1;
    v3 = BKLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v13) = v2;
      _os_log_error_impl(&dword_186345000, v3, OS_LOG_TYPE_ERROR, "Mach IPC error getting UI sensor characteristics: 0x%x", buf, 8u);
    }
  }

  else
  {
    v3 = [MEMORY[0x1E695DEF0] bs_dataWithVMAllocatedBytes:v11 length:v10];
    if (v3)
    {
      v9 = 0;
      v4 = [MEMORY[0x1E698E750] decodeObjectOfClass:objc_opt_class() fromData:v3 error:&v9];
      v5 = v9;
      v6 = sensorCharacteristics_sCharacteristics;
      sensorCharacteristics_sCharacteristics = v4;

      if (!sensorCharacteristics_sCharacteristics)
      {
        v7 = BKLogCommon();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v13 = v5;
          _os_log_error_impl(&dword_186345000, v7, OS_LOG_TYPE_ERROR, "decoding characteristics failed: %{public}@", buf, 0xCu);
        }
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)proximityDidUnoccludeAfterWake
{
  v2 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);

  _BKSHIDProximityDidUnoccludeAfterScreenWake(v2);
}

- (id)requestUISensorMode:(id)mode
{
  modeAssertion = self->_modeAssertion;
  modeCopy = mode;
  reason = [modeCopy reason];
  v6 = [(BSCompoundAssertion *)modeAssertion acquireForReason:reason withContext:modeCopy];

  return v6;
}

- (BKSHIDUISensorService)init
{
  v17.receiver = self;
  v17.super_class = BKSHIDUISensorService;
  v2 = [(BKSHIDUISensorService *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = MEMORY[0x1E698E658];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __29__BKSHIDUISensorService_init__block_invoke;
    v15[3] = &unk_1E6F46D70;
    v5 = v2;
    v16 = v5;
    v6 = [v4 assertionWithIdentifier:@"BKSHIDUISensorMode mode requests" stateDidChangeHandler:v15];
    modeAssertion = v5->_modeAssertion;
    v5->_modeAssertion = v6;

    v8 = MEMORY[0x1E698E658];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __29__BKSHIDUISensorService_init__block_invoke_2;
    v13[3] = &unk_1E6F46D70;
    v9 = v5;
    v14 = v9;
    v10 = [v8 assertionWithIdentifier:@"BKSHIDUISensorMode suppress mode changes" stateDidChangeHandler:v13];
    suppressionAssertion = v9->_suppressionAssertion;
    v9->_suppressionAssertion = v10;
  }

  return v3;
}

uint64_t __39__BKSHIDUISensorService_sharedInstance__block_invoke()
{
  sharedInstance_service_188 = objc_alloc_init(BKSHIDUISensorService);

  return MEMORY[0x1EEE66BB8]();
}

@end