@interface CKSQLiteGenericTableGroup
+ (id)copyOfTableGroup:(id)a3 options:(unint64_t)a4 error:(id *)a5;
+ (id)groupEntryInDatabase:(id)a3 withGroupName:(id)a4 error:(id *)a5;
+ (id)tableGroupInDatabase:(id)a3 withName:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (void)createTables;
@end

@implementation CKSQLiteGenericTableGroup

+ (id)groupEntryInDatabase:(id)a3 withGroupName:(id)a4 error:(id *)a5
{
  v14.receiver = a1;
  v14.super_class = &OBJC_METACLASS___CKSQLiteGenericTableGroup;
  v6 = objc_msgSendSuper2(&v14, sel_groupEntryInDatabase_withGroupName_error_, a3, a4, a5);
  if (v6)
  {
    v7 = NSStringFromClass(a1);
    objc_msgSend_setCreatingClass_(v6, v8, v7);

    v11 = objc_msgSend_date(MEMORY[0x1E695DF00], v9, v10);
    objc_msgSend_setLastUsed_(v6, v12, v11);
  }

  return v6;
}

+ (id)tableGroupInDatabase:(id)a3 withName:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___CKSQLiteGenericTableGroup;
  v6 = objc_msgSendSuper2(&v8, sel_tableGroupInDatabase_withName_options_error_, a3, a4, a5 | 0x80000, a6);

  return v6;
}

+ (id)copyOfTableGroup:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v59 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v11 = v8;
  if (v8)
  {
    v12 = objc_msgSend_groupID(v8, v9, v10);
    objc_msgSend_unsignedLongLongValue(v12, v13, v14);
    v15 = off_1EE3DEA10();
    *v15 = v16;

    v17 = MEMORY[0x1E696AEC0];
    v20 = objc_msgSend_name(v11, v18, v19);
    v22 = objc_msgSend_stringWithFormat_(v17, v21, @"Copy of %@", v20);

    v25 = objc_msgSend_db(v11, v23, v24);
    v27 = objc_msgSend_tableGroupInDatabase_withName_options_error_(a1, v26, v25, v22, a4 | 0x100000, a5);

    if (v27)
    {
      v50 = a5;
      v51 = v22;
      v52 = v15;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v30 = objc_msgSend_allTables(v27, v28, v29);
      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v54, v58, 16);
      if (v32)
      {
        v35 = v32;
        v36 = *v55;
        while (2)
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v55 != v36)
            {
              objc_enumerationMutation(v30);
            }

            v38 = *(*(&v54 + 1) + 8 * i);
            v39 = objc_msgSend_logicalTableName(v38, v33, v34);
            v41 = objc_msgSend_tableWithName_(v11, v40, v39);

            v53[0] = MEMORY[0x1E69E9820];
            v53[1] = 3221225472;
            v53[2] = sub_18867BB98;
            v53[3] = &unk_1E70C0CF8;
            v53[4] = v38;
            v43 = objc_msgSend_enumerateEntriesWithBlock_(v41, v42, v53);

            if (v43)
            {

              v46 = objc_msgSend_purgeGroup_(CKSQLiteTableGroup, v45, v27);
              if (a5)
              {
                v47 = v43;
                v44 = 0;
                *v50 = v43;
              }

              else
              {
                v44 = 0;
              }

              v22 = v51;
              v15 = v52;
              goto LABEL_18;
            }
          }

          v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v33, &v54, v58, 16);
          if (v35)
          {
            continue;
          }

          break;
        }
      }

      v43 = 0;
      v22 = v51;
      v15 = v52;
      v44 = v27;
LABEL_18:
    }

    else
    {
      v44 = 0;
    }

    *v15 = 0;
  }

  else
  {
    v44 = 0;
  }

  v48 = *MEMORY[0x1E69E9840];
  return v44;
}

- (void)createTables
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_tocTable(self, a2, v2);
  v6 = *off_1EE3DEA10();
  if (v6)
  {
    objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v5, v6);
  }

  else
  {
    objc_msgSend_groupID(self, v5, 0);
  }
  v7 = ;
  v26 = 0;
  v9 = objc_msgSend_validationTocEntriesWithGroupID_error_(v4, v8, v7, &v26);
  v10 = v26;
  if (!v10)
  {
    v21 = v4;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = v9;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v22, v27, 16);
    if (v13)
    {
      v15 = v13;
      v16 = *v23;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v11);
          }

          v18 = objc_msgSend_genericTableForTOCEntry_(CKSQLiteGenericTable, v14, *(*(&v22 + 1) + 8 * i));
          objc_msgSend_addTable_(self, v19, v18);
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v22, v27, 16);
      }

      while (v15);
    }

    v4 = v21;
  }

  v20 = *MEMORY[0x1E69E9840];
}

@end