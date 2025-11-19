@interface CKSQLiteTOCTable
+ (id)dbProperties;
- (BOOL)migrateEntryDataFromTable:(id)a3 entry:(id)a4 toEntry:(id)a5 addedProperties:(id)a6;
- (id)_tocEntriesWithGroupID:(id)a3 error:(id *)a4 label:(_CKSQLiteCompiledStatementLabel *)a5 properties:(id)a6;
- (id)addEntryForTable:(id)a3;
- (id)setSchema:(id)a3 forTable:(id)a4;
- (id)tocEntriesWithGroupID:(id)a3 error:(id *)a4;
- (id)tocEntryWithGroupID:(id)a3 logicalTableName:(id)a4 error:(id *)a5;
@end

@implementation CKSQLiteTOCTable

+ (id)dbProperties
{
  v6[8] = *MEMORY[0x1E69E9840];
  v5[0] = CKSQLiteTOCTableEntryTableIDPropertyName;
  v5[1] = CKSQLiteTOCTableEntryLogicalTablePropertyName;
  v6[0] = &unk_1EFA85500;
  v6[1] = &unk_1EFA85548;
  v5[2] = CKSQLiteTOCTableEntryDbTablePropertyName;
  v5[3] = CKSQLiteTOCTableEntryGroupIDPropertyName;
  v6[2] = &unk_1EFA85560;
  v6[3] = &unk_1EFA85578;
  v5[4] = CKSQLiteTOCTableEntrySchemaPropertyName;
  v5[5] = CKSQLiteTOCTableEntryDbVersionPropertyName;
  v6[4] = &unk_1EFA85590;
  v6[5] = &unk_1EFA855A8;
  v5[6] = CKSQLiteTOCTableEntryCreatingClassName;
  v5[7] = CKSQLiteTOCTableEntryPropertyDataName;
  v6[6] = &unk_1EFA85548;
  v6[7] = &unk_1EFA855C0;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v6, v5, 8);
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (BOOL)migrateEntryDataFromTable:(id)a3 entry:(id)a4 toEntry:(id)a5 addedProperties:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_opt_class();
  v16 = objc_msgSend_propertyInfo_(v14, v15, CKSQLiteTOCTableEntryCreatingClassName);
  v18 = objc_msgSend_valueForProperty_propertyInfo_inObject_(v10, v17, CKSQLiteTOCTableEntryCreatingClassName, v16, v11);
  v19 = NSClassFromString(v18);
  if (v19 && (v20 = v19, v21 = objc_opt_class(), (objc_msgSend_isSubclassOfClass_(v20, v22, v21) & 1) != 0))
  {
    v23 = 0;
  }

  else
  {
    v25.receiver = self;
    v25.super_class = CKSQLiteTOCTable;
    v23 = [(CKSQLiteTable *)&v25 migrateEntryDataFromTable:v10 entry:v11 toEntry:v12 addedProperties:v13];
  }

  return v23;
}

- (id)addEntryForTable:(id)a3
{
  v98[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_tableGroup(self, v5, v6);
  isMigrationTOC = objc_msgSend_isMigrationTOC(v7, v8, v9);

  v13 = objc_msgSend_tableGroup(v4, v11, v12);
  hasFlag = objc_msgSend_hasFlag_(v13, v14, 1);
  if (isMigrationTOC && (hasFlag & 1) != 0)
  {
    v17 = v13;
    v97[0] = CKSQLiteTOCTableEntryLogicalTablePropertyName;
    v97[1] = CKSQLiteTOCTableEntryDbTablePropertyName;
    v97[2] = CKSQLiteTOCTableEntryGroupIDPropertyName;
    v97[3] = CKSQLiteTOCTableEntrySchemaPropertyName;
    v97[4] = CKSQLiteTOCTableEntryDbVersionPropertyName;
    v97[5] = CKSQLiteTOCTableEntryCreatingClassName;
    v97[6] = CKSQLiteTOCTableEntryPropertyDataName;
    v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v16, v97, 7);
    v20 = objc_msgSend_componentsJoinedByString_(v18, v19, @",");
    v23 = objc_msgSend_dbTableName(self, v21, v22);
    v24 = MEMORY[0x1E696AEC0];
    v25 = objc_opt_class();
    v28 = objc_msgSend_dbTableName(v25, v26, v27);
    v29 = CKSQLiteTOCTableEntryDbTablePropertyName;
    v30 = objc_opt_class();
    v33 = objc_msgSend_dbTableName(v30, v31, v32);
    v96 = v20;
    v35 = objc_msgSend_stringWithFormat_(v24, v34, @"INSERT INTO '%@' (%@) SELECT %@ FROM '%@' WHERE %@='%@'", v23, v20, v20, v28, v29, v33);

    v38 = objc_msgSend_db(self, v36, v37);
    v40 = objc_msgSend_executeSQL_(v38, v39, v35);
    if (v40)
    {
      v43 = v40;
      v13 = v17;
      v44 = v20;
LABEL_14:

      goto LABEL_15;
    }

    v75 = objc_msgSend_db(self, v41, v42);
    InsertRowID = objc_msgSend_lastInsertRowID(v75, v76, v77);

    v95 = MEMORY[0x1E696AEC0];
    v79 = CKSQLiteTOCTableEntryGroupIDPropertyName;
    v82 = objc_msgSend_groupID(v17, v80, v81);
    v83 = CKSQLiteTOCTableEntryTableIDPropertyName;
    v85 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v84, InsertRowID);
    v87 = objc_msgSend_stringWithFormat_(v95, v86, @"UPDATE '%@' SET %@ = %@ WHERE %@ = %@", v23, v79, v82, v83, v85);

    v13 = v17;
    v43 = objc_msgSend_executeSQL_(v38, v88, v87);
    v44 = v96;
LABEL_13:

    goto LABEL_14;
  }

  v18 = objc_alloc_init(CKSQLiteTOCTableEntry);
  v44 = objc_msgSend_logicalTableName(v4, v45, v46);
  objc_msgSend_setLogicalTableName_(v18, v47, v44);
  v23 = objc_msgSend_dbTableName(v4, v48, v49);
  if (v23)
  {
    objc_msgSend_setDbTableName_(v18, v50, v23);
  }

  v52 = objc_msgSend_groupID(v13, v50, v51);
  objc_msgSend_setGroupID_(v18, v53, v52);

  v54 = objc_opt_class();
  v55 = MEMORY[0x1E696AD98];
  v58 = objc_msgSend_dbVersion(v54, v56, v57);
  v60 = objc_msgSend_numberWithUnsignedInteger_(v55, v59, v58);
  objc_msgSend_setDbVersion_(v18, v61, v60);

  v62 = NSStringFromClass(v54);
  objc_msgSend_setCreatingClass_(v18, v63, v62);

  v66 = objc_msgSend_flattenedDBProperties(v54, v64, v65);
  objc_msgSend_setPropertyData_(v18, v67, v66);

  v69 = objc_msgSend_insertObject_(self, v68, v18);
  if (v69)
  {
    v43 = v69;
    goto LABEL_16;
  }

  v35 = objc_msgSend_tableID(v18, v70, v71);
  objc_msgSend_setTableID_(v4, v72, v35);
  if (!v23)
  {
    v38 = objc_msgSend_stringValue(v35, v73, v74);
    objc_msgSend_setDbTableName_(v18, v89, v38);
    objc_msgSend_setDbTableName_(v4, v90, v38);
    v98[0] = CKSQLiteTOCTableEntryDbTablePropertyName;
    v87 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v91, v98, 1);
    v43 = objc_msgSend_updateProperties_usingObject_label_(self, v92, v87, v18, off_1EA9111C0);
    goto LABEL_13;
  }

  v43 = 0;
LABEL_15:

LABEL_16:
  v93 = *MEMORY[0x1E69E9840];

  return v43;
}

- (id)setSchema:(id)a3 forTable:(id)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(CKSQLiteTOCTableEntry);
  v11 = objc_msgSend_tableID(v6, v9, v10);

  objc_msgSend_setTableID_(v8, v12, v11);
  objc_msgSend_setSchema_(v8, v13, v7);

  v20[0] = CKSQLiteTOCTableEntrySchemaPropertyName;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v14, v20, 1);
  v17 = objc_msgSend_updateProperties_usingObject_label_(self, v16, v15, v8, off_1EA9111D8);

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)_tocEntriesWithGroupID:(id)a3 error:(id *)a4 label:(_CKSQLiteCompiledStatementLabel *)a5 properties:(id)a6
{
  v35[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v34 = @"ID";
  v35[0] = v10;
  v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, v35, &v34, 1);
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_1883EE22C;
  v32 = sub_1883EF7BC;
  v33 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1886922DC;
  v23[3] = &unk_1E70C16A8;
  v23[4] = self;
  v14 = v13;
  v24 = v14;
  v27 = a5;
  v15 = v11;
  v25 = v15;
  v26 = &v28;
  v17 = objc_msgSend_performInTransaction_(self, v16, v23);
  v18 = v17;
  if (a4 && v17)
  {
    v19 = v17;
    *a4 = v18;
  }

  v20 = v29[5];

  _Block_object_dispose(&v28, 8);
  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)tocEntriesWithGroupID:(id)a3 error:(id *)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = CKSQLiteTOCTableEntryLogicalTablePropertyName;
  v15 = CKSQLiteTOCTableEntryDbTablePropertyName;
  v16 = CKSQLiteTOCTableEntryTableIDPropertyName;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a3;
  v9 = objc_msgSend_arrayWithObjects_count_(v6, v8, &v14, 3);
  v11 = objc_msgSend__tocEntriesWithGroupID_error_label_properties_(self, v10, v7, a4, off_1EA9111F0, v9, v14, v15, v16, v17);

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)tocEntryWithGroupID:(id)a3 logicalTableName:(id)a4 error:(id *)a5
{
  v30[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v29[0] = @"ID";
  v29[1] = @"NAME";
  v30[0] = v8;
  v30[1] = v9;
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v10, v30, v29, 2);
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1883EE22C;
  v27 = sub_1883EF7BC;
  v28 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_18869272C;
  v20[3] = &unk_1E70BC0C0;
  v20[4] = self;
  v12 = v11;
  v21 = v12;
  v22 = &v23;
  v14 = objc_msgSend_performInTransaction_(self, v13, v20);
  v15 = v14;
  if (a5 && v14)
  {
    v16 = v14;
    *a5 = v15;
  }

  v17 = v24[5];

  _Block_object_dispose(&v23, 8);
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

@end