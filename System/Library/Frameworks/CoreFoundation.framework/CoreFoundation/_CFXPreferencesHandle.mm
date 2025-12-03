@interface _CFXPreferencesHandle
- (_CFXPreferencesHandle)init;
- (id)copyPrefs;
- (uint64_t)_canUseCachedPersonaInfo;
- (void)copyPrefs;
- (void)dealloc;
- (void)forEachPrefsPerformBlock:(id)block;
@end

@implementation _CFXPreferencesHandle

- (id)copyPrefs
{
  v25 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->lock);
  overrideEUID = self->overrideEUID;
  if (overrideEUID == -1)
  {
    overrideEUID = _CFGetEUID();
  }

  p_prefs = &self->prefs;
  prefs = self->prefs;
  if (prefs->_euid == overrideEUID)
  {
    prefs = 0;
  }

  else
  {
    v6 = objc_alloc_init(_CFXPreferences);
    self->prefs = v6;
    [(_CFXPreferences *)v6 ingestVolatileStateFromPreferences:?];
    self->nonLaunchPersonaID = -1;
    v7 = _CFPrefsClientLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(_CFXPreferencesHandle *)&prefs->_euid copyPrefs];
    }
  }

  if (self->processCanHaveMultiplePersonas)
  {
    if ([(_CFXPreferencesHandle *)self _canUseCachedPersonaInfo])
    {
      cachedUseLaunchPersona = self->cachedUseLaunchPersona;
      nonLaunchPersonaID = self->nonLaunchPersonaID;
    }

    else
    {
      getpid();
      v18 = *MEMORY[0x1E69E9BD0];
      if (sandbox_check())
      {
        nonLaunchPersonaID = 0;
        cachedUseLaunchPersona = 1;
      }

      else
      {
        v24 = 0;
        memset(v23, 0, sizeof(v23));
        *buf = 2;
        v21 = kpersona_info();
        nonLaunchPersonaID = 0;
        if (v21)
        {
          nonLaunchPersonaID = 0;
        }

        cachedUseLaunchPersona = 1;
      }

      self->cachedUseLaunchPersona = 1;
    }
  }

  else
  {
    nonLaunchPersonaID = 0;
    cachedUseLaunchPersona = 1;
  }

  if (_CFPNLPO == -1)
  {
    v10 = nonLaunchPersonaID;
  }

  else
  {
    v10 = _CFPNLPO;
  }

  if (_CFPNLPO == -1 && cachedUseLaunchPersona)
  {
    nonLaunchPersonaPrefs = 0;
  }

  else
  {
    if (self->nonLaunchPersonaID == v10)
    {
      nonLaunchPersonaPrefs = 0;
    }

    else
    {
      nonLaunchPersonaPrefs = self->nonLaunchPersonaPrefs;
      v12 = objc_alloc_init(_CFXPreferences);
      self->nonLaunchPersonaPrefs = v12;
      v12->_nonLaunchPersonaUID = v10;
      if (nonLaunchPersonaPrefs)
      {
        v13 = nonLaunchPersonaPrefs;
      }

      else
      {
        v13 = *p_prefs;
      }

      [(_CFXPreferences *)self->nonLaunchPersonaPrefs ingestVolatileStateFromPreferences:v13];
      v14 = _CFPrefsClientLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v19 = self->nonLaunchPersonaID;
        v20 = self->nonLaunchPersonaPrefs;
        *buf = 67109634;
        LODWORD(v23[0]) = v19;
        WORD2(v23[0]) = 1024;
        *(v23 + 6) = v10;
        WORD5(v23[0]) = 2114;
        *(v23 + 12) = v20;
        _os_log_debug_impl(&dword_1830E6000, v14, OS_LOG_TYPE_DEBUG, "Replacing preferences for non-launch persona UID change: %u -> %u %{public}@", buf, 0x18u);
      }

      self->nonLaunchPersonaID = v10;
    }

    p_prefs = &self->nonLaunchPersonaPrefs;
  }

  v15 = *p_prefs;
  os_unfair_lock_unlock(&self->lock);
  if (prefs)
  {
  }

  if (nonLaunchPersonaPrefs)
  {
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (_CFXPreferencesHandle)init
{
  v30 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = _CFXPreferencesHandle;
  v2 = [(_CFXPreferencesHandle *)&v6 init];
  if (v2)
  {
    v2->prefs = objc_alloc_init(_CFXPreferences);
    *&v2->lock._os_unfair_lock_opaque = 0xFFFFFFFF00000000;
    v2->nonLaunchPersonaID = -1;
    v2->lastCheckedVoucher = -1;
    getpid();
    v3 = *MEMORY[0x1E69E9BD0];
    if (!sandbox_check())
    {
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v24 = 0u;
      v23 = 0u;
      v22 = 0u;
      v21 = 0u;
      v20 = 0u;
      v19 = 0u;
      v18 = 0u;
      v17 = 0u;
      v16 = 0u;
      v15 = 0u;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v8 = 0u;
      v7 = 2;
      getpid();
      if (!kpersona_pidinfo())
      {
        v2->processCanHaveMultiplePersonas = (DWORD1(v8) & 0xFFFFFFFD) == 4;
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  if (self->lastCheckedVoucher != -1)
  {
    voucher_release();
  }

  v4.receiver = self;
  v4.super_class = _CFXPreferencesHandle;
  [(_CFXPreferencesHandle *)&v4 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

- (void)forEachPrefsPerformBlock:(id)block
{
  os_unfair_lock_lock(&self->lock);
  v5 = self->prefs;
  v6 = self->nonLaunchPersonaPrefs;
  os_unfair_lock_unlock(&self->lock);
  (*(block + 2))(block, v5);
  (*(block + 2))(block, v6);
}

- (uint64_t)_canUseCachedPersonaInfo
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 40);
    if (v2 == -1)
    {
LABEL_6:
      v3 = voucher_copy();
      result = 0;
      *(v1 + 40) = v3;
      return result;
    }

    if (*(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224) != v2)
    {
      if (v2)
      {
        voucher_release();
      }

      goto LABEL_6;
    }

    return 1;
  }

  return result;
}

- (void)copyPrefs
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *self;
  v4 = *a2;
  v5 = *(*a2 + 60);
  v7[0] = 67109634;
  v7[1] = v3;
  v8 = 1024;
  v9 = v5;
  v10 = 2114;
  v11 = v4;
  _os_log_debug_impl(&dword_1830E6000, log, OS_LOG_TYPE_DEBUG, "Replacing preferences for EUID change: %u -> %u %{public}@", v7, 0x18u);
  v6 = *MEMORY[0x1E69E9840];
}

@end