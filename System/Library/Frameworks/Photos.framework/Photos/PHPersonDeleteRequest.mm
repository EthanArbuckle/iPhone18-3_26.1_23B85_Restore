@interface PHPersonDeleteRequest
- (BOOL)validateForDeleteManagedObject:(id)a3 error:(id *)a4;
- (PHPersonDeleteRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
- (void)encodeToXPCDict:(id)a3;
@end

@implementation PHPersonDeleteRequest

- (void)encodeToXPCDict:(id)a3
{
  v5.receiver = self;
  v5.super_class = PHPersonDeleteRequest;
  v4 = a3;
  [(PHObjectDeleteRequest *)&v5 encodeToXPCDict:v4];
  xpc_dictionary_set_BOOL(v4, "force", self->_force);
}

- (PHPersonDeleteRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v8 = a3;
  v11.receiver = self;
  v11.super_class = PHPersonDeleteRequest;
  v9 = [(PHObjectDeleteRequest *)&v11 initWithXPCDict:v8 request:a4 clientAuthorization:a5];
  if (v9)
  {
    v9->_force = xpc_dictionary_get_BOOL(v8, "force");
  }

  return v9;
}

- (BOOL)validateForDeleteManagedObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = PHPersonDeleteRequest;
  v17 = 0;
  v7 = [(PHObjectDeleteRequest *)&v16 validateForDeleteManagedObject:v6 error:&v17];
  v8 = v17;
  if (!v7)
  {
    v10 = 0;
    if (!a4)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v9 = v6;
  if (-[PHPersonDeleteRequest force](self, "force") || [v9 verifiedType])
  {
    v10 = 1;
  }

  else
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = [v9 personUUID];
    v15 = [v13 ph_errorWithCode:3300 localizedDescription:{@"Deleting an unverified person (uuid = %@) is not permitted", v14}];

    v10 = 0;
    v8 = v15;
  }

  if (a4)
  {
LABEL_8:
    if (!v10)
    {
      v11 = v8;
      *a4 = v8;
    }
  }

LABEL_10:

  return v10;
}

@end