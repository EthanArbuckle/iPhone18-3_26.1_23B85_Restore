@interface RadiosPreferences
+ (BOOL)shouldMirrorAirplaneMode;
- (BOOL)airplaneMode;
- (BOOL)telephonyStateWithBundleIdentifierOut:(id *)a3;
- (RadiosPreferences)initWithQueue:(id)a3;
- (void)dealloc;
- (void)getValueWithLockForKey:(id)a3;
- (void)initializeSCPrefs:(id)a3;
- (void)notifyTarget:(unsigned int)a3;
- (void)release;
- (void)setAirplaneModeWithoutMirroring:(BOOL)a3;
- (void)setTelephonyState:(BOOL)a3 fromBundleID:(id)a4;
- (void)setValue:(void *)a3 forKey:(id)a4;
@end

@implementation RadiosPreferences

- (RadiosPreferences)initWithQueue:(id)a3
{
  v7.receiver = self;
  v7.super_class = RadiosPreferences;
  v4 = [(RadiosPreferences *)&v7 init];
  if (v4)
  {
    pthread_mutex_lock(&__sValidObjectsLock);
    Mutable = __sValidObjects;
    if (!__sValidObjects)
    {
      Mutable = CFSetCreateMutable(0, 0, 0);
      __sValidObjects = Mutable;
    }

    CFSetAddValue(Mutable, v4);
    pthread_mutex_unlock(&__sValidObjectsLock);
    v4->_dispatchQueue = a3;
    v4->radios_prefs_log = os_log_create("com.apple.AppSupport", "RadiosPreferences");
    [(RadiosPreferences *)v4 initializeSCPrefs:@"com.apple.radios.plist"];
    v4->_isCachedAirplaneModeValid = 0;
  }

  return v4;
}

- (void)release
{
  pthread_mutex_lock(&__sValidObjectsLock);
  if ([(RadiosPreferences *)self retainCount]== 1 && __sValidObjects)
  {
    CFSetRemoveValue(__sValidObjects, self);
  }

  pthread_mutex_unlock(&__sValidObjectsLock);
  v3.receiver = self;
  v3.super_class = RadiosPreferences;
  [(RadiosPreferences *)&v3 release];
}

- (void)dealloc
{
  prefs = self->_prefs;
  if (prefs)
  {
    SCPreferencesSetDispatchQueue(prefs, 0);
    CFRelease(self->_prefs);
  }

  v4.receiver = self;
  v4.super_class = RadiosPreferences;
  [(RadiosPreferences *)&v4 dealloc];
}

- (BOOL)airplaneMode
{
  if (self->_isCachedAirplaneModeValid)
  {
    return self->_cachedAirplaneMode;
  }

  else
  {
    v4 = [(RadiosPreferences *)self getValueForKey:@"AirplaneMode"];
    v3 = v4 == *MEMORY[0x1E695E4D0];
    self->_cachedAirplaneMode = v3;
    self->_isCachedAirplaneModeValid = 1;
  }

  return v3;
}

+ (BOOL)shouldMirrorAirplaneMode
{
  v8 = 0;
  if (!NanoPreferencesSyncLibraryCore())
  {
    NSLog(@"Class NPSDomainAccessor could not be loaded.");
LABEL_7:
    v6 = 0;
    return v6 & 1;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__0;
  v2 = getNPSDomainAccessorClass_softClass;
  v14 = __Block_byref_object_dispose__0;
  v15 = getNPSDomainAccessorClass_softClass;
  if (!getNPSDomainAccessorClass_softClass)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getNPSDomainAccessorClass_block_invoke;
    v9[3] = &unk_1E7450E18;
    v9[4] = &v10;
    __getNPSDomainAccessorClass_block_invoke(v9);
    v2 = v11[5];
  }

  _Block_object_dispose(&v10, 8);
  v3 = [[v2 alloc] initWithDomain:@"com.apple.nano"];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [v3 BOOLForKey:@"mirror-airplane" keyExistsAndHasValidFormat:&v8];

  v6 = v8 & v5;
  return v6 & 1;
}

- (void)setAirplaneModeWithoutMirroring:(BOOL)a3
{
  v5 = MEMORY[0x1E695E4D0];
  if (!a3)
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  [(RadiosPreferences *)self setValue:*v5 forKey:@"AirplaneMode"];
  self->_cachedAirplaneMode = a3;
  self->_isCachedAirplaneModeValid = 1;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"RadiosPreferencesAirplaneModeDidChangeNotification", 0, 0, 1u);
}

- (BOOL)telephonyStateWithBundleIdentifierOut:(id *)a3
{
  v4 = [(RadiosPreferences *)self getValueWithLockForKey:@"TelephonyState"];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_msgSend(v4 objectForKeyedSubscript:{@"TelephonyEnabled", "BOOLValue"}];
    v4 = [v5 objectForKeyedSubscript:@"bundle_identifier"];
  }

  else
  {
    v6 = 1;
  }

  *a3 = v4;
  return v6;
}

- (void)setTelephonyState:(BOOL)a3 fromBundleID:(id)a4
{
  v5 = a3;
  v18[2] = *MEMORY[0x1E69E9840];
  v17[0] = @"TelephonyEnabled";
  v17[1] = @"bundle_identifier";
  v18[0] = [MEMORY[0x1E696AD98] numberWithBool:?];
  v18[1] = a4;
  -[RadiosPreferences setValue:forKey:](self, "setValue:forKey:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2], @"TelephonyState");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"RadiosPreferencesAirplaneModeDidChangeNotification", 0, 0, 1u);
  [a4 UTF8String];
  ct_green_tea_logger_create();
  CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
  if (CTGreenTeaOsLogHandle)
  {
    v9 = CTGreenTeaOsLogHandle;
    if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
    {
      v10 = @"On";
      if (v5)
      {
        v11 = @"Off";
      }

      else
      {
        v11 = @"On";
      }

      if (!v5)
      {
        v10 = @"Off";
      }

      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_195E6C000, v9, OS_LOG_TYPE_INFO, "Cellular Enabled: %@ ==>> %@", &v13, 0x16u);
    }
  }

  ct_green_tea_logger_destroy();
  v12 = *MEMORY[0x1E69E9840];
}

- (void)initializeSCPrefs:(id)a3
{
  v5 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  if (!v5)
  {
    v5 = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
  }

  self->_prefs = SCPreferencesCreateWithAuthorization(*MEMORY[0x1E695E480], v5, a3, 0);
  v6[0] = 0;
  v7 = 0u;
  v8 = 0;
  v6[1] = self;
  [(RadiosPreferences *)self setCallback:RadioPreferencesCallback withContext:v6];
  SCPreferencesSetDispatchQueue(self->_prefs, self->_dispatchQueue);
}

- (void)notifyTarget:(unsigned int)a3
{
  if ((a3 & 2) != 0)
  {
    if (![(RadiosPreferences *)self notifyForExternalChangeOnly]|| !self->_applySkipCount)
    {
      if (self->_delegate)
      {
        [(RadiosPreferences *)self refresh];
        [(RadiosPreferencesDelegate *)self->_delegate airplaneModeChanged];
        [(RadiosPreferences *)self synchronize];
      }
    }

    applySkipCount = self->_applySkipCount;
    v5 = __OFSUB__(applySkipCount, 1);
    v6 = applySkipCount - 1;
    if (v6 < 0 == v5)
    {
      self->_applySkipCount = v6;
    }
  }
}

- (void)getValueWithLockForKey:(id)a3
{
  if (!SCPreferencesLock(self->_prefs, 1u))
  {
    if (SCError() != 3005)
    {
      return 0;
    }

    SCPreferencesSynchronize(self->_prefs);
    if (!SCPreferencesLock(self->_prefs, 1u))
    {
      return 0;
    }
  }

  Value = SCPreferencesGetValue(self->_prefs, a3);
  SCPreferencesUnlock(self->_prefs);
  return Value;
}

- (void)setValue:(void *)a3 forKey:(id)a4
{
  if (SCPreferencesLock(self->_prefs, 1u) || SCError() == 3005 && (SCPreferencesSynchronize(self->_prefs), SCPreferencesLock(self->_prefs, 1u)))
  {
    if (SCPreferencesSetValue(self->_prefs, a4, a3) && SCPreferencesCommitChanges(self->_prefs) && SCPreferencesApplyChanges(self->_prefs))
    {
      ++self->_applySkipCount;
      [(RadiosPreferences *)self synchronize];
    }

    prefs = self->_prefs;

    SCPreferencesUnlock(prefs);
  }
}

- (void)setAirplaneModeInNSS:(char)a1 .cold.1(char a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1 & 1;
  _os_log_fault_impl(&dword_195E6C000, a2, OS_LOG_TYPE_FAULT, "Call to NanoSystemSettings to %d airplane mode timed out", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end