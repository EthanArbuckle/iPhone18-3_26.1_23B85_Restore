@interface PHCloudFeedEntryChangeRequest
+ (id)changeRequestForEntry:(id)entry;
+ (id)creationRequestForEntry;
- (BOOL)entryIsMine;
- (PHCloudFeedEntryChangeRequest)initWithUUID:(id)d objectID:(id)iD;
- (PHCloudFeedEntryChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (PHObjectPlaceholder)placeholderForCreatedEntry;
- (id)_managedObjectsFromOids:(id)oids inLibrary:(id)library;
- (id)_xpcArrayFromOids:(id)oids;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (id)initForNewObject;
- (int64_t)entryType;
- (void)encodeToXPCDict:(id)dict;
- (void)setEntryAssets:(id)assets;
- (void)setEntryComments:(id)comments;
- (void)setEntryIsMine:(BOOL)mine;
- (void)setEntryLikes:(id)likes;
- (void)setEntryType:(int64_t)type;
@end

@implementation PHCloudFeedEntryChangeRequest

- (void)setEntryLikes:(id)likes
{
  likesCopy = likes;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  fetchedObjectIDs = [likesCopy fetchedObjectIDs];

  entryLikes = self->_entryLikes;
  self->_entryLikes = fetchedObjectIDs;
}

- (void)setEntryComments:(id)comments
{
  commentsCopy = comments;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  fetchedObjectIDs = [commentsCopy fetchedObjectIDs];

  entryComments = self->_entryComments;
  self->_entryComments = fetchedObjectIDs;
}

- (void)setEntryAssets:(id)assets
{
  assetsCopy = assets;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  fetchedObjectIDs = [assetsCopy fetchedObjectIDs];

  entryAssets = self->_entryAssets;
  self->_entryAssets = fetchedObjectIDs;
}

- (id)_xpcArrayFromOids:(id)oids
{
  v16 = *MEMORY[0x1E69E9840];
  oidsCopy = oids;
  v4 = xpc_array_create(0, 0);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = oidsCopy;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PLXPCArrayAppendManagedObjectID();
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)encodeToXPCDict:(id)dict
{
  xdict = dict;
  helper = [(PHChangeRequest *)self helper];
  [helper encodeToXPCDict:xdict];

  if ([(NSArray *)self->_entryAssets count])
  {
    v5 = [(PHCloudFeedEntryChangeRequest *)self _xpcArrayFromOids:self->_entryAssets];
    xpc_dictionary_set_value(xdict, "entryAssets", v5);
  }

  if ([(NSArray *)self->_entryComments count])
  {
    v6 = [(PHCloudFeedEntryChangeRequest *)self _xpcArrayFromOids:self->_entryComments];
    xpc_dictionary_set_value(xdict, "entryComments", v6);
  }

  if ([(NSArray *)self->_entryLikes count])
  {
    v7 = [(PHCloudFeedEntryChangeRequest *)self _xpcArrayFromOids:self->_entryLikes];
    xpc_dictionary_set_value(xdict, "entryLikes", v7);
  }

  MEMORY[0x1EEE66BB8]();
}

- (PHCloudFeedEntryChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  dictCopy = dict;
  requestCopy = request;
  authorizationCopy = authorization;
  v21.receiver = self;
  v21.super_class = PHCloudFeedEntryChangeRequest;
  v11 = [(PHChangeRequest *)&v21 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:dictCopy changeRequest:v11 request:requestCopy clientAuthorization:authorizationCopy];
    helper = v11->super._helper;
    v11->super._helper = v12;

    v14 = [(PHChangeRequest *)v11 objectIDsFromXPCDict:dictCopy key:"entryAssets" request:requestCopy];
    entryAssets = v11->_entryAssets;
    v11->_entryAssets = v14;

    v16 = [(PHChangeRequest *)v11 objectIDsFromXPCDict:dictCopy key:"entryComments" request:requestCopy];
    entryComments = v11->_entryComments;
    v11->_entryComments = v16;

    v18 = [(PHChangeRequest *)v11 objectIDsFromXPCDict:dictCopy key:"entryLikes" request:requestCopy];
    entryLikes = v11->_entryLikes;
    v11->_entryLikes = v18;
  }

  return v11;
}

- (PHCloudFeedEntryChangeRequest)initWithUUID:(id)d objectID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = PHCloudFeedEntryChangeRequest;
  v8 = [(PHChangeRequest *)&v12 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:dCopy objectID:iDCopy changeRequest:v8];
    helper = v8->super._helper;
    v8->super._helper = v9;
  }

  return v8;
}

- (void)setEntryType:(int64_t)type
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"entryType"];
}

- (int64_t)entryType
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"entryType"];

  integerValue = [v5 integerValue];
  return integerValue;
}

- (void)setEntryIsMine:(BOOL)mine
{
  mineCopy = mine;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:mineCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"entryIsMine"];
}

- (BOOL)entryIsMine
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"entryIsMine"];

  LOBYTE(helper) = [v5 BOOLValue];
  return helper;
}

- (id)_managedObjectsFromOids:(id)oids inLibrary:(id)library
{
  v23 = *MEMORY[0x1E69E9840];
  oidsCopy = oids;
  libraryCopy = library;
  if ([oidsCopy count])
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = oidsCopy;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          managedObjectContext = [libraryCopy managedObjectContext];
          v17 = 0;
          v15 = [managedObjectContext existingObjectWithID:v13 error:&v17];

          if (v15)
          {
            [v7 addObject:v15];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  libraryCopy = library;
  if ([(PHCloudFeedEntryChangeRequest *)self entryType]== 1)
  {
    v6 = objc_alloc(MEMORY[0x1E69BE308]);
    managedObjectContext = [libraryCopy managedObjectContext];
    v8 = [v6 initWithContext:managedObjectContext];

    entryAssets = self->_entryAssets;
    v10 = v8;
    managedObjectContext3 = [(PHCloudFeedEntryChangeRequest *)self _managedObjectsFromOids:entryAssets inLibrary:libraryCopy];
    [v10 setEntryAssets:managedObjectContext3];
LABEL_5:

    goto LABEL_7;
  }

  if ([(PHCloudFeedEntryChangeRequest *)self entryType]== 2)
  {
    v12 = objc_alloc(MEMORY[0x1E69BE310]);
    managedObjectContext2 = [libraryCopy managedObjectContext];
    v14 = [v12 initWithContext:managedObjectContext2];

    entryComments = self->_entryComments;
    v10 = v14;
    v16 = [(PHCloudFeedEntryChangeRequest *)self _managedObjectsFromOids:entryComments inLibrary:libraryCopy];
    [v10 setEntryComments:v16];

    managedObjectContext3 = [(PHCloudFeedEntryChangeRequest *)self _managedObjectsFromOids:self->_entryLikes inLibrary:libraryCopy];
    [v10 setEntryLikeComments:managedObjectContext3];
    goto LABEL_5;
  }

  v17 = objc_alloc(MEMORY[0x1E69BE320]);
  managedObjectContext3 = [libraryCopy managedObjectContext];
  v10 = [v17 initWithContext:managedObjectContext3];
LABEL_7:

  [v10 setEntryType:{-[PHCloudFeedEntryChangeRequest entryType](self, "entryType")}];
  [v10 setEntryIsMine:{-[PHCloudFeedEntryChangeRequest entryIsMine](self, "entryIsMine")}];
  v18 = [MEMORY[0x1E695DF00] now];
  [v10 setEntryDate:v18];

  uuid = [(PHChangeRequest *)self uuid];
  [v10 setUuid:uuid];

  return v10;
}

- (PHObjectPlaceholder)placeholderForCreatedEntry
{
  helper = [(PHChangeRequest *)self helper];
  v4 = [helper placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

- (id)initForNewObject
{
  v6.receiver = self;
  v6.super_class = PHCloudFeedEntryChangeRequest;
  v2 = [(PHChangeRequest *)&v6 init];
  if (v2)
  {
    v3 = [[PHChangeRequestHelper alloc] initForNewObjectWithChangeRequest:v2];
    helper = v2->super._helper;
    v2->super._helper = v3;
  }

  return v2;
}

+ (id)changeRequestForEntry:(id)entry
{
  entryCopy = entry;
  v4 = [PHCloudFeedEntryChangeRequest alloc];
  uuid = [entryCopy uuid];
  objectID = [entryCopy objectID];

  v7 = [(PHCloudFeedEntryChangeRequest *)v4 initWithUUID:uuid objectID:objectID];

  return v7;
}

+ (id)creationRequestForEntry
{
  initForNewObject = [[PHCloudFeedEntryChangeRequest alloc] initForNewObject];

  return initForNewObject;
}

@end