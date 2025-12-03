@interface PHObjectChangeDetails
- (BOOL)assetCollectionTitlePropertiesChanged;
- (BOOL)assetContentChanged;
- (BOOL)objectWasDeleted;
- (PHObjectChangeDetails)initWithPHObject:(id)object;
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
  objectBeforeChanges = [(PHObjectChangeDetails *)self objectBeforeChanges];
  objectAfterChanges = [(PHObjectChangeDetails *)self objectAfterChanges];
  v6 = [v3 stringByAppendingFormat:@" before=%@, after=%@, assetContentChanged=%d", objectBeforeChanges, objectAfterChanges, -[PHObjectChangeDetails assetContentChanged](self, "assetContentChanged")];

  return v6;
}

- (BOOL)objectWasDeleted
{
  v2 = PLResultWithUnfairLock();
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
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
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
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
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
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
    photoLibrary = [(PHObject *)self->_objectBeforeChanges photoLibrary];
    v4 = [photoLibrary fetchUpdatedObject:self->_objectBeforeChanges];
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
          localizedTitle = [(PHObject *)v19 localizedTitle];
          localizedTitle2 = [(PHObject *)v7 localizedTitle];
          v10 = localizedTitle2;
          if (localizedTitle == localizedTitle2)
          {
          }

          else
          {
            v11 = [localizedTitle isEqualToString:localizedTitle2];

            if ((v11 & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            subtitle = [(PHObject *)v19 subtitle];
            subtitle2 = [(PHObject *)v7 subtitle];
            v14 = subtitle2;
            if (subtitle == subtitle2)
            {
            }

            else
            {
              v15 = [subtitle isEqualToString:subtitle2];

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

          titleFontName = [(PHObject *)v19 titleFontName];
          titleFontName2 = [(PHObject *)v7 titleFontName];
          if (titleFontName == titleFontName2)
          {
            v16 = 0;
          }

          else
          {
            v16 = [titleFontName isEqualToString:titleFontName2] ^ 1;
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

- (PHObjectChangeDetails)initWithPHObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = PHObjectChangeDetails;
  v6 = [(PHObjectChangeDetails *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_objectBeforeChanges, object);
    v7->_stateLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

@end