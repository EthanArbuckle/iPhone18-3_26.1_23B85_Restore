@interface PHCloudFeedEntryChangeRequest
+ (id)changeRequestForEntry:(id)a3;
+ (id)creationRequestForEntry;
- (BOOL)entryIsMine;
- (PHCloudFeedEntryChangeRequest)initWithUUID:(id)a3 objectID:(id)a4;
- (PHCloudFeedEntryChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
- (PHObjectPlaceholder)placeholderForCreatedEntry;
- (id)_managedObjectsFromOids:(id)a3 inLibrary:(id)a4;
- (id)_xpcArrayFromOids:(id)a3;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (id)initForNewObject;
- (int64_t)entryType;
- (void)encodeToXPCDict:(id)a3;
- (void)setEntryAssets:(id)a3;
- (void)setEntryComments:(id)a3;
- (void)setEntryIsMine:(BOOL)a3;
- (void)setEntryLikes:(id)a3;
- (void)setEntryType:(int64_t)a3;
@end

@implementation PHCloudFeedEntryChangeRequest

- (void)setEntryLikes:(id)a3
{
  v4 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v6 = [v4 fetchedObjectIDs];

  entryLikes = self->_entryLikes;
  self->_entryLikes = v6;
}

- (void)setEntryComments:(id)a3
{
  v4 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v6 = [v4 fetchedObjectIDs];

  entryComments = self->_entryComments;
  self->_entryComments = v6;
}

- (void)setEntryAssets:(id)a3
{
  v4 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v6 = [v4 fetchedObjectIDs];

  entryAssets = self->_entryAssets;
  self->_entryAssets = v6;
}

- (id)_xpcArrayFromOids:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = xpc_array_create(0, 0);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
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

- (void)encodeToXPCDict:(id)a3
{
  xdict = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 encodeToXPCDict:xdict];

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

- (PHCloudFeedEntryChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = PHCloudFeedEntryChangeRequest;
  v11 = [(PHChangeRequest *)&v21 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:v8 changeRequest:v11 request:v9 clientAuthorization:v10];
    helper = v11->super._helper;
    v11->super._helper = v12;

    v14 = [(PHChangeRequest *)v11 objectIDsFromXPCDict:v8 key:"entryAssets" request:v9];
    entryAssets = v11->_entryAssets;
    v11->_entryAssets = v14;

    v16 = [(PHChangeRequest *)v11 objectIDsFromXPCDict:v8 key:"entryComments" request:v9];
    entryComments = v11->_entryComments;
    v11->_entryComments = v16;

    v18 = [(PHChangeRequest *)v11 objectIDsFromXPCDict:v8 key:"entryLikes" request:v9];
    entryLikes = v11->_entryLikes;
    v11->_entryLikes = v18;
  }

  return v11;
}

- (PHCloudFeedEntryChangeRequest)initWithUUID:(id)a3 objectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PHCloudFeedEntryChangeRequest;
  v8 = [(PHChangeRequest *)&v12 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:v6 objectID:v7 changeRequest:v8];
    helper = v8->super._helper;
    v8->super._helper = v9;
  }

  return v8;
}

- (void)setEntryType:(int64_t)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"entryType"];
}

- (int64_t)entryType
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"entryType"];

  v6 = [v5 integerValue];
  return v6;
}

- (void)setEntryIsMine:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"entryIsMine"];
}

- (BOOL)entryIsMine
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"entryIsMine"];

  LOBYTE(v3) = [v5 BOOLValue];
  return v3;
}

- (id)_managedObjectsFromOids:(id)a3 inLibrary:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v5;
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
          v14 = [v6 managedObjectContext];
          v17 = 0;
          v15 = [v14 existingObjectWithID:v13 error:&v17];

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

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v5 = a3;
  if ([(PHCloudFeedEntryChangeRequest *)self entryType]== 1)
  {
    v6 = objc_alloc(MEMORY[0x1E69BE308]);
    v7 = [v5 managedObjectContext];
    v8 = [v6 initWithContext:v7];

    entryAssets = self->_entryAssets;
    v10 = v8;
    v11 = [(PHCloudFeedEntryChangeRequest *)self _managedObjectsFromOids:entryAssets inLibrary:v5];
    [v10 setEntryAssets:v11];
LABEL_5:

    goto LABEL_7;
  }

  if ([(PHCloudFeedEntryChangeRequest *)self entryType]== 2)
  {
    v12 = objc_alloc(MEMORY[0x1E69BE310]);
    v13 = [v5 managedObjectContext];
    v14 = [v12 initWithContext:v13];

    entryComments = self->_entryComments;
    v10 = v14;
    v16 = [(PHCloudFeedEntryChangeRequest *)self _managedObjectsFromOids:entryComments inLibrary:v5];
    [v10 setEntryComments:v16];

    v11 = [(PHCloudFeedEntryChangeRequest *)self _managedObjectsFromOids:self->_entryLikes inLibrary:v5];
    [v10 setEntryLikeComments:v11];
    goto LABEL_5;
  }

  v17 = objc_alloc(MEMORY[0x1E69BE320]);
  v11 = [v5 managedObjectContext];
  v10 = [v17 initWithContext:v11];
LABEL_7:

  [v10 setEntryType:{-[PHCloudFeedEntryChangeRequest entryType](self, "entryType")}];
  [v10 setEntryIsMine:{-[PHCloudFeedEntryChangeRequest entryIsMine](self, "entryIsMine")}];
  v18 = [MEMORY[0x1E695DF00] now];
  [v10 setEntryDate:v18];

  v19 = [(PHChangeRequest *)self uuid];
  [v10 setUuid:v19];

  return v10;
}

- (PHObjectPlaceholder)placeholderForCreatedEntry
{
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

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

+ (id)changeRequestForEntry:(id)a3
{
  v3 = a3;
  v4 = [PHCloudFeedEntryChangeRequest alloc];
  v5 = [v3 uuid];
  v6 = [v3 objectID];

  v7 = [(PHCloudFeedEntryChangeRequest *)v4 initWithUUID:v5 objectID:v6];

  return v7;
}

+ (id)creationRequestForEntry
{
  v2 = [[PHCloudFeedEntryChangeRequest alloc] initForNewObject];

  return v2;
}

@end