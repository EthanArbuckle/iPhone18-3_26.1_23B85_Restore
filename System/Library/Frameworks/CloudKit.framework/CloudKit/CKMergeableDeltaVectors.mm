@interface CKMergeableDeltaVectors
+ (BOOL)addToAttributedVector:(id)vector fromPVersionVector:(id)versionVector forSiteIdentifier:(id)identifier error:(id *)error;
+ (id)deltaMetadataVectorsFromPDistributedTimestamps:(id)timestamps error:(id *)error;
+ (id)mergeableDeltaMetadataVectorsByCombiningVectors:(id)vectors;
+ (id)pDistributedTimestampsFromDeltaMetadataVectors:(id)vectors;
+ (id)pDistributedTimestampsWithPreviousVector:(id)vector contentsVector:(id)contentsVector removalsVector:(id)removalsVector dependenciesVector:(id)dependenciesVector;
- (BOOL)_validate:(id *)_validate;
- (BOOL)isEqual:(id)equal;
- (CKMergeableDeltaVectors)initWithPreviousStateVector:(id)vector currentStateVector:(id)stateVector;
- (CKMergeableDeltaVectors)initWithPreviousVector:(id)vector contentsVector:(id)contentsVector removalsVector:(id)removalsVector dependenciesVector:(id)dependenciesVector;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (unint64_t)protobufSize;
@end

@implementation CKMergeableDeltaVectors

- (CKMergeableDeltaVectors)initWithPreviousStateVector:(id)vector currentStateVector:(id)stateVector
{
  stateVectorCopy = stateVector;
  vectorCopy = vector;
  v10 = objc_msgSend_clockVector(vectorCopy, v8, v9);
  v13 = objc_msgSend_mutableCopy(v10, v11, v12);

  v16 = objc_msgSend_mutableCopy(stateVectorCopy, v14, v15);
  v19 = objc_msgSend_mutableCopy(v16, v17, v18);
  if ((objc_msgSend_isGreaterThanOrEqualToVector_(v16, v20, v13) & 1) == 0)
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v21, *MEMORY[0x1E695D940], @"currentStateVector must be greater than or equal to previousStateVector");
  }

  v22 = v16;
  objc_msgSend_minusVector_(v22, v23, v13);
  v24 = v19;
  objc_msgSend_intersectVector_(v24, v25, v13);
  objc_msgSend_minusStateVector_(v24, v26, vectorCopy);

  v27 = objc_opt_new();
  v29 = objc_msgSend_initWithPreviousVector_contentsVector_removalsVector_dependenciesVector_(self, v28, v13, v22, v24, v27);

  return v29;
}

- (CKMergeableDeltaVectors)initWithPreviousVector:(id)vector contentsVector:(id)contentsVector removalsVector:(id)removalsVector dependenciesVector:(id)dependenciesVector
{
  vectorCopy = vector;
  contentsVectorCopy = contentsVector;
  removalsVectorCopy = removalsVector;
  dependenciesVectorCopy = dependenciesVector;
  v15 = dependenciesVectorCopy;
  v16 = MEMORY[0x1E695D940];
  if (!vectorCopy || !contentsVectorCopy || !removalsVectorCopy || !dependenciesVectorCopy)
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v14, *MEMORY[0x1E695D940], @"Vectors must not be nil");
  }

  v47.receiver = self;
  v47.super_class = CKMergeableDeltaVectors;
  v19 = [(CKMergeableDeltaVectors *)&v47 init];
  if (v19)
  {
    v20 = objc_msgSend_mutableCopy(contentsVectorCopy, v17, v18);
    contents = v19->_contents;
    v19->_contents = v20;

    v24 = objc_msgSend_mutableCopy(removalsVectorCopy, v22, v23);
    removals = v19->_removals;
    v19->_removals = v24;

    v28 = objc_msgSend_mutableCopy(vectorCopy, v26, v27);
    previous = v19->_previous;
    v19->_previous = v28;

    v32 = objc_msgSend_mutableCopy(v15, v30, v31);
    dependencies = v19->_dependencies;
    v19->_dependencies = v32;
  }

  v46 = 0;
  v34 = objc_msgSend__validate_(v19, v17, &v46);
  v35 = v46;
  v38 = v35;
  if ((v34 & 1) == 0)
  {
    v39 = MEMORY[0x1E695DF30];
    v40 = *v16;
    v41 = objc_msgSend_userInfo(v35, v36, v37);
    v43 = objc_msgSend_objectForKeyedSubscript_(v41, v42, *MEMORY[0x1E696A578]);
    objc_msgSend_raise_format_(v39, v44, v40, @"%@", v43);
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CKMergeableDeltaVectors alloc];
  v7 = objc_msgSend_previous(self, v5, v6);
  v10 = objc_msgSend_contents(self, v8, v9);
  v13 = objc_msgSend_removals(self, v11, v12);
  v16 = objc_msgSend_dependencies(self, v14, v15);
  v18 = objc_msgSend_initWithPreviousVector_contentsVector_removalsVector_dependenciesVector_(v4, v17, v7, v10, v13, v16);

  return v18;
}

+ (id)mergeableDeltaMetadataVectorsByCombiningVectors:(id)vectors
{
  v109 = *MEMORY[0x1E69E9840];
  vectorsCopy = vectors;
  v4 = [CKMergeableDeltaVectors alloc];
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v10 = objc_msgSend_initWithPreviousVector_contentsVector_removalsVector_dependenciesVector_(v4, v9, v5, v6, v7, v8);

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v11 = vectorsCopy;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v104, v108, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v105;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v105 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v104 + 1) + 8 * i);
        v20 = objc_msgSend_previous(v10, v14, v15, v104);
        v23 = objc_msgSend_previous(v19, v21, v22);
        objc_msgSend_unionVector_(v20, v24, v23);

        v27 = objc_msgSend_contents(v10, v25, v26);
        v30 = objc_msgSend_contents(v19, v28, v29);
        objc_msgSend_unionStateVector_(v27, v31, v30);

        v34 = objc_msgSend_removals(v10, v32, v33);
        v37 = objc_msgSend_removals(v19, v35, v36);
        objc_msgSend_unionStateVector_(v34, v38, v37);

        v41 = objc_msgSend_dependencies(v10, v39, v40);
        v44 = objc_msgSend_dependencies(v19, v42, v43);
        objc_msgSend_unionVector_(v41, v45, v44);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v104, v108, 16);
    }

    while (v16);
  }

  v48 = objc_msgSend_previous(v10, v46, v47);
  v51 = objc_msgSend_contents(v10, v49, v50);
  v54 = objc_msgSend_clockVector(v51, v52, v53);
  objc_msgSend_minusVector_(v48, v55, v54);

  v58 = objc_msgSend_contents(v10, v56, v57);
  v61 = objc_msgSend_copy(v58, v59, v60);

  v64 = objc_msgSend_contents(v10, v62, v63);
  v67 = objc_msgSend_removals(v10, v65, v66);
  objc_msgSend_unionStateVector_(v64, v68, v67);

  v71 = objc_msgSend_contents(v10, v69, v70);
  v74 = objc_msgSend_clockVector(v61, v72, v73);
  objc_msgSend_intersectVector_(v71, v75, v74);

  v78 = objc_msgSend_removals(v10, v76, v77);
  v81 = objc_msgSend_contents(v10, v79, v80);
  v84 = objc_msgSend_clockVector(v81, v82, v83);
  objc_msgSend_minusVector_(v78, v85, v84);

  v88 = objc_msgSend_dependencies(v10, v86, v87);
  v91 = objc_msgSend_contents(v10, v89, v90);
  v94 = objc_msgSend_clockVector(v91, v92, v93);
  hasTimestampsNotInVector = objc_msgSend_hasTimestampsNotInVector_(v88, v95, v94);

  if ((hasTimestampsNotInVector & 1) == 0)
  {
    v99 = objc_msgSend_dependencies(v10, v97, v98);
    v100 = objc_opt_new();
    objc_msgSend_intersectVector_(v99, v101, v100);
  }

  v102 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v29 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v8 = objc_msgSend_previous(self, v6, v7);
      v11 = objc_msgSend_previous(v5, v9, v10);
      if (CKObjectsAreBothNilOrEqual(v8, v11))
      {
        v14 = objc_msgSend_contents(self, v12, v13);
        v17 = objc_msgSend_contents(v5, v15, v16);
        if (CKObjectsAreBothNilOrEqual(v14, v17))
        {
          v20 = objc_msgSend_removals(self, v18, v19);
          v23 = objc_msgSend_removals(v5, v21, v22);
          if (CKObjectsAreBothNilOrEqual(v20, v23))
          {
            v31 = objc_msgSend_dependencies(self, v24, v25);
            v28 = objc_msgSend_dependencies(v5, v26, v27);
            v29 = CKObjectsAreBothNilOrEqual(v31, v28);
          }

          else
          {
            v29 = 0;
          }
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      v29 = 0;
    }
  }

  return v29;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_previous(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_contents(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12) ^ v7;
  v16 = objc_msgSend_removals(self, v14, v15);
  v19 = objc_msgSend_hash(v16, v17, v18);
  v22 = objc_msgSend_dependencies(self, v20, v21);
  v25 = v19 ^ objc_msgSend_hash(v22, v23, v24);

  return v13 ^ v25;
}

- (BOOL)_validate:(id *)_validate
{
  v5 = objc_msgSend_previous(self, a2, _validate);
  isGreaterThanOrEqualToVector = 1;
  v8 = objc_msgSend_vectorFilteredByClockType_(v5, v7, 1);

  v11 = objc_msgSend_contents(self, v9, v10);
  v13 = objc_msgSend_vectorFilteredByClockType_(v11, v12, 1);

  v16 = objc_msgSend_mutableCopy(v8, v14, v15);
  v19 = objc_msgSend_clockVector(v13, v17, v18);
  objc_msgSend_intersectVector_(v16, v20, v19);

  v23 = objc_msgSend_timestampCount(v16, v21, v22);
  v26 = objc_msgSend_previous(self, v24, v25);
  v28 = objc_msgSend_vectorFilteredByClockType_(v26, v27, 2);

  v31 = objc_msgSend_contents(self, v29, v30);
  v33 = objc_msgSend_vectorFilteredByClockType_(v31, v32, 2);

  if (!v23)
  {
    if (!objc_msgSend_timestampCount(v28, v34, v35) || !objc_msgSend_timestampCount(v33, v37, v38))
    {
      LOBYTE(isGreaterThanOrEqualToVector) = 0;
      v36 = _validate == 0;
      goto LABEL_9;
    }

    v41 = objc_msgSend_clockVector(v33, v39, v40);
    isGreaterThanOrEqualToVector = objc_msgSend_isGreaterThanOrEqualToVector_(v28, v42, v41);
  }

  v36 = _validate == 0;
  if (_validate && isGreaterThanOrEqualToVector)
  {
    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v34, @"CKErrorDomain", 12, @"previousVector and contentsVector must not overlap (intesection is %@)", v16);
    *_validate = v36 = 0;
  }

LABEL_9:

  if (isGreaterThanOrEqualToVector)
  {
    return 0;
  }

  v46 = objc_msgSend_contents(self, v43, v44);
  v47 = 1;
  v49 = objc_msgSend_vectorFilteredByClockType_(v46, v48, 1);

  v52 = objc_msgSend_removals(self, v50, v51);
  v54 = objc_msgSend_vectorFilteredByClockType_(v52, v53, 1);

  v57 = objc_msgSend_mutableCopy(v49, v55, v56);
  v60 = objc_msgSend_clockVector(v54, v58, v59);
  objc_msgSend_intersectVector_(v57, v61, v60);

  v64 = objc_msgSend_timestampCount(v57, v62, v63);
  v67 = objc_msgSend_contents(self, v65, v66);
  v69 = objc_msgSend_vectorFilteredByClockType_(v67, v68, 2);

  v72 = objc_msgSend_removals(self, v70, v71);
  v74 = objc_msgSend_vectorFilteredByClockType_(v72, v73, 2);

  if (v64)
  {
    goto LABEL_12;
  }

  if (objc_msgSend_timestampCount(v74, v75, v76) && objc_msgSend_timestampCount(v69, v77, v78))
  {
    v81 = objc_msgSend_clockVector(v69, v79, v80);
    v47 = objc_msgSend_isGreaterThanOrEqualToVector_(v74, v82, v81);

LABEL_12:
    if (((v36 | v47 ^ 1) & 1) == 0)
    {
      *_validate = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v75, @"CKErrorDomain", 12, @"contentsVector and removalsVector must not overlap (intesection is %@)", v57);
    }

    goto LABEL_18;
  }

  LOBYTE(v47) = 0;
LABEL_18:

  return v47 ^ 1;
}

+ (id)pDistributedTimestampsFromDeltaMetadataVectors:(id)vectors
{
  vectorsCopy = vectors;
  v6 = objc_msgSend_previous(vectorsCopy, v4, v5);
  v9 = objc_msgSend_backingVector(v6, v7, v8);
  v12 = objc_msgSend_contents(vectorsCopy, v10, v11);
  v15 = objc_msgSend_backingVector(v12, v13, v14);
  v18 = objc_msgSend_removals(vectorsCopy, v16, v17);
  v21 = objc_msgSend_backingVector(v18, v19, v20);
  v24 = objc_msgSend_dependencies(vectorsCopy, v22, v23);

  v27 = objc_msgSend_backingVector(v24, v25, v26);
  v29 = objc_msgSend_pDistributedTimestampsWithPreviousVector_contentsVector_removalsVector_dependenciesVector_(CKMergeableDeltaVectors, v28, v9, v15, v21, v27);

  return v29;
}

+ (id)pDistributedTimestampsWithPreviousVector:(id)vector contentsVector:(id)contentsVector removalsVector:(id)removalsVector dependenciesVector:(id)dependenciesVector
{
  v66 = *MEMORY[0x1E69E9840];
  vectorCopy = vector;
  contentsVectorCopy = contentsVector;
  removalsVectorCopy = removalsVector;
  dependenciesVectorCopy = dependenciesVector;
  v60 = vectorCopy;
  objc_sync_enter(v60);
  v59 = contentsVectorCopy;
  objc_sync_enter(v59);
  v58 = removalsVectorCopy;
  objc_sync_enter(v58);
  v13 = dependenciesVectorCopy;
  objc_sync_enter(v13);
  v14 = objc_opt_new();
  v56 = objc_msgSend_set(MEMORY[0x1E695DFA8], v15, v16);
  if (v60)
  {
    v19 = objc_msgSend_allSiteIdentifiers(v60, v17, v18);
    objc_msgSend_unionSet_(v56, v20, v19);
  }

  if (v59)
  {
    v21 = objc_msgSend_allSiteIdentifiers(v59, v17, v18);
    objc_msgSend_unionSet_(v56, v22, v21);
  }

  if (v13)
  {
    v23 = objc_msgSend_allSiteIdentifiers(v13, v17, v18);
    objc_msgSend_unionSet_(v56, v24, v23);
  }

  if (v58)
  {
    v25 = objc_msgSend_allSiteIdentifiers(v58, v17, v18);
    objc_msgSend_unionSet_(v56, v26, v25);
  }

  objc_msgSend_allObjects(v56, v17, v18);
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  obj = v62 = 0u;
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v61, v65, 16);
  if (v29)
  {
    v30 = *v62;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v62 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v61 + 1) + 8 * i);
        v33 = objc_msgSend_pSiteIdentifierFromSiteIdentifier_(CKDistributedSiteIdentifier, v28, v32);
        objc_msgSend_addSiteIdentifiers_(v14, v34, v33);
        v35 = objc_opt_new();
        v37 = objc_msgSend_pVersionVectorFromAttributedVector_siteIdentifier_(CKDistributedTimestampAttributedVector, v36, v60, v32);
        objc_msgSend_setPreviousVector_(v35, v38, v37);

        v40 = objc_msgSend_pVersionVectorFromAttributedVector_siteIdentifier_(CKDistributedTimestampAttributedVector, v39, v59, v32);
        objc_msgSend_setContentsVector_(v35, v41, v40);

        v43 = objc_msgSend_pVersionVectorFromAttributedVector_siteIdentifier_(CKDistributedTimestampAttributedVector, v42, v58, v32);
        objc_msgSend_setRemovalsVector_(v35, v44, v43);

        v46 = objc_msgSend_pVersionVectorFromAttributedVector_siteIdentifier_(CKDistributedTimestampAttributedVector, v45, v13, v32);
        objc_msgSend_setDependenciesVector_(v35, v47, v46);

        if ((objc_msgSend_hasPreviousVector(v35, v48, v49) & 1) != 0 || (objc_msgSend_hasContentsVector(v35, v50, v51) & 1) != 0 || (objc_msgSend_hasRemovalsVector(v35, v50, v52) & 1) != 0 || objc_msgSend_hasDependenciesVector(v35, v50, v53))
        {
          objc_msgSend_addSiteVersionVectors_(v14, v50, v35);
        }
      }

      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v28, &v61, v65, 16);
    }

    while (v29);
  }

  objc_sync_exit(v13);
  objc_sync_exit(v58);

  objc_sync_exit(v59);
  objc_sync_exit(v60);

  v54 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)deltaMetadataVectorsFromPDistributedTimestamps:(id)timestamps error:(id *)error
{
  timestampsCopy = timestamps;
  v68 = objc_opt_new();
  v67 = objc_opt_new();
  v66 = objc_opt_new();
  v7 = objc_opt_new();
  if (objc_msgSend_siteIdentifiersCount(timestampsCopy, v8, v9))
  {
    v12 = 0;
    while (1)
    {
      v13 = objc_msgSend_siteVersionVectors(timestampsCopy, v10, v11);
      v15 = objc_msgSend_objectAtIndexedSubscript_(v13, v14, v12);

      v18 = objc_msgSend_siteIdentifiers(timestampsCopy, v16, v17);
      v20 = objc_msgSend_objectAtIndexedSubscript_(v18, v19, v12);
      v22 = objc_msgSend_siteIdentifierFromPSiteIdentifier_(CKDistributedSiteIdentifier, v21, v20);

      if (objc_msgSend_hasPreviousVector(v15, v23, v24))
      {
        v27 = objc_msgSend_backingVector(v68, v25, v26);
        v30 = objc_msgSend_previousVector(v15, v28, v29);
        v32 = objc_msgSend_addToAttributedVector_fromPVersionVector_forSiteIdentifier_error_(self, v31, v27, v30, v22, error);

        if (!v32)
        {
          break;
        }
      }

      if (objc_msgSend_hasContentsVector(v15, v25, v26))
      {
        v35 = objc_msgSend_backingVector(v67, v33, v34);
        v38 = objc_msgSend_contentsVector(v15, v36, v37);
        v40 = objc_msgSend_addToAttributedVector_fromPVersionVector_forSiteIdentifier_error_(self, v39, v35, v38, v22, error);

        if (!v40)
        {
          break;
        }
      }

      if (objc_msgSend_hasRemovalsVector(v15, v33, v34))
      {
        v43 = objc_msgSend_backingVector(v66, v41, v42);
        v46 = objc_msgSend_removalsVector(v15, v44, v45);
        v48 = objc_msgSend_addToAttributedVector_fromPVersionVector_forSiteIdentifier_error_(self, v47, v43, v46, v22, error);

        if (!v48)
        {
          break;
        }
      }

      if (objc_msgSend_hasDependenciesVector(v15, v41, v42))
      {
        v51 = objc_msgSend_backingVector(v7, v49, v50);
        v54 = objc_msgSend_dependenciesVector(v15, v52, v53);
        v56 = objc_msgSend_addToAttributedVector_fromPVersionVector_forSiteIdentifier_error_(self, v55, v51, v54, v22, error);

        if ((v56 & 1) == 0)
        {
          break;
        }
      }

      if (++v12 >= objc_msgSend_siteIdentifiersCount(timestampsCopy, v57, v58))
      {
        goto LABEL_12;
      }
    }

    v64 = 0;
    v61 = v67;
    v60 = v68;
    v62 = v66;
  }

  else
  {
LABEL_12:
    v59 = [CKMergeableDeltaVectors alloc];
    v61 = v67;
    v60 = v68;
    v62 = v66;
    v64 = objc_msgSend_initWithPreviousVector_contentsVector_removalsVector_dependenciesVector_(v59, v63, v68, v67, v66, v7);
  }

  return v64;
}

+ (BOOL)addToAttributedVector:(id)vector fromPVersionVector:(id)versionVector forSiteIdentifier:(id)identifier error:(id *)error
{
  vectorCopy = vector;
  versionVectorCopy = versionVector;
  identifierCopy = identifier;
  obj = vectorCopy;
  objc_sync_enter(obj);
  v13 = objc_msgSend_clockValuesCount(versionVectorCopy, v11, v12);
  if (v13 == objc_msgSend_clockValueLengthsCount(versionVectorCopy, v14, v15))
  {
    v18 = objc_msgSend_stateValuesCount(versionVectorCopy, v16, v17);
    if (v18 == objc_msgSend_stateValueLengthsCount(versionVectorCopy, v19, v20))
    {
      goto LABEL_8;
    }

    v23 = objc_msgSend_stateValuesCount(versionVectorCopy, v21, v22);
    v26 = objc_msgSend_stateValueLengthsCount(versionVectorCopy, v24, v25);
    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v27, @"CKErrorDomain", 12, @"State values count (%ld) not equal to state values lengths count (%ld)", v23, v26);
  }

  else
  {
    v28 = objc_msgSend_clockValuesCount(versionVectorCopy, v16, v17);
    v31 = objc_msgSend_clockValueLengthsCount(versionVectorCopy, v29, v30);
    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v32, @"CKErrorDomain", 12, @"Clock values count (%ld) not equal to clock value lengths count (%ld)", v28, v31);
  }
  v33 = ;
  if (v33)
  {
    v34 = 0;
    if (!error)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_8:
  v35 = 0;
  v36 = 0;
  while (v35 < objc_msgSend_clockValuesCount(versionVectorCopy, v21, v22))
  {
    v39 = *(objc_msgSend_clockValues(versionVectorCopy, v37, v38) + 8 * v35);
    v59 = *(objc_msgSend_clockValueLengths(versionVectorCopy, v40, v41) + 8 * v35) + v39;
    while (v36 < objc_msgSend_stateValuesCount(versionVectorCopy, v42, v43) && v39 < v59)
    {
      v44 = *(objc_msgSend_stateValueLengths(versionVectorCopy, v21, v22) + 4 * v36);
      v47 = *(objc_msgSend_stateValues(versionVectorCopy, v45, v46) + 4 * v36);
      v49 = objc_msgSend_clockTypeFromPClockTypeAndAtomState_(CKDistributedTimestampAttributedVector, v48, v47);
      errorCopy = error;
      v52 = objc_msgSend_atomStateFromPClockTypeAndAtomState_(CKDistributedTimestampAttributedVector, v51, v47);
      v54 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x1E696AC90], v53, v39, v44);
      objc_msgSend_addClockValuesInIndexSet_withAttribute_forSiteIdentifier_(obj, v55, v54, __rev16(v49 | (v52 << 8)), identifierCopy);

      v39 += v44;
      ++v36;
      error = errorCopy;
    }

    ++v35;
  }

  v33 = 0;
  v34 = 1;
  if (error)
  {
LABEL_16:
    v33 = v33;
    *error = v33;
  }

LABEL_17:

  objc_sync_exit(obj);
  return v34;
}

- (unint64_t)protobufSize
{
  v3 = objc_alloc_init(MEMORY[0x1E69C65C0]);
  v5 = objc_msgSend_pDistributedTimestampsFromDeltaMetadataVectors_(CKMergeableDeltaVectors, v4, self);
  objc_msgSend_writeTo_(v5, v6, v3);
  v9 = objc_msgSend_immutableData(v3, v7, v8);
  v12 = objc_msgSend_length(v9, v10, v11);

  return v12;
}

@end