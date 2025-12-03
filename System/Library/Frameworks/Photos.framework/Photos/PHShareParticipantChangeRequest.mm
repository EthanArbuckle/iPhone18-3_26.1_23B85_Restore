@interface PHShareParticipantChangeRequest
+ (id)creationRequestForShareParticipantWithEmailAddress:(id)address permission:(signed __int16)permission;
+ (id)creationRequestForShareParticipantWithPhoneNumber:(id)number permission:(signed __int16)permission;
+ (void)deleteShareParticipants:(id)participants;
- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error;
- (BOOL)isCurrentUser;
- (BOOL)prepareForPhotoLibraryCheck:(id)check error:(id *)error;
- (NSString)emailAddress;
- (NSString)phoneNumber;
- (PHObjectPlaceholder)placeholderForCreatedShareParticipant;
- (PHShareParticipantChangeRequest)initWithUUID:(id)d objectID:(id)iD;
- (PHShareParticipantChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (id)_mutablePersonObjectIDsAndUUIDs;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (id)initForNewObject;
- (id)participantID;
- (signed)acceptanceStatus;
- (signed)exitState;
- (signed)participantKind;
- (signed)permission;
- (unsigned)role;
- (void)_preparePersonIDIfNeeded;
- (void)encodeToXPCDict:(id)dict;
- (void)setAcceptanceStatus:(signed __int16)status;
- (void)setEmailAddress:(id)address;
- (void)setExitState:(signed __int16)state;
- (void)setIsCurrentUser:(BOOL)user;
- (void)setParticipantID:(id)d;
- (void)setParticipantKind:(signed __int16)kind;
- (void)setPermission:(signed __int16)permission;
- (void)setPerson:(id)person;
- (void)setPhoneNumber:(id)number;
- (void)setRole:(unsigned __int16)role;
@end

@implementation PHShareParticipantChangeRequest

- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error
{
  objectCopy = object;
  helper = [(PHChangeRequest *)self helper];
  v21 = 0;
  v9 = [helper applyMutationsToManagedObject:objectCopy error:&v21];
  v10 = v21;

  personHelper = [(PHShareParticipantChangeRequest *)self personHelper];
  v12 = personHelper;
  if (v9)
  {
    mutableObjectIDsAndUUIDs = [personHelper mutableObjectIDsAndUUIDs];
    v14 = [mutableObjectIDsAndUUIDs count];

    if (!v14)
    {
      v16 = 1;
      goto LABEL_9;
    }

    [v12 setAllowsInsert:1];
    entityName = [MEMORY[0x1E69BE608] entityName];
    [v12 setDestinationEntityName:entityName];

    [v12 setIsDestinationObjectValid:&__block_literal_global_32333];
    v20 = v10;
    v16 = [v12 applyMutationsToManagedObjectToOneRelationship:objectCopy error:&v20];
    v17 = v20;

    v10 = v17;
    if (!error)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v16 = 0;
    if (!error)
    {
      goto LABEL_9;
    }
  }

  if ((v16 & 1) == 0)
  {
    v18 = v10;
    v16 = 0;
    *error = v10;
  }

LABEL_9:

  return v16;
}

- (void)setPerson:(id)person
{
  personCopy = person;
  if (personCopy)
  {
    v10 = personCopy;
    [(PHChangeRequest *)self didMutate];
    v5 = PLObjectIDOrUUIDFromPHObject(v10);
    personCopy = v10;
    if (v5)
    {
      _mutablePersonObjectIDsAndUUIDs = [(PHShareParticipantChangeRequest *)self _mutablePersonObjectIDsAndUUIDs];
      v7 = [_mutablePersonObjectIDsAndUUIDs count];

      _mutablePersonObjectIDsAndUUIDs2 = [(PHShareParticipantChangeRequest *)self _mutablePersonObjectIDsAndUUIDs];
      v9 = _mutablePersonObjectIDsAndUUIDs2;
      if (v7)
      {
        [_mutablePersonObjectIDsAndUUIDs2 replaceObjectAtIndex:0 withObject:v5];
      }

      else
      {
        [_mutablePersonObjectIDsAndUUIDs2 addObject:v5];
      }

      personCopy = v10;
    }
  }
}

- (id)_mutablePersonObjectIDsAndUUIDs
{
  [(PHShareParticipantChangeRequest *)self _preparePersonIDIfNeeded];
  personHelper = [(PHShareParticipantChangeRequest *)self personHelper];
  mutableObjectIDsAndUUIDs = [personHelper mutableObjectIDsAndUUIDs];

  return mutableObjectIDsAndUUIDs;
}

- (void)_preparePersonIDIfNeeded
{
  +[PHPhotoLibrary assertTransaction];
  originalObjectIDs = [(PHRelationshipChangeRequestHelper *)self->_personHelper originalObjectIDs];

  if (!originalObjectIDs)
  {
    [(PHRelationshipChangeRequestHelper *)self->_personHelper setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
  }

  mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self->_personHelper mutableObjectIDsAndUUIDs];

  if (!mutableObjectIDsAndUUIDs)
  {
    personHelper = self->_personHelper;
    originalObjectIDs2 = [(PHRelationshipChangeRequestHelper *)personHelper originalObjectIDs];
    v6 = [originalObjectIDs2 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)personHelper setMutableObjectIDsAndUUIDs:v6];
  }
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  v6 = MEMORY[0x1E69BE7D8];
  managedObjectContext = [library managedObjectContext];
  v8 = [v6 insertInManagedObjectContext:managedObjectContext];

  emailAddress = [(PHShareParticipantChangeRequest *)self emailAddress];
  [v8 setEmailAddress:emailAddress];

  phoneNumber = [(PHShareParticipantChangeRequest *)self phoneNumber];
  [v8 setPhoneNumber:phoneNumber];

  uuid = [(PHChangeRequest *)self uuid];
  [v8 setUuid:uuid];

  role = [(PHShareParticipantChangeRequest *)self role];
  if ((role - 1) < 3)
  {
    v13 = (role - 1) + 1;
  }

  else
  {
    v13 = 0;
  }

  [v8 setRole:v13];
  if (error && !v8)
  {
    *error = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:0];
  }

  return v8;
}

- (void)setParticipantKind:(signed __int16)kind
{
  kindCopy = kind;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:kindCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"participantKind"];
}

- (signed)participantKind
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"participantKind"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setExitState:(signed __int16)state
{
  stateCopy = state;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:stateCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"exitState"];
}

- (signed)exitState
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"exitState"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setIsCurrentUser:(BOOL)user
{
  userCopy = user;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:userCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"isCurrentUser"];
}

- (BOOL)isCurrentUser
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"isCurrentUser"];

  LOBYTE(helper) = [v5 BOOLValue];
  return helper;
}

- (void)setPermission:(signed __int16)permission
{
  permissionCopy = permission;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:permissionCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"permission"];
}

- (signed)permission
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"permission"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setAcceptanceStatus:(signed __int16)status
{
  statusCopy = status;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:statusCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"acceptanceStatus"];
}

- (signed)acceptanceStatus
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"acceptanceStatus"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setRole:(unsigned __int16)role
{
  roleCopy = role;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:roleCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"role"];
}

- (unsigned)role
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"role"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setParticipantID:(id)d
{
  dCopy = d;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (dCopy)
  {
    [mutations setObject:dCopy forKeyedSubscript:@"participantID"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"participantID"];
  }

  else
  {
    [mutations removeObjectForKey:@"participantID"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"participantID"];
  }
}

- (id)participantID
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"participantID"];

  return v5;
}

- (void)setPhoneNumber:(id)number
{
  numberCopy = number;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (numberCopy)
  {
    [mutations setObject:numberCopy forKeyedSubscript:@"phoneNumber"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"phoneNumber"];
  }

  else
  {
    [mutations removeObjectForKey:@"phoneNumber"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"phoneNumber"];
  }
}

- (NSString)phoneNumber
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"phoneNumber"];

  return v5;
}

- (void)setEmailAddress:(id)address
{
  addressCopy = address;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (addressCopy)
  {
    [mutations setObject:addressCopy forKeyedSubscript:@"emailAddress"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"emailAddress"];
  }

  else
  {
    [mutations removeObjectForKey:@"emailAddress"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"emailAddress"];
  }
}

- (NSString)emailAddress
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"emailAddress"];

  return v5;
}

- (PHObjectPlaceholder)placeholderForCreatedShareParticipant
{
  helper = [(PHChangeRequest *)self helper];
  v4 = [helper placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

- (BOOL)prepareForPhotoLibraryCheck:(id)check error:(id *)error
{
  v10[1] = *MEMORY[0x1E69E9840];
  checkCopy = check;
  if ([checkCopy type] && objc_msgSend(checkCopy, "type") != 1)
  {
    if (error)
    {
      v6 = MEMORY[0x1E696ABC0];
      v9 = *MEMORY[0x1E696A578];
      v10[0] = @"Change must be performed within the sharedPhotoLibrary or sharedMomentSharePhotoLibrary";
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
      *error = [v6 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v7];

      LOBYTE(error) = 0;
    }
  }

  else
  {
    LOBYTE(error) = 1;
  }

  return error;
}

- (void)encodeToXPCDict:(id)dict
{
  dictCopy = dict;
  helper = [(PHChangeRequest *)self helper];
  [helper encodeToXPCDict:dictCopy];

  [(PHRelationshipChangeRequestHelper *)self->_personHelper encodeToXPCDict:dictCopy];
}

- (PHShareParticipantChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  dictCopy = dict;
  requestCopy = request;
  authorizationCopy = authorization;
  v17.receiver = self;
  v17.super_class = PHShareParticipantChangeRequest;
  v11 = [(PHChangeRequest *)&v17 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:dictCopy changeRequest:v11 request:requestCopy clientAuthorization:authorizationCopy];
    helper = v11->super._helper;
    v11->super._helper = v12;

    v14 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"person" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
    personHelper = v11->_personHelper;
    v11->_personHelper = v14;
  }

  return v11;
}

- (PHShareParticipantChangeRequest)initWithUUID:(id)d objectID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = PHShareParticipantChangeRequest;
  v8 = [(PHChangeRequest *)&v14 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:dCopy objectID:iDCopy changeRequest:v8];
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

+ (void)deleteShareParticipants:(id)participants
{
  participantsCopy = participants;
  v4 = [(PHObjectDeleteRequest *)PHShareParticipantDeleteRequest deleteRequestsForObjects:participantsCopy ofType:objc_opt_class() forSelector:a2];
}

+ (id)creationRequestForShareParticipantWithPhoneNumber:(id)number permission:(signed __int16)permission
{
  permissionCopy = permission;
  numberCopy = number;
  initForNewObject = [[PHShareParticipantChangeRequest alloc] initForNewObject];
  [initForNewObject setPhoneNumber:numberCopy];

  [initForNewObject setPermission:permissionCopy];

  return initForNewObject;
}

+ (id)creationRequestForShareParticipantWithEmailAddress:(id)address permission:(signed __int16)permission
{
  permissionCopy = permission;
  addressCopy = address;
  initForNewObject = [[PHShareParticipantChangeRequest alloc] initForNewObject];
  [initForNewObject setEmailAddress:addressCopy];

  [initForNewObject setPermission:permissionCopy];

  return initForNewObject;
}

@end