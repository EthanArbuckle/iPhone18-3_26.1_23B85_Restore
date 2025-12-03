@interface PHAssetCommentCreationRequest
+ (id)changeRequestForAssetComment:(id)comment;
+ (id)creationRequestForAssetCommentLike;
+ (id)creationRequestForAssetCommentWithText:(id)text;
- (PHAssetCommentCreationRequest)initWithUUID:(id)d objectID:(id)iD;
- (PHAssetCommentCreationRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (id)commentText;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (id)initForNewObject;
- (id)isLike;
- (id)placeholderForCreatedAssetComment;
- (void)encodeToXPCDict:(id)dict;
- (void)setCommentText:(id)text;
- (void)setIsLike:(id)like;
@end

@implementation PHAssetCommentCreationRequest

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69BE340];
  libraryCopy = library;
  commentText = [(PHAssetCommentCreationRequest *)self commentText];
  isLike = [(PHAssetCommentCreationRequest *)self isLike];
  v10 = [v6 insertNewCommentWithCommentText:commentText commentDate:0 isLike:objc_msgSend(isLike isMyComment:"BOOLValue") inLibrary:{1, libraryCopy}];

  uuid = [(PHChangeRequest *)self uuid];
  [v10 setCloudGUID:uuid];

  if (error && !v10)
  {
    v12 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create cloud shared comment"];
    v17[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *error = [v12 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v14];
  }

  return v10;
}

- (void)setIsLike:(id)like
{
  likeCopy = like;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (likeCopy)
  {
    [mutations setObject:likeCopy forKeyedSubscript:@"isLike"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"isLike"];
  }

  else
  {
    [mutations removeObjectForKey:@"isLike"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"isLike"];
  }
}

- (id)isLike
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"isLike"];

  return v5;
}

- (void)setCommentText:(id)text
{
  textCopy = text;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (textCopy)
  {
    [mutations setObject:textCopy forKeyedSubscript:@"commentText"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"commentText"];
  }

  else
  {
    [mutations removeObjectForKey:@"commentText"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"commentText"];
  }
}

- (id)commentText
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"commentText"];

  return v5;
}

- (void)encodeToXPCDict:(id)dict
{
  dictCopy = dict;
  helper = [(PHChangeRequest *)self helper];
  [helper encodeToXPCDict:dictCopy];
}

- (PHAssetCommentCreationRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  dictCopy = dict;
  requestCopy = request;
  authorizationCopy = authorization;
  v15.receiver = self;
  v15.super_class = PHAssetCommentCreationRequest;
  v11 = [(PHChangeRequest *)&v15 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:dictCopy changeRequest:v11 request:requestCopy clientAuthorization:authorizationCopy];
    helper = v11->super._helper;
    v11->super._helper = v12;
  }

  return v11;
}

- (id)placeholderForCreatedAssetComment
{
  helper = [(PHChangeRequest *)self helper];
  v4 = [helper placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

- (PHAssetCommentCreationRequest)initWithUUID:(id)d objectID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = PHAssetCommentCreationRequest;
  v8 = [(PHChangeRequest *)&v12 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:dCopy objectID:iDCopy changeRequest:v8];
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

+ (id)changeRequestForAssetComment:(id)comment
{
  commentCopy = comment;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [PHAssetCommentCreationRequest alloc];
    uuid = [commentCopy uuid];
    objectID = [commentCopy objectID];
    v7 = [(PHAssetCommentCreationRequest *)v4 initWithUUID:uuid objectID:objectID];

    [(PHAssetCommentCreationRequest *)v7 setComment:commentCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)creationRequestForAssetCommentLike
{
  initForNewObject = [[PHAssetCommentCreationRequest alloc] initForNewObject];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [initForNewObject setIsLike:v3];

  return initForNewObject;
}

+ (id)creationRequestForAssetCommentWithText:(id)text
{
  if (text)
  {
    textCopy = text;
    initForNewObject = [[PHAssetCommentCreationRequest alloc] initForNewObject];
    v5 = [MEMORY[0x1E696AD98] numberWithBool:0];
    [initForNewObject setIsLike:v5];

    [initForNewObject setCommentText:textCopy];
  }

  else
  {
    initForNewObject = 0;
  }

  return initForNewObject;
}

@end