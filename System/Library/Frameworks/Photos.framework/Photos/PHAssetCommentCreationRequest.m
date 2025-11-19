@interface PHAssetCommentCreationRequest
+ (id)changeRequestForAssetComment:(id)a3;
+ (id)creationRequestForAssetCommentLike;
+ (id)creationRequestForAssetCommentWithText:(id)a3;
- (PHAssetCommentCreationRequest)initWithUUID:(id)a3 objectID:(id)a4;
- (PHAssetCommentCreationRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
- (id)commentText;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (id)initForNewObject;
- (id)isLike;
- (id)placeholderForCreatedAssetComment;
- (void)encodeToXPCDict:(id)a3;
- (void)setCommentText:(id)a3;
- (void)setIsLike:(id)a3;
@end

@implementation PHAssetCommentCreationRequest

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69BE340];
  v7 = a3;
  v8 = [(PHAssetCommentCreationRequest *)self commentText];
  v9 = [(PHAssetCommentCreationRequest *)self isLike];
  v10 = [v6 insertNewCommentWithCommentText:v8 commentDate:0 isLike:objc_msgSend(v9 isMyComment:"BOOLValue") inLibrary:{1, v7}];

  v11 = [(PHChangeRequest *)self uuid];
  [v10 setCloudGUID:v11];

  if (a4 && !v10)
  {
    v12 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create cloud shared comment"];
    v17[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *a4 = [v12 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v14];
  }

  return v10;
}

- (void)setIsLike:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"isLike"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"isLike"];
  }

  else
  {
    [v6 removeObjectForKey:@"isLike"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"isLike"];
  }
}

- (id)isLike
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"isLike"];

  return v5;
}

- (void)setCommentText:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"commentText"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"commentText"];
  }

  else
  {
    [v6 removeObjectForKey:@"commentText"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"commentText"];
  }
}

- (id)commentText
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"commentText"];

  return v5;
}

- (void)encodeToXPCDict:(id)a3
{
  v4 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 encodeToXPCDict:v4];
}

- (PHAssetCommentCreationRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = PHAssetCommentCreationRequest;
  v11 = [(PHChangeRequest *)&v15 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:v8 changeRequest:v11 request:v9 clientAuthorization:v10];
    helper = v11->super._helper;
    v11->super._helper = v12;
  }

  return v11;
}

- (id)placeholderForCreatedAssetComment
{
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

- (PHAssetCommentCreationRequest)initWithUUID:(id)a3 objectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PHAssetCommentCreationRequest;
  v8 = [(PHChangeRequest *)&v12 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:v6 objectID:v7 changeRequest:v8];
    helper = v8->super._helper;
    v8->super._helper = v9;
  }

  return v8;
}

- (id)initForNewObject
{
  v6.receiver = self;
  v6.super_class = PHAssetCommentCreationRequest;
  v2 = [(PHChangeRequest *)&v6 init];
  if (v2)
  {
    v3 = [[PHChangeRequestHelper alloc] initForNewObjectWithChangeRequest:v2];
    helper = v2->super._helper;
    v2->super._helper = v3;
  }

  return v2;
}

+ (id)changeRequestForAssetComment:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [PHAssetCommentCreationRequest alloc];
    v5 = [v3 uuid];
    v6 = [v3 objectID];
    v7 = [(PHAssetCommentCreationRequest *)v4 initWithUUID:v5 objectID:v6];

    [(PHAssetCommentCreationRequest *)v7 setComment:v3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)creationRequestForAssetCommentLike
{
  v2 = [[PHAssetCommentCreationRequest alloc] initForNewObject];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [v2 setIsLike:v3];

  return v2;
}

+ (id)creationRequestForAssetCommentWithText:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [[PHAssetCommentCreationRequest alloc] initForNewObject];
    v5 = [MEMORY[0x1E696AD98] numberWithBool:0];
    [v4 setIsLike:v5];

    [v4 setCommentText:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end