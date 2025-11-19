@interface PHShareParticipantChangeRequest
+ (id)creationRequestForShareParticipantWithEmailAddress:(id)a3 permission:(signed __int16)a4;
+ (id)creationRequestForShareParticipantWithPhoneNumber:(id)a3 permission:(signed __int16)a4;
+ (void)deleteShareParticipants:(id)a3;
- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5;
- (BOOL)isCurrentUser;
- (BOOL)prepareForPhotoLibraryCheck:(id)a3 error:(id *)a4;
- (NSString)emailAddress;
- (NSString)phoneNumber;
- (PHObjectPlaceholder)placeholderForCreatedShareParticipant;
- (PHShareParticipantChangeRequest)initWithUUID:(id)a3 objectID:(id)a4;
- (PHShareParticipantChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
- (id)_mutablePersonObjectIDsAndUUIDs;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (id)initForNewObject;
- (id)participantID;
- (signed)acceptanceStatus;
- (signed)exitState;
- (signed)participantKind;
- (signed)permission;
- (unsigned)role;
- (void)_preparePersonIDIfNeeded;
- (void)encodeToXPCDict:(id)a3;
- (void)setAcceptanceStatus:(signed __int16)a3;
- (void)setEmailAddress:(id)a3;
- (void)setExitState:(signed __int16)a3;
- (void)setIsCurrentUser:(BOOL)a3;
- (void)setParticipantID:(id)a3;
- (void)setParticipantKind:(signed __int16)a3;
- (void)setPermission:(signed __int16)a3;
- (void)setPerson:(id)a3;
- (void)setPhoneNumber:(id)a3;
- (void)setRole:(unsigned __int16)a3;
@end

@implementation PHShareParticipantChangeRequest

- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [(PHChangeRequest *)self helper];
  v21 = 0;
  v9 = [v8 applyMutationsToManagedObject:v7 error:&v21];
  v10 = v21;

  v11 = [(PHShareParticipantChangeRequest *)self personHelper];
  v12 = v11;
  if (v9)
  {
    v13 = [v11 mutableObjectIDsAndUUIDs];
    v14 = [v13 count];

    if (!v14)
    {
      v16 = 1;
      goto LABEL_9;
    }

    [v12 setAllowsInsert:1];
    v15 = [MEMORY[0x1E69BE608] entityName];
    [v12 setDestinationEntityName:v15];

    [v12 setIsDestinationObjectValid:&__block_literal_global_32333];
    v20 = v10;
    v16 = [v12 applyMutationsToManagedObjectToOneRelationship:v7 error:&v20];
    v17 = v20;

    v10 = v17;
    if (!a5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v16 = 0;
    if (!a5)
    {
      goto LABEL_9;
    }
  }

  if ((v16 & 1) == 0)
  {
    v18 = v10;
    v16 = 0;
    *a5 = v10;
  }

LABEL_9:

  return v16;
}

- (void)setPerson:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    [(PHChangeRequest *)self didMutate];
    v5 = PLObjectIDOrUUIDFromPHObject(v10);
    v4 = v10;
    if (v5)
    {
      v6 = [(PHShareParticipantChangeRequest *)self _mutablePersonObjectIDsAndUUIDs];
      v7 = [v6 count];

      v8 = [(PHShareParticipantChangeRequest *)self _mutablePersonObjectIDsAndUUIDs];
      v9 = v8;
      if (v7)
      {
        [v8 replaceObjectAtIndex:0 withObject:v5];
      }

      else
      {
        [v8 addObject:v5];
      }

      v4 = v10;
    }
  }
}

- (id)_mutablePersonObjectIDsAndUUIDs
{
  [(PHShareParticipantChangeRequest *)self _preparePersonIDIfNeeded];
  v3 = [(PHShareParticipantChangeRequest *)self personHelper];
  v4 = [v3 mutableObjectIDsAndUUIDs];

  return v4;
}

- (void)_preparePersonIDIfNeeded
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHRelationshipChangeRequestHelper *)self->_personHelper originalObjectIDs];

  if (!v3)
  {
    [(PHRelationshipChangeRequestHelper *)self->_personHelper setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
  }

  v4 = [(PHRelationshipChangeRequestHelper *)self->_personHelper mutableObjectIDsAndUUIDs];

  if (!v4)
  {
    personHelper = self->_personHelper;
    v7 = [(PHRelationshipChangeRequestHelper *)personHelper originalObjectIDs];
    v6 = [v7 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)personHelper setMutableObjectIDsAndUUIDs:v6];
  }
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E69BE7D8];
  v7 = [a3 managedObjectContext];
  v8 = [v6 insertInManagedObjectContext:v7];

  v9 = [(PHShareParticipantChangeRequest *)self emailAddress];
  [v8 setEmailAddress:v9];

  v10 = [(PHShareParticipantChangeRequest *)self phoneNumber];
  [v8 setPhoneNumber:v10];

  v11 = [(PHChangeRequest *)self uuid];
  [v8 setUuid:v11];

  v12 = [(PHShareParticipantChangeRequest *)self role];
  if ((v12 - 1) < 3)
  {
    v13 = (v12 - 1) + 1;
  }

  else
  {
    v13 = 0;
  }

  [v8 setRole:v13];
  if (a4 && !v8)
  {
    *a4 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:0];
  }

  return v8;
}

- (void)setParticipantKind:(signed __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"participantKind"];
}

- (signed)participantKind
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"participantKind"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setExitState:(signed __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"exitState"];
}

- (signed)exitState
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"exitState"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setIsCurrentUser:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"isCurrentUser"];
}

- (BOOL)isCurrentUser
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"isCurrentUser"];

  LOBYTE(v3) = [v5 BOOLValue];
  return v3;
}

- (void)setPermission:(signed __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"permission"];
}

- (signed)permission
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"permission"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setAcceptanceStatus:(signed __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"acceptanceStatus"];
}

- (signed)acceptanceStatus
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"acceptanceStatus"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setRole:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"role"];
}

- (unsigned)role
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"role"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setParticipantID:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"participantID"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"participantID"];
  }

  else
  {
    [v6 removeObjectForKey:@"participantID"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"participantID"];
  }
}

- (id)participantID
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"participantID"];

  return v5;
}

- (void)setPhoneNumber:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"phoneNumber"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"phoneNumber"];
  }

  else
  {
    [v6 removeObjectForKey:@"phoneNumber"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"phoneNumber"];
  }
}

- (NSString)phoneNumber
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"phoneNumber"];

  return v5;
}

- (void)setEmailAddress:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"emailAddress"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"emailAddress"];
  }

  else
  {
    [v6 removeObjectForKey:@"emailAddress"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"emailAddress"];
  }
}

- (NSString)emailAddress
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"emailAddress"];

  return v5;
}

- (PHObjectPlaceholder)placeholderForCreatedShareParticipant
{
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

- (BOOL)prepareForPhotoLibraryCheck:(id)a3 error:(id *)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 type] && objc_msgSend(v5, "type") != 1)
  {
    if (a4)
    {
      v6 = MEMORY[0x1E696ABC0];
      v9 = *MEMORY[0x1E696A578];
      v10[0] = @"Change must be performed within the sharedPhotoLibrary or sharedMomentSharePhotoLibrary";
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
      *a4 = [v6 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v7];

      LOBYTE(a4) = 0;
    }
  }

  else
  {
    LOBYTE(a4) = 1;
  }

  return a4;
}

- (void)encodeToXPCDict:(id)a3
{
  v5 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 encodeToXPCDict:v5];

  [(PHRelationshipChangeRequestHelper *)self->_personHelper encodeToXPCDict:v5];
}

- (PHShareParticipantChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = PHShareParticipantChangeRequest;
  v11 = [(PHChangeRequest *)&v17 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:v8 changeRequest:v11 request:v9 clientAuthorization:v10];
    helper = v11->super._helper;
    v11->super._helper = v12;

    v14 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"person" xpcDict:v8 changeRequestHelper:v11->super._helper];
    personHelper = v11->_personHelper;
    v11->_personHelper = v14;
  }

  return v11;
}

- (PHShareParticipantChangeRequest)initWithUUID:(id)a3 objectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PHShareParticipantChangeRequest;
  v8 = [(PHChangeRequest *)&v14 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:v6 objectID:v7 changeRequest:v8];
    helper = v8->super._helper;
    v8->super._helper = v9;

    v11 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"person" changeRequestHelper:v8->super._helper];
    personHelper = v8->_personHelper;
    v8->_personHelper = v11;
  }

  return v8;
}

- (id)initForNewObject
{
  v8.receiver = self;
  v8.super_class = PHShareParticipantChangeRequest;
  v2 = [(PHChangeRequest *)&v8 init];
  if (v2)
  {
    v3 = [[PHChangeRequestHelper alloc] initForNewObjectWithChangeRequest:v2];
    helper = v2->super._helper;
    v2->super._helper = v3;

    v5 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"person" changeRequestHelper:v2->super._helper];
    personHelper = v2->_personHelper;
    v2->_personHelper = v5;
  }

  return v2;
}

+ (void)deleteShareParticipants:(id)a3
{
  v5 = a3;
  v4 = [(PHObjectDeleteRequest *)PHShareParticipantDeleteRequest deleteRequestsForObjects:v5 ofType:objc_opt_class() forSelector:a2];
}

+ (id)creationRequestForShareParticipantWithPhoneNumber:(id)a3 permission:(signed __int16)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [[PHShareParticipantChangeRequest alloc] initForNewObject];
  [v6 setPhoneNumber:v5];

  [v6 setPermission:v4];

  return v6;
}

+ (id)creationRequestForShareParticipantWithEmailAddress:(id)a3 permission:(signed __int16)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [[PHShareParticipantChangeRequest alloc] initForNewObject];
  [v6 setEmailAddress:v5];

  [v6 setPermission:v4];

  return v6;
}

@end