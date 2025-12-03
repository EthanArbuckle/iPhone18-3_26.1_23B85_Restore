@interface PHPersonChangeRequest
+ (BOOL)_allPersonsAreGraphPersons:(id)persons;
+ (id)changeRequestForDedupingGraphPersons:(id)persons;
+ (id)changeRequestForDedupingGraphPersons:(id)persons withUserVerifiedPerson:(id)person;
+ (id)changeRequestForMergingPersons:(id)persons nominalTargetIdentifier:(id)identifier;
+ (id)changeRequestForPerson:(id)person;
+ (id)changeRequestsForMergeCandidatePersons:(id)persons;
+ (id)creationRequestForPerson;
+ (void)deletePersons:(id)persons;
- (BOOL)_containsUserMutations;
- (BOOL)_ensureModelConsistencyForVerifiedTypePromotion:(id)promotion originalVerifiedType:(int)type error:(id *)error;
- (BOOL)_hasMutationForVerifiedType:(int *)type;
- (BOOL)_removeObjects:(id)objects fromArray:(id)array;
- (BOOL)_shouldPromotePerson:(id)person toVerifiedType:(int *)type;
- (BOOL)_validateMergePerson:(id)person withPersonUUIDs:(id)ds error:(id *)error;
- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error;
- (BOOL)isInPersonNamingModel;
- (BOOL)validateInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (BOOL)validateMutationsToManagedObject:(id)object error:(id *)error;
- (NSDictionary)contactMatchingDictionary;
- (NSString)displayName;
- (NSString)mdID;
- (NSString)name;
- (NSString)personUri;
- (PHObjectPlaceholder)placeholderForCreatedPerson;
- (PHPersonChangeRequest)initWithUUID:(id)d objectID:(id)iD;
- (PHPersonChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
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
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error;
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
- (void)_addObjectIDsOfFaces:(id)faces toFaceIDs:(id)ds temporalIDs:(id)iDs;
- (void)_prepareKeyFaceHelperIfNeeded;
- (void)_setGraphDedupePersons:(id)persons;
- (void)_setKeyFace:(id)face forCluster:(BOOL)cluster pickSource:(signed __int16)source;
- (void)addFaces:(id)faces;
- (void)addInvalidMergeCandidatePersons:(id)persons;
- (void)addMergeCandidatePersons:(id)persons;
- (void)addMergeCandidateWithConfidencePersons:(id)persons;
- (void)addRejectedFaces:(id)faces forCluster:(BOOL)cluster;
- (void)addSearchEntityPersonRelationWithType:(signed __int16)type label:(id)label confidence:(double)confidence toPerson:(id)person;
- (void)addTemporalFaces:(id)faces;
- (void)encodeToXPCDict:(id)dict;
- (void)mergePersons:(id)persons;
- (void)persistSuggestionForClient:(unint64_t)client;
- (void)rejectMergeCandidatePersons:(id)persons;
- (void)removeFaces:(id)faces;
- (void)removeMergeCandidatePersons:(id)persons;
- (void)removeMergeCandidateWithConfidencePersons:(id)persons;
- (void)removeRejectedFaces:(id)faces;
- (void)removeSearchEntityPersonRelationType:(signed __int16)type toPerson:(id)person;
- (void)removeTemporalFaces:(id)faces;
- (void)setAgeType:(unsigned __int16)type;
- (void)setAssetSortOrder:(int64_t)order;
- (void)setAutonamingUserFeedbacks:(id)feedbacks;
- (void)setContactMatchingDictionary:(id)dictionary;
- (void)setDetectionType:(signed __int16)type;
- (void)setDisplayName:(id)name;
- (void)setGenderType:(unsigned __int16)type;
- (void)setInPersonNamingModel:(BOOL)model;
- (void)setKeyFaceForUserPick:(id)pick forCluster:(BOOL)cluster;
- (void)setKeyFacePickSource:(signed __int16)source;
- (void)setManualOrder:(unint64_t)order;
- (void)setManualOrder:(unint64_t)order verified:(BOOL)verified;
- (void)setMdID:(id)d;
- (void)setMergeCandidateConfidence:(double)confidence;
- (void)setName:(id)name;
- (void)setPersonUUID:(id)d;
- (void)setPersonUri:(id)uri;
- (void)setQuestionType:(unsigned __int16)type;
- (void)setSexType:(unsigned __int16)type;
- (void)setSuggestedForClientType:(unsigned __int16)type;
- (void)setTemporalFaces:(id)faces;
- (void)setType:(int64_t)type;
- (void)setUserFeedback:(id)feedback;
- (void)setVerifiedType:(int64_t)type;
@end

@implementation PHPersonChangeRequest

- (void)removeSearchEntityPersonRelationType:(signed __int16)type toPerson:(id)person
{
  typeCopy = type;
  selfCopy = person;
  v13 = selfCopy;
  if (typeCopy)
  {
    if (selfCopy)
    {
      goto LABEL_4;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHPersonChangeRequest.m" lineNumber:1417 description:{@"Invalid parameter not satisfying: %@", @"relationType"}];

    selfCopy = v13;
    if (v13)
    {
LABEL_4:
      v8 = MEMORY[0x1E69BE780];
      if (selfCopy)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  if ((typeCopy - 3) > 0xFFFDu)
  {
    goto LABEL_4;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHPersonChangeRequest.m" lineNumber:1418 description:{@"Invalid parameter not satisfying: %@", @"relatedPerson || (relationType == PHSearchEntityPersonRelationTypeMe || relationType == PHSearchEntityPersonRelationTypeSelf)"}];

  v8 = MEMORY[0x1E69BE780];
LABEL_5:
  selfCopy = self;
LABEL_6:
  uuid = [(PHChangeRequest *)selfCopy uuid];
  v10 = [v8 personRelationDictionaryForRelationWithType:typeCopy label:0 confidence:uuid relatedPersonUUID:0.0];

  [(NSMutableArray *)self->_searchEntityRelationsToRemove addObject:v10];
  [(PHChangeRequest *)self didMutate];
}

- (void)addSearchEntityPersonRelationWithType:(signed __int16)type label:(id)label confidence:(double)confidence toPerson:(id)person
{
  typeCopy = type;
  labelCopy = label;
  personCopy = person;
  if (confidence == 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHPersonChangeRequest.m" lineNumber:1408 description:{@"Invalid parameter not satisfying: %@", @"confidence"}];

    if (typeCopy)
    {
      goto LABEL_3;
    }

LABEL_13:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHPersonChangeRequest.m" lineNumber:1409 description:{@"Invalid parameter not satisfying: %@", @"relationType"}];

    goto LABEL_3;
  }

  if (!typeCopy)
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((typeCopy - 3) > 0xFFFDu || personCopy)
  {
    v12 = MEMORY[0x1E69BE780];
    if (personCopy)
    {
      selfCopy = personCopy;
      goto LABEL_9;
    }
  }

  else
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PHPersonChangeRequest.m" lineNumber:1410 description:{@"Invalid parameter not satisfying: %@", @"relatedPerson || (relationType == PHSearchEntityPersonRelationTypeMe || relationType == PHSearchEntityPersonRelationTypeSelf)"}];

    v12 = MEMORY[0x1E69BE780];
  }

  selfCopy = self;
LABEL_9:
  uuid = [(PHChangeRequest *)selfCopy uuid];
  v16 = [v12 personRelationDictionaryForRelationWithType:typeCopy label:labelCopy confidence:uuid relatedPersonUUID:confidence];

  [(NSMutableArray *)self->_searchEntityRelationsToSet addObject:v16];
  [(PHChangeRequest *)self didMutate];
}

- (void)_setGraphDedupePersons:(id)persons
{
  v20 = *MEMORY[0x1E69E9840];
  personsCopy = persons;
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
  v8 = personsCopy;
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
        uuid = [*(*(&v15 + 1) + 8 * v12) uuid];
        [(NSMutableSet *)v13 addObject:uuid];

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

- (void)addInvalidMergeCandidatePersons:(id)persons
{
  personsCopy = persons;
  [(PHPersonChangeRequest *)self removeMergeCandidatePersons:personsCopy];
  v6 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:personsCopy];

  if (v6)
  {
    [(PHChangeRequest *)self didMutate];
    _mutableInvalidMergeCandidateObjectIDsAndUUIDs = [(PHPersonChangeRequest *)self _mutableInvalidMergeCandidateObjectIDsAndUUIDs];
    [_mutableInvalidMergeCandidateObjectIDsAndUUIDs addObjectsFromArray:v6];
  }
}

- (void)removeMergeCandidateWithConfidencePersons:(id)persons
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:persons];
  if (v4)
  {
    v6 = v4;
    [(PHChangeRequest *)self didMutate];
    _mutableMergeCandidateWithConfidenceObjectIDsAndUUIDs = [(PHPersonChangeRequest *)self _mutableMergeCandidateWithConfidenceObjectIDsAndUUIDs];
    [_mutableMergeCandidateWithConfidenceObjectIDsAndUUIDs removeObjectsInArray:v6];

    v4 = v6;
  }
}

- (void)addMergeCandidateWithConfidencePersons:(id)persons
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:persons];
  if (v4)
  {
    v6 = v4;
    [(PHChangeRequest *)self didMutate];
    _mutableMergeCandidateWithConfidenceObjectIDsAndUUIDs = [(PHPersonChangeRequest *)self _mutableMergeCandidateWithConfidenceObjectIDsAndUUIDs];
    [_mutableMergeCandidateWithConfidenceObjectIDsAndUUIDs addObjectsFromArray:v6];

    v4 = v6;
  }
}

- (void)rejectMergeCandidatePersons:(id)persons
{
  v19 = *MEMORY[0x1E69E9840];
  personsCopy = persons;
  [(PHPersonChangeRequest *)self addInvalidMergeCandidatePersons:personsCopy];
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
  v7 = personsCopy;
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
        uuid = [*(*(&v14 + 1) + 8 * v11) uuid];
        [(NSMutableSet *)v12 addObject:uuid];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)removeMergeCandidatePersons:(id)persons
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:persons];
  if (v4)
  {
    v6 = v4;
    [(PHChangeRequest *)self didMutate];
    _mutableMergeCandidateObjectIDsAndUUIDs = [(PHPersonChangeRequest *)self _mutableMergeCandidateObjectIDsAndUUIDs];
    [_mutableMergeCandidateObjectIDsAndUUIDs removeObjectsInArray:v6];

    v4 = v6;
  }
}

- (void)addMergeCandidatePersons:(id)persons
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:persons];
  if (v4)
  {
    v6 = v4;
    [(PHChangeRequest *)self didMutate];
    _mutableMergeCandidateObjectIDsAndUUIDs = [(PHPersonChangeRequest *)self _mutableMergeCandidateObjectIDsAndUUIDs];
    [_mutableMergeCandidateObjectIDsAndUUIDs addObjectsFromArray:v6];

    v4 = v6;
  }
}

- (void)mergePersons:(id)persons
{
  v19 = *MEMORY[0x1E69E9840];
  personsCopy = persons;
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
  v7 = personsCopy;
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
        uuid = [*(*(&v14 + 1) + 8 * v11) uuid];
        [(NSMutableArray *)v12 addObject:uuid];

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

- (void)persistSuggestionForClient:(unint64_t)client
{
  if (client != 1)
  {
    if (client - 2 < 4)
    {
      v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Invalid PHPeopleSuggestionClient enum chosen to persist" userInfo:{0, v3, v4}];
      objc_exception_throw(v5);
    }

    client = 0;
  }

  [(PHPersonChangeRequest *)self setSuggestedForClientType:client];
}

- (void)removeRejectedFaces:(id)faces
{
  v20 = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  v5 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:facesCopy];
  if (v5)
  {
    [(PHChangeRequest *)self didMutate];
    _mutableRejectedFacesObjectIDsAndUUIDs = [(PHPersonChangeRequest *)self _mutableRejectedFacesObjectIDsAndUUIDs];
    [_mutableRejectedFacesObjectIDsAndUUIDs removeObjectsInArray:v5];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = facesCopy;
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
        _mutableRequiringFaceCropGenerationFacesUUIDs = [(PHPersonChangeRequest *)self _mutableRequiringFaceCropGenerationFacesUUIDs];
        uuid = [v12 uuid];
        [_mutableRequiringFaceCropGenerationFacesUUIDs removeObject:uuid];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)addRejectedFaces:(id)faces forCluster:(BOOL)cluster
{
  clusterCopy = cluster;
  v51 = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  v7 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:facesCopy];
  if (v7)
  {
    [(PHChangeRequest *)self didMutate];
    _mutableRejectedFacesObjectIDsAndUUIDs = [(PHPersonChangeRequest *)self _mutableRejectedFacesObjectIDsAndUUIDs];
    [_mutableRejectedFacesObjectIDsAndUUIDs addObjectsFromArray:v7];
  }

  v32 = v7;
  [(PHPersonChangeRequest *)self removeFaces:facesCopy];
  if (clusterCopy)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v9 = facesCopy;
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
          _mutableRequiringFaceCropGenerationFacesUUIDs = [(PHPersonChangeRequest *)self _mutableRequiringFaceCropGenerationFacesUUIDs];
          uuid = [v14 uuid];
          [_mutableRequiringFaceCropGenerationFacesUUIDs addObject:uuid];
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
  v17 = facesCopy;
  v18 = [v17 countByEnumeratingWithState:&v35 objects:v49 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v36;
    v33 = v17;
    selfCopy = self;
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
              uuid2 = [v23 uuid];
              targetPerson = [(PHPersonChangeRequest *)selfCopy targetPerson];
              uuid3 = [targetPerson uuid];
              [MEMORY[0x1E696AF00] callStackSymbols];
              v29 = v28 = v20;
              *buf = 138543874;
              v44 = uuid2;
              v45 = 2114;
              v46 = uuid3;
              v47 = 2112;
              v48 = v29;
              _os_log_impl(&dword_19C86F000, v24, OS_LOG_TYPE_ERROR, "Warning: rejecting torso-only face %{public}@ for person %{public}@ is not cloud-syncable. Call stack: %@", buf, 0x20u);

              v20 = v28;
              v17 = v33;
              self = selfCopy;
            }
          }
        }

        _mutableRequiringNewUnverifiedPersonFacesUUIDs = [(PHPersonChangeRequest *)self _mutableRequiringNewUnverifiedPersonFacesUUIDs];
        uuid4 = [v22 uuid];
        [_mutableRequiringNewUnverifiedPersonFacesUUIDs addObject:uuid4];
      }

      v19 = [v17 countByEnumeratingWithState:&v35 objects:v49 count:16];
    }

    while (v19);
  }
}

- (void)setKeyFaceForUserPick:(id)pick forCluster:(BOOL)cluster
{
  clusterCopy = cluster;
  pickCopy = pick;
  [(PHPersonChangeRequest *)self setVerifiedType:1];
  [(PHPersonChangeRequest *)self _setKeyFace:pickCopy forCluster:clusterCopy pickSource:1];
}

- (void)_setKeyFace:(id)face forCluster:(BOOL)cluster pickSource:(signed __int16)source
{
  sourceCopy = source;
  clusterCopy = cluster;
  v22[1] = *MEMORY[0x1E69E9840];
  faceCopy = face;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    if (!faceCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHPersonChangeRequest.m" lineNumber:1081 description:{@"keyFace has incorrect class: %@", faceCopy}];

    if (!faceCopy)
    {
      goto LABEL_10;
    }
  }

  [(PHChangeRequest *)self didMutate];
  array = [MEMORY[0x1E695DF70] array];
  v11 = PLObjectIDOrUUIDFromPHObject(faceCopy);
  [array addObject:v11];
  v12 = MEMORY[0x1E695DFA8];
  _existentFaceObjectIDs = [(PHPersonChangeRequest *)self _existentFaceObjectIDs];
  v14 = [v12 setWithArray:_existentFaceObjectIDs];

  mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self->_detectedFacesHelper mutableObjectIDsAndUUIDs];
  if ([mutableObjectIDsAndUUIDs count])
  {
    v16 = [MEMORY[0x1E695DFD8] setWithArray:mutableObjectIDsAndUUIDs];
    [v14 unionSet:v16];
  }

  if (([v14 containsObject:v11] & 1) == 0)
  {
    v22[0] = faceCopy;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    [(PHPersonChangeRequest *)self addFaces:v17];
  }

  if (array)
  {
    _mutableKeyFaceObjectIDsAndUUIDs = [(PHPersonChangeRequest *)self _mutableKeyFaceObjectIDsAndUUIDs];
    [_mutableKeyFaceObjectIDsAndUUIDs addObjectsFromArray:array];
  }

LABEL_10:
  if (clusterCopy)
  {
    _mutableRequiringFaceCropGenerationFacesUUIDs = [(PHPersonChangeRequest *)self _mutableRequiringFaceCropGenerationFacesUUIDs];
    uuid = [faceCopy uuid];
    [_mutableRequiringFaceCropGenerationFacesUUIDs addObject:uuid];
  }

  [(PHPersonChangeRequest *)self setKeyFacePickSource:sourceCopy];
}

- (void)setTemporalFaces:(id)faces
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:faces];
  if (!v4)
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v9 = v4;
  [(PHChangeRequest *)self didMutate];
  temporalFacesHelper = self->_temporalFacesHelper;
  _existentTemporalFaceObjectIDs = [(PHPersonChangeRequest *)self _existentTemporalFaceObjectIDs];
  [(PHRelationshipChangeRequestHelper *)temporalFacesHelper prepareIfNeededWithExistentObjectIDs:_existentTemporalFaceObjectIDs];

  v7 = self->_temporalFacesHelper;
  v8 = [v9 mutableCopy];
  [(PHRelationshipChangeRequestHelper *)v7 setMutableObjectIDsAndUUIDs:v8];
}

- (void)removeTemporalFaces:(id)faces
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:faces];
  if (v4)
  {
    v6 = v4;
    [(PHChangeRequest *)self didMutate];
    _mutableTemporalFaceObjectIDsAndUUIDs = [(PHPersonChangeRequest *)self _mutableTemporalFaceObjectIDsAndUUIDs];
    [_mutableTemporalFaceObjectIDsAndUUIDs removeObjectsInArray:v6];

    v4 = v6;
  }
}

- (void)addTemporalFaces:(id)faces
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:faces];
  if (v4)
  {
    v6 = v4;
    [(PHChangeRequest *)self didMutate];
    _mutableTemporalFaceObjectIDsAndUUIDs = [(PHPersonChangeRequest *)self _mutableTemporalFaceObjectIDsAndUUIDs];
    [_mutableTemporalFaceObjectIDsAndUUIDs addObjectsFromArray:v6];

    v4 = v6;
  }
}

- (void)removeFaces:(id)faces
{
  v4 = MEMORY[0x1E695DF70];
  facesCopy = faces;
  v6 = objc_alloc_init(v4);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(PHPersonChangeRequest *)self _addObjectIDsOfFaces:facesCopy toFaceIDs:v6 temporalIDs:v7];

  if ([v6 count])
  {
    _mutableFaceObjectIDsAndUUIDs = [(PHPersonChangeRequest *)self _mutableFaceObjectIDsAndUUIDs];
    v9 = [(PHPersonChangeRequest *)self _removeObjects:v6 fromArray:_mutableFaceObjectIDsAndUUIDs];
  }

  else
  {
    v9 = 0;
  }

  if ([v7 count])
  {
    _mutableTemporalFaceObjectIDsAndUUIDs = [(PHPersonChangeRequest *)self _mutableTemporalFaceObjectIDsAndUUIDs];
    v11 = [(PHPersonChangeRequest *)self _removeObjects:v7 fromArray:_mutableTemporalFaceObjectIDsAndUUIDs];
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

- (BOOL)_removeObjects:(id)objects fromArray:(id)array
{
  objectsCopy = objects;
  arrayCopy = array;
  if ([objectsCopy count] && (v8 = objc_msgSend(arrayCopy, "count"), objc_msgSend(arrayCopy, "removeObjectsInArray:", objectsCopy), objc_msgSend(arrayCopy, "count") < v8))
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

- (void)addFaces:(id)faces
{
  v4 = MEMORY[0x1E695DF70];
  facesCopy = faces;
  v9 = objc_alloc_init(v4);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(PHPersonChangeRequest *)self _addObjectIDsOfFaces:facesCopy toFaceIDs:v9 temporalIDs:v6];

  if ([v9 count])
  {
    [(PHChangeRequest *)self didMutate];
    _mutableFaceObjectIDsAndUUIDs = [(PHPersonChangeRequest *)self _mutableFaceObjectIDsAndUUIDs];
    [_mutableFaceObjectIDsAndUUIDs addObjectsFromArray:v9];
  }

  if ([v6 count])
  {
    [(PHChangeRequest *)self didMutate];
    _mutableTemporalFaceObjectIDsAndUUIDs = [(PHPersonChangeRequest *)self _mutableTemporalFaceObjectIDsAndUUIDs];
    [_mutableTemporalFaceObjectIDsAndUUIDs addObjectsFromArray:v6];
  }
}

- (void)_addObjectIDsOfFaces:(id)faces toFaceIDs:(id)ds temporalIDs:(id)iDs
{
  v29 = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  dsCopy = ds;
  iDsCopy = iDs;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [facesCopy countByEnumeratingWithState:&v22 objects:v28 count:16];
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
          objc_enumerationMutation(facesCopy);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = PLObjectIDOrUUIDFromPHObject(v15);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v15 duration];
          if (v17 <= 0.0)
          {
            v18 = dsCopy;
          }

          else
          {
            v18 = iDsCopy;
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

          v18 = dsCopy;
        }

        [v18 addObject:{v16, v21}];
      }

      v12 = [facesCopy countByEnumeratingWithState:&v22 objects:v28 count:16];
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
  _existentInvalidMergeCandidateObjectIDs = [(PHPersonChangeRequest *)self _existentInvalidMergeCandidateObjectIDs];
  [(PHRelationshipChangeRequestHelper *)invalidMergeCandidatesHelper prepareIfNeededWithExistentObjectIDs:_existentInvalidMergeCandidateObjectIDs];

  v5 = self->_invalidMergeCandidatesHelper;

  return [(PHRelationshipChangeRequestHelper *)v5 mutableObjectIDsAndUUIDs];
}

- (id)_mutableMergeCandidateWithConfidenceObjectIDsAndUUIDs
{
  mergeCandidatesWithConfidenceHelper = self->_mergeCandidatesWithConfidenceHelper;
  _existentMergeCandidateWithConfidenceObjectIDs = [(PHPersonChangeRequest *)self _existentMergeCandidateWithConfidenceObjectIDs];
  [(PHRelationshipChangeRequestHelper *)mergeCandidatesWithConfidenceHelper prepareIfNeededWithExistentObjectIDs:_existentMergeCandidateWithConfidenceObjectIDs];

  v5 = self->_mergeCandidatesWithConfidenceHelper;

  return [(PHRelationshipChangeRequestHelper *)v5 mutableObjectIDsAndUUIDs];
}

- (id)_mutableMergeCandidateObjectIDsAndUUIDs
{
  mergeCandidatesHelper = self->_mergeCandidatesHelper;
  _existentMergeCandidateObjectIDs = [(PHPersonChangeRequest *)self _existentMergeCandidateObjectIDs];
  [(PHRelationshipChangeRequestHelper *)mergeCandidatesHelper prepareIfNeededWithExistentObjectIDs:_existentMergeCandidateObjectIDs];

  v5 = self->_mergeCandidatesHelper;

  return [(PHRelationshipChangeRequestHelper *)v5 mutableObjectIDsAndUUIDs];
}

- (id)_mutableRejectedFacesObjectIDsAndUUIDs
{
  rejectedFacesHelper = self->_rejectedFacesHelper;
  _existentRejectedFaceObjectIDs = [(PHPersonChangeRequest *)self _existentRejectedFaceObjectIDs];
  [(PHRelationshipChangeRequestHelper *)rejectedFacesHelper prepareIfNeededWithExistentObjectIDs:_existentRejectedFaceObjectIDs];

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
  _existentTemporalFaceObjectIDs = [(PHPersonChangeRequest *)self _existentTemporalFaceObjectIDs];
  [(PHRelationshipChangeRequestHelper *)temporalFacesHelper prepareIfNeededWithExistentObjectIDs:_existentTemporalFaceObjectIDs];

  v5 = self->_temporalFacesHelper;

  return [(PHRelationshipChangeRequestHelper *)v5 mutableObjectIDsAndUUIDs];
}

- (id)_mutableFaceObjectIDsAndUUIDs
{
  detectedFacesHelper = self->_detectedFacesHelper;
  _existentFaceObjectIDs = [(PHPersonChangeRequest *)self _existentFaceObjectIDs];
  [(PHRelationshipChangeRequestHelper *)detectedFacesHelper prepareIfNeededWithExistentObjectIDs:_existentFaceObjectIDs];

  v5 = self->_detectedFacesHelper;

  return [(PHRelationshipChangeRequestHelper *)v5 mutableObjectIDsAndUUIDs];
}

- (void)_prepareKeyFaceHelperIfNeeded
{
  +[PHPhotoLibrary assertTransaction];
  originalObjectIDs = [(PHRelationshipChangeRequestHelper *)self->_keyFaceHelper originalObjectIDs];

  if (!originalObjectIDs)
  {
    [(PHRelationshipChangeRequestHelper *)self->_keyFaceHelper setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
  }

  mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self->_keyFaceHelper mutableObjectIDsAndUUIDs];

  if (!mutableObjectIDsAndUUIDs)
  {
    keyFaceHelper = self->_keyFaceHelper;
    originalObjectIDs2 = [(PHRelationshipChangeRequestHelper *)keyFaceHelper originalObjectIDs];
    v6 = [originalObjectIDs2 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)keyFaceHelper setMutableObjectIDsAndUUIDs:v6];
  }
}

- (id)_existentInvalidMergeCandidateObjectIDs
{
  targetPerson = [(PHPersonChangeRequest *)self targetPerson];
  if (targetPerson)
  {
    targetPerson2 = [(PHPersonChangeRequest *)self targetPerson];
    _noLimitsPersonFetchOptions = [(PHPersonChangeRequest *)self _noLimitsPersonFetchOptions];
    v6 = [PHQuery queryForInvalidMergeCandidatePersonsForPerson:targetPerson2 options:_noLimitsPersonFetchOptions];
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
  targetPerson = [(PHPersonChangeRequest *)self targetPerson];
  if (targetPerson)
  {
    targetPerson2 = [(PHPersonChangeRequest *)self targetPerson];
    _noLimitsPersonFetchOptions = [(PHPersonChangeRequest *)self _noLimitsPersonFetchOptions];
    v6 = [PHQuery queryForMergeCandidateWithConfidencePersonsForPerson:targetPerson2 options:_noLimitsPersonFetchOptions];
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
  targetPerson = [(PHPersonChangeRequest *)self targetPerson];
  if (targetPerson)
  {
    targetPerson2 = [(PHPersonChangeRequest *)self targetPerson];
    _noLimitsPersonFetchOptions = [(PHPersonChangeRequest *)self _noLimitsPersonFetchOptions];
    v6 = [PHQuery queryForMergeCandidatePersonsForPerson:targetPerson2 options:_noLimitsPersonFetchOptions];
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
  photoLibrary = [(PHChangeRequest *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setMinimumUnverifiedFaceCount:0];
  [librarySpecificFetchOptions setMinimumVerifiedFaceCount:0];
  [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_1F102E0F0];

  return librarySpecificFetchOptions;
}

- (id)_existentRejectedFaceObjectIDs
{
  targetPerson = [(PHPersonChangeRequest *)self targetPerson];

  if (targetPerson)
  {
    photoLibrary = [(PHChangeRequest *)self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    [librarySpecificFetchOptions setIsExclusivePredicate:1];
    [librarySpecificFetchOptions setIncludeTorsoAndFaceDetectionData:1];
    targetPerson2 = [(PHPersonChangeRequest *)self targetPerson];
    v7 = [PHQuery queryForRejectedFacesOnPerson:targetPerson2 options:librarySpecificFetchOptions];
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
  targetPerson = [(PHPersonChangeRequest *)self targetPerson];

  if (targetPerson)
  {
    photoLibrary = [(PHChangeRequest *)self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    [librarySpecificFetchOptions setIsExclusivePredicate:1];
    [librarySpecificFetchOptions setIncludeMediaAnalysisProcessingRangeTypes:2];
    [librarySpecificFetchOptions setIncludeTorsoAndFaceDetectionData:1];
    targetPerson2 = [(PHPersonChangeRequest *)self targetPerson];
    v7 = [PHQuery queryForFacesForPerson:targetPerson2 options:librarySpecificFetchOptions];
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
  targetPerson = [(PHPersonChangeRequest *)self targetPerson];

  if (targetPerson)
  {
    photoLibrary = [(PHChangeRequest *)self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    [librarySpecificFetchOptions setIsExclusivePredicate:1];
    [librarySpecificFetchOptions setIncludeTorsoAndFaceDetectionData:1];
    targetPerson2 = [(PHPersonChangeRequest *)self targetPerson];
    v7 = [PHQuery queryForFacesForPerson:targetPerson2 options:librarySpecificFetchOptions];
  }

  else
  {
    v7 = 0;
  }

  v8 = [PHRelationshipChangeRequestHelper existentObjectIDsUsingQuery:v7];

  return v8;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v9 = [mutations objectForKey:@"verifiedType"];

  if (v9)
  {
    intValue = [v9 intValue];
  }

  else
  {
    intValue = 0;
  }

  v11 = MEMORY[0x1E69BE608];
  managedObjectContext = [libraryCopy managedObjectContext];
  uuid = [(PHChangeRequest *)self uuid];
  v14 = [v11 insertIntoManagedObjectContext:managedObjectContext withPersonUUID:uuid fullName:&stru_1F0FC60C8 verifiedType:intValue];

  if (error && !v14)
  {
    v15 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A578];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create person"];
    v20[0] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    *error = [v15 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v17];
  }

  return v14;
}

- (BOOL)validateInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  detectionType = [(PHPersonChangeRequest *)self detectionType];
  v6 = detectionType;
  if (error && detectionType == 2)
  {
    v7 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A278];
    v11[0] = @"PHDetectionTypePet is not a valid value to assign to PHPerson.detectionType";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *error = [v7 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3111 userInfo:v8];
  }

  return v6 != 2;
}

- (BOOL)_ensureModelConsistencyForVerifiedTypePromotion:(id)promotion originalVerifiedType:(int)type error:(id *)error
{
  v6 = *&type;
  v46 = *MEMORY[0x1E69E9840];
  promotionCopy = promotion;
  keyFace = [promotionCopy keyFace];
  if (keyFace)
  {
    if (!v6)
    {
      [promotionCopy disconnectFaceGroup];
    }

    if ([promotionCopy verifiedType] == 2)
    {
      [keyFace setEffectiveNameSource:5];
      [keyFace setConfirmedFaceCropGenerationState:1];
    }

    else if ([promotionCopy verifiedType] == 1)
    {
      [promotionCopy setKeyFacePickSource:1];
      if ([keyFace nameSource] != 1)
      {
        [keyFace setEffectiveNameSource:1];
        [keyFace setConfirmedFaceCropGenerationState:1];
      }

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      detectedFaces = [promotionCopy detectedFaces];
      v19 = [detectedFaces countByEnumeratingWithState:&v36 objects:v41 count:16];
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
              objc_enumerationMutation(detectedFaces);
            }

            v23 = *(*(&v36 + 1) + 8 * i);
            if ([v23 nameSource] == 5)
            {
              [v23 setEffectiveNameSource:0];
            }
          }

          v20 = [detectedFaces countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v20);
      }

      managedObjectContext = [promotionCopy managedObjectContext];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      faceCrops = [promotionCopy faceCrops];
      v26 = [faceCrops countByEnumeratingWithState:&v32 objects:v40 count:16];
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
              objc_enumerationMutation(faceCrops);
            }

            v30 = *(*(&v32 + 1) + 8 * j);
            if ([v30 type] == 5)
            {
              [managedObjectContext deleteObject:v30];
            }
          }

          v27 = [faceCrops countByEnumeratingWithState:&v32 objects:v40 count:16];
        }

        while (v27);
      }
    }
  }

  else
  {
    v9 = MEMORY[0x1E696AEC0];
    personUUID = [promotionCopy personUUID];
    v11 = [v9 stringWithFormat:@"keyFace is nil for person %@ being promoted from %d to %d. Unable to request face crop generation.", personUUID, v6, objc_msgSend(promotionCopy, "verifiedType")];

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
    if (error)
    {
      v17 = v17;
      *error = v17;
    }
  }

  return keyFace != 0;
}

- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error
{
  v267 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  libraryCopy = library;
  photoLibrary = [(NSMutableArray *)objectCopy photoLibrary];
  managedObjectContext = [photoLibrary managedObjectContext];

  verifiedType = [(NSMutableArray *)objectCopy verifiedType];
  v255 = 0;
  v13 = [(PHPersonChangeRequest *)self _shouldPromotePerson:objectCopy toVerifiedType:&v255];
  if (v13)
  {
    [(NSMutableArray *)objectCopy setEffectiveVerifiedType:v255];
  }

  helper = [(PHChangeRequest *)self helper];
  v254 = 0;
  v15 = [helper applyMutationsToManagedObject:objectCopy error:&v254];
  v16 = v254;

  if (!v15)
  {
    v23 = v16;
    goto LABEL_77;
  }

  v199 = v13;
  keyFace = [(NSMutableArray *)objectCopy keyFace];
  keyFaceHelper = [(PHPersonChangeRequest *)self keyFaceHelper];
  mutableObjectIDsAndUUIDs = [keyFaceHelper mutableObjectIDsAndUUIDs];

  selfCopy = self;
  v197 = verifiedType;
  if (mutableObjectIDsAndUUIDs)
  {
    [keyFaceHelper setAllowsInsert:1];
    entityName = [MEMORY[0x1E69BE3D0] entityName];
    [keyFaceHelper setDestinationEntityName:entityName];

    v253 = v16;
    v21 = [keyFaceHelper applyMutationsToManagedObjectToOneRelationship:objectCopy error:&v253];
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
  detectedFacesHelper = [(PHPersonChangeRequest *)selfCopy detectedFacesHelper];
  v215 = selfCopy;
  v216 = objectCopy;
  v212 = managedObjectContext;
  v210 = detectedFacesHelper;
  if ((v21 & 1) == 0)
  {
    temporalFacesHelper = [(PHPersonChangeRequest *)selfCopy temporalFacesHelper];
    v39 = selfCopy;
    goto LABEL_22;
  }

  v25 = detectedFacesHelper;
  mutableObjectIDsAndUUIDs2 = [detectedFacesHelper mutableObjectIDsAndUUIDs];

  if (!mutableObjectIDsAndUUIDs2)
  {
    temporalFacesHelper = [(PHPersonChangeRequest *)selfCopy temporalFacesHelper];
    goto LABEL_82;
  }

  [v25 setAllowsInsert:1];
  [v25 setAllowsMove:0];
  [v25 setAllowsRemove:1];
  entityName2 = [MEMORY[0x1E69BE3D0] entityName];
  [v25 setDestinationEntityName:entityName2];

  mutableFaces = [(NSMutableArray *)objectCopy mutableFaces];
  v252 = v16;
  v29 = [v25 applyMutationsToManagedObject:objectCopy unorderedMutableChildren:mutableFaces error:&v252];
  v30 = v252;

  if (v29)
  {
    allObjects = [mutableFaces allObjects];
    [obj addObjectsFromArray:allObjects];
  }

  keyFace2 = [(NSMutableArray *)objectCopy keyFace];
  v33 = objectCopy;
  if (keyFace2)
  {
    v34 = keyFace2;
    keyFace3 = [(NSMutableArray *)objectCopy keyFace];
    v36 = [mutableFaces containsObject:keyFace3];

    if ((v36 & 1) == 0)
    {
      if ([(NSMutableArray *)v33 keyFacePickSource]== 1)
      {
        v37 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          personUUID = [(NSMutableArray *)v33 personUUID];
          *buf = 138543362;
          v262 = personUUID;
          _os_log_impl(&dword_19C86F000, v37, OS_LOG_TYPE_ERROR, "Resetting user-picked keyFace on person %{public}@ because it's not in the list of faces", buf, 0xCu);
        }
      }

      [(NSMutableArray *)v33 setKeyFace:0 pickSource:0];
    }
  }

  v39 = v215;
  temporalFacesHelper = [(PHPersonChangeRequest *)v215 temporalFacesHelper];
  v16 = v30;
  objectCopy = v33;
  managedObjectContext = v212;
  if ((v29 & 1) == 0)
  {
LABEL_22:
    rejectedFacesHelper = [(PHPersonChangeRequest *)v39 rejectedFacesHelper];
    v23 = v16;
    v41 = v39;
    goto LABEL_23;
  }

LABEL_82:
  mutableObjectIDsAndUUIDs3 = [temporalFacesHelper mutableObjectIDsAndUUIDs];

  if (mutableObjectIDsAndUUIDs3)
  {
    [temporalFacesHelper setAllowsInsert:1];
    [temporalFacesHelper setAllowsMove:0];
    [temporalFacesHelper setAllowsRemove:1];
    entityName3 = [MEMORY[0x1E69BE3D0] entityName];
    [temporalFacesHelper setDestinationEntityName:entityName3];

    mutableTemporalFaces = [(NSMutableArray *)objectCopy mutableTemporalFaces];
    v251 = v16;
    v103 = [temporalFacesHelper applyMutationsToManagedObject:objectCopy unorderedMutableChildren:mutableTemporalFaces error:&v251];
    v23 = v251;

    if (v103)
    {
      allObjects2 = [mutableTemporalFaces allObjects];
      [obj addObjectsFromArray:allObjects2];
    }

    rejectedFacesHelper2 = [(PHPersonChangeRequest *)v215 rejectedFacesHelper];
    if (v103)
    {
      v16 = v23;
      v41 = v215;
      goto LABEL_88;
    }

    rejectedFacesHelper = rejectedFacesHelper2;
    v41 = v215;
LABEL_23:
    v209 = temporalFacesHelper;
    mergeCandidatesHelper = [(PHPersonChangeRequest *)v41 mergeCandidatesHelper];
    goto LABEL_24;
  }

  v41 = v215;
  rejectedFacesHelper2 = [(PHPersonChangeRequest *)v215 rejectedFacesHelper];
LABEL_88:
  v106 = rejectedFacesHelper2;
  mutableObjectIDsAndUUIDs4 = [rejectedFacesHelper2 mutableObjectIDsAndUUIDs];

  v201 = libraryCopy;
  rejectedFacesHelper = v106;
  v209 = temporalFacesHelper;
  if (mutableObjectIDsAndUUIDs4)
  {
    [v106 setAllowsInsert:1];
    [v106 setAllowsMove:0];
    [v106 setAllowsRemove:1];
    entityName4 = [MEMORY[0x1E69BE3D0] entityName];
    [v106 setDestinationEntityName:entityName4];

    mutableRejectedFaces = [(NSMutableArray *)objectCopy mutableRejectedFaces];
    v250 = v16;
    v193 = [v106 applyMutationsToManagedObject:objectCopy unorderedMutableChildren:mutableRejectedFaces error:&v250];
    v203 = v250;

    keyFace4 = [(NSMutableArray *)objectCopy keyFace];
    v111 = objectCopy;
    if (keyFace4)
    {
      v112 = keyFace4;
      keyFace5 = [(NSMutableArray *)objectCopy keyFace];
      v114 = [mutableRejectedFaces containsObject:keyFace5];

      if (v114)
      {
        if ([(NSMutableArray *)v111 keyFacePickSource]== 1)
        {
          v115 = PLPhotoKitGetLog();
          if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
          {
            personUUID2 = [(NSMutableArray *)v111 personUUID];
            *buf = 138543362;
            v262 = personUUID2;
            _os_log_impl(&dword_19C86F000, v115, OS_LOG_TYPE_ERROR, "Resetting user-picked keyFace on person %{public}@ because it's in the list of rejected faces", buf, 0xCu);
          }
        }

        [(NSMutableArray *)v111 setKeyFace:0 pickSource:0];
      }
    }

    v207 = mutableRejectedFaces;
    v248 = 0u;
    v249 = 0u;
    v246 = 0u;
    v247 = 0u;
    rejectedFaces = [(NSMutableArray *)v111 rejectedFaces];
    v118 = [rejectedFaces countByEnumeratingWithState:&v246 objects:v266 count:16];
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
            objc_enumerationMutation(rejectedFaces);
          }

          v122 = *(*(&v246 + 1) + 8 * i);
          _mutableRequiringFaceCropGenerationFacesUUIDs = [(PHPersonChangeRequest *)v215 _mutableRequiringFaceCropGenerationFacesUUIDs];
          uuid = [v122 uuid];
          v125 = [_mutableRequiringFaceCropGenerationFacesUUIDs containsObject:uuid];

          if (v125)
          {
            [v122 addRejectedPersonNeedingFaceCrops:v216];
            [v122 addClusterRejectedPerson:v216];
          }

          _mutableRejectedFacesObjectIDsAndUUIDs = [(PHPersonChangeRequest *)v215 _mutableRejectedFacesObjectIDsAndUUIDs];
          uuid2 = [v122 uuid];
          v128 = [_mutableRejectedFacesObjectIDsAndUUIDs containsObject:uuid2];

          if (v128)
          {
            v129 = [v122 associatedAssetForFaceOrTorso:0 orTemporal:0];
            date = [MEMORY[0x1E695DF00] date];
            [v129 setModificationDate:date];
          }
        }

        v119 = [rejectedFaces countByEnumeratingWithState:&v246 objects:v266 count:16];
      }

      while (v119);
    }

    v41 = v215;
    mergeCandidatesHelper2 = [(PHPersonChangeRequest *)v215 mergeCandidatesHelper];
    mergeCandidatesHelper3 = mergeCandidatesHelper2;
    if (v193)
    {
      v194 = keyFaceHelper;
      libraryCopy = v201;
      v16 = v203;
      objectCopy = v216;
      managedObjectContext = v212;
      goto LABEL_111;
    }

    mergeCandidatesHelper = mergeCandidatesHelper2;
    objectCopy = v216;
    libraryCopy = v201;
    v23 = v203;
    managedObjectContext = v212;
LABEL_24:
    mergeCandidatesWithConfidenceHelper = [(PHPersonChangeRequest *)v41 mergeCandidatesWithConfidenceHelper];
    goto LABEL_25;
  }

  v194 = keyFaceHelper;
  mergeCandidatesHelper3 = [(PHPersonChangeRequest *)v41 mergeCandidatesHelper];
LABEL_111:
  mutableObjectIDsAndUUIDs5 = [mergeCandidatesHelper3 mutableObjectIDsAndUUIDs];

  mergeCandidatesHelper = mergeCandidatesHelper3;
  if (mutableObjectIDsAndUUIDs5)
  {
    [mergeCandidatesHelper3 setAllowsInsert:1];
    [mergeCandidatesHelper3 setAllowsMove:0];
    [mergeCandidatesHelper3 setAllowsRemove:1];
    entityName5 = [MEMORY[0x1E69BE608] entityName];
    [mergeCandidatesHelper3 setDestinationEntityName:entityName5];

    mutableMergeCandidates = [(NSMutableArray *)objectCopy mutableMergeCandidates];
    v245 = v16;
    v136 = [mergeCandidatesHelper3 applyMutationsToManagedObject:objectCopy unorderedMutableChildren:mutableMergeCandidates error:&v245];
    v23 = v245;

    mergeCandidatesWithConfidenceHelper = [(PHPersonChangeRequest *)v41 mergeCandidatesWithConfidenceHelper];
    if (v136)
    {
      v16 = v23;
      goto LABEL_116;
    }

    keyFaceHelper = v194;
LABEL_25:
    invalidMergeCandidatesHelper = [(PHPersonChangeRequest *)v41 invalidMergeCandidatesHelper];
    v44 = 0;
    goto LABEL_26;
  }

  mergeCandidatesWithConfidenceHelper = [(PHPersonChangeRequest *)v41 mergeCandidatesWithConfidenceHelper];
LABEL_116:
  keyFaceHelper = v194;
  mutableObjectIDsAndUUIDs6 = [mergeCandidatesWithConfidenceHelper mutableObjectIDsAndUUIDs];

  if (mutableObjectIDsAndUUIDs6)
  {
    [mergeCandidatesWithConfidenceHelper setAllowsInsert:1];
    [mergeCandidatesWithConfidenceHelper setAllowsMove:0];
    [mergeCandidatesWithConfidenceHelper setAllowsRemove:1];
    entityName6 = [MEMORY[0x1E69BE608] entityName];
    [mergeCandidatesWithConfidenceHelper setDestinationEntityName:entityName6];

    mutableMergeCandidatesWithConfidence = [(NSMutableArray *)objectCopy mutableMergeCandidatesWithConfidence];
    v244 = v16;
    v140 = [mergeCandidatesWithConfidenceHelper applyMutationsToManagedObject:objectCopy unorderedMutableChildren:mutableMergeCandidatesWithConfidence error:&v244];
    v23 = v244;

    invalidMergeCandidatesHelper = [(PHPersonChangeRequest *)v41 invalidMergeCandidatesHelper];
    if (!v140)
    {
      v44 = 0;
      goto LABEL_150;
    }

    v16 = v23;
  }

  else
  {
    invalidMergeCandidatesHelper = [(PHPersonChangeRequest *)v41 invalidMergeCandidatesHelper];
  }

  mutableObjectIDsAndUUIDs7 = [invalidMergeCandidatesHelper mutableObjectIDsAndUUIDs];

  if (mutableObjectIDsAndUUIDs7)
  {
    [invalidMergeCandidatesHelper setAllowsInsert:1];
    [invalidMergeCandidatesHelper setAllowsMove:0];
    [invalidMergeCandidatesHelper setAllowsRemove:1];
    entityName7 = [MEMORY[0x1E69BE608] entityName];
    [invalidMergeCandidatesHelper setDestinationEntityName:entityName7];

    mutableInvalidMergeCandidates = [(NSMutableArray *)objectCopy mutableInvalidMergeCandidates];
    v243 = v16;
    v144 = [invalidMergeCandidatesHelper applyMutationsToManagedObject:objectCopy unorderedMutableChildren:mutableInvalidMergeCandidates error:&v243];
    v23 = v243;

    if (v144)
    {
      v204 = v23;
      errorCopy2 = error;
      objectCopy = v216;
      goto LABEL_126;
    }

    v44 = 0;
    objectCopy = v216;
LABEL_150:
    libraryCopy = v201;
    managedObjectContext = v212;
    goto LABEL_26;
  }

  errorCopy2 = error;
  v204 = v16;
LABEL_126:
  libraryCopy = v201;
  managedObjectContext = v212;
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
          keyFace6 = [v151 keyFace];
          [(NSMutableArray *)v216 rejectFaceIfPossible:keyFace6 shouldCreateFaceCrop:1];

          keyFace7 = [(NSMutableArray *)v216 keyFace];
          [v151 rejectFaceIfPossible:keyFace7 shouldCreateFaceCrop:1];
        }

        v148 = [v146 countByEnumeratingWithState:&v239 objects:v265 count:16];
      }

      while (v148);
    }

    v145 = v215;
    objectCopy = v216;
    libraryCopy = v201;
    managedObjectContext = v212;
  }

  if ([(NSMutableArray *)v145->_personUUIDsToMerge count])
  {
    v154 = [MEMORY[0x1E69BE608] personsWithUUIDs:v145->_personUUIDsToMerge inManagedObjectContext:managedObjectContext];
    if (!v154)
    {
      v44 = 0;
      v41 = v215;
      error = errorCopy2;
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
            personUUID3 = [v163 personUUID];
            v165 = [personUUID3 isEqualToString:v215->_nominalMergeTargetUUID];

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
        libraryCopy = v201;
        managedObjectContext = v212;
        v155 = v191;
      }

      else
      {
        v192 = 0;
      }

      objectCopy = v216;
      personUUID4 = [(NSMutableArray *)v216 personUUID];
      v168 = [personUUID4 isEqualToString:v215->_nominalMergeTargetUUID];

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
      objectCopy = v216;
    }

    [(NSMutableArray *)objectCopy prepareForUserInitiatedMergeWithPersons:v155];
    v173 = [(NSMutableArray *)objectCopy pickOptimalStateForUserInitiatedMergeWithPersons:v155 nominalTarget:v166];
    [(NSMutableArray *)objectCopy mergePersons:v155 withOptimalState:v173];

    v145 = v215;
  }

  v174 = [(NSMutableSet *)v145->_graphDedupePersonUUIDs count];
  v175 = v145;
  error = errorCopy2;
  if (v174)
  {
    v176 = [MEMORY[0x1E69BE608] personsWithUUIDs:v175->_graphDedupePersonUUIDs inManagedObjectContext:managedObjectContext];
    v177 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v262 = objectCopy;
      v263 = 2112;
      v264 = v176;
      _os_log_impl(&dword_19C86F000, v177, OS_LOG_TYPE_DEFAULT, "Deduping graph persons with target %@, dedupe persons %@", buf, 0x16u);
    }

    v234 = 0;
    v178 = [(NSMutableArray *)objectCopy dedupeGraphPersons:v176 error:&v234];
    v179 = v234;
    v180 = v179;
    if (!v178)
    {
      localizedDescription = [v179 localizedDescription];
      v189 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:{@"%@", localizedDescription}];

      v190 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v190, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v262 = localizedDescription;
        _os_log_impl(&dword_19C86F000, v190, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v44 = 0;
      v23 = v189;
      objectCopy = v216;
      libraryCopy = v201;
      managedObjectContext = v212;
      goto LABEL_187;
    }

    v175 = v215;
  }

  [(NSMutableArray *)objectCopy createUnverifiedPersonForRejectedFaceUUIDs:v175->_faceUUIDsRequiringNewUnverifiedPerson inManagedObjectContext:managedObjectContext];
  if (v199)
  {
    v233 = v204;
    v44 = [(PHPersonChangeRequest *)v175 _ensureModelConsistencyForVerifiedTypePromotion:objectCopy originalVerifiedType:v197 error:&v233];
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
  keyFace8 = [(NSMutableArray *)objectCopy keyFace];
  v41 = v215;
  _mutableRequiringFaceCropGenerationFacesUUIDs2 = [(PHPersonChangeRequest *)v215 _mutableRequiringFaceCropGenerationFacesUUIDs];
  [keyFace8 uuid];
  v185 = v184 = objectCopy;
  if ([_mutableRequiringFaceCropGenerationFacesUUIDs2 containsObject:v185])
  {
    verifiedType2 = [(NSMutableArray *)v184 verifiedType];

    v187 = verifiedType2 == 1;
    v41 = v215;
    objectCopy = v184;
    libraryCopy = v201;
    v23 = v205;
    if (v187)
    {
      [(NSMutableArray *)objectCopy setKeyFacePickSource:1];
      if ([keyFace8 nameSource] != 1)
      {
        [keyFace8 setEffectiveNameSource:1];
        [keyFace8 setConfirmedFaceCropGenerationState:1];
      }

      if ([keyFace nameSource] != 1)
      {
        [keyFace setEffectiveNameSource:1];
        [keyFace setConfirmedFaceCropGenerationState:1];
      }
    }
  }

  else
  {

    objectCopy = v184;
    libraryCopy = v201;
    v23 = v205;
  }

  v44 = 1;
LABEL_26:

  if (!v44)
  {
LABEL_77:
    if (error)
    {
      v98 = v23;
      v97 = 0;
      *error = v23;
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
    userFeedbacks = [(NSMutableArray *)objectCopy userFeedbacks];
    v46 = [userFeedbacks _pl_filter:&__block_literal_global_25567];

    v47 = [MEMORY[0x1E69BE868] newestUserFeedbackInSet:v46];
    if (!v47)
    {
      v48 = MEMORY[0x1E69BE868];
      photoLibrary2 = [(NSMutableArray *)objectCopy photoLibrary];
      managedObjectContext2 = [photoLibrary2 managedObjectContext];
      uuid3 = [(PHUserFeedback *)v215->_userFeedback uuid];
      v47 = [v48 insertIntoManagedObjectContext:managedObjectContext2 withUUID:uuid3];

      [v47 setPerson:objectCopy];
    }

    [v47 setType:{-[PHUserFeedback type](v215->_userFeedback, "type")}];
    [v47 setFeature:{-[PHUserFeedback feature](v215->_userFeedback, "feature")}];
    context = [(PHUserFeedback *)v215->_userFeedback context];
    [v47 setContext:context];

    lastModifiedDate = [(PHUserFeedback *)v215->_userFeedback lastModifiedDate];
    [v47 setLastModifiedDate:lastModifiedDate];

    v41 = v215;
  }

  if (v41->_didUnsetUserFeedback)
  {
    v231 = 0u;
    v232 = 0u;
    v229 = 0u;
    v230 = 0u;
    userFeedbacks2 = [(NSMutableArray *)objectCopy userFeedbacks];
    v55 = [userFeedbacks2 countByEnumeratingWithState:&v229 objects:v259 count:16];
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
            objc_enumerationMutation(userFeedbacks2);
          }

          v59 = *(*(&v229 + 1) + 8 * m);
          if (![v59 feature])
          {
            managedObjectContext3 = [(NSMutableArray *)objectCopy managedObjectContext];
            [managedObjectContext3 deleteObject:v59];
          }
        }

        v56 = [userFeedbacks2 countByEnumeratingWithState:&v229 objects:v259 count:16];
      }

      while (v56);
    }

    v41 = v215;
  }

  if (v41->_autonamingUserFeedbacks)
  {
    v200 = libraryCopy;
    [(NSMutableArray *)objectCopy userFeedbacks];
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
          uuid4 = [v69 uuid];
          photoLibrary3 = [(NSMutableArray *)objectCopy photoLibrary];
          managedObjectContext4 = [photoLibrary3 managedObjectContext];
          v74 = [v70 userFeedbackWithUUID:uuid4 inManagedObjectContext:managedObjectContext4];

          objectCopy = v216;
          if (!v74)
          {
            v75 = MEMORY[0x1E69BE868];
            photoLibrary4 = [(NSMutableArray *)v216 photoLibrary];
            managedObjectContext5 = [photoLibrary4 managedObjectContext];
            uuid5 = [v69 uuid];
            v74 = [v75 insertIntoManagedObjectContext:managedObjectContext5 withUUID:uuid5];

            objectCopy = v216;
            [v74 setPerson:v216];
          }

          [v74 setType:{objc_msgSend(v69, "type")}];
          [v74 setFeature:{objc_msgSend(v69, "feature")}];
          context2 = [v69 context];
          [v74 setContext:context2];

          lastModifiedDate2 = [v69 lastModifiedDate];
          [v74 setLastModifiedDate:lastModifiedDate2];

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
    libraryCopy = v200;
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
          managedObjectContext6 = [(NSMutableArray *)objectCopy managedObjectContext];
          [managedObjectContext6 deleteObject:v86];
        }

        v83 = [v81 countByEnumeratingWithState:&v221 objects:v257 count:16];
      }

      while (v83);
    }

    managedObjectContext = v212;
    v41 = v215;
  }

  if (v41->_didUnsetAutonamingUserFeedbacks)
  {
    v219 = 0u;
    v220 = 0u;
    v217 = 0u;
    v218 = 0u;
    userFeedbacks3 = [(NSMutableArray *)objectCopy userFeedbacks];
    v89 = [userFeedbacks3 countByEnumeratingWithState:&v217 objects:v256 count:16];
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
            objc_enumerationMutation(userFeedbacks3);
          }

          v93 = *(*(&v217 + 1) + 8 * jj);
          if ([v93 feature] == 1 || objc_msgSend(v93, "feature") == 2)
          {
            managedObjectContext7 = [(NSMutableArray *)objectCopy managedObjectContext];
            [managedObjectContext7 deleteObject:v93];
          }
        }

        v90 = [userFeedbacks3 countByEnumeratingWithState:&v217 objects:v256 count:16];
      }

      while (v90);
    }

    managedObjectContext = v212;
    v41 = v215;
  }

  searchEntityRelationsToSet = v41->_searchEntityRelationsToSet;
  if (searchEntityRelationsToSet)
  {
    [MEMORY[0x1E69BE780] setPersonRelationsFromDictionaries:searchEntityRelationsToSet onPerson:objectCopy];
  }

  searchEntityRelationsToRemove = v41->_searchEntityRelationsToRemove;
  if (searchEntityRelationsToRemove)
  {
    [MEMORY[0x1E69BE780] removePersonRelationsMatchingDictionaries:searchEntityRelationsToRemove onPerson:objectCopy];
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

- (BOOL)_shouldPromotePerson:(id)person toVerifiedType:(int *)type
{
  personCopy = person;
  if ([personCopy verifiedType] == 1)
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

  verifiedType = [personCopy verifiedType];
  v10 = v8 == verifiedType;
  v7 = v8 != verifiedType;
  if (type && !v10)
  {
    *type = v12;
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (BOOL)_validateMergePerson:(id)person withPersonUUIDs:(id)ds error:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  personCopy = person;
  if (![ds count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHPersonChangeRequest.m" lineNumber:448 description:{@"Invalid parameter not satisfying: %@", @"personUUIDs.count > 0"}];
  }

  v10 = MEMORY[0x1E695D5E0];
  entityName = [MEMORY[0x1E69BE608] entityName];
  v12 = [v10 fetchRequestWithEntityName:entityName];

  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"personUUID", self->_personUUIDsToMerge];
  [v12 setPredicate:v13];

  v23[0] = @"detectionType";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  [v12 setPropertiesToFetch:v14];

  managedObjectContext = [personCopy managedObjectContext];
  v22 = 0;
  v16 = [managedObjectContext executeFetchRequest:v12 error:&v22];
  v17 = v22;

  if (v16)
  {
    v18 = [personCopy validateDetectionTypesForMergingWithPersons:v16 error:error];
  }

  else if (error)
  {
    v19 = v17;
    v18 = 0;
    *error = v17;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)validateMutationsToManagedObject:(id)object error:(id *)error
{
  v53[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  helper = [(PHChangeRequest *)self helper];
  v43 = 0;
  v8 = [helper validateMutationsToManagedObject:objectCopy error:&v43];
  v9 = v43;

  if (!v8)
  {
    LOBYTE(v10) = 0;
    if (!error)
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

    if ([objectCopy verifiedType] == 1 && *buf != 1)
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

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v18 = [mutations objectForKeyedSubscript:@"detectionType"];
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
    if (!error)
    {
      goto LABEL_31;
    }

LABEL_27:
    if ((v10 & 1) == 0)
    {
      v37 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        userInfo = [v9 userInfo];
        v39 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A278]];
        *buf = 138543362;
        v45 = v39;
        _os_log_impl(&dword_19C86F000, v37, OS_LOG_TYPE_ERROR, "Person change request validation failed: %{public}@", buf, 0xCu);
      }

      v40 = v9;
      LOBYTE(v10) = 0;
      *error = v9;
    }

    goto LABEL_31;
  }

  if ([(NSMutableArray *)self->_personUUIDsToMerge count])
  {
    personUUIDsToMerge = self->_personUUIDsToMerge;
    v42 = 0;
    LODWORD(v10) = [(PHPersonChangeRequest *)self _validateMergePerson:objectCopy withPersonUUIDs:personUUIDsToMerge error:&v42];
    v23 = v42;
    v15 = v23;
    if (!v10)
    {

LABEL_26:
      v9 = v15;
      if (!error)
      {
        goto LABEL_31;
      }

      goto LABEL_27;
    }
  }

  if ([objectCopy keyFacePickSource] != 1)
  {
    LOBYTE(v10) = 1;
    goto LABEL_31;
  }

  helper3 = [(PHChangeRequest *)self helper];
  mutations2 = [helper3 mutations];
  v26 = [mutations2 objectForKey:@"keyFacePickSource"];

  if (v26 && [v26 shortValue] != 1 && (objc_msgSend(objectCopy, "keyFace"), (v27 = objc_claimAutoreleasedReturnValue()) != 0) && (v28 = v27, objc_msgSend(objectCopy, "keyFace"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "assetVisible"), v29, v28, v30))
  {
    v10 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E69BFF48];
    v46 = *MEMORY[0x1E696A278];
    v32 = MEMORY[0x1E696AEC0];
    personUUID = [objectCopy personUUID];
    v34 = [v32 stringWithFormat:@"Attempt to change user-picked keyFacePickSource on person %@", personUUID];
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

  if (error)
  {
    goto LABEL_27;
  }

LABEL_31:

  return v10;
}

- (BOOL)_hasMutationForVerifiedType:(int *)type
{
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v6 = [mutations objectForKey:@"verifiedType"];

  if (type && v6)
  {
    *type = [v6 intValue];
  }

  return v6 != 0;
}

- (BOOL)_containsUserMutations
{
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];

  v5 = [mutations objectForKey:@"fullName"];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [mutations objectForKey:@"personUri"];
    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v8 = [mutations objectForKey:@"type"];
      if (v8)
      {
        v6 = 1;
      }

      else
      {
        v9 = [mutations objectForKey:@"displayName"];
        if (v9)
        {
          v6 = 1;
        }

        else
        {
          rejectedFacesHelper = [(PHPersonChangeRequest *)self rejectedFacesHelper];
          mutableObjectIDsAndUUIDs = [rejectedFacesHelper mutableObjectIDsAndUUIDs];
          v6 = [mutableObjectIDsAndUUIDs count] != 0;
        }
      }
    }
  }

  return v6;
}

- (void)setAutonamingUserFeedbacks:(id)feedbacks
{
  v20 = *MEMORY[0x1E69E9840];
  feedbacksCopy = feedbacks;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [feedbacksCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(feedbacksCopy);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 feature] != 1 && objc_msgSend(v10, "feature") != 2)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"PHPersonChangeRequest.m" lineNumber:349 description:@"-setAutonamingUserFeedbacks should only be used for PHUserFeedbacks with feature set to PHUserFeedbackPersonFeatureAutonamingSuggestionWithName or PHUserFeedbackPersonFeatureAutonamingSuggestionWithContactID"];
        }
      }

      v7 = [feedbacksCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v13 = [feedbacksCopy copy];
  autonamingUserFeedbacks = self->_autonamingUserFeedbacks;
  self->_autonamingUserFeedbacks = v13;

  if (![feedbacksCopy count])
  {
    self->_didUnsetAutonamingUserFeedbacks = 1;
  }
}

- (void)setUserFeedback:(id)feedback
{
  feedbackCopy = feedback;
  if ([(PHUserFeedback *)feedbackCopy feature])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHPersonChangeRequest.m" lineNumber:339 description:@"-setUserFeedback should only be used for PHUserFeedbacks with feature set to PHUserFeedbackPersonFeatureNone"];
  }

  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  userFeedback = self->_userFeedback;
  self->_userFeedback = feedbackCopy;

  if (!feedbackCopy)
  {
    self->_didUnsetUserFeedback = 1;
  }
}

- (void)setSexType:(unsigned __int16)type
{
  typeCopy = type;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:typeCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"genderType"];
}

- (unsigned)sexType
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"genderType"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setManualOrder:(unint64_t)order verified:(BOOL)verified
{
  verifiedCopy = verified;
  [(PHPersonChangeRequest *)self setManualOrder:order];
  if (verifiedCopy)
  {

    [(PHPersonChangeRequest *)self setVerified:1];
  }
}

- (void)setAssetSortOrder:(int64_t)order
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:order];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"assetSortOrder"];
}

- (int64_t)assetSortOrder
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"assetSortOrder"];

  intValue = [v5 intValue];
  return intValue;
}

- (void)setMdID:(id)d
{
  dCopy = d;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (dCopy)
  {
    [mutations setObject:dCopy forKeyedSubscript:@"mdID"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"mdID"];
  }

  else
  {
    [mutations removeObjectForKey:@"mdID"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"mdID"];
  }
}

- (NSString)mdID
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"mdID"];

  return v5;
}

- (void)setDetectionType:(signed __int16)type
{
  typeCopy = type;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:typeCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"detectionType"];
}

- (signed)detectionType
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"detectionType"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setSuggestedForClientType:(unsigned __int16)type
{
  typeCopy = type;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:typeCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"suggestedForClientType"];
}

- (unsigned)suggestedForClientType
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"suggestedForClientType"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setKeyFacePickSource:(signed __int16)source
{
  sourceCopy = source;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:sourceCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"keyFacePickSource"];
}

- (signed)keyFacePickSource
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"keyFacePickSource"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setContactMatchingDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (dictionaryCopy)
  {
    [mutations setObject:dictionaryCopy forKeyedSubscript:@"contactMatchingDictionary"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"contactMatchingDictionary"];
  }

  else
  {
    [mutations removeObjectForKey:@"contactMatchingDictionary"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"contactMatchingDictionary"];
  }
}

- (NSDictionary)contactMatchingDictionary
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"contactMatchingDictionary"];

  return v5;
}

- (void)setGenderType:(unsigned __int16)type
{
  typeCopy = type;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:typeCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"genderType"];
}

- (unsigned)genderType
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"genderType"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setAgeType:(unsigned __int16)type
{
  typeCopy = type;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:typeCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"ageType"];
}

- (unsigned)ageType
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"ageType"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setQuestionType:(unsigned __int16)type
{
  typeCopy = type;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:typeCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"questionType"];
}

- (unsigned)questionType
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"questionType"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setVerifiedType:(int64_t)type
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"verifiedType"];
}

- (int64_t)verifiedType
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"verifiedType"];

  intValue = [v5 intValue];
  return intValue;
}

- (void)setInPersonNamingModel:(BOOL)model
{
  modelCopy = model;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:modelCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"inPersonNamingModel"];
}

- (BOOL)isInPersonNamingModel
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"inPersonNamingModel"];

  LOBYTE(helper) = [v5 BOOLValue];
  return helper;
}

- (void)setPersonUri:(id)uri
{
  uriCopy = uri;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (uriCopy)
  {
    [mutations setObject:uriCopy forKeyedSubscript:@"personUri"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"personUri"];
  }

  else
  {
    [mutations removeObjectForKey:@"personUri"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"personUri"];
  }
}

- (NSString)personUri
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"personUri"];

  return v5;
}

- (void)setPersonUUID:(id)d
{
  dCopy = d;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (dCopy)
  {
    [mutations setObject:dCopy forKeyedSubscript:@"personUUID"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"personUUID"];
  }

  else
  {
    [mutations removeObjectForKey:@"personUUID"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"personUUID"];
  }
}

- (id)personUUID
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"personUUID"];

  return v5;
}

- (void)setDisplayName:(id)name
{
  nameCopy = name;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (nameCopy)
  {
    [mutations setObject:nameCopy forKeyedSubscript:@"displayName"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"displayName"];
  }

  else
  {
    [mutations removeObjectForKey:@"displayName"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"displayName"];
  }
}

- (NSString)displayName
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"displayName"];

  return v5;
}

- (void)setName:(id)name
{
  nameCopy = name;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (nameCopy)
  {
    [mutations setObject:nameCopy forKeyedSubscript:@"fullName"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"fullName"];
  }

  else
  {
    [mutations removeObjectForKey:@"fullName"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"fullName"];
  }
}

- (NSString)name
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"fullName"];

  return v5;
}

- (void)setMergeCandidateConfidence:(double)confidence
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:confidence];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"mergeCandidateConfidence"];
}

- (double)mergeCandidateConfidence
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"mergeCandidateConfidence"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setManualOrder:(unint64_t)order
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:order];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"manualOrder"];
}

- (unint64_t)manualOrder
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"manualOrder"];

  unsignedIntegerValue = [v5 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (void)setType:(int64_t)type
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"type"];
}

- (int64_t)type
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"type"];

  intValue = [v5 intValue];
  return intValue;
}

- (PHObjectPlaceholder)placeholderForCreatedPerson
{
  helper = [(PHChangeRequest *)self helper];
  v4 = [helper placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

- (void)encodeToXPCDict:(id)dict
{
  v29 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  helper = [(PHChangeRequest *)self helper];
  [helper encodeToXPCDict:dictCopy];

  detectedFacesHelper = [(PHPersonChangeRequest *)self detectedFacesHelper];
  [detectedFacesHelper encodeToXPCDict:dictCopy];

  temporalFacesHelper = [(PHPersonChangeRequest *)self temporalFacesHelper];
  [temporalFacesHelper encodeToXPCDict:dictCopy];

  keyFaceHelper = [(PHPersonChangeRequest *)self keyFaceHelper];
  [keyFaceHelper encodeToXPCDict:dictCopy];

  rejectedFacesHelper = [(PHPersonChangeRequest *)self rejectedFacesHelper];
  [rejectedFacesHelper encodeToXPCDict:dictCopy];

  mergeCandidatesHelper = [(PHPersonChangeRequest *)self mergeCandidatesHelper];
  [mergeCandidatesHelper encodeToXPCDict:dictCopy];

  mergeCandidatesWithConfidenceHelper = [(PHPersonChangeRequest *)self mergeCandidatesWithConfidenceHelper];
  [mergeCandidatesWithConfidenceHelper encodeToXPCDict:dictCopy];

  invalidMergeCandidatesHelper = [(PHPersonChangeRequest *)self invalidMergeCandidatesHelper];
  [invalidMergeCandidatesHelper encodeToXPCDict:dictCopy];

  PLXPCDictionarySetArray();
  allObjects = [(NSMutableSet *)self->_faceUUIDsRequiringFaceCropGeneration allObjects];
  PLXPCDictionarySetArray();

  allObjects2 = [(NSMutableSet *)self->_faceUUIDsRequiringNewUnverifiedPerson allObjects];
  PLXPCDictionarySetArray();

  PLXPCDictionarySetString();
  allObjects3 = [(NSMutableSet *)self->_rejectedMergeCandidatePersonUUIDs allObjects];
  PLXPCDictionarySetArray();

  allObjects4 = [(NSMutableSet *)self->_graphDedupePersonUUIDs allObjects];
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

  xpc_dictionary_set_BOOL(dictCopy, "userFeedbackDataUnsetKey", self->_didUnsetUserFeedback);
  xpc_dictionary_set_BOOL(dictCopy, "autonamingUserFeedbackDataUnsetKey", self->_didUnsetAutonamingUserFeedbacks);
  if (self->_searchEntityRelationsToSet)
  {
    PLXPCDictionarySetArray();
  }

  if (self->_searchEntityRelationsToRemove)
  {
    PLXPCDictionarySetArray();
  }
}

- (PHPersonChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  v84 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  requestCopy = request;
  authorizationCopy = authorization;
  v81.receiver = self;
  v81.super_class = PHPersonChangeRequest;
  v11 = [(PHChangeRequest *)&v81 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:dictCopy changeRequest:v11 request:requestCopy clientAuthorization:authorizationCopy];
    helper = v11->super._helper;
    v11->super._helper = v12;

    if (v12)
    {
      v75 = authorizationCopy;
      v14 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"detectedFaces" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
      detectedFacesHelper = v11->_detectedFacesHelper;
      v11->_detectedFacesHelper = v14;

      v16 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"temporalDetectedFaces" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
      temporalFacesHelper = v11->_temporalFacesHelper;
      v11->_temporalFacesHelper = v16;

      v18 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"keyFace" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
      keyFaceHelper = v11->_keyFaceHelper;
      v11->_keyFaceHelper = v18;

      v20 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"rejectedFaces" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
      rejectedFacesHelper = v11->_rejectedFacesHelper;
      v11->_rejectedFacesHelper = v20;

      v22 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"mergeCandidates" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
      mergeCandidatesHelper = v11->_mergeCandidatesHelper;
      v11->_mergeCandidatesHelper = v22;

      v24 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"mergeCandidatesWithConfidence" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
      mergeCandidatesWithConfidenceHelper = v11->_mergeCandidatesWithConfidenceHelper;
      v11->_mergeCandidatesWithConfidenceHelper = v24;

      v26 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"invalidMergeCandidates" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
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
      v80 = requestCopy;
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

      v65 = xpc_dictionary_get_BOOL(dictCopy, "userFeedbackDataUnsetKey");
      v49->_didUnsetUserFeedback = v65;
      if (v65)
      {
        v50[2](v50);
      }

      v66 = xpc_dictionary_get_BOOL(dictCopy, "autonamingUserFeedbackDataUnsetKey");
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

      authorizationCopy = v75;
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

- (PHPersonChangeRequest)initWithUUID:(id)d objectID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v30.receiver = self;
  v30.super_class = PHPersonChangeRequest;
  v8 = [(PHChangeRequest *)&v30 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:dCopy objectID:iDCopy changeRequest:v8];
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

    array = [MEMORY[0x1E695DF70] array];
    searchEntityRelationsToSet = v8->_searchEntityRelationsToSet;
    v8->_searchEntityRelationsToSet = array;

    array2 = [MEMORY[0x1E695DF70] array];
    searchEntityRelationsToRemove = v8->_searchEntityRelationsToRemove;
    v8->_searchEntityRelationsToRemove = array2;
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

    array = [MEMORY[0x1E695DF70] array];
    searchEntityRelationsToSet = v2->_searchEntityRelationsToSet;
    v2->_searchEntityRelationsToSet = array;

    array2 = [MEMORY[0x1E695DF70] array];
    searchEntityRelationsToRemove = v2->_searchEntityRelationsToRemove;
    v2->_searchEntityRelationsToRemove = array2;
  }

  return v2;
}

+ (BOOL)_allPersonsAreGraphPersons:(id)persons
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  personsCopy = persons;
  v4 = [personsCopy countByEnumeratingWithState:&v13 objects:v19 count:16];
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
        objc_enumerationMutation(personsCopy);
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
          uuid = [v8 uuid];
          *buf = 138543362;
          v18 = uuid;
          _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_ERROR, "found non-graph-verified PHPerson %{public}@ in collection", buf, 0xCu);
        }

LABEL_16:

        v9 = 0;
        goto LABEL_17;
      }
    }

    v5 = [personsCopy countByEnumeratingWithState:&v13 objects:v19 count:16];
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

+ (id)changeRequestForDedupingGraphPersons:(id)persons withUserVerifiedPerson:(id)person
{
  v16 = *MEMORY[0x1E69E9840];
  personsCopy = persons;
  personCopy = person;
  if ([self _allPersonsAreGraphPersons:personsCopy])
  {
    if ([personCopy verifiedType] == 1)
    {
      v8 = [self changeRequestForPerson:personCopy];
      [v8 _setGraphDedupePersons:personsCopy];
      goto LABEL_8;
    }

    v9 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      uuid = [personCopy uuid];
      v12 = 138543618;
      v13 = uuid;
      v14 = 2048;
      verifiedType = [personCopy verifiedType];
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_ERROR, "Expected user-verified person for deduping but got person %{public}@ verifiedType %td", &v12, 0x16u);
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

+ (id)changeRequestForDedupingGraphPersons:(id)persons
{
  v19 = *MEMORY[0x1E69E9840];
  personsCopy = persons;
  if ([self _allPersonsAreGraphPersons:personsCopy])
  {
    v5 = [PHPerson personToKeepForCloudConsistencyFromPersons:personsCopy];
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = personsCopy;
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

    v12 = [self changeRequestForPerson:v5];
    [v12 _setGraphDedupePersons:v6];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)changeRequestsForMergeCandidatePersons:(id)persons
{
  v32 = *MEMORY[0x1E69E9840];
  personsCopy = persons;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = personsCopy;
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

+ (id)changeRequestForMergingPersons:(id)persons nominalTargetIdentifier:(id)identifier
{
  selfCopy = self;
  v36 = *MEMORY[0x1E69E9840];
  personsCopy = persons;
  identifierCopy = identifier;
  v28 = [PHPerson personToKeepForCloudConsistencyFromPersons:personsCopy];
  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = personsCopy;
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
        localIdentifier = [v12 localIdentifier];
        v14 = identifierCopy;
        v15 = [localIdentifier isEqualToString:identifierCopy];

        localIdentifier2 = [v12 localIdentifier];
        localIdentifier3 = [v28 localIdentifier];
        v18 = [localIdentifier2 isEqual:localIdentifier3];

        if ((v18 & 1) == 0)
        {
          [v26 addObject:v12];
        }

        v9 |= v15;
        identifierCopy = v14;
      }

      v8 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  if (identifierCopy && (v9 & 1) == 0)
  {
    v19 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = identifierCopy;
      _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_ERROR, "Attempting to merge persons with a nominal target identifier (%@) that does not match any of the persons being merged", buf, 0xCu);
    }
  }

  if (v28 && [v26 count])
  {
    v20 = [selfCopy changeRequestForPerson:v28];
    v21 = v20;
    if (identifierCopy)
    {
      v22 = [(PHObject *)PHPerson uuidFromLocalIdentifier:identifierCopy];
      [v21 _setNominalMergeTargetUUID:v22];
    }

    else
    {
      [v20 _setNominalMergeTargetUUID:0];
    }

    [v21 mergePersons:{v26, selfCopy}];
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

+ (void)deletePersons:(id)persons
{
  personsCopy = persons;
  v4 = [(PHObjectDeleteRequest *)PHPersonDeleteRequest deleteRequestsForObjects:personsCopy ofType:objc_opt_class() forSelector:a2];
}

+ (id)changeRequestForPerson:(id)person
{
  if (person)
  {
    personCopy = person;
    v4 = [PHChangeRequestHelper changeRequestForObject:personCopy];
    [v4 setTargetPerson:personCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)creationRequestForPerson
{
  initForNewObject = [[PHPersonChangeRequest alloc] initForNewObject];

  return initForNewObject;
}

@end