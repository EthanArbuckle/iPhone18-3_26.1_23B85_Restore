@interface PHPhotoLibraryAttributesChangeRequest
- (BOOL)enableCloudSync;
- (BOOL)prepareForPhotoLibraryCheck:(id)a3 error:(id *)a4;
- (PHPhotoLibraryAttributesChangeRequest)init;
- (unsigned)cloudResourcePrefetchMode;
- (void)setCloudResourcePrefetchMode:(unsigned __int16)a3;
- (void)setEnableCloudSync:(BOOL)a3;
@end

@implementation PHPhotoLibraryAttributesChangeRequest

- (BOOL)prepareForPhotoLibraryCheck:(id)a3 error:(id *)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = [a3 type];
  v6 = v5;
  if (a4 && v5)
  {
    v7 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v11[0] = @"Change must be performed within the sharedPhotoLibrary";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *a4 = [v7 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v8];
  }

  return v6 == 0;
}

- (unsigned)cloudResourcePrefetchMode
{
  v2 = [(PLPhotoLibraryAttributesChanges *)self->_changes cloudResourcePrefetchModeValue];
  v3 = [v2 integerValue];

  if (v3 == 1)
  {
    return 2;
  }

  else
  {
    return v3 == 0;
  }
}

- (void)setCloudResourcePrefetchMode:(unsigned __int16)a3
{
  v4 = 1;
  if (a3 != 2)
  {
    v4 = 2;
  }

  if (a3 == 1)
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
  v2 = [(PLPhotoLibraryAttributesChanges *)self->_changes enableCloudSyncValue];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setEnableCloudSync:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
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