@interface PHSocialGroupDeleteRequest
- (BOOL)validateForDeleteManagedObject:(id)object error:(id *)error;
- (void)deleteManagedObject:(id)object photoLibrary:(id)library;
@end

@implementation PHSocialGroupDeleteRequest

- (void)deleteManagedObject:(id)object photoLibrary:(id)library
{
  objectCopy = object;
  managedObjectContext = [library managedObjectContext];
  [managedObjectContext deleteObject:objectCopy];
}

- (BOOL)validateForDeleteManagedObject:(id)object error:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v16.receiver = self;
  v16.super_class = PHSocialGroupDeleteRequest;
  v17 = 0;
  v7 = [(PHObjectDeleteRequest *)&v16 validateForDeleteManagedObject:objectCopy error:&v17];
  v8 = v17;
  if (!v7)
  {
    v13 = 0;
    if (!error)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v9 = [MEMORY[0x1E69BE7F8] newNodeContainerWithNode:objectCopy];
  if ([v9 socialGroupVerifiedType] == 2 || !objc_msgSend(v9, "socialGroupVerifiedType"))
  {
    v13 = 1;
  }

  else
  {
    v10 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A278];
    v19[0] = @"Attempt to delete a non graph-verified social group";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v12 = [v10 errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v11];

    v13 = 0;
    v8 = v12;
  }

  if (error)
  {
LABEL_9:
    if (!v13)
    {
      v14 = v8;
      *error = v8;
    }
  }

LABEL_11:

  return v13;
}

@end