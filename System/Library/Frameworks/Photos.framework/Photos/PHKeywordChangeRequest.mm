@interface PHKeywordChangeRequest
+ (id)changeRequestForKeyword:(id)keyword;
+ (id)creationRequestForKeyword;
+ (void)deleteKeywords:(id)keywords;
- (BOOL)_validateMutationOfTitleToKeyword:(id)keyword error:(id *)error;
- (BOOL)allowMutationToManagedObject:(id)object propertyKey:(id)key error:(id *)error;
- (NSString)shortcut;
- (NSString)title;
- (PHKeywordChangeRequest)initWithUUID:(id)d objectID:(id)iD;
- (PHKeywordChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (PHObjectPlaceholder)placeholderForCreatedKeyword;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (id)initForNewObject;
- (void)encodeToXPCDict:(id)dict;
- (void)setShortcut:(id)shortcut;
- (void)setTitle:(id)title;
@end

@implementation PHKeywordChangeRequest

- (BOOL)_validateMutationOfTitleToKeyword:(id)keyword error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  title = [(PHKeywordChangeRequest *)self title];
  if (title && (v6 = title, v7 = [title isEqualToString:&stru_1F0FC60C8], v6, v6, !v7))
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

    if (error)
    {
      v12 = v11;
      v13 = 0;
      *error = v11;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (BOOL)allowMutationToManagedObject:(id)object propertyKey:(id)key error:(id *)error
{
  objectCopy = object;
  keyCopy = key;
  v10 = objc_opt_class();
  v11 = objectCopy;
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

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id  _Nullable _PLAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nullable __strong)"}];
    [currentHandler handleFailureInFunction:v15 file:@"PLHelperExtension.h" lineNumber:78 description:{@"Expected class of %@ but was %@", v10, objc_opt_class()}];
  }

  v13 = 0;
LABEL_8:

  if ([keyCopy isEqualToString:@"title"] && !-[PHKeywordChangeRequest _validateMutationOfTitleToKeyword:error:](self, "_validateMutationOfTitleToKeyword:error:", v13, error))
  {
    v16 = 0;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = PHKeywordChangeRequest;
    v16 = [(PHChangeRequest *)&v18 allowMutationToManagedObject:v11 propertyKey:keyCopy error:error];
  }

  return v16;
}

- (void)encodeToXPCDict:(id)dict
{
  dictCopy = dict;
  helper = [(PHChangeRequest *)self helper];
  [helper encodeToXPCDict:dictCopy];
}

- (PHKeywordChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  dictCopy = dict;
  requestCopy = request;
  authorizationCopy = authorization;
  v15.receiver = self;
  v15.super_class = PHKeywordChangeRequest;
  v11 = [(PHChangeRequest *)&v15 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:dictCopy changeRequest:v11 request:requestCopy clientAuthorization:authorizationCopy];
    helper = v11->super._helper;
    v11->super._helper = v12;
  }

  return v11;
}

- (PHKeywordChangeRequest)initWithUUID:(id)d objectID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = PHKeywordChangeRequest;
  v8 = [(PHChangeRequest *)&v12 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:dCopy objectID:iDCopy changeRequest:v8];
    helper = v8->super._helper;
    v8->super._helper = v9;
  }

  return v8;
}

- (void)setShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (shortcutCopy)
  {
    [mutations setObject:shortcutCopy forKeyedSubscript:@"shortcut"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"shortcut"];
  }

  else
  {
    [mutations removeObjectForKey:@"shortcut"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"shortcut"];
  }
}

- (NSString)shortcut
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"shortcut"];

  return v5;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (titleCopy)
  {
    [mutations setObject:titleCopy forKeyedSubscript:@"title"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"title"];
  }

  else
  {
    [mutations removeObjectForKey:@"title"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"title"];
  }
}

- (NSString)title
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"title"];

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

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  libraryCopy = library;
  keywordManager = [libraryCopy keywordManager];
  title = [(PHKeywordChangeRequest *)self title];
  v9 = [keywordManager createOrLookupKeywordForTitle:title photoLibrary:libraryCopy error:error];

  if (v9)
  {
    uuid = [(PHChangeRequest *)self uuid];
    [v9 setUuid:uuid];
  }

  return v9;
}

- (PHObjectPlaceholder)placeholderForCreatedKeyword
{
  helper = [(PHChangeRequest *)self helper];
  v4 = [helper placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

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

+ (void)deleteKeywords:(id)keywords
{
  keywordsCopy = keywords;
  v4 = [(PHObjectDeleteRequest *)PHKeywordDeleteRequest deleteRequestsForObjects:keywordsCopy ofType:objc_opt_class() forSelector:a2];
}

+ (id)changeRequestForKeyword:(id)keyword
{
  keywordCopy = keyword;
  v4 = [PHKeywordChangeRequest alloc];
  uuid = [keywordCopy uuid];
  objectID = [keywordCopy objectID];

  v7 = [(PHKeywordChangeRequest *)v4 initWithUUID:uuid objectID:objectID];

  return v7;
}

+ (id)creationRequestForKeyword
{
  initForNewObject = [[PHKeywordChangeRequest alloc] initForNewObject];

  return initForNewObject;
}

@end