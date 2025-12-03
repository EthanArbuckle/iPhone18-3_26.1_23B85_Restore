@interface PHCloudSharedAlbumInvitationRecord
+ (id)entityKeyMap;
+ (id)fetchInvitationRecordsForSharedAlbum:(id)album;
+ (id)propertiesToFetchWithHint:(unint64_t)hint;
- (NSArray)inviteeEmails;
- (NSArray)inviteePhones;
- (NSString)inviteeEmail;
- (NSString)inviteePhone;
- (PHCloudSharedAlbumInvitationRecord)initWithFetchDictionary:(id)dictionary propertyHint:(unint64_t)hint photoLibrary:(id)library;
@end

@implementation PHCloudSharedAlbumInvitationRecord

- (NSArray)inviteePhones
{
  photoLibrary = [(PHObject *)self photoLibrary];
  v3PhotoLibrary = [photoLibrary photoLibrary];
  personInfoManager = [v3PhotoLibrary personInfoManager];
  cloudGUID = [(PHCloudSharedAlbumInvitationRecord *)self cloudGUID];
  v7 = [personInfoManager phonesForInvitationRecordGUID:cloudGUID];

  return v7;
}

- (NSArray)inviteeEmails
{
  photoLibrary = [(PHObject *)self photoLibrary];
  v3PhotoLibrary = [photoLibrary photoLibrary];
  personInfoManager = [v3PhotoLibrary personInfoManager];
  cloudGUID = [(PHCloudSharedAlbumInvitationRecord *)self cloudGUID];
  v7 = [personInfoManager emailsForInvitationRecordGUID:cloudGUID];

  return v7;
}

- (NSString)inviteePhone
{
  inviteePhones = [(PHCloudSharedAlbumInvitationRecord *)self inviteePhones];
  firstObject = [inviteePhones firstObject];

  return firstObject;
}

- (NSString)inviteeEmail
{
  inviteeEmails = [(PHCloudSharedAlbumInvitationRecord *)self inviteeEmails];
  firstObject = [inviteeEmails firstObject];

  return firstObject;
}

- (PHCloudSharedAlbumInvitationRecord)initWithFetchDictionary:(id)dictionary propertyHint:(unint64_t)hint photoLibrary:(id)library
{
  dictionaryCopy = dictionary;
  v26.receiver = self;
  v26.super_class = PHCloudSharedAlbumInvitationRecord;
  v9 = [(PHObject *)&v26 initWithFetchDictionary:dictionaryCopy propertyHint:hint photoLibrary:library];
  if (v9)
  {
    v10 = [dictionaryCopy objectForKeyedSubscript:@"albumGUID"];
    albumGUID = v9->_albumGUID;
    v9->_albumGUID = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"cloudGUID"];
    cloudGUID = v9->_cloudGUID;
    v9->_cloudGUID = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"inviteeFirstName"];
    inviteeFirstName = v9->_inviteeFirstName;
    v9->_inviteeFirstName = v14;

    v16 = [dictionaryCopy objectForKeyedSubscript:@"inviteeLastName"];
    inviteeLastName = v9->_inviteeLastName;
    v9->_inviteeLastName = v16;

    v18 = [dictionaryCopy objectForKeyedSubscript:@"inviteeHashedPersonID"];
    inviteeHashedPersonID = v9->_inviteeHashedPersonID;
    v9->_inviteeHashedPersonID = v18;

    v20 = [dictionaryCopy objectForKeyedSubscript:@"isMine"];
    v9->_isMine = [v20 BOOLValue];

    v21 = [dictionaryCopy objectForKeyedSubscript:@"invitationState"];
    invitationState = v9->_invitationState;
    v9->_invitationState = v21;

    v23 = [dictionaryCopy objectForKeyedSubscript:@"invitationStateLocal"];
    invitationStateLocal = v9->_invitationStateLocal;
    v9->_invitationStateLocal = v23;
  }

  return v9;
}

+ (id)fetchInvitationRecordsForSharedAlbum:(id)album
{
  albumCopy = album;
  photoLibrary = [albumCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__PHCloudSharedAlbumInvitationRecord_fetchInvitationRecordsForSharedAlbum___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = albumCopy;
  v6 = albumCopy;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:librarySpecificFetchOptions fetchBlock:v9];

  return v7;
}

id __75__PHCloudSharedAlbumInvitationRecord_fetchInvitationRecordsForSharedAlbum___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForCloudSharedAlbumInvitationRecordsForCloudSharedAlbum:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

id __75__PHCloudSharedAlbumInvitationRecord_fetchAllInvitationRecordsWithOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForCloudSharedAlbumInvitationRecordsWithOptions:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)entityKeyMap
{
  pl_dispatch_once();
  v2 = entityKeyMap_pl_once_object_15;

  return v2;
}

void __50__PHCloudSharedAlbumInvitationRecord_entityKeyMap__block_invoke()
{
  v23[9] = *MEMORY[0x1E69E9840];
  v12 = [PHEntityKeyMap alloc];
  v21 = @"uuid";
  v22[0] = @"uuid";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  v23[0] = v0;
  v22[1] = @"cloudGUID";
  v20 = @"cloudGUID";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v23[1] = v1;
  v22[2] = @"albumGUID";
  v19 = @"albumGUID";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v23[2] = v2;
  v22[3] = @"inviteeFirstName";
  v18 = @"inviteeFirstName";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  v23[3] = v3;
  v22[4] = @"inviteeLastName";
  v17 = @"inviteeLastName";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  v23[4] = v4;
  v22[5] = @"inviteeHashedPersonID";
  v16 = @"inviteeHashedPersonID";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  v23[5] = v5;
  v22[6] = @"isMine";
  v15 = @"isMine";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  v23[6] = v6;
  v22[7] = @"invitationState";
  v14 = @"invitationState";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  v23[7] = v7;
  v22[8] = @"invitationStateLocal";
  v13 = @"invitationStateLocal";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  v23[8] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:9];
  v10 = [(PHEntityKeyMap *)v12 initWithPropertyKeysByEntityKey:v9];
  v11 = entityKeyMap_pl_once_object_15;
  entityKeyMap_pl_once_object_15 = v10;
}

+ (id)propertiesToFetchWithHint:(unint64_t)hint
{
  if (propertiesToFetchWithHint__onceToken != -1)
  {
    dispatch_once(&propertiesToFetchWithHint__onceToken, &__block_literal_global);
  }

  v4 = propertiesToFetchWithHint__propertiesToFetch;

  return v4;
}

void __64__PHCloudSharedAlbumInvitationRecord_propertiesToFetchWithHint___block_invoke()
{
  v3[10] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69BE570] objectIDDescription];
  v3[0] = v0;
  v3[1] = @"uuid";
  v3[2] = @"albumGUID";
  v3[3] = @"cloudGUID";
  v3[4] = @"inviteeFirstName";
  v3[5] = @"inviteeLastName";
  v3[6] = @"inviteeHashedPersonID";
  v3[7] = @"isMine";
  v3[8] = @"invitationState";
  v3[9] = @"invitationStateLocal";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:10];
  v2 = propertiesToFetchWithHint__propertiesToFetch;
  propertiesToFetchWithHint__propertiesToFetch = v1;
}

@end