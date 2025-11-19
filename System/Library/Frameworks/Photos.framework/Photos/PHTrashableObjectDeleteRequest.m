@interface PHTrashableObjectDeleteRequest
+ (id)deleteRequestForObject:(id)a3 operation:(int64_t)a4;
- (BOOL)validateForDeleteManagedObject:(id)a3 error:(id *)a4;
- (PHTrashableObjectDeleteRequest)initWithUUID:(id)a3 objectID:(id)a4 operation:(int64_t)a5;
- (PHTrashableObjectDeleteRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
- (void)encodeToXPCDict:(id)a3;
@end

@implementation PHTrashableObjectDeleteRequest

- (BOOL)validateForDeleteManagedObject:(id)a3 error:(id *)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v15.receiver = self;
  v15.super_class = PHTrashableObjectDeleteRequest;
  v16 = 0;
  LODWORD(v7) = [(PHObjectDeleteRequest *)&v15 validateForDeleteManagedObject:v6 error:&v16];
  v8 = v16;
  if (v7)
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v6 canPerformDeleteOperation] & 1) == 0)
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
    v12 = [MEMORY[0x1E696ABC0] ph_genericEntitlementError];

    LOBYTE(v7) = 0;
    v8 = v12;
  }

  if (a4 && (v7 & 1) == 0)
  {
    v13 = v8;
    *a4 = v8;
  }

  return v7;
}

- (void)encodeToXPCDict:(id)a3
{
  v5.receiver = self;
  v5.super_class = PHTrashableObjectDeleteRequest;
  v4 = a3;
  [(PHObjectDeleteRequest *)&v5 encodeToXPCDict:v4];
  xpc_dictionary_set_int64(v4, "deleteOperation", self->_operation);
}

- (PHTrashableObjectDeleteRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = PHTrashableObjectDeleteRequest;
  v10 = [(PHObjectDeleteRequest *)&v13 initWithXPCDict:v8 request:a4 clientAuthorization:v9];
  if (v10)
  {
    v10->_clientEntitledToExpunge = [v9 photoKitEntitledFor:*MEMORY[0x1E69C0040]];
    v10->_operation = xpc_dictionary_get_int64(v8, "deleteOperation");
    v11 = v10;
  }

  return v10;
}

- (PHTrashableObjectDeleteRequest)initWithUUID:(id)a3 objectID:(id)a4 operation:(int64_t)a5
{
  v10.receiver = self;
  v10.super_class = PHTrashableObjectDeleteRequest;
  v6 = [(PHObjectDeleteRequest *)&v10 initWithUUID:a3 objectID:a4];
  v7 = v6;
  if (v6)
  {
    v6->_operation = a5;
    v8 = v6;
  }

  return v7;
}

+ (id)deleteRequestForObject:(id)a3 operation:(int64_t)a4
{
  v6 = a3;
  v7 = [a1 alloc];
  v8 = [v6 uuid];
  v9 = [v6 objectID];

  v10 = [v7 initWithUUID:v8 objectID:v9 operation:a4];

  return v10;
}

@end