@interface PHKeywordChangeRequest
+ (id)changeRequestForKeyword:(id)a3;
+ (id)creationRequestForKeyword;
+ (void)deleteKeywords:(id)a3;
- (BOOL)_validateMutationOfTitleToKeyword:(id)a3 error:(id *)a4;
- (BOOL)allowMutationToManagedObject:(id)a3 propertyKey:(id)a4 error:(id *)a5;
- (NSString)shortcut;
- (NSString)title;
- (PHKeywordChangeRequest)initWithUUID:(id)a3 objectID:(id)a4;
- (PHKeywordChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
- (PHObjectPlaceholder)placeholderForCreatedKeyword;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (id)initForNewObject;
- (void)encodeToXPCDict:(id)a3;
- (void)setShortcut:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation PHKeywordChangeRequest

- (BOOL)_validateMutationOfTitleToKeyword:(id)a3 error:(id *)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = [(PHKeywordChangeRequest *)self title];
  if (v5 && (v6 = v5, v7 = [v5 isEqualToString:&stru_1F0FC60C8], v6, v6, !v7))
  {
    v11 = 0;
    v13 = 1;
  }

  else
  {
    v8 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A578];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid keyword title"];
    v16[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v11 = [v8 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v10];

    if (a4)
    {
      v12 = v11;
      v13 = 0;
      *a4 = v11;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (BOOL)allowMutationToManagedObject:(id)a3 propertyKey:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_class();
  v11 = v8;
  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    if (v13)
    {
      goto LABEL_8;
    }

    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id  _Nullable _PLAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nullable __strong)"}];
    [v14 handleFailureInFunction:v15 file:@"PLHelperExtension.h" lineNumber:78 description:{@"Expected class of %@ but was %@", v10, objc_opt_class()}];
  }

  v13 = 0;
LABEL_8:

  if ([v9 isEqualToString:@"title"] && !-[PHKeywordChangeRequest _validateMutationOfTitleToKeyword:error:](self, "_validateMutationOfTitleToKeyword:error:", v13, a5))
  {
    v16 = 0;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = PHKeywordChangeRequest;
    v16 = [(PHChangeRequest *)&v18 allowMutationToManagedObject:v11 propertyKey:v9 error:a5];
  }

  return v16;
}

- (void)encodeToXPCDict:(id)a3
{
  v4 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 encodeToXPCDict:v4];
}

- (PHKeywordChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = PHKeywordChangeRequest;
  v11 = [(PHChangeRequest *)&v15 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:v8 changeRequest:v11 request:v9 clientAuthorization:v10];
    helper = v11->super._helper;
    v11->super._helper = v12;
  }

  return v11;
}

- (PHKeywordChangeRequest)initWithUUID:(id)a3 objectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PHKeywordChangeRequest;
  v8 = [(PHChangeRequest *)&v12 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:v6 objectID:v7 changeRequest:v8];
    helper = v8->super._helper;
    v8->super._helper = v9;
  }

  return v8;
}

- (void)setShortcut:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"shortcut"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"shortcut"];
  }

  else
  {
    [v6 removeObjectForKey:@"shortcut"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"shortcut"];
  }
}

- (NSString)shortcut
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"shortcut"];

  return v5;
}

- (void)setTitle:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"title"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"title"];
  }

  else
  {
    [v6 removeObjectForKey:@"title"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"title"];
  }
}

- (NSString)title
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"title"];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &stru_1F0FC60C8;
  }

  v7 = v6;

  return &v6->isa;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 keywordManager];
  v8 = [(PHKeywordChangeRequest *)self title];
  v9 = [v7 createOrLookupKeywordForTitle:v8 photoLibrary:v6 error:a4];

  if (v9)
  {
    v10 = [(PHChangeRequest *)self uuid];
    [v9 setUuid:v10];
  }

  return v9;
}

- (PHObjectPlaceholder)placeholderForCreatedKeyword
{
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

- (id)initForNewObject
{
  v6.receiver = self;
  v6.super_class = PHKeywordChangeRequest;
  v2 = [(PHChangeRequest *)&v6 init];
  if (v2)
  {
    v3 = [[PHChangeRequestHelper alloc] initForNewObjectWithChangeRequest:v2];
    helper = v2->super._helper;
    v2->super._helper = v3;
  }

  return v2;
}

+ (void)deleteKeywords:(id)a3
{
  v5 = a3;
  v4 = [(PHObjectDeleteRequest *)PHKeywordDeleteRequest deleteRequestsForObjects:v5 ofType:objc_opt_class() forSelector:a2];
}

+ (id)changeRequestForKeyword:(id)a3
{
  v3 = a3;
  v4 = [PHKeywordChangeRequest alloc];
  v5 = [v3 uuid];
  v6 = [v3 objectID];

  v7 = [(PHKeywordChangeRequest *)v4 initWithUUID:v5 objectID:v6];

  return v7;
}

+ (id)creationRequestForKeyword
{
  v2 = [[PHKeywordChangeRequest alloc] initForNewObject];

  return v2;
}

@end