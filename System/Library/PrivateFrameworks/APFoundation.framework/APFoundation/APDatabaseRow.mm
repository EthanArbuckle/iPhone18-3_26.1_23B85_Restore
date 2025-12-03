@interface APDatabaseRow
- (APDatabaseManager)manager;
- (APDatabaseRow)initWithTable:(id)table;
- (BOOL)deleteFromDB;
- (BOOL)isDataObjectEqual:(id)equal;
- (BOOL)save;
- (NSString)description;
- (id)_allowedCodingClasses;
- (id)dictionaryFromBlobForColumnName:(id)name;
- (id)initAsNewObjectWithTable:(id)table;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)valueForColumnName:(id)name;
- (int64_t)typeForColumnName:(id)name;
- (void)_createColumns;
- (void)forwardInvocation:(id)invocation;
- (void)setDictionary:(id)dictionary forBlobColumnName:(id)name;
- (void)setValue:(id)value forColumnName:(id)name;
@end

@implementation APDatabaseRow

- (APDatabaseManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (APDatabaseRow)initWithTable:(id)table
{
  tableCopy = table;
  v20.receiver = self;
  v20.super_class = APDatabaseRow;
  v5 = [(APDatabaseRow *)&v20 init];
  v9 = v5;
  if (v5)
  {
    v5->_isNewObject = 0;
    v10 = objc_msgSend_tableName(tableCopy, v6, v7, v8);
    tableName = v9->_tableName;
    v9->_tableName = v10;

    v15 = objc_msgSend_manager(tableCopy, v12, v13, v14);
    objc_storeWeak(&v9->_manager, v15);

    objc_msgSend__createColumns(v9, v16, v17, v18);
  }

  return v9;
}

- (id)initAsNewObjectWithTable:(id)table
{
  tableCopy = table;
  v20.receiver = self;
  v20.super_class = APDatabaseRow;
  v5 = [(APDatabaseRow *)&v20 init];
  v9 = v5;
  if (v5)
  {
    v5->_isNewObject = 1;
    v10 = objc_msgSend_tableName(tableCopy, v6, v7, v8);
    tableName = v9->_tableName;
    v9->_tableName = v10;

    v15 = objc_msgSend_manager(tableCopy, v12, v13, v14);
    objc_storeWeak(&v9->_manager, v15);

    objc_msgSend__createColumns(v9, v16, v17, v18);
  }

  return v9;
}

- (BOOL)save
{
  v141 = *MEMORY[0x1E69E9840];
  v8 = objc_msgSend_manager(self, a2, v2, v3);
  if (v8)
  {
    v9 = objc_msgSend_columns(self, v5, v6, v7);
    v13 = objc_msgSend_allValues(v9, v10, v11, v12);

    LOBYTE(v9) = objc_msgSend_isNewObject(self, v14, v15, v16);
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = v18;
    if (v9)
    {
      v126 = v18;
      v127 = v17;
      v124 = v8;
      v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v129 = 0u;
      v130 = 0u;
      v131 = 0u;
      v132 = 0u;
      v122 = v13;
      v21 = v13;
      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v129, v137, 16);
      if (v23)
      {
        v27 = v23;
        v28 = *v130;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v130 != v28)
            {
              objc_enumerationMutation(v21);
            }

            v30 = *(*(&v129 + 1) + 8 * i);
            v31 = objc_msgSend_readOnlyColumns(self, v24, v25, v26);
            v35 = objc_msgSend_name(v30, v32, v33, v34);
            v38 = objc_msgSend_containsObject_(v31, v36, v35, v37);

            if ((v38 & 1) == 0)
            {
              v39 = objc_msgSend_name(v30, v24, v25, v26);
              objc_msgSend_addObject_(v127, v40, v39, v41);

              objc_msgSend_addObject_(v126, v42, @"?", v43);
              objc_msgSend_addObject_(v20, v44, v30, v45);
            }
          }

          v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v129, v137, 16);
        }

        while (v27);
      }

      v46 = MEMORY[0x1E696AEC0];
      v50 = objc_msgSend_tableName(self, v47, v48, v49);
      v53 = objc_msgSend_componentsJoinedByString_(v127, v51, @", ", v52);
      v19 = v126;
      v56 = objc_msgSend_componentsJoinedByString_(v126, v54, @", ", v55);
      v59 = objc_msgSend_stringWithFormat_(v46, v57, @"INSERT INTO %@ (%@) VALUES (%@)", v58, v50, v53, v56);

      v60 = v127;
      v8 = v124;
      inserted = objc_msgSend_executeInsertQuery_withParameters_(v124, v61, v59, v20);
      v65 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v63, inserted, v64);
      objc_msgSend_setValue_forColumnName_(self, v66, v65, @"rowid");

      objc_msgSend_setIsNewObject_(self, v67, 0, v68);
      v69 = inserted != -1;
      v13 = v122;
      goto LABEL_34;
    }

    v72 = v17;
    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    v73 = v13;
    v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v74, &v133, v138, 16);
    if (v75)
    {
      v79 = v75;
      v128 = v17;
      v80 = v19;
      v123 = v13;
      v125 = v8;
      v20 = 0;
      v81 = *v134;
      do
      {
        for (j = 0; j != v79; ++j)
        {
          if (*v134 != v81)
          {
            objc_enumerationMutation(v73);
          }

          v83 = *(*(&v133 + 1) + 8 * j);
          v84 = objc_msgSend_name(v83, v76, v77, v78);
          isEqualToString = objc_msgSend_isEqualToString_(v84, v85, @"rowid", v86);

          if (isEqualToString)
          {
            v91 = v83;

            v20 = v91;
          }

          else
          {
            v92 = MEMORY[0x1E696AEC0];
            v93 = objc_msgSend_name(v83, v88, v89, v90);
            v96 = objc_msgSend_stringWithFormat_(v92, v94, @"%@=?", v95, v93);
            objc_msgSend_addObject_(v128, v97, v96, v98);

            objc_msgSend_addObject_(v80, v99, v83, v100);
          }
        }

        v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v76, &v133, v138, 16);
      }

      while (v79);

      v19 = v80;
      if (v20)
      {
        v104 = objc_msgSend_value(v20, v101, v102, v103);

        v13 = v123;
        v8 = v125;
        v60 = v128;
        if (v104)
        {
          objc_msgSend_addObject_(v80, v105, v20, v106);
          v107 = MEMORY[0x1E696AEC0];
          v111 = objc_msgSend_tableName(self, v108, v109, v110);
          v114 = objc_msgSend_componentsJoinedByString_(v128, v112, @", ", v113);
          v59 = objc_msgSend_stringWithFormat_(v107, v115, @"UPDATE %@ SET %@ WHERE rowId=?", v116, v111, v114);

          v69 = objc_msgSend_executeQuery_withParameters_(v125, v117, v59, v19);
LABEL_34:

          goto LABEL_35;
        }
      }

      else
      {
        v13 = v123;
        v8 = v125;
        v60 = v128;
      }
    }

    else
    {

      v20 = 0;
      v60 = v72;
    }

    v59 = APLogForCategory(0xCuLL);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v118 = objc_opt_class();
      *buf = 138477827;
      v140 = v118;
      v119 = v118;
      _os_log_impl(&dword_1BADC1000, v59, OS_LOG_TYPE_ERROR, "[%{private}@]: RowId is nil when trying to update row.", buf, 0xCu);
    }

    v69 = 0;
    goto LABEL_34;
  }

  v13 = APLogForCategory(0xCuLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v70 = objc_opt_class();
    *buf = 138477827;
    v140 = v70;
    v71 = v70;
    _os_log_impl(&dword_1BADC1000, v13, OS_LOG_TYPE_ERROR, "[%{private}@]: Database manager is nil when trying to save row.", buf, 0xCu);
  }

  v69 = 0;
LABEL_35:

  v120 = *MEMORY[0x1E69E9840];
  return v69;
}

- (BOOL)deleteFromDB
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = objc_msgSend_manager(self, a2, v2, v3);
  if (!v8)
  {
    v13 = APLogForCategory(0xCuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v40 = objc_opt_class();
      v14 = v40;
      _os_log_impl(&dword_1BADC1000, v13, OS_LOG_TYPE_ERROR, "[%{private}@]: Database manager is nil when trying to delete row.", buf, 0xCu);
    }

    v12 = 0;
    goto LABEL_13;
  }

  if ((objc_msgSend_isNewObject(self, v5, v6, v7) & 1) == 0)
  {
    v15 = objc_msgSend_columns(self, v9, v10, v11);
    v13 = objc_msgSend_objectForKey_(v15, v16, @"rowid", v17);

    v21 = objc_msgSend_value(v13, v18, v19, v20);

    if (v21)
    {
      v25 = MEMORY[0x1E696AEC0];
      v26 = objc_msgSend_tableName(self, v22, v23, v24);
      v29 = objc_msgSend_stringWithFormat_(v25, v27, @"DELETE FROM %@ WHERE rowid = ?", v28, v26);

      v38 = v13;
      v31 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v30, &v38, 1);
      v12 = objc_msgSend_executeQuery_withParameters_(v8, v32, v29, v31);

      objc_msgSend_setIsNewObject_(self, v33, 1, v34);
    }

    else
    {
      v29 = APLogForCategory(0xCuLL);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138477827;
        v40 = objc_opt_class();
        v35 = v40;
        _os_log_impl(&dword_1BADC1000, v29, OS_LOG_TYPE_ERROR, "[%{private}@]: Error - Can't delete from DB rowId is nill.", buf, 0xCu);
      }

      v12 = 0;
    }

LABEL_13:
    goto LABEL_14;
  }

  v12 = 0;
LABEL_14:

  v36 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)isDataObjectEqual:(id)equal
{
  v139 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  v130 = objc_msgSend_columns(self, v4, v5, v6);
  objc_msgSend_allKeys(v130, v7, v8, v9);
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  v10 = v135 = 0u;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v132, v138, 16);
  if (!v12)
  {
    goto LABEL_41;
  }

  v15 = v12;
  v16 = *v133;
  v17 = 0x1E696A000uLL;
  do
  {
    v18 = 0;
    do
    {
      if (*v133 != v16)
      {
        objc_enumerationMutation(v10);
      }

      v19 = *(*(&v132 + 1) + 8 * v18);
      if ((objc_msgSend_isEqualToString_(v19, v13, @"rowid", v14) & 1) == 0)
      {
        v20 = objc_msgSend_objectForKey_(v130, v13, v19, v14);
        v24 = objc_msgSend_columns(equalCopy, v21, v22, v23);
        v27 = objc_msgSend_objectForKey_(v24, v25, v19, v26);

        v31 = objc_msgSend_value(v20, v28, v29, v30);
        if (!v31)
        {
          v38 = objc_msgSend_value(v27, v32, v33, v34);

          if (v38)
          {
            goto LABEL_10;
          }

          goto LABEL_30;
        }

LABEL_10:
        v39 = objc_msgSend_value(v20, v35, v36, v37);
        if (v39)
        {
          v43 = v39;
          v44 = objc_msgSend_value(v27, v40, v41, v42);

          if (!v44)
          {
            goto LABEL_46;
          }
        }

        v45 = objc_msgSend_value(v20, v40, v41, v42);
        if (v45)
        {
        }

        else
        {
          v52 = objc_msgSend_value(v27, v46, v47, v48);

          if (v52)
          {
            goto LABEL_46;
          }
        }

        v53 = objc_msgSend_type(v20, v49, v50, v51);
        if (v53 > 3)
        {
          if (v53 <= 5)
          {
            if (v53 == 4)
            {
              v91 = objc_msgSend_value(v20, v54, v55, v56);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {

LABEL_55:
                v125 = APLogForCategory(0xCuLL);
                if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_44;
                }

                goto LABEL_45;
              }

              v95 = objc_msgSend_value(v27, v92, v93, v94);
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if ((isKindOfClass & 1) == 0)
              {
                goto LABEL_55;
              }

              v100 = objc_msgSend_value(v20, v97, v98, v99);
              v104 = objc_msgSend_value(v27, v101, v102, v103);
              objc_msgSend_timeIntervalSinceDate_(v100, v105, v104, v106);
              v108 = fabs(v107);

              v17 = 0x1E696A000;
              if (v108 > 0.001)
              {
                goto LABEL_46;
              }

              goto LABEL_30;
            }

            goto LABEL_26;
          }

          if (v53 != 6)
          {
            if (v53 != 7)
            {
              goto LABEL_30;
            }

            goto LABEL_26;
          }

          v109 = objc_msgSend_value(v20, v54, v55, v56);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

LABEL_49:
            v125 = APLogForCategory(0xCuLL);
            if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
            {
LABEL_44:
              v126 = objc_opt_class();
              *buf = 138477827;
              v137 = v126;
              v127 = v126;
              _os_log_impl(&dword_1BADC1000, v125, OS_LOG_TYPE_ERROR, "[%{private}@]: Error - Column type class type missmatch.", buf, 0xCu);
            }

LABEL_45:

LABEL_46:
            v124 = 0;
            goto LABEL_47;
          }

          v113 = objc_msgSend_value(v27, v110, v111, v112);
          objc_opt_class();
          v114 = objc_opt_isKindOfClass();

          if ((v114 & 1) == 0)
          {
            goto LABEL_49;
          }

          v66 = objc_msgSend_value(v20, v115, v116, v117);
          v70 = objc_msgSend_value(v27, v118, v119, v120);
          isEqualToData = objc_msgSend_isEqualToData_(v66, v121, v70, v122);
        }

        else
        {
          if (v53 >= 3)
          {
            if (v53 == 3)
            {
              v57 = objc_msgSend_value(v20, v54, v55, v56);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {

LABEL_52:
                v125 = APLogForCategory(0xCuLL);
                if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_44;
                }

                goto LABEL_45;
              }

              v61 = objc_msgSend_value(v27, v58, v59, v60);
              objc_opt_class();
              v62 = objc_opt_isKindOfClass();

              if ((v62 & 1) == 0)
              {
                goto LABEL_52;
              }

              v66 = objc_msgSend_value(v20, v63, v64, v65);
              v70 = objc_msgSend_value(v27, v67, v68, v69);
              isEqualToData = objc_msgSend_isEqualToString_(v66, v71, v70, v72);
              goto LABEL_29;
            }

LABEL_30:

            goto LABEL_31;
          }

LABEL_26:
          v74 = objc_msgSend_value(v20, v54, v55, v56);
          v75 = *(v17 + 3480);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

LABEL_43:
            v125 = APLogForCategory(0xCuLL);
            if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_44;
            }

            goto LABEL_45;
          }

          v79 = objc_msgSend_value(v27, v76, v77, v78);
          v80 = *(v17 + 3480);
          objc_opt_class();
          v81 = objc_opt_isKindOfClass();

          if ((v81 & 1) == 0)
          {
            goto LABEL_43;
          }

          v66 = objc_msgSend_value(v20, v82, v83, v84);
          v70 = objc_msgSend_value(v27, v85, v86, v87);
          isEqualToData = objc_msgSend_isEqualToNumber_(v66, v88, v70, v89);
        }

LABEL_29:
        v90 = isEqualToData;

        v17 = 0x1E696A000;
        if ((v90 & 1) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_30;
      }

LABEL_31:
      ++v18;
    }

    while (v15 != v18);
    v123 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v132, v138, 16);
    v15 = v123;
  }

  while (v123);
LABEL_41:
  v124 = 1;
LABEL_47:

  v128 = *MEMORY[0x1E69E9840];
  return v124;
}

- (id)dictionaryFromBlobForColumnName:(id)name
{
  v33 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v10 = objc_msgSend_valueForColumnName_(self, v5, nameCopy, v6);
  if (v10)
  {
    v11 = MEMORY[0x1E696ACD0];
    v12 = objc_msgSend__allowedCodingClasses(self, v7, v8, v9);
    v26 = 0;
    v14 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(v11, v13, v12, v10, &v26);
    v15 = v26;

    if (v15)
    {
      v16 = APLogForCategory(0xCuLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        v18 = v17;
        v22 = objc_msgSend_localizedDescription(v15, v19, v20, v21);
        *buf = 138478339;
        v28 = v17;
        v29 = 2113;
        v30 = nameCopy;
        v31 = 2114;
        v32 = v22;
        _os_log_impl(&dword_1BADC1000, v16, OS_LOG_TYPE_ERROR, "[%{private}@] Could not unarchive data for %{private}@ column, error: %{public}@", buf, 0x20u);
      }

      v23 = 0;
    }

    else
    {
      v23 = v14;
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (void)setDictionary:(id)dictionary forBlobColumnName:(id)name
{
  v26 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (dictionary)
  {
    v19 = 0;
    v8 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v6, dictionary, 1, &v19);
    v10 = v19;
    if (v10)
    {
      v11 = APLogForCategory(0xCuLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v13 = v12;
        v17 = objc_msgSend_localizedDescription(v10, v14, v15, v16);
        *buf = 138478339;
        v21 = v12;
        v22 = 2113;
        v23 = nameCopy;
        v24 = 2114;
        v25 = v17;
        _os_log_impl(&dword_1BADC1000, v11, OS_LOG_TYPE_ERROR, "[%{private}@] Could not archive data for %{private}@ column, error: %{public}@", buf, 0x20u);
      }
    }

    else
    {
      objc_msgSend_setValue_forColumnName_(self, v9, v8, nameCopy);
    }
  }

  else
  {
    objc_msgSend_setValue_forColumnName_(self, v6, 0, nameCopy);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  v83 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_isAppleInternalInstall(APSystemInternal, a2, v2, v3))
  {
    v63 = &stru_1F38FD5F0;
LABEL_29:
    v62 = v63;
    goto LABEL_30;
  }

  v8 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v5, v6, v7);
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v12 = objc_msgSend_columns(self, v9, v10, v11);
  v16 = objc_msgSend_allValues(v12, v13, v14, v15);

  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v73, v82, 16);
  if (v18)
  {
    v22 = v18;
    v23 = *v74;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v74 != v23)
        {
          objc_enumerationMutation(v16);
        }

        v25 = *(*(&v73 + 1) + 8 * i);
        v26 = objc_msgSend_name(v25, v19, v20, v21);
        v30 = objc_msgSend_value(v25, v27, v28, v29);
        if ((objc_msgSend_isEqualToString_(v26, v31, @"rowid", v32) & 1) == 0 && v30)
        {
          objc_msgSend_setObject_forKey_(v8, v33, v30, v26);
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v73, v82, 16);
    }

    while (v22);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v37 = objc_msgSend_readOnlyColumns(self, v34, v35, v36);
  v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v69, v81, 16);
  if (v39)
  {
    v42 = v39;
    v43 = *v70;
    do
    {
      for (j = 0; j != v42; ++j)
      {
        if (*v70 != v43)
        {
          objc_enumerationMutation(v37);
        }

        v45 = *(*(&v69 + 1) + 8 * j);
        if ((objc_msgSend_isEqualToString_(v45, v40, @"rowid", v41) & 1) == 0)
        {
          v47 = objc_msgSend_valueForKey_(self, v40, v45, v41);
          if (v47)
          {
            objc_msgSend_setObject_forKey_(v8, v46, v47, v45);
          }
        }
      }

      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v40, &v69, v81, 16);
    }

    while (v42);
  }

  v50 = objc_msgSend_JSONObjectWithObject_(APJSONArchiver, v48, v8, v49);

  v68 = 0;
  v52 = objc_msgSend_dataWithJSONObject_options_error_(MEMORY[0x1E696ACB0], v51, v50, 0, &v68);
  v53 = v68;
  if (!v53)
  {
    v64 = objc_alloc(MEMORY[0x1E696AEC0]);
    v63 = objc_msgSend_initWithData_encoding_(v64, v65, v52, 4);

    goto LABEL_29;
  }

  v54 = v53;
  v55 = APLogForCategory(0xCuLL);
  if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
  {
    v56 = objc_opt_class();
    v57 = v56;
    v61 = objc_msgSend_description(v54, v58, v59, v60);
    *buf = 138478083;
    v78 = v56;
    v79 = 2113;
    v80 = v61;
    _os_log_impl(&dword_1BADC1000, v55, OS_LOG_TYPE_ERROR, "[%{private}@]: Error generating JSON description %{private}@.", buf, 0x16u);
  }

  v62 = &stru_1F38FD5F0;
LABEL_30:

  v66 = *MEMORY[0x1E69E9840];

  return v62;
}

- (void)_createColumns
{
  v110 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  outCount = 0;
  v4 = [APDatabaseColumn alloc];
  v6 = objc_msgSend_initWithName_forColumnType_withValue_(v4, v5, @"rowid", 0, 0);
  v10 = objc_msgSend_name(v6, v7, v8, v9);
  v106 = v3;
  v11 = v3;
  selfCopy = self;
  v103 = v6;
  objc_msgSend_setObject_forKey_(v11, v13, v6, v10);

  v14 = objc_opt_class();
  v15 = class_copyPropertyList(v14, &outCount);
  v16 = v15;
  if (outCount)
  {
    v17 = 0;
    v18 = 0x1E696A000uLL;
    v104 = selfCopy;
    v105 = v15;
    while (1)
    {
      v19 = v16[v17];
      Name = property_getName(v19);
      if (Name)
      {
        break;
      }

LABEL_30:
      if (++v17 >= outCount)
      {
        goto LABEL_40;
      }
    }

    v23 = objc_msgSend_stringWithUTF8String_(*(v18 + 3776), v21, Name, v22);
    v27 = objc_msgSend_readOnlyColumns(selfCopy, v24, v25, v26);
    v30 = objc_msgSend_containsObject_(v27, v28, v23, v29);

    if (v30)
    {
LABEL_29:

      goto LABEL_30;
    }

    Attributes = property_getAttributes(v19);
    v34 = objc_msgSend_stringWithUTF8String_(*(v18 + 3776), v32, Attributes, v33);
    v37 = objc_msgSend_componentsSeparatedByString_(v34, v35, @",", v36);
    v40 = objc_msgSend_objectAtIndex_(v37, v38, 0, v39);
    v43 = objc_msgSend_substringFromIndex_(v40, v41, 1, v42);
    v44 = v43;
    v48 = objc_msgSend_UTF8String(v44, v45, v46, v47);
    if (objc_msgSend_hasPrefix_(v40, v49, @"T@", v50))
    {
      v54 = objc_msgSend_length(v40, v51, v52, v53);
      v56 = objc_msgSend_substringWithRange_(v40, v55, 3, v54 - 4);
      v57 = *(v18 + 3776);
      v58 = objc_opt_class();
      v59 = NSStringFromClass(v58);
      isEqualToString = objc_msgSend_isEqualToString_(v56, v60, v59, v61);

      if (isEqualToString)
      {
        v63 = 3;
LABEL_25:
        selfCopy = v104;
        goto LABEL_26;
      }

      v65 = objc_opt_class();
      v66 = NSStringFromClass(v65);
      v69 = objc_msgSend_isEqualToString_(v56, v67, v66, v68);

      if (v69)
      {
        v63 = 2;
        goto LABEL_25;
      }

      v72 = objc_opt_class();
      v73 = NSStringFromClass(v72);
      v76 = objc_msgSend_isEqualToString_(v56, v74, v73, v75);

      if (v76)
      {
        v63 = 4;
        goto LABEL_25;
      }

      v77 = objc_opt_class();
      v78 = NSStringFromClass(v77);
      v81 = objc_msgSend_isEqualToString_(v56, v79, v78, v80);

      if (v81)
      {
        v63 = 6;
        goto LABEL_25;
      }

      v85 = objc_opt_class();
      v86 = NSStringFromClass(v85);
      if (objc_msgSend_isEqualToString_(v56, v87, v86, v88))
      {

LABEL_36:
        selfCopy = v104;
        goto LABEL_28;
      }

      v89 = objc_opt_class();
      v90 = NSStringFromClass(v89);
      v93 = objc_msgSend_isEqualToString_(v56, v91, v90, v92);

      if (v93)
      {
        goto LABEL_36;
      }

      v94 = APLogForCategory(0xCuLL);
      selfCopy = v104;
      if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
      {
        v95 = objc_opt_class();
        *buf = 138477827;
        v109 = v95;
        v96 = v95;
        _os_log_impl(&dword_1BADC1000, v94, OS_LOG_TYPE_ERROR, "[%{private}@]: Unable to match property type to DB Column type.", buf, 0xCu);

        selfCopy = v104;
      }

LABEL_20:
      v63 = 0;
LABEL_26:

      goto LABEL_27;
    }

    v64 = *v48;
    if (v64 == 66)
    {
      if (!v48[1])
      {
        v63 = 5;
        goto LABEL_27;
      }
    }

    else if (v64 == 81)
    {
      if (!v48[1])
      {
        v63 = 3;
        goto LABEL_27;
      }
    }

    else if (v64 == 113 && !v48[1])
    {
      v63 = 0;
LABEL_27:
      v82 = [APDatabaseColumn alloc];
      v56 = objc_msgSend_initWithName_forColumnType_withValue_(v82, v83, v23, v63, 0);
      objc_msgSend_setObject_forKey_(v106, v84, v56, v23);
LABEL_28:

      v18 = 0x1E696A000;
      v16 = v105;
      goto LABEL_29;
    }

    v56 = APLogForCategory(0xCuLL);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      v70 = objc_opt_class();
      *buf = 138477827;
      v109 = v70;
      v71 = v70;
      _os_log_impl(&dword_1BADC1000, v56, OS_LOG_TYPE_ERROR, "[%{private}@]: Unable to match property type to DB Column type.", buf, 0xCu);

      selfCopy = v104;
    }

    goto LABEL_20;
  }

LABEL_40:
  free(v16);
  v99 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x1E695DF20], v97, v106, v98);
  objc_msgSend_setColumns_(selfCopy, v100, v99, v101);

  v102 = *MEMORY[0x1E69E9840];
}

- (id)_allowedCodingClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  return objc_msgSend_setWithObjects_(v2, v8, v3, v9, v4, v5, v6, v7, 0);
}

- (void)setValue:(id)value forColumnName:(id)name
{
  v24 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  nameCopy = name;
  v11 = objc_msgSend_columns(self, v8, v9, v10);
  v14 = objc_msgSend_objectForKey_(v11, v12, nameCopy, v13);

  if (v14)
  {
    objc_msgSend_setValue_(v14, v15, valueCopy, v16);
  }

  else
  {
    v17 = APLogForCategory(0xCuLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = 138478083;
      v21 = objc_opt_class();
      v22 = 2113;
      v23 = nameCopy;
      v18 = v21;
      _os_log_impl(&dword_1BADC1000, v17, OS_LOG_TYPE_ERROR, "[%{private}@]: Column not avaliable for column name %{private}@.", &v20, 0x16u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)valueForColumnName:(id)name
{
  v24 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v8 = objc_msgSend_columns(self, v5, v6, v7);
  v11 = objc_msgSend_objectForKey_(v8, v9, nameCopy, v10);

  if (v11)
  {
    v15 = objc_msgSend_value(v11, v12, v13, v14);
  }

  else
  {
    v16 = APLogForCategory(0xCuLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = 138478083;
      v21 = objc_opt_class();
      v22 = 2113;
      v23 = nameCopy;
      v17 = v21;
      _os_log_impl(&dword_1BADC1000, v16, OS_LOG_TYPE_ERROR, "[%{private}@]: Column not avaliable for column name %{private}@.", &v20, 0x16u);
    }

    v15 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v15;
}

- (int64_t)typeForColumnName:(id)name
{
  v24 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v8 = objc_msgSend_columns(self, v5, v6, v7);
  v11 = objc_msgSend_objectForKey_(v8, v9, nameCopy, v10);

  if (v11)
  {
    v15 = objc_msgSend_type(v11, v12, v13, v14);
  }

  else
  {
    v16 = APLogForCategory(0xCuLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = 138478083;
      v21 = objc_opt_class();
      v22 = 2113;
      v23 = nameCopy;
      v17 = v21;
      _os_log_impl(&dword_1BADC1000, v16, OS_LOG_TYPE_ERROR, "[%{private}@]: Column not avaliable for column name %{private}@.", &v20, 0x16u);
    }

    v15 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  v8 = objc_msgSend_selector(invocationCopy, v5, v6, v7);
  v9 = NSStringFromSelector(v8);
  v15 = objc_msgSend_ap_propertyName(v9, v10, v11, v12);
  if (v15)
  {
    if (objc_msgSend_hasPrefix_(v9, v13, @"set", v14))
    {
      v24 = 0;
      objc_msgSend_getArgument_atIndex_(invocationCopy, v16, &v24, 2);
      objc_msgSend_setValue_forColumnName_(self, v18, v24, v15);
    }

    else
    {
      v24 = objc_msgSend_valueForColumnName_(self, v16, v9, v17);
      objc_msgSend_retainArguments(invocationCopy, v19, v20, v21);
      objc_msgSend_setReturnValue_(invocationCopy, v22, &v24, v23);
    }
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v11.receiver = self;
  v11.super_class = APDatabaseRow;
  v4 = [(APDatabaseRow *)&v11 methodSignatureForSelector:?];
  if (!v4)
  {
    v5 = NSStringFromSelector(selector);
    if (objc_msgSend_hasPrefix_(v5, v6, @"set", v7))
    {
      objc_msgSend_signatureWithObjCTypes_(MEMORY[0x1E695DF68], v8, "v@:@", v9);
    }

    else
    {
      objc_msgSend_signatureWithObjCTypes_(MEMORY[0x1E695DF68], v8, "@@:", v9);
    }
    v4 = ;
  }

  return v4;
}

@end