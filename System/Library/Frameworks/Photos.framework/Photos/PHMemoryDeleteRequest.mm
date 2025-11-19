@interface PHMemoryDeleteRequest
- (BOOL)validateForDeleteManagedObject:(id)a3 error:(id *)a4;
- (PHMemoryDeleteRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
- (void)deleteManagedObject:(id)a3 photoLibrary:(id)a4;
@end

@implementation PHMemoryDeleteRequest

- (void)deleteManagedObject:(id)a3 photoLibrary:(id)a4
{
  v5 = a3;
  v6 = [a4 managedObjectContext];
  [v6 deleteObject:v5];
}

- (BOOL)validateForDeleteManagedObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(PHMemoryDeleteRequest *)self clientEntitledToMemoryMutation])
  {
    v10.receiver = self;
    v10.super_class = PHMemoryDeleteRequest;
    v11 = 0;
    v7 = [(PHObjectDeleteRequest *)&v10 validateForDeleteManagedObject:v6 error:&v11];
    v8 = v11;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] ph_genericEntitlementError];
    v7 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (!v7)
  {
    v8 = v8;
    *a4 = v8;
  }

LABEL_7:

  return v7;
}

- (PHMemoryDeleteRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v8 = a5;
  v11.receiver = self;
  v11.super_class = PHMemoryDeleteRequest;
  v9 = [(PHObjectDeleteRequest *)&v11 initWithXPCDict:a3 request:a4 clientAuthorization:v8];
  if (v9)
  {
    v9->_clientEntitledToMemoryMutation = [v8 photoKitEntitledFor:*MEMORY[0x1E69C0058]];
  }

  return v9;
}

@end