@interface PHSocialGroup
+ (id)entityKeyMap;
+ (id)fetchSocialGroupsForReferences:(id)references photoLibrary:(id)library;
+ (id)fetchSocialGroupsWithLocalIdentifiers:(id)identifiers options:(id)options;
+ (id)fetchSocialGroupsWithUUIDs:(id)ds options:(id)options;
+ (id)nodeValueAcessorNameForNameCode:(int)code;
+ (id)nodeValueNameFromPHSocialGroupPropertyName:(id)name;
+ (id)propertyNameFromNodeValueNameCode:(int)code;
+ (int)nodeValueNameCodeFromPropertyName:(id)name;
- (PHSocialGroup)initWithNodeContainer:(id)container photoLibrary:(id)library;
- (id)debugDescription;
- (id)description;
- (id)exclusiveAssetInternalPredicateWithPeopleCount:(int64_t)count exactCount:(BOOL)exactCount;
@end

@implementation PHSocialGroup

- (id)exclusiveAssetInternalPredicateWithPeopleCount:(int64_t)count exactCount:(BOOL)exactCount
{
  exactCountCopy = exactCount;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = MEMORY[0x1E696AE18];
  exclusiveAssetIDs = [(PHSocialGroup *)self exclusiveAssetIDs];
  v10 = [v8 predicateWithFormat:@"self in %@", exclusiveAssetIDs];
  [v7 addObject:v10];

  if (exactCountCopy)
  {
    v11 = @"%K.@count == %d";
  }

  else
  {
    v11 = @"%K.@count >= %d";
  }

  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:v11, @"detectedFaces", count];
  [v7 addObject:v12];

  v13 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v7];

  return v13;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AD60];
  v11.receiver = self;
  v11.super_class = PHSocialGroup;
  v4 = [(PHObject *)&v11 description];
  v5 = [v3 stringWithString:v4];

  uuid = [(PHObject *)self uuid];
  [v5 appendFormat:@"UUID: %@, ", uuid];

  customTitle = [(PHSocialGroup *)self customTitle];
  [v5 appendFormat:@"Custom Title: %@, ", customTitle];

  [v5 appendFormat:@"Number of Inclusive Assets: %lu, ", -[NSSet count](self->_inclusiveAssetIDs, "count")];
  [v5 appendFormat:@"Number of Exclusive Assets: %lu, ", self->_countOfExclusiveAssets];
  [v5 appendFormat:@"Manual Order: %ld, ", -[PHSocialGroup manualOrder](self, "manualOrder")];
  [v5 appendFormat:@"Automatic Order: %ld, ", -[PHSocialGroup automaticOrder](self, "automaticOrder")];
  v8 = [(PHSocialGroup *)self socialGroupVerifiedType]+ 1;
  if (v8 > 3u)
  {
    v9 = @"unknown";
  }

  else
  {
    v9 = off_1E75A3538[v8];
  }

  [v5 appendFormat:@"Verified Type: %@, ", v9];
  [v5 appendFormat:@"Key Asset ID: %@, ", self->_keyAssetID];
  [v5 appendFormat:@"Key Asset pick source: %lld, ", -[PHSocialGroup keyAssetPickSource](self, "keyAssetPickSource")];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  objectID = [(PHObject *)self objectID];
  customTitle = [(PHSocialGroup *)self customTitle];
  v6 = [v3 stringWithFormat:@"<%@ customTitle=%@>", objectID, customTitle];

  return v6;
}

- (PHSocialGroup)initWithNodeContainer:(id)container photoLibrary:(id)library
{
  v44[3] = *MEMORY[0x1E69E9840];
  containerCopy = container;
  libraryCopy = library;
  v44[0] = MEMORY[0x1E695E110];
  v43[0] = @"deleted";
  v43[1] = @"uuid";
  uuid = [containerCopy uuid];
  v44[1] = uuid;
  v43[2] = @"objectID";
  sourceNode = [containerCopy sourceNode];
  objectID = [sourceNode objectID];
  v44[2] = objectID;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:3];

  v41.receiver = self;
  v41.super_class = PHSocialGroup;
  v12 = [(PHObject *)&v41 initWithFetchDictionary:v11 propertyHint:2 photoLibrary:libraryCopy];
  if (v12)
  {
    customTitle = [containerCopy customTitle];
    customTitle = v12->_customTitle;
    v12->_customTitle = customTitle;

    v12->_socialGroupVerifiedType = [containerCopy socialGroupVerifiedType];
    v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    members = [containerCopy members];
    v17 = [members countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v38;
      do
      {
        v20 = 0;
        do
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(members);
          }

          objectID2 = [*(*(&v37 + 1) + 8 * v20) objectID];
          [v15 addObject:objectID2];

          ++v20;
        }

        while (v18 != v20);
        v18 = [members countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v18);
    }

    v22 = [v15 copy];
    memberPersonIDs = v12->_memberPersonIDs;
    v12->_memberPersonIDs = v22;

    inclusiveAssetIDs = [containerCopy inclusiveAssetIDs];
    v25 = [inclusiveAssetIDs copy];
    inclusiveAssetIDs = v12->_inclusiveAssetIDs;
    v12->_inclusiveAssetIDs = v25;

    exclusiveAssetIDs = [containerCopy exclusiveAssetIDs];
    v28 = [exclusiveAssetIDs copy];
    exclusiveAssetIDs = v12->_exclusiveAssetIDs;
    v12->_exclusiveAssetIDs = v28;

    v12->_countOfExclusiveAssets = [(NSSet *)v12->_exclusiveAssetIDs count];
    keyAsset = [containerCopy keyAsset];
    objectID3 = [keyAsset objectID];
    v32 = [objectID3 copy];
    keyAssetID = v12->_keyAssetID;
    v12->_keyAssetID = v32;

    manualOrder = [containerCopy manualOrder];
    v12->_manualOrder = [manualOrder integerValue];

    automaticOrder = [containerCopy automaticOrder];
    v12->_automaticOrder = [automaticOrder integerValue];

    v12->_keyAssetPickSource = [containerCopy keyAssetPickSource];
  }

  return v12;
}

+ (id)fetchSocialGroupsWithUUIDs:(id)ds options:(id)options
{
  dsCopy = ds;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__PHSocialGroup_fetchSocialGroupsWithUUIDs_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = dsCopy;
  v6 = dsCopy;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:options fetchBlock:v9];

  return v7;
}

id __52__PHSocialGroup_fetchSocialGroupsWithUUIDs_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHGraphQuery queryForSocialGroupsWithUUIDs:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchSocialGroupsWithLocalIdentifiers:(id)identifiers options:(id)options
{
  optionsCopy = options;
  v7 = [identifiers _pl_map:&__block_literal_global_146];
  v8 = [self fetchSocialGroupsWithUUIDs:v7 options:optionsCopy];

  return v8;
}

PHFetchResult *__46__PHSocialGroup_fetchSocialGroupsWithOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHGraphQuery graphQueryForSocialGroupsWithOptions:a2];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 executeQuery];
  }

  else
  {
    v4 = objc_alloc_init(PHFetchResult);
  }

  v5 = v4;

  return v5;
}

+ (int)nodeValueNameCodeFromPropertyName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"objectID"] & 1) != 0 || (objc_msgSend(nameCopy, "isEqualToString:", @"uuid"))
  {
    v4 = 0;
  }

  else if ([nameCopy isEqualToString:@"socialGroupVerifiedType"])
  {
    v4 = 2000;
  }

  else if ([nameCopy isEqualToString:@"customTitle"])
  {
    v4 = 2001;
  }

  else if ([nameCopy isEqualToString:@"manualOrder"])
  {
    v4 = 2002;
  }

  else if ([nameCopy isEqualToString:@"automaticOrder"])
  {
    v4 = 2003;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)nodeValueAcessorNameForNameCode:(int)code
{
  if ((code - 2000) < 4)
  {
    return off_1E75A3578[code - 2000];
  }

  v4 = *&code;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PHSocialGroup.m" lineNumber:199 description:{@"Unsupported name code: %i", v4}];

  return 0;
}

+ (id)propertyNameFromNodeValueNameCode:(int)code
{
  if ((code - 2000) > 3)
  {
    return 0;
  }

  else
  {
    return off_1E75A3558[code - 2000];
  }
}

+ (id)entityKeyMap
{
  pl_dispatch_once();
  v2 = entityKeyMap_pl_once_object_15_728;

  return v2;
}

void __29__PHSocialGroup_entityKeyMap__block_invoke()
{
  v17[6] = *MEMORY[0x1E69E9840];
  v0 = [PHEntityKeyMap alloc];
  v15 = @"uuid";
  v16[0] = @"uuid";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  v17[0] = v1;
  v16[1] = @"objectID";
  v14 = @"objectID";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  v17[1] = v2;
  v16[2] = @"changeFlag0";
  v13 = @"socialGroupVerifiedType";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  v17[2] = v3;
  v16[3] = @"changeFlag2";
  v12 = @"memberPersonIDs";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  v17[3] = v4;
  v16[4] = @"changeFlag3";
  v11 = @"keyAssetID";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  v17[4] = v5;
  v16[5] = @"changeFlag4";
  v10[0] = @"inclusiveAssetIDs";
  v10[1] = @"exclusiveAssetIDs";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v17[5] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:6];
  v8 = [(PHEntityKeyMap *)v0 initWithPropertyKeysByEntityKey:v7];
  v9 = entityKeyMap_pl_once_object_15_728;
  entityKeyMap_pl_once_object_15_728 = v8;
}

+ (id)nodeValueNameFromPHSocialGroupPropertyName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"objectID"] & 1) != 0 || (objc_msgSend(nameCopy, "isEqualToString:", @"uuid"))
  {
    v4 = 0;
  }

  else
  {
    v4 = nameCopy;
  }

  return v4;
}

+ (id)fetchSocialGroupsForReferences:(id)references photoLibrary:(id)library
{
  libraryCopy = library;
  v6 = PHLocalIdentifierForObjectReferencesAndLibrary(references, libraryCopy);
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];

  [librarySpecificFetchOptions setSocialGroupContext:2];
  v8 = [PHSocialGroup fetchSocialGroupsWithLocalIdentifiers:v6 options:librarySpecificFetchOptions];

  return v8;
}

@end