@interface ATXActionCriteriaWorldState
- (ATXActionCriteriaWorldState)init;
- (BOOL)airDropCapability;
- (BOOL)airplaneMode;
- (BOOL)coreRoutineCapability;
- (BOOL)doNotDisturb;
- (BOOL)greenTeaDeviceCapability;
- (BOOL)internalBuild;
- (BOOL)lockScreen;
- (BOOL)telephonyCapability;
- (NSDate)now;
- (id)initFake;
- (void)airplaneMode;
- (void)setAirDropCapability:(BOOL)a3;
- (void)setAirplaneMode:(BOOL)a3;
- (void)setCoreRoutineCapability:(BOOL)a3;
- (void)setGreenTeaDeviceCapability:(BOOL)a3;
- (void)setInternalBuild:(BOOL)a3;
- (void)setLockScreen:(BOOL)a3;
- (void)setNow:(id)a3;
- (void)setTelephonyCapability:(BOOL)a3;
@end

@implementation ATXActionCriteriaWorldState

- (BOOL)lockScreen
{
  if (self->_fake)
  {
    return *&self->_flags < 0;
  }

  v2 = *(&self->_flags + 1);
  if ((v2 & 0x100) != 0)
  {
    return *&self->_flags < 0;
  }

  v3 = 0;
  *&self->_flags &= ~0x80u;
  *(&self->_flags + 1) = v2 | 0x100;
  return v3;
}

- (ATXActionCriteriaWorldState)init
{
  v3.receiver = self;
  v3.super_class = ATXActionCriteriaWorldState;
  return [(ATXActionCriteriaWorldState *)&v3 init];
}

- (NSDate)now
{
  if (self->_fake || (*(&self->_flags + 1) & 1) != 0)
  {
    p_now = &self->_now;
  }

  else
  {
    v4 = objc_opt_new();
    now = self->_now;
    p_now = &self->_now;
    *p_now = v4;
  }

  v6 = *p_now;

  return v6;
}

- (id)initFake
{
  v2 = [(ATXActionCriteriaWorldState *)self init];
  v3 = v2;
  if (v2)
  {
    v2->_fake = 1;
    v4 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:0.0];
    now = v3->_now;
    v3->_now = v4;
  }

  return v3;
}

- (void)setNow:(id)a3
{
  v4 = [a3 copy];
  now = self->_now;
  self->_now = v4;

  *(&self->_flags + 1) |= 1u;
}

- (BOOL)doNotDisturb
{
  v10 = *MEMORY[0x1E69E9840];
  if (!self->_fake && (*(&self->_flags + 1) & 2) == 0)
  {
    v3 = [MEMORY[0x1E69C5AB0] currentModeSemanticType];
    v4 = __atxlog_handle_default();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        v8 = 134217984;
        v9 = [v3 integerValue];
        _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "Criteria: focus event type: %lu", &v8, 0xCu);
      }

      if (![v3 integerValue])
      {
        *&self->_flags |= 1u;
        flags = 1;
LABEL_13:
        *(&self->_flags + 1) |= 2u;

        return flags & 1;
      }
    }

    else
    {
      if (v5)
      {
        LOWORD(v8) = 0;
        _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "Criteria: focus event nil", &v8, 2u);
      }
    }

    flags = 0;
    *&self->_flags &= ~1u;
    goto LABEL_13;
  }

  flags = self->_flags;
  return flags & 1;
}

- (BOOL)telephonyCapability
{
  if (self->_fake || (*(&self->_flags + 1) & 4) != 0)
  {
    return (*&self->_flags >> 1) & 1;
  }

  else
  {
    MGBool = getMGBool(@"telephony");
    if (MGBool)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFD | v4;
    *(&self->_flags + 1) |= 4u;
  }

  return MGBool;
}

- (void)setTelephonyCapability:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFD | v3;
  *(&self->_flags + 1) |= 4u;
}

- (BOOL)airDropCapability
{
  if (self->_fake || (*(&self->_flags + 1) & 8) != 0)
  {
    return (*&self->_flags >> 2) & 1;
  }

  else
  {
    MGBool = getMGBool(@"AirDropCapability");
    if (MGBool)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFB | v4;
    *(&self->_flags + 1) |= 8u;
  }

  return MGBool;
}

- (void)setAirDropCapability:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFB | v3;
  *(&self->_flags + 1) |= 8u;
}

- (BOOL)airplaneMode
{
  if (self->_fake || (*(&self->_flags + 1) & 0x10) != 0)
  {
    return (*&self->_flags >> 3) & 1;
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v3 = getSCPreferencesCreateSymbolLoc_ptr;
    v14 = getSCPreferencesCreateSymbolLoc_ptr;
    if (!getSCPreferencesCreateSymbolLoc_ptr)
    {
      v4 = SystemConfigurationLibrary();
      v12[3] = dlsym(v4, "SCPreferencesCreate");
      getSCPreferencesCreateSymbolLoc_ptr = v12[3];
      v3 = v12[3];
    }

    _Block_object_dispose(&v11, 8);
    if (!v3)
    {
      [ATXActionCriteriaWorldState airplaneMode];
    }

    v5 = v3(0, @"com.apple.proactive.AppPredictionClient", @"com.apple.radios.plist");
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v6 = getSCPreferencesGetValueSymbolLoc_ptr;
    v14 = getSCPreferencesGetValueSymbolLoc_ptr;
    if (!getSCPreferencesGetValueSymbolLoc_ptr)
    {
      v7 = SystemConfigurationLibrary();
      v12[3] = dlsym(v7, "SCPreferencesGetValue");
      getSCPreferencesGetValueSymbolLoc_ptr = v12[3];
      v6 = v12[3];
    }

    _Block_object_dispose(&v11, 8);
    if (!v6)
    {
      [ATXActionCriteriaWorldState airplaneMode];
    }

    v8 = v6(v5, @"AirplaneMode");
    CFRelease(v5);
    LOBYTE(v9) = v8 == *MEMORY[0x1E695E4D0];
    *&self->_flags = *&self->_flags & 0xF7 | (8 * v9);
    *(&self->_flags + 1) |= 0x10u;
  }

  return v9;
}

- (void)setAirplaneMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xF7 | v3;
  *(&self->_flags + 1) |= 0x10u;
}

- (BOOL)coreRoutineCapability
{
  if (self->_fake || (*(&self->_flags + 1) & 0x20) != 0)
  {
    return (*&self->_flags >> 4) & 1;
  }

  else
  {
    MGBool = getMGBool(@"CoreRoutineCapability");
    if (MGBool)
    {
      v4 = 16;
    }

    else
    {
      v4 = 0;
    }

    *&self->_flags = *&self->_flags & 0xEF | v4;
    *(&self->_flags + 1) |= 0x20u;
  }

  return MGBool;
}

- (void)setCoreRoutineCapability:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xEF | v3;
  *(&self->_flags + 1) |= 0x20u;
}

- (BOOL)greenTeaDeviceCapability
{
  if (self->_fake || (*(&self->_flags + 1) & 0x40) != 0)
  {
    return (*&self->_flags >> 5) & 1;
  }

  else
  {
    MGBool = getMGBool(@"green-tea");
    if (MGBool)
    {
      v4 = 32;
    }

    else
    {
      v4 = 0;
    }

    *&self->_flags = *&self->_flags & 0xDF | v4;
    *(&self->_flags + 1) |= 0x40u;
  }

  return MGBool;
}

- (void)setGreenTeaDeviceCapability:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xDF | v3;
  *(&self->_flags + 1) |= 0x40u;
}

- (BOOL)internalBuild
{
  if (self->_fake || (*(&self->_flags + 1) & 0x80) != 0)
  {
    return (*&self->_flags >> 6) & 1;
  }

  else
  {
    MGBool = getMGBool(@"InternalBuild");
    if (MGBool)
    {
      v4 = 64;
    }

    else
    {
      v4 = 0;
    }

    *&self->_flags = *&self->_flags & 0xBF | v4;
    *(&self->_flags + 1) |= 0x80u;
  }

  return MGBool;
}

- (void)setInternalBuild:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xBF | v3;
  *(&self->_flags + 1) |= 0x80u;
}

- (void)setLockScreen:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = v3 & 0x80 | *&self->_flags & 0x7F;
  *(&self->_flags + 1) |= 0x100u;
}

- (void)airplaneMode
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"SCPreferencesRef _SCPreferencesCreate(CFAllocatorRef, CFStringRef, CFStringRef)"}];
  [v0 handleFailureInFunction:v1 file:@"ATXActionCriteria.m" lineNumber:30 description:{@"%s", dlerror()}];

  __break(1u);
}

@end