@interface PHPersonChangeRequest
+ (BOOL)_allPersonsAreGraphPersons:(id)a3;
+ (id)changeRequestForDedupingGraphPersons:(id)a3;
+ (id)changeRequestForDedupingGraphPersons:(id)a3 withUserVerifiedPerson:(id)a4;
+ (id)changeRequestForMergingPersons:(id)a3 nominalTargetIdentifier:(id)a4;
+ (id)changeRequestForPerson:(id)a3;
+ (id)changeRequestsForMergeCandidatePersons:(id)a3;
+ (id)creationRequestForPerson;
+ (void)deletePersons:(id)a3;
- (BOOL)_containsUserMutations;
- (BOOL)_ensureModelConsistencyForVerifiedTypePromotion:(id)a3 originalVerifiedType:(int)a4 error:(id *)a5;
- (BOOL)_hasMutationForVerifiedType:(int *)a3;
- (BOOL)_removeObjects:(id)a3 fromArray:(id)a4;
- (BOOL)_shouldPromotePerson:(id)a3 toVerifiedType:(int *)a4;
- (BOOL)_validateMergePerson:(id)a3 withPersonUUIDs:(id)a4 error:(id *)a5;
- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5;
- (BOOL)isInPersonNamingModel;
- (BOOL)validateInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (BOOL)validateMutationsToManagedObject:(id)a3 error:(id *)a4;
- (NSDictionary)contactMatchingDictionary;
- (NSString)displayName;
- (NSString)mdID;
- (NSString)name;
- (NSString)personUri;
- (PHObjectPlaceholder)placeholderForCreatedPerson;
- (PHPersonChangeRequest)initWithUUID:(id)a3 objectID:(id)a4;
- (PHPersonChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
- (double)mergeCandidateConfidence;
- (id)_existentFaceObjectIDs;
- (id)_existentInvalidMergeCandidateObjectIDs;
- (id)_existentMergeCandidateObjectIDs;
- (id)_existentMergeCandidateWithConfidenceObjectIDs;
- (id)_existentRejectedFaceObjectIDs;
- (id)_existentTemporalFaceObjectIDs;
- (id)_mutableFaceObjectIDsAndUUIDs;
- (id)_mutableInvalidMergeCandidateObjectIDsAndUUIDs;
- (id)_mutableKeyFaceObjectIDsAndUUIDs;
- (id)_mutableMergeCandidateObjectIDsAndUUIDs;
- (id)_mutableMergeCandidateWithConfidenceObjectIDsAndUUIDs;
- (id)_mutableRejectedFacesObjectIDsAndUUIDs;
- (id)_mutableRequiringFaceCropGenerationFacesUUIDs;
- (id)_mutableRequiringNewUnverifiedPersonFacesUUIDs;
- (id)_mutableTemporalFaceObjectIDsAndUUIDs;
- (id)_noLimitsPersonFetchOptions;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (id)initForNewObject;
- (id)personUUID;
- (int64_t)assetSortOrder;
- (int64_t)type;
- (int64_t)verifiedType;
- (signed)detectionType;
- (signed)keyFacePickSource;
- (unint64_t)manualOrder;
- (unsigned)ageType;
- (unsigned)genderType;
- (unsigned)questionType;
- (unsigned)sexType;
- (unsigned)suggestedForClientType;
- (void)_addObjectIDsOfFaces:(id)a3 toFaceIDs:(id)a4 temporalIDs:(id)a5;
- (void)_prepareKeyFaceHelperIfNeeded;
- (void)_setGraphDedupePersons:(id)a3;
- (void)_setKeyFace:(id)a3 forCluster:(BOOL)a4 pickSource:(signed __int16)a5;
- (void)addFaces:(id)a3;
- (void)addInvalidMergeCandidatePersons:(id)a3;
- (void)addMergeCandidatePersons:(id)a3;
- (void)addMergeCandidateWithConfidencePersons:(id)a3;
- (void)addRejectedFaces:(id)a3 forCluster:(BOOL)a4;
- (void)addSearchEntityPersonRelationWithType:(signed __int16)a3 label:(id)a4 confidence:(double)a5 toPerson:(id)a6;
- (void)addTemporalFaces:(id)a3;
- (void)encodeToXPCDict:(id)a3;
- (void)mergePersons:(id)a3;
- (void)persistSuggestionForClient:(unint64_t)a3;
- (void)rejectMergeCandidatePersons:(id)a3;
- (void)removeFaces:(id)a3;
- (void)removeMergeCandidatePersons:(id)a3;
- (void)removeMergeCandidateWithConfidencePersons:(id)a3;
- (void)removeRejectedFaces:(id)a3;
- (void)removeSearchEntityPersonRelationType:(signed __int16)a3 toPerson:(id)a4;
- (void)removeTemporalFaces:(id)a3;
- (void)setAgeType:(unsigned __int16)a3;
- (void)setAssetSortOrder:(int64_t)a3;
- (void)setAutonamingUserFeedbacks:(id)a3;
- (void)setContactMatchingDictionary:(id)a3;
- (void)setDetectionType:(signed __int16)a3;
- (void)setDisplayName:(id)a3;
- (void)setGenderType:(unsigned __int16)a3;
- (void)setInPersonNamingModel:(BOOL)a3;
- (void)setKeyFaceForUserPick:(id)a3 forCluster:(BOOL)a4;
- (void)setKeyFacePickSource:(signed __int16)a3;
- (void)setManualOrder:(unint64_t)a3;
- (void)setManualOrder:(unint64_t)a3 verified:(BOOL)a4;
- (void)setMdID:(id)a3;
- (void)setMergeCandidateConfidence:(double)a3;
- (void)setName:(id)a3;
- (void)setPersonUUID:(id)a3;
- (void)setPersonUri:(id)a3;
- (void)setQuestionType:(unsigned __int16)a3;
- (void)setSexType:(unsigned __int16)a3;
- (void)setSuggestedForClientType:(unsigned __int16)a3;
- (void)setTemporalFaces:(id)a3;
- (void)setType:(int64_t)a3;
- (void)setUserFeedback:(id)a3;
- (void)setVerifiedType:(int64_t)a3;
@end

@implementation PHPersonChangeRequest

- (void)removeSearchEntityPersonRelationType:(signed __int16)a3 toPerson:(id)a4
{
  v4 = a3;
  v7 = a4;
  v13 = v7;
  if (v4)
  {
    if (v7)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PHPersonChangeRequest.m" lineNumber:1417 description:{@"Invalid parameter not satisfying: %@", @"relationType"}];

    v7 = v13;
    if (v13)
    {
LABEL_4:
      v8 = MEMORY[0x1E69BE780];
      if (v7)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  if ((v4 - 3) > 0xFFFDu)
  {
    goto LABEL_4;
  }

  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"PHPersonChangeRequest.m" lineNumber:1418 description:{@"Invalid parameter not satisfying: %@", @"relatedPerson || (relationType == PHSearchEntityPersonRelationTypeMe || relationType == PHSearchEntityPersonRelationTypeSelf)"}];

  v8 = MEMORY[0x1E69BE780];
LABEL_5:
  v7 = self;
LABEL_6:
  v9 = [(PHChangeRequest *)v7 uuid];
  v10 = [v8 personRelationDictionaryForRelationWithType:v4 label:0 confidence:v9 relatedPersonUUID:0.0];

  [(NSMutableArray *)self->_searchEntityRelationsToRemove addObject:v10];
  [(PHChangeRequest *)self didMutate];
}

- (void)addSearchEntityPersonRelationWithType:(signed __int16)a3 label:(id)a4 confidence:(double)a5 toPerson:(id)a6
{
  v8 = a3;
  v19 = a4;
  v11 = a6;
  if (a5 == 0.0)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PHPersonChangeRequest.m" lineNumber:1408 description:{@"Invalid parameter not satisfying: %@", @"confidence"}];

    if (v8)
    {
      goto LABEL_3;
    }

LABEL_13:
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PHPersonChangeRequest.m" lineNumber:1409 description:{@"Invalid parameter not satisfying: %@", @"relationType"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((v8 - 3) > 0xFFFDu || v11)
  {
    v12 = MEMORY[0x1E69BE780];
    if (v11)
    {
      v13 = v11;
      goto LABEL_9;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PHPersonChangeRequest.m" lineNumber:1410 description:{@"Invalid parameter not satisfying: %@", @"relatedPerson || (relationType == PHSearchEntityPersonRelationTypeMe || relationType == PHSearchEntityPersonRelationTypeSelf)"}];

    v12 = MEMORY[0x1E69BE780];
  }

  v13 = self;
LABEL_9:
  v15 = [(PHChangeRequest *)v13 uuid];
  v16 = [v12 personRelationDictionaryForRelationWithType:v8 label:v19 confidence:v15 relatedPersonUUID:a5];

  [(NSMutableArray *)self->_searchEntityRelationsToSet addObject:v16];
  [(PHChangeRequest *)self didMutate];
}

- (void)_setGraphDedupePersons:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  graphDedupePersonUUIDs = self->_graphDedupePersonUUIDs;
  if (!graphDedupePersonUUIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_graphDedupePersonUUIDs;
    self->_graphDedupePersonUUIDs = v6;

    graphDedupePersonUUIDs = self->_graphDedupePersonUUIDs;
  }

  [(NSMutableSet *)graphDedupePersonUUIDs removeAllObjects];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = self->_graphDedupePersonUUIDs;
        v14 = [*(*(&v15 + 1) + 8 * v12) uuid];
        [(NSMutableSet *)v13 addObject:v14];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  if ([(NSMutableSet *)self->_graphDedupePersonUUIDs count])
  {
    [(PHChangeRequest *)self didMutate];
  }
}

- (void)addInvalidMergeCandidatePersons:(id)a3
{
  v4 = a3;
  [(PHPersonChangeRequest *)self removeMergeCandidatePersons:v4];
  v6 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:v4];

  if (v6)
  {
    [(PHChangeRequest *)self didMutate];
    v5 = [(PHPersonChangeRequest *)self _mutableInvalidMergeCandidateObjectIDsAndUUIDs];
    [v5 addObjectsFromArray:v6];
  }
}

- (void)removeMergeCandidateWithConfidencePersons:(id)a3
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:a3];
  if (v4)
  {
    v6 = v4;
    [(PHChangeRequest *)self didMutate];
    v5 = [(PHPersonChangeRequest *)self _mutableMergeCandidateWithConfidenceObjectIDsAndUUIDs];
    [v5 removeObjectsInArray:v6];

    v4 = v6;
  }
}

- (void)addMergeCandidateWithConfidencePersons:(id)a3
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:a3];
  if (v4)
  {
    v6 = v4;
    [(PHChangeRequest *)self didMutate];
    v5 = [(PHPersonChangeRequest *)self _mutableMergeCandidateWithConfidenceObjectIDsAndUUIDs];
    [v5 addObjectsFromArray:v6];

    v4 = v6;
  }
}

- (void)rejectMergeCandidatePersons:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(PHPersonChangeRequest *)self addInvalidMergeCandidatePersons:v4];
  if (!self->_rejectedMergeCandidatePersonUUIDs)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    rejectedMergeCandidatePersonUUIDs = self->_rejectedMergeCandidatePersonUUIDs;
    self->_rejectedMergeCandidatePersonUUIDs = v5;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = self->_rejectedMergeCandidatePersonUUIDs;
        v13 = [*(*(&v14 + 1) + 8 * v11) uuid];
        [(NSMutableSet *)v12 addObject:v13];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)removeMergeCandidatePersons:(id)a3
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:a3];
  if (v4)
  {
    v6 = v4;
    [(PHChangeRequest *)self didMutate];
    v5 = [(PHPersonChangeRequest *)self _mutableMergeCandidateObjectIDsAndUUIDs];
    [v5 removeObjectsInArray:v6];

    v4 = v6;
  }
}

- (void)addMergeCandidatePersons:(id)a3
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:a3];
  if (v4)
  {
    v6 = v4;
    [(PHChangeRequest *)self didMutate];
    v5 = [(PHPersonChangeRequest *)self _mutableMergeCandidateObjectIDsAndUUIDs];
    [v5 addObjectsFromArray:v6];

    v4 = v6;
  }
}

- (void)mergePersons:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_personUUIDsToMerge)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    personUUIDsToMerge = self->_personUUIDsToMerge;
    self->_personUUIDsToMerge = v5;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = self->_personUUIDsToMerge;
        v13 = [*(*(&v14 + 1) + 8 * v11) uuid];
        [(NSMutableArray *)v12 addObject:v13];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [(PHPersonChangeRequest *)self setVerified:1];
  [(PHChangeRequest *)self didMutate];
}

- (void)persistSuggestionForClient:(unint64_t)a3
{
  if (a3 != 1)
  {
    if (a3 - 2 < 4)
    {
      v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Invalid PHPeopleSuggestionClient enum chosen to persist" userInfo:{0, v3, v4}];
      objc_exception_throw(v5);
    }

    a3 = 0;
  }

  [(PHPersonChangeRequest *)self setSuggestedForClientType:a3];
}

- (void)removeRejectedFaces:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:v4];
  if (v5)
  {
    [(PHChangeRequest *)self didMutate];
    v6 = [(PHPersonChangeRequest *)self _mutableRejectedFacesObjectIDsAndUUIDs];
    [v6 removeObjectsInArray:v5];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
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

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = [(PHPersonChangeRequest *)self _mutableRequiringFaceCropGenerationFacesUUIDs];
        v14 = [v12 uuid];
        [v13 removeObject:v14];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)addRejectedFaces:(id)a3 forCluster:(BOOL)a4
{
  v4 = a4;
  v51 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:v6];
  if (v7)
  {
    [(PHChangeRequest *)self didMutate];
    v8 = [(PHPersonChangeRequest *)self _mutableRejectedFacesObjectIDsAndUUIDs];
    [v8 addObjectsFromArray:v7];
  }

  v32 = v7;
  [(PHPersonChangeRequest *)self removeFaces:v6];
  if (v4)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v39 objects:v50 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v40;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v39 + 1) + 8 * i);
          v15 = [(PHPersonChangeRequest *)self _mutableRequiringFaceCropGenerationFacesUUIDs];
          v16 = [v14 uuid];
          [v15 addObject:v16];
        }

        v11 = [v9 countByEnumeratingWithState:&v39 objects:v50 count:16];
      }

      while (v11);
    }
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v17 = v6;
  v18 = [v17 countByEnumeratingWithState:&v35 objects:v49 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v36;
    v33 = v17;
    v34 = self;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v36 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v35 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = v22;
          if ([v23 isTorsoOnly])
          {
            v24 = PLPhotoKitGetLog();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              v25 = [v23 uuid];
              v26 = [(PHPersonChangeRequest *)v34 targetPerson];
              v27 = [v26 uuid];
              [MEMORY[0x1E696AF00] callStackSymbols];
              v29 = v28 = v20;
              *buf = 138543874;
              v44 = v25;
              v45 = 2114;
              v46 = v27;
              v47 = 2112;
              v48 = v29;
              _os_log_impl(&dword_19C86F000, v24, OS_LOG_TYPE_ERROR, "Warning: rejecting torso-only face %{public}@ for person %{public}@ is not cloud-syncable. Call stack: %@", buf, 0x20u);

              v20 = v28;
              v17 = v33;
              self = v34;
            }
          }
        }

        v30 = [(PHPersonChangeRequest *)self _mutableRequiringNewUnverifiedPersonFacesUUIDs];
        v31 = [v22 uuid];
        [v30 addObject:v31];
      }

      v19 = [v17 countByEnumeratingWithState:&v35 objects:v49 count:16];
    }

    while (v19);
  }
}

- (void)setKeyFaceForUserPick:(id)a3 forCluster:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(PHPersonChangeRequest *)self setVerifiedType:1];
  [(PHPersonChangeRequest *)self _setKeyFace:v6 forCluster:v4 pickSource:1];
}

- (void)_setKeyFace:(id)a3 forCluster:(BOOL)a4 pickSource:(signed __int16)a5
{
  v5 = a5;
  v6 = a4;
  v22[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PHPersonChangeRequest.m" lineNumber:1081 description:{@"keyFace has incorrect class: %@", v9}];

    if (!v9)
    {
      goto LABEL_10;
    }
  }

  [(PHChangeRequest *)self didMutate];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = PLObjectIDOrUUIDFromPHObject(v9);
  [v10 addObject:v11];
  v12 = MEMORY[0x1E695DFA8];
  v13 = [(PHPersonChangeRequest *)self _existentFaceObjectIDs];
  v14 = [v12 setWithArray:v13];

  v15 = [(PHRelationshipChangeRequestHelper *)self->_detectedFacesHelper mutableObjectIDsAndUUIDs];
  if ([v15 count])
  {
    v16 = [MEMORY[0x1E695DFD8] setWithArray:v15];
    [v14 unionSet:v16];
  }

  if (([v14 containsObject:v11] & 1) == 0)
  {
    v22[0] = v9;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    [(PHPersonChangeRequest *)self addFaces:v17];
  }

  if (v10)
  {
    v18 = [(PHPersonChangeRequest *)self _mutableKeyFaceObjectIDsAndUUIDs];
    [v18 addObjectsFromArray:v10];
  }

LABEL_10:
  if (v6)
  {
    v19 = [(PHPersonChangeRequest *)self _mutableRequiringFaceCropGenerationFacesUUIDs];
    v20 = [v9 uuid];
    [v19 addObject:v20];
  }

  [(PHPersonChangeRequest *)self setKeyFacePickSource:v5];
}

- (void)setTemporalFaces:(id)a3
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:a3];
  if (!v4)
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v9 = v4;
  [(PHChangeRequest *)self didMutate];
  temporalFacesHelper = self->_temporalFacesHelper;
  v6 = [(PHPersonChangeRequest *)self _existentTemporalFaceObjectIDs];
  [(PHRelationshipChangeRequestHelper *)temporalFacesHelper prepareIfNeededWithExistentObjectIDs:v6];

  v7 = self->_temporalFacesHelper;
  v8 = [v9 mutableCopy];
  [(PHRelationshipChangeRequestHelper *)v7 setMutableObjectIDsAndUUIDs:v8];
}

- (void)removeTemporalFaces:(id)a3
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:a3];
  if (v4)
  {
    v6 = v4;
    [(PHChangeRequest *)self didMutate];
    v5 = [(PHPersonChangeRequest *)self _mutableTemporalFaceObjectIDsAndUUIDs];
    [v5 removeObjectsInArray:v6];

    v4 = v6;
  }
}

- (void)addTemporalFaces:(id)a3
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:a3];
  if (v4)
  {
    v6 = v4;
    [(PHChangeRequest *)self didMutate];
    v5 = [(PHPersonChangeRequest *)self _mutableTemporalFaceObjectIDsAndUUIDs];
    [v5 addObjectsFromArray:v6];

    v4 = v6;
  }
}

- (void)removeFaces:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(PHPersonChangeRequest *)self _addObjectIDsOfFaces:v5 toFaceIDs:v6 temporalIDs:v7];

  if ([v6 count])
  {
    v8 = [(PHPersonChangeRequest *)self _mutableFaceObjectIDsAndUUIDs];
    v9 = [(PHPersonChangeRequest *)self _removeObjects:v6 fromArray:v8];
  }

  else
  {
    v9 = 0;
  }

  if ([v7 count])
  {
    v10 = [(PHPersonChangeRequest *)self _mutableTemporalFaceObjectIDsAndUUIDs];
    v11 = [(PHPersonChangeRequest *)self _removeObjects:v7 fromArray:v10];
  }

  else
  {
    v11 = 0;
  }

  if (!v9 && !v11)
  {
    v12 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, "PHPersonChangeRequest removeFaces: nothing removed", v13, 2u);
    }
  }
}

- (BOOL)_removeObjects:(id)a3 fromArray:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count] && (v8 = objc_msgSend(v7, "count"), objc_msgSend(v7, "removeObjectsInArray:", v6), objc_msgSend(v7, "count") < v8))
  {
    [(PHChangeRequest *)self didMutate];
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)addFaces:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v9 = objc_alloc_init(v4);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(PHPersonChangeRequest *)self _addObjectIDsOfFaces:v5 toFaceIDs:v9 temporalIDs:v6];

  if ([v9 count])
  {
    [(PHChangeRequest *)self didMutate];
    v7 = [(PHPersonChangeRequest *)self _mutableFaceObjectIDsAndUUIDs];
    [v7 addObjectsFromArray:v9];
  }

  if ([v6 count])
  {
    [(PHChangeRequest *)self didMutate];
    v8 = [(PHPersonChangeRequest *)self _mutableTemporalFaceObjectIDsAndUUIDs];
    [v8 addObjectsFromArray:v6];
  }
}

- (void)_addObjectIDsOfFaces:(id)a3 toFaceIDs:(id)a4 temporalIDs:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v23;
    *&v11 = 138543362;
    v21 = v11;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = PLObjectIDOrUUIDFromPHObject(v15);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v15 duration];
          if (v17 <= 0.0)
          {
            v18 = v8;
          }

          else
          {
            v18 = v9;
          }
        }

        else
        {
          v19 = PLPhotoKitGetLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [v16 description];
            *buf = v21;
            v27 = v20;
            _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_DEFAULT, "PHPersonChangeRequest assuming object is a normal face: %{public}@", buf, 0xCu);
          }

          v18 = v8;
        }

        [v18 addObject:{v16, v21}];
      }

      v12 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v12);
  }
}

- (id)_mutableRequiringNewUnverifiedPersonFacesUUIDs
{
  faceUUIDsRequiringNewUnverifiedPerson = self->_faceUUIDsRequiringNewUnverifiedPerson;
  if (!faceUUIDsRequiringNewUnverifiedPerson)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v5 = self->_faceUUIDsRequiringNewUnverifiedPerson;
    self->_faceUUIDsRequiringNewUnverifiedPerson = v4;

    faceUUIDsRequiringNewUnverifiedPerson = self->_faceUUIDsRequiringNewUnverifiedPerson;
  }

  return faceUUIDsRequiringNewUnverifiedPerson;
}

- (id)_mutableRequiringFaceCropGenerationFacesUUIDs
{
  faceUUIDsRequiringFaceCropGeneration = self->_faceUUIDsRequiringFaceCropGeneration;
  if (!faceUUIDsRequiringFaceCropGeneration)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v5 = self->_faceUUIDsRequiringFaceCropGeneration;
    self->_faceUUIDsRequiringFaceCropGeneration = v4;

    faceUUIDsRequiringFaceCropGeneration = self->_faceUUIDsRequiringFaceCropGeneration;
  }

  return faceUUIDsRequiringFaceCropGeneration;
}

- (id)_mutableInvalidMergeCandidateObjectIDsAndUUIDs
{
  invalidMergeCandidatesHelper = self->_invalidMergeCandidatesHelper;
  v4 = [(PHPersonChangeRequest *)self _existentInvalidMergeCandidateObjectIDs];
  [(PHRelationshipChangeRequestHelper *)invalidMergeCandidatesHelper prepareIfNeededWithExistentObjectIDs:v4];

  v5 = self->_invalidMergeCandidatesHelper;

  return [(PHRelationshipChangeRequestHelper *)v5 mutableObjectIDsAndUUIDs];
}

- (id)_mutableMergeCandidateWithConfidenceObjectIDsAndUUIDs
{
  mergeCandidatesWithConfidenceHelper = self->_mergeCandidatesWithConfidenceHelper;
  v4 = [(PHPersonChangeRequest *)self _existentMergeCandidateWithConfidenceObjectIDs];
  [(PHRelationshipChangeRequestHelper *)mergeCandidatesWithConfidenceHelper prepareIfNeededWithExistentObjectIDs:v4];

  v5 = self->_mergeCandidatesWithConfidenceHelper;

  return [(PHRelationshipChangeRequestHelper *)v5 mutableObjectIDsAndUUIDs];
}

- (id)_mutableMergeCandidateObjectIDsAndUUIDs
{
  mergeCandidatesHelper = self->_mergeCandidatesHelper;
  v4 = [(PHPersonChangeRequest *)self _existentMergeCandidateObjectIDs];
  [(PHRelationshipChangeRequestHelper *)mergeCandidatesHelper prepareIfNeededWithExistentObjectIDs:v4];

  v5 = self->_mergeCandidatesHelper;

  return [(PHRelationshipChangeRequestHelper *)v5 mutableObjectIDsAndUUIDs];
}

- (id)_mutableRejectedFacesObjectIDsAndUUIDs
{
  rejectedFacesHelper = self->_rejectedFacesHelper;
  v4 = [(PHPersonChangeRequest *)self _existentRejectedFaceObjectIDs];
  [(PHRelationshipChangeRequestHelper *)rejectedFacesHelper prepareIfNeededWithExistentObjectIDs:v4];

  v5 = self->_rejectedFacesHelper;

  return [(PHRelationshipChangeRequestHelper *)v5 mutableObjectIDsAndUUIDs];
}

- (id)_mutableKeyFaceObjectIDsAndUUIDs
{
  [(PHPersonChangeRequest *)self _prepareKeyFaceHelperIfNeeded];
  keyFaceHelper = self->_keyFaceHelper;

  return [(PHRelationshipChangeRequestHelper *)keyFaceHelper mutableObjectIDsAndUUIDs];
}

- (id)_mutableTemporalFaceObjectIDsAndUUIDs
{
  temporalFacesHelper = self->_temporalFacesHelper;
  v4 = [(PHPersonChangeRequest *)self _existentTemporalFaceObjectIDs];
  [(PHRelationshipChangeRequestHelper *)temporalFacesHelper prepareIfNeededWithExistentObjectIDs:v4];

  v5 = self->_temporalFacesHelper;

  return [(PHRelationshipChangeRequestHelper *)v5 mutableObjectIDsAndUUIDs];
}

- (id)_mutableFaceObjectIDsAndUUIDs
{
  detectedFacesHelper = self->_detectedFacesHelper;
  v4 = [(PHPersonChangeRequest *)self _existentFaceObjectIDs];
  [(PHRelationshipChangeRequestHelper *)detectedFacesHelper prepareIfNeededWithExistentObjectIDs:v4];

  v5 = self->_detectedFacesHelper;

  return [(PHRelationshipChangeRequestHelper *)v5 mutableObjectIDsAndUUIDs];
}

- (void)_prepareKeyFaceHelperIfNeeded
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHRelationshipChangeRequestHelper *)self->_keyFaceHelper originalObjectIDs];

  if (!v3)
  {
    [(PHRelationshipChangeRequestHelper *)self->_keyFaceHelper setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
  }

  v4 = [(PHRelationshipChangeRequestHelper *)self->_keyFaceHelper mutableObjectIDsAndUUIDs];

  if (!v4)
  {
    keyFaceHelper = self->_keyFaceHelper;
    v7 = [(PHRelationshipChangeRequestHelper *)keyFaceHelper originalObjectIDs];
    v6 = [v7 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)keyFaceHelper setMutableObjectIDsAndUUIDs:v6];
  }
}

- (id)_existentInvalidMergeCandidateObjectIDs
{
  v3 = [(PHPersonChangeRequest *)self targetPerson];
  if (v3)
  {
    v4 = [(PHPersonChangeRequest *)self targetPerson];
    v5 = [(PHPersonChangeRequest *)self _noLimitsPersonFetchOptions];
    v6 = [PHQuery queryForInvalidMergeCandidatePersonsForPerson:v4 options:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [PHRelationshipChangeRequestHelper existentObjectIDsUsingQuery:v6];

  return v7;
}

- (id)_existentMergeCandidateWithConfidenceObjectIDs
{
  v3 = [(PHPersonChangeRequest *)self targetPerson];
  if (v3)
  {
    v4 = [(PHPersonChangeRequest *)self targetPerson];
    v5 = [(PHPersonChangeRequest *)self _noLimitsPersonFetchOptions];
    v6 = [PHQuery queryForMergeCandidateWithConfidencePersonsForPerson:v4 options:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [PHRelationshipChangeRequestHelper existentObjectIDsUsingQuery:v6];

  return v7;
}

- (id)_existentMergeCandidateObjectIDs
{
  v3 = [(PHPersonChangeRequest *)self targetPerson];
  if (v3)
  {
    v4 = [(PHPersonChangeRequest *)self targetPerson];
    v5 = [(PHPersonChangeRequest *)self _noLimitsPersonFetchOptions];
    v6 = [PHQuery queryForMergeCandidatePersonsForPerson:v4 options:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [PHRelationshipChangeRequestHelper existentObjectIDsUsingQuery:v6];

  return v7;
}

- (id)_noLimitsPersonFetchOptions
{
  v2 = [(PHChangeRequest *)self photoLibrary];
  v3 = [v2 librarySpecificFetchOptions];

  [v3 setMinimumUnverifiedFaceCount:0];
  [v3 setMinimumVerifiedFaceCount:0];
  [v3 setIncludedDetectionTypes:&unk_1F102E0F0];

  return v3;
}

- (id)_existentRejectedFaceObjectIDs
{
  v3 = [(PHPersonChangeRequest *)self targetPerson];

  if (v3)
  {
    v4 = [(PHChangeRequest *)self photoLibrary];
    v5 = [v4 librarySpecificFetchOptions];

    [v5 setIsExclusivePredicate:1];
    [v5 setIncludeTorsoAndFaceDetectionData:1];
    v6 = [(PHPersonChangeRequest *)self targetPerson];
    v7 = [PHQuery queryForRejectedFacesOnPerson:v6 options:v5];
  }

  else
  {
    v7 = 0;
  }

  v8 = [PHRelationshipChangeRequestHelper existentObjectIDsUsingQuery:v7];

  return v8;
}

- (id)_existentTemporalFaceObjectIDs
{
  v3 = [(PHPersonChangeRequest *)self targetPerson];

  if (v3)
  {
    v4 = [(PHChangeRequest *)self photoLibrary];
    v5 = [v4 librarySpecificFetchOptions];

    [v5 setIsExclusivePredicate:1];
    [v5 setIncludeMediaAnalysisProcessingRangeTypes:2];
    [v5 setIncludeTorsoAndFaceDetectionData:1];
    v6 = [(PHPersonChangeRequest *)self targetPerson];
    v7 = [PHQuery queryForFacesForPerson:v6 options:v5];
  }

  else
  {
    v7 = 0;
  }

  v8 = [PHRelationshipChangeRequestHelper existentObjectIDsUsingQuery:v7];

  return v8;
}

- (id)_existentFaceObjectIDs
{
  v3 = [(PHPersonChangeRequest *)self targetPerson];

  if (v3)
  {
    v4 = [(PHChangeRequest *)self photoLibrary];
    v5 = [v4 librarySpecificFetchOptions];

    [v5 setIsExclusivePredicate:1];
    [v5 setIncludeTorsoAndFaceDetectionData:1];
    v6 = [(PHPersonChangeRequest *)self targetPerson];
    v7 = [PHQuery queryForFacesForPerson:v6 options:v5];
  }

  else
  {
    v7 = 0;
  }

  v8 = [PHRelationshipChangeRequestHelper existentObjectIDsUsingQuery:v7];

  return v8;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PHChangeRequest *)self helper];
  v8 = [v7 mutations];
  v9 = [v8 objectForKey:@"verifiedType"];

  if (v9)
  {
    v10 = [v9 intValue];
  }

  else
  {
    v10 = 0;
  }

  v11 = MEMORY[0x1E69BE608];
  v12 = [v6 managedObjectContext];
  v13 = [(PHChangeRequest *)self uuid];
  v14 = [v11 insertIntoManagedObjectContext:v12 withPersonUUID:v13 fullName:&stru_1F0FC60C8 verifiedType:v10];

  if (a4 && !v14)
  {
    v15 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A578];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create person"];
    v20[0] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    *a4 = [v15 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v17];
  }

  return v14;
}

- (BOOL)validateInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = [(PHPersonChangeRequest *)self detectionType];
  v6 = v5;
  if (a4 && v5 == 2)
  {
    v7 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A278];
    v11[0] = @"PHDetectionTypePet is not a valid value to assign to PHPerson.detectionType";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *a4 = [v7 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3111 userInfo:v8];
  }

  return v6 != 2;
}

- (BOOL)_ensureModelConsistencyForVerifiedTypePromotion:(id)a3 originalVerifiedType:(int)a4 error:(id *)a5
{
  v6 = *&a4;
  v46 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 keyFace];
  if (v8)
  {
    if (!v6)
    {
      [v7 disconnectFaceGroup];
    }

    if ([v7 verifiedType] == 2)
    {
      [v8 setEffectiveNameSource:5];
      [v8 setConfirmedFaceCropGenerationState:1];
    }

    else if ([v7 verifiedType] == 1)
    {
      [v7 setKeyFacePickSource:1];
      if ([v8 nameSource] != 1)
      {
        [v8 setEffectiveNameSource:1];
        [v8 setConfirmedFaceCropGenerationState:1];
      }

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v18 = [v7 detectedFaces];
      v19 = [v18 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v37;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v37 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v36 + 1) + 8 * i);
            if ([v23 nameSource] == 5)
            {
              [v23 setEffectiveNameSource:0];
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v20);
      }

      v24 = [v7 managedObjectContext];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v25 = [v7 faceCrops];
      v26 = [v25 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v33;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v33 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v32 + 1) + 8 * j);
            if ([v30 type] == 5)
            {
              [v24 deleteObject:v30];
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v32 objects:v40 count:16];
        }

        while (v27);
      }
    }
  }

  else
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = [v7 personUUID];
    v11 = [v9 stringWithFormat:@"keyFace is nil for person %@ being promoted from %d to %d. Unable to request face crop generation.", v10, v6, objc_msgSend(v7, "verifiedType")];

    v12 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v45 = v11;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E69BFF48];
    v42 = *MEMORY[0x1E696A278];
    v43 = v11;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v16 = [v13 errorWithDomain:v14 code:73001 userInfo:v15];

    v17 = PHErrorFromPLError(v16);
    if (a5)
    {
      v17 = v17;
      *a5 = v17;
    }
  }

  return v8 != 0;
}

- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5
{
  v267 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(NSMutableArray *)v8 photoLibrary];
  v11 = [v10 managedObjectContext];

  v12 = [(NSMutableArray *)v8 verifiedType];
  v255 = 0;
  v13 = [(PHPersonChangeRequest *)self _shouldPromotePerson:v8 toVerifiedType:&v255];
  if (v13)
  {
    [(NSMutableArray *)v8 setEffectiveVerifiedType:v255];
  }

  v14 = [(PHChangeRequest *)self helper];
  v254 = 0;
  v15 = [v14 applyMutationsToManagedObject:v8 error:&v254];
  v16 = v254;

  if (!v15)
  {
    v23 = v16;
    goto LABEL_77;
  }

  v199 = v13;
  v211 = [(NSMutableArray *)v8 keyFace];
  v17 = [(PHPersonChangeRequest *)self keyFaceHelper];
  v18 = [v17 mutableObjectIDsAndUUIDs];

  v19 = self;
  v197 = v12;
  if (v18)
  {
    [v17 setAllowsInsert:1];
    v20 = [MEMORY[0x1E69BE3D0] entityName];
    [v17 setDestinationEntityName:v20];

    v253 = v16;
    v21 = [v17 applyMutationsToManagedObjectToOneRelationship:v8 error:&v253];
    v22 = v253;

    v198 = v21;
    v16 = v22;
  }

  else
  {
    v198 = 0;
    LOBYTE(v21) = 1;
  }

  obj = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v24 = [(PHPersonChangeRequest *)v19 detectedFacesHelper];
  v215 = v19;
  v216 = v8;
  v212 = v11;
  v210 = v24;
  if ((v21 & 1) == 0)
  {
    v40 = [(PHPersonChangeRequest *)v19 temporalFacesHelper];
    v39 = v19;
    goto LABEL_22;
  }

  v25 = v24;
  v26 = [v24 mutableObjectIDsAndUUIDs];

  if (!v26)
  {
    v40 = [(PHPersonChangeRequest *)v19 temporalFacesHelper];
    goto LABEL_82;
  }

  [v25 setAllowsInsert:1];
  [v25 setAllowsMove:0];
  [v25 setAllowsRemove:1];
  v27 = [MEMORY[0x1E69BE3D0] entityName];
  [v25 setDestinationEntityName:v27];

  v28 = [(NSMutableArray *)v8 mutableFaces];
  v252 = v16;
  v29 = [v25 applyMutationsToManagedObject:v8 unorderedMutableChildren:v28 error:&v252];
  v30 = v252;

  if (v29)
  {
    v31 = [v28 allObjects];
    [obj addObjectsFromArray:v31];
  }

  v32 = [(NSMutableArray *)v8 keyFace];
  v33 = v8;
  if (v32)
  {
    v34 = v32;
    v35 = [(NSMutableArray *)v8 keyFace];
    v36 = [v28 containsObject:v35];

    if ((v36 & 1) == 0)
    {
      if ([(NSMutableArray *)v33 keyFacePickSource]== 1)
      {
        v37 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = [(NSMutableArray *)v33 personUUID];
          *buf = 138543362;
          v262 = v38;
          _os_log_impl(&dword_19C86F000, v37, OS_LOG_TYPE_ERROR, "Resetting user-picked keyFace on person %{public}@ because it's not in the list of faces", buf, 0xCu);
        }
      }

      [(NSMutableArray *)v33 setKeyFace:0 pickSource:0];
    }
  }

  v39 = v215;
  v40 = [(PHPersonChangeRequest *)v215 temporalFacesHelper];
  v16 = v30;
  v8 = v33;
  v11 = v212;
  if ((v29 & 1) == 0)
  {
LABEL_22:
    v208 = [(PHPersonChangeRequest *)v39 rejectedFacesHelper];
    v23 = v16;
    v41 = v39;
    goto LABEL_23;
  }

LABEL_82:
  v100 = [v40 mutableObjectIDsAndUUIDs];

  if (v100)
  {
    [v40 setAllowsInsert:1];
    [v40 setAllowsMove:0];
    [v40 setAllowsRemove:1];
    v101 = [MEMORY[0x1E69BE3D0] entityName];
    [v40 setDestinationEntityName:v101];

    v102 = [(NSMutableArray *)v8 mutableTemporalFaces];
    v251 = v16;
    v103 = [v40 applyMutationsToManagedObject:v8 unorderedMutableChildren:v102 error:&v251];
    v23 = v251;

    if (v103)
    {
      v104 = [v102 allObjects];
      [obj addObjectsFromArray:v104];
    }

    v105 = [(PHPersonChangeRequest *)v215 rejectedFacesHelper];
    if (v103)
    {
      v16 = v23;
      v41 = v215;
      goto LABEL_88;
    }

    v208 = v105;
    v41 = v215;
LABEL_23:
    v209 = v40;
    v206 = [(PHPersonChangeRequest *)v41 mergeCandidatesHelper];
    goto LABEL_24;
  }

  v41 = v215;
  v105 = [(PHPersonChangeRequest *)v215 rejectedFacesHelper];
LABEL_88:
  v106 = v105;
  v107 = [v105 mutableObjectIDsAndUUIDs];

  v201 = v9;
  v208 = v106;
  v209 = v40;
  if (v107)
  {
    [v106 setAllowsInsert:1];
    [v106 setAllowsMove:0];
    [v106 setAllowsRemove:1];
    v108 = [MEMORY[0x1E69BE3D0] entityName];
    [v106 setDestinationEntityName:v108];

    v109 = [(NSMutableArray *)v8 mutableRejectedFaces];
    v250 = v16;
    v193 = [v106 applyMutationsToManagedObject:v8 unorderedMutableChildren:v109 error:&v250];
    v203 = v250;

    v110 = [(NSMutableArray *)v8 keyFace];
    v111 = v8;
    if (v110)
    {
      v112 = v110;
      v113 = [(NSMutableArray *)v8 keyFace];
      v114 = [v109 containsObject:v113];

      if (v114)
      {
        if ([(NSMutableArray *)v111 keyFacePickSource]== 1)
        {
          v115 = PLPhotoKitGetLog();
          if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
          {
            v116 = [(NSMutableArray *)v111 personUUID];
            *buf = 138543362;
            v262 = v116;
            _os_log_impl(&dword_19C86F000, v115, OS_LOG_TYPE_ERROR, "Resetting user-picked keyFace on person %{public}@ because it's in the list of rejected faces", buf, 0xCu);
          }
        }

        [(NSMutableArray *)v111 setKeyFace:0 pickSource:0];
      }
    }

    v207 = v109;
    v248 = 0u;
    v249 = 0u;
    v246 = 0u;
    v247 = 0u;
    v117 = [(NSMutableArray *)v111 rejectedFaces];
    v118 = [v117 countByEnumeratingWithState:&v246 objects:v266 count:16];
    if (v118)
    {
      v119 = v118;
      v120 = *v247;
      do
      {
        for (i = 0; i != v119; ++i)
        {
          if (*v247 != v120)
          {
            objc_enumerationMutation(v117);
          }

          v122 = *(*(&v246 + 1) + 8 * i);
          v123 = [(PHPersonChangeRequest *)v215 _mutableRequiringFaceCropGenerationFacesUUIDs];
          v124 = [v122 uuid];
          v125 = [v123 containsObject:v124];

          if (v125)
          {
            [v122 addRejectedPersonNeedingFaceCrops:v216];
            [v122 addClusterRejectedPerson:v216];
          }

          v126 = [(PHPersonChangeRequest *)v215 _mutableRejectedFacesObjectIDsAndUUIDs];
          v127 = [v122 uuid];
          v128 = [v126 containsObject:v127];

          if (v128)
          {
            v129 = [v122 associatedAssetForFaceOrTorso:0 orTemporal:0];
            v130 = [MEMORY[0x1E695DF00] date];
            [v129 setModificationDate:v130];
          }
        }

        v119 = [v117 countByEnumeratingWithState:&v246 objects:v266 count:16];
      }

      while (v119);
    }

    v41 = v215;
    v131 = [(PHPersonChangeRequest *)v215 mergeCandidatesHelper];
    v132 = v131;
    if (v193)
    {
      v194 = v17;
      v9 = v201;
      v16 = v203;
      v8 = v216;
      v11 = v212;
      goto LABEL_111;
    }

    v206 = v131;
    v8 = v216;
    v9 = v201;
    v23 = v203;
    v11 = v212;
LABEL_24:
    v42 = [(PHPersonChangeRequest *)v41 mergeCandidatesWithConfidenceHelper];
    goto LABEL_25;
  }

  v194 = v17;
  v132 = [(PHPersonChangeRequest *)v41 mergeCandidatesHelper];
LABEL_111:
  v133 = [v132 mutableObjectIDsAndUUIDs];

  v206 = v132;
  if (v133)
  {
    [v132 setAllowsInsert:1];
    [v132 setAllowsMove:0];
    [v132 setAllowsRemove:1];
    v134 = [MEMORY[0x1E69BE608] entityName];
    [v132 setDestinationEntityName:v134];

    v135 = [(NSMutableArray *)v8 mutableMergeCandidates];
    v245 = v16;
    v136 = [v132 applyMutationsToManagedObject:v8 unorderedMutableChildren:v135 error:&v245];
    v23 = v245;

    v42 = [(PHPersonChangeRequest *)v41 mergeCandidatesWithConfidenceHelper];
    if (v136)
    {
      v16 = v23;
      goto LABEL_116;
    }

    v17 = v194;
LABEL_25:
    v43 = [(PHPersonChangeRequest *)v41 invalidMergeCandidatesHelper];
    v44 = 0;
    goto LABEL_26;
  }

  v42 = [(PHPersonChangeRequest *)v41 mergeCandidatesWithConfidenceHelper];
LABEL_116:
  v17 = v194;
  v137 = [v42 mutableObjectIDsAndUUIDs];

  if (v137)
  {
    [v42 setAllowsInsert:1];
    [v42 setAllowsMove:0];
    [v42 setAllowsRemove:1];
    v138 = [MEMORY[0x1E69BE608] entityName];
    [v42 setDestinationEntityName:v138];

    v139 = [(NSMutableArray *)v8 mutableMergeCandidatesWithConfidence];
    v244 = v16;
    v140 = [v42 applyMutationsToManagedObject:v8 unorderedMutableChildren:v139 error:&v244];
    v23 = v244;

    v43 = [(PHPersonChangeRequest *)v41 invalidMergeCandidatesHelper];
    if (!v140)
    {
      v44 = 0;
      goto LABEL_150;
    }

    v16 = v23;
  }

  else
  {
    v43 = [(PHPersonChangeRequest *)v41 invalidMergeCandidatesHelper];
  }

  v141 = [v43 mutableObjectIDsAndUUIDs];

  if (v141)
  {
    [v43 setAllowsInsert:1];
    [v43 setAllowsMove:0];
    [v43 setAllowsRemove:1];
    v142 = [MEMORY[0x1E69BE608] entityName];
    [v43 setDestinationEntityName:v142];

    v143 = [(NSMutableArray *)v8 mutableInvalidMergeCandidates];
    v243 = v16;
    v144 = [v43 applyMutationsToManagedObject:v8 unorderedMutableChildren:v143 error:&v243];
    v23 = v243;

    if (v144)
    {
      v204 = v23;
      v196 = a5;
      v8 = v216;
      goto LABEL_126;
    }

    v44 = 0;
    v8 = v216;
LABEL_150:
    v9 = v201;
    v11 = v212;
    goto LABEL_26;
  }

  v196 = a5;
  v204 = v16;
LABEL_126:
  v9 = v201;
  v11 = v212;
  v145 = v41;
  if ([(NSMutableSet *)v41->_rejectedMergeCandidatePersonUUIDs count])
  {
    [MEMORY[0x1E69BE608] personsWithUUIDs:v41->_rejectedMergeCandidatePersonUUIDs inManagedObjectContext:v212];
    v239 = 0u;
    v240 = 0u;
    v241 = 0u;
    v146 = v242 = 0u;
    v147 = [v146 countByEnumeratingWithState:&v239 objects:v265 count:16];
    if (v147)
    {
      v148 = v147;
      v149 = *v240;
      do
      {
        for (j = 0; j != v148; ++j)
        {
          if (*v240 != v149)
          {
            objc_enumerationMutation(v146);
          }

          v151 = *(*(&v239 + 1) + 8 * j);
          v152 = [v151 keyFace];
          [(NSMutableArray *)v216 rejectFaceIfPossible:v152 shouldCreateFaceCrop:1];

          v153 = [(NSMutableArray *)v216 keyFace];
          [v151 rejectFaceIfPossible:v153 shouldCreateFaceCrop:1];
        }

        v148 = [v146 countByEnumeratingWithState:&v239 objects:v265 count:16];
      }

      while (v148);
    }

    v145 = v215;
    v8 = v216;
    v9 = v201;
    v11 = v212;
  }

  if ([(NSMutableArray *)v145->_personUUIDsToMerge count])
  {
    v154 = [MEMORY[0x1E69BE608] personsWithUUIDs:v145->_personUUIDsToMerge inManagedObjectContext:v11];
    if (!v154)
    {
      v44 = 0;
      v41 = v215;
      a5 = v196;
      v23 = v204;
      goto LABEL_26;
    }

    v155 = v154;
    v156 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
    {
      personUUIDsToMerge = v215->_personUUIDsToMerge;
      nominalMergeTargetUUID = v215->_nominalMergeTargetUUID;
      *buf = 138412546;
      v262 = personUUIDsToMerge;
      v263 = 2112;
      v264 = nominalMergeTargetUUID;
      _os_log_impl(&dword_19C86F000, v156, OS_LOG_TYPE_DEFAULT, "Merging persons with UUIDs %@ and nominalMergeTargetUUID %@", buf, 0x16u);
    }

    if (v215->_nominalMergeTargetUUID)
    {
      v237 = 0u;
      v238 = 0u;
      v235 = 0u;
      v236 = 0u;
      v195 = v155;
      v159 = [v195 countByEnumeratingWithState:&v235 objects:v260 count:16];
      if (v159)
      {
        v160 = v159;
        v191 = v155;
        v161 = *v236;
        while (2)
        {
          for (k = 0; k != v160; ++k)
          {
            if (*v236 != v161)
            {
              objc_enumerationMutation(v195);
            }

            v163 = *(*(&v235 + 1) + 8 * k);
            v164 = [v163 personUUID];
            v165 = [v164 isEqualToString:v215->_nominalMergeTargetUUID];

            if (v165)
            {
              v192 = v163;
              goto LABEL_153;
            }
          }

          v160 = [v195 countByEnumeratingWithState:&v235 objects:v260 count:16];
          if (v160)
          {
            continue;
          }

          break;
        }

        v192 = 0;
LABEL_153:
        v9 = v201;
        v11 = v212;
        v155 = v191;
      }

      else
      {
        v192 = 0;
      }

      v8 = v216;
      v167 = [(NSMutableArray *)v216 personUUID];
      v168 = [v167 isEqualToString:v215->_nominalMergeTargetUUID];

      if (v168)
      {
        v169 = v216;
      }

      else
      {
        v169 = v192;
      }

      v170 = PLPhotoKitGetLog();
      v171 = v170;
      if (v169)
      {
        if (os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v166 = v169;
          v262 = v169;
          _os_log_impl(&dword_19C86F000, v171, OS_LOG_TYPE_DEFAULT, "Found nominal target %@ for merging", buf, 0xCu);
        }

        else
        {
          v166 = v169;
        }
      }

      else
      {
        if (os_log_type_enabled(v170, OS_LOG_TYPE_ERROR))
        {
          v172 = v215->_nominalMergeTargetUUID;
          *buf = 138412290;
          v262 = v172;
          _os_log_impl(&dword_19C86F000, v171, OS_LOG_TYPE_ERROR, "Attempting to merge persons with a nominal target identifier (%@) that does not match any of the persons being merged", buf, 0xCu);
        }

        v166 = 0;
      }
    }

    else
    {
      v166 = 0;
      v8 = v216;
    }

    [(NSMutableArray *)v8 prepareForUserInitiatedMergeWithPersons:v155];
    v173 = [(NSMutableArray *)v8 pickOptimalStateForUserInitiatedMergeWithPersons:v155 nominalTarget:v166];
    [(NSMutableArray *)v8 mergePersons:v155 withOptimalState:v173];

    v145 = v215;
  }

  v174 = [(NSMutableSet *)v145->_graphDedupePersonUUIDs count];
  v175 = v145;
  a5 = v196;
  if (v174)
  {
    v176 = [MEMORY[0x1E69BE608] personsWithUUIDs:v175->_graphDedupePersonUUIDs inManagedObjectContext:v11];
    v177 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v262 = v8;
      v263 = 2112;
      v264 = v176;
      _os_log_impl(&dword_19C86F000, v177, OS_LOG_TYPE_DEFAULT, "Deduping graph persons with target %@, dedupe persons %@", buf, 0x16u);
    }

    v234 = 0;
    v178 = [(NSMutableArray *)v8 dedupeGraphPersons:v176 error:&v234];
    v179 = v234;
    v180 = v179;
    if (!v178)
    {
      v188 = [v179 localizedDescription];
      v189 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:{@"%@", v188}];

      v190 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v190, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v262 = v188;
        _os_log_impl(&dword_19C86F000, v190, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v44 = 0;
      v23 = v189;
      v8 = v216;
      v9 = v201;
      v11 = v212;
      goto LABEL_187;
    }

    v175 = v215;
  }

  [(NSMutableArray *)v8 createUnverifiedPersonForRejectedFaceUUIDs:v175->_faceUUIDsRequiringNewUnverifiedPerson inManagedObjectContext:v11];
  if (v199)
  {
    v233 = v204;
    v44 = [(PHPersonChangeRequest *)v175 _ensureModelConsistencyForVerifiedTypePromotion:v8 originalVerifiedType:v197 error:&v233];
    v181 = v233;

    v23 = v181;
  }

  else
  {
    v44 = 1;
    v23 = v204;
  }

  if ((v44 & v198) != 1)
  {
LABEL_187:
    v41 = v215;
    goto LABEL_26;
  }

  v205 = v23;
  v182 = [(NSMutableArray *)v8 keyFace];
  v41 = v215;
  v183 = [(PHPersonChangeRequest *)v215 _mutableRequiringFaceCropGenerationFacesUUIDs];
  [v182 uuid];
  v185 = v184 = v8;
  if ([v183 containsObject:v185])
  {
    v186 = [(NSMutableArray *)v184 verifiedType];

    v187 = v186 == 1;
    v41 = v215;
    v8 = v184;
    v9 = v201;
    v23 = v205;
    if (v187)
    {
      [(NSMutableArray *)v8 setKeyFacePickSource:1];
      if ([v182 nameSource] != 1)
      {
        [v182 setEffectiveNameSource:1];
        [v182 setConfirmedFaceCropGenerationState:1];
      }

      if ([v211 nameSource] != 1)
      {
        [v211 setEffectiveNameSource:1];
        [v211 setConfirmedFaceCropGenerationState:1];
      }
    }
  }

  else
  {

    v8 = v184;
    v9 = v201;
    v23 = v205;
  }

  v44 = 1;
LABEL_26:

  if (!v44)
  {
LABEL_77:
    if (a5)
    {
      v98 = v23;
      v97 = 0;
      *a5 = v23;
    }

    else
    {
      v97 = 0;
    }

    goto LABEL_80;
  }

  v202 = v23;
  if (v41->_userFeedback)
  {
    v45 = [(NSMutableArray *)v8 userFeedbacks];
    v46 = [v45 _pl_filter:&__block_literal_global_25567];

    v47 = [MEMORY[0x1E69BE868] newestUserFeedbackInSet:v46];
    if (!v47)
    {
      v48 = MEMORY[0x1E69BE868];
      v49 = [(NSMutableArray *)v8 photoLibrary];
      v50 = [v49 managedObjectContext];
      v51 = [(PHUserFeedback *)v215->_userFeedback uuid];
      v47 = [v48 insertIntoManagedObjectContext:v50 withUUID:v51];

      [v47 setPerson:v8];
    }

    [v47 setType:{-[PHUserFeedback type](v215->_userFeedback, "type")}];
    [v47 setFeature:{-[PHUserFeedback feature](v215->_userFeedback, "feature")}];
    v52 = [(PHUserFeedback *)v215->_userFeedback context];
    [v47 setContext:v52];

    v53 = [(PHUserFeedback *)v215->_userFeedback lastModifiedDate];
    [v47 setLastModifiedDate:v53];

    v41 = v215;
  }

  if (v41->_didUnsetUserFeedback)
  {
    v231 = 0u;
    v232 = 0u;
    v229 = 0u;
    v230 = 0u;
    v54 = [(NSMutableArray *)v8 userFeedbacks];
    v55 = [v54 countByEnumeratingWithState:&v229 objects:v259 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v230;
      do
      {
        for (m = 0; m != v56; ++m)
        {
          if (*v230 != v57)
          {
            objc_enumerationMutation(v54);
          }

          v59 = *(*(&v229 + 1) + 8 * m);
          if (![v59 feature])
          {
            v60 = [(NSMutableArray *)v8 managedObjectContext];
            [v60 deleteObject:v59];
          }
        }

        v56 = [v54 countByEnumeratingWithState:&v229 objects:v259 count:16];
      }

      while (v56);
    }

    v41 = v215;
  }

  if (v41->_autonamingUserFeedbacks)
  {
    v200 = v9;
    [(NSMutableArray *)v8 userFeedbacks];
    v62 = v61 = v41;
    v63 = [v62 _pl_filter:&__block_literal_global_163];
    v64 = [v63 mutableCopy];

    v227 = 0u;
    v228 = 0u;
    v225 = 0u;
    v226 = 0u;
    obja = v61->_autonamingUserFeedbacks;
    v65 = [(NSSet *)obja countByEnumeratingWithState:&v225 objects:v258 count:16];
    if (v65)
    {
      v66 = v65;
      v67 = *v226;
      do
      {
        for (n = 0; n != v66; ++n)
        {
          if (*v226 != v67)
          {
            objc_enumerationMutation(obja);
          }

          v69 = *(*(&v225 + 1) + 8 * n);
          v70 = MEMORY[0x1E69BE868];
          v71 = [v69 uuid];
          v72 = [(NSMutableArray *)v8 photoLibrary];
          v73 = [v72 managedObjectContext];
          v74 = [v70 userFeedbackWithUUID:v71 inManagedObjectContext:v73];

          v8 = v216;
          if (!v74)
          {
            v75 = MEMORY[0x1E69BE868];
            v76 = [(NSMutableArray *)v216 photoLibrary];
            v77 = [v76 managedObjectContext];
            v78 = [v69 uuid];
            v74 = [v75 insertIntoManagedObjectContext:v77 withUUID:v78];

            v8 = v216;
            [v74 setPerson:v216];
          }

          [v74 setType:{objc_msgSend(v69, "type")}];
          [v74 setFeature:{objc_msgSend(v69, "feature")}];
          v79 = [v69 context];
          [v74 setContext:v79];

          v80 = [v69 lastModifiedDate];
          [v74 setLastModifiedDate:v80];

          [v64 removeObject:v74];
        }

        v66 = [(NSSet *)obja countByEnumeratingWithState:&v225 objects:v258 count:16];
      }

      while (v66);
    }

    v223 = 0u;
    v224 = 0u;
    v221 = 0u;
    v222 = 0u;
    v81 = v64;
    v82 = [v81 countByEnumeratingWithState:&v221 objects:v257 count:16];
    v9 = v200;
    if (v82)
    {
      v83 = v82;
      v84 = *v222;
      do
      {
        for (ii = 0; ii != v83; ++ii)
        {
          if (*v222 != v84)
          {
            objc_enumerationMutation(v81);
          }

          v86 = *(*(&v221 + 1) + 8 * ii);
          v87 = [(NSMutableArray *)v8 managedObjectContext];
          [v87 deleteObject:v86];
        }

        v83 = [v81 countByEnumeratingWithState:&v221 objects:v257 count:16];
      }

      while (v83);
    }

    v11 = v212;
    v41 = v215;
  }

  if (v41->_didUnsetAutonamingUserFeedbacks)
  {
    v219 = 0u;
    v220 = 0u;
    v217 = 0u;
    v218 = 0u;
    v88 = [(NSMutableArray *)v8 userFeedbacks];
    v89 = [v88 countByEnumeratingWithState:&v217 objects:v256 count:16];
    if (v89)
    {
      v90 = v89;
      v91 = *v218;
      do
      {
        for (jj = 0; jj != v90; ++jj)
        {
          if (*v218 != v91)
          {
            objc_enumerationMutation(v88);
          }

          v93 = *(*(&v217 + 1) + 8 * jj);
          if ([v93 feature] == 1 || objc_msgSend(v93, "feature") == 2)
          {
            v94 = [(NSMutableArray *)v8 managedObjectContext];
            [v94 deleteObject:v93];
          }
        }

        v90 = [v88 countByEnumeratingWithState:&v217 objects:v256 count:16];
      }

      while (v90);
    }

    v11 = v212;
    v41 = v215;
  }

  searchEntityRelationsToSet = v41->_searchEntityRelationsToSet;
  if (searchEntityRelationsToSet)
  {
    [MEMORY[0x1E69BE780] setPersonRelationsFromDictionaries:searchEntityRelationsToSet onPerson:v8];
  }

  searchEntityRelationsToRemove = v41->_searchEntityRelationsToRemove;
  if (searchEntityRelationsToRemove)
  {
    [MEMORY[0x1E69BE780] removePersonRelationsMatchingDictionaries:searchEntityRelationsToRemove onPerson:v8];
  }

  v97 = 1;
  v23 = v202;
LABEL_80:

  return v97;
}

BOOL __74__PHPersonChangeRequest_applyMutationsToManagedObject_photoLibrary_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 feature] == 1 || objc_msgSend(v2, "feature") == 2;

  return v3;
}

- (BOOL)_shouldPromotePerson:(id)a3 toVerifiedType:(int *)a4
{
  v6 = a3;
  if ([v6 verifiedType] == 1)
  {
    goto LABEL_2;
  }

  v12 = 0;
  if ([(PHPersonChangeRequest *)self _containsUserMutations])
  {
    v8 = 1;
    v12 = 1;
  }

  else
  {
    if (![(PHPersonChangeRequest *)self _hasMutationForVerifiedType:&v12])
    {
LABEL_2:
      v7 = 0;
      goto LABEL_10;
    }

    v8 = v12;
  }

  v9 = [v6 verifiedType];
  v10 = v8 == v9;
  v7 = v8 != v9;
  if (a4 && !v10)
  {
    *a4 = v12;
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (BOOL)_validateMergePerson:(id)a3 withPersonUUIDs:(id)a4 error:(id *)a5
{
  v23[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (![a4 count])
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PHPersonChangeRequest.m" lineNumber:448 description:{@"Invalid parameter not satisfying: %@", @"personUUIDs.count > 0"}];
  }

  v10 = MEMORY[0x1E695D5E0];
  v11 = [MEMORY[0x1E69BE608] entityName];
  v12 = [v10 fetchRequestWithEntityName:v11];

  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"personUUID", self->_personUUIDsToMerge];
  [v12 setPredicate:v13];

  v23[0] = @"detectionType";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  [v12 setPropertiesToFetch:v14];

  v15 = [v9 managedObjectContext];
  v22 = 0;
  v16 = [v15 executeFetchRequest:v12 error:&v22];
  v17 = v22;

  if (v16)
  {
    v18 = [v9 validateDetectionTypesForMergingWithPersons:v16 error:a5];
  }

  else if (a5)
  {
    v19 = v17;
    v18 = 0;
    *a5 = v17;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)validateMutationsToManagedObject:(id)a3 error:(id *)a4
{
  v53[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PHChangeRequest *)self helper];
  v43 = 0;
  v8 = [v7 validateMutationsToManagedObject:v6 error:&v43];
  v9 = v43;

  if (!v8)
  {
    LOBYTE(v10) = 0;
    if (!a4)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  *buf = 0;
  if ([(PHPersonChangeRequest *)self _hasMutationForVerifiedType:buf])
  {
    if ([(PHPersonChangeRequest *)self _containsUserMutations]&& *buf != 1)
    {
      v10 = MEMORY[0x1E696ABC0];
      v52 = *MEMORY[0x1E696A278];
      v53[0] = @"Persons with user mutations cannot be set to a type other than PLPersonVerifiedTypeUser";
      v11 = MEMORY[0x1E695DF20];
      v12 = v53;
      v13 = &v52;
LABEL_11:
      v14 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:1];
      v15 = [v10 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v14];

      LOBYTE(v10) = 0;
      goto LABEL_26;
    }

    if ([v6 verifiedType] == 1 && *buf != 1)
    {
      v10 = MEMORY[0x1E696ABC0];
      v50 = *MEMORY[0x1E696A278];
      v51 = @"Persons with type PLPersonVerifiedTypeUser cannot be changed";
      v11 = MEMORY[0x1E695DF20];
      v12 = &v51;
      v13 = &v50;
      goto LABEL_11;
    }
  }

  v16 = [(PHChangeRequest *)self helper];
  v17 = [v16 mutations];
  v18 = [v17 objectForKeyedSubscript:@"detectionType"];
  v19 = [v18 isEqual:&unk_1F102D010];

  if (v19)
  {
    v20 = MEMORY[0x1E696ABC0];
    v48 = *MEMORY[0x1E696A278];
    v49 = @"PHDetectionTypePet is not a valid value to assign to Person.detectionType";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v21 = [v20 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3111 userInfo:v10];

    LOBYTE(v10) = 0;
    v9 = v21;
    if (!a4)
    {
      goto LABEL_31;
    }

LABEL_27:
    if ((v10 & 1) == 0)
    {
      v37 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = [v9 userInfo];
        v39 = [v38 objectForKeyedSubscript:*MEMORY[0x1E696A278]];
        *buf = 138543362;
        v45 = v39;
        _os_log_impl(&dword_19C86F000, v37, OS_LOG_TYPE_ERROR, "Person change request validation failed: %{public}@", buf, 0xCu);
      }

      v40 = v9;
      LOBYTE(v10) = 0;
      *a4 = v9;
    }

    goto LABEL_31;
  }

  if ([(NSMutableArray *)self->_personUUIDsToMerge count])
  {
    personUUIDsToMerge = self->_personUUIDsToMerge;
    v42 = 0;
    LODWORD(v10) = [(PHPersonChangeRequest *)self _validateMergePerson:v6 withPersonUUIDs:personUUIDsToMerge error:&v42];
    v23 = v42;
    v15 = v23;
    if (!v10)
    {

LABEL_26:
      v9 = v15;
      if (!a4)
      {
        goto LABEL_31;
      }

      goto LABEL_27;
    }
  }

  if ([v6 keyFacePickSource] != 1)
  {
    LOBYTE(v10) = 1;
    goto LABEL_31;
  }

  v24 = [(PHChangeRequest *)self helper];
  v25 = [v24 mutations];
  v26 = [v25 objectForKey:@"keyFacePickSource"];

  if (v26 && [v26 shortValue] != 1 && (objc_msgSend(v6, "keyFace"), (v27 = objc_claimAutoreleasedReturnValue()) != 0) && (v28 = v27, objc_msgSend(v6, "keyFace"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "assetVisible"), v29, v28, v30))
  {
    v10 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E69BFF48];
    v46 = *MEMORY[0x1E696A278];
    v32 = MEMORY[0x1E696AEC0];
    v33 = [v6 personUUID];
    v34 = [v32 stringWithFormat:@"Attempt to change user-picked keyFacePickSource on person %@", v33];
    v47 = v34;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v36 = [v10 errorWithDomain:v31 code:41005 userInfo:v35];

    LOBYTE(v10) = 0;
    v9 = v36;
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  if (a4)
  {
    goto LABEL_27;
  }

LABEL_31:

  return v10;
}

- (BOOL)_hasMutationForVerifiedType:(int *)a3
{
  v4 = [(PHChangeRequest *)self helper];
  v5 = [v4 mutations];
  v6 = [v5 objectForKey:@"verifiedType"];

  if (a3 && v6)
  {
    *a3 = [v6 intValue];
  }

  return v6 != 0;
}

- (BOOL)_containsUserMutations
{
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];

  v5 = [v4 objectForKey:@"fullName"];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [v4 objectForKey:@"personUri"];
    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v8 = [v4 objectForKey:@"type"];
      if (v8)
      {
        v6 = 1;
      }

      else
      {
        v9 = [v4 objectForKey:@"displayName"];
        if (v9)
        {
          v6 = 1;
        }

        else
        {
          v10 = [(PHPersonChangeRequest *)self rejectedFacesHelper];
          v11 = [v10 mutableObjectIDsAndUUIDs];
          v6 = [v11 count] != 0;
        }
      }
    }
  }

  return v6;
}

- (void)setAutonamingUserFeedbacks:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 feature] != 1 && objc_msgSend(v10, "feature") != 2)
        {
          v11 = [MEMORY[0x1E696AAA8] currentHandler];
          [v11 handleFailureInMethod:a2 object:self file:@"PHPersonChangeRequest.m" lineNumber:349 description:@"-setAutonamingUserFeedbacks should only be used for PHUserFeedbacks with feature set to PHUserFeedbackPersonFeatureAutonamingSuggestionWithName or PHUserFeedbackPersonFeatureAutonamingSuggestionWithContactID"];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [(PHChangeRequest *)self helper];
  [v12 didMutate];

  v13 = [v5 copy];
  autonamingUserFeedbacks = self->_autonamingUserFeedbacks;
  self->_autonamingUserFeedbacks = v13;

  if (![v5 count])
  {
    self->_didUnsetAutonamingUserFeedbacks = 1;
  }
}

- (void)setUserFeedback:(id)a3
{
  v5 = a3;
  if ([(PHUserFeedback *)v5 feature])
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PHPersonChangeRequest.m" lineNumber:339 description:@"-setUserFeedback should only be used for PHUserFeedbacks with feature set to PHUserFeedbackPersonFeatureNone"];
  }

  v6 = [(PHChangeRequest *)self helper];
  [v6 didMutate];

  userFeedback = self->_userFeedback;
  self->_userFeedback = v5;

  if (!v5)
  {
    self->_didUnsetUserFeedback = 1;
  }
}

- (void)setSexType:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"genderType"];
}

- (unsigned)sexType
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"genderType"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setManualOrder:(unint64_t)a3 verified:(BOOL)a4
{
  v4 = a4;
  [(PHPersonChangeRequest *)self setManualOrder:a3];
  if (v4)
  {

    [(PHPersonChangeRequest *)self setVerified:1];
  }
}

- (void)setAssetSortOrder:(int64_t)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"assetSortOrder"];
}

- (int64_t)assetSortOrder
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"assetSortOrder"];

  v6 = [v5 intValue];
  return v6;
}

- (void)setMdID:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"mdID"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"mdID"];
  }

  else
  {
    [v6 removeObjectForKey:@"mdID"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"mdID"];
  }
}

- (NSString)mdID
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"mdID"];

  return v5;
}

- (void)setDetectionType:(signed __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"detectionType"];
}

- (signed)detectionType
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"detectionType"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setSuggestedForClientType:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"suggestedForClientType"];
}

- (unsigned)suggestedForClientType
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"suggestedForClientType"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setKeyFacePickSource:(signed __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"keyFacePickSource"];
}

- (signed)keyFacePickSource
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"keyFacePickSource"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setContactMatchingDictionary:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"contactMatchingDictionary"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"contactMatchingDictionary"];
  }

  else
  {
    [v6 removeObjectForKey:@"contactMatchingDictionary"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"contactMatchingDictionary"];
  }
}

- (NSDictionary)contactMatchingDictionary
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"contactMatchingDictionary"];

  return v5;
}

- (void)setGenderType:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"genderType"];
}

- (unsigned)genderType
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"genderType"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setAgeType:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"ageType"];
}

- (unsigned)ageType
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"ageType"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setQuestionType:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"questionType"];
}

- (unsigned)questionType
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"questionType"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setVerifiedType:(int64_t)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"verifiedType"];
}

- (int64_t)verifiedType
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"verifiedType"];

  v6 = [v5 intValue];
  return v6;
}

- (void)setInPersonNamingModel:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"inPersonNamingModel"];
}

- (BOOL)isInPersonNamingModel
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"inPersonNamingModel"];

  LOBYTE(v3) = [v5 BOOLValue];
  return v3;
}

- (void)setPersonUri:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"personUri"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"personUri"];
  }

  else
  {
    [v6 removeObjectForKey:@"personUri"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"personUri"];
  }
}

- (NSString)personUri
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"personUri"];

  return v5;
}

- (void)setPersonUUID:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"personUUID"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"personUUID"];
  }

  else
  {
    [v6 removeObjectForKey:@"personUUID"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"personUUID"];
  }
}

- (id)personUUID
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"personUUID"];

  return v5;
}

- (void)setDisplayName:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"displayName"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"displayName"];
  }

  else
  {
    [v6 removeObjectForKey:@"displayName"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"displayName"];
  }
}

- (NSString)displayName
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"displayName"];

  return v5;
}

- (void)setName:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"fullName"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"fullName"];
  }

  else
  {
    [v6 removeObjectForKey:@"fullName"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"fullName"];
  }
}

- (NSString)name
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"fullName"];

  return v5;
}

- (void)setMergeCandidateConfidence:(double)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"mergeCandidateConfidence"];
}

- (double)mergeCandidateConfidence
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"mergeCandidateConfidence"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setManualOrder:(unint64_t)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"manualOrder"];
}

- (unint64_t)manualOrder
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"manualOrder"];

  v6 = [v5 unsignedIntegerValue];
  return v6;
}

- (void)setType:(int64_t)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"type"];
}

- (int64_t)type
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"type"];

  v6 = [v5 intValue];
  return v6;
}

- (PHObjectPlaceholder)placeholderForCreatedPerson
{
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

- (void)encodeToXPCDict:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 encodeToXPCDict:v4];

  v6 = [(PHPersonChangeRequest *)self detectedFacesHelper];
  [v6 encodeToXPCDict:v4];

  v7 = [(PHPersonChangeRequest *)self temporalFacesHelper];
  [v7 encodeToXPCDict:v4];

  v8 = [(PHPersonChangeRequest *)self keyFaceHelper];
  [v8 encodeToXPCDict:v4];

  v9 = [(PHPersonChangeRequest *)self rejectedFacesHelper];
  [v9 encodeToXPCDict:v4];

  v10 = [(PHPersonChangeRequest *)self mergeCandidatesHelper];
  [v10 encodeToXPCDict:v4];

  v11 = [(PHPersonChangeRequest *)self mergeCandidatesWithConfidenceHelper];
  [v11 encodeToXPCDict:v4];

  v12 = [(PHPersonChangeRequest *)self invalidMergeCandidatesHelper];
  [v12 encodeToXPCDict:v4];

  PLXPCDictionarySetArray();
  v13 = [(NSMutableSet *)self->_faceUUIDsRequiringFaceCropGeneration allObjects];
  PLXPCDictionarySetArray();

  v14 = [(NSMutableSet *)self->_faceUUIDsRequiringNewUnverifiedPerson allObjects];
  PLXPCDictionarySetArray();

  PLXPCDictionarySetString();
  v15 = [(NSMutableSet *)self->_rejectedMergeCandidatePersonUUIDs allObjects];
  PLXPCDictionarySetArray();

  v16 = [(NSMutableSet *)self->_graphDedupePersonUUIDs allObjects];
  PLXPCDictionarySetArray();

  userFeedback = self->_userFeedback;
  if (userFeedback)
  {
    v26 = 0;
    v18 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:userFeedback requiringSecureCoding:1 error:&v26];
    v19 = v26;
    if (v18)
    {
      PLXPCDictionarySetData();
    }

    else
    {
      v20 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v19;
        _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_DEFAULT, "Failed to encode userFeedback object: %@", buf, 0xCu);
      }
    }
  }

  autonamingUserFeedbacks = self->_autonamingUserFeedbacks;
  if (autonamingUserFeedbacks)
  {
    v25 = 0;
    v22 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:autonamingUserFeedbacks requiringSecureCoding:1 error:&v25];
    v23 = v25;
    if (v22)
    {
      PLXPCDictionarySetData();
    }

    else
    {
      v24 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v23;
        _os_log_impl(&dword_19C86F000, v24, OS_LOG_TYPE_DEFAULT, "Failed to encode userFeedback object: %@", buf, 0xCu);
      }
    }
  }

  xpc_dictionary_set_BOOL(v4, "userFeedbackDataUnsetKey", self->_didUnsetUserFeedback);
  xpc_dictionary_set_BOOL(v4, "autonamingUserFeedbackDataUnsetKey", self->_didUnsetAutonamingUserFeedbacks);
  if (self->_searchEntityRelationsToSet)
  {
    PLXPCDictionarySetArray();
  }

  if (self->_searchEntityRelationsToRemove)
  {
    PLXPCDictionarySetArray();
  }
}

- (PHPersonChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v84 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v81.receiver = self;
  v81.super_class = PHPersonChangeRequest;
  v11 = [(PHChangeRequest *)&v81 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:v8 changeRequest:v11 request:v9 clientAuthorization:v10];
    helper = v11->super._helper;
    v11->super._helper = v12;

    if (v12)
    {
      v75 = v10;
      v14 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"detectedFaces" xpcDict:v8 changeRequestHelper:v11->super._helper];
      detectedFacesHelper = v11->_detectedFacesHelper;
      v11->_detectedFacesHelper = v14;

      v16 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"temporalDetectedFaces" xpcDict:v8 changeRequestHelper:v11->super._helper];
      temporalFacesHelper = v11->_temporalFacesHelper;
      v11->_temporalFacesHelper = v16;

      v18 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"keyFace" xpcDict:v8 changeRequestHelper:v11->super._helper];
      keyFaceHelper = v11->_keyFaceHelper;
      v11->_keyFaceHelper = v18;

      v20 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"rejectedFaces" xpcDict:v8 changeRequestHelper:v11->super._helper];
      rejectedFacesHelper = v11->_rejectedFacesHelper;
      v11->_rejectedFacesHelper = v20;

      v22 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"mergeCandidates" xpcDict:v8 changeRequestHelper:v11->super._helper];
      mergeCandidatesHelper = v11->_mergeCandidatesHelper;
      v11->_mergeCandidatesHelper = v22;

      v24 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"mergeCandidatesWithConfidence" xpcDict:v8 changeRequestHelper:v11->super._helper];
      mergeCandidatesWithConfidenceHelper = v11->_mergeCandidatesWithConfidenceHelper;
      v11->_mergeCandidatesWithConfidenceHelper = v24;

      v26 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"invalidMergeCandidates" xpcDict:v8 changeRequestHelper:v11->super._helper];
      invalidMergeCandidatesHelper = v11->_invalidMergeCandidatesHelper;
      v11->_invalidMergeCandidatesHelper = v26;

      v28 = PLArrayFromXPCDictionary();
      v29 = [v28 mutableCopy];
      personUUIDsToMerge = v11->_personUUIDsToMerge;
      v11->_personUUIDsToMerge = v29;

      v31 = MEMORY[0x1E695DFA8];
      v32 = PLArrayFromXPCDictionary();
      v33 = [v31 setWithArray:v32];
      faceUUIDsRequiringFaceCropGeneration = v11->_faceUUIDsRequiringFaceCropGeneration;
      v11->_faceUUIDsRequiringFaceCropGeneration = v33;

      v35 = MEMORY[0x1E695DFA8];
      v36 = PLArrayFromXPCDictionary();
      v37 = [v35 setWithArray:v36];
      faceUUIDsRequiringNewUnverifiedPerson = v11->_faceUUIDsRequiringNewUnverifiedPerson;
      v11->_faceUUIDsRequiringNewUnverifiedPerson = v37;

      v39 = PLStringFromXPCDictionary();
      nominalMergeTargetUUID = v11->_nominalMergeTargetUUID;
      v11->_nominalMergeTargetUUID = v39;

      v41 = MEMORY[0x1E695DFA8];
      v42 = PLArrayFromXPCDictionary();
      v43 = [v41 setWithArray:v42];
      rejectedMergeCandidatePersonUUIDs = v11->_rejectedMergeCandidatePersonUUIDs;
      v11->_rejectedMergeCandidatePersonUUIDs = v43;

      v45 = MEMORY[0x1E695DFA8];
      v46 = PLArrayFromXPCDictionary();
      v47 = [v45 setWithArray:v46];
      graphDedupePersonUUIDs = v11->_graphDedupePersonUUIDs;
      v11->_graphDedupePersonUUIDs = v47;

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __69__PHPersonChangeRequest_initWithXPCDict_request_clientAuthorization___block_invoke;
      aBlock[3] = &unk_1E75AAEB0;
      v49 = v11;
      v79 = v49;
      v80 = v9;
      v50 = _Block_copy(aBlock);
      if ([(NSMutableArray *)v11->_personUUIDsToMerge count]|| [(NSMutableSet *)v11->_rejectedMergeCandidatePersonUUIDs count]|| [(NSMutableSet *)v11->_graphDedupePersonUUIDs count])
      {
        v50[2](v50);
      }

      v51 = PLDataFromXPCDictionary();
      if (v51)
      {
        v77 = 0;
        v52 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v51 error:&v77];
        v53 = v77;
        userFeedback = v49->_userFeedback;
        v49->_userFeedback = v52;

        if (v49->_userFeedback)
        {
          v50[2](v50);
        }

        else
        {
          v55 = PLPhotoKitGetLog();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v83 = v53;
            _os_log_impl(&dword_19C86F000, v55, OS_LOG_TYPE_DEFAULT, "Failed to decode userFeedback object: %@", buf, 0xCu);
          }
        }
      }

      v56 = PLDataFromXPCDictionary();
      if (v56)
      {
        v57 = MEMORY[0x1E696ACD0];
        v58 = MEMORY[0x1E695DFD8];
        v59 = objc_opt_class();
        v60 = [v58 setWithObjects:{v59, objc_opt_class(), 0}];
        v76 = 0;
        v61 = [v57 unarchivedObjectOfClasses:v60 fromData:v56 error:&v76];
        v62 = v76;
        autonamingUserFeedbacks = v49->_autonamingUserFeedbacks;
        v49->_autonamingUserFeedbacks = v61;

        if (v49->_autonamingUserFeedbacks)
        {
          v50[2](v50);
        }

        else
        {
          v64 = PLPhotoKitGetLog();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v83 = v62;
            _os_log_impl(&dword_19C86F000, v64, OS_LOG_TYPE_DEFAULT, "Failed to decode autonamingUserFeedback object: %@", buf, 0xCu);
          }
        }
      }

      v65 = xpc_dictionary_get_BOOL(v8, "userFeedbackDataUnsetKey");
      v49->_didUnsetUserFeedback = v65;
      if (v65)
      {
        v50[2](v50);
      }

      v66 = xpc_dictionary_get_BOOL(v8, "autonamingUserFeedbackDataUnsetKey");
      v49->_didUnsetAutonamingUserFeedbacks = v66;
      if (v66)
      {
        v50[2](v50);
      }

      v67 = PLArrayFromXPCDictionary();
      if ([v67 count])
      {
        v68 = [v67 mutableCopy];
        searchEntityRelationsToSet = v49->_searchEntityRelationsToSet;
        v49->_searchEntityRelationsToSet = v68;

        v50[2](v50);
      }

      v70 = PLArrayFromXPCDictionary();
      v71 = [v70 mutableCopy];

      if ([v71 count])
      {
        v72 = [v71 mutableCopy];
        searchEntityRelationsToRemove = v49->_searchEntityRelationsToRemove;
        v49->_searchEntityRelationsToRemove = v72;

        v50[2](v50);
      }

      v10 = v75;
    }
  }

  return v11;
}

uint64_t __69__PHPersonChangeRequest_initWithXPCDict_request_clientAuthorization___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setMutated:1];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 recordUpdateRequest:v3];
}

- (PHPersonChangeRequest)initWithUUID:(id)a3 objectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v30.receiver = self;
  v30.super_class = PHPersonChangeRequest;
  v8 = [(PHChangeRequest *)&v30 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:v6 objectID:v7 changeRequest:v8];
    helper = v8->super._helper;
    v8->super._helper = v9;

    v11 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"detectedFaces" changeRequestHelper:v8->super._helper];
    detectedFacesHelper = v8->_detectedFacesHelper;
    v8->_detectedFacesHelper = v11;

    v13 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"temporalDetectedFaces" changeRequestHelper:v8->super._helper];
    temporalFacesHelper = v8->_temporalFacesHelper;
    v8->_temporalFacesHelper = v13;

    v15 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"keyFace" changeRequestHelper:v8->super._helper];
    keyFaceHelper = v8->_keyFaceHelper;
    v8->_keyFaceHelper = v15;

    v17 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"rejectedFaces" changeRequestHelper:v8->super._helper];
    rejectedFacesHelper = v8->_rejectedFacesHelper;
    v8->_rejectedFacesHelper = v17;

    v19 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"mergeCandidates" changeRequestHelper:v8->super._helper];
    mergeCandidatesHelper = v8->_mergeCandidatesHelper;
    v8->_mergeCandidatesHelper = v19;

    v21 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"mergeCandidatesWithConfidence" changeRequestHelper:v8->super._helper];
    mergeCandidatesWithConfidenceHelper = v8->_mergeCandidatesWithConfidenceHelper;
    v8->_mergeCandidatesWithConfidenceHelper = v21;

    v23 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"invalidMergeCandidates" changeRequestHelper:v8->super._helper];
    invalidMergeCandidatesHelper = v8->_invalidMergeCandidatesHelper;
    v8->_invalidMergeCandidatesHelper = v23;

    v25 = [MEMORY[0x1E695DF70] array];
    searchEntityRelationsToSet = v8->_searchEntityRelationsToSet;
    v8->_searchEntityRelationsToSet = v25;

    v27 = [MEMORY[0x1E695DF70] array];
    searchEntityRelationsToRemove = v8->_searchEntityRelationsToRemove;
    v8->_searchEntityRelationsToRemove = v27;
  }

  return v8;
}

- (id)initForNewObject
{
  v24.receiver = self;
  v24.super_class = PHPersonChangeRequest;
  v2 = [(PHChangeRequest *)&v24 init];
  if (v2)
  {
    v3 = [[PHChangeRequestHelper alloc] initForNewObjectWithChangeRequest:v2];
    helper = v2->super._helper;
    v2->super._helper = v3;

    v5 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"detectedFaces" changeRequestHelper:v2->super._helper];
    detectedFacesHelper = v2->_detectedFacesHelper;
    v2->_detectedFacesHelper = v5;

    v7 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"temporalDetectedFaces" changeRequestHelper:v2->super._helper];
    temporalFacesHelper = v2->_temporalFacesHelper;
    v2->_temporalFacesHelper = v7;

    v9 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"keyFace" changeRequestHelper:v2->super._helper];
    keyFaceHelper = v2->_keyFaceHelper;
    v2->_keyFaceHelper = v9;

    v11 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"rejectedFaces" changeRequestHelper:v2->super._helper];
    rejectedFacesHelper = v2->_rejectedFacesHelper;
    v2->_rejectedFacesHelper = v11;

    v13 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"mergeCandidates" changeRequestHelper:v2->super._helper];
    mergeCandidatesHelper = v2->_mergeCandidatesHelper;
    v2->_mergeCandidatesHelper = v13;

    v15 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"mergeCandidatesWithConfidence" changeRequestHelper:v2->super._helper];
    mergeCandidatesWithConfidenceHelper = v2->_mergeCandidatesWithConfidenceHelper;
    v2->_mergeCandidatesWithConfidenceHelper = v15;

    v17 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"invalidMergeCandidates" changeRequestHelper:v2->super._helper];
    invalidMergeCandidatesHelper = v2->_invalidMergeCandidatesHelper;
    v2->_invalidMergeCandidatesHelper = v17;

    v19 = [MEMORY[0x1E695DF70] array];
    searchEntityRelationsToSet = v2->_searchEntityRelationsToSet;
    v2->_searchEntityRelationsToSet = v19;

    v21 = [MEMORY[0x1E695DF70] array];
    searchEntityRelationsToRemove = v2->_searchEntityRelationsToRemove;
    v2->_searchEntityRelationsToRemove = v21;
  }

  return v2;
}

+ (BOOL)_allPersonsAreGraphPersons:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (!v4)
  {
    v9 = 1;
    goto LABEL_17;
  }

  v5 = v4;
  v6 = *v14;
  while (2)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v14 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v13 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_ERROR, "found non-PHPerson in collection", buf, 2u);
        }

        goto LABEL_16;
      }

      if ([v8 verifiedType] != 2)
      {
        v10 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = [v8 uuid];
          *buf = 138543362;
          v18 = v11;
          _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_ERROR, "found non-graph-verified PHPerson %{public}@ in collection", buf, 0xCu);
        }

LABEL_16:

        v9 = 0;
        goto LABEL_17;
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
    v9 = 1;
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_17:

  return v9;
}

+ (id)changeRequestForDedupingGraphPersons:(id)a3 withUserVerifiedPerson:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([a1 _allPersonsAreGraphPersons:v6])
  {
    if ([v7 verifiedType] == 1)
    {
      v8 = [a1 changeRequestForPerson:v7];
      [v8 _setGraphDedupePersons:v6];
      goto LABEL_8;
    }

    v9 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v7 uuid];
      v12 = 138543618;
      v13 = v10;
      v14 = 2048;
      v15 = [v7 verifiedType];
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_ERROR, "Expected user-verified person for deduping but got person %{public}@ verifiedType %td", &v12, 0x16u);
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

+ (id)changeRequestForDedupingGraphPersons:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([a1 _allPersonsAreGraphPersons:v4])
  {
    v5 = [PHPerson personToKeepForCloudConsistencyFromPersons:v4];
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if (v5 != *(*(&v14 + 1) + 8 * i))
          {
            [v6 addObject:v14];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    v12 = [a1 changeRequestForPerson:v5];
    [v12 _setGraphDedupePersons:v6];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)changeRequestsForMergeCandidatePersons:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addObject:*(*(&v26 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * j);
        v17 = [PHPersonChangeRequest changeRequestForPerson:v16, v22];
        v18 = [v11 mutableCopy];
        [v18 removeObject:v16];
        [v17 addMergeCandidatePersons:v18];
        [v4 addObject:v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v13);
  }

  if ([v4 count])
  {
    v19 = v4;
  }

  else
  {
    v19 = MEMORY[0x1E695E0F0];
  }

  v20 = v19;

  return v19;
}

+ (id)changeRequestForMergingPersons:(id)a3 nominalTargetIdentifier:(id)a4
{
  v25 = a1;
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v28 = [PHPerson personToKeepForCloudConsistencyFromPersons:v5];
  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        v13 = [v12 localIdentifier];
        v14 = v6;
        v15 = [v13 isEqualToString:v6];

        v16 = [v12 localIdentifier];
        v17 = [v28 localIdentifier];
        v18 = [v16 isEqual:v17];

        if ((v18 & 1) == 0)
        {
          [v26 addObject:v12];
        }

        v9 |= v15;
        v6 = v14;
      }

      v8 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  if (v6 && (v9 & 1) == 0)
  {
    v19 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = v6;
      _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_ERROR, "Attempting to merge persons with a nominal target identifier (%@) that does not match any of the persons being merged", buf, 0xCu);
    }
  }

  if (v28 && [v26 count])
  {
    v20 = [v25 changeRequestForPerson:v28];
    v21 = v20;
    if (v6)
    {
      v22 = [(PHObject *)PHPerson uuidFromLocalIdentifier:v6];
      [v21 _setNominalMergeTargetUUID:v22];
    }

    else
    {
      [v20 _setNominalMergeTargetUUID:0];
    }

    [v21 mergePersons:{v26, v25}];
  }

  else
  {
    v23 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = obj;
      _os_log_impl(&dword_19C86F000, v23, OS_LOG_TYPE_ERROR, "Merging persons requires a valid merge target and at least 1 person to merge: %@", buf, 0xCu);
    }

    v21 = 0;
  }

  return v21;
}

+ (void)deletePersons:(id)a3
{
  v5 = a3;
  v4 = [(PHObjectDeleteRequest *)PHPersonDeleteRequest deleteRequestsForObjects:v5 ofType:objc_opt_class() forSelector:a2];
}

+ (id)changeRequestForPerson:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [PHChangeRequestHelper changeRequestForObject:v3];
    [v4 setTargetPerson:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)creationRequestForPerson
{
  v2 = [[PHPersonChangeRequest alloc] initForNewObject];

  return v2;
}

@end