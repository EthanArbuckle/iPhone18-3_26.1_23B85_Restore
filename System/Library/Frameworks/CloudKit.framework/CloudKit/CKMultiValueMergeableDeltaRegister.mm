@interface CKMultiValueMergeableDeltaRegister
+ (id)installationIdentifierWithSalt:(id)salt;
- (BOOL)checkElementType:(id)type error:(id *)error;
- (BOOL)mergeDeltas:(id)deltas error:(id *)error;
- (CKMultiValueMergeableDeltaRegister)initWithIdentifier:(id)identifier vector:(id)vector contents:(id)contents error:(id *)error;
- (CKMultiValueMergeableDeltaRegister)initWithPersistedState:(id)state contents:(id)contents error:(id *)error;
- (CKMultiValueMergeableDeltaRegisterState)persistedState;
- (id)installationIdentifier;
- (id)mergeableDeltasForMetadata:(id)metadata error:(id *)error;
- (id)siteIdentifier;
- (id)stateVector;
- (void)CKDescribePropertiesUsing:(id)using;
- (void)setContents:(id)contents;
@end

@implementation CKMultiValueMergeableDeltaRegister

- (CKMultiValueMergeableDeltaRegister)initWithIdentifier:(id)identifier vector:(id)vector contents:(id)contents error:(id *)error
{
  contentsCopy = contents;
  vectorCopy = vector;
  identifierCopy = identifier;
  v13 = [CKMultiValueMergeableDeltaRegisterState alloc];
  v16 = objc_msgSend_newSalt(CKMultiValueMergeableDeltaRegisterState, v14, v15);
  v18 = objc_msgSend_initWithIdentifier_vector_salt_(v13, v17, identifierCopy, vectorCopy, v16);

  v20 = objc_msgSend_initWithPersistedState_contents_error_(self, v19, v18, contentsCopy, error);
  return v20;
}

- (CKMultiValueMergeableDeltaRegister)initWithPersistedState:(id)state contents:(id)contents error:(id *)error
{
  stateCopy = state;
  contentsCopy = contents;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 1;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_1883ED834;
  v37 = sub_1883EF570;
  v38 = 0;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = sub_1885190A8;
  v29[3] = &unk_1E70BBEB8;
  v31 = &v39;
  selfCopy = self;
  v30 = selfCopy;
  v32 = &v33;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(contentsCopy, v11, v29);
  if (v40[3])
  {
    v14 = objc_msgSend_identifier(stateCopy, v12, v13);
    v17 = objc_msgSend_vector(stateCopy, v15, v16);
    v28.receiver = selfCopy;
    v28.super_class = CKMultiValueMergeableDeltaRegister;
    v18 = [(CKMultiValueRegister *)&v28 initWithIdentifier:v14 vector:v17 contents:contentsCopy error:error];

    if (v18)
    {
      v21 = objc_msgSend_salt(stateCopy, v19, v20);
      v24 = objc_msgSend_copy(v21, v22, v23);
      salt = v18->_salt;
      v18->_salt = v24;
    }

    selfCopy = v18;
    v26 = selfCopy;
  }

  else
  {
    v26 = 0;
    if (error)
    {
      *error = v34[5];
    }
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  return v26;
}

- (CKMultiValueMergeableDeltaRegisterState)persistedState
{
  v3 = [CKMultiValueMergeableDeltaRegisterState alloc];
  v6 = objc_msgSend_identifier(self, v4, v5);
  v9 = objc_msgSend_vector(self, v7, v8);
  v12 = objc_msgSend_salt(self, v10, v11);
  v14 = objc_msgSend_initWithIdentifier_vector_salt_(v3, v13, v6, v9, v12);

  return v14;
}

+ (id)installationIdentifierWithSalt:(id)salt
{
  v54 = a2;
  v59 = *MEMORY[0x1E69E9840];
  saltCopy = salt;
  v7 = 0;
  v8 = 4;
  do
  {
    if (v7)
    {
      goto LABEL_8;
    }

    v9 = objc_msgSend_defaultContext(CKLogicalDeviceContext, v4, v5);
    v12 = objc_msgSend_connection(v9, v10, v11);
    v15 = objc_msgSend_adopterProcessScopedDaemonProxy(v12, v13, v14);
    v56 = 0;
    v7 = objc_msgSend_globalDeviceIdentifierWithError_(v15, v16, &v56);
    v17 = v56;

    v20 = objc_msgSend_domain(v17, v18, v19);
    if (!objc_msgSend_isEqual_(v20, v21, @"CKErrorDomain"))
    {
      goto LABEL_6;
    }

    v24 = objc_msgSend_code(v17, v22, v23);

    if (v24 == 8)
    {
      v20 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v25, v26);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v20, v27, v54, self, @"CKMultiValueMergeableDeltaRegister.m", 85, @"Process is not entitled to call CloudKit SPI");
LABEL_6:
    }

LABEL_8:
    --v8;
  }

  while (v8);
  if (!v7)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v28 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_FAULT))
    {
      *md = 0;
      _os_log_fault_impl(&dword_1883EA000, v28, OS_LOG_TYPE_FAULT, "Could not fetch global device identifier, possibly due to attempted mergeables use by system user", md, 2u);
    }

    v31 = objc_msgSend_placeholderIdentifier(self, v29, v30, v54);
    v7 = objc_msgSend_UUIDString(v31, v32, v33);
  }

  v34 = objc_msgSend_dataUsingEncoding_(v7, v4, 4, v54);
  if (!objc_msgSend_length(saltCopy, v35, v36))
  {
    v52 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v37, v38);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v52, v53, v55, self, @"CKMultiValueMergeableDeltaRegister.m", 96, @"Unexpected salt length");
  }

  v39 = objc_msgSend_mutableCopy(saltCopy, v37, v38);
  objc_msgSend_appendData_(v39, v40, v34);
  *md = 0u;
  v58 = 0u;
  v41 = v39;
  v44 = objc_msgSend_bytes(v41, v42, v43);
  v47 = objc_msgSend_length(v39, v45, v46);
  CC_SHA256(v44, v47, md);
  v49 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v48, md, 32);

  v50 = *MEMORY[0x1E69E9840];

  return v49;
}

- (id)installationIdentifier
{
  v3 = objc_opt_class();
  v6 = objc_msgSend_salt(self, v4, v5);
  v8 = objc_msgSend_installationIdentifierWithSalt_(v3, v7, v6);

  return v8;
}

- (id)siteIdentifier
{
  v62 = *MEMORY[0x1E69E9840];
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 1;
  v3 = objc_opt_new();
  selfCopy = self;
  v6 = objc_msgSend_vector(self, v4, v5);
  v9 = objc_msgSend_allSiteIdentifiers(v6, v7, v8);

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v10 = v9;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v52, v61, 16);
  if (v14)
  {
    v15 = *v53;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v53 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v52 + 1) + 8 * i);
        v18 = objc_msgSend_identifier(v17, v12, v13);
        v20 = objc_msgSend_objectForKeyedSubscript_(v3, v19, v18);

        if (!v20)
        {
          v20 = objc_opt_new();
          v25 = objc_msgSend_identifier(v17, v23, v24);
          objc_msgSend_setObject_forKeyedSubscript_(v3, v26, v20, v25);
        }

        v27 = objc_msgSend_modifier(v17, v21, v22);
        v30 = objc_msgSend_length(v27, v28, v29) == 0;

        if (!v30)
        {
          v33 = objc_msgSend_modifier(v17, v31, v32);
          objc_msgSend_addObject_(v20, v34, v33);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v52, v61, 16);
    }

    while (v14);
  }

  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = sub_18851985C;
  v51[3] = &unk_1E70BBEE0;
  v51[4] = selfCopy;
  v51[5] = &v56;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v3, v35, v51);

  v60[0] = 0;
  v60[1] = 0;
  v38 = objc_msgSend_identifier(selfCopy, v36, v37);
  objc_msgSend_getUUIDBytes_(v38, v39, v60);

  v43 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v40, v60, 16);
  if (*(v57 + 24) == 1)
  {
    v44 = objc_msgSend_installationIdentifier(selfCopy, v41, v42);
  }

  else
  {
    v44 = 0;
  }

  v45 = [CKDistributedSiteIdentifier alloc];
  v47 = objc_msgSend_initWithIdentifier_modifier_(v45, v46, v43, v44);

  _Block_object_dispose(&v56, 8);
  v48 = *MEMORY[0x1E69E9840];

  return v47;
}

- (void)setContents:(id)contents
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_188519C70;
  v7[3] = &unk_1E70BBF08;
  v7[4] = self;
  contentsCopy = contents;
  objc_msgSend_enumerateObjectsUsingBlock_(contentsCopy, v5, v7);
  v6.receiver = self;
  v6.super_class = CKMultiValueMergeableDeltaRegister;
  [(CKMultiValueRegister *)&v6 setContents:contentsCopy];
}

- (BOOL)checkElementType:(id)type error:(id *)error
{
  typeCopy = type;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!error)
    {
      v17 = 0;
      goto LABEL_12;
    }

    v18 = objc_opt_class();
    v6 = NSStringFromClass(v18);
    v19 = objc_opt_class();
    v13 = NSStringFromClass(v19);
    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v20, @"CKErrorDomain", 12, @"%@ element has wrong class (expected %@)", v6, v13);
    goto LABEL_7;
  }

  v6 = typeCopy;
  v9 = objc_msgSend_metadata(v6, v7, v8);

  if (!v9)
  {
    v21 = objc_msgSend__data(v6, v10, v11);
    if (v21)
    {
      v13 = v21;
      v17 = 1;
      goto LABEL_10;
    }

    v25 = objc_msgSend_fileURL(v6, v22, v23);

    if (v25)
    {
      v17 = 1;
      goto LABEL_11;
    }

    if (!error)
    {
LABEL_18:
      v17 = 0;
      goto LABEL_11;
    }

    v26 = objc_opt_class();
    v13 = NSStringFromClass(v26);
    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v27, @"CKErrorDomain", 12, @"%@ delta element is malformed (missing payload)", v13);
LABEL_7:
    *error = v17 = 0;
    goto LABEL_10;
  }

  if (!error)
  {
    goto LABEL_18;
  }

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = NSStringFromProtocol(&unk_1EFA8BBD8);
  v15 = NSStringFromProtocol(&unk_1EFA8BB38);
  *error = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v16, @"CKErrorDomain", 12, @"%@ delta element was generated from a %@, not a %@", v13, v14, v15);

  v17 = 0;
LABEL_10:

LABEL_11:
LABEL_12:

  return v17;
}

- (id)stateVector
{
  v3 = objc_msgSend_vector(self, a2, v2);
  v6 = objc_msgSend_mutableCopy(v3, v4, v5);

  return v6;
}

- (BOOL)mergeDeltas:(id)deltas error:(id *)error
{
  selfCopy = self;
  v97 = *MEMORY[0x1E69E9840];
  deltasCopy = deltas;
  v5 = objc_opt_new();
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v6 = deltasCopy;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v91, v96, 16);
  if (v10)
  {
    v11 = *v92;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v92 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v91 + 1) + 8 * i);
        v14 = objc_msgSend_metadata(v13, v8, v9, selfCopy);
        v17 = objc_msgSend_vectors(v14, v15, v16);
        v20 = objc_msgSend_contents(v17, v18, v19);
        objc_msgSend_unionStateVector_(v5, v21, v20);

        v24 = objc_msgSend_metadata(v13, v22, v23);
        v27 = objc_msgSend_vectors(v24, v25, v26);
        v30 = objc_msgSend_removals(v27, v28, v29);
        objc_msgSend_unionStateVector_(v5, v31, v30);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v91, v96, 16);
    }

    while (v10);
  }

  v33 = objc_msgSend_vectorFilteredByAtomState_(v5, v32, 1);
  v69 = objc_opt_new();
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  obj = v6;
  v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v34, &v87, v95, 16);
  if (v37)
  {
    v38 = *v88;
    while (2)
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v88 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v40 = *(*(&v87 + 1) + 8 * j);
        v41 = objc_msgSend_mutableCopy(v33, v35, v36, selfCopy);
        v44 = objc_msgSend_metadata(v40, v42, v43);
        v47 = objc_msgSend_vectors(v44, v45, v46);
        v50 = objc_msgSend_contents(v47, v48, v49);
        objc_msgSend_intersectStateVector_(v41, v51, v50);

        if (objc_msgSend_timestampCount(v41, v52, v53))
        {
          v81 = 0;
          v82 = &v81;
          v83 = 0x3032000000;
          v84 = sub_1883ED834;
          v85 = sub_1883EF570;
          v86 = 0;
          v77 = 0;
          v78 = &v77;
          v79 = 0x2020000000;
          v80 = 1;
          v76[0] = 0;
          v76[1] = v76;
          v76[2] = 0x2020000000;
          v76[3] = 0;
          v71[0] = MEMORY[0x1E69E9820];
          v71[1] = 3221225472;
          v71[2] = sub_18851A438;
          v71[3] = &unk_1E70BBF30;
          v73 = v76;
          v74 = &v81;
          v71[4] = v40;
          v75 = &v77;
          v72 = v69;
          objc_msgSend_enumerateAllClockValuesUsingBlock_(v41, v54, v71);
          v55 = *(v78 + 24);
          if (error && (v55 & 1) == 0)
          {
            *error = v82[5];
          }

          _Block_object_dispose(v76, 8);
          _Block_object_dispose(&v77, 8);
          _Block_object_dispose(&v81, 8);

          if (!v55)
          {

            v64 = 0;
            v62 = obj;
            goto LABEL_24;
          }
        }
      }

      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v35, &v87, v95, 16);
      if (v37)
      {
        continue;
      }

      break;
    }
  }

  v56 = [CKMultiValueRegister alloc];
  v57 = objc_opt_class();
  v60 = objc_msgSend_placeholderIdentifier(v57, v58, v59);
  v62 = objc_msgSend_initWithIdentifier_vector_contents_error_(v56, v61, v60, v5, v69, error);

  if (v62)
  {
    v64 = objc_msgSend_merge_error_(selfCopy, v63, v62, error);
  }

  else
  {
    v64 = 0;
  }

LABEL_24:

  v65 = *MEMORY[0x1E69E9840];
  return v64;
}

- (id)mergeableDeltasForMetadata:(id)metadata error:(id *)error
{
  metadataCopy = metadata;
  v10 = objc_msgSend_vector(self, v8, v9);
  v13 = objc_msgSend_mutableCopy(v10, v11, v12);

  v16 = objc_msgSend_vectors(metadataCopy, v14, v15);
  v19 = objc_msgSend_contents(v16, v17, v18);
  v22 = objc_msgSend_clockVector(v19, v20, v21);
  objc_msgSend_intersectVector_(v13, v23, v22);

  v25 = objc_msgSend_vectorFilteredByAtomState_(v13, v24, 2);
  v28 = objc_msgSend_timestampCount(v25, v26, v27);

  if (v28)
  {
    if (error)
    {
      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v29, @"CKErrorDomain", 12, @"Cannot generate a delta from a register in consumed state");
      *error = v31 = 0;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v32 = objc_msgSend_vector(self, v29, v30);
    v35 = objc_msgSend_mutableCopy(v32, v33, v34);

    v38 = objc_msgSend_vectors(metadataCopy, v36, v37);
    v41 = objc_msgSend_contents(v38, v39, v40);
    v44 = objc_msgSend_clockVector(v41, v42, v43);
    objc_msgSend_intersectVector_(v35, v45, v44);

    v48 = objc_msgSend_vectors(metadataCopy, v46, v47);
    v51 = objc_msgSend_contents(v48, v49, v50);
    LOBYTE(v44) = objc_msgSend_isEqual_(v35, v52, v51);

    if (v44)
    {
      v140 = 0;
      v141 = &v140;
      v142 = 0x3032000000;
      v143 = sub_1883ED834;
      v144 = sub_1883EF570;
      v145 = objc_opt_new();
      v57 = objc_msgSend_vectors(metadataCopy, v55, v56);
      v60 = objc_msgSend_contents(v57, v58, v59);
      v62 = objc_msgSend_vectorFilteredByAtomState_(v60, v61, 1);

      v65 = objc_msgSend_vectors(metadataCopy, v63, v64);
      v68 = objc_msgSend_contents(v65, v66, v67);
      v125 = objc_msgSend_mutableCopy(v68, v69, v70);

      v73 = objc_msgSend_clockVector(v62, v71, v72);
      objc_msgSend_minusVector_(v125, v74, v73);

      v77 = objc_msgSend_vectors(metadataCopy, v75, v76);
      v80 = objc_msgSend_dependencies(v77, v78, v79);
      v124 = objc_msgSend_mutableCopy(v80, v81, v82);

      v134 = 0;
      v135 = &v134;
      v136 = 0x3032000000;
      v137 = sub_1883ED834;
      v138 = sub_1883EF570;
      v139 = 0;
      if (objc_msgSend_timestampCount(v62, v83, v84))
      {
        if (objc_msgSend_timestampCount(v62, v85, v86) >= 2)
        {
          v89 = objc_msgSend_vectors(metadataCopy, v87, v88);
          v92 = objc_msgSend_contents(v89, v90, v91);
          v95 = objc_msgSend_clockVector(v92, v93, v94);
          objc_msgSend_unionVector_(v124, v96, v95);
        }

        v97 = objc_msgSend_timestampToContents(self, v87, v88);
        v126[0] = MEMORY[0x1E69E9820];
        v126[1] = 3221225472;
        v126[2] = sub_18851AC14;
        v126[3] = &unk_1E70BBF58;
        v98 = v62;
        v127 = v98;
        selfCopy = self;
        v132 = &v134;
        v133 = &v140;
        v129 = v125;
        v130 = metadataCopy;
        v131 = v124;
        objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v97, v99, v126);

        v102 = objc_msgSend_timestampCount(v98, v100, v101);
        if (v102 != objc_msgSend_count(v141[5], v103, v104) && v141[5])
        {
          v122 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v105, v106);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v122, v123, a2, self, @"CKMultiValueMergeableDeltaRegister.m", 365, @"Unexpected number of deltas generated");
        }

        v107 = v127;
      }

      else
      {
        v116 = [CKMergeableDelta alloc];
        v117 = objc_opt_new();
        v107 = objc_msgSend_initWithData_metadata_(v116, v118, v117, metadataCopy);

        objc_msgSend_addObject_(v141[5], v119, v107);
      }

      v120 = v141[5];
      if (error && !v120)
      {
        *error = v135[5];
        v120 = v141[5];
      }

      v31 = v120;
      _Block_object_dispose(&v134, 8);

      _Block_object_dispose(&v140, 8);
    }

    else
    {
      if (error)
      {
        v108 = objc_msgSend_vectors(metadataCopy, v53, v54);
        v111 = objc_msgSend_contents(v108, v109, v110);
        v114 = objc_msgSend_vector(self, v112, v113);
        *error = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v115, @"CKErrorDomain", 12, @"Metadata contents vector %@ does not match local vector %@", v111, v114);
      }

      v31 = 0;
    }
  }

  return v31;
}

- (void)CKDescribePropertiesUsing:(id)using
{
  usingCopy = using;
  v17.receiver = self;
  v17.super_class = CKMultiValueMergeableDeltaRegister;
  [(CKMultiValueRegister *)&v17 CKDescribePropertiesUsing:usingCopy];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = objc_msgSend_timestampToContents(self, v5, v6);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_18851AF3C;
  v12[3] = &unk_1E70BBF80;
  v12[4] = &v13;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v7, v8, v12);

  v10 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v9, v14[3]);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v11, @"size", v10, 0);

  _Block_object_dispose(&v13, 8);
}

@end