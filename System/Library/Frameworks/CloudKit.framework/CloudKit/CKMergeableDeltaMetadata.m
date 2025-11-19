@interface CKMergeableDeltaMetadata
+ (id)deliverableDeltaMetadatasInDeltaSet:(id)a3 withMergeableValueCurrentStateVector:(id)a4 deliveryRequirements:(unint64_t)a5;
+ (id)mergeableDeltaMetadataByCombiningMetadatas:(id)a3;
+ (id)replacementDeltaMetadatasForDeltaDirectory:(id)a3 withNextDeltaMetadata:(id)a4 currentStateVector:(id)a5 deltaDirectoryDeliveryRequirements:(unint64_t)a6 error:(id *)a7;
- (BOOL)_isEquivalent:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CKDistributedTimestampClockVector)dependenciesVector;
- (CKDistributedTimestampClockVector)previousVector;
- (CKDistributedTimestampStateVector)contentsVector;
- (CKDistributedTimestampStateVector)removalsVector;
- (CKMergeableDeltaMetadata)initWithCoder:(id)a3;
- (CKMergeableDeltaMetadata)initWithIdentifier:(id)a3 vectors:(id)a4 replacedDeltaIdentifiers:(id)a5;
- (CKMergeableDeltaMetadata)initWithVectors:(id)a3;
- (CKMergeableDeltaVectors)vectors;
- (NSSet)replacedDeltaIdentifiers;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (unint64_t)size;
- (void)encodeWithCoder:(id)a3;
- (void)setReplacedDeltaIdentifiers:(id)a3;
- (void)setVectors:(id)a3;
@end

@implementation CKMergeableDeltaMetadata

- (CKMergeableDeltaMetadata)initWithVectors:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v8 = objc_msgSend_UUID(v4, v6, v7);
  v11 = objc_msgSend_UUIDString(v8, v9, v10);
  v13 = objc_msgSend_initWithIdentifier_vectors_replacedDeltaIdentifiers_(self, v12, v11, v5, 0);

  return v13;
}

- (CKMergeableDeltaMetadata)initWithIdentifier:(id)a3 vectors:(id)a4 replacedDeltaIdentifiers:(id)a5
{
  v8 = a3;
  v9 = a4;
  v12 = a5;
  if (!v8 || !objc_msgSend_length(v8, v10, v11))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v10, *MEMORY[0x1E695D940], @"Identifier must not be nil or empty");
  }

  v24.receiver = self;
  v24.super_class = CKMergeableDeltaMetadata;
  v15 = [(CKMergeableDeltaMetadata *)&v24 init];
  if (v15)
  {
    v16 = objc_msgSend_copy(v8, v13, v14);
    identifier = v15->_identifier;
    v15->_identifier = v16;

    v20 = objc_msgSend_copy(v9, v18, v19);
    vectors = v15->_vectors;
    v15->_vectors = v20;

    objc_msgSend_setReplacedDeltaIdentifiers_(v15, v22, v12);
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CKMergeableDeltaMetadata alloc];
  v7 = objc_msgSend_identifier(self, v5, v6);
  v10 = objc_msgSend_vectors(self, v8, v9);
  v13 = objc_msgSend_replacedDeltaIdentifiers(self, v11, v12);
  v15 = objc_msgSend_initWithIdentifier_vectors_replacedDeltaIdentifiers_(v4, v14, v7, v10, v13);

  return v15;
}

+ (id)mergeableDeltaMetadataByCombiningMetadatas:(id)a3
{
  v3 = objc_msgSend_CKMap_(a3, a2, &unk_1EFA2EC48);
  v5 = objc_msgSend_mergeableDeltaMetadataVectorsByCombiningVectors_(CKMergeableDeltaVectors, v4, v3);
  v6 = [CKMergeableDeltaMetadata alloc];
  v8 = objc_msgSend_initWithVectors_(v6, v7, v5);

  return v8;
}

- (CKMergeableDeltaMetadata)initWithCoder:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_identifier);
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v5, v6);

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v13 = objc_msgSend_setWithObjects_(v9, v12, v10, v11, 0);
  v14 = NSStringFromSelector(sel_replacedDeltaIdentifiers);
  v16 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v15, v13, v14);

  v17 = objc_opt_class();
  v19 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v18, v17, @"timestampsProtobuf");
  if (!v19)
  {
    v31 = objc_opt_class();
    v32 = NSStringFromSelector(sel_previousVector);
    v22 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v33, v31, v32);

    v34 = objc_opt_class();
    v35 = NSStringFromSelector(sel_contentsVector);
    v24 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v36, v34, v35);

    v37 = objc_opt_class();
    v38 = NSStringFromSelector(sel_removalsVector);
    v40 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v39, v37, v38);

    v41 = objc_opt_class();
    v42 = NSStringFromSelector(sel_dependenciesVector);
    v44 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v43, v41, v42);

    v45 = [CKMergeableDeltaVectors alloc];
    v47 = objc_msgSend_initWithPreviousVector_contentsVector_removalsVector_dependenciesVector_(v45, v46, v22, v24, v40, v44);
    v49 = objc_msgSend_initWithIdentifier_vectors_replacedDeltaIdentifiers_(self, v48, v8, v47, v16);

LABEL_10:
    self = v49;
    v30 = self;
    goto LABEL_11;
  }

  v20 = [CKDPDistributedTimestamps alloc];
  v22 = objc_msgSend_initWithData_(v20, v21, v19);
  v52 = 0;
  v24 = objc_msgSend_deltaMetadataVectorsFromPDistributedTimestamps_error_(CKMergeableDeltaVectors, v23, v22, &v52);
  v25 = v52;
  if (!v25)
  {
    v49 = objc_msgSend_initWithIdentifier_vectors_replacedDeltaIdentifiers_(self, v26, v8, v24, v16);
    goto LABEL_10;
  }

  v27 = v25;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v28 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v54 = v27;
    _os_log_error_impl(&dword_1883EA000, v28, OS_LOG_TYPE_ERROR, "Error initializing mergeable delta metadata from data in coder: %@", buf, 0xCu);
  }

  objc_msgSend_failWithError_(v4, v29, v27);

  v30 = 0;
LABEL_11:

  v50 = *MEMORY[0x1E69E9840];
  return v30;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_vectors(self, v5, v6);
  v23 = objc_msgSend_pDistributedTimestampsFromDeltaMetadataVectors_(CKMergeableDeltaVectors, v8, v7);

  v11 = objc_msgSend_identifier(self, v9, v10);
  v12 = NSStringFromSelector(sel_identifier);
  objc_msgSend_encodeObject_forKey_(v4, v13, v11, v12);

  v16 = objc_msgSend_replacedDeltaIdentifiers(self, v14, v15);
  v17 = NSStringFromSelector(sel_replacedDeltaIdentifiers);
  objc_msgSend_encodeObject_forKey_(v4, v18, v16, v17);

  v21 = objc_msgSend_data(v23, v19, v20);
  objc_msgSend_encodeObject_forKey_(v4, v22, v21, @"timestampsProtobuf");
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5 == self)
  {
    v13 = 1;
  }

  else if (objc_msgSend__isEquivalent_(self, v4, v5) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v9 = objc_msgSend_identifier(self, v7, v8);
    v12 = objc_msgSend_identifier(v6, v10, v11);

    v13 = CKObjectsAreBothNilOrEqual(v9, v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_isEquivalent:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v8 = objc_msgSend_vectors(self, v6, v7);
      v11 = objc_msgSend_vectors(v5, v9, v10);
      if (CKObjectsAreBothNilOrEqual(v8, v11))
      {
        v14 = objc_msgSend_replacedDeltaIdentifiers(self, v12, v13);
        v17 = objc_msgSend_replacedDeltaIdentifiers(v5, v15, v16);
        v18 = CKObjectsAreBothNilOrEqual(v14, v17);
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_identifier(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_vectors(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12) ^ v7;
  v16 = objc_msgSend_replacedDeltaIdentifiers(self, v14, v15);
  v19 = objc_msgSend_hash(v16, v17, v18);

  return v13 ^ v19;
}

- (CKMergeableDeltaVectors)vectors
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_vectors;
  objc_sync_exit(v2);

  return v3;
}

- (void)setVectors:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_vectors != v9)
  {
    v7 = objc_msgSend_copy(v9, v5, v6);
    vectors = v4->_vectors;
    v4->_vectors = v7;
  }

  objc_sync_exit(v4);
}

- (NSSet)replacedDeltaIdentifiers
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_replacedDeltaIdentifiers;
  objc_sync_exit(v2);

  return v3;
}

- (void)setReplacedDeltaIdentifiers:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_CKDeepCopy(v9, v5, v6);
  replacedDeltaIdentifiers = v4->_replacedDeltaIdentifiers;
  v4->_replacedDeltaIdentifiers = v7;

  objc_sync_exit(v4);
}

- (unint64_t)size
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_identifier(self, a2, v2);
  v7 = objc_msgSend_length(v4, v5, v6);
  v8 = v7 + 2;
  if (v7 >= 0x80)
  {
    do
    {
      ++v8;
      v9 = v7 >> 14;
      v7 >>= 7;
    }

    while (v9);
  }

  v12 = objc_msgSend_vectors(self, v10, v11);
  v15 = objc_msgSend_protobufSize(v12, v13, v14);
  v16 = v15 + 2;
  if (v15 >= 0x80)
  {
    do
    {
      ++v16;
      v17 = v15 >> 14;
      v15 >>= 7;
    }

    while (v17);
  }

  v18 = v8 + v16 + 122;
  v21 = objc_msgSend_replacedDeltaIdentifiers(self, v19, v20);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v34, v38, 16);
  if (v23)
  {
    v26 = v23;
    v27 = *v35;
    do
    {
      v28 = 0;
      do
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(v21);
        }

        v29 = objc_msgSend_length(*(*(&v34 + 1) + 8 * v28), v24, v25);
        v30 = v29 + 2;
        if (v29 >= 0x80)
        {
          do
          {
            ++v30;
            v31 = v29 >> 14;
            v29 >>= 7;
          }

          while (v31);
        }

        v18 += v30;
        ++v28;
      }

      while (v28 != v26);
      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v34, v38, 16);
    }

    while (v26);
  }

  v32 = *MEMORY[0x1E69E9840];
  return v18;
}

- (CKDistributedTimestampClockVector)previousVector
{
  v3 = objc_msgSend_vectors(self, a2, v2);
  v6 = objc_msgSend_previous(v3, v4, v5);

  return v6;
}

- (CKDistributedTimestampStateVector)contentsVector
{
  v3 = objc_msgSend_vectors(self, a2, v2);
  v6 = objc_msgSend_contents(v3, v4, v5);

  return v6;
}

- (CKDistributedTimestampStateVector)removalsVector
{
  v3 = objc_msgSend_vectors(self, a2, v2);
  v6 = objc_msgSend_removals(v3, v4, v5);

  return v6;
}

- (CKDistributedTimestampClockVector)dependenciesVector
{
  v3 = objc_msgSend_vectors(self, a2, v2);
  v6 = objc_msgSend_dependencies(v3, v4, v5);

  return v6;
}

+ (id)replacementDeltaMetadatasForDeltaDirectory:(id)a3 withNextDeltaMetadata:(id)a4 currentStateVector:(id)a5 deltaDirectoryDeliveryRequirements:(unint64_t)a6 error:(id *)a7
{
  v636 = *MEMORY[0x1E69E9840];
  v497 = a3;
  v10 = a4;
  v556 = a5;
  v538 = objc_opt_new();
  v488 = objc_autoreleasePoolPush();
  v13 = objc_msgSend_vectors(v10, v11, v12);
  v16 = objc_msgSend_contents(v13, v14, v15);
  v19 = objc_msgSend_timestampCount(v16, v17, v18);

  if (!v19)
  {

    goto LABEL_7;
  }

  if (!v10)
  {
LABEL_7:
    v494 = v497;
    v10 = 0;
    v44 = 1;
    goto LABEL_8;
  }

  v20 = objc_opt_new();
  v23 = objc_msgSend_vectors(v10, v21, v22);
  v26 = objc_msgSend_previous(v23, v24, v25);
  objc_msgSend_unionVector_(v20, v27, v26);

  v30 = objc_msgSend_vectors(v10, v28, v29);
  v33 = objc_msgSend_contents(v30, v31, v32);
  v36 = objc_msgSend_clockVector(v33, v34, v35);
  objc_msgSend_unionVector_(v20, v37, v36);

  v40 = objc_msgSend_clockVector(v556, v38, v39);
  LOBYTE(v33) = objc_msgSend_isEqual_(v20, v41, v40);

  if ((v33 & 1) == 0)
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v42, *MEMORY[0x1E695D940], @"Next delta %@ was not generated using current state vector %@", v10, v556);
  }

  v494 = objc_msgSend_setByAddingObject_(v497, v43, v10);
  v44 = 0;
LABEL_8:
  v45 = objc_opt_new();
  v47 = objc_msgSend_deliverableDeltaMetadatasInDeltaSet_withMergeableValueCurrentStateVector_deliveryRequirements_(a1, v46, v494, v45, a6);

  v487 = a6;
  if (v44)
  {
LABEL_18:
    v10 = 0;
    goto LABEL_19;
  }

  if ((objc_msgSend_containsObject_(v47, v48, v10) & 1) == 0)
  {
    v53 = objc_msgSend_allObjects(v497, v49, v50);
    v55 = objc_msgSend_mergeableDeltaMetadataByCombiningMetadatas_(CKMergeableDeltaMetadata, v54, v53);

    v56 = ck_log_initialization_block;
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, v56);
    }

    v57 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      *&buf[4] = v10;
      *&buf[12] = 2112;
      *&buf[14] = v55;
      _os_log_fault_impl(&dword_1883EA000, v57, OS_LOG_TYPE_FAULT, "Next delta %@ may not be deliverable with aggregated delta directory metadata %@", buf, 0x16u);
    }

    goto LABEL_18;
  }

  if (!v10)
  {
LABEL_19:
    v489 = 1;
    goto LABEL_20;
  }

  if (objc_msgSend_containsObject_(v497, v49, v10))
  {
    v489 = 0;
LABEL_20:
    v549 = v10;
    v490 = v47;
    goto LABEL_21;
  }

  v549 = v10;
  v322 = objc_msgSend_mutableCopy(v47, v51, v52);
  objc_msgSend_removeObject_(v322, v323, v10);
  v490 = objc_msgSend_copy(v322, v324, v325);

  v489 = 0;
LABEL_21:
  v491 = v47;

  v523 = objc_opt_new();
  v555 = objc_opt_new();
  v537 = objc_opt_new();
  v524 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x1E696AD18], v58, v59);
  v525 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x1E696AD18], v60, v61);
  v617 = 0u;
  v616 = 0u;
  v615 = 0u;
  v614 = 0u;
  obj = v490;
  v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v62, &v614, v635, 16);
  if (v63)
  {
    v64 = *v615;
    do
    {
      for (i = 0; i != v63; ++i)
      {
        if (*v615 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v66 = *(*(&v614 + 1) + 8 * i);
        v67 = objc_autoreleasePoolPush();
        v68 = v556;
        v71 = objc_msgSend_vectors(v66, v69, v70);
        v74 = objc_msgSend_contents(v71, v72, v73);
        hasAtomStateNotInStateVector = objc_msgSend_hasAtomStateNotInStateVector_(v74, v75, v68);

        if ((hasAtomStateNotInStateVector & 1) == 0)
        {
          v79 = objc_msgSend_mutableCopy(v68, v77, v78);
          v82 = objc_msgSend_vectors(v66, v80, v81);
          v85 = objc_msgSend_contents(v82, v83, v84);
          v88 = objc_msgSend_clockVector(v85, v86, v87);
          objc_msgSend_intersectVector_(v79, v89, v88);

          v92 = objc_msgSend_mutableCopy(v79, v90, v91);
          v95 = objc_msgSend_vectors(v66, v93, v94);
          v98 = objc_msgSend_contents(v95, v96, v97);
          objc_msgSend_minusStateVector_(v92, v99, v98);

          if (objc_msgSend_timestampCount(v92, v100, v101))
          {
            objc_msgSend_addObject_(v523, v102, v66);
            objc_msgSend_unionStateVector_(v555, v103, v92);
            v106 = objc_msgSend_allSiteIdentifiers(v92, v104, v105);
            objc_msgSend_unionSet_(v537, v107, v106);

            objc_msgSend_setObject_forKey_(v524, v108, v79, v66);
            objc_msgSend_setObject_forKey_(v525, v109, v92, v66);
          }
        }

        objc_autoreleasePoolPop(v67);
      }

      v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v110, &v614, v635, 16);
    }

    while (v63);
  }

  v511 = objc_msgSend_count(v523, v111, v112);
  v113 = objc_opt_new();
  if (v511)
  {
    v613 = 0u;
    v612 = 0u;
    v611 = 0u;
    v610 = 0u;
    v512 = v491;
    v115 = objc_msgSend_countByEnumeratingWithState_objects_count_(v512, v114, &v610, v634, 16);
    if (v115)
    {
      v516 = *v611;
      do
      {
        v116 = 0;
        v519 = v115;
        do
        {
          if (*v611 != v516)
          {
            objc_enumerationMutation(v512);
          }

          v532 = v116;
          v117 = *(*(&v610 + 1) + 8 * v116);
          context = objc_autoreleasePoolPush();
          v120 = objc_msgSend_vectors(v117, v118, v119);
          v123 = objc_msgSend_removals(v120, v121, v122);
          v544 = objc_msgSend_mutableCopy(v123, v124, v125);

          objc_msgSend_intersectStateVector_(v544, v126, v555);
          v129 = objc_msgSend_vectors(v117, v127, v128);
          v132 = objc_msgSend_contents(v129, v130, v131);
          v540 = objc_msgSend_mutableCopy(v132, v133, v134);

          objc_msgSend_intersectStateVector_(v540, v135, v555);
          v550 = v544;
          objc_msgSend_unionStateVector_(v550, v136, v540);
          if (objc_msgSend_timestampCount(v550, v137, v138))
          {
            v140 = objc_msgSend_vectorFillingInImplicitClockValuesUsingSiteIdentifiers_(v550, v139, v537);
            v143 = objc_msgSend_allSiteIdentifiers(v140, v141, v142);
            v609 = 0u;
            v608 = 0u;
            v607 = 0u;
            v606 = 0u;
            v144 = v143;
            v147 = objc_msgSend_countByEnumeratingWithState_objects_count_(v144, v145, &v606, v633, 16);
            if (v147)
            {
              v148 = *v607;
              do
              {
                for (j = 0; j != v147; ++j)
                {
                  if (*v607 != v148)
                  {
                    objc_enumerationMutation(v144);
                  }

                  v150 = *(*(&v606 + 1) + 8 * j);
                  v152 = objc_msgSend_objectForKeyedSubscript_(v113, v146, v150);
                  if (!v152)
                  {
                    v152 = objc_opt_new();
                    objc_msgSend_setObject_forKeyedSubscript_(v113, v153, v152, v150);
                  }

                  v154 = objc_msgSend_clockValuesForSiteIdentifier_(v140, v151, v150);
                  objc_msgSend_addIndexes_withObject_(v152, v155, v154, v117);
                }

                v147 = objc_msgSend_countByEnumeratingWithState_objects_count_(v144, v146, &v606, v633, 16);
              }

              while (v147);
            }
          }

          objc_autoreleasePoolPop(context);
          v116 = v532 + 1;
        }

        while ((v532 + 1) != v519);
        v115 = objc_msgSend_countByEnumeratingWithState_objects_count_(v512, v156, &v610, v634, 16);
      }

      while (v115);
    }
  }

  v498 = objc_opt_new();
  if (v511)
  {
    v545 = objc_opt_new();
    v605 = 0u;
    v604 = 0u;
    v603 = 0u;
    v602 = 0u;
    v495 = v523;
    v501 = objc_msgSend_countByEnumeratingWithState_objects_count_(v495, v157, &v602, v632, 16);
    if (v501)
    {
      v499 = *v603;
      do
      {
        for (k = 0; k != v501; ++k)
        {
          if (*v603 != v499)
          {
            objc_enumerationMutation(v495);
          }

          contexta = *(*(&v602 + 1) + 8 * k);
          v503 = objc_autoreleasePoolPush();
          v505 = objc_msgSend_objectForKey_(v524, v158, contexta);
          v520 = objc_msgSend_objectForKey_(v525, v159, contexta);
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          LOBYTE(v619) = 0;
          v162 = objc_msgSend_vectors(contexta, v160, v161);
          v165 = objc_msgSend_dependencies(v162, v163, v164);
          v168 = objc_msgSend_mutableCopy(v165, v166, v167);

          v171 = objc_msgSend_allSiteIdentifiers(v520, v169, v170);
          v601 = 0u;
          v599 = 0u;
          v600 = 0u;
          v598 = 0u;
          v509 = v171;
          v517 = objc_msgSend_countByEnumeratingWithState_objects_count_(v509, v172, &v598, v631, 16);
          if (v517)
          {
            v513 = *v599;
            while (2)
            {
              for (m = 0; m != v517; ++m)
              {
                if (*v599 != v513)
                {
                  objc_enumerationMutation(v509);
                }

                v175 = *(*(&v598 + 1) + 8 * m);
                objc_msgSend_removeAllObjects(v545, v173, v174);
                v177 = objc_msgSend_objectForKeyedSubscript_(v113, v176, v175);
                v591[0] = MEMORY[0x1E69E9820];
                v591[1] = 3221225472;
                v591[2] = sub_18856F064;
                v591[3] = &unk_1E70BDC30;
                v541 = v177;
                v592 = v541;
                v178 = v545;
                v593 = v178;
                v594 = contexta;
                v595 = v555;
                v596 = v556;
                v597 = buf;
                objc_msgSend_enumerateClockValuesForSiteIdentifier_usingBlock_(v520, v179, v175, v591);
                v533 = *(*&buf[8] + 24);
                if (v533)
                {

                  goto LABEL_76;
                }

                v589 = 0u;
                v590 = 0u;
                v587 = 0u;
                v588 = 0u;
                v180 = v178;
                v184 = objc_msgSend_countByEnumeratingWithState_objects_count_(v180, v181, &v587, v630, 16);
                if (v184)
                {
                  v185 = *v588;
                  do
                  {
                    for (n = 0; n != v184; ++n)
                    {
                      if (*v588 != v185)
                      {
                        objc_enumerationMutation(v180);
                      }

                      v187 = *(*(&v587 + 1) + 8 * n);
                      v188 = objc_msgSend_vectors(v187, v182, v183);
                      v191 = objc_msgSend_contents(v188, v189, v190);
                      v194 = objc_msgSend_clockVector(v191, v192, v193);
                      objc_msgSend_unionVector_(v168, v195, v194);

                      v198 = objc_msgSend_vectors(v187, v196, v197);
                      v201 = objc_msgSend_dependencies(v198, v199, v200);
                      objc_msgSend_unionVector_(v168, v202, v201);
                    }

                    v184 = objc_msgSend_countByEnumeratingWithState_objects_count_(v180, v182, &v587, v630, 16);
                  }

                  while (v184);
                }

                if (v533)
                {
                  goto LABEL_76;
                }
              }

              v517 = objc_msgSend_countByEnumeratingWithState_objects_count_(v509, v173, &v598, v631, 16);
              if (v517)
              {
                continue;
              }

              break;
            }
          }

LABEL_76:

          if ((*(*&buf[8] + 24) & 1) == 0)
          {
            v203 = [CKMergeableDeltaMetadata alloc];
            v542 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v204, v205);
            v552 = objc_msgSend_UUIDString(v542, v206, v207);
            v208 = [CKMergeableDeltaVectors alloc];
            v534 = objc_msgSend_vectors(contexta, v209, v210);
            v213 = objc_msgSend_previous(v534, v211, v212);
            v216 = objc_msgSend_vectors(contexta, v214, v215);
            v219 = objc_msgSend_removals(v216, v217, v218);
            v221 = objc_msgSend_initWithPreviousVector_contentsVector_removalsVector_dependenciesVector_(v208, v220, v213, v505, v219, v168);
            v222 = MEMORY[0x1E695DFD8];
            v225 = objc_msgSend_identifier(contexta, v223, v224);
            v227 = objc_msgSend_setWithObject_(v222, v226, v225);
            v229 = objc_msgSend_initWithIdentifier_vectors_replacedDeltaIdentifiers_(v203, v228, v552, v221, v227);

            v232 = objc_msgSend_identifier(contexta, v230, v231);
            objc_msgSend_setObject_forKeyedSubscript_(v498, v233, v229, v232);
          }

          _Block_object_dispose(buf, 8);
          objc_autoreleasePoolPop(v503);
        }

        v501 = objc_msgSend_countByEnumeratingWithState_objects_count_(v495, v234, &v602, v632, 16);
      }

      while (v501);
    }
  }

  v518 = objc_opt_new();
  if (v489)
  {
    v237 = 0;
    v543 = 0;
    contextb = 0;
  }

  else
  {
    v238 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x1E696AD18], v235, v236);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_18856F2F4;
    aBlock[3] = &unk_1E70BDC58;
    v500 = v238;
    v586 = v500;
    v553 = _Block_copy(aBlock);
    v583 = 0u;
    v584 = 0u;
    v581 = 0u;
    v582 = 0u;
    contextc = obj;
    v240 = objc_msgSend_countByEnumeratingWithState_objects_count_(contextc, v239, &v581, v629, 16);
    if (v240)
    {
      v241 = *v582;
      do
      {
        for (ii = 0; ii != v240; ++ii)
        {
          if (*v582 != v241)
          {
            objc_enumerationMutation(contextc);
          }

          v553[2](v553, *(*(&v581 + 1) + 8 * ii));
        }

        v240 = objc_msgSend_countByEnumeratingWithState_objects_count_(contextc, v243, &v581, v629, 16);
      }

      while (v240);
    }

    v577[0] = MEMORY[0x1E69E9820];
    v577[1] = 3221225472;
    v577[2] = sub_18856F514;
    v577[3] = &unk_1E70BDC80;
    v496 = v500;
    v578 = v496;
    v579 = a2;
    v580 = a1;
    v535 = _Block_copy(v577);
    v246 = objc_msgSend_allObjects(contextc, v244, v245);
    v504 = objc_msgSend_sortedArrayUsingComparator_(v246, v247, v535);

    v248 = [CKMergeableDeltaMetadata alloc];
    v249 = [CKMergeableDeltaVectors alloc];
    v250 = objc_opt_new();
    v251 = objc_opt_new();
    v252 = objc_opt_new();
    v253 = objc_opt_new();
    v255 = objc_msgSend_initWithPreviousVector_contentsVector_removalsVector_dependenciesVector_(v249, v254, v250, v251, v252, v253);
    v257 = objc_msgSend_initWithVectors_(v248, v256, v255);

    v502 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DF70], v258, v549);

    objc_msgSend_addObjectsFromArray_(v502, v259, v504);
    v575 = 0u;
    v576 = 0u;
    v573 = 0u;
    v574 = 0u;
    v521 = v502;
    v261 = objc_msgSend_countByEnumeratingWithState_objects_count_(v521, v260, &v573, v628, 16);
    if (v261)
    {
      v262 = *v574;
      do
      {
        v263 = 0;
        v264 = v257;
        do
        {
          if (*v574 != v262)
          {
            objc_enumerationMutation(v521);
          }

          v265 = *(*(&v573 + 1) + 8 * v263);
          v266 = objc_autoreleasePoolPush();
          v269 = objc_msgSend_copy(v264, v267, v268);
          v627[0] = v264;
          v627[1] = v265;
          v271 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v270, v627, 2);
          v257 = objc_msgSend_mergeableDeltaMetadataByCombiningMetadatas_(CKMergeableDeltaMetadata, v272, v271);

          isEquivalent = objc_msgSend__isEquivalent_(v257, v273, v269);
          if (v265 == v549)
          {
            v277 = 0;
          }

          else
          {
            v277 = isEquivalent;
          }

          if (v277 == 1)
          {
            v278 = objc_msgSend_identifier(v265, v275, v276);
            objc_msgSend_addObject_(v518, v279, v278);
          }

          objc_autoreleasePoolPop(v266);
          ++v263;
          v264 = v257;
        }

        while (v261 != v263);
        v261 = objc_msgSend_countByEnumeratingWithState_objects_count_(v521, v280, &v573, v628, 16);
      }

      while (v261);
    }

    v281 = objc_opt_new();
    v569[0] = MEMORY[0x1E69E9820];
    v569[1] = 3221225472;
    v569[2] = sub_18856F7D4;
    v569[3] = &unk_1E70BDCA8;
    v282 = v549;
    v570 = v282;
    v506 = v518;
    v571 = v506;
    v510 = v281;
    v572 = v510;
    v508 = _Block_copy(v569);
    v546 = objc_opt_new();
    v567 = 0u;
    v568 = 0u;
    v565 = 0u;
    v566 = 0u;
    v283 = contextc;
    v287 = objc_msgSend_countByEnumeratingWithState_objects_count_(v283, v284, &v565, v626, 16);
    if (v287)
    {
      v288 = *v566;
      do
      {
        for (jj = 0; jj != v287; ++jj)
        {
          if (*v566 != v288)
          {
            objc_enumerationMutation(v283);
          }

          v290 = *(*(&v565 + 1) + 8 * jj);
          v291 = objc_msgSend_identifier(v290, v285, v286);
          objc_msgSend_setObject_forKeyedSubscript_(v546, v292, v290, v291);
        }

        v287 = objc_msgSend_countByEnumeratingWithState_objects_count_(v283, v285, &v565, v626, 16);
      }

      while (v287);
    }

    v295 = objc_msgSend_allObjects(v506, v293, v294);
    objc_msgSend_removeObjectsForKeys_(v546, v296, v295);

    v508[2](v508, v546);
    v299 = objc_msgSend_mutableCopy(v498, v297, v298);

    v547 = v299;
    v302 = objc_msgSend_allObjects(v506, v300, v301);
    objc_msgSend_removeObjectsForKeys_(v547, v303, v302);

    v508[2](v508, v547);
    if (objc_msgSend_count(v510, v304, v305))
    {
      v493 = objc_msgSend_mutableCopy(v510, v306, v307);
      objc_msgSend_addObject_(v493, v308, v282);
      v310 = objc_msgSend_mergeableDeltaMetadataByCombiningMetadatas_(CKMergeableDeltaMetadata, v309, v493);
      (v553)[2](v553, v310);
      v563 = 0u;
      v564 = 0u;
      v561 = 0u;
      v562 = 0u;
      v514 = v510;
      v312 = objc_msgSend_countByEnumeratingWithState_objects_count_(v514, v311, &v561, v625, 16);
      if (v312)
      {
        v543 = 0;
        contextb = 0;
        v313 = *v562;
        do
        {
          v314 = 0;
          do
          {
            if (*v562 != v313)
            {
              objc_enumerationMutation(v514);
            }

            v315 = *(*(&v561 + 1) + 8 * v314);
            if (v535[2](v535, v310, v315) != -1)
            {
              v317 = ck_log_initialization_block;
              if (ck_log_initialization_predicate != -1)
              {
                dispatch_once(&ck_log_initialization_predicate, v317);
              }

              v318 = ck_log_facility_distributed_sync;
              if (os_log_type_enabled(v318, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412546;
                *&buf[4] = v310;
                *&buf[12] = 2112;
                *&buf[14] = v315;
                _os_log_fault_impl(&dword_1883EA000, v318, OS_LOG_TYPE_FAULT, "Invariant violation while folding existing deltas into next delta: updated next delta %@ is not strictly greater than existing delta %@", buf, 0x16u);
              }

              v320 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v319, @"CKErrorDomain", 1, @"Invariant violation while folding existing deltas into next delta: updated next delta %@ is not strictly greater than existing delta %@", v310, v315);

              contextb = 1;
              v543 = v320;
            }

            ++v314;
          }

          while (v312 != v314);
          v312 = objc_msgSend_countByEnumeratingWithState_objects_count_(v514, v316, &v561, v625, 16);
        }

        while (v312);
      }

      else
      {
        v543 = 0;
        contextb = 0;
      }
    }

    else
    {
      v543 = 0;
      contextb = 0;
      v310 = objc_msgSend_copy(v282, v306, v307);
    }

    objc_msgSend_setReplacedDeltaIdentifiers_(v310, v321, v506);

    v237 = v310;
  }

  objc_msgSend_setReplacementDeltaMetadatas_(v538, v235, v498);
  if (objc_msgSend_count(v518, v326, v327))
  {
    objc_msgSend_setRemovableDeltaMetadatas_(v538, v328, v518);
    objc_msgSend_setUpdatedNextDeltaMetadata_(v538, v330, v237);
  }

  v331 = objc_msgSend_replacementDeltaMetadatas(v538, v328, v329);
  v522 = v237;
  if (objc_msgSend_count(v331, v332, v333))
  {
  }

  else
  {
    v338 = objc_msgSend_removableDeltaMetadatas(v538, v334, v335);
    v341 = objc_msgSend_count(v338, v339, v340) == 0;

    if (v341)
    {
      goto LABEL_181;
    }
  }

  v342 = objc_msgSend_mutableCopy(obj, v336, v337);
  v344 = v342;
  if ((v489 & 1) == 0)
  {
    objc_msgSend_addObject_(v342, v343, v549);
  }

  v554 = objc_opt_new();
  v559 = 0u;
  v560 = 0u;
  v557 = 0u;
  v558 = 0u;
  v345 = v344;
  v349 = objc_msgSend_countByEnumeratingWithState_objects_count_(v345, v346, &v557, v624, 16);
  if (v349)
  {
    v350 = *v558;
    do
    {
      for (kk = 0; kk != v349; ++kk)
      {
        if (*v558 != v350)
        {
          objc_enumerationMutation(v345);
        }

        v352 = *(*(&v557 + 1) + 8 * kk);
        if (v352 == v549)
        {
          v362 = objc_msgSend_updatedNextDeltaMetadata(v538, v347, v348);
          v363 = v362;
          if (v362)
          {
            v364 = v362;
          }

          else
          {
            v364 = v352;
          }

          v361 = v364;
        }

        else
        {
          v353 = objc_msgSend_removableDeltaMetadatas(v538, v347, v348);
          v356 = objc_msgSend_identifier(v352, v354, v355);
          v358 = objc_msgSend_containsObject_(v353, v357, v356);

          if (v358)
          {
            v361 = 0;
            goto LABEL_154;
          }

          v363 = objc_msgSend_replacementDeltaMetadatas(v538, v359, v360);
          v367 = objc_msgSend_identifier(v352, v365, v366);
          v369 = objc_msgSend_objectForKeyedSubscript_(v363, v368, v367);
          v370 = v369;
          if (v369)
          {
            v371 = v369;
          }

          else
          {
            v371 = v352;
          }

          v361 = v371;
        }

        if (v361)
        {
          objc_msgSend_addObject_(v554, v372, v361);
        }

LABEL_154:
      }

      v349 = objc_msgSend_countByEnumeratingWithState_objects_count_(v345, v347, &v557, v624, 16);
    }

    while (v349);
  }

  v375 = objc_msgSend_allObjects(v345, v373, v374);
  v548 = objc_msgSend_mergeableDeltaMetadataByCombiningMetadatas_(CKMergeableDeltaMetadata, v376, v375);

  v379 = objc_msgSend_allObjects(v554, v377, v378);
  v536 = objc_msgSend_mergeableDeltaMetadataByCombiningMetadatas_(CKMergeableDeltaMetadata, v380, v379);

  v383 = objc_msgSend_vectors(v548, v381, v382);
  v386 = objc_msgSend_contents(v383, v384, v385);
  v389 = objc_msgSend_vectors(v536, v387, v388);
  v392 = objc_msgSend_contents(v389, v390, v391);
  LODWORD(v379) = objc_msgSend_isEqual_(v386, v393, v392);

  v396 = objc_msgSend_vectors(v548, v394, v395);
  v399 = objc_msgSend_removals(v396, v397, v398);
  v402 = objc_msgSend_vectors(v536, v400, v401);
  v405 = objc_msgSend_removals(v402, v403, v404);
  LODWORD(v389) = objc_msgSend_isEqual_(v399, v406, v405);

  v407 = objc_opt_new();
  v409 = objc_msgSend_deliverableDeltaMetadatasInDeltaSet_withMergeableValueCurrentStateVector_deliveryRequirements_(CKMergeableDeltaMetadata, v408, v554, v407, v487);
  isEqual = objc_msgSend_isEqual_(v409, v410, v554);

  if ((v379 & v389) != 1 || !v554)
  {
    v411 = ck_log_initialization_block;
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, v411);
    }

    v412 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(v412, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v549;
      _os_log_impl(&dword_1883EA000, v412, OS_LOG_TYPE_INFO, "Invariant violation debug: next delta is %@", buf, 0xCu);
    }

    v413 = ck_log_initialization_block;
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, v413);
    }

    v414 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(v414, OS_LOG_TYPE_INFO))
    {
      v417 = objc_msgSend_updatedNextDeltaMetadata(v538, v415, v416);
      *buf = 138412290;
      *&buf[4] = v417;
      _os_log_impl(&dword_1883EA000, v414, OS_LOG_TYPE_INFO, "Invariant violation debug: updated next delta is %@", buf, 0xCu);
    }

    v418 = ck_log_initialization_block;
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, v418);
    }

    v419 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(v419, OS_LOG_TYPE_INFO))
    {
      v422 = objc_msgSend_replacementDeltaMetadatas(v538, v420, v421);
      *buf = 138412290;
      *&buf[4] = v422;
      _os_log_impl(&dword_1883EA000, v419, OS_LOG_TYPE_INFO, "Invariant violation debug: replaced deltas are %@", buf, 0xCu);
    }

    v423 = ck_log_initialization_block;
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, v423);
    }

    v424 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(v424, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = obj;
      _os_log_impl(&dword_1883EA000, v424, OS_LOG_TYPE_INFO, "Invariant violation debug: deliverable server deltas are %@", buf, 0xCu);
    }

    v425 = ck_log_initialization_block;
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, v425);
    }

    v426 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(v426, OS_LOG_TYPE_FAULT))
    {
      v462 = objc_msgSend_vectors(v548, v427, v428);
      contexte = objc_msgSend_contents(v462, v463, v464);
      v467 = objc_msgSend_vectors(v536, v465, v466);
      v470 = objc_msgSend_contents(v467, v468, v469);
      v473 = objc_msgSend_vectors(v548, v471, v472);
      v476 = objc_msgSend_removals(v473, v474, v475);
      v479 = objc_msgSend_vectors(v536, v477, v478);
      v482 = objc_msgSend_removals(v479, v480, v481);
      v483 = v482;
      v484 = @"not ";
      if (isEqual)
      {
        v484 = &stru_1EFA32970;
      }

      *buf = 138413314;
      *&buf[4] = contexte;
      *&buf[12] = 2112;
      *&buf[14] = v470;
      *&buf[22] = 2112;
      v619 = v476;
      v620 = 2112;
      v621 = v482;
      v622 = 2112;
      v623 = v484;
      _os_log_fault_impl(&dword_1883EA000, v426, OS_LOG_TYPE_FAULT, "Invariant violation while calculating replacement deltas: contents vector %@ vs. %@, removals vector %@ vs. %@, %@deliverable", buf, 0x34u);
    }

    v431 = objc_msgSend_vectors(v548, v429, v430);
    contextd = objc_msgSend_contents(v431, v432, v433);
    v436 = objc_msgSend_vectors(v536, v434, v435);
    v439 = objc_msgSend_contents(v436, v437, v438);
    v442 = objc_msgSend_vectors(v548, v440, v441);
    v445 = objc_msgSend_removals(v442, v443, v444);
    v448 = objc_msgSend_vectors(v536, v446, v447);
    v451 = objc_msgSend_removals(v448, v449, v450);
    v453 = v451;
    v454 = @"not ";
    if (isEqual)
    {
      v454 = &stru_1EFA32970;
    }

    v455 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v452, @"CKErrorDomain", 1, @"Invariant violation while calculating replacement deltas: contents vector %@ vs. %@, removals vector %@ vs. %@, %@deliverable", contextd, v439, v445, v451, v454);

    contextb = 1;
    v543 = v455;
  }

LABEL_181:
  objc_autoreleasePoolPop(v488);
  if (contextb)
  {
    if (a7)
    {
      v456 = v543;
      *a7 = v543;
    }

    v457 = objc_opt_new();

    v458 = v457;
  }

  else
  {
    v458 = v538;
  }

  v459 = v458;

  v460 = *MEMORY[0x1E69E9840];
  return v459;
}

+ (id)deliverableDeltaMetadatasInDeltaSet:(id)a3 withMergeableValueCurrentStateVector:(id)a4 deliveryRequirements:(unint64_t)a5
{
  v360 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v283 = a4;
  v269 = objc_autoreleasePoolPush();
  v270 = v7;
  v291 = a5;
  if (a5)
  {
    v290 = objc_opt_new();
    v298 = objc_opt_new();
    v297 = objc_opt_new();
    v284 = objc_opt_new();
    v348 = 0u;
    v349 = 0u;
    v346 = 0u;
    v347 = 0u;
    v8 = v7;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v346, v359, 16);
    if (v10)
    {
      v11 = *v347;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v347 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v346 + 1) + 8 * i);
          v14 = objc_autoreleasePoolPush();
          v17 = objc_msgSend_vectors(v13, v15, v16);
          v20 = objc_msgSend_previous(v17, v18, v19);
          v23 = objc_msgSend_allSiteIdentifiers(v20, v21, v22);
          objc_msgSend_unionSet_(v284, v24, v23);

          v27 = objc_msgSend_vectors(v13, v25, v26);
          v30 = objc_msgSend_contents(v27, v28, v29);
          v33 = objc_msgSend_allSiteIdentifiers(v30, v31, v32);
          objc_msgSend_unionSet_(v284, v34, v33);

          v37 = objc_msgSend_vectors(v13, v35, v36);
          v40 = objc_msgSend_removals(v37, v38, v39);
          v43 = objc_msgSend_allSiteIdentifiers(v40, v41, v42);
          objc_msgSend_unionSet_(v284, v44, v43);

          v47 = objc_msgSend_vectors(v13, v45, v46);
          v50 = objc_msgSend_dependencies(v47, v48, v49);
          v53 = objc_msgSend_allSiteIdentifiers(v50, v51, v52);
          objc_msgSend_unionSet_(v284, v54, v53);

          objc_autoreleasePoolPop(v14);
        }

        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v55, &v346, v359, 16);
      }

      while (v10);
    }

    v58 = objc_msgSend_allSiteIdentifiers(v283, v56, v57);
    objc_msgSend_unionSet_(v284, v59, v58);

    v282 = objc_opt_new();
    v296 = objc_opt_new();
    v300 = objc_opt_new();
    v299 = objc_opt_new();
    v344 = 0u;
    v345 = 0u;
    v342 = 0u;
    v343 = 0u;
    obj = v8;
    v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v60, &v342, v358, 16);
    if (v61)
    {
      v62 = *v343;
      do
      {
        for (j = 0; j != v61; ++j)
        {
          if (*v343 != v62)
          {
            objc_enumerationMutation(obj);
          }

          v64 = *(*(&v342 + 1) + 8 * j);
          v65 = objc_autoreleasePoolPush();
          v68 = objc_msgSend_vectors(v64, v66, v67);
          v71 = objc_msgSend_contents(v68, v69, v70);
          v73 = objc_msgSend_vectorFillingInImplicitClockValuesUsingSiteIdentifiers_(v71, v72, v284);

          v76 = objc_msgSend_vectors(v64, v74, v75);
          v79 = objc_msgSend_previous(v76, v77, v78);
          v81 = objc_msgSend_vectorFillingInImplicitClockValuesUsingSiteIdentifiers_(v79, v80, v284);

          v84 = objc_msgSend_vectors(v64, v82, v83);
          v87 = objc_msgSend_dependencies(v84, v85, v86);
          v89 = objc_msgSend_vectorFillingInImplicitClockValuesUsingSiteIdentifiers_(v87, v88, v284);

          objc_msgSend_addAllClockValuesFromVector_(v282, v90, v73);
          v93 = objc_msgSend_identifier(v64, v91, v92);
          objc_msgSend_setObject_forKeyedSubscript_(v296, v94, v73, v93);

          if (v291)
          {
            v97 = objc_msgSend_identifier(v64, v95, v96);
            objc_msgSend_setObject_forKeyedSubscript_(v300, v98, v81, v97);
          }

          if (v291 != 1)
          {
            v99 = objc_msgSend_identifier(v64, v95, v96);
            objc_msgSend_setObject_forKeyedSubscript_(v299, v100, v89, v99);
          }

          objc_autoreleasePoolPop(v65);
        }

        v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v101, &v342, v358, 16);
      }

      while (v61);
    }

    v103 = objc_msgSend_vectorFillingInImplicitClockValuesUsingSiteIdentifiers_(v283, v102, v284);
    objc_msgSend_addAllClockValuesFromVector_(v282, v104, v103);

    v340 = 0u;
    v341 = 0u;
    v338 = 0u;
    v339 = 0u;
    v276 = obj;
    v106 = objc_msgSend_countByEnumeratingWithState_objects_count_(v276, v105, &v338, v357, 16);
    if (v106)
    {
      v272 = *v339;
      do
      {
        v107 = 0;
        v274 = v106;
        do
        {
          if (*v339 != v272)
          {
            objc_enumerationMutation(v276);
          }

          v279 = v107;
          v108 = *(*(&v338 + 1) + 8 * v107);
          context = objc_autoreleasePoolPush();
          v336 = 0u;
          v337 = 0u;
          v334 = 0u;
          v335 = 0u;
          obja = v284;
          v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v109, &v334, v356, 16);
          if (v111)
          {
            v292 = *v335;
            do
            {
              for (k = 0; k != v111; ++k)
              {
                if (*v335 != v292)
                {
                  objc_enumerationMutation(obja);
                }

                v113 = *(*(&v334 + 1) + 8 * k);
                v115 = objc_msgSend_objectForKeyedSubscript_(v298, v110, v113);
                if (!v115)
                {
                  v115 = objc_opt_new();
                  objc_msgSend_setObject_forKeyedSubscript_(v298, v116, v115, v113);
                }

                v119 = objc_msgSend_objectForKeyedSubscript_(v297, v114, v113);
                if (!v119)
                {
                  v119 = objc_opt_new();
                  objc_msgSend_setObject_forKeyedSubscript_(v297, v120, v119, v113);
                }

                v121 = objc_msgSend_identifier(v108, v117, v118);
                v123 = objc_msgSend_objectForKeyedSubscript_(v296, v122, v121);

                v126 = objc_msgSend_identifier(v108, v124, v125);
                v128 = objc_msgSend_objectForKeyedSubscript_(v300, v127, v126);

                v131 = objc_msgSend_identifier(v108, v129, v130);
                v133 = objc_msgSend_objectForKeyedSubscript_(v299, v132, v131);

                v135 = objc_msgSend_clockValuesForSiteIdentifier_(v123, v134, v113);
                objc_msgSend_addIndexes_withObject_(v115, v136, v135, v108);

                v138 = objc_msgSend_clockValuesForSiteIdentifier_(v128, v137, v113);
                objc_msgSend_addIndexes_withObject_(v119, v139, v138, v108);

                v141 = objc_msgSend_clockValuesForSiteIdentifier_(v133, v140, v113);
                objc_msgSend_addIndexes_withObject_(v119, v142, v141, v108);
              }

              v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v110, &v334, v356, 16);
            }

            while (v111);
          }

          objc_autoreleasePoolPop(context);
          v107 = v279 + 1;
        }

        while (v279 + 1 != v274);
        v106 = objc_msgSend_countByEnumeratingWithState_objects_count_(v276, v143, &v338, v357, 16);
      }

      while (v106);
    }

    v332 = 0u;
    v333 = 0u;
    v330 = 0u;
    v331 = 0u;
    v271 = v284;
    v145 = objc_msgSend_countByEnumeratingWithState_objects_count_(v271, v144, &v330, v355, 16);
    if (v145)
    {
      v273 = *v331;
      do
      {
        v146 = 0;
        v275 = v145;
        do
        {
          if (*v331 != v273)
          {
            objc_enumerationMutation(v271);
          }

          v280 = v146;
          v147 = *(*(&v330 + 1) + 8 * v146);
          contexta = objc_autoreleasePoolPush();
          v293 = objc_msgSend_clockValuesForSiteIdentifier_(v282, v148, v147);
          v328 = 0u;
          v329 = 0u;
          v326 = 0u;
          v327 = 0u;
          objb = v276;
          v152 = objc_msgSend_countByEnumeratingWithState_objects_count_(objb, v149, &v326, v354, 16);
          if (v152)
          {
            v153 = *v327;
            do
            {
              for (m = 0; m != v152; ++m)
              {
                if (*v327 != v153)
                {
                  objc_enumerationMutation(objb);
                }

                v155 = *(*(&v326 + 1) + 8 * m);
                v156 = objc_msgSend_identifier(v155, v150, v151);
                v158 = objc_msgSend_objectForKeyedSubscript_(v300, v157, v156);

                v161 = objc_msgSend_identifier(v155, v159, v160);
                v163 = objc_msgSend_objectForKeyedSubscript_(v299, v162, v161);

                v165 = objc_msgSend_clockValuesForSiteIdentifier_(v158, v164, v147);
                if ((objc_msgSend_containsIndexes_(v293, v166, v165) & 1) == 0)
                {

LABEL_52:
                  objc_msgSend_addObject_(v290, v171, v155);
                  goto LABEL_53;
                }

                v168 = objc_msgSend_clockValuesForSiteIdentifier_(v163, v167, v147);
                v170 = objc_msgSend_containsIndexes_(v293, v169, v168);

                if ((v170 & 1) == 0)
                {
                  goto LABEL_52;
                }

LABEL_53:
              }

              v152 = objc_msgSend_countByEnumeratingWithState_objects_count_(objb, v150, &v326, v354, 16);
            }

            while (v152);
          }

          objc_autoreleasePoolPop(contexta);
          v146 = v280 + 1;
        }

        while (v280 + 1 != v275);
        v145 = objc_msgSend_countByEnumeratingWithState_objects_count_(v271, v172, &v330, v355, 16);
      }

      while (v145);
    }

    for (objc = 0; objc < objc_msgSend_count(v290, v173, v174); ++objc)
    {
      v281 = objc_autoreleasePoolPush();
      v178 = objc_msgSend_objectAtIndexedSubscript_(v290, v177, objc);
      v324 = 0u;
      v325 = 0u;
      v322 = 0u;
      v323 = 0u;
      v294 = v271;
      v181 = objc_msgSend_countByEnumeratingWithState_objects_count_(v294, v179, &v322, v353, 16);
      if (v181)
      {
        v182 = *v323;
        do
        {
          for (n = 0; n != v181; ++n)
          {
            if (*v323 != v182)
            {
              objc_enumerationMutation(v294);
            }

            v184 = *(*(&v322 + 1) + 8 * n);
            v185 = objc_msgSend_objectForKeyedSubscript_(v298, v180, v184);
            v187 = objc_msgSend_objectForKeyedSubscript_(v297, v186, v184);
            v190 = objc_msgSend_identifier(v178, v188, v189);
            v192 = objc_msgSend_objectForKeyedSubscript_(v296, v191, v190);

            v194 = objc_msgSend_clockValuesForSiteIdentifier_(v192, v193, v184);
            v313[0] = MEMORY[0x1E69E9820];
            v313[1] = 3221225472;
            v313[2] = sub_188570EAC;
            v313[3] = &unk_1E70BDCF8;
            v314 = v290;
            v315 = v299;
            v316 = v300;
            v317 = v184;
            v318 = v283;
            v195 = v194;
            v319 = v195;
            v196 = v185;
            v320 = v196;
            v321 = v296;
            objc_msgSend_enumerateObjectsForIndexes_usingBlock_(v187, v197, v195, v313);
          }

          v181 = objc_msgSend_countByEnumeratingWithState_objects_count_(v294, v180, &v322, v353, 16);
        }

        while (v181);
      }

      objc_autoreleasePoolPop(v281);
    }

    objd = objc_msgSend_mutableCopy(v276, v175, v176);
    v202 = objc_msgSend_set(v290, v200, v201);
    objc_msgSend_minusSet_(objd, v203, v202);

    v206 = objc_msgSend_mutableCopy(v283, v204, v205);
    v311 = 0u;
    v312 = 0u;
    v309 = 0u;
    v310 = 0u;
    v207 = objd;
    v209 = objc_msgSend_countByEnumeratingWithState_objects_count_(v207, v208, &v309, v352, 16);
    if (v209)
    {
      v210 = *v310;
      do
      {
        for (ii = 0; ii != v209; ++ii)
        {
          if (*v310 != v210)
          {
            objc_enumerationMutation(v207);
          }

          v212 = *(*(&v309 + 1) + 8 * ii);
          v213 = objc_autoreleasePoolPush();
          v216 = objc_msgSend_vectors(v212, v214, v215);
          v219 = objc_msgSend_contents(v216, v217, v218);
          objc_msgSend_unionStateVector_(v206, v220, v219);

          objc_autoreleasePoolPop(v213);
        }

        v209 = objc_msgSend_countByEnumeratingWithState_objects_count_(v207, v221, &v309, v352, 16);
      }

      while (v209);
    }

    v307 = 0u;
    v308 = 0u;
    v305 = 0u;
    v306 = 0u;
    v295 = v207;
    v223 = objc_msgSend_countByEnumeratingWithState_objects_count_(v295, v222, &v305, v351, 16);
    if (v223)
    {
      v224 = *v306;
      do
      {
        for (jj = 0; jj != v223; ++jj)
        {
          if (*v306 != v224)
          {
            objc_enumerationMutation(v295);
          }

          v226 = *(*(&v305 + 1) + 8 * jj);
          v227 = objc_autoreleasePoolPush();
          v230 = objc_msgSend_vectors(v226, v228, v229);
          v233 = objc_msgSend_removals(v230, v231, v232);
          v236 = objc_msgSend_timestampCount(v233, v234, v235) == 0;

          if (!v236)
          {
            v239 = objc_msgSend_vectors(v226, v237, v238);
            v242 = objc_msgSend_removals(v239, v240, v241);
            v245 = objc_msgSend_mutableCopy(v242, v243, v244);

            v248 = objc_msgSend_clockVector(v206, v246, v247);
            objc_msgSend_intersectVector_(v245, v249, v248);

            objc_msgSend_unionStateVector_(v206, v250, v245);
          }

          objc_autoreleasePoolPop(v227);
        }

        v223 = objc_msgSend_countByEnumeratingWithState_objects_count_(v295, v251, &v305, v351, 16);
      }

      while (v223);
    }

    v303 = 0u;
    v304 = 0u;
    v301 = 0u;
    v302 = 0u;
    v252 = v290;
    v254 = objc_msgSend_countByEnumeratingWithState_objects_count_(v252, v253, &v301, v350, 16);
    if (v254)
    {
      v255 = *v302;
      do
      {
        for (kk = 0; kk != v254; ++kk)
        {
          if (*v302 != v255)
          {
            objc_enumerationMutation(v252);
          }

          v257 = *(*(&v301 + 1) + 8 * kk);
          v258 = objc_autoreleasePoolPush();
          v261 = objc_msgSend_vectors(v257, v259, v260);
          v264 = objc_msgSend_contents(v261, v262, v263);
          hasAtomStateNotInStateVector = objc_msgSend_hasAtomStateNotInStateVector_(v264, v265, v206);

          if ((hasAtomStateNotInStateVector & 1) == 0)
          {
            objc_msgSend_addObject_(v295, v267, v257);
          }

          objc_autoreleasePoolPop(v258);
        }

        v254 = objc_msgSend_countByEnumeratingWithState_objects_count_(v252, v268, &v301, v350, 16);
      }

      while (v254);
    }
  }

  else
  {
    v295 = v7;
  }

  objc_autoreleasePoolPop(v269);

  v198 = *MEMORY[0x1E69E9840];

  return v295;
}

@end