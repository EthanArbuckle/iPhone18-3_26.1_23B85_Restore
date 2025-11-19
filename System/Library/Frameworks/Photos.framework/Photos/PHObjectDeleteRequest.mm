@interface PHObjectDeleteRequest
+ (id)_deleteRequestsForObjects:(id)a3;
+ (id)deleteRequestForObject:(id)a3;
+ (id)deleteRequestsForObjects:(id)a3 ofType:(Class)a4 forSelector:(SEL)a5;
- (NSString)managedEntityName;
- (PHObjectDeleteRequest)init;
- (PHObjectDeleteRequest)initWithUUID:(id)a3 objectID:(id)a4;
- (PHObjectDeleteRequest)initWithUUID:(id)a3 request:(id)a4 objectID:(id)a5;
- (PHObjectDeleteRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
- (id)initForNewObject;
- (void)encodeToXPCDict:(id)a3;
@end

@implementation PHObjectDeleteRequest

- (NSString)managedEntityName
{
  v2 = [(NSManagedObjectID *)self->_objectID entity];
  v3 = [v2 name];

  return v3;
}

- (void)encodeToXPCDict:(id)a3
{
  v4 = a3;
  v5 = [(PHObjectDeleteRequest *)self uuid];
  PLXPCDictionarySetString();

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  PLXPCDictionarySetString();

  v8 = [(PHObjectDeleteRequest *)self objectID];
  PLXPCDictionarySetManagedObjectID();
}

- (PHObjectDeleteRequest)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"-[PHObjectDeleteRequest init] unsupported" userInfo:0];
  objc_exception_throw(v2);
}

- (PHObjectDeleteRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [v10 persistentStoreCoordinator];
  v12 = xpc_dictionary_get_value(v8, "objectID");
  if (v12)
  {
    v13 = PLManagedObjectIDFromXPCValue();
  }

  else
  {
    v13 = 0;
  }

  v14 = PLStringFromXPCDictionary();
  v15 = [(PHObjectDeleteRequest *)self initWithUUID:v14 request:v10 objectID:v13];

  if (v15)
  {
    v15->_clientEntitled = [v9 photoKitEntitled];
    v16 = [v9 trustedCallerDisplayName];
    clientName = v15->_clientName;
    v15->_clientName = v16;

    v18 = [v9 trustedCallerBundleID];
    clientBundleID = v15->_clientBundleID;
    v15->_clientBundleID = v18;
  }

  return v15;
}

- (id)initForNewObject
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"-[PHObjectDeleteRequest initForNewObject] unsupported" userInfo:0];
  objc_exception_throw(v2);
}

- (PHObjectDeleteRequest)initWithUUID:(id)a3 request:(id)a4 objectID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PHObjectDeleteRequest;
  v12 = [(PHChangeRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_uuid, a3);
    objc_storeStrong(&v13->_objectID, a5);
    [v10 recordDeleteRequest:v13];
  }

  return v13;
}

- (PHObjectDeleteRequest)initWithUUID:(id)a3 objectID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[PHPhotoLibrary photoLibraryForCurrentTransaction];
  v9 = [(PHObjectDeleteRequest *)self initWithUUID:v7 request:v8 objectID:v6];

  return v9;
}

+ (id)_deleteRequestsForObjects:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [a1 deleteRequestForObject:{*(*(&v13 + 1) + 8 * i), v13}];
        [v5 _pl_addNonNilObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)deleteRequestsForObjects:(id)a3 ofType:(Class)a4 forSelector:(SEL)a5
{
  v8 = a3;
  +[PHPhotoLibrary assertTransaction];
  [PHObject assertAllObjects:v8 forSelector:a2 areOfType:a4];
  v9 = [a1 _deleteRequestsForObjects:v8];

  return v9;
}

+ (id)deleteRequestForObject:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 uuid];
  v7 = [v4 objectID];

  v8 = [v5 initWithUUID:v6 objectID:v7];

  return v8;
}

@end