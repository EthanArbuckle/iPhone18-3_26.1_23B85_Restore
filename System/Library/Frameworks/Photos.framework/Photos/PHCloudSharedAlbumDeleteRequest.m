@interface PHCloudSharedAlbumDeleteRequest
- (BOOL)validateForDeleteManagedObject:(id)a3 error:(id *)a4;
- (void)deleteManagedObject:(id)a3 photoLibrary:(id)a4;
@end

@implementation PHCloudSharedAlbumDeleteRequest

- (void)deleteManagedObject:(id)a3 photoLibrary:(id)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8[0] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [v6 userTrashAlbums:v7];
  }
}

- (BOOL)validateForDeleteManagedObject:(id)a3 error:(id *)a4
{
  v8.receiver = self;
  v8.super_class = PHCloudSharedAlbumDeleteRequest;
  v9 = 0;
  v5 = [(PHObjectDeleteRequest *)&v8 validateForDeleteManagedObject:a3 error:&v9];
  v6 = v9;
  if (a4 && !v5)
  {
    v6 = v6;
    *a4 = v6;
  }

  return v5;
}

@end