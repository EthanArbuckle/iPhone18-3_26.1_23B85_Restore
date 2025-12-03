@interface AAUIServerSuppliedProfilePictureCache
+ (id)sharedCache;
- (AAUIServerSuppliedProfilePictureCache)init;
- (BOOL)updateProfilePicture:(id)picture didReceiveNewPicture:(BOOL)newPicture serverCacheTag:(id)tag forPersonID:(id)d;
- (double)pictureDiameter;
- (id)_entryForPersonID:(id)d;
- (id)profilePictureForPersonID:(id)d diameter:(double)diameter serverFetchBlock:(id)block;
- (id)serverCacheTagForPersonID:(id)d diameter:(double)diameter;
- (void)_ensureMinimumPictureDiameter_mustBeSynchronized:(double)synchronized;
- (void)profilePictureForPersonID:(id)d diameter:(double)diameter completion:(id)completion;
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

- (void)_ensureMinimumPictureDiameter_mustBeSynchronized:(double)synchronized
{
  v26 = *MEMORY[0x1E69E9840];
  if (self->_pictureDiameter < synchronized)
  {
    v5 = _AAUIPPSLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x1E696AD98] numberWithDouble:synchronized];
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
    allKeys = [(NSMutableDictionary *)self->_personIDToEntryMap allKeys];
    v9 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(allKeys);
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

        v9 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
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

    self->_pictureDiameter = synchronized;
  }
}

- (id)serverCacheTagForPersonID:(id)d diameter:(double)diameter
{
  v16 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:diameter];
    v12 = 138740227;
    v13 = dCopy;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore profilePictureForPersonID: %{sensitive}@ diameter: %@", &v12, 0x16u);
  }

  if (dCopy)
  {
    [(AAUIServerSuppliedProfilePictureCache *)self _ensureMinimumPictureDiameter_mustBeSynchronized:diameter];
    v9 = [(AAUIServerSuppliedProfilePictureCache *)self _entryForPersonID:dCopy];
    serverCacheTag = [v9 serverCacheTag];
  }

  else
  {
    serverCacheTag = 0;
  }

  return serverCacheTag;
}

- (id)profilePictureForPersonID:(id)d diameter:(double)diameter serverFetchBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  blockCopy = block;
  v10 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:diameter];
    v19 = 138740227;
    v20 = dCopy;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore profilePictureForPersonID: %{sensitive}@ diameter: %@", &v19, 0x16u);
  }

  if (dCopy)
  {
    [(AAUIServerSuppliedProfilePictureCache *)self _ensureMinimumPictureDiameter_mustBeSynchronized:diameter];
    v12 = [(AAUIServerSuppliedProfilePictureCache *)self _entryForPersonID:dCopy];
    picture = [v12 picture];
    if (([v12 updating] & 1) != 0 || !objc_msgSend(v12, "expired"))
    {
      serverCacheTag = _AAUIPPSLogSystem();
      if (os_log_type_enabled(serverCacheTag, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_1C5355000, serverCacheTag, OS_LOG_TYPE_DEFAULT, "performServerFetch is False", &v19, 2u);
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
      serverCacheTag = [v12 serverCacheTag];
      v16 = _AAUIPPSLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138739971;
        v20 = dCopy;
        _os_log_impl(&dword_1C5355000, v16, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore profilePictureForPersonID: %{sensitive}@ triggering performServerFetch", &v19, 0xCu);
      }

      blockCopy[2](blockCopy, serverCacheTag);
    }
  }

  else
  {
    picture = 0;
  }

  v17 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138740227;
    v20 = dCopy;
    v21 = 2112;
    v22 = picture;
    _os_log_impl(&dword_1C5355000, v17, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore profilePictureForPersonID: %{sensitive}@ returning profilePicture %@", &v19, 0x16u);
  }

  return picture;
}

- (void)profilePictureForPersonID:(id)d diameter:(double)diameter completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v10 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:diameter];
    v19 = 138740227;
    v20 = dCopy;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore profilePictureForPersonID: %{sensitive}@ diameter: %@ completion:", &v19, 0x16u);
  }

  if (dCopy)
  {
    [(AAUIServerSuppliedProfilePictureCache *)self _ensureMinimumPictureDiameter_mustBeSynchronized:diameter];
    v12 = [(AAUIServerSuppliedProfilePictureCache *)self _entryForPersonID:dCopy];
    picture = [v12 picture];
    serverCacheTag = [v12 serverCacheTag];
    expired = [v12 expired];
    v16 = _AAUIPPSLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [MEMORY[0x1E696AD98] numberWithBool:expired];
      v19 = 138740739;
      v20 = dCopy;
      v21 = 2112;
      v22 = picture;
      v23 = 2112;
      v24 = serverCacheTag;
      v25 = 2112;
      v26 = v17;
      _os_log_impl(&dword_1C5355000, v16, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore profilePictureForPersonID: %{sensitive}@ completion: calling completion with profilePicture %@ serverCacheTag %@ performServerFetch %@", &v19, 0x2Au);
    }

    completionCopy[2](completionCopy, picture, serverCacheTag, expired);
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

    completionCopy[2](completionCopy, 0, 0, 0);
  }
}

- (BOOL)updateProfilePicture:(id)picture didReceiveNewPicture:(BOOL)newPicture serverCacheTag:(id)tag forPersonID:(id)d
{
  newPictureCopy = newPicture;
  v36 = *MEMORY[0x1E69E9840];
  pictureCopy = picture;
  tagCopy = tag;
  dCopy = d;
  v13 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:newPictureCopy];
    v26 = 138413059;
    v27 = pictureCopy;
    v28 = 2112;
    v29 = v14;
    v30 = 2112;
    v31 = tagCopy;
    v32 = 2117;
    v33 = dCopy;
    _os_log_impl(&dword_1C5355000, v13, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore updateProfilePicture: %@ didReceiveNewPicture: %@ serverCacheTag: %@ forPersonID: %{sensitive}@", &v26, 0x2Au);
  }

  if (dCopy)
  {
    if (!pictureCopy || ([pictureCopy size], v15 == self->_pictureDiameter))
    {
      v16 = [(AAUIServerSuppliedProfilePictureCache *)self _entryForPersonID:dCopy];
      v20 = _AAUIPPSLogSystem();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [MEMORY[0x1E696AD98] numberWithBool:newPictureCopy];
        v26 = 138413315;
        v27 = pictureCopy;
        v28 = 2112;
        v29 = v21;
        v30 = 2112;
        v31 = tagCopy;
        v32 = 2117;
        v33 = dCopy;
        v34 = 2112;
        v35 = v16;
        _os_log_impl(&dword_1C5355000, v20, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore updateProfilePicture: %@ didReceiveNewPicture: %@ serverCacheTag: %@ forPersonID: %{sensitive}@ updating entry %@", &v26, 0x34u);
      }

      [v16 setUpdating:0];
      if (newPictureCopy)
      {
        picture = [v16 picture];
        LOBYTE(newPictureCopy) = picture != pictureCopy;

        [v16 setPicture:pictureCopy];
        if (tagCopy)
        {
          [v16 setServerCacheTag:tagCopy];
        }

        v23 = _AAUIPPSLogSystem();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [MEMORY[0x1E696AD98] numberWithBool:1];
          v26 = 138413315;
          v27 = pictureCopy;
          v28 = 2112;
          v29 = v24;
          v30 = 2112;
          v31 = tagCopy;
          v32 = 2117;
          v33 = dCopy;
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
        [pictureCopy size];
        v18 = [v17 valueWithCGSize:?];
        v19 = [MEMORY[0x1E696AD98] numberWithDouble:self->_pictureDiameter];
        v26 = 138740483;
        v27 = dCopy;
        v28 = 2112;
        v29 = v18;
        v30 = 2112;
        v31 = v19;
        _os_log_impl(&dword_1C5355000, v16, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore updateProfilePicture: ... forPersonID: %{sensitive}@ ignoring picture with size %@ different from _pictureDiameter %@", &v26, 0x20u);
      }

      LOBYTE(newPictureCopy) = 0;
    }
  }

  else
  {
    LOBYTE(newPictureCopy) = 0;
  }

  return newPictureCopy;
}

- (id)_entryForPersonID:(id)d
{
  dCopy = d;
  v5 = self->_personIDToEntryMap;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_personIDToEntryMap objectForKey:dCopy];
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
    [(NSMutableDictionary *)self->_personIDToEntryMap setObject:v6 forKey:dCopy];
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