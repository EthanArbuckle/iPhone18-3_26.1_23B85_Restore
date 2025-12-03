@interface PHPersonDeleteRequest
- (BOOL)validateForDeleteManagedObject:(id)object error:(id *)error;
- (PHPersonDeleteRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (void)encodeToXPCDict:(id)dict;
@end

@implementation PHPersonDeleteRequest

- (void)encodeToXPCDict:(id)dict
{
  v5.receiver = self;
  v5.super_class = PHPersonDeleteRequest;
  dictCopy = dict;
  [(PHObjectDeleteRequest *)&v5 encodeToXPCDict:dictCopy];
  xpc_dictionary_set_BOOL(dictCopy, "force", self->_force);
}

- (PHPersonDeleteRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  dictCopy = dict;
  v11.receiver = self;
  v11.super_class = PHPersonDeleteRequest;
  v9 = [(PHObjectDeleteRequest *)&v11 initWithXPCDict:dictCopy request:request clientAuthorization:authorization];
  if (v9)
  {
    v9->_force = xpc_dictionary_get_BOOL(dictCopy, "force");
  }

  return v9;
}

- (BOOL)validateForDeleteManagedObject:(id)object error:(id *)error
{
  objectCopy = object;
  v16.receiver = self;
  v16.super_class = PHPersonDeleteRequest;
  v17 = 0;
  v7 = [(PHObjectDeleteRequest *)&v16 validateForDeleteManagedObject:objectCopy error:&v17];
  v8 = v17;
  if (!v7)
  {
    v10 = 0;
    if (!error)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v9 = objectCopy;
  if (-[PHPersonDeleteRequest force](self, "force") || [v9 verifiedType])
  {
    v10 = 1;
  }

  else
  {
    v13 = MEMORY[0x1E696ABC0];
    personUUID = [v9 personUUID];
    v15 = [v13 ph_errorWithCode:3300 localizedDescription:{@"Deleting an unverified person (uuid = %@) is not permitted", personUUID}];

    v10 = 0;
    v8 = v15;
  }

  if (error)
  {
LABEL_8:
    if (!v10)
    {
      v11 = v8;
      *error = v8;
    }
  }

LABEL_10:

  return v10;
}

@end