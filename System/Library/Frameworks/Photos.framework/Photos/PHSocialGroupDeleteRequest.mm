@interface PHSocialGroupDeleteRequest
- (BOOL)validateForDeleteManagedObject:(id)a3 error:(id *)a4;
- (void)deleteManagedObject:(id)a3 photoLibrary:(id)a4;
@end

@implementation PHSocialGroupDeleteRequest

- (void)deleteManagedObject:(id)a3 photoLibrary:(id)a4
{
  v5 = a3;
  v6 = [a4 managedObjectContext];
  [v6 deleteObject:v5];
}

- (BOOL)validateForDeleteManagedObject:(id)a3 error:(id *)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v16.receiver = self;
  v16.super_class = PHSocialGroupDeleteRequest;
  v17 = 0;
  v7 = [(PHObjectDeleteRequest *)&v16 validateForDeleteManagedObject:v6 error:&v17];
  v8 = v17;
  if (!v7)
  {
    v13 = 0;
    if (!a4)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v9 = [MEMORY[0x1E69BE7F8] newNodeContainerWithNode:v6];
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

  if (a4)
  {
LABEL_9:
    if (!v13)
    {
      v14 = v8;
      *a4 = v8;
    }
  }

LABEL_11:

  return v13;
}

@end