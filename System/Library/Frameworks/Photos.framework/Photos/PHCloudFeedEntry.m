@interface PHCloudFeedEntry
+ (id)entityKeyMap;
+ (id)fetchEntriesFromEarliestDate:(id)a3 latestDate:(id)a4 filter:(int64_t)a5 options:(id)a6;
+ (id)fetchEntryWithLocalIdentifier:(id)a3 options:(id)a4;
+ (id)propertiesToFetchWithHint:(unint64_t)a3;
- (PHCloudFeedEntry)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5;
- (id)description;
@end

@implementation PHCloudFeedEntry

- (id)description
{
  v6.receiver = self;
  v6.super_class = PHCloudFeedEntry;
  v3 = [(PHObject *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" entryType=%zd, entryIsMine=%d, entryDate=%@, entryAlbumGUID=%@, entryInvitationRecordGUID=%@", self->_entryType, self->_entryIsMine, self->_entryDate, self->_entryAlbumGUID, self->_entryInvitationRecordGUID];

  return v4;
}

- (PHCloudFeedEntry)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5
{
  v8 = a3;
  v19.receiver = self;
  v19.super_class = PHCloudFeedEntry;
  v9 = [(PHObject *)&v19 initWithFetchDictionary:v8 propertyHint:a4 photoLibrary:a5];
  if (v9)
  {
    v10 = [v8 objectForKeyedSubscript:@"entryType"];
    v9->_entryType = [v10 integerValue];

    v11 = [v8 objectForKeyedSubscript:@"entryIsMine"];
    v9->_entryIsMine = [v11 BOOLValue];

    v12 = [v8 objectForKeyedSubscript:@"entryDate"];
    entryDate = v9->_entryDate;
    v9->_entryDate = v12;

    v14 = [v8 objectForKeyedSubscript:@"entryAlbumGUID"];
    entryAlbumGUID = v9->_entryAlbumGUID;
    v9->_entryAlbumGUID = v14;

    v16 = [v8 objectForKeyedSubscript:@"entryInvitationRecordGUID"];
    entryInvitationRecordGUID = v9->_entryInvitationRecordGUID;
    v9->_entryInvitationRecordGUID = v16;
  }

  return v9;
}

+ (id)fetchEntryWithLocalIdentifier:(id)a3 options:(id)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__PHCloudFeedEntry_fetchEntryWithLocalIdentifier_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = v5;
  v6 = v5;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:a4 fetchBlock:v9];

  return v7;
}

id __58__PHCloudFeedEntry_fetchEntryWithLocalIdentifier_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForEntryWithLocalIdentifier:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchEntriesFromEarliestDate:(id)a3 latestDate:(id)a4 filter:(int64_t)a5 options:(id)a6
{
  v9 = a3;
  v10 = a4;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__PHCloudFeedEntry_fetchEntriesFromEarliestDate_latestDate_filter_options___block_invoke;
  v15[3] = &unk_1E75A7040;
  v16 = v9;
  v17 = v10;
  v18 = a5;
  v11 = v10;
  v12 = v9;
  v13 = [PHObject authorizationAwareFetchResultWithOptions:a6 fetchBlock:v15];

  return v13;
}

id __75__PHCloudFeedEntry_fetchEntriesFromEarliestDate_latestDate_filter_options___block_invoke(void *a1, uint64_t a2)
{
  v2 = [PHQuery queryForEntriesFromEarliestDate:a1[4] latestDate:a1[5] filter:a1[6] options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)entityKeyMap
{
  pl_dispatch_once();
  v2 = entityKeyMap_pl_once_object_16;

  return v2;
}

void __32__PHCloudFeedEntry_entityKeyMap__block_invoke()
{
  v17[6] = *MEMORY[0x1E69E9840];
  v0 = [PHEntityKeyMap alloc];
  v15 = @"uuid";
  v16[0] = @"uuid";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  v17[0] = v1;
  v16[1] = @"entryType";
  v14 = @"entryType";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  v17[1] = v2;
  v16[2] = @"entryIsMine";
  v13 = @"entryIsMine";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  v17[2] = v3;
  v16[3] = @"entryDate";
  v12 = @"entryDate";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  v17[3] = v4;
  v16[4] = @"entryAlbumGUID";
  v11 = @"entryAlbumGUID";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  v17[4] = v5;
  v16[5] = @"entryInvitationRecordGUID";
  v10 = @"entryInvitationRecordGUID";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  v17[5] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:6];
  v8 = [(PHEntityKeyMap *)v0 initWithPropertyKeysByEntityKey:v7];
  v9 = entityKeyMap_pl_once_object_16;
  entityKeyMap_pl_once_object_16 = v8;
}

+ (id)propertiesToFetchWithHint:(unint64_t)a3
{
  pl_dispatch_once();
  v3 = propertiesToFetchWithHint__pl_once_object_15;

  return v3;
}

void __46__PHCloudFeedEntry_propertiesToFetchWithHint___block_invoke()
{
  v4[7] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69BE570] objectIDDescription];
  v4[0] = v0;
  v4[1] = @"uuid";
  v4[2] = @"entryType";
  v4[3] = @"entryIsMine";
  v4[4] = @"entryDate";
  v4[5] = @"entryAlbumGUID";
  v4[6] = @"entryInvitationRecordGUID";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:7];
  v2 = [v1 copy];
  v3 = propertiesToFetchWithHint__pl_once_object_15;
  propertiesToFetchWithHint__pl_once_object_15 = v2;
}

@end