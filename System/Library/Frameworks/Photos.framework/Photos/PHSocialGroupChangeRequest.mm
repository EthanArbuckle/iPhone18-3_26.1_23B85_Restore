@interface PHSocialGroupChangeRequest
+ (id)_creationRequestForSocialGroupCopyWithUUID:(id)d;
+ (id)_findNonUserVerifiedGroupUUIDWithMembers:(id)members context:(id)context changesError:(id *)error;
+ (id)changeRequestForSocialGroup:(id)group userAction:(BOOL)action;
+ (id)creationRequestForSocialGroupWithMembers:(id)members userAction:(BOOL)action;
+ (void)deleteSocialGroups:(id)groups;
- (BOOL)_applyAutomaticOrderToContainer:(id)container error:(id *)error;
- (BOOL)_applyInitialMembersToContainer:(id)container error:(id *)error;
- (BOOL)_applyKeyAssetToContainer:(id)container managedObject:(id)object error:(id *)error;
- (BOOL)_applyManualOrderToContainer:(id)container error:(id *)error;
- (BOOL)_applyVerifiedTypeToContainer:(id)container error:(id *)error;
- (BOOL)allowMutationToManagedObject:(id)object propertyKey:(id)key error:(id *)error;
- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error;
- (PHSocialGroupChangeRequest)initWithUUID:(id)d;
- (PHSocialGroupChangeRequest)initWithUUID:(id)d objectID:(id)iD;
- (PHSocialGroupChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (id)initForNewObject;
- (id)initialMemberPersonIDs;
- (id)placeholderForCreatedSocialGroup;
- (void)_setMembers:(id)members;
- (void)encodeToXPCDict:(id)dict;
- (void)rejectSocialGroup;
- (void)resetCustomTitle;
- (void)setCustomTitle:(id)title;
- (void)setKeyAsset:(id)asset;
- (void)setOrder:(int64_t)order;
- (void)unrejectSocialGroup;
@end

@implementation PHSocialGroupChangeRequest

- (id)initialMemberPersonIDs
{
  initialMemberPersonIDs = self->_initialMemberPersonIDs;
  if (initialMemberPersonIDs)
  {
    v3 = initialMemberPersonIDs;
  }

  else
  {
    v3 = [MEMORY[0x1E695DFD8] set];
  }

  return v3;
}

- (void)setKeyAsset:(id)asset
{
  assetCopy = asset;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  objectID = [assetCopy objectID];

  keyAssetID = self->_keyAssetID;
  self->_keyAssetID = objectID;
}

- (void)setOrder:(int64_t)order
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  if (self->_userAction)
  {
    v6 = &OBJC_IVAR___PHSocialGroupChangeRequest__didSetManualOrder;
  }

  else
  {
    v6 = &OBJC_IVAR___PHSocialGroupChangeRequest__didSetAutomaticOrder;
  }

  v7 = &OBJC_IVAR___PHSocialGroupChangeRequest__automaticOrder;
  if (self->_userAction)
  {
    v7 = &OBJC_IVAR___PHSocialGroupChangeRequest__manualOrder;
  }

  *(&self->super.super.isa + *v6) = 1;
  *(&self->super.super.isa + *v7) = order;
}

- (void)resetCustomTitle
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  self->_didSetCustomTitle = 1;
  customTitle = self->_customTitle;
  self->_customTitle = 0;
}

- (void)unrejectSocialGroup
{
  if (!self->_userAction)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSocialGroupChangeRequest.m" lineNumber:525 description:{@"Invalid parameter not satisfying: %@", @"_userAction"}];
  }

  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  self->_didUnrejectSocialGroup = 1;
}

- (void)rejectSocialGroup
{
  if (!self->_userAction)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSocialGroupChangeRequest.m" lineNumber:519 description:{@"Invalid parameter not satisfying: %@", @"_userAction"}];
  }

  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  self->_didRejectSocialGroup = 1;
}

- (void)_setMembers:(id)members
{
  v20 = *MEMORY[0x1E69E9840];
  membersCopy = members;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = membersCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        objectID = [*(*(&v15 + 1) + 8 * v11) objectID];
        [v6 addObject:objectID];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [v6 copy];
  initialMemberPersonIDs = self->_initialMemberPersonIDs;
  self->_initialMemberPersonIDs = v13;
}

- (void)setCustomTitle:(id)title
{
  titleCopy = title;
  if (!self->_userAction)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSocialGroupChangeRequest.m" lineNumber:500 description:{@"Invalid parameter not satisfying: %@", @"_userAction"}];
  }

  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  customTitle = self->_customTitle;
  self->_customTitle = titleCopy;

  self->_didSetCustomTitle = 1;
}

- (BOOL)_applyInitialMembersToContainer:(id)container error:(id *)error
{
  v28[1] = *MEMORY[0x1E69E9840];
  containerCopy = container;
  if ([(NSSet *)self->_initialMemberPersonIDs count]> 1)
  {
    v10 = MEMORY[0x1E69BE7F8];
    initialMemberPersonIDs = self->_initialMemberPersonIDs;
    sourceNode = [containerCopy sourceNode];
    managedObjectContext = [sourceNode managedObjectContext];
    v8 = [v10 fetchDuplicateSocialGroupIDsWithMemberIDs:initialMemberPersonIDs inContext:managedObjectContext error:error];

    if (v8)
    {
      if (![v8 count])
      {
        v19 = MEMORY[0x1E69BE608];
        v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self in %@", self->_initialMemberPersonIDs];
        sourceNode2 = [containerCopy sourceNode];
        managedObjectContext2 = [sourceNode2 managedObjectContext];
        v23 = [v19 personsMatchingPredicate:v20 fetchLimit:0 sortDescriptors:0 relationshipKeyPathsForPrefetching:0 inManagedObjectContext:managedObjectContext2];

        v24 = [MEMORY[0x1E695DFD8] setWithArray:v23];
        v17 = [containerCopy setMembers:v24 error:error];

        goto LABEL_11;
      }

      v14 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A278];
      v26 = @"Each social group must have distinct members";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v16 = [v14 errorWithDomain:@"PHPhotosErrorDomain" code:7401 userInfo:v15];
      if (error)
      {
        v16 = v16;
        *error = v16;
      }
    }
  }

  else
  {
    v7 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A278];
    v28[0] = @"Social groups must have at least two members";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v9 = [v7 errorWithDomain:@"PHPhotosErrorDomain" code:7404 userInfo:v8];
    if (error)
    {
      v9 = v9;
      *error = v9;
    }
  }

  v17 = 0;
LABEL_11:

  return v17;
}

- (BOOL)_applyManualOrderToContainer:(id)container error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  containerCopy = container;
  if (!self->_didSetManualOrder)
  {
    goto LABEL_4;
  }

  if ((self->_manualOrder & 0x8000000000000000) == 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [containerCopy setManualOrder:v7];

LABEL_4:
    v8 = 1;
    goto LABEL_5;
  }

  v10 = MEMORY[0x1E696ABC0];
  v13 = *MEMORY[0x1E696A278];
  v14[0] = @"The manual order must be nonnegative";
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v12 = [v10 errorWithDomain:@"PHPhotosErrorDomain" code:7403 userInfo:v11];
  if (error)
  {
    v12 = v12;
    *error = v12;
  }

  v8 = 0;
LABEL_5:

  return v8;
}

- (BOOL)_applyAutomaticOrderToContainer:(id)container error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  containerCopy = container;
  if (!self->_didSetAutomaticOrder)
  {
    goto LABEL_4;
  }

  if ((self->_automaticOrder & 0x8000000000000000) == 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [containerCopy setAutomaticOrder:v7];

LABEL_4:
    v8 = 1;
    goto LABEL_5;
  }

  v10 = MEMORY[0x1E696ABC0];
  v13 = *MEMORY[0x1E696A278];
  v14[0] = @"The automatic order must be nonnegative";
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v12 = [v10 errorWithDomain:@"PHPhotosErrorDomain" code:7403 userInfo:v11];
  if (error)
  {
    v12 = v12;
    *error = v12;
  }

  v8 = 0;
LABEL_5:

  return v8;
}

- (BOOL)_applyKeyAssetToContainer:(id)container managedObject:(id)object error:(id *)error
{
  v50[1] = *MEMORY[0x1E69E9840];
  containerCopy = container;
  objectCopy = object;
  if (!self->_keyAssetID)
  {
    v16 = 1;
    goto LABEL_40;
  }

  if ([containerCopy keyAssetPickSource] == -1)
  {
    v25 = MEMORY[0x1E696ABC0];
    v49 = *MEMORY[0x1E696A278];
    v50[0] = @"Error fetching social group key-asset edge for pick source";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
    v14 = v25;
    v15 = -1;
    goto LABEL_17;
  }

  if (!self->_userAction)
  {
    if ([containerCopy keyAssetPickSource])
    {
      keyAsset = [containerCopy keyAsset];

      if (keyAsset)
      {
        v12 = MEMORY[0x1E696ABC0];
        v45 = *MEMORY[0x1E696A278];
        v46 = @"Only the user may override a visible, user-picked-key asset";
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        v14 = v12;
        v15 = 7409;
LABEL_17:
        v26 = [v14 errorWithDomain:@"PHPhotosErrorDomain" code:v15 userInfo:v13];
        if (error)
        {
          v26 = v26;
          *error = v26;
        }

        goto LABEL_39;
      }
    }
  }

  managedObjectContext = [objectCopy managedObjectContext];
  v40 = [managedObjectContext objectWithID:self->_keyAssetID];
  if (!v40)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSocialGroupChangeRequest.m" lineNumber:415 description:{@"Invalid parameter not satisfying: %@", @"keyAsset != nil"}];
  }

  v38 = [MEMORY[0x1E69BE7F8] newNodeContainerWithNode:objectCopy];
  v17 = [objc_alloc(MEMORY[0x1E69BE800]) initWithSocialGroup:v38];
  v18 = [MEMORY[0x1E695DFD8] setWithObject:self->_keyAssetID];
  v44 = 0;
  v19 = [v17 assetIDsIncludedInExclusiveContainment:v18 error:&v44];
  v20 = v44;

  if (!v19)
  {
    goto LABEL_21;
  }

  if (![v19 containsObject:self->_keyAssetID])
  {
    if (([v19 containsObject:self->_keyAssetID] & 1) == 0)
    {
      v30 = MEMORY[0x1E696ABC0];
      v47 = *MEMORY[0x1E696A278];
      v48 = @"The key asset must exist in the social group";
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v32 = [v30 errorWithDomain:@"PHPhotosErrorDomain" code:7402 userInfo:v31];
      if (error)
      {
        v32 = v32;
        *error = v32;
      }

      goto LABEL_28;
    }

LABEL_21:
    if (error)
    {
      v27 = v20;
      v16 = 0;
      *error = v20;
LABEL_37:
      v29 = 1;
      goto LABEL_38;
    }

LABEL_28:
    v16 = 0;
    goto LABEL_37;
  }

  v43 = v20;
  v21 = [containerCopy setKeyAsset:v40 error:&v43];
  v22 = v43;

  if (v21)
  {
    if (self->_userAction)
    {
      v42 = v22;
      v16 = 1;
      v23 = [containerCopy setKeyAssetPickSource:1 error:&v42];
      v24 = v42;

      v20 = v24;
      if (v23)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v41 = v22;
      v33 = [containerCopy setKeyAssetPickSource:0 error:&v41];
      v34 = v41;

      v20 = v34;
      if (v33)
      {
        v16 = 1;
LABEL_36:

        goto LABEL_37;
      }
    }

    if (error)
    {
      v35 = v20;
      v16 = 0;
      *error = v20;
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_36;
  }

  if (error)
  {
    v28 = v22;
    v29 = 0;
    *error = v22;
  }

  else
  {
    v29 = 0;
  }

  v16 = 1;
  v20 = v22;
LABEL_38:

  if ((v29 & 1) == 0)
  {
LABEL_39:
    v16 = 0;
  }

LABEL_40:

  return v16;
}

- (BOOL)_applyVerifiedTypeToContainer:(id)container error:(id *)error
{
  containerCopy = container;
  v8 = containerCopy;
  if (!self->_didRejectSocialGroup)
  {
    if (!self->_userAction)
    {
      if (!self->_didUnrejectSocialGroup)
      {
        if ([containerCopy socialGroupVerifiedType])
        {
          v11 = 0;
LABEL_16:
          v13 = 1;
          goto LABEL_17;
        }

        v18 = 0;
        v9 = [v8 setSocialGroupVerifiedType:2 error:&v18];
        v10 = v18;
        goto LABEL_5;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PHSocialGroupChangeRequest.m" lineNumber:394 description:{@"Invalid parameter not satisfying: %@", @"_userAction"}];
    }

    v19 = 0;
    v13 = 1;
    v14 = [v8 setSocialGroupVerifiedType:1 error:&v19];
    v11 = v19;
    if (v14)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (!self->_userAction)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHSocialGroupChangeRequest.m" lineNumber:387 description:{@"Invalid parameter not satisfying: %@", @"_userAction"}];
  }

  v20 = 0;
  v9 = [v8 setSocialGroupVerifiedType:0xFFFFFFFFLL error:&v20];
  v10 = v20;
LABEL_5:
  v11 = v10;
  if (v9)
  {
    goto LABEL_16;
  }

LABEL_11:
  if (error)
  {
    v15 = v11;
    v13 = 0;
    *error = v11;
  }

  else
  {
    v13 = 0;
  }

LABEL_17:

  return v13;
}

- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error
{
  v35[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  helper = [(PHChangeRequest *)self helper];
  v33 = 0;
  v9 = [helper applyMutationsToManagedObject:objectCopy error:&v33];
  v10 = v33;

  if (v9)
  {
    v11 = [MEMORY[0x1E69BE478] newNodeContainerWithNode:objectCopy];
    members = [v11 members];
    if (!members)
    {
      v13 = MEMORY[0x1E696ABC0];
      v34 = *MEMORY[0x1E696A278];
      v35[0] = @"Error fetching social group members";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
      v15 = [v13 errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v14];

      v10 = v15;
    }

    v16 = [members count];
    if (members)
    {
      v17 = v16 == 0;
    }

    else
    {
      v17 = 1;
    }

    v18 = !v17;
    if (v16)
    {
      v19 = 1;
    }

    else
    {
      v19 = members == 0;
    }

    if (!v19)
    {
      v32 = v10;
      v18 = [(PHSocialGroupChangeRequest *)self _applyInitialMembersToContainer:v11 error:&v32];
      v20 = v32;

      v10 = v20;
    }

    if (self->_didSetCustomTitle)
    {
      [v11 setCustomTitle:self->_customTitle];
    }

    if (v18)
    {
      v31 = v10;
      v21 = [(PHSocialGroupChangeRequest *)self _applyAutomaticOrderToContainer:v11 error:&v31];
      v22 = v31;

      if (!v21)
      {
LABEL_25:
        v25 = 0;
        v10 = v22;
LABEL_26:

        if (!error)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }

      v30 = v22;
      v23 = [(PHSocialGroupChangeRequest *)self _applyManualOrderToContainer:v11 error:&v30];
      v10 = v30;

      if (v23)
      {
        v29 = v10;
        v24 = [(PHSocialGroupChangeRequest *)self _applyKeyAssetToContainer:v11 managedObject:objectCopy error:&v29];
        v22 = v29;

        if (v24)
        {
          v28 = v22;
          v25 = [(PHSocialGroupChangeRequest *)self _applyVerifiedTypeToContainer:v11 error:&v28];
          v10 = v28;

          goto LABEL_26;
        }

        goto LABEL_25;
      }
    }

    v25 = 0;
    goto LABEL_26;
  }

  v25 = 0;
  if (!error)
  {
    goto LABEL_29;
  }

LABEL_27:
  if (!v25)
  {
    v26 = v10;
    *error = v10;
  }

LABEL_29:

  return v25;
}

- (BOOL)allowMutationToManagedObject:(id)object propertyKey:(id)key error:(id *)error
{
  keyCopy = key;
  objectCopy = object;
  helper = [(PHChangeRequest *)self helper];
  v15 = 0;
  v11 = [helper allowMutationToManagedObject:objectCopy propertyKey:keyCopy error:&v15];

  v12 = v15;
  if (error && (v11 & 1) == 0)
  {
    v13 = v12;
    *error = v12;
  }

  return v11;
}

- (PHSocialGroupChangeRequest)initWithUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = PHSocialGroupChangeRequest;
  v5 = [(PHChangeRequest *)&v9 init];
  if (v5)
  {
    v6 = [[PHChangeRequestHelper alloc] initForNewObjectWithUUID:dCopy changeRequest:v5];
    helper = v5->super._helper;
    v5->super._helper = v6;
  }

  return v5;
}

- (PHSocialGroupChangeRequest)initWithUUID:(id)d objectID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = PHSocialGroupChangeRequest;
  v8 = [(PHChangeRequest *)&v12 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:dCopy objectID:iDCopy changeRequest:v8];
    helper = v8->super._helper;
    v8->super._helper = v9;
  }

  return v8;
}

- (id)placeholderForCreatedSocialGroup
{
  helper = [(PHChangeRequest *)self helper];
  v4 = [helper placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  managedObjectContext = [libraryCopy managedObjectContext];
  v8 = objc_opt_class();
  initialMemberPersonIDs = self->_initialMemberPersonIDs;
  managedObjectContext2 = [libraryCopy managedObjectContext];
  v11 = [v8 _findNonUserVerifiedGroupUUIDWithMembers:initialMemberPersonIDs context:managedObjectContext2 changesError:error];

  if (v11)
  {
    if (([v11 isEqualToString:&stru_1F0FC60C8] & 1) != 0 || !-[PHSocialGroupChangeRequest isUserAction](self, "isUserAction"))
    {
      fetchRequest = [MEMORY[0x1E69BE7F8] newNodeContainerWithManagedObjectContext:managedObjectContext];
      uuid = [(PHChangeRequest *)self uuid];
      [fetchRequest setUuid:uuid];

      sourceNode = [fetchRequest sourceNode];
    }

    else
    {
      fetchRequest = [MEMORY[0x1E69BE470] fetchRequest];
      v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"uuid", v11];
      [fetchRequest setPredicate:v13];

      managedObjectContext3 = [libraryCopy managedObjectContext];
      v15 = [managedObjectContext3 executeFetchRequest:fetchRequest error:error];
      sourceNode = [v15 firstObject];

      if (sourceNode && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v29 = sourceNode;
        _os_log_impl(&dword_19C86F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Found duplicate rejected/graph/unverified group %{public}@ (and no duplicate user groups) so not inserting new one.", buf, 0xCu);
      }
    }
  }

  else
  {
    sourceNode = 0;
  }

  uuid2 = [(PHChangeRequest *)self uuid];
  uuid3 = [sourceNode uuid];
  v20 = [uuid2 isEqualToString:uuid3];

  if ((v20 & 1) == 0)
  {
    v21 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E69BFF48];
    v26 = *MEMORY[0x1E696A278];
    v27 = @"Social group placeholder UUID doesn't match object created for creation request";
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v24 = [v21 errorWithDomain:v22 code:46502 userInfo:v23];
    if (error)
    {
      v24 = v24;
      *error = v24;
    }

    sourceNode = 0;
  }

  return sourceNode;
}

- (void)encodeToXPCDict:(id)dict
{
  v17 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  helper = [(PHChangeRequest *)self helper];
  [helper encodeToXPCDict:dictCopy];

  xpc_dictionary_set_BOOL(dictCopy, "userAction", self->_userAction);
  xpc_dictionary_set_BOOL(dictCopy, "didSetCustomTitle", self->_didSetCustomTitle);
  if (self->_didSetCustomTitle)
  {
    PLXPCDictionarySetString();
  }

  xpc_dictionary_set_BOOL(dictCopy, "didRejectSocialGroup", self->_didRejectSocialGroup);
  xpc_dictionary_set_BOOL(dictCopy, "didUnrejectSocialGroup", self->_didUnrejectSocialGroup);
  if ([(NSSet *)self->_initialMemberPersonIDs count])
  {
    v6 = xpc_array_create(0, 0);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = self->_initialMemberPersonIDs;
    v8 = [(NSSet *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          PLXPCArrayAppendManagedObjectID();
          ++v11;
        }

        while (v9 != v11);
        v9 = [(NSSet *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }

    xpc_dictionary_set_value(dictCopy, "memberPersonIDs", v6);
  }

  xpc_dictionary_set_BOOL(dictCopy, "didSetAutomaticOrder", self->_didSetAutomaticOrder);
  if (self->_didSetAutomaticOrder)
  {
    xpc_dictionary_set_int64(dictCopy, "automaticOrder", self->_automaticOrder);
  }

  xpc_dictionary_set_BOOL(dictCopy, "didSetManualOrder", self->_didSetManualOrder);
  if (self->_didSetManualOrder)
  {
    xpc_dictionary_set_int64(dictCopy, "manualOrder", self->_manualOrder);
  }

  if (self->_keyAssetID)
  {
    PLXPCDictionarySetManagedObjectID();
  }
}

- (id)initForNewObject
{
  v6.receiver = self;
  v6.super_class = PHSocialGroupChangeRequest;
  v2 = [(PHChangeRequest *)&v6 init];
  if (v2)
  {
    v3 = [[PHChangeRequestHelper alloc] initForNewObjectWithChangeRequest:v2];
    helper = v2->super._helper;
    v2->super._helper = v3;
  }

  return v2;
}

- (PHSocialGroupChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  dictCopy = dict;
  requestCopy = request;
  authorizationCopy = authorization;
  v30.receiver = self;
  v30.super_class = PHSocialGroupChangeRequest;
  v11 = [(PHChangeRequest *)&v30 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:dictCopy changeRequest:v11 request:requestCopy clientAuthorization:authorizationCopy];
    helper = v11->super._helper;
    v11->super._helper = v12;

    v11->_userAction = xpc_dictionary_get_BOOL(dictCopy, "userAction");
    v14 = xpc_dictionary_get_BOOL(dictCopy, "didSetCustomTitle");
    v11->_didSetCustomTitle = v14;
    if (v14)
    {
      v15 = PLStringFromXPCDictionary();
      customTitle = v11->_customTitle;
      v11->_customTitle = v15;

      [(PHChangeRequestHelper *)v11->super._helper setMutated:1];
      [requestCopy recordUpdateRequest:v11];
    }

    v17 = xpc_dictionary_get_BOOL(dictCopy, "didRejectSocialGroup");
    v11->_didRejectSocialGroup = v17;
    if (v17)
    {
      [(PHChangeRequestHelper *)v11->super._helper setMutated:1];
      [requestCopy recordUpdateRequest:v11];
    }

    v18 = xpc_dictionary_get_BOOL(dictCopy, "didUnrejectSocialGroup");
    v11->_didUnrejectSocialGroup = v18;
    if (v18)
    {
      [(PHChangeRequestHelper *)v11->super._helper setMutated:1];
      [requestCopy recordUpdateRequest:v11];
    }

    v19 = MEMORY[0x1E695DFD8];
    v20 = [(PHChangeRequest *)v11 objectIDsFromXPCDict:dictCopy key:"memberPersonIDs" request:requestCopy];
    v21 = [v19 setWithArray:v20];
    initialMemberPersonIDs = v11->_initialMemberPersonIDs;
    v11->_initialMemberPersonIDs = v21;

    v23 = xpc_dictionary_get_BOOL(dictCopy, "didSetAutomaticOrder");
    v11->_didSetAutomaticOrder = v23;
    if (v23)
    {
      v11->_automaticOrder = xpc_dictionary_get_int64(dictCopy, "automaticOrder");
      [(PHChangeRequestHelper *)v11->super._helper setMutated:1];
      [requestCopy recordUpdateRequest:v11];
    }

    v24 = xpc_dictionary_get_BOOL(dictCopy, "didSetManualOrder");
    v11->_didSetManualOrder = v24;
    if (v24)
    {
      v11->_manualOrder = xpc_dictionary_get_int64(dictCopy, "manualOrder");
      [(PHChangeRequestHelper *)v11->super._helper setMutated:1];
      [requestCopy recordUpdateRequest:v11];
    }

    v25 = xpc_dictionary_get_value(dictCopy, "keyAssetID");
    if (v25)
    {
      persistentStoreCoordinator = [requestCopy persistentStoreCoordinator];
      v27 = PLManagedObjectIDFromXPCValue();
      keyAssetID = v11->_keyAssetID;
      v11->_keyAssetID = v27;

      [(PHChangeRequestHelper *)v11->super._helper setMutated:1];
      [requestCopy recordUpdateRequest:v11];
    }
  }

  return v11;
}

+ (void)deleteSocialGroups:(id)groups
{
  groupsCopy = groups;
  v4 = [(PHObjectDeleteRequest *)PHSocialGroupDeleteRequest deleteRequestsForObjects:groupsCopy ofType:objc_opt_class() forSelector:a2];
}

+ (id)_findNonUserVerifiedGroupUUIDWithMembers:(id)members context:(id)context changesError:(id *)error
{
  v31[1] = *MEMORY[0x1E69E9840];
  membersCopy = members;
  contextCopy = context;
  if (membersCopy)
  {
    v9 = [MEMORY[0x1E69BE7F8] fetchDuplicateSocialGroupIDsWithMemberIDs:membersCopy inContext:contextCopy error:error];
    if (!v9)
    {
      v19 = 0;
      v17 = &stru_1F0FC60C8;
      goto LABEL_19;
    }

    v10 = v9;
    fetchRequest = [MEMORY[0x1E69BE480] fetchRequest];
    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K IN %@) AND (%K = %d) AND (%K = %d)", @"node", v10, @"nameCode", 2000, @"integerValue", 1];
    [fetchRequest setPredicate:v12];

    [fetchRequest setResultType:1];
    v30 = 0;
    v13 = [contextCopy executeFetchRequest:fetchRequest error:&v30];
    v14 = v30;
    v15 = v14;
    if (v13)
    {
      if ([v13 count])
      {
        v16 = 0;
        v17 = &stru_1F0FC60C8;
        v18 = v15;
        v19 = &stru_1F0FC60C8;
        goto LABEL_17;
      }

      if ([v10 count])
      {
        firstObject = [v10 firstObject];
        fetchRequest2 = [MEMORY[0x1E69BE470] fetchRequest];
        [fetchRequest2 setResultType:2];
        v31[0] = @"uuid";
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
        [fetchRequest2 setPropertiesToFetch:v22];

        v23 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self = %@", firstObject];
        [fetchRequest2 setPredicate:v23];

        v29 = v15;
        v24 = [contextCopy executeFetchRequest:fetchRequest2 error:&v29];
        v18 = v29;

        firstObject2 = [v24 firstObject];

        if (firstObject2)
        {
          v17 = [firstObject2 objectForKeyedSubscript:@"uuid"];

          v19 = 0;
          v16 = 1;
          goto LABEL_17;
        }

        if (error)
        {
          v27 = v18;
          *error = v18;
        }

        v16 = 0;
        v19 = 0;
LABEL_16:
        v17 = &stru_1F0FC60C8;
LABEL_17:

        if (!v16)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      v19 = 0;
      v16 = 1;
    }

    else if (error)
    {
      v20 = v14;
      v16 = 0;
      v19 = 0;
      *error = v15;
    }

    else
    {
      v16 = 0;
      v19 = 0;
    }

    v18 = v15;
    goto LABEL_16;
  }

  v17 = &stru_1F0FC60C8;
LABEL_18:
  v17 = v17;
  v19 = v17;
LABEL_19:

  return v19;
}

+ (id)changeRequestForSocialGroup:(id)group userAction:(BOOL)action
{
  groupCopy = group;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [PHSocialGroupChangeRequest alloc];
    uuid = [groupCopy uuid];
    objectID = [groupCopy objectID];
    v9 = [(PHSocialGroupChangeRequest *)v6 initWithUUID:uuid objectID:objectID];

    v9->_userAction = action;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)creationRequestForSocialGroupWithMembers:(id)members userAction:(BOOL)action
{
  actionCopy = action;
  v43 = *MEMORY[0x1E69E9840];
  membersCopy = members;
  v7 = [MEMORY[0x1E695DFA8] set];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = membersCopy;
  v9 = [v8 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v9)
  {
    v10 = *v37;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(v8);
        }

        objectID = [*(*(&v36 + 1) + 8 * i) objectID];
        [v7 addObject:objectID];
      }

      v9 = [v8 countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v9);
  }

  if (!actionCopy)
  {
    goto LABEL_13;
  }

  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__49495;
  v34[4] = __Block_byref_object_dispose__49496;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__49495;
  v32 = __Block_byref_object_dispose__49496;
  v33 = 0;
  v13 = +[PHPhotoLibrary photoLibraryForCurrentTransaction];
  managedObjectContext = [v13 managedObjectContext];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __82__PHSocialGroupChangeRequest_creationRequestForSocialGroupWithMembers_userAction___block_invoke;
  v22[3] = &unk_1E75AA420;
  v25 = &v28;
  selfCopy = self;
  v23 = v7;
  v15 = managedObjectContext;
  v24 = v15;
  v26 = v34;
  [v15 performBlockAndWait:v22];
  v16 = v29[5];
  if (v16 && ([v16 isEqualToString:&stru_1F0FC60C8] & 1) == 0)
  {
    v19 = objc_alloc(MEMORY[0x1E696AFB0]);
    v20 = [v19 initWithUUIDString:v29[5]];
    initForNewObject = [self _creationRequestForSocialGroupCopyWithUUID:v20];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v21 = v29[5];
      *buf = 138543362;
      v41 = v21;
      _os_log_impl(&dword_19C86F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Found duplicate rejected/graph/unverified group %{public}@ (and no duplicate user groups) so using creation request for existing group.", buf, 0xCu);
    }
  }

  else
  {
    initForNewObject = 0;
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(v34, 8);

  if (!initForNewObject)
  {
LABEL_13:
    initForNewObject = [[PHSocialGroupChangeRequest alloc] initForNewObject];
    initForNewObject[32] = actionCopy;
  }

  [initForNewObject _setMembers:v8];

  return initForNewObject;
}

void __82__PHSocialGroupChangeRequest_creationRequestForSocialGroupWithMembers_userAction___block_invoke(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[8];
  v5 = *(a1[7] + 8);
  obj = *(v5 + 40);
  v6 = [v4 _findNonUserVerifiedGroupUUIDWithMembers:v2 context:v3 changesError:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (!*(*(a1[6] + 8) + 40))
  {
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(*(a1[7] + 8) + 40);
      *buf = 138412290;
      v13 = v10;
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_ERROR, "creationRequestForSocialGroupWithMembers: error fetching social group nodes: %@", buf, 0xCu);
    }
  }
}

+ (id)_creationRequestForSocialGroupCopyWithUUID:(id)d
{
  dCopy = d;
  v4 = [[PHSocialGroupChangeRequest alloc] initWithUUID:dCopy];

  v4->_userAction = 1;
  [(PHSocialGroupChangeRequest *)v4 unrejectSocialGroup];

  return v4;
}

@end