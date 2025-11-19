@interface SCNCommonProfileProgramGenerator
+ (id)generatorWithProfile:(int)a3 allowingHotReload:(BOOL)a4;
- (SCNCommonProfileProgramGenerator)init;
- (__C3DFXProgram)programWithHashCode:(__C3DProgramHashCode *)a3 engineContext:(__C3DEngineContext *)a4 trackedResource:(id)a5 introspectionDataPtr:(void *)a6;
- (int)profile;
- (void)dealloc;
- (void)emptyShaderCache;
- (void)releaseProgramForResource:(id)a3;
@end

@implementation SCNCommonProfileProgramGenerator

- (SCNCommonProfileProgramGenerator)init
{
  v8.receiver = self;
  v8.super_class = SCNCommonProfileProgramGenerator;
  v2 = [(SCNCommonProfileProgramGenerator *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_programMutex._os_unfair_lock_opaque = 0;
    v4 = *MEMORY[0x277CBECE8];
    v5 = MEMORY[0x277CBF150];
    v2->_shaders = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v3->_trackedResourcesToHashcode = CFDictionaryCreateMutable(v4, 0, 0, v5);
    SharedInstance = C3DNotificationCenterGetSharedInstance();
    C3DNotificationCenterAddObserver(SharedInstance, v3, __HandleProfileWillDieNotification, @"kC3DNotificationProfileWillDie", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v3;
}

- (void)dealloc
{
  SharedInstance = C3DNotificationCenterGetSharedInstance();
  C3DNotificationCenterRemoveObserver(SharedInstance, self, @"kC3DNotificationProfileWillDie", 0);
  shaders = self->_shaders;
  if (shaders)
  {
    CFRelease(shaders);
    self->_shaders = 0;
  }

  trackedResourcesToHashcode = self->_trackedResourcesToHashcode;
  if (trackedResourcesToHashcode)
  {
    CFRelease(trackedResourcesToHashcode);
    self->_trackedResourcesToHashcode = 0;
  }

  v6.receiver = self;
  v6.super_class = SCNCommonProfileProgramGenerator;
  [(SCNCommonProfileProgramGenerator *)&v6 dealloc];
}

- (int)profile
{
  v2 = scn_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(SCNCommonProfileProgramGenerator *)v2 profile];
  }

  return -1;
}

- (void)emptyShaderCache
{
  CFDictionaryRemoveAllValues(self->_shaders);
  trackedResourcesToHashcode = self->_trackedResourcesToHashcode;

  CFDictionaryRemoveAllValues(trackedResourcesToHashcode);
}

+ (id)generatorWithProfile:(int)a3 allowingHotReload:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  objc_sync_enter(a1);
  if (!s_registry[v5])
  {
    if (v5)
    {
      s_registry[v5] = [[SCNCommonProfileProgramGeneratorGL alloc] initWithProfile:v5];
    }

    else
    {
      s_registry[0] = [[SCNCommonProfileProgramGeneratorMetal alloc] initAllowingHotReload:v4];
    }
  }

  objc_sync_exit(a1);
  return s_registry[v5];
}

- (__C3DFXProgram)programWithHashCode:(__C3DProgramHashCode *)a3 engineContext:(__C3DEngineContext *)a4 trackedResource:(id)a5 introspectionDataPtr:(void *)a6
{
  v37 = *MEMORY[0x277D85DE8];
  HashCode = C3DProgramHashCodeGetHashCode(a3);
  if (HashCode)
  {
    v12 = HashCode;
    os_unfair_lock_lock(&self->_programMutex);
    Value = CFDictionaryGetValue(self->_shaders, v12);
    if (Value)
    {
      v14 = Value;
      v15 = CFSetContainsValue(Value[2], a5);
      v16 = v15 == 0;
      if (!v15)
      {
        CFSetAddValue(v14[2], a5);
      }

      v17 = v14[1];
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      kdebug_trace();
      v17 = [(SCNCommonProfileProgramGenerator *)self _newProgramWithHashCode:a3 engineContext:a4 introspectionDataPtr:a6];
      kdebug_trace();
      objc_autoreleasePoolPop(v26);
      if (!v17)
      {
        v30 = CFCopyDescription(a3);
        v31 = scn_default_log();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v33 = 138412546;
          v34 = v12;
          v35 = 2112;
          v36 = v30;
          _os_log_impl(&dword_21BEF7000, v31, OS_LOG_TYPE_DEFAULT, "Warning: Failed to create program for hashcode %@: %@", &v33, 0x16u);
        }

        CFRelease(v30);
        v17 = 0;
        goto LABEL_21;
      }

      C3DEntitySetName(v17, v12);
      v27 = objc_alloc_init(SCNCommonProfileProgramCache);
      v27->_program = CFRetain(v17);
      CFSetAddValue(v27->_owners, a5);
      CFDictionarySetValue(self->_shaders, v12, v27);

      CFRelease(v17);
      v16 = 1;
    }

    if (v16 && v17 != 0)
    {
      Mutable = CFDictionaryGetValue(self->_trackedResourcesToHashcode, a5);
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
        CFDictionarySetValue(self->_trackedResourcesToHashcode, a5, Mutable);
        CFRelease(Mutable);
      }

      CFArrayAppendValue(Mutable, v12);
    }

LABEL_21:
    os_unfair_lock_unlock(&self->_programMutex);
    return v17;
  }

  v18 = scn_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    [(SCNCommonProfileProgramGenerator *)v18 programWithHashCode:v19 engineContext:v20 trackedResource:v21 introspectionDataPtr:v22, v23, v24, v25];
  }

  return 0;
}

- (void)releaseProgramForResource:(id)a3
{
  if (!a3)
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(SCNCommonProfileProgramGenerator *)v5 releaseProgramForResource:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  os_unfair_lock_lock(&self->_programMutex);
  Value = CFDictionaryGetValue(self->_trackedResourcesToHashcode, a3);
  if (Value)
  {
    v14 = Value;
    Count = CFArrayGetCount(Value);
    if (Count >= 1)
    {
      v16 = Count;
      for (i = 0; i != v16; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v14, i);
        v19 = CFDictionaryGetValue(self->_shaders, ValueAtIndex);
        if (v19)
        {
          v20 = v19;
          CFSetRemoveValue(v19[2], a3);
          if (!CFSetGetCount(v20[2]))
          {
            CFDictionaryRemoveValue(self->_shaders, ValueAtIndex);
          }
        }

        else if ((releaseProgramForResource__done & 1) == 0)
        {
          releaseProgramForResource__done = 1;
          v21 = scn_default_log();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            [(SCNCommonProfileProgramGenerator *)&v22 releaseProgramForResource:v23, v21];
          }
        }
      }
    }
  }

  CFDictionaryRemoveValue(self->_trackedResourcesToHashcode, a3);
  os_unfair_lock_unlock(&self->_programMutex);
}

- (void)releaseProgramForResource:(os_log_t)log .cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: C3DCommonProfileProgramReleaseHashCode can't find cache for tracked resource", buf, 2u);
}

@end