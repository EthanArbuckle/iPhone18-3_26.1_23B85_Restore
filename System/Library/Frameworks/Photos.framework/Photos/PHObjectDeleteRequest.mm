@interface PHObjectDeleteRequest
+ (id)_deleteRequestsForObjects:(id)objects;
+ (id)deleteRequestForObject:(id)object;
+ (id)deleteRequestsForObjects:(id)objects ofType:(Class)type forSelector:(SEL)selector;
- (NSString)managedEntityName;
- (PHObjectDeleteRequest)init;
- (PHObjectDeleteRequest)initWithUUID:(id)d objectID:(id)iD;
- (PHObjectDeleteRequest)initWithUUID:(id)d request:(id)request objectID:(id)iD;
- (PHObjectDeleteRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (id)initForNewObject;
- (void)encodeToXPCDict:(id)dict;
@end

@implementation PHObjectDeleteRequest

- (NSString)managedEntityName
{
  entity = [(NSManagedObjectID *)self->_objectID entity];
  name = [entity name];

  return name;
}

- (void)encodeToXPCDict:(id)dict
{
  dictCopy = dict;
  uuid = [(PHObjectDeleteRequest *)self uuid];
  PLXPCDictionarySetString();

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  PLXPCDictionarySetString();

  objectID = [(PHObjectDeleteRequest *)self objectID];
  PLXPCDictionarySetManagedObjectID();
}

- (PHObjectDeleteRequest)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"-[PHObjectDeleteRequest init] unsupported" userInfo:0];
  objc_exception_throw(v2);
}

- (PHObjectDeleteRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  dictCopy = dict;
  authorizationCopy = authorization;
  requestCopy = request;
  persistentStoreCoordinator = [requestCopy persistentStoreCoordinator];
  v12 = xpc_dictionary_get_value(dictCopy, "objectID");
  if (v12)
  {
    v13 = PLManagedObjectIDFromXPCValue();
  }

  else
  {
    v13 = 0;
  }

  v14 = PLStringFromXPCDictionary();
  v15 = [(PHObjectDeleteRequest *)self initWithUUID:v14 request:requestCopy objectID:v13];

  if (v15)
  {
    v15->_clientEntitled = [authorizationCopy photoKitEntitled];
    trustedCallerDisplayName = [authorizationCopy trustedCallerDisplayName];
    clientName = v15->_clientName;
    v15->_clientName = trustedCallerDisplayName;

    trustedCallerBundleID = [authorizationCopy trustedCallerBundleID];
    clientBundleID = v15->_clientBundleID;
    v15->_clientBundleID = trustedCallerBundleID;
  }

  return v15;
}

- (id)initForNewObject
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"-[PHObjectDeleteRequest initForNewObject] unsupported" userInfo:0];
  objc_exception_throw(v2);
}

- (PHObjectDeleteRequest)initWithUUID:(id)d request:(id)request objectID:(id)iD
{
  dCopy = d;
  requestCopy = request;
  iDCopy = iD;
  v15.receiver = self;
  v15.super_class = PHObjectDeleteRequest;
  v12 = [(PHChangeRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_uuid, d);
    objc_storeStrong(&v13->_objectID, iD);
    [requestCopy recordDeleteRequest:v13];
  }

  return v13;
}

- (PHObjectDeleteRequest)initWithUUID:(id)d objectID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  v8 = +[PHPhotoLibrary photoLibraryForCurrentTransaction];
  v9 = [(PHObjectDeleteRequest *)self initWithUUID:dCopy request:v8 objectID:iDCopy];

  return v9;
}

+ (id)_deleteRequestsForObjects:(id)objects
{
  v18 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = objectsCopy;
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

        v11 = [self deleteRequestForObject:{*(*(&v13 + 1) + 8 * i), v13}];
        [array _pl_addNonNilObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return array;
}

+ (id)deleteRequestsForObjects:(id)objects ofType:(Class)type forSelector:(SEL)selector
{
  objectsCopy = objects;
  +[PHPhotoLibrary assertTransaction];
  [PHObject assertAllObjects:objectsCopy forSelector:a2 areOfType:type];
  v9 = [self _deleteRequestsForObjects:objectsCopy];

  return v9;
}

+ (id)deleteRequestForObject:(id)object
{
  objectCopy = object;
  v5 = [self alloc];
  uuid = [objectCopy uuid];
  objectID = [objectCopy objectID];

  v8 = [v5 initWithUUID:uuid objectID:objectID];

  return v8;
}

@end