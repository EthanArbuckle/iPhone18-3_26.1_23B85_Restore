@interface PHMomentShareDeleteRequest
- (BOOL)validateForDeleteManagedObject:(id)object error:(id *)error;
- (PHMomentShareDeleteRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (void)deleteManagedObject:(id)object photoLibrary:(id)library;
- (void)encodeToXPCDict:(id)dict;
@end

@implementation PHMomentShareDeleteRequest

- (void)deleteManagedObject:(id)object photoLibrary:(id)library
{
  objectCopy = object;
  libraryCopy = library;
  operation = [(PHMomentShareDeleteRequest *)self operation];
  if (operation == 1)
  {
    managedObjectContext = [libraryCopy managedObjectContext];
    [managedObjectContext deleteObject:objectCopy];
  }

  else if (!operation)
  {
    [objectCopy trash];
  }
}

- (void)encodeToXPCDict:(id)dict
{
  v5.receiver = self;
  v5.super_class = PHMomentShareDeleteRequest;
  dictCopy = dict;
  [(PHObjectDeleteRequest *)&v5 encodeToXPCDict:dictCopy];
  xpc_dictionary_set_int64(dictCopy, "deleteOperation", self->_operation);
}

- (PHMomentShareDeleteRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  dictCopy = dict;
  v11.receiver = self;
  v11.super_class = PHMomentShareDeleteRequest;
  v9 = [(PHObjectDeleteRequest *)&v11 initWithXPCDict:dictCopy request:request clientAuthorization:authorization];
  if (v9)
  {
    v9->_operation = xpc_dictionary_get_int64(dictCopy, "deleteOperation");
  }

  return v9;
}

- (BOOL)validateForDeleteManagedObject:(id)object error:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v16.receiver = self;
  v16.super_class = PHMomentShareDeleteRequest;
  v17 = 0;
  v7 = [(PHObjectDeleteRequest *)&v16 validateForDeleteManagedObject:objectCopy error:&v17];
  v8 = v17;
  if (v7)
  {
    if (-[PHMomentShareDeleteRequest operation](self, "operation") || [objectCopy trashedState] != 1)
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

  if (error)
  {
    v13 = v8;
    v14 = 0;
    *error = v8;
  }

  else
  {
    v14 = 0;
  }

LABEL_9:

  return v14;
}

@end