@interface PHPhotoLibraryAttributesChangeRequest
- (BOOL)enableCloudSync;
- (BOOL)prepareForPhotoLibraryCheck:(id)check error:(id *)error;
- (PHPhotoLibraryAttributesChangeRequest)init;
- (unsigned)cloudResourcePrefetchMode;
- (void)setCloudResourcePrefetchMode:(unsigned __int16)mode;
- (void)setEnableCloudSync:(BOOL)sync;
@end

@implementation PHPhotoLibraryAttributesChangeRequest

- (BOOL)prepareForPhotoLibraryCheck:(id)check error:(id *)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  type = [check type];
  v6 = type;
  if (error && type)
  {
    v7 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v11[0] = @"Change must be performed within the sharedPhotoLibrary";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *error = [v7 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v8];
  }

  return v6 == 0;
}

- (unsigned)cloudResourcePrefetchMode
{
  cloudResourcePrefetchModeValue = [(PLPhotoLibraryAttributesChanges *)self->_changes cloudResourcePrefetchModeValue];
  integerValue = [cloudResourcePrefetchModeValue integerValue];

  if (integerValue == 1)
  {
    return 2;
  }

  else
  {
    return integerValue == 0;
  }
}

- (void)setCloudResourcePrefetchMode:(unsigned __int16)mode
{
  v4 = 1;
  if (mode != 2)
  {
    v4 = 2;
  }

  if (mode == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  if (v5 == 2)
  {
    changes = self->_changes;

    [(PLPhotoLibraryAttributesChanges *)changes setCloudResourcePrefetchModeValue:0];
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [(PLPhotoLibraryAttributesChanges *)self->_changes setCloudResourcePrefetchModeValue:v7];
  }
}

- (BOOL)enableCloudSync
{
  enableCloudSyncValue = [(PLPhotoLibraryAttributesChanges *)self->_changes enableCloudSyncValue];
  bOOLValue = [enableCloudSyncValue BOOLValue];

  return bOOLValue;
}

- (void)setEnableCloudSync:(BOOL)sync
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:sync];
  [(PLPhotoLibraryAttributesChanges *)self->_changes setEnableCloudSyncValue:v4];
}

- (PHPhotoLibraryAttributesChangeRequest)init
{
  v8.receiver = self;
  v8.super_class = PHPhotoLibraryAttributesChangeRequest;
  v2 = [(PHPhotoLibraryAttributesChangeRequest *)&v8 init];
  if (v2)
  {
    v3 = +[PHPhotoLibrary photoLibraryForCurrentTransaction];
    v4 = v3;
    if (v3)
    {
      [v3 recordOtherChangeRequest:v2];
      v5 = objc_alloc_init(MEMORY[0x1E69BE680]);
      changes = v2->_changes;
      v2->_changes = v5;
    }

    else
    {
      changes = v2;
      v2 = 0;
    }
  }

  return v2;
}

@end