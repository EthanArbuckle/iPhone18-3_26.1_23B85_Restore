@interface PHObjectChangeDetails
- (BOOL)assetCollectionTitlePropertiesChanged;
- (BOOL)assetContentChanged;
- (BOOL)objectWasDeleted;
- (PHObjectChangeDetails)initWithPHObject:(id)a3;
- (id)description;
- (id)objectAfterChanges;
- (void)_calculateDiffs;
@end

@implementation PHObjectChangeDetails

- (id)description
{
  v8.receiver = self;
  v8.super_class = PHObjectChangeDetails;
  v3 = [(PHObjectChangeDetails *)&v8 description];
  v4 = [(PHObjectChangeDetails *)self objectBeforeChanges];
  v5 = [(PHObjectChangeDetails *)self objectAfterChanges];
  v6 = [v3 stringByAppendingFormat:@" before=%@, after=%@, assetContentChanged=%d", v4, v5, -[PHObjectChangeDetails assetContentChanged](self, "assetContentChanged")];

  return v6;
}

- (BOOL)objectWasDeleted
{
  v2 = PLResultWithUnfairLock();
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t __41__PHObjectChangeDetails_objectWasDeleted__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _calculateDiffs];
  v2 = MEMORY[0x1E696AD98];
  v3 = *(*(a1 + 32) + 16);
  if (v3)
  {
    v4 = [v3 isDeleted];
  }

  else
  {
    v4 = 1;
  }

  return [v2 numberWithInt:v4];
}

- (BOOL)assetCollectionTitlePropertiesChanged
{
  v2 = PLResultWithUnfairLock();
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t __62__PHObjectChangeDetails_assetCollectionTitlePropertiesChanged__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _calculateDiffs];
  v2 = MEMORY[0x1E696AD98];
  v3 = *(*(a1 + 32) + 25);

  return [v2 numberWithBool:v3];
}

- (BOOL)assetContentChanged
{
  v2 = PLResultWithUnfairLock();
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t __44__PHObjectChangeDetails_assetContentChanged__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _calculateDiffs];
  v2 = MEMORY[0x1E696AD98];
  v3 = *(*(a1 + 32) + 24);

  return [v2 numberWithBool:v3];
}

- (void)_calculateDiffs
{
  os_unfair_lock_assert_owner(&self->_stateLock);
  if (!self->_objectAfterChanges)
  {
    v3 = [(PHObject *)self->_objectBeforeChanges photoLibrary];
    v4 = [v3 fetchUpdatedObject:self->_objectBeforeChanges];
    objectAfterChanges = self->_objectAfterChanges;
    self->_objectAfterChanges = v4;

    v6 = self->_objectAfterChanges;
    if (v6)
    {
      if (![(PHObject *)v6 isDeleted])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          self->_assetContentChanged = [(PHObject *)self->_objectAfterChanges hasContentEqualTo:self->_objectBeforeChanges]^ 1;
          return;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = self->_objectBeforeChanges;
          v7 = self->_objectAfterChanges;
          v8 = [(PHObject *)v19 localizedTitle];
          v9 = [(PHObject *)v7 localizedTitle];
          v10 = v9;
          if (v8 == v9)
          {
          }

          else
          {
            v11 = [v8 isEqualToString:v9];

            if ((v11 & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [(PHObject *)v19 subtitle];
            v13 = [(PHObject *)v7 subtitle];
            v14 = v13;
            if (v12 == v13)
            {
            }

            else
            {
              v15 = [v12 isEqualToString:v13];

              if ((v15 & 1) == 0)
              {
LABEL_15:
                v16 = 1;
LABEL_21:
                self->_assetCollectionTitlePropertiesChanged = v16;

                return;
              }
            }
          }

          v17 = [(PHObject *)v19 titleFontName];
          v18 = [(PHObject *)v7 titleFontName];
          if (v17 == v18)
          {
            v16 = 0;
          }

          else
          {
            v16 = [v17 isEqualToString:v18] ^ 1;
          }

          goto LABEL_21;
        }
      }
    }
  }
}

- (id)objectAfterChanges
{
  v2 = PLResultWithUnfairLock();

  return v2;
}

id __43__PHObjectChangeDetails_objectAfterChanges__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _calculateDiffs];
  if ([*(*(a1 + 32) + 16) isDeleted])
  {
    v2 = 0;
  }

  else
  {
    v2 = *(*(a1 + 32) + 16);
  }

  return v2;
}

- (PHObjectChangeDetails)initWithPHObject:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PHObjectChangeDetails;
  v6 = [(PHObjectChangeDetails *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_objectBeforeChanges, a3);
    v7->_stateLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

@end