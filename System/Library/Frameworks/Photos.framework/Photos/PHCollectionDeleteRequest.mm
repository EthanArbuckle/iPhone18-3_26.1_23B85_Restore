@interface PHCollectionDeleteRequest
- (BOOL)validateForDeleteManagedObject:(id)a3 error:(id *)a4;
- (void)deleteManagedObject:(id)a3 photoLibrary:(id)a4;
@end

@implementation PHCollectionDeleteRequest

- (void)deleteManagedObject:(id)a3 photoLibrary:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PHTrashableObjectDeleteRequest *)self operation];
  switch(v8)
  {
    case 2:
      v10 = v6;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
      [v7 userUntrashAlbums:v9];
      goto LABEL_7;
    case 1:
      v11 = v6;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
      [v7 userExpungeAlbums:v9];
      goto LABEL_7;
    case 0:
      v12[0] = v6;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      [v7 userTrashAlbums:v9];
LABEL_7:

      break;
  }
}

- (BOOL)validateForDeleteManagedObject:(id)a3 error:(id *)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v16.receiver = self;
  v16.super_class = PHCollectionDeleteRequest;
  v17 = 0;
  v7 = [(PHTrashableObjectDeleteRequest *)&v16 validateForDeleteManagedObject:v6 error:&v17];
  v8 = v17;
  if (v7)
  {
    if (-[PHObjectDeleteRequest isClientEntitled](self, "isClientEntitled") || (objc_opt_respondsToSelector() & 1) == 0 || ![v6 isCloudSharedAlbum])
    {
      v14 = 1;
      goto LABEL_10;
    }

    v9 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A578];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot modify iCloud Shared Streams"];
    v19[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v12 = [v9 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v11];

    v8 = v12;
  }

  if (a4)
  {
    v13 = v8;
    v14 = 0;
    *a4 = v8;
  }

  else
  {
    v14 = 0;
  }

LABEL_10:

  return v14;
}

@end