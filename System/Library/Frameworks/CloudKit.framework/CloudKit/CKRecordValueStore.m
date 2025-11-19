@interface CKRecordValueStore
+ (void)initialize;
- (BOOL)containsValueOfClasses:(id)a3 options:(unint64_t)a4 passingTest:(id)a5;
- (CKRecordValueStore)initWithCoder:(id)a3;
- (CKRecordValueStore)initWithRecord:(id)a3;
- (NSMutableDictionary)originalValues;
- (NSMutableDictionary)values;
- (NSMutableSet)changedKeysSet;
- (id)allKeys;
- (id)allRawValues;
- (id)changedKeys;
- (id)copyWithZone:(_NSZone *)a3;
- (id)objectForKeyedSubscript:(id)a3;
- (id)rawValueForKey:(id)a3;
- (id)recordID;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateKeysAndValuesOfClasses:(id)a3 options:(unint64_t)a4 usingBlock:(id)a5;
- (void)resetChangedKeys;
- (void)setChangedKeysSet:(id)a3;
- (void)setNilValueForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKeyedSubscript:(id)a4;
- (void)setObjectNoValidate:(id)a3 forKey:(id)a4;
- (void)setOriginalValues:(id)a3;
- (void)setRawValue:(id)a3 forKey:(id)a4;
- (void)setValues:(id)a3;
@end

@implementation CKRecordValueStore

+ (void)initialize
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v7[0] = objc_opt_class();
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v4, v7, 1);
  sub_1886CEE50(a1, v3, v5, 0, 1);

  v6 = *MEMORY[0x1E69E9840];
}

- (id)allKeys
{
  v2 = self;
  objc_sync_enter(v2);
  v5 = objc_msgSend_values(v2, v3, v4);
  v8 = objc_msgSend_allKeys(v5, v6, v7);

  objc_sync_exit(v2);

  return v8;
}

- (id)recordID
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_record);
    objc_msgSend_recordID(WeakRetained, v4, v5);
  }

  else
  {
    WeakRetained = 0;
    objc_msgSend_recordID(0, a2, v2);
  }
  v6 = ;

  return v6;
}

- (NSMutableDictionary)originalValues
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_originalValues;
  objc_sync_exit(v2);

  return v3;
}

- (NSMutableSet)changedKeysSet
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_changedKeysSet;
  objc_sync_exit(v2);

  return v3;
}

- (NSMutableDictionary)values
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_values;
  objc_sync_exit(v2);

  return v3;
}

- (CKRecordValueStore)initWithRecord:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CKRecordValueStore;
  v5 = [(CKRecordValueStore *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_record, v4);
    v7 = objc_opt_new();
    values = v6->_values;
    v6->_values = v7;

    v9 = objc_opt_new();
    originalValues = v6->_originalValues;
    v6->_originalValues = v9;

    v11 = objc_opt_new();
    changedKeysSet = v6->_changedKeysSet;
    v6->_changedKeysSet = v11;

    v6->_trackChanges = 1;
  }

  return v6;
}

- (void)setValues:(id)a3
{
  v11 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v6 = objc_msgSend_CKMapValues_(v11, v5, &unk_1EFA2ECE8);
  v9 = objc_msgSend_mutableCopy(v6, v7, v8);
  values = v4->_values;
  v4->_values = v9;

  objc_sync_exit(v4);
}

- (void)setOriginalValues:(id)a3
{
  v11 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v6 = objc_msgSend_CKMapValues_(v11, v5, &unk_1EFA2ED08);
  v9 = objc_msgSend_mutableCopy(v6, v7, v8);
  originalValues = v4->_originalValues;
  v4->_originalValues = v9;

  objc_sync_exit(v4);
}

- (void)setChangedKeysSet:(id)a3
{
  v12 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_CKDeepCopy(v12, v5, v6);
  v10 = objc_msgSend_mutableCopy(v7, v8, v9);
  changedKeysSet = v4->_changedKeysSet;
  v4->_changedKeysSet = v10;

  objc_sync_exit(v4);
}

- (id)objectForKeyedSubscript:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v8 = objc_msgSend_values(v5, v6, v7);
  v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, v4);

  objc_sync_exit(v5);

  return v10;
}

- (id)rawValueForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v8 = objc_msgSend_values(v5, v6, v7);
  v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, v4);

  objc_sync_exit(v5);

  return v10;
}

- (void)setRawValue:(id)a3 forKey:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = sub_188408790(v13);
  v11 = objc_msgSend_values(v7, v9, v10);
  objc_msgSend_setObject_forKeyedSubscript_(v11, v12, v8, v6);

  objc_sync_exit(v7);
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v166 = a3;
  v7 = v6;
  v8 = v7;
  if (self)
  {
    v168 = 0;
    *buf = 0;
    v167 = 0;
    v9 = CKProcessIndexedArrayKey(v7, &v167, buf, &v168);
    v10 = v167;
    if (v9)
    {
      v96 = [CKException alloc];
      v97 = *MEMORY[0x1E695D940];
      objc_msgSend_localizedDescription(v9, v98, v99);
    }

    else
    {
      v11 = v10;
      v12 = v8;
      if (v10)
      {
        if ((*buf & 0x8000000000000000) != 0 && (*buf != -1 || v168))
        {
          v157 = [CKException alloc];
          v158 = *MEMORY[0x1E695D940];
          v160 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v159, @"Negative indexed list keys (%@) can only be appends", v8);
          v144 = objc_msgSend_initWithName_format_(v157, v161, v158, @"%@", v160);
          v162 = v144;

LABEL_70:
          objc_exception_throw(v144);
        }

        v12 = v10;
      }

      v13 = sub_1884080E4();
      v15 = objc_msgSend_containsObject_(v13, v14, v12);

      if (v15)
      {
        v96 = [CKException alloc];
        v97 = *MEMORY[0x1E695D940];
        v101 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v100, @"%@ is a reserved key name", v12);
LABEL_61:
        v106 = v101;
        v107 = objc_msgSend_initWithName_format_(v96, v102, v97, @"%@", v101);
        goto LABEL_69;
      }

      v16 = CKValidateKeyName(v12);
      if (!v16)
      {

        v17 = v8;
        WeakRetained = objc_loadWeakRetained(&self->_record);
        v23 = objc_msgSend_valueStore(WeakRetained, v19, v20);
        if (v23 == self)
        {
          objc_msgSend_encryptedValueStore(WeakRetained, v21, v22);
        }

        else
        {
          objc_msgSend_valueStore(WeakRetained, v21, v22);
        }
        v24 = ;

        v27 = objc_msgSend_allKeys(v24, v25, v26);
        v29 = objc_msgSend_containsObject_(v27, v28, v17);

        if (v29)
        {
          v108 = [CKException alloc];
          v110 = objc_msgSend_initWithName_format_(v108, v109, *MEMORY[0x1E695D940], @"You cannot set the same key %@ on both CKRecord and [CKRecord encryptedValues]", v17);
          goto LABEL_80;
        }

        v30 = v166;
        v31 = v17;
        v34 = objc_msgSend_recordID(self, v32, v33);
        isEncrypted = objc_msgSend_isEncrypted(self, v35, v36);
        if (v30 && (CKValueCanBeSetOnRecord(v30) & 1) == 0)
        {
          v130 = [CKException alloc];
          v131 = *MEMORY[0x1E695D940];
          v132 = objc_opt_class();
          v133 = NSStringFromClass(v132);
          v134 = objc_opt_class();
          v135 = NSStringFromClass(v134);
          v137 = objc_msgSend_initWithName_format_(v130, v136, v131, @"Objects of class %@ cannot be set on %@", v133, v135);
          v138 = v137;

          objc_exception_throw(v137);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v111 = [CKException alloc];
          v112 = *MEMORY[0x1E695D940];
          v165 = objc_opt_class();
          v110 = objc_msgSend_initWithName_format_(v111, v113, v112, @"Use %@ for storing record IDs on records", v165);
          goto LABEL_80;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v114 = [CKException alloc];
          v110 = objc_msgSend_initWithName_format_(v114, v115, *MEMORY[0x1E695D940], @"Use [CKRecord encryptedValues] for storing encrypted values on records");
          goto LABEL_80;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_24;
        }

        v38 = v30;
        objc_msgSend_coordinate(v38, v39, v40);
        if (v43 < -90.0 || (objc_msgSend_coordinate(v38, v41, v42), v46 > 90.0))
        {
          v116 = [CKException alloc];
          v117 = *MEMORY[0x1E695D940];
          v118 = objc_opt_class();
          v106 = NSStringFromClass(v118);
          objc_msgSend_coordinate(v38, v119, v120);
          v107 = objc_msgSend_initWithName_format_(v116, v121, v117, @"Invalid latitude value in %@: %f", v106, v122);
        }

        else
        {
          objc_msgSend_coordinate(v38, v44, v45);
          if (v49 >= -180.0)
          {
            objc_msgSend_coordinate(v38, v47, v48);
            if (v50 <= 180.0)
            {

LABEL_24:
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                CKValidateRecordArrayValue(v30);
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
LABEL_30:
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v61 = v30;
                  v62 = v61;
                  if (*objc_msgSend_objCType(v62, v63, v64) == 81 && objc_msgSend_unsignedLongLongValue(v61, v65, v66) < 0)
                  {
                    if (ck_log_initialization_predicate != -1)
                    {
                      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
                    }

                    v67 = ck_log_facility_ck;
                    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&dword_1883EA000, v67, OS_LOG_TYPE_ERROR, "Attempting to set an unsigned long long value with the high order bit set.  This is not supported by CloudKit", buf, 2u);
                    }

                    if (byte_1EA90C538 == 1 && CKCurrentProcessLinkCheck5dbf91c3fd1d871f0bcfe60afeb451e3e708d350())
                    {
                      v163 = [CKException alloc];
                      v110 = objc_msgSend_initWithName_format_(v163, v164, *MEMORY[0x1E695D940], @"CloudKit does not support unsigned long long values with the high order bit set.");
                      goto LABEL_80;
                    }

                    if (ck_log_initialization_predicate != -1)
                    {
                      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
                    }

                    v68 = ck_log_facility_ck;
                    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&dword_1883EA000, v68, OS_LOG_TYPE_ERROR, "Allowing this for backwards compatibility; you will receive this as a signed long long when reading this value from the server", buf, 2u);
                    }
                  }
                }

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
LABEL_52:

                  goto LABEL_53;
                }

                v69 = v30;
                v72 = objc_msgSend_valueID(v69, v70, v71);
                v75 = v72;
                if (!v72)
                {
LABEL_51:

                  goto LABEL_52;
                }

                v76 = objc_msgSend_recordID(v72, v73, v74);

                if (v76)
                {
                  v79 = objc_msgSend_recordID(v75, v77, v78);
                  isEqual = objc_msgSend_isEqual_(v79, v80, v34);

                  if (isEqual)
                  {
                    v84 = objc_msgSend_key(v75, v82, v83);

                    if (v84)
                    {
                      v87 = objc_msgSend_key(v75, v85, v86);
                      v89 = objc_msgSend_isEqual_(v87, v88, v31);

                      if (v89)
                      {
                        if (isEncrypted == objc_msgSend_isEncrypted(v75, v90, v91))
                        {
                          goto LABEL_51;
                        }

                        v154 = [CKException alloc];
                        v156 = *MEMORY[0x1E695D940];
                        if (isEncrypted)
                        {
                          v110 = objc_msgSend_initWithName_format_(v154, v155, v156, @"Trying to set unencrypted mergeable value on an encrypted field '%@': %@", v31, v69);
                        }

                        else
                        {
                          v110 = objc_msgSend_initWithName_format_(v154, v155, v156, @"Trying to set encrypted mergeable value on an unencrypted field '%@': %@", v31, v69);
                        }
                      }

                      else
                      {
                        v152 = [CKException alloc];
                        v110 = objc_msgSend_initWithName_format_(v152, v153, *MEMORY[0x1E695D940], @"Mergeable value ID has the wrong key, expected '%@': %@", v31, v75);
                      }
                    }

                    else
                    {
                      v150 = [CKException alloc];
                      v110 = objc_msgSend_initWithName_format_(v150, v151, *MEMORY[0x1E695D940], @"Mergeable value ID has no key, expected '%@': %@", v31, v75);
                    }
                  }

                  else
                  {
                    v148 = [CKException alloc];
                    v110 = objc_msgSend_initWithName_format_(v148, v149, *MEMORY[0x1E695D940], @"Mergeable value for key '%@' has the wrong record ID. valueID=%@ self=%@", v31, v75, v34);
                  }
                }

                else
                {
                  v146 = [CKException alloc];
                  v110 = objc_msgSend_initWithName_format_(v146, v147, *MEMORY[0x1E695D940], @"Mergeable value ID for key '%@' has no record ID: %@", v31, v75);
                }

LABEL_80:
                objc_exception_throw(v110);
              }

              v51 = v30;
              v54 = objc_msgSend_recordID(v51, v52, v53);
              if (!v54 || (v57 = v54, objc_msgSend_recordID(v51, v55, v56), v58 = objc_claimAutoreleasedReturnValue(), v60 = objc_msgSend_isEqual_(v58, v59, v34), v58, v57, (v60 & 1) != 0))
              {

                goto LABEL_30;
              }

              v139 = [CKException alloc];
              v140 = *MEMORY[0x1E695D940];
              v106 = objc_msgSend_recordID(v51, v141, v142);
              v107 = objc_msgSend_initWithName_format_(v139, v143, v140, @"You cannot set the same asset on multiple records. Asset %@ is already associated with record %@", v51, v106);
              goto LABEL_69;
            }
          }

          v123 = [CKException alloc];
          v124 = *MEMORY[0x1E695D940];
          v125 = objc_opt_class();
          v106 = NSStringFromClass(v125);
          objc_msgSend_coordinate(v38, v126, v127);
          v107 = objc_msgSend_initWithName_format_(v123, v128, v124, @"Invalid longitude value in %@: %f", v106, v129);
        }

LABEL_69:
        v144 = v107;
        v145 = v107;

        goto LABEL_70;
      }

      v103 = v16;
      v96 = [CKException alloc];
      v97 = *MEMORY[0x1E695D940];
      objc_msgSend_localizedDescription(v103, v104, v105);
    }
    v101 = ;
    goto LABEL_61;
  }

  v93 = v8;
  v94 = v166;
  v95 = v93;
LABEL_53:

  objc_msgSend__setObject_forKey_(self, v92, v166, v8);
}

- (void)setObject:(id)a3 forKeyedSubscript:(id)a4
{
  if (a4)
  {
    objc_msgSend_setObject_forKey_(self, a2, a3);
  }
}

- (void)setObjectNoValidate:(id)a3 forKey:(id)a4
{
  v33 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  sub_18857F044(v7, v33, v6);
  v10 = objc_msgSend_values(v7, v8, v9);
  v13 = objc_msgSend_originalValues(v7, v11, v12);
  v15 = v13;
  if (v7)
  {
    trackChanges = v7->_trackChanges;
    if (v6 && v7->_trackChanges)
    {
      v17 = objc_msgSend_objectForKeyedSubscript_(v13, v14, v6);

      if (!v17)
      {
        v19 = objc_msgSend_objectForKeyedSubscript_(v10, v18, v6);

        if (v19)
        {
          objc_msgSend_objectForKeyedSubscript_(v10, v20, v6);
        }

        else
        {
          objc_msgSend_null(MEMORY[0x1E695DFB0], v20, v21);
        }
        v22 = ;
        objc_msgSend_setObject_forKeyedSubscript_(v15, v23, v22, v6);
      }

      trackChanges = 1;
    }
  }

  else
  {
    trackChanges = 0;
  }

  v24 = sub_188408790(v33);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v25, v24, v6);

  if (trackChanges)
  {
    v28 = objc_msgSend_changedKeysSet(v7, v26, v27);
    v31 = objc_msgSend_copy(v6, v29, v30);
    objc_msgSend_addObject_(v28, v32, v31);
  }

  objc_sync_exit(v7);
}

- (void)setNilValueForKey:(id)a3
{
  v24 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_values(v4, v5, v6);
  v11 = objc_msgSend_originalValues(v4, v8, v9);
  if (v4 && v4->_trackChanges)
  {
    v12 = objc_msgSend_objectForKeyedSubscript_(v7, v10, v24);
    if (v12)
    {
      v13 = objc_msgSend_objectForKeyedSubscript_(v11, v10, v24);

      if (!v13)
      {
        v14 = objc_msgSend_objectForKeyedSubscript_(v7, v10, v24);
        objc_msgSend_setObject_forKeyedSubscript_(v11, v15, v14, v24);
      }
    }

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  objc_msgSend_removeObjectForKey_(v7, v10, v24);
  if (v16)
  {
    v19 = objc_msgSend_changedKeysSet(v4, v17, v18);
    v22 = objc_msgSend_copy(v24, v20, v21);
    objc_msgSend_addObject_(v19, v23, v22);
  }

  objc_sync_exit(v4);
}

- (id)allRawValues
{
  v2 = self;
  objc_sync_enter(v2);
  v5 = objc_msgSend_values(v2, v3, v4);
  v8 = objc_msgSend_allValues(v5, v6, v7);

  objc_sync_exit(v2);

  return v8;
}

- (id)changedKeys
{
  v2 = self;
  objc_sync_enter(v2);
  v5 = objc_msgSend_changedKeysSet(v2, v3, v4);
  v8 = objc_msgSend_allObjects(v5, v6, v7);

  objc_sync_exit(v2);

  return v8;
}

- (void)resetChangedKeys
{
  obj = self;
  objc_sync_enter(obj);
  v4 = objc_msgSend_changedKeysSet(obj, v2, v3);
  objc_msgSend_removeAllObjects(v4, v5, v6);

  v9 = objc_msgSend_originalValues(obj, v7, v8);
  objc_msgSend_removeAllObjects(v9, v10, v11);

  objc_sync_exit(obj);
}

- (BOOL)containsValueOfClasses:(id)a3 options:(unint64_t)a4 passingTest:(id)a5
{
  v6 = a4;
  v76 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = self;
  objc_sync_enter(v10);
  v51 = v10;
  if (v6)
  {
    objc_msgSend_changedKeys(v10, v11, v12);
  }

  else
  {
    objc_msgSend_allKeys(v10, v11, v12);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v13 = v69 = 0u;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v68, v75, 16);
  if (!v15)
  {
    v47 = 0;
    goto LABEL_61;
  }

  v55 = *v69;
  v50 = v8;
  v52 = v13;
  do
  {
    v54 = v15;
    for (i = 0; i != v54; ++i)
    {
      if (*v69 != v55)
      {
        objc_enumerationMutation(v13);
      }

      v19 = *(*(&v68 + 1) + 8 * i);
      v20 = objc_msgSend_values(v10, v16, v17);
      v22 = objc_msgSend_objectForKeyedSubscript_(v20, v21, v19);

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;
      if (v24)
      {
        v27 = v24;
        v28 = objc_msgSend_firstObject(v24, v25, v26);
        if (v28)
        {
          v53 = v28;
          if (v8)
          {
            v29 = objc_opt_class();
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v30 = v8;
            v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v60, v73, 16);
            if (v33)
            {
              v34 = *v61;
              while (2)
              {
                for (j = 0; j != v33; ++j)
                {
                  if (*v61 != v34)
                  {
                    objc_enumerationMutation(v30);
                  }

                  if (objc_msgSend_isSubclassOfClass_(v29, v32, *(*(&v60 + 1) + 8 * j)))
                  {

                    v8 = v50;
                    v10 = v51;
                    v13 = v52;
                    goto LABEL_35;
                  }
                }

                v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v32, &v60, v73, 16);
                if (v33)
                {
                  continue;
                }

                break;
              }

              v10 = v51;
LABEL_44:
              v8 = v50;
            }

            v13 = v52;
          }

          else
          {
LABEL_35:
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v30 = v27;
            v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v42, &v56, v72, 16);
            if (v43)
            {
              v44 = *v57;
              while (2)
              {
                for (k = 0; k != v43; ++k)
                {
                  if (*v57 != v44)
                  {
                    objc_enumerationMutation(v30);
                  }

                  if (v9[2](v9, v19, *(*(&v56 + 1) + 8 * k)))
                  {

                    v8 = v50;
                    v13 = v52;

                    goto LABEL_59;
                  }
                }

                v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v46, &v56, v72, 16);
                if (v43)
                {
                  continue;
                }

                break;
              }

              v27 = v30;
              goto LABEL_44;
            }

            v27 = v30;
          }

          v28 = v53;
        }

LABEL_52:
        goto LABEL_53;
      }

      if (v8)
      {
        v36 = objc_opt_class();
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v27 = v8;
        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v37, &v64, v74, 16);
        if (v39)
        {
          v40 = *v65;
          while (2)
          {
            for (m = 0; m != v39; ++m)
            {
              if (*v65 != v40)
              {
                objc_enumerationMutation(v27);
              }

              if (objc_msgSend_isSubclassOfClass_(v36, v38, *(*(&v64 + 1) + 8 * m)))
              {

                v8 = v50;
                v10 = v51;
                v13 = v52;
                goto LABEL_47;
              }
            }

            v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v38, &v64, v74, 16);
            if (v39)
            {
              continue;
            }

            break;
          }

          v8 = v50;
          v10 = v51;
          v13 = v52;
        }

        else
        {
          v10 = v51;
        }

        goto LABEL_52;
      }

LABEL_47:
      if ((v9)[2](v9, v19, v22))
      {
LABEL_59:

        v47 = 1;
        goto LABEL_61;
      }

LABEL_53:
    }

    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v68, v75, 16);
    v47 = 0;
  }

  while (v15);
LABEL_61:

  objc_sync_exit(v10);
  v48 = *MEMORY[0x1E69E9840];
  return v47;
}

- (void)enumerateKeysAndValuesOfClasses:(id)a3 options:(unint64_t)a4 usingBlock:(id)a5
{
  v8 = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_18857FB98;
  v11[3] = &unk_1E70BDF10;
  v12 = v8;
  v9 = v8;
  objc_msgSend_containsValueOfClasses_options_passingTest_(self, v10, a3, a4, v11);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = self;
  objc_sync_enter(v3);
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(&v3->_record);
  }

  else
  {
    WeakRetained = 0;
  }

  v5 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initWithRecord_(v5, v6, WeakRetained);
  v10 = objc_msgSend_values(v3, v8, v9);
  objc_msgSend_setValues_(v7, v11, v10);

  v14 = objc_msgSend_originalValues(v3, v12, v13);
  objc_msgSend_setOriginalValues_(v7, v15, v14);

  v18 = objc_msgSend_changedKeysSet(v3, v16, v17);
  v21 = objc_msgSend_CKDeepCopy(v18, v19, v20);
  v24 = objc_msgSend_mutableCopy(v21, v22, v23);
  v25 = *(v7 + 32);
  *(v7 + 32) = v24;

  if (v3)
  {
    trackChanges = v3->_trackChanges;
  }

  else
  {
    trackChanges = 0;
  }

  *(v7 + 8) = trackChanges;

  objc_sync_exit(v3);
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v18 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  objc_sync_enter(v5);
  v8 = objc_msgSend_values(v5, v6, v7);
  objc_msgSend_encodeObject_forKey_(v18, v9, v8, @"RecordValues");

  v12 = objc_msgSend_originalValues(v5, v10, v11);
  objc_msgSend_encodeObject_forKey_(v18, v13, v12, @"OriginalValues");

  v16 = objc_msgSend_changedKeysSet(v5, v14, v15);
  objc_msgSend_encodeObject_forKey_(v18, v17, v16, @"ChangedKeys");

  objc_sync_exit(v5);
  objc_autoreleasePoolPop(v4);
}

- (CKRecordValueStore)initWithCoder:(id)a3
{
  v47[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v45.receiver = self;
  v45.super_class = CKRecordValueStore;
  v5 = [(CKRecordValueStore *)&v45 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = CKAcceptableValueClasses();
    v47[0] = objc_opt_class();
    v47[1] = objc_opt_class();
    v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v47, 2);
    v11 = objc_msgSend_setByAddingObjectsFromArray_(v7, v10, v9);
    v13 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v12, v11, @"RecordValues");
    v16 = objc_msgSend_mutableCopy(v13, v14, v15);
    values = v5->_values;
    v5->_values = v16;

    v18 = CKAcceptableValueClasses();
    v46[0] = objc_opt_class();
    v46[1] = objc_opt_class();
    v46[2] = objc_opt_class();
    v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v19, v46, 3);
    v22 = objc_msgSend_setByAddingObjectsFromArray_(v18, v21, v20);
    v24 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v23, v22, @"OriginalValues");
    v27 = objc_msgSend_mutableCopy(v24, v25, v26);
    originalValues = v5->_originalValues;
    v5->_originalValues = v27;

    v29 = MEMORY[0x1E695DFD8];
    v30 = objc_opt_class();
    v31 = objc_opt_class();
    v33 = objc_msgSend_setWithObjects_(v29, v32, v30, v31, 0);
    v35 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v34, v33, @"ChangedKeys");
    changedKeysSet = v5->_changedKeysSet;
    v5->_changedKeysSet = v35;

    if (!v5->_values)
    {
      v37 = objc_opt_new();
      v38 = v5->_values;
      v5->_values = v37;
    }

    if (!v5->_originalValues)
    {
      v39 = objc_opt_new();
      v40 = v5->_originalValues;
      v5->_originalValues = v39;
    }

    if (!v5->_changedKeysSet)
    {
      v41 = objc_opt_new();
      v42 = v5->_changedKeysSet;
      v5->_changedKeysSet = v41;
    }

    v5->_trackChanges = 1;
    objc_autoreleasePoolPop(v6);
  }

  v43 = *MEMORY[0x1E69E9840];
  return v5;
}

@end