@interface CKRecordValueStore
+ (void)initialize;
- (BOOL)containsValueOfClasses:(id)classes options:(unint64_t)options passingTest:(id)test;
- (CKRecordValueStore)initWithCoder:(id)coder;
- (CKRecordValueStore)initWithRecord:(id)record;
- (NSMutableDictionary)originalValues;
- (NSMutableDictionary)values;
- (NSMutableSet)changedKeysSet;
- (id)allKeys;
- (id)allRawValues;
- (id)changedKeys;
- (id)copyWithZone:(_NSZone *)zone;
- (id)objectForKeyedSubscript:(id)subscript;
- (id)rawValueForKey:(id)key;
- (id)recordID;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateKeysAndValuesOfClasses:(id)classes options:(unint64_t)options usingBlock:(id)block;
- (void)resetChangedKeys;
- (void)setChangedKeysSet:(id)set;
- (void)setNilValueForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
- (void)setObjectNoValidate:(id)validate forKey:(id)key;
- (void)setOriginalValues:(id)values;
- (void)setRawValue:(id)value forKey:(id)key;
- (void)setValues:(id)values;
@end

@implementation CKRecordValueStore

+ (void)initialize
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v7[0] = objc_opt_class();
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v4, v7, 1);
  sub_1886CEE50(self, v3, v5, 0, 1);

  v6 = *MEMORY[0x1E69E9840];
}

- (id)allKeys
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_msgSend_values(selfCopy, v3, v4);
  v8 = objc_msgSend_allKeys(v5, v6, v7);

  objc_sync_exit(selfCopy);

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_originalValues;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSMutableSet)changedKeysSet
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_changedKeysSet;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSMutableDictionary)values
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_values;
  objc_sync_exit(selfCopy);

  return v3;
}

- (CKRecordValueStore)initWithRecord:(id)record
{
  recordCopy = record;
  v14.receiver = self;
  v14.super_class = CKRecordValueStore;
  v5 = [(CKRecordValueStore *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_record, recordCopy);
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

- (void)setValues:(id)values
{
  valuesCopy = values;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = objc_msgSend_CKMapValues_(valuesCopy, v5, &unk_1EFA2ECE8);
  v9 = objc_msgSend_mutableCopy(v6, v7, v8);
  values = selfCopy->_values;
  selfCopy->_values = v9;

  objc_sync_exit(selfCopy);
}

- (void)setOriginalValues:(id)values
{
  valuesCopy = values;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = objc_msgSend_CKMapValues_(valuesCopy, v5, &unk_1EFA2ED08);
  v9 = objc_msgSend_mutableCopy(v6, v7, v8);
  originalValues = selfCopy->_originalValues;
  selfCopy->_originalValues = v9;

  objc_sync_exit(selfCopy);
}

- (void)setChangedKeysSet:(id)set
{
  setCopy = set;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_CKDeepCopy(setCopy, v5, v6);
  v10 = objc_msgSend_mutableCopy(v7, v8, v9);
  changedKeysSet = selfCopy->_changedKeysSet;
  selfCopy->_changedKeysSet = v10;

  objc_sync_exit(selfCopy);
}

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = objc_msgSend_values(selfCopy, v6, v7);
  v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, subscriptCopy);

  objc_sync_exit(selfCopy);

  return v10;
}

- (id)rawValueForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = objc_msgSend_values(selfCopy, v6, v7);
  v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, keyCopy);

  objc_sync_exit(selfCopy);

  return v10;
}

- (void)setRawValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = sub_188408790(valueCopy);
  v11 = objc_msgSend_values(selfCopy, v9, v10);
  objc_msgSend_setObject_forKeyedSubscript_(v11, v12, v8, keyCopy);

  objc_sync_exit(selfCopy);
}

- (void)setObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  v7 = keyCopy;
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

        v30 = objectCopy;
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
  v94 = objectCopy;
  v95 = v93;
LABEL_53:

  objc_msgSend__setObject_forKey_(self, v92, objectCopy, v8);
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  if (subscript)
  {
    objc_msgSend_setObject_forKey_(self, a2, object);
  }
}

- (void)setObjectNoValidate:(id)validate forKey:(id)key
{
  validateCopy = validate;
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sub_18857F044(selfCopy, validateCopy, keyCopy);
  v10 = objc_msgSend_values(selfCopy, v8, v9);
  v13 = objc_msgSend_originalValues(selfCopy, v11, v12);
  v15 = v13;
  if (selfCopy)
  {
    trackChanges = selfCopy->_trackChanges;
    if (keyCopy && selfCopy->_trackChanges)
    {
      v17 = objc_msgSend_objectForKeyedSubscript_(v13, v14, keyCopy);

      if (!v17)
      {
        v19 = objc_msgSend_objectForKeyedSubscript_(v10, v18, keyCopy);

        if (v19)
        {
          objc_msgSend_objectForKeyedSubscript_(v10, v20, keyCopy);
        }

        else
        {
          objc_msgSend_null(MEMORY[0x1E695DFB0], v20, v21);
        }
        v22 = ;
        objc_msgSend_setObject_forKeyedSubscript_(v15, v23, v22, keyCopy);
      }

      trackChanges = 1;
    }
  }

  else
  {
    trackChanges = 0;
  }

  v24 = sub_188408790(validateCopy);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v25, v24, keyCopy);

  if (trackChanges)
  {
    v28 = objc_msgSend_changedKeysSet(selfCopy, v26, v27);
    v31 = objc_msgSend_copy(keyCopy, v29, v30);
    objc_msgSend_addObject_(v28, v32, v31);
  }

  objc_sync_exit(selfCopy);
}

- (void)setNilValueForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_values(selfCopy, v5, v6);
  v11 = objc_msgSend_originalValues(selfCopy, v8, v9);
  if (selfCopy && selfCopy->_trackChanges)
  {
    v12 = objc_msgSend_objectForKeyedSubscript_(v7, v10, keyCopy);
    if (v12)
    {
      v13 = objc_msgSend_objectForKeyedSubscript_(v11, v10, keyCopy);

      if (!v13)
      {
        v14 = objc_msgSend_objectForKeyedSubscript_(v7, v10, keyCopy);
        objc_msgSend_setObject_forKeyedSubscript_(v11, v15, v14, keyCopy);
      }
    }

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  objc_msgSend_removeObjectForKey_(v7, v10, keyCopy);
  if (v16)
  {
    v19 = objc_msgSend_changedKeysSet(selfCopy, v17, v18);
    v22 = objc_msgSend_copy(keyCopy, v20, v21);
    objc_msgSend_addObject_(v19, v23, v22);
  }

  objc_sync_exit(selfCopy);
}

- (id)allRawValues
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_msgSend_values(selfCopy, v3, v4);
  v8 = objc_msgSend_allValues(v5, v6, v7);

  objc_sync_exit(selfCopy);

  return v8;
}

- (id)changedKeys
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_msgSend_changedKeysSet(selfCopy, v3, v4);
  v8 = objc_msgSend_allObjects(v5, v6, v7);

  objc_sync_exit(selfCopy);

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

- (BOOL)containsValueOfClasses:(id)classes options:(unint64_t)options passingTest:(id)test
{
  optionsCopy = options;
  v76 = *MEMORY[0x1E69E9840];
  classesCopy = classes;
  testCopy = test;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v51 = selfCopy;
  if (optionsCopy)
  {
    objc_msgSend_changedKeys(selfCopy, v11, v12);
  }

  else
  {
    objc_msgSend_allKeys(selfCopy, v11, v12);
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
  v50 = classesCopy;
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
      v20 = objc_msgSend_values(selfCopy, v16, v17);
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
          if (classesCopy)
          {
            v29 = objc_opt_class();
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v30 = classesCopy;
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

                    classesCopy = v50;
                    selfCopy = v51;
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

              selfCopy = v51;
LABEL_44:
              classesCopy = v50;
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

                  if (testCopy[2](testCopy, v19, *(*(&v56 + 1) + 8 * k)))
                  {

                    classesCopy = v50;
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

      if (classesCopy)
      {
        v36 = objc_opt_class();
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v27 = classesCopy;
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

                classesCopy = v50;
                selfCopy = v51;
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

          classesCopy = v50;
          selfCopy = v51;
          v13 = v52;
        }

        else
        {
          selfCopy = v51;
        }

        goto LABEL_52;
      }

LABEL_47:
      if ((testCopy)[2](testCopy, v19, v22))
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

  objc_sync_exit(selfCopy);
  v48 = *MEMORY[0x1E69E9840];
  return v47;
}

- (void)enumerateKeysAndValuesOfClasses:(id)classes options:(unint64_t)options usingBlock:(id)block
{
  blockCopy = block;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_18857FB98;
  v11[3] = &unk_1E70BDF10;
  v12 = blockCopy;
  v9 = blockCopy;
  objc_msgSend_containsValueOfClasses_options_passingTest_(self, v10, classes, options, v11);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy)
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_record);
  }

  else
  {
    WeakRetained = 0;
  }

  v5 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initWithRecord_(v5, v6, WeakRetained);
  v10 = objc_msgSend_values(selfCopy, v8, v9);
  objc_msgSend_setValues_(v7, v11, v10);

  v14 = objc_msgSend_originalValues(selfCopy, v12, v13);
  objc_msgSend_setOriginalValues_(v7, v15, v14);

  v18 = objc_msgSend_changedKeysSet(selfCopy, v16, v17);
  v21 = objc_msgSend_CKDeepCopy(v18, v19, v20);
  v24 = objc_msgSend_mutableCopy(v21, v22, v23);
  v25 = *(v7 + 32);
  *(v7 + 32) = v24;

  if (selfCopy)
  {
    trackChanges = selfCopy->_trackChanges;
  }

  else
  {
    trackChanges = 0;
  }

  *(v7 + 8) = trackChanges;

  objc_sync_exit(selfCopy);
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = objc_msgSend_values(selfCopy, v6, v7);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, v8, @"RecordValues");

  v12 = objc_msgSend_originalValues(selfCopy, v10, v11);
  objc_msgSend_encodeObject_forKey_(coderCopy, v13, v12, @"OriginalValues");

  v16 = objc_msgSend_changedKeysSet(selfCopy, v14, v15);
  objc_msgSend_encodeObject_forKey_(coderCopy, v17, v16, @"ChangedKeys");

  objc_sync_exit(selfCopy);
  objc_autoreleasePoolPop(v4);
}

- (CKRecordValueStore)initWithCoder:(id)coder
{
  v47[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
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
    v13 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v12, v11, @"RecordValues");
    v16 = objc_msgSend_mutableCopy(v13, v14, v15);
    values = v5->_values;
    v5->_values = v16;

    v18 = CKAcceptableValueClasses();
    v46[0] = objc_opt_class();
    v46[1] = objc_opt_class();
    v46[2] = objc_opt_class();
    v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v19, v46, 3);
    v22 = objc_msgSend_setByAddingObjectsFromArray_(v18, v21, v20);
    v24 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v23, v22, @"OriginalValues");
    v27 = objc_msgSend_mutableCopy(v24, v25, v26);
    originalValues = v5->_originalValues;
    v5->_originalValues = v27;

    v29 = MEMORY[0x1E695DFD8];
    v30 = objc_opt_class();
    v31 = objc_opt_class();
    v33 = objc_msgSend_setWithObjects_(v29, v32, v30, v31, 0);
    v35 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v34, v33, @"ChangedKeys");
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