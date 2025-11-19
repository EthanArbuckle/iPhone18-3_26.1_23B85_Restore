@interface BKSMutableHIDEventAuthenticationMessage
- (id)copyWithZone:(_NSZone *)a3;
- (void)setDestinationAuditToken:(id)a3;
- (void)setHitTestInformationFromEndEvent:(id)a3;
- (void)setHitTestInformationFromStartEvent:(id)a3;
@end

@implementation BKSMutableHIDEventAuthenticationMessage

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [+[BKSHIDEventAuthenticationMessage allocWithZone:](BKSHIDEventAuthenticationMessage _init];
  v4[1] = self->super._versionedPID;
  *(v4 + 4) = self->super._eventType;
  *(v4 + 5) = self->super._targetSlotID;
  *(v4 + 6) = self->super._targetContextID;
  v5 = [(BKSHIDEventHitTestLayerInformation *)self->super._hitTestInformationFromStartEvent copy];
  v6 = v4[4];
  v4[4] = v5;

  v7 = [(BKSHIDEventHitTestLayerInformation *)self->super._hitTestInformationFromEndEvent copy];
  v8 = v4[5];
  v4[5] = v7;

  v4[6] = self->super._timestamp;
  v4[7] = self->super._originIdentifier;
  *(v4 + 4) = *&self->super._context;
  *(v4 + 80) = self->super._registrantEntitled;
  v9 = [(NSData *)self->super._signature copy];
  v10 = v4[11];
  v4[11] = v9;

  return v4;
}

- (void)setHitTestInformationFromEndEvent:(id)a3
{
  v5 = a3;
  hitTestInformationFromEndEvent = self->super._hitTestInformationFromEndEvent;
  p_hitTestInformationFromEndEvent = &self->super._hitTestInformationFromEndEvent;
  if (hitTestInformationFromEndEvent != v5)
  {
    v8 = v5;
    objc_storeStrong(p_hitTestInformationFromEndEvent, a3);
    v5 = v8;
  }
}

- (void)setHitTestInformationFromStartEvent:(id)a3
{
  v5 = a3;
  hitTestInformationFromStartEvent = self->super._hitTestInformationFromStartEvent;
  p_hitTestInformationFromStartEvent = &self->super._hitTestInformationFromStartEvent;
  if (hitTestInformationFromStartEvent != v5)
  {
    v8 = v5;
    objc_storeStrong(p_hitTestInformationFromStartEvent, a3);
    v5 = v8;
  }
}

- (void)setDestinationAuditToken:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v15 = a3;
  if (v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = [v15 classForCoder];
      if (!v7)
      {
        v7 = objc_opt_class();
      }

      v8 = NSStringFromClass(v7);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [v6 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"destinationAuditToken", v8, v10];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v12 = NSStringFromSelector(a2);
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138544642;
        v17 = v12;
        v18 = 2114;
        v19 = v14;
        v20 = 2048;
        v21 = self;
        v22 = 2114;
        v23 = @"BKSHIDEventAuthenticationMessage.m";
        v24 = 1024;
        v25 = 419;
        v26 = 2114;
        v27 = v11;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v11 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186396868);
    }
  }

  self->super._versionedPID = [v15 versionedPID];
  v5 = *MEMORY[0x1E69E9840];
}

@end