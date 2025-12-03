@interface PHTrashableObjectDeleteRequest
+ (id)deleteRequestForObject:(id)object operation:(int64_t)operation;
- (BOOL)validateForDeleteManagedObject:(id)object error:(id *)error;
- (PHTrashableObjectDeleteRequest)initWithUUID:(id)d objectID:(id)iD operation:(int64_t)operation;
- (PHTrashableObjectDeleteRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (void)encodeToXPCDict:(id)dict;
@end

@implementation PHTrashableObjectDeleteRequest

- (BOOL)validateForDeleteManagedObject:(id)object error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v15.receiver = self;
  v15.super_class = PHTrashableObjectDeleteRequest;
  v16 = 0;
  LODWORD(v7) = [(PHObjectDeleteRequest *)&v15 validateForDeleteManagedObject:objectCopy error:&v16];
  v8 = v16;
  if (v7)
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([objectCopy canPerformDeleteOperation] & 1) == 0)
    {
      v7 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A578];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid delete"];
      v18[0] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v11 = [v7 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v10];

      LOBYTE(v7) = 0;
      v8 = v11;
    }

    else
    {
      LOBYTE(v7) = 1;
    }
  }

  if ([(PHTrashableObjectDeleteRequest *)self operation]== 1 && !self->_clientEntitledToExpunge)
  {
    ph_genericEntitlementError = [MEMORY[0x1E696ABC0] ph_genericEntitlementError];

    LOBYTE(v7) = 0;
    v8 = ph_genericEntitlementError;
  }

  if (error && (v7 & 1) == 0)
  {
    v13 = v8;
    *error = v8;
  }

  return v7;
}

- (void)encodeToXPCDict:(id)dict
{
  v5.receiver = self;
  v5.super_class = PHTrashableObjectDeleteRequest;
  dictCopy = dict;
  [(PHObjectDeleteRequest *)&v5 encodeToXPCDict:dictCopy];
  xpc_dictionary_set_int64(dictCopy, "deleteOperation", self->_operation);
}

- (PHTrashableObjectDeleteRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  dictCopy = dict;
  authorizationCopy = authorization;
  v13.receiver = self;
  v13.super_class = PHTrashableObjectDeleteRequest;
  v10 = [(PHObjectDeleteRequest *)&v13 initWithXPCDict:dictCopy request:request clientAuthorization:authorizationCopy];
  if (v10)
  {
    v10->_clientEntitledToExpunge = [authorizationCopy photoKitEntitledFor:*MEMORY[0x1E69C0040]];
    v10->_operation = xpc_dictionary_get_int64(dictCopy, "deleteOperation");
    v11 = v10;
  }

  return v10;
}

- (PHTrashableObjectDeleteRequest)initWithUUID:(id)d objectID:(id)iD operation:(int64_t)operation
{
  v10.receiver = self;
  v10.super_class = PHTrashableObjectDeleteRequest;
  v6 = [(PHObjectDeleteRequest *)&v10 initWithUUID:d objectID:iD];
  v7 = v6;
  if (v6)
  {
    v6->_operation = operation;
    v8 = v6;
  }

  return v7;
}

+ (id)deleteRequestForObject:(id)object operation:(int64_t)operation
{
  objectCopy = object;
  v7 = [self alloc];
  uuid = [objectCopy uuid];
  objectID = [objectCopy objectID];

  v10 = [v7 initWithUUID:uuid objectID:objectID operation:operation];

  return v10;
}

@end