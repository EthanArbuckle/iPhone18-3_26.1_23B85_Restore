void BKSHIDEventSendToProcess(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2 <= 0)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"pid > 0"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BKSHIDEventSendToProcess(IOHIDEventRef, pid_t)"}];
      *buf = 138544130;
      v8 = v4;
      v9 = 2114;
      v10 = @"BKSHIDEvent.m";
      v11 = 1024;
      v12 = 180;
      v13 = 2114;
      v14 = v3;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v3 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B9214);
  }

  if (!a1)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"event != ((void *)0)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BKSHIDEventSendToProcess(IOHIDEventRef, pid_t)"}];
      *buf = 138544130;
      v8 = v6;
      v9 = 2114;
      v10 = @"BKSHIDEvent.m";
      v11 = 1024;
      v12 = 181;
      v13 = 2114;
      v14 = v5;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B92E8);
  }

  v2 = *MEMORY[0x1E69E9840];

  _RedirectEventToClient(a1, 0, a2, 0);
}

void BKSHIDEventSendToProcessAndFollowDeferringRules(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v7 = a4;
  if (a2 <= 0)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"pid > 0"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BKSHIDEventSendToProcessAndFollowDeferringRules(IOHIDEventRef, pid_t, BKSHIDEventDeferringToken *__strong, BKSHIDEventDeferringEnvironment *__strong)"}];
      *buf = 138544130;
      v16 = v11;
      v17 = 2114;
      v18 = @"BKSHIDEvent.m";
      v19 = 1024;
      v20 = 187;
      v21 = 2114;
      v22 = v10;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B9468);
  }

  if (!a1)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"event != ((void *)0)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BKSHIDEventSendToProcessAndFollowDeferringRules(IOHIDEventRef, pid_t, BKSHIDEventDeferringToken *__strong, BKSHIDEventDeferringEnvironment *__strong)"}];
      *buf = 138544130;
      v16 = v13;
      v17 = 2114;
      v18 = @"BKSHIDEvent.m";
      v19 = 1024;
      v20 = 188;
      v21 = 2114;
      v22 = v12;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B953CLL);
  }

  v8 = v7;
  _RedirectEventToClient(a1, v7, a2, v14);

  v9 = *MEMORY[0x1E69E9840];
}

_DWORD *BKSHIDEventGetPointerAttributes(uint64_t a1)
{
  Type = IOHIDEventGetType();
  AttributeDataPtr = 0;
  if (Type == 17 && a1)
  {
    if (IOHIDEventGetAttributeDataLength() < 1)
    {
      goto LABEL_8;
    }

    AttributeDataPtr = IOHIDEventGetAttributeDataPtr();
    if (!AttributeDataPtr)
    {
      goto LABEL_9;
    }

    if (AttributeDataPtr[1] && *AttributeDataPtr == 5)
    {
      AttributeDataPtr = BKSHIDEventGetBaseAttributes(a1);
    }

    else
    {
LABEL_8:
      AttributeDataPtr = 0;
    }
  }

LABEL_9:

  return AttributeDataPtr;
}

_DWORD *BKSHIDEventGetKeyboardAttributes(uint64_t a1)
{
  Type = IOHIDEventGetType();
  AttributeDataPtr = 0;
  if (Type == 3 && a1)
  {
    if (IOHIDEventGetAttributeDataLength() < 1)
    {
      goto LABEL_8;
    }

    AttributeDataPtr = IOHIDEventGetAttributeDataPtr();
    if (!AttributeDataPtr)
    {
      goto LABEL_9;
    }

    if (AttributeDataPtr[1] && *AttributeDataPtr == 6)
    {
      AttributeDataPtr = BKSHIDEventGetBaseAttributes(a1);
    }

    else
    {
LABEL_8:
      AttributeDataPtr = 0;
    }
  }

LABEL_9:

  return AttributeDataPtr;
}

_DWORD *BKSHIDEventGetSmartCoverAttributes(uint64_t a1)
{
  v2 = IOHIDEventGetIntegerValue() != 65289 || a1 == 0;
  if (v2 || IOHIDEventGetAttributeDataLength() < 1)
  {
    goto LABEL_10;
  }

  AttributeDataPtr = IOHIDEventGetAttributeDataPtr();
  if (!AttributeDataPtr)
  {
    goto LABEL_11;
  }

  if (AttributeDataPtr[1] && *AttributeDataPtr == 4)
  {
    AttributeDataPtr = BKSHIDEventGetBaseAttributes(a1);
  }

  else
  {
LABEL_10:
    AttributeDataPtr = 0;
  }

LABEL_11:

  return AttributeDataPtr;
}

void *BKSHIDEventAttributeDataWithExpectedClass(uint64_t a1, void *a2)
{
  v3 = BKSHIDEventGetBaseAttributes(a1);
  if (a2)
  {
    if (objc_opt_isKindOfClass())
    {
      a2 = v3;
    }

    else
    {
      a2 = 0;
    }
  }

  v4 = a2;

  return a2;
}

uint64_t BKSHIDEventCopyDisplayIDFromEvent(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (IOHIDEventGetAttributeDataLength() < 1)
  {
    return 0;
  }

  AttributeDataPtr = IOHIDEventGetAttributeDataPtr();
  if (!AttributeDataPtr || !*(AttributeDataPtr + 1) || *AttributeDataPtr - 1 > 2)
  {
    return 0;
  }

  v3 = BKSHIDEventGetBaseAttributes(a1);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 display];
    v6 = [v5 _hardwareIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t BKSHIDEventGetContextIDFromEvent(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = BKSHIDEventGetBaseAttributes(a1);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 token];
    v4 = [v3 _identifierOfCAContext];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t BKSHIDEventGetSourceFromKeyboardEvent(uint64_t result)
{
  if (result)
  {
    v1 = BKSHIDEventGetBaseAttributes(result);
    v2 = [v1 source];

    return v2;
  }

  return result;
}

uint64_t BKSHIDEventGetIsSystemAppEventFromEvent(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = BKSHIDEventGetBaseAttributes(a1);
  v2 = [v1 environment];
  v3 = [v2 _isSystemEnvironment];

  return v3;
}

void BKSHIDEventSetBaseAttributes(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v3 = objc_opt_class();
  if (([v3 isEqual:objc_opt_class()] & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no classes other than BKSHIDEventBaseAttributes allowed, not even %@", objc_opt_class()];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BKSHIDEventSetBaseAttributes(IOHIDEventRef, BKSHIDEventBaseAttributes *__strong)"}];
      *buf = 138544130;
      v9 = v6;
      v10 = 2114;
      v11 = @"BKSHIDEvent.m";
      v12 = 1024;
      v13 = 397;
      v14 = 2114;
      v15 = v5;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B9A60);
  }

  _BKSHIDEventSetAttributes(a1, v7, 1);
  v4 = *MEMORY[0x1E69E9840];
}

void BKSHIDEventSetDigitizerAttributes(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v3 = objc_opt_class();
  if (([v3 isEqual:objc_opt_class()] & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no classes other than BKSHIDEventDigitizerAttributes allowed, not even %@", objc_opt_class()];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BKSHIDEventSetDigitizerAttributes(IOHIDEventRef, BKSHIDEventDigitizerAttributes *__strong)"}];
      *buf = 138544130;
      v9 = v6;
      v10 = 2114;
      v11 = @"BKSHIDEvent.m";
      v12 = 1024;
      v13 = 403;
      v14 = 2114;
      v15 = v5;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B9BDCLL);
  }

  _BKSHIDEventSetAttributes(a1, v7, 2);
  v4 = *MEMORY[0x1E69E9840];
}

void BKSHIDEventSetPointerAttributes(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v3 = objc_opt_class();
  if (([v3 isEqual:objc_opt_class()] & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no classes other than BKSHIDEventPointerAttributes allowed, not even %@", objc_opt_class()];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BKSHIDEventSetPointerAttributes(IOHIDEventRef, BKSHIDEventPointerAttributes *__strong)"}];
      *buf = 138544130;
      v9 = v6;
      v10 = 2114;
      v11 = @"BKSHIDEvent.m";
      v12 = 1024;
      v13 = 409;
      v14 = 2114;
      v15 = v5;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B9D58);
  }

  _BKSHIDEventSetAttributes(a1, v7, 5);
  v4 = *MEMORY[0x1E69E9840];
}

void BKSHIDEventSetKeyboardAttributes(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v3 = objc_opt_class();
  if (([v3 isEqual:objc_opt_class()] & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no classes other than BKSHIDEventKeyboardAttributes allowed, not even %@", objc_opt_class()];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BKSHIDEventSetKeyboardAttributes(IOHIDEventRef, BKSHIDEventKeyboardAttributes *__strong)"}];
      *buf = 138544130;
      v9 = v6;
      v10 = 2114;
      v11 = @"BKSHIDEvent.m";
      v12 = 1024;
      v13 = 415;
      v14 = 2114;
      v15 = v5;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B9ED4);
  }

  _BKSHIDEventSetAttributes(a1, v7, 6);
  v4 = *MEMORY[0x1E69E9840];
}

void BKSHIDEventSetProximityAttributes(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v3 = objc_opt_class();
  if (([v3 isEqual:objc_opt_class()] & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no classes other than BKSHIDEventProximityAttributes allowed, not even %@", objc_opt_class()];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BKSHIDEventSetProximityAttributes(IOHIDEventRef, BKSHIDEventProximityAttributes *__strong)"}];
      *buf = 138544130;
      v9 = v6;
      v10 = 2114;
      v11 = @"BKSHIDEvent.m";
      v12 = 1024;
      v13 = 421;
      v14 = 2114;
      v15 = v5;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BA050);
  }

  _BKSHIDEventSetAttributes(a1, v7, 7);
  v4 = *MEMORY[0x1E69E9840];
}

void BKSHIDEventSetSmartCoverAttributes(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v3 = objc_opt_class();
  if (([v3 isEqual:objc_opt_class()] & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no classes other than BKSHIDEventSmartCoverAttributes allowed, not even %@", objc_opt_class()];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BKSHIDEventSetSmartCoverAttributes(IOHIDEventRef, BKSHIDEventSmartCoverAttributes *__strong)"}];
      *buf = 138544130;
      v9 = v6;
      v10 = 2114;
      v11 = @"BKSHIDEvent.m";
      v12 = 1024;
      v13 = 427;
      v14 = 2114;
      v15 = v5;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BA1CCLL);
  }

  _BKSHIDEventSetAttributes(a1, v7, 4);
  v4 = *MEMORY[0x1E69E9840];
}

void BKSHIDEventSetSimpleInfo(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, char a6)
{
  v15 = objc_opt_new();
  if (a6)
  {
    +[BKSHIDEventDeferringEnvironment systemEnvironment];
  }

  else
  {
    +[BKSHIDEventDeferringEnvironment keyboardFocusEnvironment];
  }
  v12 = ;
  [v15 setEnvironment:v12];
  if (a5)
  {
    v13 = [BKSHIDEventDeferringToken tokenForIdentifierOfCAContext:a5];
    [v15 setToken:v13];
  }

  if (a4)
  {
    v14 = [BKSHIDEventDisplay displayWithHardwareIdentifier:a4];
    [v15 setDisplay:v14];
  }

  [v15 setSource:a2];
  if (a3)
  {
    [v15 setOptions:1];
  }

  _BKSHIDEventSetAttributes(a1, v15, 1);
}

uint64_t BKSHIDEventGetButtonIsCancelledFromButtonEvent(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (IOHIDEventGetType() == 3)
    {
      v2 = BKSHIDEventGetBaseAttributes(v1);
      v1 = [v2 options] & 1;
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t BKSHIDEventGetSystemGestureStatusFromDigitizerEvent(uint64_t a1)
{
  v1 = BKSHIDEventGetDigitizerAttributes(a1);
  v2 = [v1 systemGesturesPossible];

  return v2;
}

uint64_t BKSHIDEventGetIsSystemGestureStateChangeFromDigitizerEvent(uint64_t a1)
{
  v1 = BKSHIDEventGetDigitizerAttributes(a1);
  v2 = [v1 systemGestureStateChange];

  return v2;
}

uint64_t BKSHIDEventGetTouchStreamIdentifier(uint64_t a1)
{
  v1 = BKSHIDEventGetDigitizerAttributes(a1);
  v2 = [v1 touchStreamIdentifier];

  return v2;
}

double BKSHIDEventGetInitialTouchTimestampFromDigitizerEvent(uint64_t a1)
{
  v1 = BKSHIDEventGetDigitizerAttributes(a1);
  [v1 initialTouchTimestamp];
  v3 = v2;

  return v3;
}

float BKSHIDEventGetMaximumForceFromDigitizerEvent(uint64_t a1)
{
  v1 = BKSHIDEventGetDigitizerAttributes(a1);
  [v1 maximumForce];
  v3 = v2;

  return v3;
}

double BKSHIDEventGetPointFromDigitizerEvent(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"digitizerEvent"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CGPoint BKSHIDEventGetPointFromDigitizerEvent(IOHIDEventRef)"];
      *buf = 138544130;
      v10 = v6;
      v11 = 2114;
      v12 = @"BKSHIDEvent.m";
      v13 = 1024;
      v14 = 540;
      v15 = 2114;
      v16 = v5;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BA5F0);
  }

  if (IOHIDEventGetType() != 11)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"event is the wrong type: %d", IOHIDEventGetType()];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CGPoint BKSHIDEventGetPointFromDigitizerEvent(IOHIDEventRef)"];
      *buf = 138544130;
      v10 = v8;
      v11 = 2114;
      v12 = @"BKSHIDEvent.m";
      v13 = 1024;
      v14 = 541;
      v15 = 2114;
      v16 = v7;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BA6C8);
  }

  IOHIDEventGetFloatValue();
  v2 = v1;
  IOHIDEventGetFloatValue();
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t BKSHIDEventDigitizerGetTouchIdentifier(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"pathCollectionEvent"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BKSHIDEventTouchIdentifier BKSHIDEventDigitizerGetTouchIdentifier(IOHIDEventRef, IOHIDEventRef)"}];
      *buf = 138544130;
      v11 = v7;
      v12 = 2114;
      v13 = @"BKSHIDEvent.m";
      v14 = 1024;
      v15 = 548;
      v16 = 2114;
      v17 = v6;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BA810);
  }

  if (!a2)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"pathEvent"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BKSHIDEventTouchIdentifier BKSHIDEventDigitizerGetTouchIdentifier(IOHIDEventRef, IOHIDEventRef)"}];
      *buf = 138544130;
      v11 = v9;
      v12 = 2114;
      v13 = @"BKSHIDEvent.m";
      v14 = 1024;
      v15 = 549;
      v16 = 2114;
      v17 = v8;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BA8E4);
  }

  v2 = _BKSHIDEventGetSubEventInfoFromDigitierEventForPathEvent(a1, a2);
  v3 = [v2 touchIdentifier];

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t BKSHIDEventDigitizerGetTouchUserIdentifier(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"pathCollectionEvent"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"uint32_t BKSHIDEventDigitizerGetTouchUserIdentifier(IOHIDEventRef, IOHIDEventRef)"}];
      *buf = 138544130;
      v11 = v7;
      v12 = 2114;
      v13 = @"BKSHIDEvent.m";
      v14 = 1024;
      v15 = 555;
      v16 = 2114;
      v17 = v6;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BAA2CLL);
  }

  if (!a2)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"pathEvent"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"uint32_t BKSHIDEventDigitizerGetTouchUserIdentifier(IOHIDEventRef, IOHIDEventRef)"}];
      *buf = 138544130;
      v11 = v9;
      v12 = 2114;
      v13 = @"BKSHIDEvent.m";
      v14 = 1024;
      v15 = 556;
      v16 = 2114;
      v17 = v8;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BAB00);
  }

  v2 = _BKSHIDEventGetSubEventInfoFromDigitierEventForPathEvent(a1, a2);
  v3 = [v2 userIdentifier];

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

float BKSHIDEventGetZGradientFromDigitizerEventForPathEvent(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"pathCollectionEvent"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"float BKSHIDEventGetZGradientFromDigitizerEventForPathEvent(IOHIDEventRef, IOHIDEventRef)"}];
      *buf = 138544130;
      v12 = v8;
      v13 = 2114;
      v14 = @"BKSHIDEvent.m";
      v15 = 1024;
      v16 = 569;
      v17 = 2114;
      v18 = v7;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BAC50);
  }

  if (!a2)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"pathEvent"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"float BKSHIDEventGetZGradientFromDigitizerEventForPathEvent(IOHIDEventRef, IOHIDEventRef)"}];
      *buf = 138544130;
      v12 = v10;
      v13 = 2114;
      v14 = @"BKSHIDEvent.m";
      v15 = 1024;
      v16 = 570;
      v17 = 2114;
      v18 = v9;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BAD24);
  }

  v2 = _BKSHIDEventGetSubEventInfoFromDigitierEventForPathEvent(a1, a2);
  [v2 zGradient];
  v4 = v3;

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

double BKSHIDEventGetHitTestPointFromDigitizerEventForPathEvent(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"pathCollectionEvent"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGPoint BKSHIDEventGetHitTestPointFromDigitizerEventForPathEvent(IOHIDEventRef, IOHIDEventRef)"}];
      *buf = 138544130;
      v16 = v10;
      v17 = 2114;
      v18 = @"BKSHIDEvent.m";
      v19 = 1024;
      v20 = 576;
      v21 = 2114;
      v22 = v9;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BAED4);
  }

  if (!a2)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"pathEvent"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGPoint BKSHIDEventGetHitTestPointFromDigitizerEventForPathEvent(IOHIDEventRef, IOHIDEventRef)"}];
      *buf = 138544130;
      v16 = v12;
      v17 = 2114;
      v18 = @"BKSHIDEvent.m";
      v19 = 1024;
      v20 = 577;
      v21 = 2114;
      v22 = v11;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BAFA8);
  }

  v2 = _BKSHIDEventGetSubEventInfoFromDigitierEventForPathEvent(a1, a2);
  v3 = v2;
  if (v2)
  {
    [v2 hitTestLocationX];
    v5 = v4;
    [v3 hitTestLocationY];
  }

  else
  {
    if (IOHIDEventGetType() != 11)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"event is the wrong type: %d", IOHIDEventGetType()];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGPoint BKSHIDEventGetHitTestPointFromDigitizerEventForPathEvent(IOHIDEventRef, IOHIDEventRef)"}];
        *buf = 138544130;
        v16 = v14;
        v17 = 2114;
        v18 = @"BKSHIDEvent.m";
        v19 = 1024;
        v20 = 582;
        v21 = 2114;
        v22 = v13;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
      }

      [v13 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863BB080);
    }

    IOHIDEventGetFloatValue();
    v5 = v6;
    IOHIDEventGetFloatValue();
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

double BKSHIDEventGetPrecisePointFromDigitizerEventForPathEvent(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"pathCollectionEvent"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGPoint BKSHIDEventGetPrecisePointFromDigitizerEventForPathEvent(IOHIDEventRef, IOHIDEventRef)"}];
      *buf = 138544130;
      v16 = v10;
      v17 = 2114;
      v18 = @"BKSHIDEvent.m";
      v19 = 1024;
      v20 = 588;
      v21 = 2114;
      v22 = v9;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BB22CLL);
  }

  if (!a2)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"pathEvent"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGPoint BKSHIDEventGetPrecisePointFromDigitizerEventForPathEvent(IOHIDEventRef, IOHIDEventRef)"}];
      *buf = 138544130;
      v16 = v12;
      v17 = 2114;
      v18 = @"BKSHIDEvent.m";
      v19 = 1024;
      v20 = 589;
      v21 = 2114;
      v22 = v11;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BB300);
  }

  v2 = _BKSHIDEventGetSubEventInfoFromDigitierEventForPathEvent(a1, a2);
  v3 = v2;
  if (v2)
  {
    [v2 preciseLocationX];
    v5 = v4;
    [v3 preciseLocationY];
  }

  else
  {
    if (IOHIDEventGetType() != 11)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"event is the wrong type: %d", IOHIDEventGetType()];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGPoint BKSHIDEventGetPrecisePointFromDigitizerEventForPathEvent(IOHIDEventRef, IOHIDEventRef)"}];
        *buf = 138544130;
        v16 = v14;
        v17 = 2114;
        v18 = @"BKSHIDEvent.m";
        v19 = 1024;
        v20 = 596;
        v21 = 2114;
        v22 = v13;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
      }

      [v13 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863BB3D8);
    }

    IOHIDEventGetFloatValue();
    v5 = v6;
    IOHIDEventGetFloatValue();
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

void BKSHIDEventSetDigitizerInfoWithSubEventInfoAndTouchStreamIdentifier(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, double a9, float a10)
{
  if (a1)
  {
    LODWORD(v11) = a7;
    v27 = objc_alloc_init(BKSHIDEventDigitizerAttributes);
    v20 = [BKSHIDEventDeferringToken tokenForIdentifierOfCAContext:a2];
    [(BKSHIDEventBaseAttributes *)v27 setToken:v20];

    if (a6)
    {
      v22 = [BKSHIDEventDisplay displayWithHardwareIdentifier:a6];
      [(BKSHIDEventBaseAttributes *)v27 setDisplay:v22];
    }

    *&v21 = a10;
    [(BKSHIDEventDigitizerAttributes *)v27 setMaximumForce:v21];
    [(BKSHIDEventDigitizerAttributes *)v27 setInitialTouchTimestamp:a9];
    [(BKSHIDEventDigitizerAttributes *)v27 setTouchStreamIdentifier:a5];
    [(BKSHIDEventDigitizerAttributes *)v27 setSystemGesturesPossible:a3 != 0];
    [(BKSHIDEventDigitizerAttributes *)v27 setSystemGestureStateChange:a4 != 0];
    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v11)
    {
      v11 = v11;
      v24 = a8 + 16;
      do
      {
        v25 = objc_alloc_init(BKSHIDEventDigitizerPathAttributes);
        [(BKSHIDEventDigitizerPathAttributes *)v25 setPathIndex:*(v24 - 16)];
        [(BKSHIDEventDigitizerPathAttributes *)v25 setTouchIdentifier:*(v24 - 12)];
        [(BKSHIDEventDigitizerPathAttributes *)v25 setUserIdentifier:*(v24 - 8)];
        LODWORD(v26) = *v24;
        [(BKSHIDEventDigitizerPathAttributes *)v25 setZGradient:v26];
        [(BKSHIDEventDigitizerPathAttributes *)v25 setLocus:*(v24 - 4)];
        [(BKSHIDEventDigitizerPathAttributes *)v25 setHitTestLocationX:*(v24 + 4)];
        [(BKSHIDEventDigitizerPathAttributes *)v25 setHitTestLocationY:*(v24 + 8)];
        [(BKSHIDEventDigitizerPathAttributes *)v25 setPreciseLocationX:*(v24 + 12)];
        [(BKSHIDEventDigitizerPathAttributes *)v25 setPreciseLocationY:*(v24 + 16)];
        [v23 addObject:v25];

        v24 += 36;
        --v11;
      }

      while (v11);
    }

    [(BKSHIDEventDigitizerAttributes *)v27 setPathAttributes:v23];
    _BKSHIDEventSetAttributes(a1, v27, 2);
  }
}

__CFString *NSStringFromBKSHIDEventSmartCoverState(int a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E6F47AD0[a1 - 1];
  }
}

uint64_t BKSHIDEventGetSmartCoverStateFromEvent(uint64_t a1)
{
  v1 = BKSHIDEventGetSmartCoverAttributes(a1);
  v2 = [v1 smartCoverState];

  return v2;
}

void BKSHIDEventSetSmartCoverInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = BKSHIDEventGetSmartCoverAttributes(a1);
    if (!v6)
    {
      v6 = objc_alloc_init(BKSHIDEventSmartCoverAttributes);
    }

    v7 = v6;
    [(BKSHIDEventSmartCoverAttributes *)v6 setSmartCoverState:a2];
    [(BKSHIDEventSmartCoverAttributes *)v7 setWakeAnimationStyle:a3];
    _BKSHIDEventSetAttributes(a1, v7, 4);
  }
}

void BKSHIDEventSetRemoteTimestamp(uint64_t a1, uint64_t a2)
{
  _BKSHIDEventClearRemoteTimestamp(a1);
  if (a2)
  {
    v3 = *MEMORY[0x1E695E480];
    VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
    IOHIDEventAppendEvent();
    CFRelease(VendorDefinedEvent);
  }
}

void _BKSHIDEventClearRemoteTimestamp(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = ___BKSHIDEventClearRemoteTimestamp_block_invoke;
  v15[3] = &unk_1E6F47A48;
  v3 = v2;
  v16 = v3;
  BKSHIDEventEnumerateChildEvents(a1, v15);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        IOHIDEventRemoveEvent();
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v6);
  }

  BKSHIDEventEnumerateChildEvents(a1, &__block_literal_global_426);
  v10 = *MEMORY[0x1E69E9840];
}

void BKSHIDEventEnumerateChildEvents(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      Children = IOHIDEventGetChildren();
      if (Children)
      {
        v6 = Children;
        Count = CFArrayGetCount(Children);
        v11 = 0;
        if (Count >= 1)
        {
          v8 = Count;
          v9 = 1;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v6, v9 - 1);
            (v4)[2](v4, ValueAtIndex, v9 - 1, &v11);
            if (v9 >= v8)
            {
              break;
            }

            ++v9;
          }

          while ((v11 & 1) == 0);
        }
      }
    }
  }
}

__CFString *NSStringFromBKSHIDEventSource(uint64_t a1)
{
  if (a1 >= 0xE)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<unknown:0x%X>", a1];
  }

  else
  {
    v2 = off_1E6F47AE8[a1];
  }

  return v2;
}

__CFString *NSStringFromBKSHIDTouchLocus(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<unknown:%d>", a1];
  }

  else
  {
    v2 = off_1E6F47B58[a1];
  }

  return v2;
}

__CFString *NSStringFromBKSTouchStreamIdentifier(uint64_t a1)
{
  if (a1 < 6 && ((0x2Fu >> a1) & 1) != 0)
  {
    v2 = off_1E6F47B80[a1];
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<unknown: %u>", a1];
  }

  return v2;
}

__CFString *BKNSStringFromIOHIDGenericGestureType(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 5)
    {
      v2 = @"squeeze";
    }

    else if (a1 == 1)
    {
      v2 = @"swipe";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<unknown:%d>", a1];
    }
  }

  else
  {
    v2 = @"tap";
  }

  return v2;
}

__CFString *_BKSHIDEventGetConciseDescriptionGenericGesture()
{
  IntegerValue = IOHIDEventGetIntegerValue();
  switch(IntegerValue)
  {
    case 5:
      v7 = MEMORY[0x1E696AEC0];
      Phase = IOHIDEventGetPhase();
      v4 = BKNSStringFromIOHIDEventPhase(Phase);
      v13 = @"squeeze";
      v14 = v4;
      v9 = @"%@ phase:%@";
      goto LABEL_7;
    case 1:
      IOHIDEventGetDoubleValue();
      v6 = v5;
      v7 = MEMORY[0x1E696AEC0];
      v8 = IOHIDEventGetPhase();
      v4 = BKNSStringFromIOHIDEventPhase(v8);
      v15 = v4;
      v14 = v6;
      v13 = @"swipe";
      v9 = @"%@ progress:%g phase:%@";
LABEL_7:
      [v7 stringWithFormat:v9, v13, v14, v15];
      goto LABEL_8;
    case 0:
      v1 = IOHIDEventGetIntegerValue();
      v2 = MEMORY[0x1E696AEC0];
      v3 = IOHIDEventGetPhase();
      v4 = BKNSStringFromIOHIDEventPhase(v3);
      [v2 stringWithFormat:@"%@ count:%d phase:%@", @"tap", v1, v4];
      v11 = LABEL_8:;

      goto LABEL_10;
  }

  v11 = @"unknown";
LABEL_10:

  return v11;
}

__CFString *BKNSStringFromIOHIDEventPhase(uint64_t a1)
{
  if (a1)
  {
    if ((a1 ^ (a1 - 1)) <= (a1 - 1))
    {
      v3 = [MEMORY[0x1E695DF70] array];
      for (i = 0; i != 16; ++i)
      {
        if (((1 << i) & a1) != 0)
        {
          v5 = _BKSPhaseStringForBit(a1);
          [v3 addObject:v5];
        }
      }

      v2 = [v3 componentsJoinedByString:{@", "}];
    }

    else
    {
      v2 = _BKSPhaseStringForBit(a1);
    }
  }

  else
  {
    v2 = @"undefined";
  }

  return v2;
}

__CFString *_BKSPhaseStringForBit(uint64_t a1)
{
  if (a1 > 15)
  {
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        v2 = @"momentumEnd";

        return v2;
      }

      if (a1 == 128)
      {
        v2 = @"mayBegin";

        return v2;
      }
    }

    else
    {
      if (a1 == 16)
      {
        v2 = @"momentumContinue";

        return v2;
      }

      if (a1 == 32)
      {
        v2 = @"momentumStart";

        return v2;
      }
    }

LABEL_36:
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown:%X", a1];

    return v2;
  }

  if (a1 > 3)
  {
    if (a1 == 4)
    {
      v2 = @"ended";

      return v2;
    }

    if (a1 == 8)
    {
      v2 = @"cancelled";

      return v2;
    }

    goto LABEL_36;
  }

  if (a1 != 1)
  {
    if (a1 == 2)
    {
      v2 = @"changed";

      return v2;
    }

    goto LABEL_36;
  }

  v2 = @"began";

  return v2;
}

id _BKSHIDEventGetConciseDescriptionPointer(uint64_t a1)
{
  v59 = *MEMORY[0x1E69E9840];
  if (IOHIDEventGetEvent())
  {
    IOHIDEventGetFloatValue();
    v3 = v2 != 0.0;
    IOHIDEventGetFloatValue();
    v5 = v4 != 0.0 || v3;
    if (IOHIDEventGetEvent())
    {
      v6 = IOHIDEventGetIntegerValue() != 0;
    }

    else
    {
      v6 = 0;
    }

    v18 = MEMORY[0x1E696AEC0];
    v9 = [MEMORY[0x1E696AD98] numberWithBool:v5];
    v19 = [MEMORY[0x1E696AD98] numberWithBool:v6];
    v20 = [v18 stringWithFormat:@"Pointer movement:%@ buttonDown:%@", v9, v19];
  }

  else
  {
    v7 = IOHIDEventGetChildren();
    v8 = [MEMORY[0x1E695DF70] array];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v54;
      do
      {
        v14 = 0;
        do
        {
          if (*v54 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v53 + 1) + 8 * v14);
          Type = IOHIDEventGetType();
          if (Type <= 0x11)
          {
            if (((1 << Type) & 0x8F6) != 0)
            {
              [v8 addObject:v15];
              v12 = 1;
            }

            else if (Type == 17)
            {
              v12 = 1;
            }
          }

          ++v14;
        }

        while (v11 != v14);
        v17 = [v9 countByEnumeratingWithState:&v53 objects:v58 count:16];
        v11 = v17;
      }

      while (v17);
    }

    else
    {
      v12 = 0;
    }

    IOHIDEventGetFloatValue();
    v22 = v21;
    IOHIDEventGetFloatValue();
    v24 = v23;
    IntegerValue = IOHIDEventGetIntegerValue();
    v26 = BKSHIDEventGetPointerAttributes(a1);
    v27 = v26;
    if (v26)
    {
      v28 = [v26 activeModifiers];
      v29 = [v27 pointerEdgeMask];
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }

    v20 = [MEMORY[0x1E696AD60] stringWithFormat:@"Pointer"];
    v30 = v22 == 0.0;
    if (v24 != 0.0)
    {
      v30 = 0;
    }

    if ((v30 & v12 & 1) == 0)
    {
      v31 = [v27 contextMove];
      v32 = NSStringFromBKSHIDEventContextType([v27 contextType]);
      v33 = v32;
      if (v31)
      {
        v34 = NSStringFromBKSHIDEventContextMove(v31);
        [v20 appendFormat:@" %g, %g (%@ %@)", *&v22, *&v24, v33, v34];
      }

      else
      {
        [v20 appendFormat:@" %g, %g (%@)", *&v22, *&v24, v32];
      }
    }

    v35 = [v27 authenticationMessage];

    if (v35)
    {
      [v20 appendString:@" auth"];
    }

    v36 = [v27 hitTestSecurityAnalysis];

    if (v36)
    {
      [v20 appendString:@" sa"];
    }

    if (IntegerValue)
    {
      [v20 appendFormat:@" buttonMask:%X", IntegerValue];
    }

    if (v28)
    {
      v37 = NSStringFromBKSKeyModifierFlags(v28);
      [v20 appendFormat:@" modifiers:%@", v37];
    }

    if (v29)
    {
      v38 = NSStringFromBKSHIDEventScreenEdgeMask(v29);
      [v20 appendFormat:@" edges:%@", v38];
    }

    v39 = [v27 fingerDownCount];
    if (([v27 options] & 2) != 0)
    {
      if (v39 < 1)
      {
        [v20 appendFormat:@" touchUp", v48];
      }

      else
      {
        [v20 appendFormat:@" touchChanged fingersDown:%d", v39];
      }
    }

    else if (v39)
    {
      [v20 appendFormat:@" fingersDown:%d", v39];
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v19 = v8;
    v40 = [v19 countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v50;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v50 != v42)
          {
            objc_enumerationMutation(v19);
          }

          v44 = *(*(&v49 + 1) + 8 * i);
          [v20 appendString:@" "];
          v45 = BKSHIDEventGetConciseDescription(v44);
          [v20 appendString:v45];
        }

        v41 = [v19 countByEnumeratingWithState:&v49 objects:v57 count:16];
      }

      while (v41);
    }
  }

  v46 = *MEMORY[0x1E69E9840];

  return v20;
}

void _BKSHIDEventAppendEventFlags(uint64_t a1, void *a2)
{
  v9 = a2;
  IntegerValue = IOHIDEventGetIntegerValue();
  v3 = IOHIDEventGetIntegerValue();
  v4 = IOHIDEventGetIntegerValue();
  v5 = IOHIDEventGetIntegerValue();
  if ((IntegerValue & 0x80) != 0)
  {
    [v9 appendString:@"cancel" withName:0];
  }

  v6 = (v3 != 0) & (IntegerValue >> 1);
  if ((IntegerValue & 0x20000) != 0)
  {
    [v9 appendString:@"tap" withName:0];
    if (!v6)
    {
LABEL_5:
      if ((IntegerValue & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if (!v6)
  {
    goto LABEL_5;
  }

  [v9 appendString:@"down" withName:0];
  if ((IntegerValue & 4) == 0)
  {
LABEL_6:
    if ((IntegerValue & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v3)
  {
    [v9 appendString:@"move" withName:0];
    goto LABEL_15;
  }

  [v9 appendString:@"move (not touching!)" withName:0];
  if ((IntegerValue & 2) != 0)
  {
LABEL_13:
    if (!v3)
    {
      v7 = @"up";
LABEL_23:
      [v9 appendString:v7 withName:0];
      goto LABEL_24;
    }
  }

LABEL_15:
  if ((IntegerValue & 3) == 1)
  {
    if (IOHIDEventGetIntegerValue())
    {
      v8 = @"range (in)";
    }

    else
    {
      v8 = @"range (out)";
    }

    [v9 appendString:v8 withName:0];
  }

  if (!(((IntegerValue & 0x40) == 0) | (v3 != 0) & (IntegerValue >> 1)) && (IntegerValue & 0x84) == 0)
  {
    v7 = @"attribute";
    goto LABEL_23;
  }

LABEL_24:
  if (v4)
  {
    [v9 appendString:@"will-update" withName:0];
  }

  if (v5)
  {
    [v9 appendString:@"did-update" withName:0];
  }

  if ((IntegerValue & 0x800) != 0)
  {
    [v9 appendString:@"edge" withName:0];
    if ((IntegerValue & 0x1000) == 0)
    {
LABEL_30:
      if ((IntegerValue & 0x2000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_38;
    }
  }

  else if ((IntegerValue & 0x1000) == 0)
  {
    goto LABEL_30;
  }

  [v9 appendString:@"corner" withName:0];
  if ((IntegerValue & 0x2000) == 0)
  {
LABEL_31:
    if ((IntegerValue & 0x40000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_38:
  [v9 appendString:@"swipe-pending" withName:0];
  if ((IntegerValue & 0x40000) != 0)
  {
LABEL_32:
    [v9 appendString:@"swipe-locked" withName:0];
  }

LABEL_33:
}

id _BKSHIDEventGetConciseDescriptionScroll()
{
  v0 = IOHIDEventGetChildren();
  if ([v0 firstObject])
  {
    IOHIDEventGetType();
  }

  IOHIDEventGetFloatValue();
  v2 = v1;
  IOHIDEventGetFloatValue();
  v4 = v3;
  IOHIDEventGetFloatValue();
  v6 = v5;
  Phase = IOHIDEventGetPhase();
  if (Phase)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = BKNSStringFromIOHIDEventPhase(Phase);
    v10 = [v8 stringWithFormat:@"Scroll %g, %g (%@)", v2, v4, v9];
  }

  else
  {
    if (v6 == 0.0)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Scroll %g, %g", v2, v4, v12];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Scroll x:%g y:%g z:%g", v2, v4, *&v6];
    }
    v10 = ;
  }

  return v10;
}

id _BKSHIDEventGetConciseDescriptionScale()
{
  Phase = IOHIDEventGetPhase();
  IOHIDEventGetFloatValue();
  v2 = v1;
  IOHIDEventGetFloatValue();
  v4 = v3;
  IOHIDEventGetFloatValue();
  v6 = v5;
  v7 = MEMORY[0x1E696AEC0];
  v8 = BKNSStringFromIOHIDEventPhase(Phase);
  v9 = v8;
  if (v2 == 0.0 && v4 == 0.0)
  {
    [v7 stringWithFormat:@"Scale (%@) z:%g", v8, v6, v12, v13];
  }

  else
  {
    [v7 stringWithFormat:@"Scale (%@) x:%g y%g z:%g", v8, *&v2, *&v4, v6];
  }
  v10 = ;

  return v10;
}

id _BKSHIDEventGetConciseDescriptionTranslation()
{
  Phase = IOHIDEventGetPhase();
  IOHIDEventGetFloatValue();
  v2 = v1;
  IOHIDEventGetFloatValue();
  v4 = v3;
  IOHIDEventGetFloatValue();
  v6 = v5;
  v7 = MEMORY[0x1E696AEC0];
  v8 = BKNSStringFromIOHIDEventPhase(Phase);
  v9 = v8;
  if (v6 == 0.0)
  {
    [v7 stringWithFormat:@"Translation (%@) %g, %g", v8, v2, v4, v12];
  }

  else
  {
    [v7 stringWithFormat:@"Translation (%@) x:%g y:%g z:%g", v8, v2, v4, *&v6];
  }
  v10 = ;

  return v10;
}

id _BKSHIDEventGetConciseDescriptionRotation()
{
  Phase = IOHIDEventGetPhase();
  IOHIDEventGetFloatValue();
  v2 = v1;
  IOHIDEventGetFloatValue();
  v4 = v3;
  IOHIDEventGetFloatValue();
  v6 = v5;
  v7 = MEMORY[0x1E696AEC0];
  v8 = BKNSStringFromIOHIDEventPhase(Phase);
  v9 = v8;
  if (v2 == 0.0 && v4 == 0.0)
  {
    [v7 stringWithFormat:@"Rotation (%@) z:%g", v8, v6, v12, v13];
  }

  else
  {
    [v7 stringWithFormat:@"Rotation (%@) x:%g y%g z:%g", v8, *&v2, *&v4, v6];
  }
  v10 = ;

  return v10;
}

id _BKSHIDEventGetConciseDescriptionVendorDefined()
{
  IntegerValue = IOHIDEventGetIntegerValue();
  v1 = IOHIDEventGetIntegerValue();
  if (IntegerValue == 65280 && v1 == 17)
  {
    _BKSHIDEventGetConciseDescriptionVendorDefinedForceStageEvent();
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"VendorDefined page:%X usage:%X", IntegerValue, v1];
  }
  v3 = ;

  return v3;
}

id _BKSHIDEventGetConciseDescriptionVendorDefinedForceStageEvent()
{
  IOHIDEventGetVendorDefinedData();
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<corrupt data>", v2, v3];

  return v0;
}

__CFString *NSStringFromBKSHIDForceStageTransition(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<invalid:%X>", a1];
  }

  else
  {
    v2 = off_1E6F47C58[a1];
  }

  return v2;
}

id _BKSHIDEventGetEventInfoDescription(id a1)
{
  v1 = a1;
  if (a1)
  {
    if (IOHIDEventGetAttributeDataLength() >= 1 && (AttributeDataPtr = IOHIDEventGetAttributeDataPtr()) != 0 && *(AttributeDataPtr + 1) && *AttributeDataPtr - 1 <= 6)
    {
      v3 = BKSHIDEventGetBaseAttributes(v1);
      v4 = v3;
      if (v3)
      {
        v1 = [v3 description];
      }

      else
      {
        v1 = 0;
      }
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

id BKSHIDEventDescription(void *a1)
{
  v2 = _BKSHIDEventGetEventInfoDescription(a1);
  v3 = CFCopyDescription(a1);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@", v2, v3];

  return v4;
}

void BKSHIDEventEnumerateUpdatesWithBlock(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"why so nil, bro?"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BKSHIDEventEnumerateUpdatesWithBlock(IOHIDEventRef, __strong BKSHIDEventUpdateHandler)"}];
      *buf = 138544130;
      v15 = v9;
      v16 = 2114;
      v17 = @"BKSHIDEvent.m";
      v18 = 1024;
      v19 = 2015;
      v20 = 2114;
      v21 = v8;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BD43CLL);
  }

  v4 = v3;
  if (IOHIDEventGetType() == 11)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    v6 = IOHIDEventGetIntegerValue();
    if (IntegerValue)
    {
      if (v6)
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __BKSHIDEventEnumerateUpdatesWithBlock_block_invoke;
        v10[3] = &unk_1E6F47A00;
        v12 = IntegerValue;
        v13 = v6;
        v11 = v4;
        BKSHIDEventEnumerateChildEvents(a1, v10);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __BKSHIDEventEnumerateUpdatesWithBlock_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  IntegerValue = IOHIDEventGetIntegerValue();
  result = IOHIDEventGetIntegerValue();
  if (IntegerValue && result)
  {
    v4 = *(a1 + 40);
    if (v4 != IntegerValue)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"child event should have the same generation as parent (child:%ld parent:%ld)", IntegerValue, v4];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BKSHIDEventEnumerateUpdatesWithBlock(IOHIDEventRef, __strong BKSHIDEventUpdateHandler)_block_invoke"}];
        *buf = 138544130;
        v14 = v10;
        v15 = 2114;
        v16 = @"BKSHIDEvent.m";
        v17 = 1024;
        v18 = 2026;
        v19 = 2114;
        v20 = v9;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
      }

      [v9 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863BD61CLL);
    }

    v5 = *(a1 + 48);
    if ((result & ~v5) != 0)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"child update mask should be a subset of parent update mask (child:%X parent:%X)", result, v5];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BKSHIDEventEnumerateUpdatesWithBlock(IOHIDEventRef, __strong BKSHIDEventUpdateHandler)_block_invoke"}];
        *buf = 138544130;
        v14 = v12;
        v15 = 2114;
        v16 = @"BKSHIDEvent.m";
        v17 = 1024;
        v18 = 2027;
        v19 = 2114;
        v20 = v11;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
      }

      [v11 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863BD6ECLL);
    }

    v6 = *(*(a1 + 32) + 16);
    v7 = *MEMORY[0x1E69E9840];

    return v6();
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t _BKSHIDEventMatchingPredicateCore(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't pass nil for predicate. That's illegal."];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"IOHIDEventRef _BKSHIDEventMatchingPredicateCore(IOHIDEventRef, NSInteger, BOOL (^__strong)(IOHIDEventRef, NSInteger))"}];
      *buf = 138544130;
      v23 = v16;
      v24 = 2114;
      v25 = @"BKSHIDEvent.m";
      v26 = 1024;
      v27 = 2036;
      v28 = 2114;
      v29 = v15;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v15 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BD910);
  }

  v6 = v5;
  if (a1 && ((*(v5 + 2))(v5, a1, a2) & 1) == 0)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = IOHIDEventGetChildren();
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = _BKSHIDEventMatchingPredicateCore(*(*(&v17 + 1) + 8 * v11), a2 + 1, v6);
          if (v12)
          {
            a1 = v12;
            goto LABEL_14;
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    a1 = 0;
LABEL_14:
  }

  v13 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t BKSHIDEventDigitizerDetachTouchesWithIdentifiers(void *a1, int a2)
{
  v3 = BKSHIDEventDigitizerDetachTouchesWithIdentifiers_onceToken;
  v4 = a1;
  if (v3 != -1)
  {
    dispatch_once(&BKSHIDEventDigitizerDetachTouchesWithIdentifiers_onceToken, &__block_literal_global_14558);
  }

  v5 = BKSHIDEventDigitizerDetachTouches(v4, a2, BKSHIDEventDigitizerDetachTouchesWithIdentifiers_policy, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8));

  return v5;
}

uint64_t BKSHIDEventDigitizerDetachTouches(void *a1, int a2, void *a3, double a4, double a5)
{
  v46 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a3;
  v11 = [v9 count];
  if (v11 <= 0)
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"need more than zero identifiers"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL BKSHIDEventDigitizerDetachTouches(NSArray<NSNumber *> *__strong _Nonnull, uint32_t, BKSHIDTouchRoutingPolicy *__strong _Nonnull, CGPoint)"}];
      *buf = 138544130;
      v39 = v31;
      v40 = 2114;
      v41 = @"BKSHIDEvent.m";
      v42 = 1024;
      v43 = 2084;
      v44 = 2114;
      v45 = v30;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v30 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BDD18);
  }

  v12 = v11;
  if (v11 >= 0x20)
  {
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"need less than 32 identifiers"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL BKSHIDEventDigitizerDetachTouches(NSArray<NSNumber *> *__strong _Nonnull, uint32_t, BKSHIDTouchRoutingPolicy *__strong _Nonnull, CGPoint)"}];
      *buf = 138544130;
      v39 = v33;
      v40 = 2114;
      v41 = @"BKSHIDEvent.m";
      v42 = 1024;
      v43 = 2085;
      v44 = 2114;
      v45 = v32;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v32 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BDDE0);
  }

  if (!v10)
  {
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"need a policy (a default one will do)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL BKSHIDEventDigitizerDetachTouches(NSArray<NSNumber *> *__strong _Nonnull, uint32_t, BKSHIDTouchRoutingPolicy *__strong _Nonnull, CGPoint)"}];
      *buf = 138544130;
      v39 = v35;
      v40 = 2114;
      v41 = @"BKSHIDEvent.m";
      v42 = 1024;
      v43 = 2087;
      v44 = 2114;
      v45 = v34;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v34 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BDEA8);
  }

  MEMORY[0x1EEE9AC00]();
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  for (i = 0; i != v12; ++i)
  {
    v16 = [v9 objectAtIndex:i];
    *&v14[4 * i] = [v16 unsignedIntValue];
  }

  v17 = [MEMORY[0x1E69E58C0] bs_secureDataFromObject:v10];
  if (!v17)
  {
    v23 = BKLogCommon();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 138543362;
    v39 = v10;
    v24 = "Error encoding policy: %{public}@";
    goto LABEL_18;
  }

  v37 = 0;
  v18 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  v19 = a4;
  v20 = a5;
  v21 = _BKSHIDDigitizerTouchDetach(v18, v19, v20, v14, v12, a2, [v17 bytes], objc_msgSend(v17, "length"), &v37);
  if (!v21)
  {
    if (v37)
    {
      v27 = 1;
      goto LABEL_12;
    }

    v23 = BKLogCommon();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 138543362;
    v39 = v9;
    v24 = "Touches not found:%{public}@";
LABEL_18:
    v25 = v23;
    v26 = 12;
    goto LABEL_19;
  }

  v22 = v21;
  v23 = BKLogCommon();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v39) = v22;
    v24 = "Error detaching touches: 0x%X";
    v25 = v23;
    v26 = 8;
LABEL_19:
    _os_log_error_impl(&dword_186345000, v25, OS_LOG_TYPE_ERROR, v24, buf, v26);
  }

LABEL_11:

  v27 = 0;
LABEL_12:

  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

uint64_t __BKSHIDEventDigitizerDetachTouchesWithIdentifiers_block_invoke()
{
  v0 = objc_alloc_init(BKSHIDTouchRoutingPolicy);
  v1 = BKSHIDEventDigitizerDetachTouchesWithIdentifiers_policy;
  BKSHIDEventDigitizerDetachTouchesWithIdentifiers_policy = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t BKSHIDEventDigitizerSetTouchOffset(int a1, double a2, double a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"need nonzero userIdentififer"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BKSHIDEventDigitizerSetTouchOffset(uint32_t, CGPoint)"}];
      v13 = 138544130;
      v14 = v12;
      v15 = 2114;
      v16 = @"BKSHIDEvent.m";
      v17 = 1024;
      v18 = 2117;
      v19 = 2114;
      v20 = v11;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v13, 0x26u);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BE06CLL);
  }

  v6 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  v7 = *MEMORY[0x1E69E9840];

  v8 = a2;
  v9 = a3;
  return _BKSHIDDigitizerTouchSetOffset(v6, a1, v8, v9);
}

void BKSHIDEventDigitizerSetTouchRoutingPolicy(int a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!a1)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"zero is not a valid userIdentifier"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BKSHIDEventDigitizerSetTouchRoutingPolicy(uint32_t, BKSHIDTouchRoutingPolicy *__strong _Nonnull)"}];
      *buf = 138544130;
      *v30 = v16;
      *&v30[8] = 2114;
      v31 = @"BKSHIDEvent.m";
      v32 = 1024;
      v33 = 2123;
      v34 = 2114;
      v35 = v15;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v15 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BE30CLL);
  }

  v4 = v3;
  if (!v4)
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v17 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"policyForDetachedTouches", v19];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BKSHIDEventDigitizerSetTouchRoutingPolicy(uint32_t, BKSHIDTouchRoutingPolicy *__strong _Nonnull)"}];
      *buf = 138544130;
      *v30 = v21;
      *&v30[8] = 2114;
      v31 = @"BKSHIDEvent.m";
      v32 = 1024;
      v33 = 2124;
      v34 = 2114;
      v35 = v20;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v20 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BE400);
  }

  v5 = v4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = MEMORY[0x1E696AEC0];
    v23 = [v5 classForCoder];
    if (!v23)
    {
      v23 = objc_opt_class();
    }

    v24 = NSStringFromClass(v23);
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = [v22 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"policyForDetachedTouches", v24, v26];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BKSHIDEventDigitizerSetTouchRoutingPolicy(uint32_t, BKSHIDTouchRoutingPolicy *__strong _Nonnull)"}];
      *buf = 138544130;
      *v30 = v28;
      *&v30[8] = 2114;
      v31 = @"BKSHIDEvent.m";
      v32 = 1024;
      v33 = 2124;
      v34 = 2114;
      v35 = v27;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v27 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BE518);
  }

  v6 = [MEMORY[0x1E69E58C0] bs_secureDataFromObject:v5];
  if (!v6)
  {
    v10 = BKLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *v30 = v5;
      *&v30[8] = 1024;
      LODWORD(v31) = a1;
      v11 = "Error encoding policy: %{public}@ for touches with userIdentifier:%X";
      v12 = v10;
      v13 = 18;
      goto LABEL_12;
    }

LABEL_9:

    goto LABEL_10;
  }

  v7 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  v8 = _BKSHIDDigitizerTouchSetRoutingPolicy(v7, a1, [v6 bytes], objc_msgSend(v6, "length"));
  if (v8)
  {
    v9 = v8;
    v10 = BKLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *v30 = v9;
      *&v30[4] = 1024;
      *&v30[6] = a1;
      v11 = "Error setting touch routing policy:0x%X for touches with userIdentifier:%X";
      v12 = v10;
      v13 = 14;
LABEL_12:
      _os_log_error_impl(&dword_186345000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

LABEL_10:

  v14 = *MEMORY[0x1E69E9840];
}

void BKSHIDEventTransferTouchesToDifferentCAContext(void *a1, mach_port_name_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 count];
  if (v4 <= 0)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"need more than zero identifiers"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BKSHIDEventTransferTouchesToDifferentCAContext(NSArray<NSNumber *> *__strong, uint32_t)"}];
      *buf = 138544130;
      v22 = v16;
      v23 = 2114;
      v24 = @"BKSHIDEvent.m";
      v25 = 1024;
      v26 = 2139;
      v27 = 2114;
      v28 = v15;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v15 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BE770);
  }

  v5 = v4;
  if (v4 >= 0x20)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"need less than 32 identifiers"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BKSHIDEventTransferTouchesToDifferentCAContext(NSArray<NSNumber *> *__strong, uint32_t)"}];
      *buf = 138544130;
      v22 = v18;
      v23 = 2114;
      v24 = @"BKSHIDEvent.m";
      v25 = 1024;
      v26 = 2140;
      v27 = 2114;
      v28 = v17;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v17 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BE838);
  }

  if (!a2)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"need nonzero contextID"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BKSHIDEventTransferTouchesToDifferentCAContext(NSArray<NSNumber *> *__strong, uint32_t)"}];
      *buf = 138544130;
      v22 = v20;
      v23 = 2114;
      v24 = @"BKSHIDEvent.m";
      v25 = 1024;
      v26 = 2141;
      v27 = 2114;
      v28 = v19;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v19 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863BE900);
  }

  MEMORY[0x1EEE9AC00]();
  v7 = &buf[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  for (i = 0; i != v5; ++i)
  {
    v9 = [v3 objectAtIndex:i];
    *&v7[4 * i] = [v9 unsignedIntValue];
  }

  v10 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  v11 = _BKSHIDTouchTransfer(v10, v7, v5, a2);
  if (v11)
  {
    v12 = v11;
    v13 = BKLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v22) = v12;
      _os_log_error_impl(&dword_186345000, v13, OS_LOG_TYPE_ERROR, "Error transferring touches: 0x%X", buf, 8u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t _BKSHIDGetBacklightFactor(int a1, _DWORD *a2)
{
  memset(&name_12[4], 0, 28);
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = a1;
  name_8 = special_reply_port;
  v10 = 5395;
  *name_12 = 0x5B8D8000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v10);
    v5 = name_8;
  }

  else
  {
    v5 = special_reply_port;
  }

  v6 = mach_msg(&v10, 3162115, 0x18u, 0x30u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (*&name_12[4] == 71)
      {
        v7 = 4294966988;
      }

      else if (*&name_12[4] == 6000100)
      {
        if ((v10 & 0x80000000) == 0)
        {
          if (name == 40)
          {
            if (!name_4)
            {
              v7 = *&name_12[16];
              if (!*&name_12[16])
              {
                *a2 = *&name_12[20];
                return v7;
              }

              goto LABEL_26;
            }
          }

          else if (name == 36)
          {
            if (name_4)
            {
              v8 = 1;
            }

            else
            {
              v8 = *&name_12[16] == 0;
            }

            if (v8)
            {
              v7 = 4294966996;
            }

            else
            {
              v7 = *&name_12[16];
            }

            goto LABEL_26;
          }
        }

        v7 = 4294966996;
      }

      else
      {
        v7 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v10);
      return v7;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v7 - 268435459) <= 1)
  {
    if ((v10 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_26;
  }

  return v7;
}

uint64_t _BKSHIDSetBacklightFactorPending(mach_port_t a1, float a2)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 6000001;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v2 = mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0);
  if ((v2 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

uint64_t _BKSHIDSetBacklightFactorWithFadeDuration(mach_port_t a1, char a2, char a3, float a4, float a5)
{
  v13 = a4;
  v12 = *MEMORY[0x1E69E99E0];
  v14 = a5;
  v15 = a2;
  v16 = 0;
  v17 = 0;
  v18 = a3;
  v19 = 0;
  v20 = 0;
  special_reply_port = mig_get_special_reply_port();
  *&v11.msgh_bits = 5395;
  v11.msgh_remote_port = a1;
  v11.msgh_local_port = special_reply_port;
  *&v11.msgh_voucher_port = 0x5B8D8200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v11);
    msgh_local_port = v11.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v8 = mach_msg(&v11, 3162115, 0x30u, 0x2Cu, msgh_local_port, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
  {
    goto LABEL_14;
  }

  if (v8)
  {
    mig_dealloc_special_reply_port();
LABEL_14:
    if ((v9 - 268435459) > 1)
    {
      return v9;
    }

    if ((v11.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v11.msgh_local_port);
    }

LABEL_19:
    mach_msg_destroy(&v11);
    return v9;
  }

  if (v11.msgh_id == 71)
  {
    v9 = 4294966988;
    goto LABEL_19;
  }

  if (v11.msgh_id != 6000102)
  {
    v9 = 4294966995;
    goto LABEL_19;
  }

  v9 = 4294966996;
  if ((v11.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_19;
  }

  if (*&v11.msgh_size != 36)
  {
    goto LABEL_19;
  }

  v9 = LODWORD(v13);
  if (v13 != 0.0)
  {
    goto LABEL_19;
  }

  return v9;
}

uint64_t _BKSHIDNotifySetBacklightFactorWithFadeDurationAsync(mach_port_t a1, char a2, char a3, char a4, float a5, float a6)
{
  v9 = *MEMORY[0x1E69E99E0];
  v10 = a5;
  v11 = a6;
  v12 = a2;
  v13 = 0;
  v14 = 0;
  v15 = a3;
  v16 = 0;
  v17 = 0;
  v18 = a4;
  v19 = 0;
  v20 = 0;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 6000003;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v6 = mach_msg(&msg, 1, 0x34u, 0, 0, 0, 0);
  if ((v6 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v6;
}

uint64_t _BKSHIDBrigthnessIsAutoBrightnessAvailable(int a1, _BYTE *a2)
{
  memset(&name_12[4], 0, 28);
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = a1;
  name_8 = special_reply_port;
  v10 = 5395;
  *name_12 = 0x5B8D8500000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v10);
    v5 = name_8;
  }

  else
  {
    v5 = special_reply_port;
  }

  v6 = mach_msg(&v10, 3162115, 0x18u, 0x30u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (*&name_12[4] == 71)
      {
        v7 = 4294966988;
      }

      else if (*&name_12[4] == 6000105)
      {
        if ((v10 & 0x80000000) == 0)
        {
          if (name == 40)
          {
            if (!name_4)
            {
              v7 = *&name_12[16];
              if (!*&name_12[16])
              {
                *a2 = name_12[20];
                return v7;
              }

              goto LABEL_26;
            }
          }

          else if (name == 36)
          {
            if (name_4)
            {
              v8 = 1;
            }

            else
            {
              v8 = *&name_12[16] == 0;
            }

            if (v8)
            {
              v7 = 4294966996;
            }

            else
            {
              v7 = *&name_12[16];
            }

            goto LABEL_26;
          }
        }

        v7 = 4294966996;
      }

      else
      {
        v7 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v10);
      return v7;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v7 - 268435459) <= 1)
  {
    if ((v10 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_26;
  }

  return v7;
}

uint64_t _BKSHIDBrigthnessIsBrightnessLevelControlAvailable(int a1, _BYTE *a2)
{
  memset(&name_12[4], 0, 28);
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = a1;
  name_8 = special_reply_port;
  v10 = 5395;
  *name_12 = 0x5B8D8600000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v10);
    v5 = name_8;
  }

  else
  {
    v5 = special_reply_port;
  }

  v6 = mach_msg(&v10, 3162115, 0x18u, 0x30u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (*&name_12[4] == 71)
      {
        v7 = 4294966988;
      }

      else if (*&name_12[4] == 6000106)
      {
        if ((v10 & 0x80000000) == 0)
        {
          if (name == 40)
          {
            if (!name_4)
            {
              v7 = *&name_12[16];
              if (!*&name_12[16])
              {
                *a2 = name_12[20];
                return v7;
              }

              goto LABEL_26;
            }
          }

          else if (name == 36)
          {
            if (name_4)
            {
              v8 = 1;
            }

            else
            {
              v8 = *&name_12[16] == 0;
            }

            if (v8)
            {
              v7 = 4294966996;
            }

            else
            {
              v7 = *&name_12[16];
            }

            goto LABEL_26;
          }
        }

        v7 = 4294966996;
      }

      else
      {
        v7 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v10);
      return v7;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v7 - 268435459) <= 1)
  {
    if ((v10 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_26;
  }

  return v7;
}

uint64_t _BKSHIDSetBacklightFeatures(int a1, uint64_t a2, int a3)
{
  v6 = a2;
  v7 = 16777472;
  v8 = a3;
  v9 = *MEMORY[0x1E69E99E0];
  v10 = a3;
  *msg = 2147483667;
  *&msg[8] = a1;
  *&msg[12] = xmmword_1863CFAA0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  v3 = mach_msg(msg, 1, 0x38u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    mach_msg_destroy(msg);
  }

  return v3;
}

uint64_t _BKSHIDAmbientLightSensorExists(int a1, _BYTE *a2)
{
  memset(&name_12[4], 0, 28);
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = a1;
  name_8 = special_reply_port;
  v10 = 5395;
  *name_12 = 0x5B8D8800000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v10);
    v5 = name_8;
  }

  else
  {
    v5 = special_reply_port;
  }

  v6 = mach_msg(&v10, 3162115, 0x18u, 0x30u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (*&name_12[4] == 71)
      {
        v7 = 4294966988;
      }

      else if (*&name_12[4] == 6000108)
      {
        if ((v10 & 0x80000000) == 0)
        {
          if (name == 40)
          {
            if (!name_4)
            {
              v7 = *&name_12[16];
              if (!*&name_12[16])
              {
                *a2 = name_12[20];
                return v7;
              }

              goto LABEL_26;
            }
          }

          else if (name == 36)
          {
            if (name_4)
            {
              v8 = 1;
            }

            else
            {
              v8 = *&name_12[16] == 0;
            }

            if (v8)
            {
              v7 = 4294966996;
            }

            else
            {
              v7 = *&name_12[16];
            }

            goto LABEL_26;
          }
        }

        v7 = 4294966996;
      }

      else
      {
        v7 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v10);
      return v7;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v7 - 268435459) <= 1)
  {
    if ((v10 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_26;
  }

  return v7;
}

uint64_t _BKSHIDAmbientLightSensorDisableAutoBrightness(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x5B8D8900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

uint64_t _BKSHIDSetDeviceInterfaceOrientation(mach_port_t a1, char a2)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  v7 = 0;
  v8 = 0;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 6000011;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v2 = mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0);
  if ((v2 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

uint64_t _BKSHIDSetDeviceOrientationForAutomation(mach_port_t a1, char a2)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  v7 = 0;
  v8 = 0;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 6000012;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v2 = mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0);
  if ((v2 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

uint64_t _BKSHIDRequestEstimatedProximityEvents(int a1, _DWORD *a2, float a3)
{
  memset(&name[16], 0, 28);
  *name = 0u;
  *&name[20] = *MEMORY[0x1E69E99E0];
  *&name[28] = a3;
  special_reply_port = mig_get_special_reply_port();
  *&name[4] = a1;
  *&name[8] = special_reply_port;
  v11 = 5395;
  *&name[12] = 0x5B8D8D00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v11);
    v6 = *&name[8];
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(&v11, 3162115, 0x24u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (*&name[16] == 71)
      {
        v8 = 4294966988;
      }

      else if (*&name[16] == 6000113)
      {
        if ((v11 & 0x80000000) == 0)
        {
          if (*name == 40)
          {
            if (!*&name[4])
            {
              v8 = *&name[28];
              if (!*&name[28])
              {
                *a2 = *&name[32];
                return v8;
              }

              goto LABEL_26;
            }
          }

          else if (*name == 36)
          {
            if (*&name[4])
            {
              v9 = 1;
            }

            else
            {
              v9 = *&name[28] == 0;
            }

            if (v9)
            {
              v8 = 4294966996;
            }

            else
            {
              v8 = *&name[28];
            }

            goto LABEL_26;
          }
        }

        v8 = 4294966996;
      }

      else
      {
        v8 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v11);
      return v8;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v8 - 268435459) <= 1)
  {
    if ((v11 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&name[8]);
    }

    goto LABEL_26;
  }

  return v8;
}

uint64_t _BKSHIDRequestProximityStatusEvent(mach_port_name_t a1, const char *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(v10, 0, 480);
  *name = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v3 = mig_strncpy_zerofill(v10 + 8, a2, 1024);
  }

  else
  {
    v3 = mig_strncpy(v10 + 8, a2, 1024);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v3;
  v4 = (v3 + 3) & 0xFFFFFFFC;
  name[0] = 19;
  name[2] = a1;
  name[3] = 0;
  *&v9 = 0x5B8D8E00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
  }

  v5 = mach_msg(name, 1, v4 + 40, 0, 0, 0, 0);
  if ((v5 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    mach_msg_destroy(name);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t _BKSHIDResetProximityCalibration(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x5B8D8F00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

uint64_t _BKSHIDProximityDidUnoccludeAfterScreenWake(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x5B8D9000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

uint64_t _BKSHIDGetObjectInProximityIgnoresTouches(int a1, _BYTE *a2)
{
  memset(&name_12[4], 0, 28);
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = a1;
  name_8 = special_reply_port;
  v10 = 5395;
  *name_12 = 0x5B8D9300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v10);
    v5 = name_8;
  }

  else
  {
    v5 = special_reply_port;
  }

  v6 = mach_msg(&v10, 3162115, 0x18u, 0x30u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (*&name_12[4] == 71)
      {
        v7 = 4294966988;
      }

      else if (*&name_12[4] == 6000119)
      {
        if ((v10 & 0x80000000) == 0)
        {
          if (name == 40)
          {
            if (!name_4)
            {
              v7 = *&name_12[16];
              if (!*&name_12[16])
              {
                *a2 = name_12[20];
                return v7;
              }

              goto LABEL_26;
            }
          }

          else if (name == 36)
          {
            if (name_4)
            {
              v8 = 1;
            }

            else
            {
              v8 = *&name_12[16] == 0;
            }

            if (v8)
            {
              v7 = 4294966996;
            }

            else
            {
              v7 = *&name_12[16];
            }

            goto LABEL_26;
          }
        }

        v7 = 4294966996;
      }

      else
      {
        v7 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v10);
      return v7;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v7 - 268435459) <= 1)
  {
    if ((v10 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_26;
  }

  return v7;
}

uint64_t _BKSHIDSetObjectInProximityIgnoresTouches(mach_port_t a1, char a2)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  v7 = 0;
  v8 = 0;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 6000020;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v2 = mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0);
  if ((v2 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

uint64_t _BKSHIDGetRingerState(int a1, _DWORD *a2)
{
  memset(&name_12[4], 0, 28);
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = a1;
  name_8 = special_reply_port;
  v10 = 5395;
  *name_12 = 0x5B8D9500000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v10);
    v5 = name_8;
  }

  else
  {
    v5 = special_reply_port;
  }

  v6 = mach_msg(&v10, 3162115, 0x18u, 0x30u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (*&name_12[4] == 71)
      {
        v7 = 4294966988;
      }

      else if (*&name_12[4] == 6000121)
      {
        if ((v10 & 0x80000000) == 0)
        {
          if (name == 40)
          {
            if (!name_4)
            {
              v7 = *&name_12[16];
              if (!*&name_12[16])
              {
                *a2 = *&name_12[20];
                return v7;
              }

              goto LABEL_26;
            }
          }

          else if (name == 36)
          {
            if (name_4)
            {
              v8 = 1;
            }

            else
            {
              v8 = *&name_12[16] == 0;
            }

            if (v8)
            {
              v7 = 4294966996;
            }

            else
            {
              v7 = *&name_12[16];
            }

            goto LABEL_26;
          }
        }

        v7 = 4294966996;
      }

      else
      {
        v7 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v10);
      return v7;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v7 - 268435459) <= 1)
  {
    if ((v10 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_26;
  }

  return v7;
}

uint64_t _BKSHIDCancelButtonEventsFromSenderID(mach_port_t a1, uint64_t a2, int a3, int a4)
{
  v11 = *MEMORY[0x1E69E99E0];
  v12 = a2;
  v13 = a3;
  v14 = a4;
  special_reply_port = mig_get_special_reply_port();
  *&v10.msgh_bits = 5395;
  v10.msgh_remote_port = a1;
  v10.msgh_local_port = special_reply_port;
  *&v10.msgh_voucher_port = 0x5B8D9700000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v10);
    msgh_local_port = v10.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v7 = mach_msg(&v10, 3162115, 0x30u, 0x2Cu, msgh_local_port, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    goto LABEL_14;
  }

  if (v7)
  {
    mig_dealloc_special_reply_port();
LABEL_14:
    if ((v8 - 268435459) > 1)
    {
      return v8;
    }

    if ((v10.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v10.msgh_local_port);
    }

LABEL_19:
    mach_msg_destroy(&v10);
    return v8;
  }

  if (v10.msgh_id == 71)
  {
    v8 = 4294966988;
    goto LABEL_19;
  }

  if (v10.msgh_id != 6000123)
  {
    v8 = 4294966995;
    goto LABEL_19;
  }

  v8 = 4294966996;
  if ((v10.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_19;
  }

  if (*&v10.msgh_size != 36)
  {
    goto LABEL_19;
  }

  v8 = v12;
  if (v12)
  {
    goto LABEL_19;
  }

  return v8;
}

uint64_t _BKSHIDClaimGenericGestureFocus(mach_port_name_t a1, const char *a2, int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  memset(v12, 0, 480);
  *name = 0u;
  v11 = 0u;
  *(&v11 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v5 = mig_strncpy_zerofill(v12 + 8, a2, 1024);
  }

  else
  {
    v5 = mig_strncpy(v12 + 8, a2, 1024);
  }

  LODWORD(v12[0]) = 0;
  DWORD1(v12[0]) = v5;
  v6 = (v5 + 3) & 0xFFFFFFFC;
  *(v12 + v6 + 8) = a3;
  name[0] = 19;
  name[2] = a1;
  name[3] = 0;
  *&v11 = 0x5B8D9800000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
  }

  v7 = mach_msg(name, 1, v6 + 44, 0, 0, 0, 0);
  if ((v7 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    mach_msg_destroy(name);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t _BKSHIDCancelTouchesOnAllDisplays(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x5B8D9A00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

uint64_t _BKSHIDCancelTouchesWithIdentifiers(int a1, uint64_t a2, int a3)
{
  v6 = a2;
  v7 = 16777472;
  v8 = a3;
  v9 = *MEMORY[0x1E69E99E0];
  v10 = a3;
  *msg = 2147483667;
  *&msg[8] = a1;
  *&msg[12] = xmmword_1863CFAB0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  v3 = mach_msg(msg, 1, 0x38u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    mach_msg_destroy(msg);
  }

  return v3;
}

uint64_t _BKSHIDApplyButtonDefinitions(int a1, uint64_t a2, int a3)
{
  v6 = a2;
  v7 = 16777472;
  v8 = a3;
  v9 = *MEMORY[0x1E69E99E0];
  v10 = a3;
  *msg = 2147483667;
  *&msg[8] = a1;
  *&msg[12] = xmmword_1863CFAC0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  v3 = mach_msg(msg, 1, 0x38u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    mach_msg_destroy(msg);
  }

  return v3;
}

uint64_t _BKSHIDPostTouchAnnotations(int a1, uint64_t a2, int a3)
{
  v6 = a2;
  v7 = 16777472;
  v8 = a3;
  v9 = *MEMORY[0x1E69E99E0];
  v10 = a3;
  *msg = 2147483667;
  *&msg[8] = a1;
  *&msg[12] = xmmword_1863CFAD0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  v3 = mach_msg(msg, 1, 0x38u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    mach_msg_destroy(msg);
  }

  return v3;
}

uint64_t _BKSHIDPlayHaptic(mach_port_t a1, int a2, int a3)
{
  v6 = *MEMORY[0x1E69E99E0];
  v7 = a2;
  v8 = a3;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 6000031;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v3 = mach_msg(&msg, 1, 0x28u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v3;
}

uint64_t _BKSHIDRequestHapticFeedback(int a1, uint64_t a2, int a3)
{
  v6 = a2;
  v7 = 16777472;
  v8 = a3;
  v9 = *MEMORY[0x1E69E99E0];
  v10 = a3;
  *msg = 2147483667;
  *&msg[8] = a1;
  *&msg[12] = xmmword_1863CFAE0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  v3 = mach_msg(msg, 1, 0x38u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    mach_msg_destroy(msg);
  }

  return v3;
}

uint64_t _BKSHIDTouchStreamCreate(mach_port_name_t a1, int a2, char *src, int a4, char a5, _DWORD *a6)
{
  v23 = *MEMORY[0x1E69E9840];
  memset(v22, 0, 480);
  *name = 0u;
  v21 = 0u;
  *(&v21 + 1) = *MEMORY[0x1E69E99E0];
  LODWORD(v22[0]) = a2;
  if (MEMORY[0x1EEE9AC40])
  {
    v10 = mig_strncpy_zerofill(v22 + 12, src, 1024);
  }

  else
  {
    v10 = mig_strncpy(v22 + 12, src, 1024);
  }

  DWORD1(v22[0]) = 0;
  DWORD2(v22[0]) = v10;
  v11 = (v10 + 3) & 0xFFFFFFFC;
  v12 = name + v11;
  *(v12 + 11) = a4;
  v12[48] = a5;
  *(v12 + 49) = 0;
  v12[51] = 0;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v21 = 0x5B8DA100000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v14 = name[3];
  }

  else
  {
    v14 = special_reply_port;
  }

  v15 = mach_msg(name, 3162115, v11 + 52, 0x30u, v14, 0, 0);
  v16 = v15;
  if ((v15 - 268435458) > 0xE || ((1 << (v15 - 2)) & 0x4003) == 0)
  {
    if (!v15)
    {
      if (DWORD1(v21) == 71)
      {
        v16 = 4294966988;
      }

      else if (DWORD1(v21) == 6000133)
      {
        if ((name[0] & 0x80000000) == 0)
        {
          if (name[1] == 40)
          {
            if (!name[2])
            {
              v16 = LODWORD(v22[0]);
              if (!LODWORD(v22[0]))
              {
                *a6 = DWORD1(v22[0]);
                goto LABEL_30;
              }

              goto LABEL_29;
            }
          }

          else if (name[1] == 36)
          {
            if (name[2])
            {
              v17 = 1;
            }

            else
            {
              v17 = LODWORD(v22[0]) == 0;
            }

            if (v17)
            {
              v16 = 4294966996;
            }

            else
            {
              v16 = LODWORD(v22[0]);
            }

            goto LABEL_29;
          }
        }

        v16 = 4294966996;
      }

      else
      {
        v16 = 4294966995;
      }

LABEL_29:
      mach_msg_destroy(name);
      goto LABEL_30;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v16 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    goto LABEL_29;
  }

LABEL_30:
  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t _BKSHIDTouchStreamInvalidate(int a1, int a2)
{
  *&msg[20] = 0u;
  v9 = 0;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x1E69E99E0];
  *&msg[32] = a2;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x5B8DA200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v4 = *&msg[12];
  }

  else
  {
    v4 = special_reply_port;
  }

  v5 = mach_msg(msg, 3162115, 0x24u, 0x2Cu, v4, 0, 0);
  v6 = v5;
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    goto LABEL_15;
  }

  if (v5)
  {
    mig_dealloc_special_reply_port();
LABEL_15:
    if ((v6 - 268435459) > 1)
    {
      return v6;
    }

    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

LABEL_20:
    mach_msg_destroy(msg);
    return v6;
  }

  if (*&msg[20] == 71)
  {
    v6 = 4294966988;
    goto LABEL_20;
  }

  if (*&msg[20] != 6000134)
  {
    v6 = 4294966995;
    goto LABEL_20;
  }

  v6 = 4294966996;
  if ((*msg & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (*&msg[4] != 36)
  {
    goto LABEL_20;
  }

  if (*&msg[8])
  {
    goto LABEL_20;
  }

  v6 = *&msg[32];
  if (*&msg[32])
  {
    goto LABEL_20;
  }

  return v6;
}

uint64_t _BKSHIDTouchTransfer(mach_port_name_t a1, uint64_t a2, unsigned int a3, mach_port_name_t a4)
{
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *name = 0u;
  v14 = 0u;
  *(&v14 + 1) = *MEMORY[0x1E69E99E0];
  if (a3 > 0x20)
  {
    return 4294966989;
  }

  v8 = a3;
  __memcpy_chk();
  LODWORD(v15) = a3;
  name[v8 + 9] = a4;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v14 = 0x5B8DA400000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v10 = name[3];
  }

  else
  {
    v10 = special_reply_port;
  }

  v11 = mach_msg(name, 3162115, v8 * 4 + 40, 0x2Cu, v10, 0, 0);
  v4 = v11;
  if ((v11 - 268435458) <= 0xE && ((1 << (v11 - 2)) & 0x4003) != 0)
  {
    goto LABEL_17;
  }

  if (v11)
  {
    mig_dealloc_special_reply_port();
LABEL_17:
    if ((v4 - 268435459) > 1)
    {
      return v4;
    }

    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

LABEL_22:
    mach_msg_destroy(name);
    return v4;
  }

  if (DWORD1(v14) == 71)
  {
    v4 = 4294966988;
    goto LABEL_22;
  }

  if (DWORD1(v14) != 6000136)
  {
    v4 = 4294966995;
    goto LABEL_22;
  }

  v4 = 4294966996;
  if ((name[0] & 0x80000000) != 0)
  {
    goto LABEL_22;
  }

  if (name[1] != 36)
  {
    goto LABEL_22;
  }

  if (name[2])
  {
    goto LABEL_22;
  }

  v4 = v15;
  if (v15)
  {
    goto LABEL_22;
  }

  return v4;
}

uint64_t _BKSHIDDigitizerTouchDetach(mach_port_t a1, float a2, float a3, uint64_t a4, unsigned int a5, int a6, uint64_t a7, unsigned int a8, _BYTE *a9)
{
  v39 = *MEMORY[0x1E69E9840];
  *&v29[8] = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  memset(&name, 0, sizeof(name));
  v26 = 1;
  v27 = a7;
  v28 = 16777472;
  *v29 = a8;
  *&v29[4] = *MEMORY[0x1E69E99E0];
  if (a5 <= 0x20)
  {
    v17 = 4 * a5;
    __memcpy_chk();
    *&v29[12] = a5;
    v18 = &name + v17;
    *(v18 + 14) = a6;
    *(v18 + 15) = a2;
    *(v18 + 16) = a3;
    *(v18 + 17) = a8;
    special_reply_port = mig_get_special_reply_port();
    name.msgh_remote_port = a1;
    name.msgh_local_port = special_reply_port;
    name.msgh_bits = -2147478253;
    *&name.msgh_voucher_port = 0x5B8DA500000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&name);
      msgh_local_port = name.msgh_local_port;
    }

    else
    {
      msgh_local_port = special_reply_port;
    }

    v21 = mach_msg(&name, 3162115, v17 + 72, 0x30u, msgh_local_port, 0, 0);
    v10 = v21;
    if ((v21 - 268435458) > 0xE || ((1 << (v21 - 2)) & 0x4003) == 0)
    {
      if (!v21)
      {
        if (name.msgh_id == 71)
        {
          v10 = 4294966988;
        }

        else if (name.msgh_id == 6000137)
        {
          if ((name.msgh_bits & 0x80000000) == 0)
          {
            if (name.msgh_size == 40)
            {
              if (!name.msgh_remote_port)
              {
                v10 = HIDWORD(v27);
                if (!HIDWORD(v27))
                {
                  *a9 = v28;
                  goto LABEL_29;
                }

                goto LABEL_28;
              }
            }

            else if (name.msgh_size == 36)
            {
              if (name.msgh_remote_port)
              {
                v22 = 1;
              }

              else
              {
                v22 = HIDWORD(v27) == 0;
              }

              if (v22)
              {
                v10 = 4294966996;
              }

              else
              {
                v10 = HIDWORD(v27);
              }

              goto LABEL_28;
            }
          }

          v10 = 4294966996;
        }

        else
        {
          v10 = 4294966995;
        }

LABEL_28:
        mach_msg_destroy(&name);
        goto LABEL_29;
      }

      mig_dealloc_special_reply_port();
    }

    if ((v10 - 268435459) > 1)
    {
      goto LABEL_29;
    }

    if ((name.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name.msgh_local_port);
    }

    goto LABEL_28;
  }

  v10 = 4294966989;
LABEL_29:
  v23 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t _BKSHIDDigitizerTouchSetOffset(mach_port_t a1, int a2, float a3, float a4)
{
  v7 = *MEMORY[0x1E69E99E0];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  *&v6.msgh_bits = 19;
  v6.msgh_voucher_port = 0;
  v6.msgh_id = 6000038;
  v6.msgh_remote_port = a1;
  v6.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v6);
  }

  v4 = mach_msg(&v6, 1, 0x2Cu, 0, 0, 0, 0);
  if ((v4 - 268435459) <= 1)
  {
    if ((v6.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v6.msgh_local_port);
    }

    mach_msg_destroy(&v6);
  }

  return v4;
}

uint64_t _BKSHIDDigitizerTouchSetRoutingPolicy(int a1, int a2, uint64_t a3, int a4)
{
  v9 = a3;
  v10 = 16777472;
  v11 = a4;
  v12 = *MEMORY[0x1E69E99E0];
  v13 = a2;
  v14 = a4;
  v6 = 2147483667;
  v7 = a1;
  *name = xmmword_1863CFAF0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v6);
  }

  v4 = mach_msg(&v6, 1, 0x3Cu, 0, 0, 0, 0);
  if ((v4 - 268435459) <= 1)
  {
    if ((v6 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[0]);
    }

    mach_msg_destroy(&v6);
  }

  return v4;
}

uint64_t _BKSHIDResetUserEventTimer(mach_port_t a1, int a2, double a3)
{
  v6 = *MEMORY[0x1E69E99E0];
  v7 = a3;
  v8 = a2;
  *&v5.msgh_bits = 19;
  v5.msgh_voucher_port = 0;
  v5.msgh_id = 6000040;
  v5.msgh_remote_port = a1;
  v5.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v5);
  }

  v3 = mach_msg(&v5, 1, 0x2Cu, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((v5.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v5.msgh_local_port);
    }

    mach_msg_destroy(&v5);
  }

  return v3;
}

uint64_t _BKSHIDNotifyOnNextUserEvent(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x5B8DA900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

uint64_t _BKSHIDSafeToResetIdleTimer(int a1, _BYTE *a2)
{
  memset(&name_12[4], 0, 28);
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = a1;
  name_8 = special_reply_port;
  v10 = 5395;
  *name_12 = 0x5B8DAB00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v10);
    v5 = name_8;
  }

  else
  {
    v5 = special_reply_port;
  }

  v6 = mach_msg(&v10, 3162115, 0x18u, 0x30u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (*&name_12[4] == 71)
      {
        v7 = 4294966988;
      }

      else if (*&name_12[4] == 6000143)
      {
        if ((v10 & 0x80000000) == 0)
        {
          if (name == 40)
          {
            if (!name_4)
            {
              v7 = *&name_12[16];
              if (!*&name_12[16])
              {
                *a2 = name_12[20];
                return v7;
              }

              goto LABEL_26;
            }
          }

          else if (name == 36)
          {
            if (name_4)
            {
              v8 = 1;
            }

            else
            {
              v8 = *&name_12[16] == 0;
            }

            if (v8)
            {
              v7 = 4294966996;
            }

            else
            {
              v7 = *&name_12[16];
            }

            goto LABEL_26;
          }
        }

        v7 = 4294966996;
      }

      else
      {
        v7 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v10);
      return v7;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v7 - 268435459) <= 1)
  {
    if ((v10 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_26;
  }

  return v7;
}

uint64_t _BKSHIDGetCurrentDeviceOrientation(int a1, _DWORD *a2)
{
  memset(&name_12[4], 0, 28);
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = a1;
  name_8 = special_reply_port;
  v10 = 5395;
  *name_12 = 0x5B8DAD00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v10);
    v5 = name_8;
  }

  else
  {
    v5 = special_reply_port;
  }

  v6 = mach_msg(&v10, 3162115, 0x18u, 0x30u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (*&name_12[4] == 71)
      {
        v7 = 4294966988;
      }

      else if (*&name_12[4] == 6000145)
      {
        if ((v10 & 0x80000000) == 0)
        {
          if (name == 40)
          {
            if (!name_4)
            {
              v7 = *&name_12[16];
              if (!*&name_12[16])
              {
                *a2 = *&name_12[20];
                return v7;
              }

              goto LABEL_26;
            }
          }

          else if (name == 36)
          {
            if (name_4)
            {
              v8 = 1;
            }

            else
            {
              v8 = *&name_12[16] == 0;
            }

            if (v8)
            {
              v7 = 4294966996;
            }

            else
            {
              v7 = *&name_12[16];
            }

            goto LABEL_26;
          }
        }

        v7 = 4294966996;
      }

      else
      {
        v7 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v10);
      return v7;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v7 - 268435459) <= 1)
  {
    if ((v10 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_26;
  }

  return v7;
}

uint64_t _BKSHIDSetOrientationClient(mach_port_name_t a1, const char *a2, char a3)
{
  v14 = *MEMORY[0x1E69E9840];
  memset(v13, 0, 480);
  *name = 0u;
  v12 = 0u;
  *(&v12 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v5 = mig_strncpy_zerofill(v13 + 8, a2, 1024);
  }

  else
  {
    v5 = mig_strncpy(v13 + 8, a2, 1024);
  }

  LODWORD(v13[0]) = 0;
  DWORD1(v13[0]) = v5;
  v6 = (v5 + 3) & 0xFFFFFFFC;
  v7 = name + v6;
  v7[40] = a3;
  *(v7 + 41) = 0;
  v7[43] = 0;
  name[0] = 19;
  name[2] = a1;
  name[3] = 0;
  *&v12 = 0x5B8DAE00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
  }

  v8 = mach_msg(name, 1, v6 + 44, 0, 0, 0, 0);
  if ((v8 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    mach_msg_destroy(name);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t _BKSHIDLockOrientation(int a1, int a2, char a3)
{
  *&msg[20] = 0u;
  v10 = 0;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x1E69E99E0];
  *&msg[32] = a2;
  LOBYTE(v10) = a3;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x5B8DAF00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v5 = *&msg[12];
  }

  else
  {
    v5 = special_reply_port;
  }

  v6 = mach_msg(msg, 3162115, 0x28u, 0x2Cu, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) <= 0xE && ((1 << (v6 - 2)) & 0x4003) != 0)
  {
    goto LABEL_15;
  }

  if (v6)
  {
    mig_dealloc_special_reply_port();
LABEL_15:
    if ((v7 - 268435459) > 1)
    {
      return v7;
    }

    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

LABEL_20:
    mach_msg_destroy(msg);
    return v7;
  }

  if (*&msg[20] == 71)
  {
    v7 = 4294966988;
    goto LABEL_20;
  }

  if (*&msg[20] != 6000147)
  {
    v7 = 4294966995;
    goto LABEL_20;
  }

  v7 = 4294966996;
  if ((*msg & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (*&msg[4] != 36)
  {
    goto LABEL_20;
  }

  if (*&msg[8])
  {
    goto LABEL_20;
  }

  v7 = *&msg[32];
  if (*&msg[32])
  {
    goto LABEL_20;
  }

  return v7;
}

uint64_t _BKSHIDUnlockOrientation(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x5B8DB000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

uint64_t _BKSHIDIsOrientationLockedWithOrientation(int a1, _DWORD *a2, _DWORD *a3)
{
  *&msg[20] = 0u;
  v14 = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x5B8DB100000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v7 = *&msg[12];
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(msg, 3162115, 0x18u, 0x34u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&msg[20] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg[20] == 6000149)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 44)
          {
            if (!*&msg[8])
            {
              v9 = *&msg[32];
              if (!*&msg[32])
              {
                v12 = DWORD1(v14);
                *a2 = v14;
                *a3 = v12;
                return v9;
              }

              goto LABEL_26;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v10 = 1;
            }

            else
            {
              v10 = *&msg[32] == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&msg[32];
            }

            goto LABEL_26;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(msg);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_26;
  }

  return v9;
}

uint64_t _BKSHIDBeginDisplayBrightnessTransaction(int a1, int a2)
{
  *&msg[20] = 0u;
  *&msg[4] = 0;
  *&msg[24] = 1;
  *&msg[28] = a2;
  v9 = 1310720;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = -2147478253;
  *&msg[16] = 0x5B8DB500000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v4 = *&msg[12];
  }

  else
  {
    v4 = special_reply_port;
  }

  v5 = mach_msg(msg, 3162115, 0x28u, 0x2Cu, v4, 0, 0);
  v6 = v5;
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    goto LABEL_15;
  }

  if (v5)
  {
    mig_dealloc_special_reply_port();
LABEL_15:
    if ((v6 - 268435459) > 1)
    {
      return v6;
    }

    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

LABEL_20:
    mach_msg_destroy(msg);
    return v6;
  }

  if (*&msg[20] == 71)
  {
    v6 = 4294966988;
    goto LABEL_20;
  }

  if (*&msg[20] != 6000153)
  {
    v6 = 4294966995;
    goto LABEL_20;
  }

  v6 = 4294966996;
  if ((*msg & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (*&msg[4] != 36)
  {
    goto LABEL_20;
  }

  if (*&msg[8])
  {
    goto LABEL_20;
  }

  v6 = *&msg[32];
  if (*&msg[32])
  {
    goto LABEL_20;
  }

  return v6;
}

uint64_t _BKSHIDSetDisplayBrightnessWithImplicitTransaction(int a1, float a2)
{
  *&msg[20] = 0u;
  v9 = 0;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x1E69E99E0];
  *&msg[32] = a2;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x5B8DB600000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v4 = *&msg[12];
  }

  else
  {
    v4 = special_reply_port;
  }

  v5 = mach_msg(msg, 3162115, 0x24u, 0x2Cu, v4, 0, 0);
  v6 = v5;
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    goto LABEL_15;
  }

  if (v5)
  {
    mig_dealloc_special_reply_port();
LABEL_15:
    if ((v6 - 268435459) > 1)
    {
      return v6;
    }

    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

LABEL_20:
    mach_msg_destroy(msg);
    return v6;
  }

  if (*&msg[20] == 71)
  {
    v6 = 4294966988;
    goto LABEL_20;
  }

  if (*&msg[20] != 6000154)
  {
    v6 = 4294966995;
    goto LABEL_20;
  }

  v6 = 4294966996;
  if ((*msg & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (*&msg[4] != 36)
  {
    goto LABEL_20;
  }

  if (*&msg[8])
  {
    goto LABEL_20;
  }

  v6 = *&msg[32];
  if (*&msg[32])
  {
    goto LABEL_20;
  }

  return v6;
}

uint64_t _BKSHIDSetDisplayBrightnessValue(mach_port_t a1, char a2, float a3)
{
  v6 = *MEMORY[0x1E69E99E0];
  v7 = a3;
  v8 = a2;
  v9 = 0;
  v10 = 0;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 6000055;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v3 = mach_msg(&msg, 1, 0x28u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v3;
}

uint64_t _BKSHIDFlushDisplayBrightnessUpdates(int a1)
{
  v8 = 0;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x5B8DB800000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v3 = *&msg[12];
  }

  else
  {
    v3 = special_reply_port;
  }

  v4 = mach_msg(msg, 3162115, 0x18u, 0x2Cu, v3, 0, 0);
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    goto LABEL_15;
  }

  if (v4)
  {
    mig_dealloc_special_reply_port();
LABEL_15:
    if ((v5 - 268435459) > 1)
    {
      return v5;
    }

    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

LABEL_20:
    mach_msg_destroy(msg);
    return v5;
  }

  if (*&msg[20] == 71)
  {
    v5 = 4294966988;
    goto LABEL_20;
  }

  if (*&msg[20] != 6000156)
  {
    v5 = 4294966995;
    goto LABEL_20;
  }

  v5 = 4294966996;
  if ((*msg & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (*&msg[4] != 36)
  {
    goto LABEL_20;
  }

  if (*&msg[8])
  {
    goto LABEL_20;
  }

  v5 = *&msg[32];
  if (*&msg[32])
  {
    goto LABEL_20;
  }

  return v5;
}

uint64_t _BKSHIDRestoreSystemDisplayBrightness(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x5B8DB900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

uint64_t _BKSHIDGetCurrentDisplayBrightnessCurve(int a1, _BYTE *a2)
{
  memset(&name_12[4], 0, 28);
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = a1;
  name_8 = special_reply_port;
  v10 = 5395;
  *name_12 = 0x5B8DBA00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v10);
    v5 = name_8;
  }

  else
  {
    v5 = special_reply_port;
  }

  v6 = mach_msg(&v10, 3162115, 0x18u, 0x30u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (*&name_12[4] == 71)
      {
        v7 = 4294966988;
      }

      else if (*&name_12[4] == 6000158)
      {
        if ((v10 & 0x80000000) == 0)
        {
          if (name == 40)
          {
            if (!name_4)
            {
              v7 = *&name_12[16];
              if (!*&name_12[16])
              {
                *a2 = name_12[20];
                return v7;
              }

              goto LABEL_26;
            }
          }

          else if (name == 36)
          {
            if (name_4)
            {
              v8 = 1;
            }

            else
            {
              v8 = *&name_12[16] == 0;
            }

            if (v8)
            {
              v7 = 4294966996;
            }

            else
            {
              v7 = *&name_12[16];
            }

            goto LABEL_26;
          }
        }

        v7 = 4294966996;
      }

      else
      {
        v7 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v10);
      return v7;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v7 - 268435459) <= 1)
  {
    if ((v10 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_26;
  }

  return v7;
}

uint64_t _BKSHIDSetDisplayBrightnessCurveValue(mach_port_t a1, char a2)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  v7 = 0;
  v8 = 0;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 6000059;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v2 = mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0);
  if ((v2 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

uint64_t _BKSHIDSetAutoDisplayBrightnessEnabled(mach_port_t a1, char a2)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  v7 = 0;
  v8 = 0;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 6000060;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v2 = mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0);
  if ((v2 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

uint64_t _BKSHIDIsCapsLockLightOn(int a1, uint64_t a2, _BYTE *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  memset(&msg_4[16], 0, 28);
  *msg_4 = 0u;
  *&msg_4[20] = *MEMORY[0x1E69E99E0];
  *&msg_4[28] = a2;
  special_reply_port = mig_get_special_reply_port();
  *&msg_4[4] = a1;
  *&msg_4[8] = special_reply_port;
  msg = 5395;
  *&msg_4[12] = 0x5B8DBE00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v6 = *&msg_4[8];
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(&msg, 3162115, 0x28u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (*&msg_4[16] == 71)
      {
        v8 = 4294966988;
      }

      else if (*&msg_4[16] == 6000162)
      {
        if ((msg & 0x80000000) == 0)
        {
          if (*msg_4 == 40)
          {
            if (!*&msg_4[4])
            {
              v8 = *&msg_4[28];
              if (!*&msg_4[28])
              {
                *a3 = msg_4[32];
                goto LABEL_27;
              }

              goto LABEL_26;
            }
          }

          else if (*msg_4 == 36)
          {
            if (*&msg_4[4])
            {
              v9 = 1;
            }

            else
            {
              v9 = *&msg_4[28] == 0;
            }

            if (v9)
            {
              v8 = 4294966996;
            }

            else
            {
              v8 = *&msg_4[28];
            }

            goto LABEL_26;
          }
        }

        v8 = 4294966996;
      }

      else
      {
        v8 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&msg);
      goto LABEL_27;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v8 - 268435459) <= 1)
  {
    if ((msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg_4[8]);
    }

    goto LABEL_26;
  }

LABEL_27:
  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t _BKSHIDSetCapsLockRomanSwitchMode(mach_port_t a1, uint64_t a2, char a3)
{
  v6 = *MEMORY[0x1E69E99E0];
  v7 = a2;
  v8 = a3;
  v9 = 0;
  v10 = 0;
  *&v5.msgh_bits = 19;
  v5.msgh_voucher_port = 0;
  v5.msgh_id = 6000063;
  v5.msgh_remote_port = a1;
  v5.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v5);
  }

  v3 = mach_msg(&v5, 1, 0x2Cu, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((v5.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v5.msgh_local_port);
    }

    mach_msg_destroy(&v5);
  }

  return v3;
}

uint64_t _BKSHIDSetCapsLockDelayOverride(mach_port_t a1, uint64_t a2, double a3)
{
  v6 = *MEMORY[0x1E69E99E0];
  v7 = a2;
  v8 = a3;
  *&v5.msgh_bits = 19;
  v5.msgh_voucher_port = 0;
  v5.msgh_id = 6000064;
  v5.msgh_remote_port = a1;
  v5.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v5);
  }

  v3 = mach_msg(&v5, 1, 0x30u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((v5.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v5.msgh_local_port);
    }

    mach_msg_destroy(&v5);
  }

  return v3;
}

uint64_t _BKSHIDSetStandardType(mach_port_t a1, uint64_t a2, int a3)
{
  v6 = *MEMORY[0x1E69E99E0];
  v7 = a2;
  v8 = a3;
  *&v5.msgh_bits = 19;
  v5.msgh_voucher_port = 0;
  v5.msgh_id = 6000065;
  v5.msgh_remote_port = a1;
  v5.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v5);
  }

  v3 = mach_msg(&v5, 1, 0x2Cu, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((v5.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v5.msgh_local_port);
    }

    mach_msg_destroy(&v5);
  }

  return v3;
}

uint64_t _BKSHIDSetCapsLockActive(mach_port_t a1, uint64_t a2, char a3)
{
  v6 = *MEMORY[0x1E69E99E0];
  v7 = a2;
  v8 = a3;
  v9 = 0;
  v10 = 0;
  *&v5.msgh_bits = 19;
  v5.msgh_voucher_port = 0;
  v5.msgh_id = 6000066;
  v5.msgh_remote_port = a1;
  v5.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v5);
  }

  v3 = mach_msg(&v5, 1, 0x2Cu, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((v5.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v5.msgh_local_port);
    }

    mach_msg_destroy(&v5);
  }

  return v3;
}

uint64_t _BKSHIDKeyboardWantsStandardTypeOverride(int a1, uint64_t a2, _BYTE *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  memset(&msg_4[16], 0, 28);
  *msg_4 = 0u;
  *&msg_4[20] = *MEMORY[0x1E69E99E0];
  *&msg_4[28] = a2;
  special_reply_port = mig_get_special_reply_port();
  *&msg_4[4] = a1;
  *&msg_4[8] = special_reply_port;
  msg = 5395;
  *&msg_4[12] = 0x5B8DC300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v6 = *&msg_4[8];
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(&msg, 3162115, 0x28u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (*&msg_4[16] == 71)
      {
        v8 = 4294966988;
      }

      else if (*&msg_4[16] == 6000167)
      {
        if ((msg & 0x80000000) == 0)
        {
          if (*msg_4 == 40)
          {
            if (!*&msg_4[4])
            {
              v8 = *&msg_4[28];
              if (!*&msg_4[28])
              {
                *a3 = msg_4[32];
                goto LABEL_27;
              }

              goto LABEL_26;
            }
          }

          else if (*msg_4 == 36)
          {
            if (*&msg_4[4])
            {
              v9 = 1;
            }

            else
            {
              v9 = *&msg_4[28] == 0;
            }

            if (v9)
            {
              v8 = 4294966996;
            }

            else
            {
              v8 = *&msg_4[28];
            }

            goto LABEL_26;
          }
        }

        v8 = 4294966996;
      }

      else
      {
        v8 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&msg);
      goto LABEL_27;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v8 - 268435459) <= 1)
  {
    if ((msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg_4[8]);
    }

    goto LABEL_26;
  }

LABEL_27:
  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t _BKSHIDSetHardwareKeyboardLayout(mach_port_name_t a1, uint64_t a2, char *src)
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  memset(v12, 0, 464);
  *name = 0u;
  v10 = 0u;
  *(&v10 + 1) = *MEMORY[0x1E69E99E0];
  *&v11 = a2;
  if (MEMORY[0x1EEE9AC40])
  {
    v4 = mig_strncpy_zerofill(v12, src, 1024);
  }

  else
  {
    v4 = mig_strncpy(v12, src, 1024);
  }

  DWORD2(v11) = 0;
  HIDWORD(v11) = v4;
  v5 = (v4 + 3) & 0xFFFFFFFC;
  name[0] = 19;
  name[2] = a1;
  name[3] = 0;
  *&v10 = 0x5B8DC400000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
  }

  v6 = mach_msg(name, 1, v5 + 48, 0, 0, 0, 0);
  if ((v6 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    mach_msg_destroy(name);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t _BKSHIDSetAuthenticatedKeyCommands(int a1, uint64_t a2, int a3)
{
  v6 = a2;
  v7 = 16777472;
  v8 = a3;
  v9 = *MEMORY[0x1E69E99E0];
  v10 = a3;
  *msg = 2147483667;
  *&msg[8] = a1;
  *&msg[12] = xmmword_1863CFB00;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  v3 = mach_msg(msg, 1, 0x38u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    mach_msg_destroy(msg);
  }

  return v3;
}

uint64_t _BKSHIDSetPersistentServiceProperties(int a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v10 = a2;
  v11 = 16777472;
  v12 = a3;
  v13 = a4;
  v14 = 16777472;
  v15 = a5;
  v16 = *MEMORY[0x1E69E99E0];
  v17 = a3;
  v18 = a5;
  v7 = 2147483667;
  v8 = a1;
  *name = xmmword_1863CFB10;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v7);
  }

  v5 = mach_msg(&v7, 1, 0x4Cu, 0, 0, 0, 0);
  if ((v5 - 268435459) <= 1)
  {
    if ((v7 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[0]);
    }

    mach_msg_destroy(&v7);
  }

  return v5;
}

uint64_t _BKSHIDGetPersistentServiceProperties(mach_port_t a1, uint64_t a2, int a3, uint64_t a4, int a5, void *a6, _DWORD *a7)
{
  v17 = 2;
  v18 = a2;
  v19 = 16777472;
  v20 = a3;
  v21 = a4;
  v22 = 16777472;
  v23 = a5;
  v24 = *MEMORY[0x1E69E99E0];
  v25 = a3;
  v26 = a5;
  special_reply_port = mig_get_special_reply_port();
  *&v16.msgh_bits = 2147489043;
  v16.msgh_remote_port = a1;
  v16.msgh_local_port = special_reply_port;
  *&v16.msgh_voucher_port = 0x5B8DC700000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v16);
    msgh_local_port = v16.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v12 = mach_msg(&v16, 3162115, 0x4Cu, 0x40u, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (!v12)
    {
      if (v16.msgh_id == 71)
      {
        v13 = 4294966988;
      }

      else if (v16.msgh_id == 6000171)
      {
        if ((v16.msgh_bits & 0x80000000) == 0)
        {
          if (v16.msgh_size == 36)
          {
            v13 = 4294966996;
            if (HIDWORD(v18))
            {
              if (v16.msgh_remote_port)
              {
                v13 = 4294966996;
              }

              else
              {
                v13 = HIDWORD(v18);
              }
            }
          }

          else
          {
            v13 = 4294966996;
          }

          goto LABEL_27;
        }

        v13 = 4294966996;
        if (v17 == 1 && *&v16.msgh_size == 56 && HIBYTE(v19) == 1)
        {
          v14 = v20;
          if (v20 == v22)
          {
            v13 = 0;
            *a6 = v18;
            *a7 = v14;
            return v13;
          }
        }
      }

      else
      {
        v13 = 4294966995;
      }

LABEL_27:
      mach_msg_destroy(&v16);
      return v13;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v13 - 268435459) <= 1)
  {
    if ((v16.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v16.msgh_local_port);
    }

    goto LABEL_27;
  }

  return v13;
}

uint64_t _BKSHIDVerifyEventAuthenticationMessage(mach_port_t a1, uint64_t a2, int a3, int *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = 1;
  v15 = a2;
  v16 = 16777472;
  v17 = a3;
  v18 = *MEMORY[0x1E69E99E0];
  v19 = a3;
  special_reply_port = mig_get_special_reply_port();
  *&v13.msgh_bits = 2147489043;
  v13.msgh_remote_port = a1;
  v13.msgh_local_port = special_reply_port;
  *&v13.msgh_voucher_port = 0x5B8DC800000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v13);
    msgh_local_port = v13.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v8 = mach_msg(&v13, 3162115, 0x38u, 0x30u, msgh_local_port, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (v13.msgh_id == 71)
      {
        v9 = 4294966988;
      }

      else if (v13.msgh_id == 6000172)
      {
        if ((v13.msgh_bits & 0x80000000) == 0)
        {
          if (v13.msgh_size == 40)
          {
            if (!v13.msgh_remote_port)
            {
              v9 = HIDWORD(v15);
              if (!HIDWORD(v15))
              {
                *a4 = v16;
                goto LABEL_27;
              }

              goto LABEL_26;
            }
          }

          else if (v13.msgh_size == 36)
          {
            if (v13.msgh_remote_port)
            {
              v10 = 1;
            }

            else
            {
              v10 = HIDWORD(v15) == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = HIDWORD(v15);
            }

            goto LABEL_26;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v13);
      goto LABEL_27;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((v13.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v13.msgh_local_port);
    }

    goto LABEL_26;
  }

LABEL_27:
  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t _BKSHIDTouchAddAuthenticationSpecifications(int a1, uint64_t a2, int a3)
{
  v6 = a2;
  v7 = 16777472;
  v8 = a3;
  v9 = *MEMORY[0x1E69E99E0];
  v10 = a3;
  *msg = 2147483667;
  *&msg[8] = a1;
  *&msg[12] = xmmword_1863CFB20;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  v3 = mach_msg(msg, 1, 0x38u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    mach_msg_destroy(msg);
  }

  return v3;
}

uint64_t _BKSHIDVerifyEventProvenance(mach_port_t a1, uint64_t a2, int a3, int a4, _BYTE *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = 1;
  v16 = a2;
  v17 = 16777472;
  v18 = a3;
  v19 = *MEMORY[0x1E69E99E0];
  v20 = a3;
  v21 = a4;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x5B8DCA00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v9 = mach_msg(&msg, 3162115, 0x3Cu, 0x30u, msgh_local_port, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (msg.msgh_id == 71)
      {
        v10 = 4294966988;
      }

      else if (msg.msgh_id == 6000174)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 40)
          {
            if (!msg.msgh_remote_port)
            {
              v10 = HIDWORD(v16);
              if (!HIDWORD(v16))
              {
                *a5 = v17;
                goto LABEL_27;
              }

              goto LABEL_26;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v11 = 1;
            }

            else
            {
              v11 = HIDWORD(v16) == 0;
            }

            if (v11)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = HIDWORD(v16);
            }

            goto LABEL_26;
          }
        }

        v10 = 4294966996;
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&msg);
      goto LABEL_27;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v10 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    goto LABEL_26;
  }

LABEL_27:
  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t _BKSHIDGetUISensorCharacteristics(int a1, void *a2, _DWORD *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  memset(&msg_16[4], 0, 44);
  msg_4 = 0;
  special_reply_port = mig_get_special_reply_port();
  msg_8 = a1;
  msg_12 = special_reply_port;
  msg = 5395;
  *msg_16 = 0x5B8DCC00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v7 = msg_12;
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(&msg, 3162115, 0x18u, 0x40u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&msg_16[4] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg_16[4] == 6000176)
      {
        if ((msg & 0x80000000) == 0)
        {
          if (msg_4 == 36)
          {
            v9 = 4294966996;
            if (*&msg_16[16])
            {
              if (msg_8)
              {
                v9 = 4294966996;
              }

              else
              {
                v9 = *&msg_16[16];
              }
            }
          }

          else
          {
            v9 = 4294966996;
          }

          goto LABEL_28;
        }

        v9 = 4294966996;
        if (*&msg_16[8] == 1 && msg_4 == 56 && !msg_8 && msg_16[23] == 1)
        {
          v10 = *&msg_16[24];
          if (*&msg_16[24] == *&msg_16[36])
          {
            v9 = 0;
            *a2 = *&msg_16[12];
            *a3 = v10;
            goto LABEL_29;
          }
        }
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_28:
      mach_msg_destroy(&msg);
      goto LABEL_29;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg_12);
    }

    goto LABEL_28;
  }

LABEL_29:
  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t _BKSHIDTouchSensitiveButtonSetScanMode(mach_port_t a1, int a2, int a3)
{
  v6 = *MEMORY[0x1E69E99E0];
  v7 = a2;
  v8 = a3;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 6000077;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v3 = mach_msg(&msg, 1, 0x28u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v3;
}

uint64_t _BKSDisplayIsDisabled(mach_port_name_t a1, const char *a2, _BYTE *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  memset(v16, 0, 480);
  *name = 0u;
  v15 = 0u;
  *(&v15 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v5 = mig_strncpy_zerofill(v16 + 8, a2, 1024);
  }

  else
  {
    v5 = mig_strncpy(v16 + 8, a2, 1024);
  }

  LODWORD(v16[0]) = 0;
  DWORD1(v16[0]) = v5;
  v6 = (v5 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v15 = 0x5B916800000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v8 = name[3];
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(name, 3162115, v6 + 40, 0x30u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (DWORD1(v15) == 71)
      {
        v10 = 4294966988;
      }

      else if (DWORD1(v15) == 6001100)
      {
        if ((name[0] & 0x80000000) == 0)
        {
          if (name[1] == 40)
          {
            if (!name[2])
            {
              v10 = LODWORD(v16[0]);
              if (!LODWORD(v16[0]))
              {
                *a3 = BYTE4(v16[0]);
                goto LABEL_30;
              }

              goto LABEL_29;
            }
          }

          else if (name[1] == 36)
          {
            if (name[2])
            {
              v11 = 1;
            }

            else
            {
              v11 = LODWORD(v16[0]) == 0;
            }

            if (v11)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = LODWORD(v16[0]);
            }

            goto LABEL_29;
          }
        }

        v10 = 4294966996;
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_29:
      mach_msg_destroy(name);
      goto LABEL_30;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v10 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    goto LABEL_29;
  }

LABEL_30:
  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t _BKSDisplaySetDisabled(mach_port_name_t a1, const char *a2, char a3, _BYTE *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  memset(v19, 0, 480);
  *name = 0u;
  v18 = 0u;
  *(&v18 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v7 = mig_strncpy_zerofill(v19 + 8, a2, 1024);
  }

  else
  {
    v7 = mig_strncpy(v19 + 8, a2, 1024);
  }

  LODWORD(v19[0]) = 0;
  DWORD1(v19[0]) = v7;
  v8 = (v7 + 3) & 0xFFFFFFFC;
  v9 = name + v8;
  v9[40] = a3;
  *(v9 + 41) = 0;
  v9[43] = 0;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v18 = 0x5B916900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v11 = name[3];
  }

  else
  {
    v11 = special_reply_port;
  }

  v12 = mach_msg(name, 3162115, v8 + 44, 0x30u, v11, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (!v12)
    {
      if (DWORD1(v18) == 71)
      {
        v13 = 4294966988;
      }

      else if (DWORD1(v18) == 6001101)
      {
        if ((name[0] & 0x80000000) == 0)
        {
          if (name[1] == 40)
          {
            if (!name[2])
            {
              v13 = LODWORD(v19[0]);
              if (!LODWORD(v19[0]))
              {
                *a4 = BYTE4(v19[0]);
                goto LABEL_30;
              }

              goto LABEL_29;
            }
          }

          else if (name[1] == 36)
          {
            if (name[2])
            {
              v14 = 1;
            }

            else
            {
              v14 = LODWORD(v19[0]) == 0;
            }

            if (v14)
            {
              v13 = 4294966996;
            }

            else
            {
              v13 = LODWORD(v19[0]);
            }

            goto LABEL_29;
          }
        }

        v13 = 4294966996;
      }

      else
      {
        v13 = 4294966995;
      }

LABEL_29:
      mach_msg_destroy(name);
      goto LABEL_30;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v13 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    goto LABEL_29;
  }

LABEL_30:
  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t _BKSDisplaySetReachabilityBounds(mach_port_name_t a1, const char *a2, float a3, float a4, float a5, float a6)
{
  v23 = *MEMORY[0x1E69E9840];
  memset(v22, 0, 480);
  *name = 0u;
  v21 = 0u;
  *(&v21 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v11 = mig_strncpy_zerofill(v22 + 8, a2, 1024);
  }

  else
  {
    v11 = mig_strncpy(v22 + 8, a2, 1024);
  }

  LODWORD(v22[0]) = 0;
  DWORD1(v22[0]) = v11;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  v13 = (name + v12);
  v13[10] = a3;
  v13[11] = a4;
  v13[12] = a5;
  v13[13] = a6;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v21 = 0x5B916A00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v15 = name[3];
  }

  else
  {
    v15 = special_reply_port;
  }

  v16 = mach_msg(name, 3162115, v12 + 56, 0x2Cu, v15, 0, 0);
  v17 = v16;
  if ((v16 - 268435458) <= 0xE && ((1 << (v16 - 2)) & 0x4003) != 0)
  {
    goto LABEL_18;
  }

  if (v16)
  {
    mig_dealloc_special_reply_port();
LABEL_18:
    if ((v17 - 268435459) > 1)
    {
      goto LABEL_24;
    }

    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

LABEL_23:
    mach_msg_destroy(name);
    goto LABEL_24;
  }

  if (DWORD1(v21) == 71)
  {
    v17 = 4294966988;
    goto LABEL_23;
  }

  if (DWORD1(v21) != 6001102)
  {
    v17 = 4294966995;
    goto LABEL_23;
  }

  v17 = 4294966996;
  if ((name[0] & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  if (name[1] != 36)
  {
    goto LABEL_23;
  }

  if (name[2])
  {
    goto LABEL_23;
  }

  v17 = LODWORD(v22[0]);
  if (LODWORD(v22[0]))
  {
    goto LABEL_23;
  }

LABEL_24:
  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t _BKSDisplayWillUnblank(mach_port_name_t a1, const char *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(v10, 0, 480);
  *name = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v3 = mig_strncpy_zerofill(v10 + 8, a2, 1024);
  }

  else
  {
    v3 = mig_strncpy(v10 + 8, a2, 1024);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v3;
  v4 = (v3 + 3) & 0xFFFFFFFC;
  name[0] = 19;
  name[2] = a1;
  name[3] = 0;
  *&v9 = 0x5B916C00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
  }

  v5 = mach_msg(name, 1, v4 + 40, 0, 0, 0, 0);
  if ((v5 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    mach_msg_destroy(name);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t _BKSDisplayGetSystemIdentifiers(mach_port_name_t a1, const char *a2, void *a3, _DWORD *a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  *name = 0u;
  memset(v17, 0, sizeof(v17));
  *(&v17[0] + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v7 = mig_strncpy_zerofill(&v17[1] + 8, a2, 1024);
  }

  else
  {
    v7 = mig_strncpy(&v17[1] + 8, a2, 1024);
  }

  LODWORD(v17[1]) = 0;
  DWORD1(v17[1]) = v7;
  v8 = (v7 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v17[0] = 0x5B916D00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v10 = name[3];
  }

  else
  {
    v10 = special_reply_port;
  }

  v11 = mach_msg(name, 3162115, v8 + 40, 0x40u, v10, 0, 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (!v11)
    {
      if (DWORD1(v17[0]) == 71)
      {
        v12 = 4294966988;
      }

      else if (DWORD1(v17[0]) == 6001105)
      {
        if ((name[0] & 0x80000000) == 0)
        {
          if (name[1] == 36)
          {
            v12 = 4294966996;
            if (LODWORD(v17[1]))
            {
              if (name[2])
              {
                v12 = 4294966996;
              }

              else
              {
                v12 = LODWORD(v17[1]);
              }
            }
          }

          else
          {
            v12 = 4294966996;
          }

          goto LABEL_31;
        }

        v12 = 4294966996;
        if (DWORD2(v17[0]) == 1 && name[1] == 56 && !name[2] && BYTE7(v17[1]) == 1)
        {
          v13 = DWORD2(v17[1]);
          if (DWORD2(v17[1]) == DWORD1(v18))
          {
            v12 = 0;
            *a3 = *(v17 + 12);
            *a4 = v13;
            goto LABEL_32;
          }
        }
      }

      else
      {
        v12 = 4294966995;
      }

LABEL_31:
      mach_msg_destroy(name);
      goto LABEL_32;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v12 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    goto LABEL_31;
  }

LABEL_32:
  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t _BKSDisplaySetSystemIdentifiers(mach_port_t a1, const char *a2, uint64_t a3, unsigned int a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *&v15[8] = 0u;
  memset(&name, 0, sizeof(name));
  v12 = 1;
  v13 = a3;
  v14 = 16777472;
  *v15 = a4;
  *&v15[4] = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v6 = mig_strncpy_zerofill(&v15[20], a2, 1024);
  }

  else
  {
    v6 = mig_strncpy(&v15[20], a2, 1024);
  }

  *&v15[12] = 0;
  *&v15[16] = v6;
  v7 = (v6 + 3) & 0xFFFFFFFC;
  *&v15[v7 + 20] = a4;
  name.msgh_bits = -2147483629;
  name.msgh_remote_port = a1;
  name.msgh_local_port = 0;
  *&name.msgh_voucher_port = 0x5B916E00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&name);
  }

  v8 = mach_msg(&name, 1, v7 + 64, 0, 0, 0, 0);
  if ((v8 - 268435459) <= 1)
  {
    if ((name.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name.msgh_local_port);
    }

    mach_msg_destroy(&name);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t _BKSDisplayIsFlipBookEnabled(mach_port_name_t a1, const char *a2, _BYTE *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  memset(v16, 0, 480);
  *name = 0u;
  v15 = 0u;
  *(&v15 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v5 = mig_strncpy_zerofill(v16 + 8, a2, 1024);
  }

  else
  {
    v5 = mig_strncpy(v16 + 8, a2, 1024);
  }

  LODWORD(v16[0]) = 0;
  DWORD1(v16[0]) = v5;
  v6 = (v5 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v15 = 0x5B916F00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v8 = name[3];
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(name, 3162115, v6 + 40, 0x30u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (DWORD1(v15) == 71)
      {
        v10 = 4294966988;
      }

      else if (DWORD1(v15) == 6001107)
      {
        if ((name[0] & 0x80000000) == 0)
        {
          if (name[1] == 40)
          {
            if (!name[2])
            {
              v10 = LODWORD(v16[0]);
              if (!LODWORD(v16[0]))
              {
                *a3 = BYTE4(v16[0]);
                goto LABEL_30;
              }

              goto LABEL_29;
            }
          }

          else if (name[1] == 36)
          {
            if (name[2])
            {
              v11 = 1;
            }

            else
            {
              v11 = LODWORD(v16[0]) == 0;
            }

            if (v11)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = LODWORD(v16[0]);
            }

            goto LABEL_29;
          }
        }

        v10 = 4294966996;
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_29:
      mach_msg_destroy(name);
      goto LABEL_30;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v10 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    goto LABEL_29;
  }

LABEL_30:
  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t _BKSDisplaySetFlipBookEnabled(mach_port_name_t a1, const char *a2, char a3)
{
  v17 = *MEMORY[0x1E69E9840];
  memset(v16, 0, 480);
  *name = 0u;
  v15 = 0u;
  *(&v15 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v5 = mig_strncpy_zerofill(v16 + 8, a2, 1024);
  }

  else
  {
    v5 = mig_strncpy(v16 + 8, a2, 1024);
  }

  LODWORD(v16[0]) = 0;
  DWORD1(v16[0]) = v5;
  v6 = (v5 + 3) & 0xFFFFFFFC;
  v7 = name + v6;
  v7[40] = a3;
  *(v7 + 41) = 0;
  v7[43] = 0;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v15 = 0x5B917000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v9 = name[3];
  }

  else
  {
    v9 = special_reply_port;
  }

  v10 = mach_msg(name, 3162115, v6 + 44, 0x2Cu, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    goto LABEL_18;
  }

  if (v10)
  {
    mig_dealloc_special_reply_port();
LABEL_18:
    if ((v11 - 268435459) > 1)
    {
      goto LABEL_24;
    }

    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

LABEL_23:
    mach_msg_destroy(name);
    goto LABEL_24;
  }

  if (DWORD1(v15) == 71)
  {
    v11 = 4294966988;
    goto LABEL_23;
  }

  if (DWORD1(v15) != 6001108)
  {
    v11 = 4294966995;
    goto LABEL_23;
  }

  v11 = 4294966996;
  if ((name[0] & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  if (name[1] != 36)
  {
    goto LABEL_23;
  }

  if (name[2])
  {
    goto LABEL_23;
  }

  v11 = LODWORD(v16[0]);
  if (LODWORD(v16[0]))
  {
    goto LABEL_23;
  }

LABEL_24:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t _BKSDisplaySetCalibrationPhase(mach_port_name_t a1, const char *a2, int a3, int a4, int a5)
{
  v21 = *MEMORY[0x1E69E9840];
  memset(v20, 0, 480);
  *name = 0u;
  v19 = 0u;
  *(&v19 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v9 = mig_strncpy_zerofill(v20 + 8, a2, 1024);
  }

  else
  {
    v9 = mig_strncpy(v20 + 8, a2, 1024);
  }

  LODWORD(v20[0]) = 0;
  DWORD1(v20[0]) = v9;
  v10 = (v9 + 3) & 0xFFFFFFFC;
  v11 = (name + v10);
  v11[10] = a3;
  v11[11] = a4;
  v11[12] = a5;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v19 = 0x5B917100000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v13 = name[3];
  }

  else
  {
    v13 = special_reply_port;
  }

  v14 = mach_msg(name, 3162115, v10 + 52, 0x2Cu, v13, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    goto LABEL_18;
  }

  if (v14)
  {
    mig_dealloc_special_reply_port();
LABEL_18:
    if ((v15 - 268435459) > 1)
    {
      goto LABEL_24;
    }

    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

LABEL_23:
    mach_msg_destroy(name);
    goto LABEL_24;
  }

  if (DWORD1(v19) == 71)
  {
    v15 = 4294966988;
    goto LABEL_23;
  }

  if (DWORD1(v19) != 6001109)
  {
    v15 = 4294966995;
    goto LABEL_23;
  }

  v15 = 4294966996;
  if ((name[0] & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  if (name[1] != 36)
  {
    goto LABEL_23;
  }

  if (name[2])
  {
    goto LABEL_23;
  }

  v15 = LODWORD(v20[0]);
  if (LODWORD(v20[0]))
  {
    goto LABEL_23;
  }

LABEL_24:
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t _BKSDisplayIsFlipBookSuppressed(mach_port_name_t a1, const char *a2, _BYTE *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  memset(v16, 0, 480);
  *name = 0u;
  v15 = 0u;
  *(&v15 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v5 = mig_strncpy_zerofill(v16 + 8, a2, 1024);
  }

  else
  {
    v5 = mig_strncpy(v16 + 8, a2, 1024);
  }

  LODWORD(v16[0]) = 0;
  DWORD1(v16[0]) = v5;
  v6 = (v5 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v15 = 0x5B917200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v8 = name[3];
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(name, 3162115, v6 + 40, 0x30u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (DWORD1(v15) == 71)
      {
        v10 = 4294966988;
      }

      else if (DWORD1(v15) == 6001110)
      {
        if ((name[0] & 0x80000000) == 0)
        {
          if (name[1] == 40)
          {
            if (!name[2])
            {
              v10 = LODWORD(v16[0]);
              if (!LODWORD(v16[0]))
              {
                *a3 = BYTE4(v16[0]);
                goto LABEL_30;
              }

              goto LABEL_29;
            }
          }

          else if (name[1] == 36)
          {
            if (name[2])
            {
              v11 = 1;
            }

            else
            {
              v11 = LODWORD(v16[0]) == 0;
            }

            if (v11)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = LODWORD(v16[0]);
            }

            goto LABEL_29;
          }
        }

        v10 = 4294966996;
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_29:
      mach_msg_destroy(name);
      goto LABEL_30;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v10 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    goto LABEL_29;
  }

LABEL_30:
  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t _BKSDisplaySetFlipBookSuppressed(mach_port_name_t a1, const char *a2, char a3)
{
  v17 = *MEMORY[0x1E69E9840];
  memset(v16, 0, 480);
  *name = 0u;
  v15 = 0u;
  *(&v15 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v5 = mig_strncpy_zerofill(v16 + 8, a2, 1024);
  }

  else
  {
    v5 = mig_strncpy(v16 + 8, a2, 1024);
  }

  LODWORD(v16[0]) = 0;
  DWORD1(v16[0]) = v5;
  v6 = (v5 + 3) & 0xFFFFFFFC;
  v7 = name + v6;
  v7[40] = a3;
  *(v7 + 41) = 0;
  v7[43] = 0;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v15 = 0x5B917300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v9 = name[3];
  }

  else
  {
    v9 = special_reply_port;
  }

  v10 = mach_msg(name, 3162115, v6 + 44, 0x2Cu, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    goto LABEL_18;
  }

  if (v10)
  {
    mig_dealloc_special_reply_port();
LABEL_18:
    if ((v11 - 268435459) > 1)
    {
      goto LABEL_24;
    }

    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

LABEL_23:
    mach_msg_destroy(name);
    goto LABEL_24;
  }

  if (DWORD1(v15) == 71)
  {
    v11 = 4294966988;
    goto LABEL_23;
  }

  if (DWORD1(v15) != 6001111)
  {
    v11 = 4294966995;
    goto LABEL_23;
  }

  v11 = 4294966996;
  if ((name[0] & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  if (name[1] != 36)
  {
    goto LABEL_23;
  }

  if (name[2])
  {
    goto LABEL_23;
  }

  v11 = LODWORD(v16[0]);
  if (LODWORD(v16[0]))
  {
    goto LABEL_23;
  }

LABEL_24:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t _BKSDisplaySetCloneRotationDisabled(mach_port_t a1, char a2)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  v7 = 0;
  v8 = 0;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 6001013;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v2 = mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0);
  if ((v2 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

uint64_t _BKSDisplaySetCloneMirroringModeForDestinationDisplay(mach_port_name_t a1, const char *a2, char a3)
{
  v14 = *MEMORY[0x1E69E9840];
  memset(v13, 0, 480);
  *name = 0u;
  v12 = 0u;
  *(&v12 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v5 = mig_strncpy_zerofill(v13 + 8, a2, 1024);
  }

  else
  {
    v5 = mig_strncpy(v13 + 8, a2, 1024);
  }

  LODWORD(v13[0]) = 0;
  DWORD1(v13[0]) = v5;
  v6 = (v5 + 3) & 0xFFFFFFFC;
  v7 = name + v6;
  v7[40] = a3;
  *(v7 + 41) = 0;
  v7[43] = 0;
  name[0] = 19;
  name[2] = a1;
  name[3] = 0;
  *&v12 = 0x5B917600000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
  }

  v8 = mach_msg(name, 1, v6 + 44, 0, 0, 0, 0);
  if ((v8 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    mach_msg_destroy(name);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t _BKSDisplayRemoveCloneMirroringModeForDestinationDisplay(mach_port_name_t a1, const char *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(v10, 0, 480);
  *name = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v3 = mig_strncpy_zerofill(v10 + 8, a2, 1024);
  }

  else
  {
    v3 = mig_strncpy(v10 + 8, a2, 1024);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v3;
  v4 = (v3 + 3) & 0xFFFFFFFC;
  name[0] = 19;
  name[2] = a1;
  name[3] = 0;
  *&v9 = 0x5B917700000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
  }

  v5 = mach_msg(name, 1, v4 + 40, 0, 0, 0, 0);
  if ((v5 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    mach_msg_destroy(name);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t _BKSDisplayTetherPrefsNeedImmediateUpdate(int a1, _BYTE *a2)
{
  memset(&name_12[4], 0, 28);
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = a1;
  name_8 = special_reply_port;
  v10 = 5395;
  *name_12 = 0x5B917900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v10);
    v5 = name_8;
  }

  else
  {
    v5 = special_reply_port;
  }

  v6 = mach_msg(&v10, 3162115, 0x18u, 0x30u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (*&name_12[4] == 71)
      {
        v7 = 4294966988;
      }

      else if (*&name_12[4] == 6001117)
      {
        if ((v10 & 0x80000000) == 0)
        {
          if (name == 40)
          {
            if (!name_4)
            {
              v7 = *&name_12[16];
              if (!*&name_12[16])
              {
                *a2 = name_12[20];
                return v7;
              }

              goto LABEL_26;
            }
          }

          else if (name == 36)
          {
            if (name_4)
            {
              v8 = 1;
            }

            else
            {
              v8 = *&name_12[16] == 0;
            }

            if (v8)
            {
              v7 = 4294966996;
            }

            else
            {
              v7 = *&name_12[16];
            }

            goto LABEL_26;
          }
        }

        v7 = 4294966996;
      }

      else
      {
        v7 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v10);
      return v7;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v7 - 268435459) <= 1)
  {
    if ((v10 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_26;
  }

  return v7;
}

uint64_t _BKSDisplaySetTetheredOrientationNotificationsDisabled(int a1, char a2)
{
  *&msg[20] = 0u;
  v9 = 0;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x1E69E99E0];
  msg[32] = a2;
  *&msg[33] = 0;
  msg[35] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x5B917A00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v4 = *&msg[12];
  }

  else
  {
    v4 = special_reply_port;
  }

  v5 = mach_msg(msg, 3162115, 0x24u, 0x2Cu, v4, 0, 0);
  v6 = v5;
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    goto LABEL_15;
  }

  if (v5)
  {
    mig_dealloc_special_reply_port();
LABEL_15:
    if ((v6 - 268435459) > 1)
    {
      return v6;
    }

    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

LABEL_20:
    mach_msg_destroy(msg);
    return v6;
  }

  if (*&msg[20] == 71)
  {
    v6 = 4294966988;
    goto LABEL_20;
  }

  if (*&msg[20] != 6001118)
  {
    v6 = 4294966995;
    goto LABEL_20;
  }

  v6 = 4294966996;
  if ((*msg & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (*&msg[4] != 36)
  {
    goto LABEL_20;
  }

  if (*&msg[8])
  {
    goto LABEL_20;
  }

  v6 = *&msg[32];
  if (*&msg[32])
  {
    goto LABEL_20;
  }

  return v6;
}

uint64_t _BKSDisplayUpdateTetheredDisplayOrientationIfNecessaryWithInterfaceOrientation(mach_port_t a1, char a2)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  v7 = 0;
  v8 = 0;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 6001019;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v2 = mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0);
  if ((v2 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

uint64_t _BKSDisplayUpdateMirroredDisplayOrientationWithInterfaceOrientation(mach_port_t a1, char a2)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  v7 = 0;
  v8 = 0;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 6001020;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v2 = mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0);
  if ((v2 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

uint64_t _BKSDisplayRenderOverlay(mach_port_name_t a1, const char *a2, void *a3, _DWORD *a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  *name = 0u;
  memset(v17, 0, sizeof(v17));
  *(&v17[0] + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v7 = mig_strncpy_zerofill(&v17[1] + 8, a2, 1024);
  }

  else
  {
    v7 = mig_strncpy(&v17[1] + 8, a2, 1024);
  }

  LODWORD(v17[1]) = 0;
  DWORD1(v17[1]) = v7;
  v8 = (v7 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v17[0] = 0x5B917E00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v10 = name[3];
  }

  else
  {
    v10 = special_reply_port;
  }

  v11 = mach_msg(name, 3162115, v8 + 40, 0x40u, v10, 0, 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (!v11)
    {
      if (DWORD1(v17[0]) == 71)
      {
        v12 = 4294966988;
      }

      else if (DWORD1(v17[0]) == 6001122)
      {
        if ((name[0] & 0x80000000) == 0)
        {
          if (name[1] == 36)
          {
            v12 = 4294966996;
            if (LODWORD(v17[1]))
            {
              if (name[2])
              {
                v12 = 4294966996;
              }

              else
              {
                v12 = LODWORD(v17[1]);
              }
            }
          }

          else
          {
            v12 = 4294966996;
          }

          goto LABEL_31;
        }

        v12 = 4294966996;
        if (DWORD2(v17[0]) == 1 && name[1] == 56 && !name[2] && BYTE7(v17[1]) == 1)
        {
          v13 = DWORD2(v17[1]);
          if (DWORD2(v17[1]) == DWORD1(v18))
          {
            v12 = 0;
            *a3 = *(v17 + 12);
            *a4 = v13;
            goto LABEL_32;
          }
        }
      }

      else
      {
        v12 = 4294966995;
      }

LABEL_31:
      mach_msg_destroy(name);
      goto LABEL_32;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v12 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    goto LABEL_31;
  }

LABEL_32:
  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t _BKSDisplayApplyRenderOverlay(mach_port_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v13 = 2;
  v14 = a2;
  v15 = 16777472;
  v16 = a3;
  v17 = a4;
  v18 = 16777472;
  v19 = a5;
  v20 = *MEMORY[0x1E69E99E0];
  v21 = a3;
  v22 = a5;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x5B917F00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v8 = mach_msg(&msg, 3162115, 0x4Cu, 0x2Cu, msgh_local_port, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
  {
    goto LABEL_15;
  }

  if (v8)
  {
    mig_dealloc_special_reply_port();
LABEL_15:
    if ((v9 - 268435459) > 1)
    {
      goto LABEL_21;
    }

    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

LABEL_20:
    mach_msg_destroy(&msg);
    goto LABEL_21;
  }

  if (msg.msgh_id == 71)
  {
    v9 = 4294966988;
    goto LABEL_20;
  }

  if (msg.msgh_id != 6001123)
  {
    v9 = 4294966995;
    goto LABEL_20;
  }

  v9 = 4294966996;
  if ((msg.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (msg.msgh_size != 36)
  {
    goto LABEL_20;
  }

  if (msg.msgh_remote_port)
  {
    goto LABEL_20;
  }

  v9 = HIDWORD(v14);
  if (HIDWORD(v14))
  {
    goto LABEL_20;
  }

LABEL_21:
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t _BKSDisplayRemoveRenderOverlay(mach_port_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v13 = 2;
  v14 = a2;
  v15 = 16777472;
  v16 = a3;
  v17 = a4;
  v18 = 16777472;
  v19 = a5;
  v20 = *MEMORY[0x1E69E99E0];
  v21 = a3;
  v22 = a5;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x5B918000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v8 = mach_msg(&msg, 3162115, 0x4Cu, 0x2Cu, msgh_local_port, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
  {
    goto LABEL_15;
  }

  if (v8)
  {
    mig_dealloc_special_reply_port();
LABEL_15:
    if ((v9 - 268435459) > 1)
    {
      goto LABEL_21;
    }

    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

LABEL_20:
    mach_msg_destroy(&msg);
    goto LABEL_21;
  }

  if (msg.msgh_id == 71)
  {
    v9 = 4294966988;
    goto LABEL_20;
  }

  if (msg.msgh_id != 6001124)
  {
    v9 = 4294966995;
    goto LABEL_20;
  }

  v9 = 4294966996;
  if ((msg.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (msg.msgh_size != 36)
  {
    goto LABEL_20;
  }

  if (msg.msgh_remote_port)
  {
    goto LABEL_20;
  }

  v9 = HIDWORD(v14);
  if (HIDWORD(v14))
  {
    goto LABEL_20;
  }

LABEL_21:
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t _BKSDisplayFreezeRenderOverlay(mach_port_t a1, uint64_t a2, int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v11 = 1;
  v12 = a2;
  v13 = 16777472;
  v14 = a3;
  v15 = *MEMORY[0x1E69E99E0];
  v16 = a3;
  special_reply_port = mig_get_special_reply_port();
  *&v10.msgh_bits = 2147489043;
  v10.msgh_remote_port = a1;
  v10.msgh_local_port = special_reply_port;
  *&v10.msgh_voucher_port = 0x5B918100000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v10);
    msgh_local_port = v10.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v6 = mach_msg(&v10, 3162115, 0x38u, 0x2Cu, msgh_local_port, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) <= 0xE && ((1 << (v6 - 2)) & 0x4003) != 0)
  {
    goto LABEL_14;
  }

  if (v6)
  {
    mig_dealloc_special_reply_port();
LABEL_14:
    if ((v7 - 268435459) > 1)
    {
      goto LABEL_20;
    }

    if ((v10.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v10.msgh_local_port);
    }

LABEL_19:
    mach_msg_destroy(&v10);
    goto LABEL_20;
  }

  if (v10.msgh_id == 71)
  {
    v7 = 4294966988;
    goto LABEL_19;
  }

  if (v10.msgh_id != 6001125)
  {
    v7 = 4294966995;
    goto LABEL_19;
  }

  v7 = 4294966996;
  if ((v10.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_19;
  }

  if (*&v10.msgh_size != 36)
  {
    goto LABEL_19;
  }

  v7 = HIDWORD(v12);
  if (HIDWORD(v12))
  {
    goto LABEL_19;
  }

LABEL_20:
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t _BKSDisplayDismissInterstitialRenderOverlay(mach_port_t a1, uint64_t a2, int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v11 = 1;
  v12 = a2;
  v13 = 16777472;
  v14 = a3;
  v15 = *MEMORY[0x1E69E99E0];
  v16 = a3;
  special_reply_port = mig_get_special_reply_port();
  *&v10.msgh_bits = 2147489043;
  v10.msgh_remote_port = a1;
  v10.msgh_local_port = special_reply_port;
  *&v10.msgh_voucher_port = 0x5B918200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v10);
    msgh_local_port = v10.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v6 = mach_msg(&v10, 3162115, 0x38u, 0x2Cu, msgh_local_port, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) <= 0xE && ((1 << (v6 - 2)) & 0x4003) != 0)
  {
    goto LABEL_14;
  }

  if (v6)
  {
    mig_dealloc_special_reply_port();
LABEL_14:
    if ((v7 - 268435459) > 1)
    {
      goto LABEL_20;
    }

    if ((v10.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v10.msgh_local_port);
    }

LABEL_19:
    mach_msg_destroy(&v10);
    goto LABEL_20;
  }

  if (v10.msgh_id == 71)
  {
    v7 = 4294966988;
    goto LABEL_19;
  }

  if (v10.msgh_id != 6001126)
  {
    v7 = 4294966995;
    goto LABEL_19;
  }

  v7 = 4294966996;
  if ((v10.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_19;
  }

  if (*&v10.msgh_size != 36)
  {
    goto LABEL_19;
  }

  v7 = HIDWORD(v12);
  if (HIDWORD(v12))
  {
    goto LABEL_19;
  }

LABEL_20:
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t _BKSDisplayGetRenderOverlayDismissActions(int a1, void *a2, _DWORD *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  memset(&msg_16[4], 0, 44);
  msg_4 = 0;
  special_reply_port = mig_get_special_reply_port();
  msg_8 = a1;
  msg_12 = special_reply_port;
  msg = 5395;
  *msg_16 = 0x5B918300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v7 = msg_12;
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(&msg, 3162115, 0x18u, 0x40u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&msg_16[4] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg_16[4] == 6001127)
      {
        if ((msg & 0x80000000) == 0)
        {
          if (msg_4 == 36)
          {
            v9 = 4294966996;
            if (*&msg_16[16])
            {
              if (msg_8)
              {
                v9 = 4294966996;
              }

              else
              {
                v9 = *&msg_16[16];
              }
            }
          }

          else
          {
            v9 = 4294966996;
          }

          goto LABEL_28;
        }

        v9 = 4294966996;
        if (*&msg_16[8] == 1 && msg_4 == 56 && !msg_8 && msg_16[23] == 1)
        {
          v10 = *&msg_16[24];
          if (*&msg_16[24] == *&msg_16[36])
          {
            v9 = 0;
            *a2 = *&msg_16[12];
            *a3 = v10;
            goto LABEL_29;
          }
        }
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_28:
      mach_msg_destroy(&msg);
      goto LABEL_29;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg_12);
    }

    goto LABEL_28;
  }

LABEL_29:
  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t _BKSDisplaySetArrangement(int a1, uint64_t a2, int a3)
{
  v6 = a2;
  v7 = 16777472;
  v8 = a3;
  v9 = *MEMORY[0x1E69E99E0];
  v10 = a3;
  *msg = 2147483667;
  *&msg[8] = a1;
  *&msg[12] = xmmword_1863CFB40;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  v3 = mach_msg(msg, 1, 0x38u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    mach_msg_destroy(msg);
  }

  return v3;
}

uint64_t _XDeliverAccelerometerEvent(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 56)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = _BKXXDeliverAccelerometerEvent(*(result + 32), *(result + 40), *(result + 44), *(result + 48), result, *(result + 52));
    *(a2 + 32) = 0;
  }

  return result;
}

uint64_t (*BKAccelerometer_server_routine(uint64_t a1))(uint64_t result, uint64_t a2)
{
  if (*(a1 + 20) == 980665)
  {
    return _XDeliverAccelerometerEvent;
  }

  else
  {
    return 0;
  }
}

uint64_t BKAccelerometer_server(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v4 = *(a1 + 20) + 100;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 20) = v4;
  if (*(a1 + 20) == 980665)
  {
    if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 56)
    {
      *(a2 + 32) = -304;
      *(a2 + 24) = *MEMORY[0x1E69E99E0];
    }

    else
    {
      _BKXXDeliverAccelerometerEvent(*(a1 + 32), *(a1 + 40), *(a1 + 44), *(a1 + 48), a1, *(a1 + 52));
      *(a2 + 32) = 0;
    }

    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    *(a2 + 32) = -303;
  }

  return result;
}

uint64_t _BKSWatchdogGetIsAlive(int a1, _BYTE *a2, mach_msg_timeout_t a3)
{
  memset(&reply_port_12[4], 0, 28);
  reply_port = 0;
  v6 = mig_get_reply_port();
  reply_port_4 = a1;
  reply_port_8 = v6;
  v12 = 5395;
  *reply_port_12 = 0x5B955000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v12);
    v7 = reply_port_8;
  }

  else
  {
    v7 = v6;
  }

  v8 = mach_msg(&v12, 275, 0x18u, 0x30u, v7, a3, 0);
  v9 = v8;
  if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port_8);
  }

  else
  {
    if (!v8)
    {
      if (*&reply_port_12[4] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&reply_port_12[4] == 6002100)
      {
        if ((v12 & 0x80000000) == 0)
        {
          if (reply_port == 40)
          {
            if (!reply_port_4)
            {
              v9 = *&reply_port_12[16];
              if (!*&reply_port_12[16])
              {
                *a2 = reply_port_12[20];
                return v9;
              }

              goto LABEL_27;
            }
          }

          else if (reply_port == 36)
          {
            if (reply_port_4)
            {
              v10 = 1;
            }

            else
            {
              v10 = *&reply_port_12[16] == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&reply_port_12[16];
            }

            goto LABEL_27;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_27:
      mach_msg_destroy(&v12);
      return v9;
    }

    mig_dealloc_reply_port(reply_port_8);
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((v12 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], reply_port_8);
    }

    goto LABEL_27;
  }

  return v9;
}