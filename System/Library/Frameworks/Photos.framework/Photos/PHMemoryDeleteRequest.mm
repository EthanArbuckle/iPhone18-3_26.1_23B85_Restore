@interface PHMemoryDeleteRequest
- (BOOL)validateForDeleteManagedObject:(id)object error:(id *)error;
- (PHMemoryDeleteRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (void)deleteManagedObject:(id)object photoLibrary:(id)library;
@end

@implementation PHMemoryDeleteRequest

- (void)deleteManagedObject:(id)object photoLibrary:(id)library
{
  objectCopy = object;
  managedObjectContext = [library managedObjectContext];
  [managedObjectContext deleteObject:objectCopy];
}

- (BOOL)validateForDeleteManagedObject:(id)object error:(id *)error
{
  objectCopy = object;
  if ([(PHMemoryDeleteRequest *)self clientEntitledToMemoryMutation])
  {
    v10.receiver = self;
    v10.super_class = PHMemoryDeleteRequest;
    v11 = 0;
    v7 = [(PHObjectDeleteRequest *)&v10 validateForDeleteManagedObject:objectCopy error:&v11];
    ph_genericEntitlementError = v11;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    ph_genericEntitlementError = [MEMORY[0x1E696ABC0] ph_genericEntitlementError];
    v7 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v7)
  {
    ph_genericEntitlementError = ph_genericEntitlementError;
    *error = ph_genericEntitlementError;
  }

LABEL_7:

  return v7;
}

- (PHMemoryDeleteRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  v11.receiver = self;
  v11.super_class = PHMemoryDeleteRequest;
  v9 = [(PHObjectDeleteRequest *)&v11 initWithXPCDict:dict request:request clientAuthorization:authorizationCopy];
  if (v9)
  {
    v9->_clientEntitledToMemoryMutation = [authorizationCopy photoKitEntitledFor:*MEMORY[0x1E69C0058]];
  }

  return v9;
}

@end