@interface PHCloudSharedAlbumDeleteRequest
- (BOOL)validateForDeleteManagedObject:(id)object error:(id *)error;
- (void)deleteManagedObject:(id)object photoLibrary:(id)library;
@end

@implementation PHCloudSharedAlbumDeleteRequest

- (void)deleteManagedObject:(id)object photoLibrary:(id)library
{
  v8[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  libraryCopy = library;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8[0] = objectCopy;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [libraryCopy userTrashAlbums:v7];
  }
}

- (BOOL)validateForDeleteManagedObject:(id)object error:(id *)error
{
  v8.receiver = self;
  v8.super_class = PHCloudSharedAlbumDeleteRequest;
  v9 = 0;
  v5 = [(PHObjectDeleteRequest *)&v8 validateForDeleteManagedObject:object error:&v9];
  v6 = v9;
  if (error && !v5)
  {
    v6 = v6;
    *error = v6;
  }

  return v5;
}

@end