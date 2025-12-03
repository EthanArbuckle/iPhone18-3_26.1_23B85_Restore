@interface PFCloudKitModelValidator
- (PFCloudKitModelValidator)initWithManagedObjectModel:(id)model configuration:(id)configuration mirroringDelegateOptions:(id)options;
- (uint64_t)_validateManagedObjectModel:(void *)model error:;
- (void)dealloc;
@end

@implementation PFCloudKitModelValidator

void __57__PFCloudKitModelValidator_enforceUniqueConstraintChecks__block_invoke()
{
  if (!dword_1ED4BEEC8 || (v0 = getprogname()) != 0 && !strncmp("routined", v0, 8uLL))
  {
    _MergedGlobals_63 = 1;
  }
}

- (void)dealloc
{
  self->_model = 0;

  self->_configurationName = 0;
  self->_options = 0;
  v3.receiver = self;
  v3.super_class = PFCloudKitModelValidator;
  [(PFCloudKitModelValidator *)&v3 dealloc];
}

- (PFCloudKitModelValidator)initWithManagedObjectModel:(id)model configuration:(id)configuration mirroringDelegateOptions:(id)options
{
  v10.receiver = self;
  v10.super_class = PFCloudKitModelValidator;
  v8 = [(PFCloudKitModelValidator *)&v10 init];
  if (v8)
  {
    v8->_model = model;
    v8->_configurationName = configuration;
    v8->_options = options;
    *&v8->_skipValueTransformerValidation = 0;
    v8->_supportsMergeableTransformable = 0;
  }

  return v8;
}

- (uint64_t)_validateManagedObjectModel:(void *)model error:
{
  v151 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_96;
  }

  if (a2)
  {
    v4 = result;
    v5 = [a2 entitiesForConfiguration:*(result + 16)];
    if (v5)
    {
      v6 = v5;
      if ([v5 count] || !objc_msgSend(*(v4 + 16), "length"))
      {
        v90 = v4;
        modelCopy = model;
        v82 = objc_autoreleasePoolPush();
        v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v6];
        v81 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v98 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v97 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v99 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v105 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v85 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v100 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v92 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v94 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v86 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v95 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v91 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v84 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v130 = 0u;
        v131 = 0u;
        v132 = 0u;
        v133 = 0u;
        obj = v7;
        v13 = v7;
        v14 = v11;
        v93 = v10;
        v96 = v11;
        v103 = v12;
        v101 = [v13 countByEnumeratingWithState:&v130 objects:buf count:16];
        if (v101)
        {
          v87 = *v131;
          v88 = v9;
          v89 = v8;
          do
          {
            v15 = 0;
            do
            {
              if (*v131 != v87)
              {
                objc_enumerationMutation(obj);
              }

              v104 = v15;
              v16 = *(*(&v130 + 1) + 8 * v15);
              v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
              v18 = objc_alloc_init(MEMORY[0x1E695DFA8]);
              if ([objc_msgSend(v16 "userInfo")])
              {
                v19 = MEMORY[0x1E696AEC0];
                name = [v16 name];
                v20 = v19;
                v12 = v103;
                [v86 addObject:{objc_msgSend(v20, "stringWithFormat:", @"%@: %@ cannot be applied to an entity type'", name, @"NSPersistentCloudKitContainerEncryptedAttributeKey"}];
              }

              attributesByName = [v16 attributesByName];
              v129[0] = MEMORY[0x1E69E9820];
              v129[1] = 3221225472;
              v129[2] = __51__PFCloudKitModelValidator_validateEntities_error___block_invoke;
              v129[3] = &unk_1E6EC14C0;
              v129[4] = v90;
              v129[5] = v10;
              v129[6] = v16;
              v129[7] = v99;
              v129[8] = v12;
              v129[9] = v100;
              v129[10] = v17;
              v129[11] = v8;
              v129[12] = v95;
              [attributesByName enumerateKeysAndObjectsUsingBlock:v129];
              relationshipsByName = [v16 relationshipsByName];
              v128[0] = MEMORY[0x1E69E9820];
              v128[1] = 3221225472;
              v128[2] = __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_2;
              v128[3] = &unk_1E6EC14E8;
              v128[4] = v98;
              v128[5] = v16;
              v128[6] = v9;
              v128[7] = v97;
              v128[8] = obj;
              v128[9] = v14;
              v128[10] = v92;
              v128[11] = v94;
              v128[12] = v91;
              [relationshipsByName enumerateKeysAndObjectsUsingBlock:v128];
              objc_opt_self();
              if (qword_1ED4BE8A0 != -1)
              {
                dispatch_once(&qword_1ED4BE8A0, &__block_literal_global_176);
              }

              if ((_MergedGlobals_63 & 1) == 0 && [objc_msgSend(v16 "uniquenessConstraints")])
              {
                uniquenessConstraints = [v16 uniquenessConstraints];
                v127[0] = MEMORY[0x1E69E9820];
                v127[1] = 3221225472;
                v127[2] = __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_3;
                v127[3] = &unk_1E6EC1538;
                v127[4] = v16;
                v127[5] = v84;
                [uniquenessConstraints enumerateObjectsUsingBlock:v127];
              }

              if (qword_1ED4BE890 != -1)
              {
                dispatch_once(&qword_1ED4BE890, &__block_literal_global_0);
              }

              v24 = [objc_msgSend(objc_msgSend(v16 "userInfo")];
              if (v24)
              {
                v25 = v24;
                if ([v24 count])
                {
                  [v17 addObjectsFromArray:v25];
                }
              }

              v125 = 0u;
              v126 = 0u;
              v123 = 0u;
              v124 = 0u;
              v26 = qword_1ED4BE898;
              v27 = [qword_1ED4BE898 countByEnumeratingWithState:&v123 objects:v146 count:16];
              if (v27)
              {
                v28 = v27;
                v29 = *v124;
                do
                {
                  for (i = 0; i != v28; ++i)
                  {
                    if (*v124 != v29)
                    {
                      objc_enumerationMutation(v26);
                    }

                    v31 = *(*(&v123 + 1) + 8 * i);
                    if ([v18 containsObject:v31] && (objc_msgSend(v17, "containsObject:", v31) & 1) == 0)
                    {
                      v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@:%@ - preservesValueInHistoryOnDeletion should be YES", objc_msgSend(v16, "name"), v31];
                      [v105 addObject:v32];
                    }
                  }

                  v28 = [v26 countByEnumeratingWithState:&v123 objects:v146 count:16];
                }

                while (v28);
              }

              v33 = objc_alloc(getCloudKitCKRecordZoneIDClass[0]());
              v34 = [v33 initWithZoneName:@"com.apple.coredata.cloudkit.zone" ownerName:getCloudKitCKCurrentUserDefaultName()];
              v35 = [PFCloudKitSchemaGenerator newRepresentativeRecordForStaticFieldsInEntity:v16 inZoneWithID:v34];
              if ([v35 size] > 0xAAE60)
              {
                v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@: Estimated size %lu bytes", objc_msgSend(v16, "name"), objc_msgSend(v35, "size")];
                [v85 addObject:v36];
              }

              v12 = v103;
              v15 = v104 + 1;
              v9 = v88;
              v8 = v89;
              v10 = v93;
              v14 = v96;
            }

            while (v104 + 1 != v101);
            v101 = [obj countByEnumeratingWithState:&v130 objects:buf count:16];
          }

          while (v101);
        }

        v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if ([v9 count])
        {
          [v9 sortUsingSelector:sel_localizedCaseInsensitiveCompare_];
          v38 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:{@"CloudKit integration requires that all relationships have an inverse, the following do not:"}];
          v122[0] = MEMORY[0x1E69E9820];
          v122[1] = 3221225472;
          v122[2] = __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_2_97;
          v122[3] = &unk_1E6EC1560;
          v122[4] = v38;
          [v9 enumerateObjectsUsingBlock:v122];
          [v37 addObject:v38];
        }

        v39 = v99;
        if ([v97 count])
        {
          [v97 sortUsingSelector:sel_localizedCaseInsensitiveCompare_];
          v40 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"CloudKit integration does not support ordered relationships. The following relationships are marked ordered:"];
          v121[0] = MEMORY[0x1E69E9820];
          v121[1] = 3221225472;
          v121[2] = __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_3_105;
          v121[3] = &unk_1E6EC1560;
          v121[4] = v40;
          [v97 enumerateObjectsUsingBlock:v121];
          [v37 addObject:v40];

          v39 = v99;
        }

        if ([v8 count])
        {
          [v8 sortUsingSelector:sel_localizedCaseInsensitiveCompare_];
          v41 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:{@"CloudKit integration requires that all attributes be optional, or have a default value set. The following attributes are marked non-optional but do not have a default value:"}];
          v120[0] = MEMORY[0x1E69E9820];
          v120[1] = 3221225472;
          v120[2] = __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_4_109;
          v120[3] = &unk_1E6EC1560;
          v120[4] = v41;
          [v8 enumerateObjectsUsingBlock:v120];
          [v37 addObject:v41];

          v39 = v99;
        }

        if ([v98 count])
        {
          [v98 sortUsingSelector:sel_localizedCaseInsensitiveCompare_];
          v42 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:{@"CloudKit integration requires that all relationships be optional, the following are not:"}];
          v119[0] = MEMORY[0x1E69E9820];
          v119[1] = 3221225472;
          v119[2] = __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_5;
          v119[3] = &unk_1E6EC1560;
          v119[4] = v42;
          [v98 enumerateObjectsUsingBlock:v119];
          [v37 addObject:v42];

          v39 = v99;
        }

        if ([v39 count])
        {
          [v39 sortUsingSelector:sel_localizedCaseInsensitiveCompare_];
          v43 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"CloudKit integration does not support all attribute types. The following entities have attributes of an unsupported type:"];
          v118[0] = MEMORY[0x1E69E9820];
          v118[1] = 3221225472;
          v118[2] = __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_6;
          v118[3] = &unk_1E6EC1560;
          v118[4] = v43;
          [v39 enumerateObjectsUsingBlock:v118];
          [v37 addObject:v43];
        }

        if ([v10 count])
        {
          [v10 sortUsingSelector:sel_localizedCaseInsensitiveCompare_];
          v44 = objc_alloc(MEMORY[0x1E696AD60]);
          v45 = objc_opt_class();
          v46 = NSStringFromClass(v45);
          v47 = [v44 initWithFormat:@"CloudKit integration requires that the value transformers for transformable attributes are available via +[%@ %@] and allow reverse transformation:", v46, NSStringFromSelector(sel_valueTransformerForName_)];
          v117[0] = MEMORY[0x1E69E9820];
          v117[1] = 3221225472;
          v117[2] = __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_7;
          v117[3] = &unk_1E6EC1560;
          v117[4] = v47;
          [v93 enumerateObjectsUsingBlock:v117];
          [v37 addObject:v47];
        }

        if ([v96 count])
        {
          [v96 sortUsingSelector:sel_localizedCaseInsensitiveCompare_];
          v48 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"CloudKit integration does not allow relationships to objects that aren't sync'd. The following relationships have destination entities that not in the specified configuration."];
          v116[0] = MEMORY[0x1E69E9820];
          v116[1] = 3221225472;
          v116[2] = __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_8;
          v116[3] = &unk_1E6EC1560;
          v116[4] = v48;
          [v96 enumerateObjectsUsingBlock:v116];
          [v37 addObject:v48];
        }

        if ([v105 count])
        {
          [v105 sortUsingSelector:sel_localizedCaseInsensitiveCompare_];
          v49 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"CloudKit integration requires that all entities tombstone %@ and %@ on delete if configured. The following entities are not properly configured:", @"ckRecordID", @"ckRecordSystemFields"];
          v115[0] = MEMORY[0x1E69E9820];
          v115[1] = 3221225472;
          v115[2] = __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_9;
          v115[3] = &unk_1E6EC1560;
          v115[4] = v49;
          [v105 enumerateObjectsUsingBlock:v115];
          [v37 addObject:v49];
        }

        if ([v85 count])
        {
          [v85 sortUsingSelector:sel_localizedCaseInsensitiveCompare_];
          700000 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"CloudKit integration requires that all entities can be materialized in a CKRecord of less than %lu bytes. The following entities cannot:", 700000];
          v114[0] = MEMORY[0x1E69E9820];
          v114[1] = 3221225472;
          v114[2] = __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_10;
          v114[3] = &unk_1E6EC1560;
          v114[4] = 700000;
          [v85 enumerateObjectsUsingBlock:v114];
          [v37 addObject:700000];
        }

        if ([v103 count])
        {
          [v103 sortUsingSelector:sel_localizedCaseInsensitiveCompare_];
          v51 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"The following attributes have invalid values for '%@':", @"NSCloudKitMirroringDelegateIgnoredPropertyKey"];
          v113[0] = MEMORY[0x1E69E9820];
          v113[1] = 3221225472;
          v113[2] = __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_11;
          v113[3] = &unk_1E6EC1560;
          v113[4] = v51;
          [v103 enumerateObjectsUsingBlock:v113];
          [v37 addObject:v51];
        }

        if ([v92 count])
        {
          [v92 sortUsingSelector:sel_localizedCaseInsensitiveCompare_];
          v52 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"CloudKit integration does not support ignored relationships. The following entities and relationships are marked ignored using '%@':", @"NSCloudKitMirroringDelegateIgnoredPropertyKey"];
          v112[0] = MEMORY[0x1E69E9820];
          v112[1] = 3221225472;
          v112[2] = __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_12;
          v112[3] = &unk_1E6EC1560;
          v112[4] = v52;
          [v92 enumerateObjectsUsingBlock:v112];
          [v37 addObject:v52];
        }

        if ([v86 count])
        {
          [v86 sortUsingSelector:sel_localizedCaseInsensitiveCompare_];
          v53 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"The following entities have invalid values:"];
          v111[0] = MEMORY[0x1E69E9820];
          v111[1] = 3221225472;
          v111[2] = __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_13;
          v111[3] = &unk_1E6EC1560;
          v111[4] = v53;
          [v86 enumerateObjectsUsingBlock:v111];
          [v37 addObject:v53];
        }

        v54 = v100;
        if ([v100 count])
        {
          [v100 sortUsingSelector:sel_localizedCaseInsensitiveCompare_];
          v55 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"The following attributes have invalid values:"];
          v110[0] = MEMORY[0x1E69E9820];
          v110[1] = 3221225472;
          v110[2] = __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_14;
          v110[3] = &unk_1E6EC1560;
          v110[4] = v55;
          [v100 enumerateObjectsUsingBlock:v110];
          [v37 addObject:v55];

          v54 = v100;
        }

        if ([v94 count])
        {
          [v94 sortUsingSelector:sel_localizedCaseInsensitiveCompare_];
          v56 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"CloudKit integration does not support encrypted relationships. The following entities and relationships are marked with '%@':", @"NSPersistentCloudKitContainerEncryptedAttributeKey"];
          v109[0] = MEMORY[0x1E69E9820];
          v109[1] = 3221225472;
          v109[2] = __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_15;
          v109[3] = &unk_1E6EC1560;
          v109[4] = v56;
          [v94 enumerateObjectsUsingBlock:v109];
          [v37 addObject:v56];

          v54 = v100;
        }

        if ([v95 count])
        {
          [v95 sortUsingSelector:sel_localizedCaseInsensitiveCompare_];
          v57 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"The following attributes use mergeable storage with CloudKit which is unsupported:"];
          v108[0] = MEMORY[0x1E69E9820];
          v108[1] = 3221225472;
          v108[2] = __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_16;
          v108[3] = &unk_1E6EC1560;
          v108[4] = v57;
          [v95 enumerateObjectsUsingBlock:v108];
          [v37 addObject:v57];

          v54 = v100;
        }

        if ([v91 count])
        {
          [v91 sortUsingSelector:sel_localizedCaseInsensitiveCompare_];
          v58 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"The following relationships are configured with unsupported delete rules:"];
          v107[0] = MEMORY[0x1E69E9820];
          v107[1] = 3221225472;
          v107[2] = __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_17;
          v107[3] = &unk_1E6EC1560;
          v107[4] = v58;
          [v91 enumerateObjectsUsingBlock:v107];
          [v37 addObject:v58];

          v54 = v100;
        }

        if ([v84 count])
        {
          [v84 sortUsingSelector:sel_localizedCaseInsensitiveCompare_];
          v59 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"CloudKit integration does not support unique constraints. The following entities are constrained:"];
          v106[0] = MEMORY[0x1E69E9820];
          v106[1] = 3221225472;
          v106[2] = __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_18;
          v106[3] = &unk_1E6EC1560;
          v106[4] = v59;
          [v84 enumerateObjectsUsingBlock:v106];
          [v37 addObject:v59];

          v54 = v100;
        }

        v60 = [v37 count];
        if (v60)
        {
          v61 = v82;
          model = modelCopy;
          if ([v37 count] < 2)
          {
            lastObject = [v37 lastObject];
          }

          else
          {
            lastObject = [v37 componentsJoinedByString:@"\n"];
          }

          v72 = *MEMORY[0x1E696A250];
          v144 = *MEMORY[0x1E696A588];
          v145 = lastObject;
          v71 = [MEMORY[0x1E696ABC0] errorWithDomain:v72 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v145, &v144, 1)}];

          if (!v71)
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *v140 = 136315394;
              v141 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitModelValidator.m";
              v142 = 1024;
              v143 = 563;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", v140, 0x12u);
            }

            v74 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v74, OS_LOG_TYPE_FAULT))
            {
              *v140 = 136315394;
              v141 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitModelValidator.m";
              v142 = 1024;
              v143 = 563;
              _os_log_fault_impl(&dword_18565F000, v74, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", v140, 0x12u);
            }

            v71 = 0;
          }
        }

        else
        {

          v71 = 0;
          v61 = v82;
          model = modelCopy;
        }

        v75 = v71;

        objc_autoreleasePoolPop(v61);
        v76 = v71;
        if (!v60)
        {
          result = 1;
          goto LABEL_96;
        }

        goto LABEL_87;
      }

      v66 = MEMORY[0x1E696ABC0];
      v67 = *MEMORY[0x1E696A250];
      v136 = *MEMORY[0x1E696A588];
      v137 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The configuration named '%@' does not contain any entities.", *(v4 + 16)];
      v68 = MEMORY[0x1E695DF20];
      v69 = &v137;
      v70 = &v136;
    }

    else
    {
      v66 = MEMORY[0x1E696ABC0];
      v67 = *MEMORY[0x1E696A250];
      v138 = *MEMORY[0x1E696A588];
      v139 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to find a configuration named '%@' in the specified managed object model.", *(v4 + 16)];
      v68 = MEMORY[0x1E695DF20];
      v69 = &v139;
      v70 = &v138;
    }
  }

  else
  {
    v63 = MEMORY[0x1E696AEC0];
    v64 = objc_opt_class();
    v65 = [v63 stringWithFormat:@"Cannot be used without an instance of %@.", NSStringFromClass(v64)];
    v66 = MEMORY[0x1E696ABC0];
    v67 = *MEMORY[0x1E696A250];
    v134 = *MEMORY[0x1E696A588];
    v135 = v65;
    v68 = MEMORY[0x1E695DF20];
    v69 = &v135;
    v70 = &v134;
  }

  v71 = [v66 errorWithDomain:v67 code:134060 userInfo:{objc_msgSend(v68, "dictionaryWithObjects:forKeys:count:", v69, v70, 1)}];
LABEL_87:
  if (v71)
  {
    if (model)
    {
      result = 0;
      *model = v71;
      goto LABEL_96;
    }

LABEL_94:
    result = 0;
    goto LABEL_96;
  }

  v77 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v148 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitModelValidator.m";
    v149 = 1024;
    v150 = 108;
    _os_log_error_impl(&dword_18565F000, v77, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v78 = _PFLogGetLogStream(17);
  result = os_log_type_enabled(v78, OS_LOG_TYPE_FAULT);
  if (result)
  {
    *buf = 136315394;
    v148 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitModelValidator.m";
    v149 = 1024;
    v150 = 108;
    _os_log_fault_impl(&dword_18565F000, v78, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_94;
  }

LABEL_96:
  v79 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __51__PFCloudKitModelValidator_validateEntities_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(*(a1 + 32) + 25) == 1)
  {
    result = [PFCloudKitSerializer isPrivateAttribute:a3];
    if (result)
    {
      return result;
    }
  }

  v7 = [a3 attributeType];
  if (v7 > 799)
  {
    if (v7 <= 1099)
    {
      if (v7 != 800 && v7 != 900 && v7 != 1000)
      {
        goto LABEL_32;
      }
    }

    else if (v7 > 1799)
    {
      if (v7 == 2100)
      {
        goto LABEL_34;
      }

      if (v7 != 1800)
      {
        goto LABEL_32;
      }

      if ([objc_msgSend(a3 "valueTransformerName")] && (*(*(a1 + 32) + 24) & 1) == 0)
      {
        if ([MEMORY[0x1E696B0A0] valueTransformerForName:{objc_msgSend(a3, "valueTransformerName")}])
        {
          if ([objc_opt_class() allowsReverseTransformation])
          {
            goto LABEL_34;
          }

          v8 = *(a1 + 40);
          v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ - Doesn't allow reverse transformation", objc_msgSend(*(a1 + 48), "name"), a2, v36];
        }

        else
        {
          v8 = *(a1 + 40);
          v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ - Cannot locate value transformer with name '%@'", objc_msgSend(*(a1 + 48), "name"), a2, objc_msgSend(a3, "valueTransformerName")];
        }

        v11 = v9;
        v12 = v8;
        goto LABEL_33;
      }
    }

    else if (v7 != 1100 && v7 != 1200)
    {
      goto LABEL_32;
    }
  }

  else if (v7 <= 399)
  {
    if (v7 != 100 && v7 != 200 && v7 != 300)
    {
      goto LABEL_32;
    }
  }

  else if (v7 > 599)
  {
    if (v7 != 600 && v7 != 700)
    {
      goto LABEL_32;
    }
  }

  else if (v7 != 400 && v7 != 500)
  {
LABEL_32:
    v10 = *(a1 + 56);
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ - Unsupported attribute type (%@)", objc_msgSend(*(a1 + 48), "name"), a2, +[NSAttributeDescription stringForAttributeType:](NSAttributeDescription, "stringForAttributeType:", v7)];
    v12 = v10;
LABEL_33:
    [v12 addObject:v11];
  }

LABEL_34:
  v13 = [objc_msgSend(a3 "userInfo")];
  if (v13)
  {
    v14 = v13;
    if ([v13 isNSNumber] & 1) != 0 || (objc_msgSend(v14, "isNSString"))
    {
      if (![v14 BOOLValue] || (objc_msgSend(a3, "isOptional") & 1) != 0)
      {
        goto LABEL_42;
      }

      v15 = *(a1 + 64);
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ - attribute is not optional", objc_msgSend(*(a1 + 48), "name"), a2, v36, v37, v38];
    }

    else
    {
      v15 = *(a1 + 64);
      v17 = MEMORY[0x1E696AEC0];
      v18 = [*(a1 + 48) name];
      v19 = [a3 name];
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v16 = [v17 stringWithFormat:@"%@: %@ - Value must be an instance of '%@' or '%@' that evalutes to YES or NO using '%@'", v18, v19, v21, v23, NSStringFromSelector(sel_BOOLValue)];
    }

    [v15 addObject:v16];
  }

LABEL_42:
  v24 = [objc_msgSend(a3 "userInfo")];
  if (v24)
  {
    v25 = v24;
    if (([v24 isNSNumber] & 1) == 0 && (objc_msgSend(v25, "isNSString") & 1) == 0)
    {
      v26 = *(a1 + 72);
      v27 = MEMORY[0x1E696AEC0];
      v28 = [*(a1 + 48) name];
      v29 = [a3 name];
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      [v26 addObject:{objc_msgSend(v27, "stringWithFormat:", @"%@: %@ - Value for %@ must be an instance of '%@' or '%@' that evalutes to YES or NO using '%@'", v28, v29, @"NSPersistentCloudKitContainerEncryptedAttributeKey", v31, v33, NSStringFromSelector(sel_BOOLValue))}];
    }

    if ([a3 allowsCloudEncryption])
    {
      [*(a1 + 72) addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@:%@ - Encryption value should be set via -[NSAttributeDescription allowsCloudEncryption], please remove usage of 'NSPersistentCloudKitContainerEncryptedAttributeKey'", objc_msgSend(*(a1 + 48), "name"), objc_msgSend(a3, "name"))}];
    }

    if ([*(*(a1 + 32) + 32) useDeviceToDeviceEncryption])
    {
      [*(a1 + 72) addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@:%@ - Partial encryption cannot be used with device-to-device encryption", objc_msgSend(*(a1 + 48), "name"), objc_msgSend(a3, "name"))}];
    }
  }

  if ([*(*(a1 + 32) + 32) useDeviceToDeviceEncryption] && objc_msgSend(a3, "allowsCloudEncryption"))
  {
    [*(a1 + 72) addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@:%@ - Device-to-Device encryption cannot be used with partial encryption", objc_msgSend(*(a1 + 48), "name"), objc_msgSend(a3, "name"))}];
  }

  if ([a3 preservesValueInHistoryOnDeletion])
  {
    [*(a1 + 80) addObject:a2];
  }

  if (([a3 isOptional] & 1) == 0 && !objc_msgSend(a3, "defaultValue"))
  {
    [*(a1 + 88) addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@: %@", objc_msgSend(*(a1 + 48), "name"), objc_msgSend(a3, "name"))}];
  }

  result = [a3 usesMergeableStorage];
  if (result && (*(*(a1 + 32) + 40) & 1) == 0)
  {
    v34 = *(a1 + 96);
    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Attributes that use mergeable storage (%@: %@) are unsupported in CloudKit. Please file a radar to Core Data to request support.", objc_msgSend(*(a1 + 48), "name"), objc_msgSend(a3, "name")];

    return [v34 addObject:v35];
  }

  return result;
}

uint64_t __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  if (([a3 isOptional] & 1) == 0)
  {
    [*(a1 + 32) addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@: %@", objc_msgSend(*(a1 + 40), "name"), a2)}];
  }

  if (![a3 inverseRelationship])
  {
    [*(a1 + 48) addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@: %@", objc_msgSend(*(a1 + 40), "name"), a2)}];
  }

  if ([a3 isOrdered])
  {
    [*(a1 + 56) addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@: %@", objc_msgSend(*(a1 + 40), "name"), a2)}];
  }

  if ([a3 destinationEntity] && (objc_msgSend(*(a1 + 64), "containsObject:", objc_msgSend(a3, "destinationEntity")) & 1) == 0)
  {
    [*(a1 + 72) addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@: %@ - %@", objc_msgSend(*(a1 + 40), "name"), a2, objc_msgSend(objc_msgSend(a3, "destinationEntity"), "name"))}];
  }

  if ([objc_msgSend(objc_msgSend(a3 "userInfo")])
  {
    [*(a1 + 80) addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@:%@", objc_msgSend(*(a1 + 40), "name"), objc_msgSend(a3, "name"))}];
  }

  if ([objc_msgSend(a3 "userInfo")])
  {
    [*(a1 + 88) addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@:%@", objc_msgSend(*(a1 + 40), "name"), objc_msgSend(a3, "name"))}];
  }

  result = [a3 deleteRule];
  if (result == 3)
  {
    v7 = *(a1 + 96);
    v8 = MEMORY[0x1E696AEC0];
    v9 = [*(a1 + 40) name];
    v10 = [a3 name];
    v11 = [a3 deleteRule];
    objc_opt_self();
    if (v11 > 3)
    {
      v12 = 0;
    }

    else
    {
      v12 = off_1E6EC1580[v11];
    }

    v13 = [v8 stringWithFormat:@"%@:%@ - %@", v9, v10, v12];

    return [v7 addObject:v13];
  }

  return result;
}

void __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_4;
  v5[3] = &unk_1E6EC1510;
  v5[4] = *(a1 + 32);
  v5[5] = v4;
  [a2 enumerateObjectsUsingBlock:v5];
  [*(a1 + 40) addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@: %@", objc_msgSend(*(a1 + 32), "name"), v4)}];
}

void __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v17 = *MEMORY[0x1E69E9840];
  if (([a2 isNSString] & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        v9 = [*(a1 + 32) name];
        v10 = [*(a1 + 32) uniquenessConstraints];
        v13 = 138412546;
        v14 = v9;
        v15 = 2112;
        v16 = v10;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: PFCloudKitModelValidator was handed an entity with unique constraints that aren't attributes or strings: %@ - %@\n", &v13, 0x16u);
      }

      v7 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v11 = [*(a1 + 32) name];
        v12 = [*(a1 + 32) uniquenessConstraints];
        v13 = 138412546;
        v14 = v11;
        v15 = 2112;
        v16 = v12;
        _os_log_fault_impl(&dword_18565F000, v7, OS_LOG_TYPE_FAULT, "CoreData: PFCloudKitModelValidator was handed an entity with unique constraints that aren't attributes or strings: %@ - %@", &v13, 0x16u);
      }

      goto LABEL_14;
    }

    v2 = [v2 name];
  }

  if (!v2)
  {
LABEL_14:
    v8 = *MEMORY[0x1E69E9840];
    return;
  }

  if ([*(a1 + 40) length])
  {
    [*(a1 + 40) appendString:{@", "}];
  }

  v4 = *(a1 + 40);
  v5 = *MEMORY[0x1E69E9840];

  [v4 appendString:v2];
}

void __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_76()
{
  v2[2] = *MEMORY[0x1E69E9840];
  v0 = objc_autoreleasePoolPush();
  v2[0] = @"ckRecordID";
  v2[1] = @"ckRecordSystemFields";
  qword_1ED4BE898 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:2];
  objc_autoreleasePoolPop(v0);
  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_2_97(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) appendString:@"\n"];
  v4 = *(a1 + 32);

  return [v4 appendString:a2];
}

uint64_t __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_3_105(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) appendString:@"\n"];
  v4 = *(a1 + 32);

  return [v4 appendString:a2];
}

uint64_t __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_4_109(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) appendString:@"\n"];
  v4 = *(a1 + 32);

  return [v4 appendString:a2];
}

uint64_t __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_5(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) appendString:@"\n"];
  v4 = *(a1 + 32);

  return [v4 appendString:a2];
}

uint64_t __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_6(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) appendString:@"\n"];
  v4 = *(a1 + 32);

  return [v4 appendString:a2];
}

uint64_t __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_7(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) appendString:@"\n"];
  v4 = *(a1 + 32);

  return [v4 appendString:a2];
}

uint64_t __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_8(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) appendString:@"\n"];
  v4 = *(a1 + 32);

  return [v4 appendString:a2];
}

uint64_t __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_9(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) appendString:@"\n"];
  v4 = *(a1 + 32);

  return [v4 appendString:a2];
}

uint64_t __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_10(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) appendString:@"\n"];
  v4 = *(a1 + 32);

  return [v4 appendString:a2];
}

uint64_t __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_11(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) appendString:@"\n"];
  v4 = *(a1 + 32);

  return [v4 appendString:a2];
}

uint64_t __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_12(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) appendString:@"\n"];
  v4 = *(a1 + 32);

  return [v4 appendString:a2];
}

uint64_t __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_13(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) appendString:@"\n"];
  v4 = *(a1 + 32);

  return [v4 appendString:a2];
}

uint64_t __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_14(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) appendString:@"\n"];
  v4 = *(a1 + 32);

  return [v4 appendString:a2];
}

uint64_t __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_15(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) appendString:@"\n"];
  v4 = *(a1 + 32);

  return [v4 appendString:a2];
}

uint64_t __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_16(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) appendString:@"\n"];
  v4 = *(a1 + 32);

  return [v4 appendString:a2];
}

uint64_t __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_17(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) appendString:@"\n"];
  v4 = *(a1 + 32);

  return [v4 appendString:a2];
}

uint64_t __51__PFCloudKitModelValidator_validateEntities_error___block_invoke_18(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) appendString:@"\n"];
  v4 = *(a1 + 32);

  return [v4 appendString:a2];
}

@end