@interface _MPLibraryObjectDatabaseProgressiveContext
- (BOOL)isInvalid;
- (id).cxx_construct;
- (id)onInvalidate;
- (void)_entityRevisionUpdated;
- (void)dealloc;
- (void)setOnInvalidate:(id)invalidate;
@end

@implementation _MPLibraryObjectDatabaseProgressiveContext

- (id).cxx_construct
{
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 12) = 1065353216;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 22) = 1065353216;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 32) = 1065353216;
  *(self + 24) = 0;
  *(self + 25) = 0;
  return self;
}

- (void)_entityRevisionUpdated
{
  v47 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68___MPLibraryObjectDatabaseProgressiveContext__entityRevisionUpdated__block_invoke;
  aBlock[3] = &unk_1E7682518;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  invalid = self->_invalid;
  if (invalid)
  {
    v5 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      id = self->_lod->_id;
      v7 = self->_id;
      tag = self->_tag;
      *buf = 67109632;
      v40 = id;
      v41 = 1024;
      v42 = v7;
      v43 = 1024;
      v44 = tag;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] context::%{sonic:fourCC}u::%{sonic:fourCC}u | skipping entity revision checking [already invalid]", buf, 0x14u);
    }

    v9 = 0;
    v10 = 1;
  }

  else
  {
    entityRevision = self->_entityRevision;
    v12 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = self->_lod->_id;
      v14 = self->_id;
      v15 = self->_tag;
      *buf = 67109888;
      v40 = v13;
      v41 = 1024;
      v42 = v14;
      v43 = 1024;
      v44 = v15;
      v45 = 2048;
      *v46 = entityRevision;
      _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] context::%{sonic:fourCC}u::%{sonic:fourCC}u | scanning entity revisions [] startingRevision=%lld", buf, 0x1Eu);
    }

    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = entityRevision;
    lod = self->_lod;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __68___MPLibraryObjectDatabaseProgressiveContext__entityRevisionUpdated__block_invoke_173;
    v33[3] = &unk_1E767C1E8;
    v33[4] = self;
    v33[5] = &v34;
    [(MPLibraryObjectDatabase *)lod _enumerateEntityRevisionsFromRevision:entityRevision block:v33];
    v17 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = self->_lod->_id;
      v19 = self->_id;
      v20 = self->_tag;
      v21 = self->_invalid;
      v22 = v35[3];
      *buf = 67110144;
      v40 = v18;
      v41 = 1024;
      v42 = v19;
      v43 = 1024;
      v44 = v20;
      v45 = 1024;
      *v46 = v21;
      *&v46[4] = 2048;
      *&v46[6] = v22;
      _os_log_impl(&dword_1A238D000, v17, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] context::%{sonic:fourCC}u::%{sonic:fourCC}u | scanned entity revisions [] invalid=%{BOOL}u lastEntityRevision=%llu", buf, 0x24u);
    }

    self->_entityRevision = v35[3];
    v23 = self->_invalid;
    if (v23)
    {
      v9 = _Block_copy(self->_onInvalidate);
      onInvalidate = self->_onInvalidate;
      self->_onInvalidate = 0;
    }

    else
    {
      v9 = 0;
    }

    _Block_object_dispose(&v34, 8);
    v10 = !v23;
  }

  v3[2](v3);

  if (((v10 | invalid) & 1) == 0)
  {
    v25 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);
    if (v9)
    {
      if (v26)
      {
        v27 = self->_lod->_id;
        v28 = self->_id;
        v29 = self->_tag;
        *buf = 67109632;
        v40 = v27;
        v41 = 1024;
        v42 = v28;
        v43 = 1024;
        v44 = v29;
        _os_log_impl(&dword_1A238D000, v25, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] context::%{sonic:fourCC}u::%{sonic:fourCC}u | calling invalidation handler [invalidated, entity revision changed]", buf, 0x14u);
      }

      v9[2](v9);
    }

    else
    {
      if (v26)
      {
        v30 = self->_lod->_id;
        v31 = self->_id;
        v32 = self->_tag;
        *buf = 67109632;
        v40 = v30;
        v41 = 1024;
        v42 = v31;
        v43 = 1024;
        v44 = v32;
        _os_log_impl(&dword_1A238D000, v25, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] context::%{sonic:fourCC}u::%{sonic:fourCC}u | skipping invalidation handler [invalidated, no handler]", buf, 0x14u);
      }
    }
  }
}

- (BOOL)isInvalid
{
  os_unfair_lock_lock_with_options();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55___MPLibraryObjectDatabaseProgressiveContext_isInvalid__block_invoke;
  aBlock[3] = &unk_1E7682518;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  LOBYTE(self) = self->_invalid;
  v3[2]();

  return self;
}

- (void)setOnInvalidate:(id)invalidate
{
  v24 = *MEMORY[0x1E69E9840];
  invalidateCopy = invalidate;
  os_unfair_lock_lock_with_options();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62___MPLibraryObjectDatabaseProgressiveContext_setOnInvalidate___block_invoke;
  aBlock[3] = &unk_1E7682518;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  invalid = self->_invalid;
  v7 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (invalid)
  {
    if (v8)
    {
      id = self->_lod->_id;
      v10 = self->_id;
      tag = self->_tag;
      *buf = 67109632;
      v19 = id;
      v20 = 1024;
      v21 = v10;
      v22 = 1024;
      v23 = tag;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] context::%{sonic:fourCC}u::%{sonic:fourCC}u | calling invalidation handler [already invalid]", buf, 0x14u);
    }

    invalidateCopy[2](invalidateCopy);
  }

  else
  {
    if (v8)
    {
      v12 = self->_lod->_id;
      v13 = self->_id;
      v14 = self->_tag;
      *buf = 67109632;
      v19 = v12;
      v20 = 1024;
      v21 = v13;
      v22 = 1024;
      v23 = v14;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] context::%{sonic:fourCC}u::%{sonic:fourCC}u | setting up invalidation handler []", buf, 0x14u);
    }

    v15 = _Block_copy(invalidateCopy);
    onInvalidate = self->_onInvalidate;
    self->_onInvalidate = v15;
  }

  v5[2](v5);
}

- (id)onInvalidate
{
  os_unfair_lock_lock_with_options();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58___MPLibraryObjectDatabaseProgressiveContext_onInvalidate__block_invoke;
  aBlock[3] = &unk_1E7682518;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = _Block_copy(self->_onInvalidate);
  v3[2](v3);

  return v4;
}

- (void)dealloc
{
  v20 = *MEMORY[0x1E69E9840];
  id = self->_lod->_id;
  notify_cancel(self->_notifyToken);
  v4 = MEMORY[0x1E696AEC0];
  library = [(MPLibraryObjectDatabase *)self->_lod library];
  databasePath = [library databasePath];
  v7 = [v4 stringWithFormat:@"com.apple.medialibrary.entity-revision-changed::%zu", objc_msgSend(databasePath, "hash")];

  v8 = os_log_create("com.apple.amp.mediaplayer", "LibraryObjects");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = self->_id;
    tag = self->_tag;
    *buf = 67109890;
    v13 = id;
    v14 = 1024;
    v15 = v9;
    v16 = 1024;
    v17 = tag;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEBUG, "[LOD:%{sonic:fourCC}u] context::%{sonic:fourCC}u::%{sonic:fourCC}u | unregistered notifications [] name=%{public}@", buf, 0x1Eu);
  }

  v11.receiver = self;
  v11.super_class = _MPLibraryObjectDatabaseProgressiveContext;
  [(_MPLibraryObjectDatabaseProgressiveContext *)&v11 dealloc];
}

@end