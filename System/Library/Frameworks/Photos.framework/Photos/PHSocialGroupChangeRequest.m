@interface PHSocialGroupChangeRequest
+ (id)_creationRequestForSocialGroupCopyWithUUID:(id)a3;
+ (id)_findNonUserVerifiedGroupUUIDWithMembers:(id)a3 context:(id)a4 changesError:(id *)a5;
+ (id)changeRequestForSocialGroup:(id)a3 userAction:(BOOL)a4;
+ (id)creationRequestForSocialGroupWithMembers:(id)a3 userAction:(BOOL)a4;
+ (void)deleteSocialGroups:(id)a3;
- (BOOL)_applyAutomaticOrderToContainer:(id)a3 error:(id *)a4;
- (BOOL)_applyInitialMembersToContainer:(id)a3 error:(id *)a4;
- (BOOL)_applyKeyAssetToContainer:(id)a3 managedObject:(id)a4 error:(id *)a5;
- (BOOL)_applyManualOrderToContainer:(id)a3 error:(id *)a4;
- (BOOL)_applyVerifiedTypeToContainer:(id)a3 error:(id *)a4;
- (BOOL)allowMutationToManagedObject:(id)a3 propertyKey:(id)a4 error:(id *)a5;
- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5;
- (PHSocialGroupChangeRequest)initWithUUID:(id)a3;
- (PHSocialGroupChangeRequest)initWithUUID:(id)a3 objectID:(id)a4;
- (PHSocialGroupChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (id)initForNewObject;
- (id)initialMemberPersonIDs;
- (id)placeholderForCreatedSocialGroup;
- (void)_setMembers:(id)a3;
- (void)encodeToXPCDict:(id)a3;
- (void)rejectSocialGroup;
- (void)resetCustomTitle;
- (void)setCustomTitle:(id)a3;
- (void)setKeyAsset:(id)a3;
- (void)setOrder:(int64_t)a3;
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

- (void)setKeyAsset:(id)a3
{
  v4 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v6 = [v4 objectID];

  keyAssetID = self->_keyAssetID;
  self->_keyAssetID = v6;
}

- (void)setOrder:(int64_t)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

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
  *(&self->super.super.isa + *v7) = a3;
}

- (void)resetCustomTitle
{
  v3 = [(PHChangeRequest *)self helper];
  [v3 didMutate];

  self->_didSetCustomTitle = 1;
  customTitle = self->_customTitle;
  self->_customTitle = 0;
}

- (void)unrejectSocialGroup
{
  if (!self->_userAction)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PHSocialGroupChangeRequest.m" lineNumber:525 description:{@"Invalid parameter not satisfying: %@", @"_userAction"}];
  }

  v3 = [(PHChangeRequest *)self helper];
  [v3 didMutate];

  self->_didUnrejectSocialGroup = 1;
}

- (void)rejectSocialGroup
{
  if (!self->_userAction)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PHSocialGroupChangeRequest.m" lineNumber:519 description:{@"Invalid parameter not satisfying: %@", @"_userAction"}];
  }

  v3 = [(PHChangeRequest *)self helper];
  [v3 didMutate];

  self->_didRejectSocialGroup = 1;
}

- (void)_setMembers:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v4;
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

        v12 = [*(*(&v15 + 1) + 8 * v11) objectID];
        [v6 addObject:v12];

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

- (void)setCustomTitle:(id)a3
{
  v5 = a3;
  if (!self->_userAction)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PHSocialGroupChangeRequest.m" lineNumber:500 description:{@"Invalid parameter not satisfying: %@", @"_userAction"}];
  }

  v6 = [(PHChangeRequest *)self helper];
  [v6 didMutate];

  customTitle = self->_customTitle;
  self->_customTitle = v5;

  self->_didSetCustomTitle = 1;
}

- (BOOL)_applyInitialMembersToContainer:(id)a3 error:(id *)a4
{
  v28[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([(NSSet *)self->_initialMemberPersonIDs count]> 1)
  {
    v10 = MEMORY[0x1E69BE7F8];
    initialMemberPersonIDs = self->_initialMemberPersonIDs;
    v12 = [v6 sourceNode];
    v13 = [v12 managedObjectContext];
    v8 = [v10 fetchDuplicateSocialGroupIDsWithMemberIDs:initialMemberPersonIDs inContext:v13 error:a4];

    if (v8)
    {
      if (![v8 count])
      {
        v19 = MEMORY[0x1E69BE608];
        v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self in %@", self->_initialMemberPersonIDs];
        v21 = [v6 sourceNode];
        v22 = [v21 managedObjectContext];
        v23 = [v19 personsMatchingPredicate:v20 fetchLimit:0 sortDescriptors:0 relationshipKeyPathsForPrefetching:0 inManagedObjectContext:v22];

        v24 = [MEMORY[0x1E695DFD8] setWithArray:v23];
        v17 = [v6 setMembers:v24 error:a4];

        goto LABEL_11;
      }

      v14 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A278];
      v26 = @"Each social group must have distinct members";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v16 = [v14 errorWithDomain:@"PHPhotosErrorDomain" code:7401 userInfo:v15];
      if (a4)
      {
        v16 = v16;
        *a4 = v16;
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
    if (a4)
    {
      v9 = v9;
      *a4 = v9;
    }
  }

  v17 = 0;
LABEL_11:

  return v17;
}

- (BOOL)_applyManualOrderToContainer:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!self->_didSetManualOrder)
  {
    goto LABEL_4;
  }

  if ((self->_manualOrder & 0x8000000000000000) == 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [v6 setManualOrder:v7];

LABEL_4:
    v8 = 1;
    goto LABEL_5;
  }

  v10 = MEMORY[0x1E696ABC0];
  v13 = *MEMORY[0x1E696A278];
  v14[0] = @"The manual order must be nonnegative";
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v12 = [v10 errorWithDomain:@"PHPhotosErrorDomain" code:7403 userInfo:v11];
  if (a4)
  {
    v12 = v12;
    *a4 = v12;
  }

  v8 = 0;
LABEL_5:

  return v8;
}

- (BOOL)_applyAutomaticOrderToContainer:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!self->_didSetAutomaticOrder)
  {
    goto LABEL_4;
  }

  if ((self->_automaticOrder & 0x8000000000000000) == 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [v6 setAutomaticOrder:v7];

LABEL_4:
    v8 = 1;
    goto LABEL_5;
  }

  v10 = MEMORY[0x1E696ABC0];
  v13 = *MEMORY[0x1E696A278];
  v14[0] = @"The automatic order must be nonnegative";
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v12 = [v10 errorWithDomain:@"PHPhotosErrorDomain" code:7403 userInfo:v11];
  if (a4)
  {
    v12 = v12;
    *a4 = v12;
  }

  v8 = 0;
LABEL_5:

  return v8;
}

- (BOOL)_applyKeyAssetToContainer:(id)a3 managedObject:(id)a4 error:(id *)a5
{
  v50[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (!self->_keyAssetID)
  {
    v16 = 1;
    goto LABEL_40;
  }

  if ([v9 keyAssetPickSource] == -1)
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
    if ([v9 keyAssetPickSource])
    {
      v11 = [v9 keyAsset];

      if (v11)
      {
        v12 = MEMORY[0x1E696ABC0];
        v45 = *MEMORY[0x1E696A278];
        v46 = @"Only the user may override a visible, user-picked-key asset";
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        v14 = v12;
        v15 = 7409;
LABEL_17:
        v26 = [v14 errorWithDomain:@"PHPhotosErrorDomain" code:v15 userInfo:v13];
        if (a5)
        {
          v26 = v26;
          *a5 = v26;
        }

        goto LABEL_39;
      }
    }
  }

  v39 = [v10 managedObjectContext];
  v40 = [v39 objectWithID:self->_keyAssetID];
  if (!v40)
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"PHSocialGroupChangeRequest.m" lineNumber:415 description:{@"Invalid parameter not satisfying: %@", @"keyAsset != nil"}];
  }

  v38 = [MEMORY[0x1E69BE7F8] newNodeContainerWithNode:v10];
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
      if (a5)
      {
        v32 = v32;
        *a5 = v32;
      }

      goto LABEL_28;
    }

LABEL_21:
    if (a5)
    {
      v27 = v20;
      v16 = 0;
      *a5 = v20;
LABEL_37:
      v29 = 1;
      goto LABEL_38;
    }

LABEL_28:
    v16 = 0;
    goto LABEL_37;
  }

  v43 = v20;
  v21 = [v9 setKeyAsset:v40 error:&v43];
  v22 = v43;

  if (v21)
  {
    if (self->_userAction)
    {
      v42 = v22;
      v16 = 1;
      v23 = [v9 setKeyAssetPickSource:1 error:&v42];
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
      v33 = [v9 setKeyAssetPickSource:0 error:&v41];
      v34 = v41;

      v20 = v34;
      if (v33)
      {
        v16 = 1;
LABEL_36:

        goto LABEL_37;
      }
    }

    if (a5)
    {
      v35 = v20;
      v16 = 0;
      *a5 = v20;
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_36;
  }

  if (a5)
  {
    v28 = v22;
    v29 = 0;
    *a5 = v22;
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

- (BOOL)_applyVerifiedTypeToContainer:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = v7;
  if (!self->_didRejectSocialGroup)
  {
    if (!self->_userAction)
    {
      if (!self->_didUnrejectSocialGroup)
      {
        if ([v7 socialGroupVerifiedType])
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

      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PHSocialGroupChangeRequest.m" lineNumber:394 description:{@"Invalid parameter not satisfying: %@", @"_userAction"}];
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
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PHSocialGroupChangeRequest.m" lineNumber:387 description:{@"Invalid parameter not satisfying: %@", @"_userAction"}];
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
  if (a4)
  {
    v15 = v11;
    v13 = 0;
    *a4 = v11;
  }

  else
  {
    v13 = 0;
  }

LABEL_17:

  return v13;
}

- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5
{
  v35[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [(PHChangeRequest *)self helper];
  v33 = 0;
  v9 = [v8 applyMutationsToManagedObject:v7 error:&v33];
  v10 = v33;

  if (v9)
  {
    v11 = [MEMORY[0x1E69BE478] newNodeContainerWithNode:v7];
    v12 = [v11 members];
    if (!v12)
    {
      v13 = MEMORY[0x1E696ABC0];
      v34 = *MEMORY[0x1E696A278];
      v35[0] = @"Error fetching social group members";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
      v15 = [v13 errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v14];

      v10 = v15;
    }

    v16 = [v12 count];
    if (v12)
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
      v19 = v12 == 0;
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

        if (!a5)
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
        v24 = [(PHSocialGroupChangeRequest *)self _applyKeyAssetToContainer:v11 managedObject:v7 error:&v29];
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
  if (!a5)
  {
    goto LABEL_29;
  }

LABEL_27:
  if (!v25)
  {
    v26 = v10;
    *a5 = v10;
  }

LABEL_29:

  return v25;
}

- (BOOL)allowMutationToManagedObject:(id)a3 propertyKey:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(PHChangeRequest *)self helper];
  v15 = 0;
  v11 = [v10 allowMutationToManagedObject:v9 propertyKey:v8 error:&v15];

  v12 = v15;
  if (a5 && (v11 & 1) == 0)
  {
    v13 = v12;
    *a5 = v12;
  }

  return v11;
}

- (PHSocialGroupChangeRequest)initWithUUID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PHSocialGroupChangeRequest;
  v5 = [(PHChangeRequest *)&v9 init];
  if (v5)
  {
    v6 = [[PHChangeRequestHelper alloc] initForNewObjectWithUUID:v4 changeRequest:v5];
    helper = v5->super._helper;
    v5->super._helper = v6;
  }

  return v5;
}

- (PHSocialGroupChangeRequest)initWithUUID:(id)a3 objectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PHSocialGroupChangeRequest;
  v8 = [(PHChangeRequest *)&v12 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:v6 objectID:v7 changeRequest:v8];
    helper = v8->super._helper;
    v8->super._helper = v9;
  }

  return v8;
}

- (id)placeholderForCreatedSocialGroup
{
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 managedObjectContext];
  v8 = objc_opt_class();
  initialMemberPersonIDs = self->_initialMemberPersonIDs;
  v10 = [v6 managedObjectContext];
  v11 = [v8 _findNonUserVerifiedGroupUUIDWithMembers:initialMemberPersonIDs context:v10 changesError:a4];

  if (v11)
  {
    if (([v11 isEqualToString:&stru_1F0FC60C8] & 1) != 0 || !-[PHSocialGroupChangeRequest isUserAction](self, "isUserAction"))
    {
      v12 = [MEMORY[0x1E69BE7F8] newNodeContainerWithManagedObjectContext:v7];
      v17 = [(PHChangeRequest *)self uuid];
      [v12 setUuid:v17];

      v16 = [v12 sourceNode];
    }

    else
    {
      v12 = [MEMORY[0x1E69BE470] fetchRequest];
      v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"uuid", v11];
      [v12 setPredicate:v13];

      v14 = [v6 managedObjectContext];
      v15 = [v14 executeFetchRequest:v12 error:a4];
      v16 = [v15 firstObject];

      if (v16 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v29 = v16;
        _os_log_impl(&dword_19C86F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Found duplicate rejected/graph/unverified group %{public}@ (and no duplicate user groups) so not inserting new one.", buf, 0xCu);
      }
    }
  }

  else
  {
    v16 = 0;
  }

  v18 = [(PHChangeRequest *)self uuid];
  v19 = [v16 uuid];
  v20 = [v18 isEqualToString:v19];

  if ((v20 & 1) == 0)
  {
    v21 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E69BFF48];
    v26 = *MEMORY[0x1E696A278];
    v27 = @"Social group placeholder UUID doesn't match object created for creation request";
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v24 = [v21 errorWithDomain:v22 code:46502 userInfo:v23];
    if (a4)
    {
      v24 = v24;
      *a4 = v24;
    }

    v16 = 0;
  }

  return v16;
}

- (void)encodeToXPCDict:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 encodeToXPCDict:v4];

  xpc_dictionary_set_BOOL(v4, "userAction", self->_userAction);
  xpc_dictionary_set_BOOL(v4, "didSetCustomTitle", self->_didSetCustomTitle);
  if (self->_didSetCustomTitle)
  {
    PLXPCDictionarySetString();
  }

  xpc_dictionary_set_BOOL(v4, "didRejectSocialGroup", self->_didRejectSocialGroup);
  xpc_dictionary_set_BOOL(v4, "didUnrejectSocialGroup", self->_didUnrejectSocialGroup);
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

    xpc_dictionary_set_value(v4, "memberPersonIDs", v6);
  }

  xpc_dictionary_set_BOOL(v4, "didSetAutomaticOrder", self->_didSetAutomaticOrder);
  if (self->_didSetAutomaticOrder)
  {
    xpc_dictionary_set_int64(v4, "automaticOrder", self->_automaticOrder);
  }

  xpc_dictionary_set_BOOL(v4, "didSetManualOrder", self->_didSetManualOrder);
  if (self->_didSetManualOrder)
  {
    xpc_dictionary_set_int64(v4, "manualOrder", self->_manualOrder);
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

- (PHSocialGroupChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v30.receiver = self;
  v30.super_class = PHSocialGroupChangeRequest;
  v11 = [(PHChangeRequest *)&v30 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:v8 changeRequest:v11 request:v9 clientAuthorization:v10];
    helper = v11->super._helper;
    v11->super._helper = v12;

    v11->_userAction = xpc_dictionary_get_BOOL(v8, "userAction");
    v14 = xpc_dictionary_get_BOOL(v8, "didSetCustomTitle");
    v11->_didSetCustomTitle = v14;
    if (v14)
    {
      v15 = PLStringFromXPCDictionary();
      customTitle = v11->_customTitle;
      v11->_customTitle = v15;

      [(PHChangeRequestHelper *)v11->super._helper setMutated:1];
      [v9 recordUpdateRequest:v11];
    }

    v17 = xpc_dictionary_get_BOOL(v8, "didRejectSocialGroup");
    v11->_didRejectSocialGroup = v17;
    if (v17)
    {
      [(PHChangeRequestHelper *)v11->super._helper setMutated:1];
      [v9 recordUpdateRequest:v11];
    }

    v18 = xpc_dictionary_get_BOOL(v8, "didUnrejectSocialGroup");
    v11->_didUnrejectSocialGroup = v18;
    if (v18)
    {
      [(PHChangeRequestHelper *)v11->super._helper setMutated:1];
      [v9 recordUpdateRequest:v11];
    }

    v19 = MEMORY[0x1E695DFD8];
    v20 = [(PHChangeRequest *)v11 objectIDsFromXPCDict:v8 key:"memberPersonIDs" request:v9];
    v21 = [v19 setWithArray:v20];
    initialMemberPersonIDs = v11->_initialMemberPersonIDs;
    v11->_initialMemberPersonIDs = v21;

    v23 = xpc_dictionary_get_BOOL(v8, "didSetAutomaticOrder");
    v11->_didSetAutomaticOrder = v23;
    if (v23)
    {
      v11->_automaticOrder = xpc_dictionary_get_int64(v8, "automaticOrder");
      [(PHChangeRequestHelper *)v11->super._helper setMutated:1];
      [v9 recordUpdateRequest:v11];
    }

    v24 = xpc_dictionary_get_BOOL(v8, "didSetManualOrder");
    v11->_didSetManualOrder = v24;
    if (v24)
    {
      v11->_manualOrder = xpc_dictionary_get_int64(v8, "manualOrder");
      [(PHChangeRequestHelper *)v11->super._helper setMutated:1];
      [v9 recordUpdateRequest:v11];
    }

    v25 = xpc_dictionary_get_value(v8, "keyAssetID");
    if (v25)
    {
      v26 = [v9 persistentStoreCoordinator];
      v27 = PLManagedObjectIDFromXPCValue();
      keyAssetID = v11->_keyAssetID;
      v11->_keyAssetID = v27;

      [(PHChangeRequestHelper *)v11->super._helper setMutated:1];
      [v9 recordUpdateRequest:v11];
    }
  }

  return v11;
}

+ (void)deleteSocialGroups:(id)a3
{
  v5 = a3;
  v4 = [(PHObjectDeleteRequest *)PHSocialGroupDeleteRequest deleteRequestsForObjects:v5 ofType:objc_opt_class() forSelector:a2];
}

+ (id)_findNonUserVerifiedGroupUUIDWithMembers:(id)a3 context:(id)a4 changesError:(id *)a5
{
  v31[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = [MEMORY[0x1E69BE7F8] fetchDuplicateSocialGroupIDsWithMemberIDs:v7 inContext:v8 error:a5];
    if (!v9)
    {
      v19 = 0;
      v17 = &stru_1F0FC60C8;
      goto LABEL_19;
    }

    v10 = v9;
    v11 = [MEMORY[0x1E69BE480] fetchRequest];
    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K IN %@) AND (%K = %d) AND (%K = %d)", @"node", v10, @"nameCode", 2000, @"integerValue", 1];
    [v11 setPredicate:v12];

    [v11 setResultType:1];
    v30 = 0;
    v13 = [v8 executeFetchRequest:v11 error:&v30];
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
        v28 = [v10 firstObject];
        v21 = [MEMORY[0x1E69BE470] fetchRequest];
        [v21 setResultType:2];
        v31[0] = @"uuid";
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
        [v21 setPropertiesToFetch:v22];

        v23 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self = %@", v28];
        [v21 setPredicate:v23];

        v29 = v15;
        v24 = [v8 executeFetchRequest:v21 error:&v29];
        v18 = v29;

        v25 = [v24 firstObject];

        if (v25)
        {
          v17 = [v25 objectForKeyedSubscript:@"uuid"];

          v19 = 0;
          v16 = 1;
          goto LABEL_17;
        }

        if (a5)
        {
          v27 = v18;
          *a5 = v18;
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

    else if (a5)
    {
      v20 = v14;
      v16 = 0;
      v19 = 0;
      *a5 = v15;
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

+ (id)changeRequestForSocialGroup:(id)a3 userAction:(BOOL)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [PHSocialGroupChangeRequest alloc];
    v7 = [v5 uuid];
    v8 = [v5 objectID];
    v9 = [(PHSocialGroupChangeRequest *)v6 initWithUUID:v7 objectID:v8];

    v9->_userAction = a4;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)creationRequestForSocialGroupWithMembers:(id)a3 userAction:(BOOL)a4
{
  v4 = a4;
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695DFA8] set];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = v6;
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

        v12 = [*(*(&v36 + 1) + 8 * i) objectID];
        [v7 addObject:v12];
      }

      v9 = [v8 countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v9);
  }

  if (!v4)
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
  v14 = [v13 managedObjectContext];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __82__PHSocialGroupChangeRequest_creationRequestForSocialGroupWithMembers_userAction___block_invoke;
  v22[3] = &unk_1E75AA420;
  v25 = &v28;
  v27 = a1;
  v23 = v7;
  v15 = v14;
  v24 = v15;
  v26 = v34;
  [v15 performBlockAndWait:v22];
  v16 = v29[5];
  if (v16 && ([v16 isEqualToString:&stru_1F0FC60C8] & 1) == 0)
  {
    v19 = objc_alloc(MEMORY[0x1E696AFB0]);
    v20 = [v19 initWithUUIDString:v29[5]];
    v17 = [a1 _creationRequestForSocialGroupCopyWithUUID:v20];

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
    v17 = 0;
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(v34, 8);

  if (!v17)
  {
LABEL_13:
    v17 = [[PHSocialGroupChangeRequest alloc] initForNewObject];
    v17[32] = v4;
  }

  [v17 _setMembers:v8];

  return v17;
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

+ (id)_creationRequestForSocialGroupCopyWithUUID:(id)a3
{
  v3 = a3;
  v4 = [[PHSocialGroupChangeRequest alloc] initWithUUID:v3];

  v4->_userAction = 1;
  [(PHSocialGroupChangeRequest *)v4 unrejectSocialGroup];

  return v4;
}

@end