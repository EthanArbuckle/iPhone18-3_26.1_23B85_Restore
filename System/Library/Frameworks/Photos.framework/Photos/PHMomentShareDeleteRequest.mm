@interface PHMomentShareDeleteRequest
- (BOOL)validateForDeleteManagedObject:(id)a3 error:(id *)a4;
- (PHMomentShareDeleteRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
- (void)deleteManagedObject:(id)a3 photoLibrary:(id)a4;
- (void)encodeToXPCDict:(id)a3;
@end

@implementation PHMomentShareDeleteRequest

- (void)deleteManagedObject:(id)a3 photoLibrary:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(PHMomentShareDeleteRequest *)self operation];
  if (v7 == 1)
  {
    v8 = [v6 managedObjectContext];
    [v8 deleteObject:v9];
  }

  else if (!v7)
  {
    [v9 trash];
  }
}

- (void)encodeToXPCDict:(id)a3
{
  v5.receiver = self;
  v5.super_class = PHMomentShareDeleteRequest;
  v4 = a3;
  [(PHObjectDeleteRequest *)&v5 encodeToXPCDict:v4];
  xpc_dictionary_set_int64(v4, "deleteOperation", self->_operation);
}

- (PHMomentShareDeleteRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v8 = a3;
  v11.receiver = self;
  v11.super_class = PHMomentShareDeleteRequest;
  v9 = [(PHObjectDeleteRequest *)&v11 initWithXPCDict:v8 request:a4 clientAuthorization:a5];
  if (v9)
  {
    v9->_operation = xpc_dictionary_get_int64(v8, "deleteOperation");
  }

  return v9;
}

- (BOOL)validateForDeleteManagedObject:(id)a3 error:(id *)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v16.receiver = self;
  v16.super_class = PHMomentShareDeleteRequest;
  v17 = 0;
  v7 = [(PHObjectDeleteRequest *)&v16 validateForDeleteManagedObject:v6 error:&v17];
  v8 = v17;
  if (v7)
  {
    if (-[PHMomentShareDeleteRequest operation](self, "operation") || [v6 trashedState] != 1)
    {
      v14 = 1;
      goto LABEL_9;
    }

    v9 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A578];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Moment share is already in trash state"];
    v19[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v12 = [v9 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v11];

    v8 = v12;
  }

  if (a4)
  {
    v13 = v8;
    v14 = 0;
    *a4 = v8;
  }

  else
  {
    v14 = 0;
  }

LABEL_9:

  return v14;
}

@end