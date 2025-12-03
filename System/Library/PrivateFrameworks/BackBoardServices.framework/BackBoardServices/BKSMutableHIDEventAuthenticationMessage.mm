@interface BKSMutableHIDEventAuthenticationMessage
- (id)copyWithZone:(_NSZone *)zone;
- (void)setDestinationAuditToken:(id)token;
- (void)setHitTestInformationFromEndEvent:(id)event;
- (void)setHitTestInformationFromStartEvent:(id)event;
@end

@implementation BKSMutableHIDEventAuthenticationMessage

- (id)copyWithZone:(_NSZone *)zone
{
  _init = [+[BKSHIDEventAuthenticationMessage allocWithZone:](BKSHIDEventAuthenticationMessage _init];
  _init[1] = self->super._versionedPID;
  *(_init + 4) = self->super._eventType;
  *(_init + 5) = self->super._targetSlotID;
  *(_init + 6) = self->super._targetContextID;
  v5 = [(BKSHIDEventHitTestLayerInformation *)self->super._hitTestInformationFromStartEvent copy];
  v6 = _init[4];
  _init[4] = v5;

  v7 = [(BKSHIDEventHitTestLayerInformation *)self->super._hitTestInformationFromEndEvent copy];
  v8 = _init[5];
  _init[5] = v7;

  _init[6] = self->super._timestamp;
  _init[7] = self->super._originIdentifier;
  *(_init + 4) = *&self->super._context;
  *(_init + 80) = self->super._registrantEntitled;
  v9 = [(NSData *)self->super._signature copy];
  v10 = _init[11];
  _init[11] = v9;

  return _init;
}

- (void)setHitTestInformationFromEndEvent:(id)event
{
  eventCopy = event;
  hitTestInformationFromEndEvent = self->super._hitTestInformationFromEndEvent;
  p_hitTestInformationFromEndEvent = &self->super._hitTestInformationFromEndEvent;
  if (hitTestInformationFromEndEvent != eventCopy)
  {
    v8 = eventCopy;
    objc_storeStrong(p_hitTestInformationFromEndEvent, event);
    eventCopy = v8;
  }
}

- (void)setHitTestInformationFromStartEvent:(id)event
{
  eventCopy = event;
  hitTestInformationFromStartEvent = self->super._hitTestInformationFromStartEvent;
  p_hitTestInformationFromStartEvent = &self->super._hitTestInformationFromStartEvent;
  if (hitTestInformationFromStartEvent != eventCopy)
  {
    v8 = eventCopy;
    objc_storeStrong(p_hitTestInformationFromStartEvent, event);
    eventCopy = v8;
  }
}

- (void)setDestinationAuditToken:(id)token
{
  v28 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  if (tokenCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = MEMORY[0x1E696AEC0];
      classForCoder = [tokenCopy classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v8 = NSStringFromClass(classForCoder);
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
        selfCopy = self;
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

  self->super._versionedPID = [tokenCopy versionedPID];
  v5 = *MEMORY[0x1E69E9840];
}

@end