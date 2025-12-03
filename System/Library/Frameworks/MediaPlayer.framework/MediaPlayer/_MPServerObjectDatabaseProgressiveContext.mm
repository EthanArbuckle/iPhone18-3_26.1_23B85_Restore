@interface _MPServerObjectDatabaseProgressiveContext
- (BOOL)isInvalid;
- (id)onInvalidate;
- (void)_createdObjectForIdentifiers:(uint64_t)identifiers;
- (void)database:(id)database didFinishImportRequest:(id)request result:(id)result;
- (void)dealloc;
- (void)setOnInvalidate:(id)invalidate;
@end

@implementation _MPServerObjectDatabaseProgressiveContext

- (void)_createdObjectForIdentifiers:(uint64_t)identifiers
{
  v3 = a2;
  if (identifiers)
  {
    os_unfair_lock_lock_with_options();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __74___MPServerObjectDatabaseProgressiveContext__createdObjectForIdentifiers___block_invoke;
    aBlock[3] = &unk_1E7682518;
    aBlock[4] = identifiers;
    v4 = _Block_copy(aBlock);
    [*(identifiers + 8) addObject:v3];
    v4[2](v4);
  }
}

- (void)database:(id)database didFinishImportRequest:(id)request result:(id)result
{
  databaseCopy = database;
  requestCopy = request;
  resultCopy = result;
  os_unfair_lock_lock_with_options();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84___MPServerObjectDatabaseProgressiveContext_database_didFinishImportRequest_result___block_invoke;
  aBlock[3] = &unk_1E7682518;
  aBlock[4] = self;
  v11 = _Block_copy(aBlock);
  invalid = self->_invalid;
  v11[2]();

  if (!invalid)
  {
    v13 = MEMORY[0x1E695DFD8];
    importedIdentifiers = [resultCopy importedIdentifiers];
    v15 = [v13 setWithArray:importedIdentifiers];

    os_unfair_lock_lock_with_options();
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __84___MPServerObjectDatabaseProgressiveContext_database_didFinishImportRequest_result___block_invoke_3;
    v21[3] = &unk_1E7682518;
    v21[4] = self;
    v16 = _Block_copy(v21);
    v17 = [v15 intersectsSet:self->_identifiers];
    if (v17)
    {
      if (self->_onInvalidate)
      {
        onInvalidate = self->_onInvalidate;
      }

      else
      {
        onInvalidate = &__block_literal_global_571;
      }

      v19 = _Block_copy(onInvalidate);
      self->_invalid = 1;
      v20 = self->_onInvalidate;
      self->_onInvalidate = 0;
    }

    else
    {
      v19 = &__block_literal_global_569;
    }

    v16[2](v16);

    if (v17)
    {
      v19[2](v19);
    }
  }
}

- (BOOL)isInvalid
{
  os_unfair_lock_lock_with_options();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54___MPServerObjectDatabaseProgressiveContext_isInvalid__block_invoke;
  aBlock[3] = &unk_1E7682518;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  LOBYTE(self) = self->_invalid;
  v3[2]();

  return self;
}

- (void)setOnInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  os_unfair_lock_lock_with_options();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61___MPServerObjectDatabaseProgressiveContext_setOnInvalidate___block_invoke;
  aBlock[3] = &unk_1E7682518;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  if (self->_invalid)
  {
    invalidateCopy[2](invalidateCopy);
  }

  else
  {
    v6 = _Block_copy(invalidateCopy);
    onInvalidate = self->_onInvalidate;
    self->_onInvalidate = v6;
  }

  v5[2](v5);
}

- (id)onInvalidate
{
  os_unfair_lock_lock_with_options();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57___MPServerObjectDatabaseProgressiveContext_onInvalidate__block_invoke;
  aBlock[3] = &unk_1E7682518;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = _Block_copy(self->_onInvalidate);
  v3[2](v3);

  return v4;
}

- (void)dealloc
{
  v3 = +[MPServerObjectDatabase sharedServerObjectDatabase];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = _MPServerObjectDatabaseProgressiveContext;
  [(_MPServerObjectDatabaseProgressiveContext *)&v4 dealloc];
}

@end