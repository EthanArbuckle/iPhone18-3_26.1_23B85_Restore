@interface PHShareParticipant
+ (id)entityKeyMap;
+ (id)fetchContributorForComment:(id)a3 options:(id)a4;
+ (id)fetchContributorsForAsset:(id)a3 options:(id)a4;
+ (id)fetchContributorsForAssets:(id)a3 options:(id)a4;
+ (id)fetchCurrentUserParticipantInShare:(id)a3 options:(id)a4;
+ (id)fetchOwnerParticipantInShare:(id)a3 options:(id)a4;
+ (id)fetchParticipantsInShare:(id)a3 options:(id)a4;
+ (id)fetchParticipantsWithLocalIdentifiers:(id)a3 options:(id)a4;
+ (id)fetchParticipantsWithParticipantIDs:(id)a3 options:(id)a4;
+ (id)fetchShareParticipantForPerson:(id)a3 options:(id)a4;
+ (id)localIdentifierWithUUID:(id)a3;
+ (id)propertiesToFetchWithHint:(unint64_t)a3;
+ (id)transformValueExpression:(id)a3 forKeyPath:(id)a4;
+ (void)queryParticipantsWithEmails:(id)a3 phoneNumbers:(id)a4 photoLibrary:(id)a5 completionHandler:(id)a6;
- (BOOL)isEqual:(id)a3;
- (PHShareParticipant)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5;
- (id)fullName;
- (unint64_t)hash;
@end

@implementation PHShareParticipant

- (unint64_t)hash
{
  v3 = [(PHShareParticipant *)self role];
  v4 = [(PHShareParticipant *)self phoneNumber];
  v5 = [v4 hash];
  v6 = [(PHShareParticipant *)self emailAddress];
  v7 = v5 ^ [v6 hash] ^ v3;
  v8 = [(PHShareParticipant *)self nameComponents];
  v9 = [v8 hash];

  return v7 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    IsEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PHShareParticipant *)v5 role];
      if (v6 == [(PHShareParticipant *)self role])
      {
        v7 = [(PHShareParticipant *)v5 phoneNumber];
        v8 = [(PHShareParticipant *)self phoneNumber];
        if (PLObjectIsEqual())
        {
          v9 = [(PHShareParticipant *)v5 nameComponents];
          v10 = [(PHShareParticipant *)self nameComponents];
          if (PLObjectIsEqual())
          {
            v11 = [(PHShareParticipant *)v5 emailAddress];
            v12 = [(PHShareParticipant *)self emailAddress];
            IsEqual = PLObjectIsEqual();
          }

          else
          {
            IsEqual = 0;
          }
        }

        else
        {
          IsEqual = 0;
        }
      }

      else
      {
        IsEqual = 0;
      }
    }

    else
    {
      IsEqual = 0;
    }
  }

  return IsEqual;
}

- (id)fullName
{
  v3 = [(PHShareParticipant *)self nameComponents];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696ADF8]);
    v5 = [(PHShareParticipant *)self nameComponents];
    v6 = [v4 stringFromPersonNameComponents:v5];
  }

  else
  {
    v6 = &stru_1F0FC60C8;
  }

  return v6;
}

- (PHShareParticipant)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5
{
  v8 = a3;
  v30.receiver = self;
  v30.super_class = PHShareParticipant;
  v9 = [(PHObject *)&v30 initWithFetchDictionary:v8 propertyHint:a4 photoLibrary:a5];
  if (v9)
  {
    v10 = [v8 objectForKeyedSubscript:@"emailAddress"];
    emailAddress = v9->_emailAddress;
    v9->_emailAddress = v10;

    v12 = [v8 objectForKeyedSubscript:@"nameComponents"];
    nameComponents = v9->_nameComponents;
    v9->_nameComponents = v12;

    v14 = [v8 objectForKeyedSubscript:@"phoneNumber"];
    phoneNumber = v9->_phoneNumber;
    v9->_phoneNumber = v14;

    v16 = [v8 objectForKeyedSubscript:@"role"];
    v9->_role = [v16 integerValue];

    v17 = [v8 objectForKeyedSubscript:@"permission"];
    v9->_permission = [v17 integerValue];

    v18 = [v8 objectForKeyedSubscript:@"acceptanceStatus"];
    v9->_acceptanceStatus = [v18 integerValue];

    v19 = [v8 objectForKeyedSubscript:@"exitState"];
    v9->_exitState = [v19 integerValue];

    v20 = [v8 objectForKeyedSubscript:@"isCurrentUser"];
    v9->_isCurrentUser = [v20 BOOLValue];

    v21 = [v8 objectForKeyedSubscript:@"participantID"];
    participantID = v9->_participantID;
    v9->_participantID = v21;

    v23 = [v8 objectForKeyedSubscript:@"hashedPersonID"];
    hashedPersonID = v9->_hashedPersonID;
    v9->_hashedPersonID = v23;

    v25 = [v8 objectForKeyedSubscript:@"subscriptionDate"];
    subscriptionDate = v9->_subscriptionDate;
    v9->_subscriptionDate = v25;

    v27 = [v8 objectForKeyedSubscript:@"allowlistedState"];
    v9->_allowlistedState = [v27 integerValue];

    v28 = [v8 objectForKeyedSubscript:@"participantKind"];
    v9->_participantKind = [v28 integerValue];
  }

  return v9;
}

+ (id)fetchShareParticipantForPerson:(id)a3 options:(id)a4
{
  if (a3)
  {
    v4 = [PHQuery queryForShareParticipantWithPerson:a3 options:a4];
    v5 = [v4 executeQuery];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)queryParticipantsWithEmails:(id)a3 phoneNumbers:(id)a4 photoLibrary:(id)a5 completionHandler:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [a5 assetsdClient];
  v13 = [v12 cloudInternalClient];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __94__PHShareParticipant_queryParticipantsWithEmails_phoneNumbers_photoLibrary_completionHandler___block_invoke;
  v15[3] = &unk_1E75A8C38;
  v16 = v9;
  v14 = v9;
  [v13 queryParticipantsWithEmails:v11 phoneNumbers:v10 completionHandler:v15];
}

+ (id)fetchCurrentUserParticipantInShare:(id)a3 options:(id)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__PHShareParticipant_fetchCurrentUserParticipantInShare_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = v5;
  v6 = v5;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:a4 fetchBlock:v9];

  return v7;
}

id __65__PHShareParticipant_fetchCurrentUserParticipantInShare_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForCurrentUserParticipantInShare:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchOwnerParticipantInShare:(id)a3 options:(id)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__PHShareParticipant_fetchOwnerParticipantInShare_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = v5;
  v6 = v5;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:a4 fetchBlock:v9];

  return v7;
}

id __59__PHShareParticipant_fetchOwnerParticipantInShare_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForOwnerParticipantInShare:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchContributorForComment:(id)a3 options:(id)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__PHShareParticipant_fetchContributorForComment_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = v5;
  v6 = v5;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:a4 fetchBlock:v9];

  return v7;
}

id __57__PHShareParticipant_fetchContributorForComment_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForContributorForComment:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchContributorsForAssets:(id)a3 options:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v32;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        if (!v11)
        {
          v11 = [*(*(&v31 + 1) + 8 * i) photoLibrary];
        }

        v15 = [v14 uuid];
        [v7 addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v16 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v17 = [v11 photoLibrary];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __57__PHShareParticipant_fetchContributorsForAssets_options___block_invoke;
  v27[3] = &unk_1E75AB248;
  v18 = v7;
  v28 = v18;
  v19 = v11;
  v29 = v19;
  v20 = v16;
  v30 = v20;
  [v17 performBlockAndWait:v27];

  if (([v6 hasAnySortDescriptors] & 1) == 0)
  {
    v21 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"isCurrentUser" ascending:0];
    v35 = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];

    [v6 setSortDescriptors:v22];
  }

  v23 = [v20 array];
  v24 = [PHQuery queryForShareParticipantsWithLocalIdentifiers:v23 options:v6];

  v25 = [v24 executeQuery];

  return v25;
}

void __57__PHShareParticipant_fetchContributorsForAssets_options___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69BE540];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) photoLibrary];
  v5 = [v2 assetsWithUUIDs:v3 options:0 inLibrary:v4];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    v23 = *v31;
    do
    {
      v9 = 0;
      v24 = v7;
      do
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v30 + 1) + 8 * v9);
        if ([v10 hasLibraryScope])
        {
          v11 = [v10 libraryScopeContributors];
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v12 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v27;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v27 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(a1 + 48);
                v17 = [*(*(&v26 + 1) + 8 * i) uuid];
                v18 = [PHShareParticipant localIdentifierWithUUID:v17];
                [v16 addObject:v18];
              }

              v13 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v13);
            v8 = v23;
            v7 = v24;
          }
        }

        else
        {
          v19 = [v10 collectionShare];

          if (!v19)
          {
            goto LABEL_18;
          }

          v20 = *(a1 + 48);
          v11 = [v10 collectionShareContributor];
          v21 = [v11 uuid];
          v22 = [PHShareParticipant localIdentifierWithUUID:v21];
          [v20 addObject:v22];
        }

LABEL_18:
        ++v9;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v7);
  }
}

+ (id)fetchContributorsForAsset:(id)a3 options:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v12 count:1];

  v10 = [a1 fetchContributorsForAssets:v9 options:{v7, v12, v13}];

  return v10;
}

+ (id)fetchParticipantsWithParticipantIDs:(id)a3 options:(id)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__PHShareParticipant_fetchParticipantsWithParticipantIDs_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = v5;
  v6 = v5;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:a4 fetchBlock:v9];

  return v7;
}

id __66__PHShareParticipant_fetchParticipantsWithParticipantIDs_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForShareParticipantsWithParticipantIDs:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchParticipantsWithLocalIdentifiers:(id)a3 options:(id)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__PHShareParticipant_fetchParticipantsWithLocalIdentifiers_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = v5;
  v6 = v5;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:a4 fetchBlock:v9];

  return v7;
}

id __68__PHShareParticipant_fetchParticipantsWithLocalIdentifiers_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForShareParticipantsWithLocalIdentifiers:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchParticipantsInShare:(id)a3 options:(id)a4
{
  v4 = [PHQuery queryForShareParticipantsInShare:a3 options:a4];
  v5 = [v4 executeQuery];

  return v5;
}

+ (id)localIdentifierWithUUID:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [a1 identifierCode];
  v7 = [v4 stringWithFormat:@"%@/L0/%@", v5, v6];

  return v7;
}

+ (id)transformValueExpression:(id)a3 forKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__PHShareParticipant_transformValueExpression_forKeyPath___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (transformValueExpression_forKeyPath__onceToken_36462 != -1)
  {
    dispatch_once(&transformValueExpression_forKeyPath__onceToken_36462, block);
  }

  if ([transformValueExpression_forKeyPath___passThroughSet_36463 containsObject:v7])
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __58__PHShareParticipant_transformValueExpression_forKeyPath___block_invoke()
{
  v4[14] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"uuid";
  v4[1] = @"emailAddress";
  v4[2] = @"nameComponents";
  v4[3] = @"phoneNumber";
  v4[4] = @"role";
  v4[5] = @"permission";
  v4[6] = @"acceptanceStatus";
  v4[7] = @"exitState";
  v4[8] = @"isCurrentUser";
  v4[9] = @"participantID";
  v4[10] = @"hashedPersonID";
  v4[11] = @"subscriptionDate";
  v4[12] = @"allowlistedState";
  v4[13] = @"participantKind";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:14];
  v2 = [v0 setWithArray:v1];
  v3 = transformValueExpression_forKeyPath___passThroughSet_36463;
  transformValueExpression_forKeyPath___passThroughSet_36463 = v2;
}

+ (id)entityKeyMap
{
  pl_dispatch_once();
  v2 = entityKeyMap_pl_once_object_15_36469;

  return v2;
}

void __34__PHShareParticipant_entityKeyMap__block_invoke()
{
  v33[14] = *MEMORY[0x1E69E9840];
  v14 = [PHEntityKeyMap alloc];
  v31 = @"uuid";
  v32[0] = @"uuid";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v33[0] = v17;
  v32[1] = @"emailAddress";
  v30 = @"emailAddress";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  v33[1] = v16;
  v32[2] = @"nameComponents";
  v29 = @"nameComponents";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
  v33[2] = v15;
  v32[3] = @"phoneNumber";
  v28 = @"phoneNumber";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  v33[3] = v13;
  v32[4] = @"role";
  v27 = @"role";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  v33[4] = v12;
  v32[5] = @"permission";
  v26 = @"permission";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  v33[5] = v0;
  v32[6] = @"acceptanceStatus";
  v25 = @"acceptanceStatus";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  v33[6] = v1;
  v32[7] = @"exitState";
  v24 = @"exitState";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v33[7] = v2;
  v32[8] = @"isCurrentUser";
  v23 = @"isCurrentUser";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v33[8] = v3;
  v32[9] = @"participantID";
  v22 = @"participantID";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v33[9] = v4;
  v32[10] = @"hashedPersonID";
  v21 = @"hashedPersonID";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  v33[10] = v5;
  v32[11] = @"subscriptionDate";
  v20 = @"subscriptionDate";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v33[11] = v6;
  v32[12] = @"allowlistedState";
  v19 = @"allowlistedState";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v33[12] = v7;
  v32[13] = @"participantKind";
  v18 = @"participantKind";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  v33[13] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:14];
  v10 = [(PHEntityKeyMap *)v14 initWithPropertyKeysByEntityKey:v9];
  v11 = entityKeyMap_pl_once_object_15_36469;
  entityKeyMap_pl_once_object_15_36469 = v10;
}

+ (id)propertiesToFetchWithHint:(unint64_t)a3
{
  if (propertiesToFetchWithHint__onceToken_36478 != -1)
  {
    dispatch_once(&propertiesToFetchWithHint__onceToken_36478, &__block_literal_global_36479);
  }

  v4 = propertiesToFetchWithHint__array_36480;

  return v4;
}

void __48__PHShareParticipant_propertiesToFetchWithHint___block_invoke()
{
  v3[15] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69BE570] objectIDDescription];
  v3[0] = v0;
  v3[1] = @"uuid";
  v3[2] = @"emailAddress";
  v3[3] = @"nameComponents";
  v3[4] = @"phoneNumber";
  v3[5] = @"role";
  v3[6] = @"permission";
  v3[7] = @"acceptanceStatus";
  v3[8] = @"exitState";
  v3[9] = @"isCurrentUser";
  v3[10] = @"participantID";
  v3[11] = @"hashedPersonID";
  v3[12] = @"subscriptionDate";
  v3[13] = @"allowlistedState";
  v3[14] = @"participantKind";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:15];
  v2 = propertiesToFetchWithHint__array_36480;
  propertiesToFetchWithHint__array_36480 = v1;
}

@end