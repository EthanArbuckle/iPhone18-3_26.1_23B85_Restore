@interface AAUIServerSuppliedProfilePictureCache
+ (id)sharedCache;
- (AAUIServerSuppliedProfilePictureCache)init;
- (BOOL)updateProfilePicture:(id)a3 didReceiveNewPicture:(BOOL)a4 serverCacheTag:(id)a5 forPersonID:(id)a6;
- (double)pictureDiameter;
- (id)_entryForPersonID:(id)a3;
- (id)profilePictureForPersonID:(id)a3 diameter:(double)a4 serverFetchBlock:(id)a5;
- (id)serverCacheTagForPersonID:(id)a3 diameter:(double)a4;
- (void)_ensureMinimumPictureDiameter_mustBeSynchronized:(double)a3;
- (void)profilePictureForPersonID:(id)a3 diameter:(double)a4 completion:(id)a5;
@end

@implementation AAUIServerSuppliedProfilePictureCache

+ (id)sharedCache
{
  if (sharedCache_onceToken != -1)
  {
    +[AAUIServerSuppliedProfilePictureCache sharedCache];
  }

  v3 = sharedCache___sharedCache;

  return v3;
}

uint64_t __52__AAUIServerSuppliedProfilePictureCache_sharedCache__block_invoke()
{
  sharedCache___sharedCache = objc_alloc_init(AAUIServerSuppliedProfilePictureCache);

  return MEMORY[0x1EEE66BB8]();
}

- (AAUIServerSuppliedProfilePictureCache)init
{
  v6.receiver = self;
  v6.super_class = AAUIServerSuppliedProfilePictureCache;
  v2 = [(AAUIServerSuppliedProfilePictureCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    personIDToEntryMap = v2->_personIDToEntryMap;
    v2->_personIDToEntryMap = v3;

    v2->_pictureDiameter = 60.0;
  }

  return v2;
}

- (double)pictureDiameter
{
  v3 = self->_personIDToEntryMap;
  objc_sync_enter(v3);
  pictureDiameter = self->_pictureDiameter;
  objc_sync_exit(v3);

  return pictureDiameter;
}

- (void)_ensureMinimumPictureDiameter_mustBeSynchronized:(double)a3
{
  v26 = *MEMORY[0x1E69E9840];
  if (self->_pictureDiameter < a3)
  {
    v5 = _AAUIPPSLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
      v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_pictureDiameter];
      *buf = 138412546;
      v23 = v6;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore _ensureMinimumPictureDiameter: %@ _pictureDiameter %@. Will expire all cached pictures.", buf, 0x16u);
    }

    obj = self->_personIDToEntryMap;
    objc_sync_enter(obj);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [(NSMutableDictionary *)self->_personIDToEntryMap allKeys];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [(AAUIServerSuppliedProfilePictureCache *)self _entryForPersonID:v12];
          v14 = _AAUIPPSLogSystem();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v23 = v12;
            _os_log_impl(&dword_1C5355000, v14, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore _ensureMinimumPictureDiameter: Expiring cache entry for %@", buf, 0xCu);
          }

          [v13 expire];
        }

        v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    objc_sync_exit(obj);
    v15 = _AAUIPPSLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v15, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore _ensureMinimumPictureDiameter: Did expire all cached pictures.", buf, 2u);
    }

    self->_pictureDiameter = a3;
  }
}

- (id)serverCacheTagForPersonID:(id)a3 diameter:(double)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
    v12 = 138740227;
    v13 = v6;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore profilePictureForPersonID: %{sensitive}@ diameter: %@", &v12, 0x16u);
  }

  if (v6)
  {
    [(AAUIServerSuppliedProfilePictureCache *)self _ensureMinimumPictureDiameter_mustBeSynchronized:a4];
    v9 = [(AAUIServerSuppliedProfilePictureCache *)self _entryForPersonID:v6];
    v10 = [v9 serverCacheTag];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)profilePictureForPersonID:(id)a3 diameter:(double)a4 serverFetchBlock:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
    v19 = 138740227;
    v20 = v8;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore profilePictureForPersonID: %{sensitive}@ diameter: %@", &v19, 0x16u);
  }

  if (v8)
  {
    [(AAUIServerSuppliedProfilePictureCache *)self _ensureMinimumPictureDiameter_mustBeSynchronized:a4];
    v12 = [(AAUIServerSuppliedProfilePictureCache *)self _entryForPersonID:v8];
    v13 = [v12 picture];
    if (([v12 updating] & 1) != 0 || !objc_msgSend(v12, "expired"))
    {
      v15 = _AAUIPPSLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_1C5355000, v15, OS_LOG_TYPE_DEFAULT, "performServerFetch is False", &v19, 2u);
      }
    }

    else
    {
      v14 = _AAUIPPSLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_1C5355000, v14, OS_LOG_TYPE_DEFAULT, "performServerFetch is True", &v19, 2u);
      }

      [v12 setUpdating:1];
      v15 = [v12 serverCacheTag];
      v16 = _AAUIPPSLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138739971;
        v20 = v8;
        _os_log_impl(&dword_1C5355000, v16, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore profilePictureForPersonID: %{sensitive}@ triggering performServerFetch", &v19, 0xCu);
      }

      v9[2](v9, v15);
    }
  }

  else
  {
    v13 = 0;
  }

  v17 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138740227;
    v20 = v8;
    v21 = 2112;
    v22 = v13;
    _os_log_impl(&dword_1C5355000, v17, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore profilePictureForPersonID: %{sensitive}@ returning profilePicture %@", &v19, 0x16u);
  }

  return v13;
}

- (void)profilePictureForPersonID:(id)a3 diameter:(double)a4 completion:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
    v19 = 138740227;
    v20 = v8;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore profilePictureForPersonID: %{sensitive}@ diameter: %@ completion:", &v19, 0x16u);
  }

  if (v8)
  {
    [(AAUIServerSuppliedProfilePictureCache *)self _ensureMinimumPictureDiameter_mustBeSynchronized:a4];
    v12 = [(AAUIServerSuppliedProfilePictureCache *)self _entryForPersonID:v8];
    v13 = [v12 picture];
    v14 = [v12 serverCacheTag];
    v15 = [v12 expired];
    v16 = _AAUIPPSLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [MEMORY[0x1E696AD98] numberWithBool:v15];
      v19 = 138740739;
      v20 = v8;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      v25 = 2112;
      v26 = v17;
      _os_log_impl(&dword_1C5355000, v16, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore profilePictureForPersonID: %{sensitive}@ completion: calling completion with profilePicture %@ serverCacheTag %@ performServerFetch %@", &v19, 0x2Au);
    }

    v9[2](v9, v13, v14, v15);
  }

  else
  {
    v18 = _AAUIPPSLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138739971;
      v20 = 0;
      _os_log_impl(&dword_1C5355000, v18, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore profilePictureForPersonID: %{sensitive}@ completion: No personID provided!", &v19, 0xCu);
    }

    v9[2](v9, 0, 0, 0);
  }
}

- (BOOL)updateProfilePicture:(id)a3 didReceiveNewPicture:(BOOL)a4 serverCacheTag:(id)a5 forPersonID:(id)a6
{
  v8 = a4;
  v36 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:v8];
    v26 = 138413059;
    v27 = v10;
    v28 = 2112;
    v29 = v14;
    v30 = 2112;
    v31 = v11;
    v32 = 2117;
    v33 = v12;
    _os_log_impl(&dword_1C5355000, v13, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore updateProfilePicture: %@ didReceiveNewPicture: %@ serverCacheTag: %@ forPersonID: %{sensitive}@", &v26, 0x2Au);
  }

  if (v12)
  {
    if (!v10 || ([v10 size], v15 == self->_pictureDiameter))
    {
      v16 = [(AAUIServerSuppliedProfilePictureCache *)self _entryForPersonID:v12];
      v20 = _AAUIPPSLogSystem();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [MEMORY[0x1E696AD98] numberWithBool:v8];
        v26 = 138413315;
        v27 = v10;
        v28 = 2112;
        v29 = v21;
        v30 = 2112;
        v31 = v11;
        v32 = 2117;
        v33 = v12;
        v34 = 2112;
        v35 = v16;
        _os_log_impl(&dword_1C5355000, v20, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore updateProfilePicture: %@ didReceiveNewPicture: %@ serverCacheTag: %@ forPersonID: %{sensitive}@ updating entry %@", &v26, 0x34u);
      }

      [v16 setUpdating:0];
      if (v8)
      {
        v22 = [v16 picture];
        LOBYTE(v8) = v22 != v10;

        [v16 setPicture:v10];
        if (v11)
        {
          [v16 setServerCacheTag:v11];
        }

        v23 = _AAUIPPSLogSystem();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [MEMORY[0x1E696AD98] numberWithBool:1];
          v26 = 138413315;
          v27 = v10;
          v28 = 2112;
          v29 = v24;
          v30 = 2112;
          v31 = v11;
          v32 = 2117;
          v33 = v12;
          v34 = 2112;
          v35 = v16;
          _os_log_impl(&dword_1C5355000, v23, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore updateProfilePicture: %@ didReceiveNewPicture: %@ serverCacheTag: %@ forPersonID: %{sensitive}@ did update entry %@", &v26, 0x34u);
        }
      }

      else
      {
        [v16 extendExpirationDate];
      }
    }

    else
    {
      v16 = _AAUIPPSLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = MEMORY[0x1E696B098];
        [v10 size];
        v18 = [v17 valueWithCGSize:?];
        v19 = [MEMORY[0x1E696AD98] numberWithDouble:self->_pictureDiameter];
        v26 = 138740483;
        v27 = v12;
        v28 = 2112;
        v29 = v18;
        v30 = 2112;
        v31 = v19;
        _os_log_impl(&dword_1C5355000, v16, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore updateProfilePicture: ... forPersonID: %{sensitive}@ ignoring picture with size %@ different from _pictureDiameter %@", &v26, 0x20u);
      }

      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)_entryForPersonID:(id)a3
{
  v4 = a3;
  v5 = self->_personIDToEntryMap;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_personIDToEntryMap objectForKey:v4];
  if (v6)
  {
    v7 = _AAUIPPSLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [AAUIServerSuppliedProfilePictureCache _entryForPersonID:];
    }
  }

  else
  {
    v6 = objc_alloc_init(AAUIServerSuppliedProfilePictureCacheEntry);
    [(NSMutableDictionary *)self->_personIDToEntryMap setObject:v6 forKey:v4];
    v7 = _AAUIPPSLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [AAUIServerSuppliedProfilePictureCache _entryForPersonID:];
    }
  }

  objc_sync_exit(v5);

  return v6;
}

@end