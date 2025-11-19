void sub_188667FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188667FDC(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 136))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v2 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(*(a1 + 32) + 80);
      v17 = v2;
      v20 = objc_msgSend_CKSanitizedPath(v16, v18, v19);
      *buf = 138543362;
      v27 = v20;
      _os_log_debug_impl(&dword_1883EA000, v17, OS_LOG_TYPE_DEBUG, "Removing db at %{public}@", buf, 0xCu);
    }

    v5 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v3, v4);
    objc_msgSend_removeItemAtPath_error_(v5, v6, *(*(a1 + 32) + 80), 0);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1EFA85B48, v7, &v21, v25, 16);
    if (v8)
    {
      v10 = v8;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(&unk_1EFA85B48);
          }

          v13 = objc_msgSend_stringByAppendingString_(*(*(a1 + 32) + 80), v9, *(*(&v21 + 1) + 8 * i));
          objc_msgSend_removeItemAtPath_error_(v5, v14, v13, 0);
        }

        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1EFA85B48, v9, &v21, v25, 16);
      }

      while (v10);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t sub_188668260(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if ((a1 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v7 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2080;
    v14 = a4;
    _os_log_debug_impl(&dword_1883EA000, v7, OS_LOG_TYPE_DEBUG, "%@ sql stmt:'%s'", &v11, 0x16u);
    if ((a1 & 8) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if ((a1 & 8) == 0)
    {
      goto LABEL_10;
    }
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v8 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_debug_impl(&dword_1883EA000, v8, OS_LOG_TYPE_DEBUG, "%@ sql close", &v11, 0xCu);
  }

LABEL_10:

  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1886687B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_18866885C;
  v9[3] = &unk_1E70C05B8;
  v6 = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = v5;
  objc_msgSend_usingStatementForSQL_performBlock_(a2, v8, @"select name from sqlite_master where type = 'table'", v9);
}

void sub_18866885C(uint64_t a1, void *a2)
{
  v6 = a2;
  if (((*(*(a1 + 32) + 16))() & 1) == 0)
  {
    do
    {
      if (!sub_188400120(v6))
      {
        break;
      }

      v4 = sub_188680A00(v6, 0, v3);
      objc_msgSend_addObject_(*(*(*(a1 + 40) + 8) + 40), v5, v4);
    }

    while (!(*(*(a1 + 32) + 16))());
  }
}

uint64_t sub_188668900(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;

  return 1;
}

void sub_1886689A8(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = objc_msgSend_allTableNames(*(a1 + 32), v4, v5);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v14, v18, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend_executeSQL_(v3, v9, @"drop table %@", *(*(&v14 + 1) + 8 * v12++));
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v14, v18, 16);
    }

    while (v10);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_188668C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188668C44(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_188668CE0;
  v7[3] = &unk_1E70C0630;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v4;
  v9 = v5;
  objc_msgSend_usingStatementForSQL_performBlock_(a2, v6, @"select value from Properties where key = ?", v7);
}

void sub_188668CE0(uint64_t a1, void *a2)
{
  v8 = a2;
  objc_msgSend_bindText_atIndex_(v8, v3, *(a1 + 32), 0);
  if (sub_188400120(v8))
  {
    v5 = sub_188680A00(v8, 0, v4);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void sub_188668E84(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_188668F30;
  v5[3] = &unk_1E70C0680;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  objc_msgSend_usingStatementForSQL_performBlock_(a2, v4, @"insert or replace into Properties (key, value) values (?,?)", v5);
}

void sub_188668F30(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  objc_msgSend_bindText_atIndex_(v6, v4, v3, 0);
  objc_msgSend_bindText_atIndex_(v6, v5, *(a1 + 40), 1);
  sub_188400120(v6);
}

void sub_1886691BC(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_188669250;
  v4[3] = &unk_1E70C06D0;
  v5 = *(a1 + 32);
  objc_msgSend_usingStatementForSQL_performBlock_(a2, v3, @"delete from Properties where key = ?", v4);
}

void sub_188669250(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  objc_msgSend_bindText_atIndex_(v4, v3, v2, 0);
  sub_188400120(v4);
}

void sub_1886694C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v5, @"pragma table_info(%@)", *(a1 + 32));
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1886695A8;
  v10[3] = &unk_1E70C0720;
  v12 = v4;
  v7 = *(a1 + 40);
  v11 = *(a1 + 48);
  v8 = v4;
  objc_msgSend_usingStatementForSQL_performBlock_(v7, v9, v6, v10);
}

void sub_1886695A8(uint64_t a1, void *a2)
{
  v7 = a2;
  if (((*(*(a1 + 40) + 16))() & 1) == 0)
  {
    do
    {
      if (!sub_188400120(v7))
      {
        break;
      }

      v4 = *(a1 + 32);
      v5 = sub_188680A00(v7, 1, v3);
      objc_msgSend_addObject_(v4, v6, v5);
    }

    while (!(*(*(a1 + 40) + 16))());
  }
}

void sub_188669A80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    sub_18868089C(v3, v5);
  }

  if (sub_188400120(v4))
  {
    while (1)
    {
      v6 = objc_autoreleasePoolPush();
      v9 = sub_188400C40(v4, v7, v8);
      v10 = *(a1 + 40);
      if (v10)
      {
        v11 = 0;
        (*(v10 + 16))(v10, v9, &v11);
        if (v11)
        {
          break;
        }
      }

      objc_autoreleasePoolPop(v6);
      if ((sub_188400120(v4) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    objc_autoreleasePoolPop(v6);
  }

LABEL_9:
}

void sub_188669D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188669D9C(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_188669E70;
  v14[3] = &unk_1E70C0748;
  v11 = a1[8];
  v10 = a1[9];
  v15 = v5;
  v16 = v10;
  v12 = v5;
  objc_msgSend_select_from_where_bindings_orderBy_limit_block_(a2, v13, v6, v7, v8, v9, v11, 0, v14);
}

void sub_188669E70(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    *a3 = 1;
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }

  else
  {
    objc_msgSend_addObject_(*(*(*(a1 + 40) + 8) + 40), v5, v8);
  }
}

void sub_18866A110(uint64_t a1, void *a2)
{
  v4 = a2;
  sub_18868089C(v4, *(a1 + 32));
  while (1)
  {
    if (v4)
    {
      v3 = v4[5];
      if (v3)
      {
        break;
      }
    }

    if ((sub_188400120(v4) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
}

void sub_18866A4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18866A4F8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  sub_18868089C(v4, v3);
  sub_188400120(v4);
  if (v4)
  {
    v5 = v4[5];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (!v6)
  {
    *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_lastInsertRowID(*(a1 + 40), v7, v8);
  }
}

void sub_18866A954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18866A96C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  sub_18868089C(v4, v3);
  sub_188400120(v4);
  if (v4)
  {
    v5 = v4[5];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (!v6)
  {
    *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_lastInsertRowID(*(a1 + 40), v7, v8);
  }
}

void sub_18866AAE8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  sub_18868089C(v3, v2);
  sub_188400120(v3);
}

void sub_18866AFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18866B000(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 64);
  v8 = a2;
  v10 = objc_msgSend__tableNameForClass_(v6, v9, v7);
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, @"delete from %@ where %@", v10, *(a1 + 40));
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_18866B120;
  v18[3] = &unk_1E70C07C0;
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v21 = v5;
  v22 = v14;
  v15 = *(a1 + 32);
  v19 = v13;
  v20 = v15;
  v16 = v5;
  objc_msgSend_usingStatementForSQL_performBlock_(v8, v17, v12, v18);
}

uint64_t sub_18866B120(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  sub_18868089C(v4, v3);
  sub_188400120(v4);

  result = (*(*(a1 + 48) + 16))();
  if ((result & 1) == 0)
  {
    result = objc_msgSend_changes(*(a1 + 40), v6, v7);
    *(*(*(a1 + 56) + 8) + 24) = result;
  }

  return result;
}

void sub_18866B3EC(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v8 = a1[7];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_18866B4EC;
  v17[3] = &unk_1E70C0810;
  v10 = a1[8];
  v11 = a1[9];
  v20 = v5;
  v17[4] = v10;
  v12 = v11;
  v14 = a1[10];
  v13 = a1[11];
  v18 = v12;
  v21 = v13;
  v19 = v14;
  v15 = v5;
  objc_msgSend_selectFrom_where_bindings_orderBy_limit_block_(a2, v16, v6, v7, v9, 0, v8, v17);
}

void sub_18866B4EC(uint64_t a1, void *a2, _BYTE *a3)
{
  v11 = a2;
  if ((*(*(a1 + 56) + 16))())
  {
    *a3 = 1;
  }

  else
  {
    v6 = objc_msgSend__boxedPropertyDictionary_forObjCClass_(*(a1 + 32), v5, v11, *(a1 + 40));
    v7 = objc_alloc(*(a1 + 64));
    v9 = objc_msgSend_initWithPropertyDictionary_(v7, v8, v6);
    objc_msgSend_addObject_(*(a1 + 48), v10, v9);
  }
}

void sub_18866B71C(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v8 = objc_msgSend__boxedPropertyDictionary_forObjCClass_(*(a1 + 32), v7, v5, *(a1 + 40));
  v9 = objc_alloc(*(a1 + 56));
  v11 = objc_msgSend_initWithPropertyDictionary_(v9, v10, v8);
  v14 = 0;
  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, v11, &v14);
    v13 = v14;
  }

  else
  {
    v13 = 0;
  }

  *a3 = v13;

  objc_autoreleasePoolPop(v6);
}

id sub_18866BA0C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  v8 = objc_msgSend_propertyForName_(v5, v7, a2);
  v10 = objc_msgSend__boxedValue_forObjcCProperty_(v4, v9, v6, v8);

  return v10;
}

void sub_18866BDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18866BE04(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_18866BE80;
  v3[3] = &unk_1E70C08B0;
  v3[4] = *(a1 + 32);
  return objc_msgSend_usingStatementForSQL_performBlock_(a2, a2, @"pragma user_version", v3);
}

void sub_18866BE80(uint64_t a1, void *a2)
{
  v4 = a2;
  if (sub_188400120(v4))
  {
    do
    {
      *(*(*(a1 + 32) + 8) + 24) = sub_18868093C(v4, 0, v3);
    }

    while ((sub_188400120(v4) & 1) != 0);
  }
}

uint64_t sub_18866C204(uint64_t result, const char *a2, char a3)
{
  if (a3 < 0)
  {
    return objc_msgSend_addObject_(*(result + 32), a2, a2);
  }

  return result;
}

void sub_18866C938(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_msgSend_orderAscendingByProperty_(v3, v4, @"expirationDate");
  v7 = objc_msgSend_primaryKey(*(a1 + 32), v5, v6);
  v12[0] = v7;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v12, 1);
  objc_msgSend_setFetchedProperties_(v3, v10, v9);

  v11 = *MEMORY[0x1E69E9840];
}

void sub_18866CCC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18866CCE8(void *a1, const char *a2)
{
  v3 = a1[4];
  v9 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_18866CD98;
  v8[3] = &unk_1E70C0940;
  v4 = a1[6];
  v8[4] = v3;
  v8[5] = v4;
  v5 = objc_msgSend_deleteEntriesMatching_label_error_predicate_(v3, a2, 0, 0, &v9, v8);
  v6 = v9;
  *(*(a1[5] + 8) + 24) = v5;

  return 0;
}

id sub_18866CD98(uint64_t a1, const char *a2, uint64_t a3)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_primaryKey(*(a1 + 32), a2, a3);
  v26[0] = v4;
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v5, v26, 1);

  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = sub_18866CEFC;
  v23 = &unk_1E70C0918;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v24 = v6;
  v25 = v7;
  v9 = v6;
  v11 = objc_msgSend_entriesWithValues_label_setupBlock_(v8, v10, 0, 0, &v20);
  v12 = MEMORY[0x1E696AE18];
  v15 = objc_msgSend_primaryKey(*(a1 + 32), v13, v14);
  v17 = objc_msgSend_predicateWithFormat_(v12, v16, @"%@ IN %@", v15, v11, v20, v21, v22, v23);

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

void sub_18866CEFC(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_orderAscendingByProperty_(v3, v4, @"expirationDate");
  objc_msgSend_setFetchedProperties_(v3, v5, *(a1 + 32));
  v8 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v6, *(a1 + 40));
  objc_msgSend_setLimit_(v3, v7, v8);
}

void sub_18866D194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18866D1B8(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_oldestFirstEnumerator(*(a1 + 32), a2, a3);
  v7 = 0;
  do
  {
    v8 = v7;
    v7 = objc_msgSend_nextObject(v6, v4, v5);

    if (!v7)
    {
      break;
    }

    v10 = objc_msgSend_deleteObject_(*(a1 + 32), v9, v7);
    v12 = objc_msgSend_fetchAllProperties_(*(*(a1 + 32) + 80), v11, *(a1 + 40));
    ++*(*(*(a1 + 48) + 8) + 24);
    v15 = objc_msgSend_dataSize(*(a1 + 40), v13, v14);
    v18 = objc_msgSend_unsignedLongLongValue(v15, v16, v17);
    v19 = *(*(a1 + 32) + 104);
  }

  while (v18 > v19);

  return 0;
}

void sub_18866D488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18866D4AC(void *a1, const char *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v12 = @"EXPIRE_DATE";
  v13[0] = v3;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v13, &v12, 1);
  v5 = a1[5];
  v11 = 0;
  v7 = objc_msgSend_deleteEntriesMatching_label_error_predicate_(v5, v6, v4, off_1EA910BD8, &v11, &unk_1EFA2FEA8);
  v8 = v11;
  *(*(a1[6] + 8) + 24) = v7;

  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_18866D6CC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_trackingEntry(*(a1 + 32), a2, a3);
  v5 = *(a1 + 32);
  if (*(v5 + 96))
  {
    v6 = v5;
    v9 = objc_msgSend_entryCount(v4, v7, v8);
    v12 = objc_msgSend_unsignedLongLongValue(v9, v10, v11);
    v13 = v6[12];

    if (v12 > v13)
    {
      goto LABEL_9;
    }

    v5 = *(a1 + 32);
  }

  if (*(v5 + 112) == 0.0)
  {
LABEL_7:
    if (!*(v5 + 104))
    {
      goto LABEL_14;
    }

    v21 = v5;
    v24 = objc_msgSend_dataSize(v4, v22, v23);
    v27 = objc_msgSend_unsignedLongLongValue(v24, v25, v26);
    v28 = v21[13];

    if (v27 <= v28)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v14 = *(a1 + 40);
  v17 = objc_msgSend_oldestExpireDate(v4, v15, v16);
  objc_msgSend_timeIntervalSinceDate_(v17, v18, v14);
  v20 = v19;

  if (v20 >= 0.0)
  {
    v5 = *(a1 + 32);
    goto LABEL_7;
  }

LABEL_9:
  v29 = *(a1 + 32);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = sub_18866D91C;
  v40[3] = &unk_1E70C09B8;
  v40[4] = v29;
  v30 = v4;
  v41 = v30;
  v42 = *(a1 + 40);
  v32 = objc_msgSend_performTransaction_(v29, v31, v40);
  v34 = *(a1 + 32);
  if (v34[14] != 0.0)
  {
    v35 = objc_msgSend_minimumValueOfProperty_label_error_(v34, v33, @"expirationDate", off_1EA910BF0, 0);
    v37 = objc_msgSend_updateEntryOldestExpireDate_oldestExpirationDate_(*(*(a1 + 32) + 80), v36, v30, v35);
    if (v35)
    {
      v39 = objc_msgSend_requestCallbackWithDate_coalescingInterval_minimumSeparation_(*(a1 + 32), v38, v35, *(*(a1 + 32) + 120), *(*(a1 + 32) + 120));
    }
  }

LABEL_14:
}

uint64_t sub_18866D91C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 112) == 0.0)
  {
    goto LABEL_4;
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = objc_msgSend_oldestExpireDate(v3, v5, v6);
  objc_msgSend_timeIntervalSinceDate_(v7, v8, v4);
  v10 = v9;

  v2 = *(a1 + 32);
  if (v10 >= 0.0)
  {
LABEL_4:
    v12 = 0;
  }

  else
  {
    objc_msgSend_expireByTime_(v2, v11, *(a1 + 48));
    v2 = *(a1 + 32);
    v12 = 1;
  }

  if (*(v2 + 96))
  {
    v13 = *(a1 + 40);
    v14 = v2;
    v17 = objc_msgSend_entryCount(v13, v15, v16);
    v20 = objc_msgSend_unsignedLongLongValue(v17, v18, v19);
    v21 = v14[12];

    if (v20 > v21)
    {
      if (v12)
      {
        v23 = objc_msgSend_fetchAllProperties_(*(*(a1 + 32) + 80), v22, *(a1 + 40));
      }

      objc_msgSend_expireByCount_(*(a1 + 32), v22, *(a1 + 40));
      v12 = 1;
    }
  }

  v24 = *(a1 + 32);
  if (v24[13])
  {
    v25 = *(a1 + 40);
    v26 = v24;
    v29 = objc_msgSend_dataSize(v25, v27, v28);
    v32 = objc_msgSend_unsignedLongLongValue(v29, v30, v31);
    v33 = v26[13];

    if (v32 > v33)
    {
      if (v12)
      {
        v35 = objc_msgSend_fetchAllProperties_(*(*(a1 + 32) + 80), v34, *(a1 + 40));
      }

      objc_msgSend_expireByDataSize_(*(a1 + 32), v34, *(a1 + 40));
    }
  }

  return 0;
}

uint64_t sub_18866DB48(uint64_t a1, const char *a2)
{
  result = objc_msgSend_expire_(*(a1 + 32), a2, *(a1 + 40));
  *(*(a1 + 32) + 89) = 0;
  return result;
}

id sub_18866DE10(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7.receiver = *(a1 + 40);
  v7.super_class = CKSQLiteCacheTable;
  v5 = objc_msgSendSuper2(&v7, sel_insertObject_, v2);
  if (!v5)
  {
    objc_msgSend_transactionExpireCheck(*(a1 + 40), v3, v4);
  }

  return v5;
}

id sub_18866DFB4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v9.receiver = *(a1 + 48);
  v9.super_class = CKSQLiteCacheTable;
  v7 = objc_msgSendSuper2(&v9, sel_insertObject_orUpdateProperties_label_, v2, v3, v4);
  if (!v7)
  {
    objc_msgSend_transactionExpireCheck(*(a1 + 48), v5, v6);
  }

  return v7;
}

void sub_18866E1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_18866E1BC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 80);
  v6 = *(a1 + 64);
  v12.receiver = *(a1 + 56);
  v12.super_class = CKSQLiteCacheTable;
  v13 = 0;
  v7 = objc_msgSendSuper2(&v12, sel_setProperties_valuesToStore_inEntriesMatching_label_error_predicate_, v2, v3, v4, v5, &v13, v6);
  v10 = v13;
  *(*(*(a1 + 72) + 8) + 24) = v7;
  if (!v10)
  {
    objc_msgSend_transactionExpireCheck(*(a1 + 56), v8, v9);
  }

  return v10;
}

uint64_t sub_18866E5D4(uint64_t result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    return objc_msgSend_setObject_forKey_(*(*(result + 32) + 16), a2, a4, a2);
  }

  return result;
}

void sub_18866F29C(uint64_t a1, void *a2, unsigned __int8 a3)
{
  if (a1)
  {
    *(a1 + 80) = 1;
    v8 = a2;
    v5 = objc_opt_class();
    v6 = (class_getInstanceSize(v5) + a1);
    v7 = *(a1 + 80);
    *v6 = v8;
    LODWORD(v6[v7]) = a3;
  }
}

void sub_18866F4F0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  CFRetain(v6);
  *(*(a1 + 32) + 8 * a3) = v6;
  *(*(a1 + 40) + 4 * a3) = objc_msgSend_propertyInfo_(*(a1 + 48), v5, v6);
}

id sub_188670784(int a1, SEL aSelector)
{
  v2 = NSStringFromSelector(aSelector);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v5, @"CKErrorDomain", 1, @"%@ not implemented for %@", v2, v4);

  return v6;
}

id sub_1886708A4(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  objc_msgSend_appendString_(v4, v5, @"(");
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v3;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v20, v24, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v21;
    v12 = 1;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if ((v12 & 1) == 0)
        {
          objc_msgSend_appendString_(v4, v9, @",", v20);
        }

        v15 = objc_msgSend_cksqlcs_appendSQLConstantValueToString_(v14, v9, v4, v20);
        if (v15)
        {
          v17 = v15;

          goto LABEL_13;
        }

        v12 = 0;
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v20, v24, 16);
      v12 = 0;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  objc_msgSend_appendString_(v4, v16, @""));
  v17 = 0;
LABEL_13:

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

id sub_188670A3C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_selector(a1, v8, v9) == sel_bitwiseAnd_with_)
  {
    v12 = objc_msgSend_arguments(a1, v10, v11);
    v15 = v6;
    v16 = v7;
    objc_msgSend_appendString_(v15, v17, @"(");
    v19 = objc_msgSend_objectAtIndexedSubscript_(v12, v18, 0);
    v14 = objc_msgSend_cksqlcs_appendSQLToString_statement_(v19, v20, v15, v16);

    if (!v14)
    {
      objc_msgSend_appendString_(v15, v21, @"&");
      v23 = objc_msgSend_objectAtIndexedSubscript_(v12, v22, 1);
      v14 = objc_msgSend_cksqlcs_appendSQLToString_statement_(v23, v24, v15, v16);

      if (!v14)
      {
        objc_msgSend_appendString_(v15, v25, @""));
      }
    }
  }

  else
  {
    v12 = objc_msgSend_function(a1, v10, v11);
    v14 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v13, @"CKErrorDomain", 1, @"Unhandled expression function: %@", v12);
  }

  return v14;
}

id sub_188670BCC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_expressionType(a1, v8, v9);
  if (v10 > 2)
  {
    if (v10 == 4)
    {
      v19 = objc_msgSend_cksqlcs_appendFunctionExpressionSQLToString_statement_(a1, v11, v6, v7);
      goto LABEL_12;
    }

    if (v10 == 3)
    {
      v13 = objc_msgSend_keyPath(a1, v11, v12);
      objc_msgSend_appendFormat_(v6, v17, @"%@", v13);
      goto LABEL_8;
    }
  }

  else
  {
    if (!v10)
    {
      v20 = objc_msgSend_constantValue(a1, v11, v12);
      v18 = objc_msgSend_cksqlcs_appendSQLConstantValueToString_(v20, v21, v6);

      goto LABEL_13;
    }

    if (v10 == 2)
    {
      v13 = objc_msgSend_variable(a1, v11, v12);
      v15 = objc_msgSend_sqlValueForVariable_(v7, v14, v13);
      objc_msgSend_appendString_(v6, v16, v15);

LABEL_8:
      v18 = 0;
      goto LABEL_13;
    }
  }

  v19 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v11, @"CKErrorDomain", 1, @"Unhandled expression type %lu", v10);
LABEL_12:
  v18 = v19;
LABEL_13:

  return v18;
}

id sub_188670D34(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_leftExpression(a1, v8, v9);
  if (objc_msgSend_cksqlcs_isNil(v10, v11, v12))
  {
    v15 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v13, @"CKErrorDomain", 1, @"nil cannot appear as the left operand");
    goto LABEL_30;
  }

  v16 = objc_msgSend_rightExpression(a1, v13, v14);
  isNil = objc_msgSend_cksqlcs_isNil(v16, v17, v18);
  v22 = objc_msgSend_predicateOperatorType(a1, v20, v21);
  objc_msgSend_appendString_(v6, v23, @"(");
  v25 = objc_msgSend_cksqlcs_appendSQLToString_statement_(v10, v24, v6, v7);
  if (v25)
  {
    goto LABEL_29;
  }

  if (isNil)
  {
    if (v22 == 4)
    {
      objc_msgSend_appendString_(v6, v26, @" IS NULL");
      goto LABEL_17;
    }

    if (v22 == 5)
    {
      objc_msgSend_appendString_(v6, v26, @" IS NOT NULL");
LABEL_17:
      objc_msgSend_appendString_(v6, v27, @""));
      v31 = objc_msgSend_expressionType(v10, v29, v30);
      v34 = objc_msgSend_expressionType(v16, v32, v33);
      if (v31 == 3 && v34 == 2)
      {
        v37 = objc_msgSend_keyPath(v10, v35, v36);
        goto LABEL_20;
      }

      if (v31 == 2 && v34 == 3)
      {
        v42 = objc_msgSend_variable(v10, v35, v36);
        v45 = objc_msgSend_keyPath(v16, v43, v44);
      }

      else
      {
        if (!v31 && v34 == 2)
        {
          v37 = objc_msgSend_constantValue(v10, v35, v36);
LABEL_20:
          v40 = v37;
          v42 = objc_msgSend_variable(v16, v38, v39);
          if (!v40)
          {
            goto LABEL_28;
          }

LABEL_26:
          if (v42)
          {
            v46 = objc_msgSend_addBindingVariable_withAssociatedProperty_(v7, v41, v42, v40);
          }

          goto LABEL_28;
        }

        v42 = 0;
        if (v31 != 2)
        {
          v40 = 0;
          goto LABEL_28;
        }

        v40 = 0;
        if (v34)
        {
LABEL_28:

          v25 = 0;
          goto LABEL_29;
        }

        v42 = objc_msgSend_variable(v10, v35, v36);
        v45 = objc_msgSend_constantValue(v16, v48, v49);
      }

      v40 = v45;
      if (v45)
      {
        goto LABEL_26;
      }

      goto LABEL_28;
    }

    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v26, @"CKErrorDomain", 1, @"invalid nil operand");
    goto LABEL_14;
  }

  if (v22 >= 0xB || ((0x43Fu >> v22) & 1) == 0)
  {
    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v26, @"CKErrorDomain", 1, @"Unhandled operator type %lu", v22);
    v25 = LABEL_14:;
    if (v25)
    {
      goto LABEL_29;
    }

    objc_msgSend_appendString_(v6, v28, &stru_1EFA32970);
    if (isNil)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  objc_msgSend_appendString_(v6, v26, off_1E70C0AC0[v22]);
LABEL_16:
  v25 = objc_msgSend_cksqlcs_appendSQLToString_statement_(v16, v27, v6, v7);
  if (!v25)
  {
    goto LABEL_17;
  }

LABEL_29:
  v15 = v25;

LABEL_30:

  return v15;
}

id sub_188671030(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_1883EE1DC;
  v38 = sub_1883EF794;
  v39 = 0;
  v10 = objc_msgSend_compoundPredicateType(a1, v8, v9);
  v14 = objc_msgSend_subpredicates(a1, v11, v12);
  if (v10)
  {
    if (v10 == 1)
    {
      v15 = @" AND ";
    }

    else
    {
      if (v10 != 2)
      {
        goto LABEL_8;
      }

      v15 = @" OR ";
    }

    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = sub_188671244;
    v29 = &unk_1E70C0AA0;
    v16 = v6;
    v30 = v16;
    v31 = v15;
    v33 = &v34;
    v32 = v7;
    objc_msgSend_enumerateObjectsUsingBlock_(v14, v17, &v26);
    objc_msgSend_appendString_(v16, v18, @""), v26, v27, v28, v29);
  }

  else
  {
    objc_msgSend_appendString_(v6, v13, @" NOT (");
    v20 = objc_msgSend_objectAtIndex_(v14, v19, 0);
    v22 = objc_msgSend_cksqlcs_appendSQLToString_statement_(v20, v21, v6, v7);

    objc_msgSend_appendString_(v6, v23, @" "));
  }

LABEL_8:
  v24 = v35[5];

  _Block_object_dispose(&v34, 8);

  return v24;
}

void sub_188671224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188671244(uint64_t *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  v8 = a1[4];
  if (a3)
  {
    objc_msgSend_appendString_(v8, v7, a1[5]);
  }

  else
  {
    objc_msgSend_appendString_(v8, v7, @"(");
  }

  v10 = objc_msgSend_cksqlcs_appendSQLToString_statement_(v13, v9, a1[4], a1[6]);
  v11 = *(a1[7] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (*(*(a1[7] + 8) + 40))
  {
    *a4 = 1;
  }
}

uint64_t sub_1886712F4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v6, @"CKErrorDomain", 1, @"No int64 binding value for %@", v5);

    v8 = v7;
    *a3 = v7;
  }

  return 0;
}

id sub_18867138C()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v3 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v2, @"CKErrorDomain", 1, @"No generic binding value for %@", v1);

  return v3;
}

id sub_188671418(void *a1, uint64_t a2, sqlite3_stmt *a3, int a4, void *a5)
{
  v8 = a5;
  v14 = 0;
  v10 = objc_msgSend_cksqlcs_int64BindingValue_(a1, v9, &v14);
  v11 = v14;
  if (!v11)
  {
    if (sqlite3_bind_int64(a3, a4, v10))
    {
      v11 = objc_msgSend_sqlErrorWithMessage_(v8, v12, @"Failed to bind int64 value");
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

double sub_1886714D0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v6, @"CKErrorDomain", 1, @"No double binding value for %@", v5);

    v8 = v7;
    *a3 = v7;
  }

  return 0.0;
}

id sub_188671568(void *a1, uint64_t a2, sqlite3_stmt *a3, int a4, void *a5)
{
  v8 = a5;
  v15 = 0;
  objc_msgSend_cksqlcs_doubleBindingValue_(a1, v9, &v15);
  v11 = v10;
  v12 = v15;
  if (!v12)
  {
    if (sqlite3_bind_double(a3, a4, v11))
    {
      v12 = objc_msgSend_sqlErrorWithMessage_(v8, v13, @"Failed to bind double value");
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

const char *sub_188671620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v8, @"CKErrorDomain", 1, @"No text binding value for %@", v7);

    v10 = v9;
    *a5 = v9;
  }

  return "";
}

id sub_1886716BC(void *a1, uint64_t a2, sqlite3_stmt *a3, int a4, void *a5)
{
  v8 = a5;
  v16 = 0;
  v14 = 0;
  v15 = 0;
  v10 = objc_msgSend_cksqlcs_textBindingValue_destructor_error_(a1, v9, &v16, &v15, &v14);
  v11 = v14;
  if (!v11)
  {
    if (sqlite3_bind_text16(a3, a4, v10, v16, v15))
    {
      v11 = objc_msgSend_sqlErrorWithMessage_(v8, v12, @"Failed to bind text value");
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

uint64_t sub_188671788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v8, @"CKErrorDomain", 1, @"No blob binding value for %@", v7);

    v10 = v9;
    *a5 = v9;
  }

  return 0;
}

id sub_188671820(void *a1, uint64_t a2, sqlite3_stmt *a3, int a4, void *a5)
{
  v8 = a5;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v10 = objc_msgSend_cksqlcs_blobBindingValue_destructor_error_(a1, v9, &v16, &v15, &v14);
  v11 = v14;
  if (!v11)
  {
    if (sqlite3_bind_blob64(a3, a4, v10, v16, v15))
    {
      v11 = objc_msgSend_sqlErrorWithMessage_(v8, v12, @"Failed to bind blob value");
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

uint64_t sub_1886718E8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v6, @"CKErrorDomain", 1, @"No archived object binding value for %@", v5);

    v8 = v7;
    *a3 = v7;
  }

  return 0;
}

id sub_188671980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = objc_autoreleasePoolPush();
  v15 = 0;
  v11 = objc_msgSend_databaseArchiveWithObject_error_(CKSQLiteDatabase, v10, a1, &v15);
  v13 = v15;
  if (!v13)
  {
    v13 = objc_msgSend_cksqlcs_bindBlob_index_db_(v11, v12, a3, a4, v8);
  }

  objc_autoreleasePoolPop(v9);

  return v13;
}

uint64_t sub_188671A40(void *a1, const char *a2, uint64_t *a3)
{
  v6 = objc_msgSend_length(a1, a2, a3);
  *a3 = v6;
  v7 = a1;
  result = objc_msgSend_bytes(v7, v8, v9);
  if (!result)
  {
    if (v6)
    {
      v13 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v11, v12);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v13, v14, a2, a1, @"CKSQLiteCompiledStatementBindings.m", 165, @"failed to get bytes pointer for non-empty data");
    }

    return 1;
  }

  return result;
}

void *sub_188671AD0(void *a1, const char *a2, _DWORD *a3, void *a4, void *a5)
{
  v9 = objc_msgSend_length(a1, a2, a3);
  v11 = malloc_type_malloc(2 * v9, 0x8C4CEA14uLL);
  if (v11)
  {
    objc_msgSend_getCharacters_range_(a1, v10, v11, 0, v9);
    *a3 = 2 * v9;
    *a4 = MEMORY[0x1E69E9B38];
  }

  else
  {
    v12 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v10, @"CKErrorDomain", 1, @"malloc() failed");
    if (a5)
    {
      v12 = v12;
      *a5 = v12;
    }
  }

  return v11;
}

id sub_188671BA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = a1;
  v13 = *objc_msgSend_objCType(v9, v10, v11) - 66;
  if (v13 <= 0x31)
  {
    if (((1 << v13) & 0x2848200028483) != 0)
    {
      v14 = objc_msgSend_cksqlcs_bindInt64_index_db_(a1, v12, a3, a4, v8);
LABEL_4:
      v15 = v14;
      goto LABEL_5;
    }

    if (((1 << v13) & 0x1400000000) != 0)
    {
      v14 = objc_msgSend_cksqlcs_bindDouble_index_db_(a1, v12, a3, a4, v8);
      goto LABEL_4;
    }
  }

  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v15 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v19, @"CKErrorDomain", 1, @"No generic binding value for %@", v18);

LABEL_5:

  return v15;
}

void *sub_188671CE4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
  objc_msgSend_getUUIDBytes_(a1, v8, v7);
  *a3 = 16;
  *a4 = MEMORY[0x1E69E9B38];
  return v7;
}

id CKSQLiteContainerAttribution_Backup(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_Bluetooth(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_CloudPhotos(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_HomeKit(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_iAD(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_iWorkPages(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_iWorkNumbers(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_iWorkKeynote(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_KeyboardServices(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_KeychainSync(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_KeyValueService(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_MailDrop(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_Memoji(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_Messages(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_Moments(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_News(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_Notes(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_PhoneFaceTimeCallHistory(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_PhoneFaceTimeMessageStore(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_ProactivePredictions(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_Reminders(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_SafariBookmarks(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_SafariHistory(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_SafariTabGroups(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_Freeform(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_Sharingd(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_Siri(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_SocialGaming(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_TTYCallHistory(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_Wallet(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_SiriProfile(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_DugongTesting(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_DeviceEnrollments(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_Events(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

void sub_188672464(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
  {
    v4 = *(a1 + 32);
    v5 = 138412290;
    v6 = v4;
    _os_log_fault_impl(&dword_1883EA000, v2, OS_LOG_TYPE_FAULT, "No container attribution function for attributionName=%@. Using None instead.", &v5, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

id sub_1886727C8(uint64_t a1, void *a2, void *a3)
{
  value[2] = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_opt_self();
  v7 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v5, v6);
  value[0] = 0;
  value[1] = 0;
  objc_msgSend_getUUIDBytes_(v7, v8, value);
  v9 = v4;
  v12 = objc_msgSend_fileSystemRepresentation(v9, v10, v11);

  v13 = setxattr(v12, "CKSQLiteDatabaseUUID", value, 0x10uLL, 0, 0);
  if (a3 && v13)
  {
    v14 = __error();
    v15 = strerror(*v14);
    *a3 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v16, @"CKErrorDomain", 1, @"Unable to set database UUID: %s", v15);

    v7 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v7;
}

char *sub_188673C14(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    if (getxattr(v3, "CKSQLiteDatabaseIsOpening", 0, 0, 0, 0) == -1)
    {
      if (*__error() != 93)
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v7 = ck_log_facility_sql;
        if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
        {
          v27 = v7;
          v28 = __error();
          v29 = strerror(*v28);
          *buf = 134218498;
          v31 = v2;
          v32 = 2080;
          v33 = v3;
          v34 = 2080;
          v35 = v29;
          _os_log_error_impl(&dword_1883EA000, v27, OS_LOG_TYPE_ERROR, "CKSQLiteDatabase<%p>: getxattr() failed checking for open crash at path: %s. error = %s", buf, 0x20u);
        }
      }
    }

    else
    {
      v6 = objc_msgSend_databaseCorruptError(CKPrettyError, v4, v5);
      if (v6)
      {
        goto LABEL_21;
      }
    }

    if (setxattr(v3, "CKSQLiteDatabaseIsOpening", "1", 1uLL, 0, 0) == -1)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v8 = ck_log_facility_sql;
      if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
      {
        v24 = v8;
        v25 = __error();
        v26 = strerror(*v25);
        *buf = 134218498;
        v31 = v2;
        v32 = 2080;
        v33 = v3;
        v34 = 2080;
        v35 = v26;
        _os_log_error_impl(&dword_1883EA000, v24, OS_LOG_TYPE_ERROR, "CKSQLiteDatabase<%p>: setxattr() failed setting opening attribute at path: %s. error = %s", buf, 0x20u);
      }
    }
  }

  v11 = sqlite3_open_v2(*(a1 + 40), (*(a1 + 32) + 80), *(a1 + 48), 0);
  v12 = *(a1 + 32);
  if (v11)
  {
    v6 = objc_msgSend_sqlErrorWithMessage_(v12, v9, @"Error opening db %@, rc=%d", *(a1 + 32), v11);
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v13 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = *(v14 + 88);
      *buf = 134218498;
      v31 = v14;
      v32 = 2114;
      v33 = v15;
      v34 = 2114;
      v35 = v6;
      _os_log_error_impl(&dword_1883EA000, v13, OS_LOG_TYPE_ERROR, "CKSQLiteDatabase<%p>: Could not open existing database at %{public}@ - %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v6 = objc_msgSend_validateOpenDatabase(v12, v9, v10);
  }

LABEL_21:
  v16 = *(a1 + 32);
  if (v16)
  {
    if ((*(v16 + 152) & 0x10) == 0)
    {
      v17 = *(a1 + 40);
      if (removexattr(v17, "CKSQLiteDatabaseIsOpening", 0))
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v18 = ck_log_facility_sql;
        if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
        {
          v21 = v18;
          v22 = __error();
          v23 = strerror(*v22);
          *buf = 134218498;
          v31 = v16;
          v32 = 2082;
          v33 = v17;
          v34 = 2082;
          v35 = v23;
          _os_log_error_impl(&dword_1883EA000, v21, OS_LOG_TYPE_ERROR, "CKSQLiteDatabase<%p>: removexattr() failed removing opening attribute attribute %{public}s - %{public}s", buf, 0x20u);
        }
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];

  return v6;
}

id sub_1886740B0(uint64_t a1, const char *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v35 = 0;
  v4 = objc_msgSend_migrationTOCInDatabase_error_(CKSQLiteTOCTableGroup, a2, v3, &v35);
  v5 = v35;
  if (!v5)
  {
    objc_storeWeak((*(a1 + 32) + 96), v4);
    v6 = *(a1 + 32);
    v34 = 0;
    v8 = objc_msgSend_genericTOCTableGroupInDatabase_error_(CKSQLiteTOCTableGroup, v7, v6, &v34);
    v9 = v34;
    if (v9)
    {
      goto LABEL_4;
    }

    v9 = objc_msgSend_migrateDataFromGroup_(v4, v10, v8);
    if (v9)
    {
      goto LABEL_4;
    }

    v15 = objc_msgSend_allTables(v8, v11, v12);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v30, v36, 16);
    if (v17)
    {
      v20 = v17;
      v5 = 0;
      v21 = *v31;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(v15);
          }

          if (!v5)
          {
            v23 = *(a1 + 32);
            v24 = objc_msgSend_dbTableName(*(*(&v30 + 1) + 8 * i), v18, v19);
            v5 = objc_msgSend_dropTable_(v23, v25, v24);
          }
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v30, v36, 16);
      }

      while (v20);

      if (v5)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }

    v9 = objc_msgSend_createNewTOCInDatabase_(CKSQLiteTOCTableGroup, v26, *(a1 + 32));
    if (v9)
    {
LABEL_4:
      v5 = v9;
    }

    else
    {
      v28 = objc_msgSend_TOCTableGroupInDatabase_(CKSQLiteTOCTableGroup, v27, *(a1 + 32));
      v5 = objc_msgSend_migrateDataFromGroup_(v28, v29, v4);
      if (!v5)
      {
        objc_storeWeak((*(a1 + 32) + 96), v28);
      }
    }

LABEL_5:
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

id sub_18867517C(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_statementForFetchingAllTableNamesInDatabase_(CKSQLiteCompiledStatement, a2, *(a1 + 32));
  v19 = 0;
  v5 = objc_msgSend_step_(v3, v4, &v19);
  v6 = v19;
  v9 = v6;
  if (v5)
  {
    v10 = v6 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = MEMORY[0x1E69E9820];
    do
    {
      v17[0] = v11;
      v17[1] = 3221225472;
      v17[2] = sub_1886752B8;
      v17[3] = &unk_1E70C0A30;
      v18 = *(a1 + 40);
      objc_msgSend_enumerateResultColumnsWithBlock_(v3, v12, v17);

      v19 = 0;
      v14 = objc_msgSend_step_(v3, v13, &v19);
      v15 = v19;
      v9 = v15;
    }

    while (v14 && !v15);
  }

  objc_msgSend_invalidate(v3, v7, v8);

  return v9;
}

uint64_t sub_188675740(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1 == 1)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v6 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_DEBUG))
    {
      v9 = 134218242;
      v10 = a2;
      v11 = 2080;
      v12 = a4;
      _os_log_debug_impl(&dword_1883EA000, v6, OS_LOG_TYPE_DEBUG, "SQLitDatabase(%p) statement executing: %s", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_188676204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, pthread_mutex_t *a12)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    v15 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v13, v14);
    v16 = [CKSignificantIssue alloc];
    v17 = [CKSourceCodeLocation alloc];
    v19 = objc_msgSend_initWithFilePath_lineNumber_(v17, v18, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/SQLite/CKSQLiteDatabase.m", 994);
    v21 = objc_msgSend_initWithSourceCodeLocation_format_(v16, v20, v19, @"Exception during database transaction: %@");
    objc_msgSend_handleSignificantIssue_actions_(v15, v22, v21, 0);

    v24 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v23, @"Exception during database transaction: %@");
    objc_msgSend_UTF8String(v24, v25, v26);
    _os_crash();
    __break(1u);
    JUMPOUT(0x1886762E4);
  }

  if (a12)
  {
    a12[1].__sig = 0;
    pthread_mutex_unlock(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1886763BC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v1[1].__sig = 0;
    pthread_mutex_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_18867658C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v1[1].__sig = 0;
    pthread_mutex_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_188677118(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AE18];
  v3 = a2;
  v6 = objc_msgSend_predicateWithFormat_(v2, v4, @"databaseUUID = $UUID");
  objc_msgSend_setSearchPredicate_(v3, v5, v6);
}

void sub_188677358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188677370(uint64_t a1, const char *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v14 = @"DATE";
  v15[0] = v3;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v15, &v14, 1);
  v6 = objc_msgSend_entriesWithValues_label_setupBlock_(*(a1 + 40), v5, v4, off_1EA910C50, &unk_1EFA30010);
  v9 = objc_msgSend_allObjects(v6, v7, v8);
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_188677448(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AE18];
  v8 = a2;
  v4 = objc_msgSend_predicateWithFormat_(v2, v3, @"activityEarliestDate < $DATE");
  objc_msgSend_setSearchPredicate_(v8, v5, v4);

  objc_msgSend_orderAscendingByProperty_(v8, v6, @"databaseID");
  objc_msgSend_orderAscendingByProperty_(v8, v7, @"groupID");
}

void sub_188677798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1886777B0(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_entriesWithValues_label_setupBlock_(*(a1 + 32), a2, 0, off_1EA910CC8, &unk_1EFA30070);
  v6 = objc_msgSend_nextObject(v3, v4, v5);
  *(*(*(a1 + 40) + 8) + 24) = v6 != 0;

  return 0;
}

void sub_18867781C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_msgSend_setLimit_(v2, v3, &unk_1EFA852D8);
  objc_msgSend_setFetchedProperties_(v2, v4, MEMORY[0x1E695E0F0]);
  v7 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], v5, @"activityEarliestDate != NULL");
  objc_msgSend_setSearchPredicate_(v2, v6, v7);
}

void sub_188677E14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_runActivities(WeakRetained, v1, v2);
}

void sub_188677F98(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 16));
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 32));
  v2 = (*(a1 + 32) + 16);

  os_unfair_lock_unlock(v2);
}

id sub_188678550(uint64_t a1, const char *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v44 = 0;
  v5 = objc_msgSend_activityEntryForTarget_error_(v3, a2, v4, &v44);
  v8 = v44;
  if (!v8)
  {
    v9 = objc_msgSend_activityEarliestDate(v5, v6, v7);
    v10 = *(a1 + 48);
    v13 = objc_msgSend_activityNotBeforeDate(v5, v11, v12);
    v15 = objc_msgSend_laterDate_(v10, v14, v13);

    if (v9 && objc_msgSend_compare_(v9, v16, v15) != 1)
    {
LABEL_9:
      v8 = 0;
LABEL_19:

      goto LABEL_20;
    }

    objc_msgSend_setSchedulingDataInActivity_date_coalescingInterval_minimumSeparation_(*(a1 + 32), v16, v5, v15, *(a1 + 56), *(a1 + 64));
    v19 = objc_msgSend_activityStartDate(v5, v17, v18);

    if (v19)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v21 = ck_log_facility_sql;
      if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_DEBUG))
      {
        v33 = v21;
        v36 = objc_msgSend_targetDescription(v5, v34, v35);
        *buf = 138543618;
        v46 = v15;
        v47 = 2114;
        v48 = v36;
        _os_log_debug_impl(&dword_1883EA000, v33, OS_LOG_TYPE_DEBUG, "CKSQLiteDatabaseManager scheduled repeating activity: %{public}@ for %{public}@", buf, 0x16u);
      }

      goto LABEL_9;
    }

    v8 = objc_msgSend_insertOrUpdateActivityDate_(*(*(a1 + 32) + 144), v20, v5);
    v22 = *(*(a1 + 32) + 144);
    v39 = MEMORY[0x1E69E9820];
    v40 = 3221225472;
    v41 = sub_188678938;
    v42 = &unk_1E70BC048;
    v43 = *(a1 + 40);
    objc_msgSend_addTransactionCompletionHandler_(v22, v23, &v39);
    if (v8)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v25 = ck_log_facility_sql;
      if (!os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      v26 = v25;
      v29 = objc_msgSend_targetDescription(v5, v27, v28, v39, v40, v41, v42);
      *buf = 138543874;
      v46 = v15;
      v47 = 2114;
      v48 = v29;
      v49 = 2112;
      v50 = v8;
      _os_log_error_impl(&dword_1883EA000, v26, OS_LOG_TYPE_ERROR, "CKSQLiteDatabaseManager failed scheduling: %{public}@ for %{public}@ error = %@", buf, 0x20u);
    }

    else
    {
      objc_msgSend_scheduleActivityDate_(*(a1 + 32), v24, v15, v39, v40, v41, v42);
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v30 = ck_log_facility_sql;
      if (!os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_18;
      }

      v26 = v30;
      v29 = objc_msgSend_targetDescription(v5, v37, v38);
      *buf = 138543618;
      v46 = v15;
      v47 = 2114;
      v48 = v29;
      _os_log_debug_impl(&dword_1883EA000, v26, OS_LOG_TYPE_DEBUG, "CKSQLiteDatabaseManager scheduled: %{public}@ for %{public}@", buf, 0x16u);
    }

LABEL_18:
    goto LABEL_19;
  }

LABEL_20:

  v31 = *MEMORY[0x1E69E9840];

  return v8;
}

uint64_t sub_188678938(uint64_t result, const char *a2)
{
  if (a2)
  {
    v2 = result;
    objc_msgSend_setDatabaseManagerData_(*(result + 32), a2, 0);
    v4 = *(v2 + 32);

    return MEMORY[0x1EEE66B58](v4, sel_activityTriggerWasRolledBack, v3);
  }

  return result;
}

void sub_188678AE8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v1[1].__sig = 0;
    pthread_mutex_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_188678DF8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v1[1].__sig = 0;
    pthread_mutex_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_188678EC4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v1[1].__sig = 0;
    pthread_mutex_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_18867955C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v1[1].__sig = 0;
    pthread_mutex_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_188679724(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_db(*(a1 + 32), a2, a3);
  v5 = _CKSQLDBSerializerLock(v4 + 8);

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v18 = 0;
  v9 = objc_msgSend_activityEntryForTarget_error_(v6, v8, v7, &v18);
  v12 = v18;
  if (v12)
  {
    v16 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v17, *(a1 + 56), *(a1 + 32), @"CKSQLiteDatabaseManager.m", 769, @"Unexpected error: %@", v12);
  }

  v13 = objc_msgSend_activityEarliestDate(v9, v10, v11);
  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  if (v5)
  {
    v5[1].__sig = 0;
    pthread_mutex_unlock(v5);
  }
}

void sub_18867981C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v1[1].__sig = 0;
    pthread_mutex_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_18867A03C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5 = objc_msgSend_distantFuture(MEMORY[0x1E695DF00], a2, a3);
  objc_msgSend_runActivities_(v3, v4, v5);
}

uint64_t CKSQLDBSerializerInit(pthread_mutex_t *a1)
{
  result = pthread_mutex_init(a1, 0);
  a1[1].__sig = 0;
  return result;
}

pthread_mutex_t *_CKSQLDBSerializerUnlock(pthread_mutex_t **a1)
{
  result = *a1;
  if (result)
  {
    result[1].__sig = 0;
    return pthread_mutex_unlock(result);
  }

  return result;
}

void sub_18867A3B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = v6[2];
  v8 = v6[3];
  v9 = v6[4];
  v10 = v6[5];
  v11 = v6[6];
  v12 = MEMORY[0x1E696AD98];
  v13 = v6[9];
  v14 = a2;
  v16 = objc_msgSend_numberWithUnsignedInteger_(v12, v15, v13);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_18867A4F4;
  v19[3] = &unk_1E70C0CA0;
  v19[4] = *(a1 + 32);
  v20 = v5;
  v17 = v5;
  objc_msgSend_select_from_where_bindings_orderBy_limit_offset_block_(v14, v18, v7, v8, v9, v10, v11, &unk_1EFA85308, v16, v19);
}

void sub_18867A4F4(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    *a3 = 1;
  }

  else
  {
    objc_msgSend_addObject_(*(*(a1 + 32) + 56), v5, v6);
  }
}

BOOL sub_18867A644(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (objc_msgSend_CKIsCKSQLiteError(v3, v4, v5))
  {
    v8 = objc_msgSend_CKSQLiteCode(v3, v6, v7) == 11;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL sub_18867A690(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (objc_msgSend_CKIsCKSQLiteError(v3, v4, v5))
  {
    v8 = objc_msgSend_CKSQLiteCode(v3, v6, v7);
    v10 = v8 == 13 || v8 == 10;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

BOOL sub_18867A6E0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v6 = v3;
  if (v3)
  {
    v9 = objc_msgSend_domain(v3, v4, v5);
    v10 = v9 == @"CKInternalErrorDomain" && objc_msgSend_code(v6, v7, v8) == 1050;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

BOOL sub_18867A760(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v6 = v3;
  if (v3)
  {
    v9 = objc_msgSend_domain(v3, v4, v5);
    v10 = v9 == @"CKInternalErrorDomain" && objc_msgSend_code(v6, v7, v8) == 1051;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

BOOL sub_18867A7E0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v6 = v3;
  if (v3)
  {
    v9 = objc_msgSend_domain(v3, v4, v5);
    v10 = v9 == @"CKInternalErrorDomain" && objc_msgSend_code(v6, v7, v8) == 1052;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

BOOL sub_18867A860(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (objc_msgSend_CKIsCKSQLiteError(v3, v4, v5))
  {
    v8 = objc_msgSend_CKSQLiteCode(v3, v6, v7) == 19;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL sub_18867A8AC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (objc_msgSend_CKIsConstraintError_(a1, v5, v4))
  {
    v8 = ((objc_msgSend_CKSQLiteExtendedCode(v4, v6, v7) - 1555) & 0xFFFFFDFF) == 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL sub_18867A908(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (objc_msgSend_CKIsConstraintError_(a1, v5, v4))
  {
    v8 = objc_msgSend_CKSQLiteExtendedCode(v4, v6, v7) == 787;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL sub_18867A960(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (objc_msgSend_CKIsCKSQLiteError(v3, v4, v5))
  {
    v8 = objc_msgSend_CKSQLiteCode(v3, v6, v7) == 5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_18867A9AC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (objc_msgSend_code(v3, v4, v5) == 1028)
  {
    v8 = objc_msgSend_domain(v3, v6, v7);
    isEqualToString = objc_msgSend_isEqualToString_(v8, v9, @"CKInternalErrorDomain");
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

uint64_t sub_18867AA1C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (objc_msgSend_CKIsCKSQLiteError(v3, v4, v5) && objc_msgSend_CKSQLiteCode(v3, v6, v7) == 1 && objc_msgSend_CKSQLiteExtendedCode(v3, v8, v9) == 1)
  {
    v12 = objc_msgSend_CKSQLiteErrorMessage(v3, v10, v11);
    hasPrefix = objc_msgSend_hasPrefix_(v12, v13, @"no such table");
  }

  else
  {
    hasPrefix = 0;
  }

  return hasPrefix;
}

uint64_t sub_18867B068(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_code(a1, a2, a3) != 1027)
  {
    return 0;
  }

  v6 = objc_msgSend_domain(a1, v4, v5);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v7, @"CKInternalErrorDomain");

  return isEqualToString;
}

uint64_t sub_18867B0C8(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_userInfo(a1, a2, a3);
  v5 = objc_msgSend_objectForKey_(v3, v4, @"SQLCode");
  v8 = objc_msgSend_intValue(v5, v6, v7);

  return v8;
}

uint64_t sub_18867B120(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_userInfo(a1, a2, a3);
  v5 = objc_msgSend_objectForKey_(v3, v4, @"SQLExtendedCode");
  v8 = objc_msgSend_intValue(v5, v6, v7);

  return v8;
}

id sub_18867B178(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_userInfo(a1, a2, a3);
  v5 = objc_msgSend_objectForKey_(v3, v4, @"SQLErrorMessage");

  return v5;
}

id sub_18867D4B8(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_tableGroup(a1, a2, a3);
  v5 = sub_188441668(v3, v4);

  return v5;
}

id sub_18867D504(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v7 = objc_msgSend_logicalTableName(a1, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@.%@", v7, v4);

  return v9;
}

id sub_18867E150(uint64_t a1, const char *a2)
{
  objc_msgSend_setIsDeletingReferent_(*(a1 + 32), a2, 1);
  v4 = objc_msgSend_deletePrimaryKeyValue_(*(a1 + 32), v3, *(a1 + 40));
  if (objc_msgSend_CKIsForeignKeyConstraintError_(MEMORY[0x1E696ABC0], v5, v4))
  {

    v4 = 0;
  }

  objc_msgSend_setIsDeletingReferent_(*(a1 + 32), v6, 0);

  return v4;
}

void sub_18867E9E8(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AE18];
  v7 = a2;
  v4 = objc_msgSend_predicateWithFormat_(v2, v3, @"collectionID = $COLLECTION_ID");
  objc_msgSend_setSearchPredicate_(v7, v5, v4);

  objc_msgSend_orderAscendingByProperty_(v7, v6, @"elementIndex");
}

void sub_18867EC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18867ECB8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  objc_msgSend_setReferenceID_(v7, v9, 0);
  objc_msgSend_setElement_(*(a1 + 32), v10, v8);

  v12 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v11, a3);
  objc_msgSend_setElementIndex_(*(a1 + 32), v13, v12);

  v15 = objc_msgSend_insertObject_(*(a1 + 40), v14, *(a1 + 32));
  v16 = *(*(a1 + 48) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    *a4 = 1;
  }
}

id sub_18867EE60(uint64_t a1)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(CKSQLiteReferencedCollectionTableEntry);
  objc_msgSend_setReferenceID_(v2, v3, *(a1 + 32));
  v7 = objc_msgSend_fetchProperties_inObject_label_(*(a1 + 40), v4, &unk_1EFA85D28, v2, *(a1 + 56));
  if (!v7)
  {
    v8 = objc_msgSend_collectionID(v2, v5, v6);
    v39 = @"COLLECTION_ID";
    v40[0] = v8;
    v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, v40, &v39, 1);
    v12 = objc_msgSend_entriesWithValues_label_setupBlock_(*(a1 + 40), v11, v10, off_1ED4B5EB8, &unk_1EFA300D0);
    v15 = objc_msgSend_nextObject(v12, v13, v14);
    v7 = objc_msgSend_error(v12, v16, v17);
    objc_msgSend_invalidate(v12, v18, v19);
    if (!v7)
    {
      objc_msgSend_setCollectionID_(v15, v20, v8);
      objc_msgSend_setElement_(v15, v21, *(a1 + 48));
      v24 = objc_msgSend_element(v15, v22, v23);

      if (v24)
      {
        objc_msgSend_setReferenceID_(v15, v25, 0);
        v28 = objc_msgSend_elementIndex(v15, v26, v27);
        v31 = objc_msgSend_unsignedLongLongValue(v28, v29, v30);

        v33 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v32, v31 + 1);
        objc_msgSend_setElementIndex_(v15, v34, v33);

        objc_msgSend_insertObject_(*(a1 + 40), v35, v15);
      }

      else
      {
        objc_msgSend_setReferenceID_(v15, v25, *(a1 + 32));
        objc_msgSend_updateProperties_usingObject_label_(*(a1 + 40), v36, &unk_1EFA85D58, v15, off_1ED4B5ED0);
      }
      v7 = ;
    }
  }

  v37 = *MEMORY[0x1E69E9840];

  return v7;
}

void sub_18867F07C(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AE18];
  v9 = a2;
  v4 = objc_msgSend_predicateWithFormat_(v2, v3, @"collectionID = $COLLECTION_ID");
  objc_msgSend_setSearchPredicate_(v9, v5, v4);

  objc_msgSend_orderDescendingByProperty_(v9, v6, @"elementIndex");
  objc_msgSend_setFetchedProperties_(v9, v7, &unk_1EFA85D40);
  objc_msgSend_setLimit_(v9, v8, &unk_1EFA85470);
}

uint64_t sub_18867F800(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  objc_msgSend_setPrimaryKey_(v3, v5, 0);
  objc_msgSend_setKey_(*(a1 + 32), v6, v4);
  v8 = objc_msgSend_objectForKey_(*(a1 + 40), v7, v4);

  objc_msgSend_setValue_(*(a1 + 32), v9, v8);
  v10 = *(a1 + 32);
  v11 = *(*(a1 + 48) + 16);

  return v11();
}

uint64_t sub_18867FBC8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  objc_msgSend_setReferenceID_(v3, v5, 0);
  objc_msgSend_setDataBlob_(*(a1 + 32), v6, v4);

  v7 = *(a1 + 32);
  v8 = *(*(a1 + 40) + 16);

  return v8();
}

void sub_18867FD28(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v11 = a3;
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D940];
  v8 = objc_opt_class();
  v10 = NSStringFromClass(v8);
  if (v11)
  {
    objc_msgSend_raise_format_(v6, v9, v7, @"Can't bind object %p of type %@ in statement %@ at index %ld", a1, v10, v11[3], a4);
  }

  else
  {
    objc_msgSend_raise_format_(v6, v9, v7, @"Can't bind object %p of type %@ in statement %@ at index %ld", a1, v10, 0, a4);
  }
}

uint64_t sub_18867FDDC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v26 = a3;
  v7 = a1;
  v12 = *objc_msgSend_objCType(v7, v8, v9) - 66;
  if (v12 > 0x31)
  {
    goto LABEL_20;
  }

  if (((1 << v12) & 0x2009200020083) != 0)
  {
    v13 = objc_msgSend_intValue(a1, v10, v11);
    v15 = v26;
    if (v26)
    {
      v16 = v13;
      if ((v26[8] & 1) == 0)
      {
        v21 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v26, v14);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v21, v22, sel_bindInt_atIndex_, v26, @"CKSQLiteStatement.m", 203, @"Statement is not reset: %@", *(v26 + 3));

        v15 = v26;
      }

      v13 = *(v15 + 4);
      if (v13)
      {
        v13 = sqlite3_bind_int(v13, a4 + 1, v16);
        v15 = v26;
        if (v13)
        {
          v13 = objc_msgSend_invalidate_(v26, v26, @"Error binding int at %ld: %@", a4, *(v26 + 3));
LABEL_16:
          v15 = v26;
          goto LABEL_17;
        }
      }
    }

    goto LABEL_17;
  }

  if (((1 << v12) & 0x840400008400) == 0)
  {
LABEL_20:
    v19 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v19, v20, a2, a1, @"CKSQLiteStatement.m", 51, @"Expected number type to be either integer or floating point");

    goto LABEL_16;
  }

  v13 = objc_msgSend_longLongValue(a1, v10, v11);
  v15 = v26;
  if (v26)
  {
    v18 = v13;
    if ((v26[8] & 1) == 0)
    {
      v23 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v26, v17);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v23, v24, sel_bindInt64_atIndex_, v26, @"CKSQLiteStatement.m", 211, @"Statement is not reset: %@", *(v26 + 3));

      v15 = v26;
    }

    v13 = *(v15 + 4);
    if (v13)
    {
      v13 = sqlite3_bind_int64(v13, a4 + 1, v18);
      v15 = v26;
      if (v13)
      {
        v13 = objc_msgSend_invalidate_(v26, v26, @"Error binding int64 at %ld: %@", a4, *(v26 + 3));
        goto LABEL_16;
      }
    }
  }

LABEL_17:

  return MEMORY[0x1EEE66BB8](v13, v15);
}

uint64_t sub_188680018(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = v5;
  if (!a1)
  {
    goto LABEL_10;
  }

  v19 = v5;
  if ((*(a1 + 8) & 1) == 0)
  {
    v16 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v17, sel_bindBlob_atIndex_, a1, @"CKSQLiteStatement.m", 227, @"Statement is not reset: %@", *(a1 + 24));

    if (v19)
    {
      goto LABEL_4;
    }

LABEL_8:
    v5 = sub_188680218(a1, a3);
    goto LABEL_9;
  }

  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = sub_188680710(a1, v19);
  v7 = v19;
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = v19;
    v12 = objc_msgSend_bytes(v19, v10, v11);
    v15 = objc_msgSend_length(v19, v13, v14);
    v5 = sqlite3_bind_blob(v8, a3 + 1, v12, v15, 0);
    v7 = v19;
    if (v5)
    {
      v5 = objc_msgSend_invalidate_(a1, v19, @"Error binding blob at %ld: %@", a3, *(a1 + 24));
LABEL_9:
      v7 = v19;
    }
  }

LABEL_10:

  return MEMORY[0x1EEE66BB8](v5, v7);
}

void sub_188680150(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v11[0] = 0;
  v11[1] = 0;
  v6 = a3;
  objc_msgSend_getUUIDBytes_(a1, v7, v11);
  v9 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v8, v11, 16);
  sub_188680018(v6, v9, a4);

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t sub_188680218(uint64_t result, int a2)
{
  if (result)
  {
    v2 = result;
    result = *(result + 32);
    if (result)
    {
      result = sqlite3_bind_null(result, a2 + 1);
      if (result)
      {

        return objc_msgSend_invalidate_(v2, v3, @"sqlite3_bind_null error");
      }
    }
  }

  return result;
}

uint64_t sub_18868027C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v16 = a3;
  v8 = objc_msgSend_timeIntervalSinceReferenceDate(a1, v6, v7);
  v11 = v16;
  if (v16)
  {
    v12 = v10;
    if ((v16[8] & 1) == 0)
    {
      v13 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v16, v9);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v13, v14, sel_bindDouble_atIndex_, v16, @"CKSQLiteStatement.m", 219, @"Statement is not reset: %@", *(v16 + 3));

      v11 = v16;
    }

    v8 = *(v11 + 4);
    if (v8)
    {
      v8 = sqlite3_bind_double(v8, a4 + 1, v12);
      v11 = v16;
      if (v8)
      {
        v8 = objc_msgSend_invalidate_(v16, v16, @"Error binding double at %ld: %@", a4, *(v16 + 3));
        v11 = v16;
      }
    }
  }

  return MEMORY[0x1EEE66BB8](v8, v11);
}

void sub_18868037C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = MEMORY[0x1E696ACC8];
  v7 = a3;
  v9 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(v6, v8, a1, 1, 0);
  sub_188680018(v7, v9, a4);
}

void sub_188680404(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v10 = objc_msgSend_absoluteString(a1, v7, v8);
  objc_msgSend_bindText_atIndex_(v6, v9, v10, a4);
}

id *sub_1886805D4(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v11.receiver = a1;
    v11.super_class = CKSQLiteStatement;
    v9 = objc_msgSendSuper2(&v11, sel_init);
    a1 = v9;
    if (v9)
    {
      objc_storeWeak(v9 + 2, v7);
      objc_storeStrong(a1 + 3, a3);
      a1[4] = a4;
      *(a1 + 8) = 1;
    }
  }

  return a1;
}

void *sub_188680710(void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = a1[6];
    if (!v5)
    {
      v6 = objc_opt_new();
      v7 = a1[6];
      a1[6] = v6;

      v5 = a1[6];
    }

    objc_msgSend_addObject_(v5, v3, v4);
    a1 = v4;
  }

  return a1;
}

uint64_t sub_18868089C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (a1)
  {
    v12 = v3;
    v3 = objc_msgSend_count(v3, v3, v4);
    v5 = v12;
    if (v3)
    {
      for (i = 0; i < v3; ++i)
      {
        v7 = objc_msgSend_objectAtIndexedSubscript_(v5, v5, i);
        objc_msgSend_ck_bindInStatement_atIndex_(v7, v8, a1, i);

        v3 = objc_msgSend_count(v12, v9, v10);
        v5 = v12;
      }
    }
  }

  return MEMORY[0x1EEE66BB8](v3, v5);
}

uint64_t sub_18868093C(uint64_t a1, const char *iCol, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = iCol;
  if (*(a1 + 8) == 1)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], iCol, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, sel_intAtIndex_, a1, @"CKSQLiteStatement.m", 293, @"Statement is reset: %@", *(a1 + 24));
  }

  v5 = *(a1 + 32);
  if (!v5)
  {
    return 0;
  }

  return sqlite3_column_int(v5, v3);
}

sqlite3_stmt *sub_188680A00(sqlite3_stmt *a1, const char *iCol, uint64_t a3)
{
  if (a1)
  {
    v4 = iCol;
    v5 = a1;
    if (*(a1 + 8) == 1)
    {
      v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], iCol, a3);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, sel_textAtIndex_, v5, @"CKSQLiteStatement.m", 325, @"Statement is reset: %@", *(v5 + 3));
    }

    a1 = *(v5 + 4);
    if (a1)
    {
      a1 = sqlite3_column_text(a1, v4);
      if (a1)
      {
        a1 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v6, a1);
      }
    }

    v3 = vars8;
  }

  return a1;
}

__CFString *sub_188680BFC(uint64_t *a1, const char *a2)
{
  if (a1)
  {
    v3 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], a2, a1[1], 1);
    v4 = MEMORY[0x1E696AEC0];
    v5 = *a1;
    v8 = objc_msgSend_lastPathComponent(v3, v6, v7);
    v10 = objc_msgSend_stringWithFormat_(v4, v9, @"%s(%@:%d)", v5, v8, *(a1 + 4));
  }

  else
  {
    v10 = @"(unlabeled)";
  }

  return v10;
}

void sub_18868114C(void *a1, void *a2, const char *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if (objc_msgSend_shouldLogError_(v6, v7, v5))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v8 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      v10 = v8;
      v13 = objc_msgSend_logicalTableName(v6, v11, v12);
      v14 = NSStringFromSelector(a3);
      v15 = 138543874;
      v16 = v13;
      v17 = 2114;
      v18 = v14;
      v19 = 2114;
      v20 = v5;
      _os_log_error_impl(&dword_1883EA000, v10, OS_LOG_TYPE_ERROR, "Table '%{public}@' failed in %{public}@ - error: %{public}@", &v15, 0x20u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_188681908(uint64_t a1, void *a2, uint64_t a3)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_188681998;
  v6[3] = &unk_1E70C0DB8;
  v7 = *(a1 + 32);
  v8 = a3;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(a2, v5, v6);
}

void sub_188681998(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v13 = 0;
  v7 = *(a1 + 32);
  v8 = a2;
  v11 = objc_msgSend_unsignedLongValue(a3, v9, v10);
  (*(v7 + 16))(v7, v8, v11, &v13);

  v12 = v13;
  if (v13 == 1)
  {
    *a4 = v13;
    **(a1 + 40) = v12;
  }
}

void sub_188681ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188681AE4(uint64_t a1, void *a2, uint64_t a3)
{
  result = objc_msgSend_count(a2, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

void sub_188681C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188681C34(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = objc_msgSend_objectForKey_(a2, a2, *(a1 + 32));
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a3 = 1;
  }
}

void sub_188681D40(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E696AD98];
  v6 = a2;
  v9 = objc_msgSend_numberWithUnsignedInt_(v5, v7, a3);
  objc_msgSend_setObject_forKey_(v4, v8, v9, v6);
}

void sub_188682164(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = a2;
  v10 = objc_msgSend_valueForProperty_propertyInfo_inObject_allowFetchingUnsetPropertySentinel_(v5, v8, v7, a3, v6, 0);
  objc_msgSend_encodeObject_forKey_(*(a1 + 40), v9, v10, v7);
}

void sub_1886822BC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v7 = 0x1E696AD98;
  v13 = v6;
  if (a3 <= 0x5Fu)
  {
    if (a3 - 1 >= 2)
    {
      if (a3 == 3)
      {
        v7 = 0x1E696AEC0;
      }

      else
      {
        if (a3 != 5)
        {
          goto LABEL_12;
        }

        v7 = 0x1E695DF00;
      }
    }
  }

  else if (a3 - 96 >= 0xD)
  {
    if (a3 == 132)
    {
      v7 = 0x1E695DEF0;
    }

    else
    {
      if (a3 != 134)
      {
        goto LABEL_12;
      }

      v7 = 0x1E696AFB0;
    }
  }

  v8 = *v7;
  v9 = objc_opt_class();
  v6 = v13;
  if (v9)
  {
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(*(a1 + 32), v5, v9, v13);
    goto LABEL_13;
  }

LABEL_12:
  v10 = objc_msgSend_decodeObjectForKey_(*(a1 + 32), v5, v6);
LABEL_13:
  v12 = v10;
  objc_msgSend_setValue_forProperty_propertyInfo_inObject_(*(a1 + 48), v11, v10, v13, a3, *(a1 + 40));
}

void sub_1886824BC(uint64_t a1, const char *a2, uint64_t a3)
{
  if ((a3 & 0x100) == 0)
  {
    v6 = objc_msgSend_valueForProperty_propertyInfo_inObject_allowFetchingUnsetPropertySentinel_(*(a1 + 48), a2, a2, a3, *(a1 + 32), 0);
    *(*(*(a1 + 40) + 8) + 24) ^= objc_msgSend_hash(v6, v4, v5);
  }
}

void sub_188682644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18868265C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a3 & 0x100) == 0 || (*(a1 + 64))
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 32);
    v9 = a2;
    v14 = objc_msgSend_valueForProperty_propertyInfo_inObject_allowFetchingUnsetPropertySentinel_(v7, v10, v9, a3, v8, 0);
    v12 = objc_msgSend_valueForProperty_propertyInfo_inObject_allowFetchingUnsetPropertySentinel_(*(a1 + 56), v11, v9, a3, *(a1 + 40), 0);

    if (v14 != v12 && (!v14 || !v12 || (objc_msgSend_isEqual_(v14, v13, v12) & 1) == 0))
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }

    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      *a4 = 1;
    }
  }
}

void sub_18868282C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = a2;
  v14 = objc_msgSend_valueForProperty_propertyInfo_inObject_allowFetchingUnsetPropertySentinel_(v5, v8, v7, a3, v6, 0);
  v9 = *(a1 + 40);
  v12 = objc_msgSend_copy(v14, v10, v11);
  objc_msgSend_setValue_forProperty_propertyInfo_inObject_(v9, v13, v12, v7, a3, *(a1 + 32));
}

void sub_188682CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_188682CF0(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = a2;
  v6 = objc_msgSend_valueForProperty_propertyInfo_inObject_allowFetchingUnsetPropertySentinel_(*(a1 + 64), v5, v16, a3, *(a1 + 32), 1);
  v8 = v6;
  if (v6 == qword_1EA9123A0)
  {
    v10 = *(*(*(a1 + 48) + 8) + 40);
    if (!v10)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v12 = *(*(a1 + 48) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      v10 = *(*(*(a1 + 48) + 8) + 40);
    }

    objc_msgSend_addObject_(v10, v7, v16);
    goto LABEL_11;
  }

  if (!v6)
  {
    v8 = @"<nil>";
LABEL_10:
    objc_msgSend_appendFormat_(*(a1 + 40), v16, @"%@%@ = %@", *(*(*(a1 + 56) + 8) + 40), v16, v8);
    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = @", ";

LABEL_11:
    goto LABEL_12;
  }

  if (a3 != 8)
  {
    goto LABEL_10;
  }

  v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, @"{ %@ }", v6);

  v8 = v9;
  if (v9)
  {
    goto LABEL_10;
  }

LABEL_12:
}

void sub_1886830D4(uint64_t a1, void *a2, __int16 a3)
{
  v6 = a2;
  if ((a3 & 0x100) != 0)
  {
    v10 = v6;
    objc_storeStrong((*(a1 + 32) + 48), a2);
    v6 = v10;
  }

  if (a3 == 8)
  {
    v7 = *(a1 + 32);
    do
    {
      v8 = *(v7 + 24);
      v9 = v8;
      atomic_compare_exchange_strong_explicit((v7 + 24), &v9, v8 | 0x10, memory_order_relaxed, memory_order_relaxed);
    }

    while (v9 != v8);
  }
}

uint64_t sub_1886834EC(uint64_t result, const char *a2, __int16 a3)
{
  if ((a3 & 0x100) == 0)
  {
    return objc_msgSend_addObject_(*(result + 32), a2, a2);
  }

  return result;
}

void sub_1886835DC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v1[1].__sig = 0;
    pthread_mutex_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_188683E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a63, 8);
  _Unwind_Resume(a1);
}

void sub_188683EF8(uint64_t a1, void *a2, unsigned int a3, uint64_t a4, unsigned int a5, void *a6)
{
  v17 = a2;
  for (i = a6; a4 <= a5; a4 = (a4 + 1))
  {
    v13 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v10, a4);
    if ((a3 >> a4))
    {
      v15 = objc_msgSend_objectForKey_(v17, v12, v13);
      if (!v15)
      {
        v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
        objc_msgSend_setObject_forKey_(v17, v16, v15, v13);
      }

      objc_msgSend_addObject_(v15, v14, i);
    }
  }
}

void sub_188683FEC(uint64_t a1, void *a2, uint64_t a3)
{
  v38 = a2;
  v6 = *(*(a1 + 80) + 8);
  if (*(v6 + 24))
  {
    *(v6 + 24) = 0;
  }

  else
  {
    objc_msgSend_appendString_(*(a1 + 32), v5, @",");
  }

  objc_msgSend_appendString_(*(a1 + 32), v5, v38);
  objc_msgSend_appendString_(*(a1 + 32), v7, @" ");
  v10 = *(a1 + 32);
  v11 = a3 - 96;
  if (a3 - 96 <= 0x27)
  {
    if (((1 << v11) & 0x7FF) != 0)
    {
LABEL_6:
      objc_msgSend_appendString_(v10, v8, @"INTEGER");
      goto LABEL_16;
    }

    if (((1 << v11) & 0xD000000000) != 0)
    {
      objc_msgSend_appendString_(v10, v8, @"BLOB");
      goto LABEL_16;
    }

    if (((1 << v11) & 0x1800) != 0)
    {
      goto LABEL_15;
    }
  }

  if (a3 > 9u)
  {
    goto LABEL_35;
  }

  if (((1 << a3) & 0x24) != 0)
  {
LABEL_15:
    objc_msgSend_appendString_(v10, v8, @"REAL");
    goto LABEL_16;
  }

  if (((1 << a3) & 0x102) != 0)
  {
    goto LABEL_6;
  }

  if (((1 << a3) & 0x208) != 0)
  {
    objc_msgSend_appendString_(v10, v8, @"STRING");
    goto LABEL_16;
  }

LABEL_35:
  if (a3)
  {
    v26 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v8, v9);
    v27 = [CKSignificantIssue alloc];
    v28 = [CKSourceCodeLocation alloc];
    v30 = objc_msgSend_initWithFilePath_lineNumber_(v28, v29, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/SQLite/CKSQLiteTable.m", 111);
    v32 = objc_msgSend_initWithSourceCodeLocation_format_(v27, v31, v30, @"Unknown type code: %u", a3);
    objc_msgSend_handleSignificantIssue_actions_(v26, v33, v32, 0);

    v35 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v34, @"Unknown type code: %u", a3);
    objc_msgSend_UTF8String(v35, v36, v37);
    _os_crash();
    __break(1u);
    return;
  }

  objc_msgSend_appendString_(v10, v8, @"<missing type placeholder>");
LABEL_16:
  if ((a3 & 0x400) != 0)
  {
    objc_msgSend_appendString_(*(a1 + 32), v12, @" UNIQUE");
  }

  if ((a3 & 0x200) != 0)
  {
    objc_msgSend_appendString_(*(a1 + 32), v12, @" NOT NULL");
  }

  v13 = objc_msgSend_checkConstraintForProperty_info_(*(a1 + 40), v12, v38, a3);
  if (objc_msgSend_count(v13, v14, v15))
  {
    v17 = *(a1 + 32);
    v18 = objc_msgSend_componentsJoinedByString_(v13, v16, @" AND ");
    objc_msgSend_appendFormat_(v17, v19, @" CHECK(%@)", v18);
  }

  if ((a3 & 0x800) != 0)
  {
    objc_msgSend_addObject_(*(a1 + 48), v16, v38);
  }

  if ((*(a1 + 96) & a3) != 0)
  {
    v20 = *(a1 + 56);
    (*(*(a1 + 72) + 16))();
  }

  if ((*(a1 + 100) & a3) != 0)
  {
    v21 = *(a1 + 64);
    (*(*(a1 + 72) + 16))();
  }

  if (a3 == 8)
  {
    v22 = *(*(*(a1 + 88) + 8) + 40);
    if (!v22)
    {
      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v24 = *(*(a1 + 88) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;

      v22 = *(*(*(a1 + 88) + 8) + 40);
    }

    objc_msgSend_addObject_(v22, v16, v38);
  }
}

uint64_t sub_18868432C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  objc_msgSend_appendString_(v4, v6, @", UNIQUE (");
  v7 = *(a1 + 32);
  v9 = objc_msgSend_componentsJoinedByString_(v5, v8, @",");

  objc_msgSend_appendString_(v7, v10, v9);
  v12 = *(a1 + 32);

  return objc_msgSend_appendString_(v12, v11, @""));
}

void sub_1886843BC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = *(a1 + 32);
  v7 = a3;
  v14 = objc_msgSend_stringWithFormat_(v5, v8, @"%@.index_%@", v6, a2);
  objc_msgSend_appendFormat_(*(a1 + 40), v14, @"CREATE INDEX '%@' on '%@' ("), v14, *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = objc_msgSend_componentsJoinedByString_(v7, v10, @",");

  objc_msgSend_appendString_(v9, v12, v11);
  objc_msgSend_appendString_(*(a1 + 40), v13, @";"));
}

void sub_188684558(uint64_t a1, void *a2, char a3)
{
  if (a3 == 8)
  {
    v5 = *(a1 + 32);
    v6 = a2;
    v11 = objc_msgSend_tableForReferenceProperty_(v5, v7, v6);
    v9 = objc_msgSend_referencedObjectTriggerSQLForProperty_inTable_(v11, v8, v6, *(a1 + 32));

    if (v9)
    {
      objc_msgSend_appendString_(*(a1 + 40), v10, v9);
    }
  }
}

void sub_1886848D4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = objc_opt_class();
  v9 = objc_msgSend_propertyInfo_(v7, v8, v6);
  v12 = objc_msgSend_valueForProperty_propertyInfo_inObject_(*(a1 + 32), v10, v6, v9, *(a1 + 40));
  objc_msgSend_setValue_forProperty_propertyInfo_inObject_(*(a1 + 48), v11, v12, v6, a3, *(a1 + 56));
}

void sub_188684C54(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v9 = a2;
  v4 = objc_opt_class();
  v6 = objc_msgSend_propertyInfo_(v4, v5, v9);
  v8 = 40;
  if (!v6)
  {
    v8 = 48;
  }

  objc_msgSend_addObject_(*(a1 + v8), v7, v9);
}

uint64_t sub_188684D24(uint64_t result, const char *a2, char a3)
{
  if (a3 == 8)
  {
    return objc_msgSend_addObject_(*(result + 32), a2, a2);
  }

  return result;
}

void sub_1886858CC(uint64_t a1, void *a2)
{
  v15 = a2;
  v5 = objc_msgSend_predicateForMatchingPrimaryKey(*(a1 + 32), v3, v4);
  objc_msgSend_setSearchPredicate_(v15, v6, v5);
  v9 = objc_msgSend_containsObject_(*(a1 + 40), v7, *(*(a1 + 32) + 48));
  v10 = *(a1 + 40);
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = objc_msgSend_arrayByAddingObject_(v10, v8, *(*(a1 + 32) + 48));
  }

  v13 = v11;
  v14 = v11;
  if (!v11)
  {
    v14 = *(a1 + 40);
  }

  objc_msgSend_setFetchedProperties_(v15, v12, v14);
}

void sub_188685B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_188685B30(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_188685C78;
  v20[3] = &unk_1E70C10C0;
  v21 = *(a1 + 48);
  v6 = objc_msgSend_entriesWithValues_label_setupBlock_(v2, v5, v3, v4, v20);
  v9 = objc_msgSend_nextObject(v6, v7, v8);
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    goto LABEL_4;
  }

  v14 = objc_msgSend_nextObject(v6, v12, v13);

  if (!v14 || (v15 = *(*(a1 + 56) + 8), v16 = *(v15 + 40), *(v15 + 40) = 0, v16, objc_msgSend_noUniqueDatabaseRowErrorIn_(CKPrettyError, v17, *(a1 + 72)), (v18 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_4:
    v18 = objc_msgSend_error(v6, v12, v13);
  }

  return v18;
}

void sub_188685C78(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_msgSend_setLimit_(v5, v3, &unk_1EFA854B8);
  v4 = v5;
  if (v5)
  {
    (*(*(a1 + 32) + 16))();
    v4 = v5;
  }
}

id sub_188686184(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_188686278;
  v12[3] = &unk_1E70C1138;
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 56);
  v8 = objc_msgSend__statementForFetchingEntriesMatchingObject_label_setupBlock_(v2, v7, v3, v4, v12);
  v10 = objc_msgSend__fetchPropertiesUsingStatement_inObject_matchingDBProperties_label_(*(a1 + 32), v9, v8, *(a1 + 40), *(a1 + 56), *(a1 + 64));

  return v10;
}

void sub_188686278(void *a1, void *a2)
{
  v17 = a2;
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = v3;
  v6 = a1[4];
  if (v6)
  {
    objc_msgSend_addObjectsFromArray_(v3, v4, v6);
  }

  else
  {
    v8 = a1[5];
    v9 = objc_opt_class();
    v12 = objc_msgSend_allPropertyNames(v9, v10, v11);
    objc_msgSend_addObjectsFromArray_(v5, v13, v12);
  }

  objc_msgSend_removeObjectsInArray_(v5, v7, a1[6]);
  objc_msgSend_setFetchedProperties_(v17, v14, v5);
  v16 = a1[6];
  if (v16)
  {
    objc_msgSend_setSearchProperties_(v17, v15, v16);
  }

  objc_msgSend_setLimit_(v17, v15, &unk_1EFA854B8);
}

id sub_1886864DC(uint64_t a1, const char *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_188686610;
  v14[3] = &unk_1E70C1160;
  v14[4] = v3;
  v5 = objc_msgSend__statementForFetchingEntriesMatchingObject_label_setupBlock_(v3, a2, v4, off_1EA911010, v14);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v15[0] = v7[6];
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v15, 1);
  v11 = objc_msgSend__fetchPropertiesUsingStatement_inObject_matchingDBProperties_label_(v7, v10, v5, v6, v9, off_1EA911010);

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

void sub_188686610(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = objc_opt_class();
  v8 = objc_msgSend_nonKeyProperties(v5, v6, v7);
  objc_msgSend_setFetchedProperties_(v4, v9, v8);

  v15[0] = *(*(a1 + 32) + 48);
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v10, v15, 1);
  objc_msgSend_setSearchProperties_(v4, v12, v11);

  objc_msgSend_setLimit_(v4, v13, &unk_1EFA854B8);
  v14 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1886869B0(uint64_t result, const char *a2, __int16 a3)
{
  if ((a3 & 0x100) == 0)
  {
    return objc_msgSend_addObject_(*(result + 32), a2, a2);
  }

  return result;
}

void sub_188686BC8(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = a2;
    v14 = objc_msgSend_valueForProperty_propertyInfo_inObject_(v6, v9, v8, a3, v7);
    v11 = objc_msgSend_bindValueColumn_type_value_(*(a1 + 48), v10, v8, a3, v14);

    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

id sub_188686D58(uint64_t a1, const char *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_188686F80;
  v27[3] = &unk_1E70C11D8;
  v27[4] = v3;
  v4 = objc_msgSend_compiledStatementWithLabel_creationBlock_(v3, a2, off_1EA911040, v27);
  v6 = objc_msgSend__performInsertOrUpdateStatement_usingObject_(*(a1 + 32), v5, v4, *(a1 + 40));
  if (objc_msgSend_logOperations(*(a1 + 32), v7, v8))
  {
    v11 = objc_msgSend_db(*(a1 + 32), v9, v10);
    v14 = objc_msgSend_changeCount(v11, v12, v13);

    v15 = *(a1 + 32);
    v16 = objc_opt_class();
    v18 = objc_msgSend_descriptionOfEntry_(v16, v17, *(a1 + 40));
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v19 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
    {
      v20 = *(a1 + 32);
      v21 = v19;
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = *(a1 + 32);
      *buf = 138544130;
      v29 = v23;
      v30 = 2048;
      v31 = v24;
      v32 = 2114;
      v33 = v18;
      v34 = 2048;
      v35 = v14;
      _os_log_impl(&dword_1883EA000, v21, OS_LOG_TYPE_INFO, "%{public}@(%p): INSERT (%{public}@) inserted: %lld", buf, 0x2Au);
    }
  }

  objc_msgSend_resetAndClearBindings(v4, v9, v10);
  if (v6)
  {
    sub_18868114C(v6, *(a1 + 32), *(a1 + 48));
  }

  v25 = *MEMORY[0x1E69E9840];

  return v6;
}

id sub_188686F80(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v6 = objc_msgSend_allPropertyNames(v3, v4, v5);
  v8 = objc_msgSend_statementForInserting_inTable_(CKSQLiteCompiledStatement, v7, v6, *(a1 + 32));

  return v8;
}

id sub_1886870DC(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v30 = MEMORY[0x1E69E9820];
  v31 = 3221225472;
  v32 = sub_188687348;
  v33 = &unk_1E70C1228;
  v34 = v2;
  v35 = *(a1 + 40);
  v5 = objc_msgSend_compiledStatementWithLabel_creationBlock_(v2, v4, v3, &v30);
  v7 = objc_msgSend__performInsertOrUpdateStatement_usingObject_(*(a1 + 32), v6, v5, *(a1 + 48), v30, v31, v32, v33, v34);
  if (objc_msgSend_logOperations(*(a1 + 32), v8, v9))
  {
    v12 = objc_msgSend_db(*(a1 + 32), v10, v11);
    v15 = objc_msgSend_changeCount(v12, v13, v14);

    v16 = *(a1 + 32);
    v17 = objc_opt_class();
    v19 = objc_msgSend_descriptionOfEntry_(v17, v18, *(a1 + 48));
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v20 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
    {
      v21 = *(a1 + 32);
      v22 = v20;
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = *(a1 + 32);
      v27 = sub_188680BFC(*(a1 + 56), v26);
      *buf = 138544386;
      v37 = v24;
      v38 = 2048;
      v39 = v25;
      v40 = 2114;
      v41 = v19;
      v42 = 2112;
      v43 = v27;
      v44 = 2048;
      v45 = v15;
      _os_log_impl(&dword_1883EA000, v22, OS_LOG_TYPE_INFO, "%{public}@(%p): UPSERT (%{public}@) label: %@ inserted/modified: %lld", buf, 0x34u);
    }
  }

  objc_msgSend_resetAndClearBindings(v5, v10, v11);
  if (v7)
  {
    sub_18868114C(v7, *(a1 + 32), *(a1 + 64));
  }

  v28 = *MEMORY[0x1E69E9840];

  return v7;
}

id sub_188687348(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v7 = objc_msgSend_allPropertyNames(v3, v4, v5);
  v8 = *(a1 + 32);
  if (*(a1 + 40))
  {
    objc_msgSend_statementForInserting_orUpdating_inTable_(CKSQLiteCompiledStatement, v6, v7, *(a1 + 40), v8);
  }

  else
  {
    objc_msgSend_statementForInserting_orUpdating_inTable_(CKSQLiteCompiledStatement, v6, v7, v7, v8);
  }
  v9 = ;

  return v9;
}

void sub_188687A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_188687A24(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = sub_188687C80;
  v29[3] = &unk_1E70C1228;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v30 = v4;
  v31 = v5;
  v7 = objc_msgSend_compiledStatementWithLabel_creationBlock_(v3, v6, v2, v29);
  v28 = 0;
  v9 = objc_msgSend_step_(v7, v8, &v28);
  v10 = v28;
  v13 = v10;
  if (v9 && !v10)
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_188687C94;
    v27[3] = &unk_1E70C1250;
    v27[4] = *(a1 + 48);
    objc_msgSend_enumerateResultColumnsWithBlock_(v7, v11, v27);
  }

  if (objc_msgSend_logOperations(*(a1 + 32), v11, v12) && !v13)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v16 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 32);
      v18 = v16;
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = *(a1 + 32);
      v22 = *(a1 + 40);
      v23 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138544130;
      v33 = v20;
      v34 = 2048;
      v35 = v21;
      v36 = 2114;
      v37 = v22;
      v38 = 2114;
      v39 = v23;
      _os_log_impl(&dword_1883EA000, v18, OS_LOG_TYPE_INFO, "%{public}@(%p): FETCH MIN(%{public}@) fetched: %{public}@", buf, 0x2Au);
    }
  }

  objc_msgSend_resetAndClearBindings(v7, v14, v15);
  v24 = v13;

  v25 = *MEMORY[0x1E69E9840];
  return v13;
}

void sub_188687E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_188687E2C(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = sub_188688088;
  v29[3] = &unk_1E70C1228;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v30 = v4;
  v31 = v5;
  v7 = objc_msgSend_compiledStatementWithLabel_creationBlock_(v3, v6, v2, v29);
  v28 = 0;
  v9 = objc_msgSend_step_(v7, v8, &v28);
  v10 = v28;
  v13 = v10;
  if (v9 && !v10)
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_18868809C;
    v27[3] = &unk_1E70C1250;
    v27[4] = *(a1 + 48);
    objc_msgSend_enumerateResultColumnsWithBlock_(v7, v11, v27);
  }

  if (objc_msgSend_logOperations(*(a1 + 32), v11, v12) && !v13)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v16 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 32);
      v18 = v16;
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = *(a1 + 32);
      v22 = *(a1 + 40);
      v23 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138544130;
      v33 = v20;
      v34 = 2048;
      v35 = v21;
      v36 = 2114;
      v37 = v22;
      v38 = 2114;
      v39 = v23;
      _os_log_impl(&dword_1883EA000, v18, OS_LOG_TYPE_INFO, "%{public}@(%p): FETCH MAX(%{public}@) fetched: %{public}@", buf, 0x2Au);
    }
  }

  objc_msgSend_resetAndClearBindings(v7, v14, v15);
  v24 = v13;

  v25 = *MEMORY[0x1E69E9840];
  return v13;
}

void sub_18868822C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_188688244(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = sub_188688554;
  v34[3] = &unk_1E70C12A0;
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v35 = v5;
  v36 = v6;
  v8 = objc_msgSend__statementForFetchingEntriesMatchingObject_label_setupBlock_(v2, v7, v3, v4, v34);
  objc_msgSend_overridePropertyInfoForProperty_newResultType_(v8, v9, *(a1 + 48), 1);
  v33 = 0;
  LODWORD(v4) = objc_msgSend_step_(v8, v10, &v33);
  v11 = v33;
  v14 = v11;
  if (v4 && !v11)
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = sub_188688638;
    v32[3] = &unk_1E70C1250;
    v32[4] = *(a1 + 56);
    objc_msgSend_enumerateResultColumnsWithBlock_(v8, v12, v32);
  }

  if (objc_msgSend_logOperations(*(a1 + 32), v12, v13))
  {
    v18 = objc_msgSend_searchBindingsDescription(v8, v15, v16);
    if (v14)
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v17, @"<none>, Error = %@", v14);
    }

    else
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v17, @"referenceID = %@", *(*(*(a1 + 56) + 8) + 40));
    }
    v19 = ;
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v20 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
    {
      v21 = *(a1 + 32);
      v22 = v20;
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = *(a1 + 32);
      v26 = *(a1 + 48);
      v28 = sub_188680BFC(*(a1 + 64), v27);
      *buf = 138544642;
      v38 = v24;
      v39 = 2048;
      v40 = v25;
      v41 = 2114;
      v42 = v26;
      v43 = 2114;
      v44 = v18;
      v45 = 2114;
      v46 = v28;
      v47 = 2114;
      v48 = v19;
      _os_log_impl(&dword_1883EA000, v22, OS_LOG_TYPE_INFO, "%{public}@(%p): FETCH (%{public}@) WHERE %{public}@, label: %{public}@ fetched: %{public}@", buf, 0x3Eu);
    }
  }

  objc_msgSend_resetAndClearBindings(v8, v15, v16);
  if (v14)
  {
    sub_18868114C(v14, *(a1 + 32), *(a1 + 72));
  }

  v29 = v14;

  v30 = *MEMORY[0x1E69E9840];
  return v14;
}

void sub_188688554(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v14[0] = *(a1 + 32);
  v3 = MEMORY[0x1E695DEC8];
  v4 = a2;
  v6 = objc_msgSend_arrayWithObjects_count_(v3, v5, v14, 1);
  objc_msgSend_setFetchedProperties_(v4, v7, v6);

  v13 = *(*(a1 + 40) + 48);
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, &v13, 1);
  objc_msgSend_setSearchProperties_(v4, v10, v9);

  objc_msgSend_setLimit_(v4, v11, &unk_1EFA854D0);
  v12 = *MEMORY[0x1E69E9840];
}

id sub_188688770(uint64_t a1)
{
  v2 = objc_alloc_init(CKSQLiteTableSearchEnumeratorSetupHelper);
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v7 = objc_msgSend_allPropertyNames(v4, v5, v6);
  objc_msgSend_setFetchedProperties_(v2, v8, v7);
  objc_msgSend_setSearchProperties_(v2, v9, v7);
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v2);
  }

  v13 = *(a1 + 32);
  v14 = objc_msgSend_fetchedProperties(v2, v10, v11);
  v17 = objc_msgSend_distinct(v2, v15, v16);
  v20 = objc_msgSend_searchProperties(v2, v18, v19);
  v22 = objc_msgSend_statementForFetchingProperties_distinct_inEntriesMatchingColumns_(v13, v21, v14, v17, v20);

  objc_msgSend_setupStatement_(v2, v23, v22);

  return v22;
}

id sub_188688990(uint64_t a1, const char *a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  objc_msgSend_entryEnumerator(*(a1 + 32), a2, a3);
  v26 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = v25 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v22, v27, 16);
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = (*(*(a1 + 40) + 16))(*(a1 + 40));
        if (v12)
        {
          v19 = v12;
          objc_autoreleasePoolPop(v11);

          goto LABEL_12;
        }

        v13 = v26;
        objc_autoreleasePoolPop(v11);
        if (v13)
        {
          goto LABEL_10;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v14, &v22, v27, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_10:

  v19 = objc_msgSend_error(v4, v15, v16, v22);
LABEL_12:
  objc_msgSend_invalidate(v4, v17, v18, v22);

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

id sub_188688D7C(uint64_t a1)
{
  v83 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = sub_1886891D4;
  v66[3] = &unk_1E70C1318;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v67 = v4;
  v68 = v5;
  v69 = *(a1 + 64);
  v7 = objc_msgSend_compiledStatementWithLabel_creationBlock_(v3, v6, v2, v66);
  v65 = 0;
  LODWORD(v3) = objc_msgSend_step_(v7, v8, &v65);
  v9 = v65;
  v12 = v9;
  if (v3 && !v9)
  {
    do
    {
      v13 = *(a1 + 32);
      v64 = 0;
      v14 = objc_msgSend_newEntryObjectFromStatement_error_(v13, v10, v7, &v64);
      v16 = v64;
      if (v14)
      {
        objc_msgSend_addObject_(*(a1 + 48), v15, v14);
      }

      v65 = v16;
      v18 = objc_msgSend_step_(v7, v17, &v65);
      v12 = v65;
    }

    while (v18 && !v12);
  }

  if (objc_msgSend_logOperations(*(a1 + 32), v10, v11))
  {
    v58 = objc_msgSend_fetchedColumns(v7, v19, v20);
    v22 = objc_msgSend_componentsJoinedByString_(v58, v21, @", ");
    v25 = objc_msgSend_searchBindingsDescription(v7, v23, v24);
    v26 = *(a1 + 32);
    v57 = objc_opt_class();
    v59 = NSStringFromClass(v57);
    v27 = &ck_log_initialization_predicate;
    v55 = v12;
    v56 = v7;
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v28 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
    {
      v29 = *(a1 + 32);
      v30 = *(a1 + 56);
      v31 = v28;
      v33 = sub_188680BFC(v30, v32);
      v36 = objc_msgSend_count(*(a1 + 48), v34, v35);
      *buf = 138544642;
      v72 = v59;
      v73 = 2048;
      v74 = v29;
      v75 = 2114;
      v76 = v22;
      v77 = 2114;
      v78 = v25;
      v79 = 2114;
      v80 = v33;
      v81 = 2048;
      v82 = v36;
      _os_log_impl(&dword_1883EA000, v31, OS_LOG_TYPE_INFO, "%{public}@(%p): FETCH (%{public}@) WHERE %{public}@, label: %{public}@ fetched %ld entries:", buf, 0x3Eu);
    }

    v53 = v25;
    v54 = v22;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v37 = *(a1 + 48);
    v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v60, v70, 16);
    if (v39)
    {
      v40 = v39;
      v41 = *v61;
      do
      {
        v42 = 0;
        do
        {
          if (*v61 != v41)
          {
            objc_enumerationMutation(v37);
          }

          v43 = *(*(&v60 + 1) + 8 * v42);
          if (*v27 != -1)
          {
            dispatch_once(v27, ck_log_initialization_block);
          }

          v44 = ck_log_facility_sql;
          if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
          {
            v46 = v27;
            v47 = *(a1 + 32);
            v48 = v44;
            v50 = objc_msgSend_descriptionOfProperties_from_(v57, v49, v58, v43, v53, v54);
            *buf = 138543874;
            v72 = v59;
            v73 = 2048;
            v74 = v47;
            v27 = v46;
            v75 = 2114;
            v76 = v50;
            _os_log_impl(&dword_1883EA000, v48, OS_LOG_TYPE_INFO, "%{public}@(%p):    %{public}@", buf, 0x20u);
          }

          ++v42;
        }

        while (v40 != v42);
        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v45, &v60, v70, 16);
      }

      while (v40);
    }

    v12 = v55;
    v7 = v56;
  }

  objc_msgSend_resetAndClearBindings(v7, v19, v20, v53);

  v51 = *MEMORY[0x1E69E9840];

  return v12;
}

id sub_1886891D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = objc_opt_class();
    v3 = objc_msgSend_allPropertyNames(v6, v7, v8);
  }

  v9 = v3;
  v10 = objc_msgSend_statementForFetchingProperties_distinct_inEntriesMatchingColumns_(*(a1 + 40), v4, v3, *(a1 + 48), 0);

  return v10;
}

void sub_1886893C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1886893E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1886894DC;
  v14[3] = &unk_1E70C1430;
  v14[4] = v2;
  v15 = *(a1 + 48);
  v5 = objc_msgSend_compiledStatementWithLabel_creationBlock_(v2, v4, v3, v14);
  objc_msgSend_setSearchValues_(v5, v6, *(a1 + 40));
  v13 = 0;
  LOBYTE(v3) = objc_msgSend_step_(v5, v7, &v13);
  v8 = v13;
  *(*(*(a1 + 56) + 8) + 24) = v3;
  objc_msgSend_resetAndClearBindings(v5, v9, v10);
  v11 = v8;

  return v8;
}

id sub_1886894DC(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_statementForFetchingColumns_inTable_(CKSQLiteCompiledStatement, a2, 0, *(a1 + 32));
  objc_msgSend_addPredicateToStatement_predicate_(*(a1 + 32), v4, v3, *(a1 + 40));
  objc_msgSend_setLimit_(v3, v5, &unk_1EFA854D0);

  return v3;
}

void sub_188689758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_188689770(uint64_t a1, const char *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_18868999C;
  v23[3] = &unk_1E70C11D8;
  v23[4] = v3;
  v4 = objc_msgSend_compiledStatementWithLabel_creationBlock_(v3, a2, off_1EA9110E8, v23);
  v22 = 0;
  objc_msgSend_step_(v4, v5, &v22);
  v8 = v22;
  if (!v8)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1886899B0;
    v21[3] = &unk_1E70C1250;
    v21[4] = *(a1 + 40);
    objc_msgSend_enumerateResultColumnsWithBlock_(v4, v6, v21);
  }

  if (objc_msgSend_logOperations(*(a1 + 32), v6, v7))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v11 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      v13 = v11;
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = *(a1 + 32);
      v17 = *(*(*(a1 + 40) + 8) + 24);
      *buf = 138543874;
      v25 = v15;
      v26 = 2048;
      v27 = v16;
      v28 = 2048;
      v29 = v17;
      _os_log_impl(&dword_1883EA000, v13, OS_LOG_TYPE_INFO, "%{public}@(%p): SELECT COUNT (*) returns: %lld", buf, 0x20u);
    }
  }

  objc_msgSend_resetAndClearBindings(v4, v9, v10);
  v18 = v8;

  v19 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t sub_1886899B0(uint64_t a1, const char *a2, uint64_t a3, void *a4)
{
  result = objc_msgSend_unsignedLongValue(a4, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_188689B0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    v11 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v9, v10);
    v12 = [CKSignificantIssue alloc];
    v13 = [CKSourceCodeLocation alloc];
    v15 = objc_msgSend_initWithFilePath_lineNumber_(v13, v14, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/SQLite/CKSQLiteTable.m", 2065);
    v17 = objc_msgSend_initWithSourceCodeLocation_format_(v12, v16, v15, @"Exception constructing predicate: %@");
    objc_msgSend_handleSignificantIssue_actions_(v11, v18, v17, 0);

    v20 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v19, @"Exception constructing predicate: %@");
    objc_msgSend_UTF8String(v20, v21, v22);
    _os_crash();
    __break(1u);
    JUMPOUT(0x188689BD4);
  }

  _Unwind_Resume(exception_object);
}

void sub_188689D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_188689D9C(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 80);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = sub_18868A064;
  v39[3] = &unk_1E70C1390;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v40 = v4;
  v41 = v5;
  v42 = *(a1 + 64);
  v7 = objc_msgSend_compiledStatementWithLabel_creationBlock_(v3, v6, v2, v39);
  objc_msgSend_setSearchValues_(v7, v8, *(a1 + 48));
  v12 = objc_msgSend__bindProperties_valueObject_inStatement_includePrimaryKey_(*(a1 + 32), v9, *(a1 + 40), *(a1 + 56), v7, 0);
  if (!v12)
  {
    v13 = objc_msgSend_db(*(a1 + 32), v10, v11);
    v38 = 0;
    objc_msgSend_step_(v7, v14, &v38);
    v12 = v38;
    if (!v12)
    {
      *(*(*(a1 + 72) + 8) + 24) = objc_msgSend_changeCount(v13, v15, v16);
    }
  }

  if (objc_msgSend_logOperations(*(a1 + 32), v10, v11))
  {
    v19 = *(a1 + 32);
    v20 = objc_opt_class();
    v22 = objc_msgSend_descriptionOfProperties_from_(v20, v21, *(a1 + 40), *(a1 + 56));
    v25 = objc_msgSend_searchBindingsDescription(v7, v23, v24);
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v26 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
    {
      v27 = *(a1 + 32);
      v28 = v26;
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = *(a1 + 32);
      v33 = sub_188680BFC(*(a1 + 80), v32);
      v34 = *(*(*(a1 + 72) + 8) + 24);
      *buf = 138544642;
      v44 = v30;
      v45 = 2048;
      v46 = v31;
      v47 = 2114;
      v48 = v22;
      v49 = 2114;
      v50 = v25;
      v51 = 2114;
      v52 = v33;
      v53 = 2048;
      v54 = v34;
      _os_log_impl(&dword_1883EA000, v28, OS_LOG_TYPE_INFO, "%{public}@(%p): UPDATE SET (%{public}@) WHERE %{public}@, label: %{public}@, changeCount: %lld", buf, 0x3Eu);
    }
  }

  objc_msgSend_resetAndClearBindings(v7, v17, v18);
  v35 = v12;

  v36 = *MEMORY[0x1E69E9840];
  return v12;
}

id sub_18868A064(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_statementForUpdatingColumns_inTable_(CKSQLiteCompiledStatement, a2, *(a1 + 32), *(a1 + 40));
  objc_msgSend_addPredicateToStatement_predicate_(*(a1 + 40), v4, v3, *(a1 + 48));

  return v3;
}

void sub_18868A204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_18868A21C(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = sub_18868A578;
  v45[3] = &unk_1E70C1430;
  v45[4] = v2;
  v46 = *(a1 + 48);
  v5 = objc_msgSend_compiledStatementWithLabel_creationBlock_(v2, v4, v3, v45);
  objc_msgSend_setSearchValues_(v5, v6, *(a1 + 40));
  v44 = 0;
  v8 = objc_msgSend_step_(v5, v7, &v44);
  v9 = v44;
  v12 = v9;
  v13 = 0;
  v14 = v9 == 0;
  if (v8 && !v9)
  {
    v13 = 0;
    do
    {
      if (!v13)
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      v15 = objc_msgSend_fetchedValues(v5, v10, v11);
      objc_msgSend_addObject_(v13, v16, v15);

      v44 = 0;
      v18 = objc_msgSend_step_(v5, v17, &v44);
      v19 = v44;
      v12 = v19;
      v14 = v19 == 0;
    }

    while (v18 && !v19);
  }

  if (v14)
  {
    v20 = objc_msgSend_db(*(a1 + 32), v10, v11);
    *(*(*(a1 + 56) + 8) + 24) = objc_msgSend_changeCount(v20, v21, v22);
  }

  if (objc_msgSend_logOperations(*(a1 + 32), v10, v11))
  {
    v25 = objc_msgSend_searchBindingsDescription(v5, v23, v24);
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v26 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
    {
      v27 = *(a1 + 32);
      v28 = v26;
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = *(a1 + 32);
      v33 = sub_188680BFC(*(a1 + 64), v32);
      v34 = *(*(*(a1 + 56) + 8) + 24);
      *buf = 138544386;
      v48 = v30;
      v49 = 2048;
      v50 = v31;
      v51 = 2114;
      v52 = v25;
      v53 = 2114;
      v54 = v33;
      v55 = 2048;
      v56 = v34;
      _os_log_impl(&dword_1883EA000, v28, OS_LOG_TYPE_INFO, "%{public}@(%p): DELETE WHERE %{public}@, label: %{public}@, removed %lld", buf, 0x34u);
    }
  }

  objc_msgSend_resetAndClearBindings(v5, v23, v24);
  if (v14)
  {
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = sub_18868A66C;
    v41[3] = &unk_1E70C1408;
    v35 = v5;
    v36 = *(a1 + 32);
    v42 = v35;
    v43 = v36;
    objc_msgSend_enumerateObjectsUsingBlock_(v13, v37, v41);
  }

  v38 = v12;

  v39 = *MEMORY[0x1E69E9840];
  return v12;
}

id sub_18868A578(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_objectReferenceProperties(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_statementForDeletingInTable_returning_(CKSQLiteCompiledStatement, v5, *(a1 + 32), v4);
  objc_msgSend_addPredicateToStatement_predicate_(*(a1 + 32), v7, v6, *(a1 + 40));
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_18868A65C;
  v11[3] = &unk_1E70C13E0;
  v8 = v6;
  v12 = v8;
  objc_msgSend_enumerateObjectsUsingBlock_(v4, v9, v11);

  return v8;
}

uint64_t sub_18868A66C(uint64_t a1, const char *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18868A6E4;
  v4[3] = &unk_1E70C0A30;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return objc_msgSend_enumerateResultColumnsWithFetchedValues_block_(v2, a2, a2, v4);
}

void sub_18868A6E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (v6)
  {
    v11 = v6;
    v8 = objc_msgSend_tableForReferenceProperty_(*(a1 + 32), v7, a2);
    v10 = objc_msgSend_referenceWasDeleted_(v8, v9, v11);

    v6 = v11;
  }
}

id sub_18868A868(uint64_t a1)
{
  v5 = objc_alloc_init(CKSQLiteTableSearchEnumeratorSetupHelper);
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }

  v7 = objc_msgSend_fetchedProperties(v5, v3, v4);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = objc_opt_class();
    v9 = objc_msgSend_allPropertyNames(v11, v12, v13);
  }

  v14 = v9;

  v16 = objc_msgSend_statementForFetchingColumns_inTable_(CKSQLiteCompiledStatement, v15, v14, *(a1 + 32));
  v19 = objc_msgSend_searchPredicate(v5, v17, v18);
  v21 = v19;
  v22 = *(a1 + 32);
  if (v19)
  {
    v23 = v26;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_18868A9D8;
    v26[3] = &unk_1E70BC1F0;
    v1 = &v27;
    v27 = v19;
  }

  else
  {
    v23 = 0;
  }

  objc_msgSend_addPredicateToStatement_predicate_(v22, v20, v16, v23);
  objc_msgSend_setupStatement_(v5, v24, v16);
  if (v21)
  {
  }

  return v16;
}

void sub_18868AB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_18868AB40(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_18868AC88;
  v15[3] = &unk_1E70C1430;
  v15[4] = v2;
  v16 = *(a1 + 48);
  v5 = objc_msgSend_compiledStatementWithLabel_creationBlock_(v2, v4, v3, v15);
  objc_msgSend_setSearchValues_(v5, v6, *(a1 + 40));
  v14 = 0;
  objc_msgSend_step_(v5, v7, &v14);
  v10 = v14;
  if (!v10)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_18868ACE0;
    v13[3] = &unk_1E70C1250;
    v13[4] = *(a1 + 56);
    objc_msgSend_enumerateResultColumnsWithBlock_(v5, v8, v13);
  }

  objc_msgSend_resetAndClearBindings(v5, v8, v9);
  v11 = v10;

  return v10;
}

id sub_18868AC88(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_statementForCountingRowsInTable_(CKSQLiteCompiledStatement, a2, *(a1 + 32));
  objc_msgSend_addPredicateToStatement_predicate_(*(a1 + 32), v4, v3, *(a1 + 40));

  return v3;
}

uint64_t sub_18868ACE0(uint64_t a1, const char *a2, uint64_t a3, void *a4)
{
  result = objc_msgSend_unsignedLongValue(a4, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_18868AE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_18868AEA4(uint64_t a1)
{
  v2 = *(a1 + 72);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_18868AFFC;
  v17[3] = &unk_1E70C1390;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v18 = v4;
  v19 = v5;
  v20 = *(a1 + 56);
  v7 = objc_msgSend_compiledStatementWithLabel_creationBlock_(v3, v6, v2, v17);
  objc_msgSend_setSearchValues_(v7, v8, *(a1 + 48));
  v16 = 0;
  objc_msgSend_step_(v7, v9, &v16);
  v12 = v16;
  if (!v12)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_18868B054;
    v15[3] = &unk_1E70C1250;
    v15[4] = *(a1 + 64);
    objc_msgSend_enumerateResultColumnsWithBlock_(v7, v10, v15);
  }

  objc_msgSend_resetAndClearBindings(v7, v10, v11);
  v13 = v12;

  return v12;
}

id sub_18868AFFC(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_statementForSummingColumn_inTable_(CKSQLiteCompiledStatement, a2, *(a1 + 32), *(a1 + 40));
  objc_msgSend_addPredicateToStatement_predicate_(*(a1 + 40), v4, v3, *(a1 + 48));

  return v3;
}

uint64_t sub_18868B054(uint64_t a1, const char *a2, uint64_t a3, void *a4)
{
  result = objc_msgSend_longLongValue(a4, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_18868B324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_18868B348(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 72);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = sub_18868B60C;
  v31[3] = &unk_1E70C1390;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v32 = v4;
  v33 = v5;
  v34 = *(a1 + 56);
  v7 = objc_msgSend_compiledStatementWithLabel_creationBlock_(v3, v6, v2, v31);
  objc_msgSend_setSearchValues_(v7, v8, *(a1 + 48));
  do
  {
    v30 = 0;
    v10 = objc_msgSend_step_(v7, v9, &v30);
    v12 = v30;
    if (!v10)
    {
      break;
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = sub_18868B664;
    v29[3] = &unk_1E70C1250;
    v29[4] = *(a1 + 64);
    objc_msgSend_enumerateResultColumnsWithBlock_(v7, v9, v29);
  }

  while (!v12);
  if (objc_msgSend_logOperations(*(a1 + 32), v9, v11))
  {
    v15 = objc_msgSend_searchBindingsDescription(v7, v13, v14);
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v16 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 32);
      v18 = v16;
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = *(a1 + 32);
      v22 = *(a1 + 40);
      v24 = sub_188680BFC(*(a1 + 72), v23);
      v25 = *(*(*(a1 + 64) + 8) + 24);
      *buf = 138544642;
      v36 = v20;
      v37 = 2048;
      v38 = v21;
      v39 = 2114;
      v40 = v22;
      v41 = 2114;
      v42 = v15;
      v43 = 2114;
      v44 = v24;
      v45 = 2048;
      v46 = v25;
      _os_log_impl(&dword_1883EA000, v18, OS_LOG_TYPE_INFO, "%{public}@(%p): SELECT LENGTH (%{public}@) WHERE %{public}@, label: %{public}@, size: %lld", buf, 0x3Eu);
    }
  }

  objc_msgSend_resetAndClearBindings(v7, v13, v14);
  v26 = v12;

  v27 = *MEMORY[0x1E69E9840];
  return v12;
}

id sub_18868B60C(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_statementForSizingColumn_inTable_(CKSQLiteCompiledStatement, a2, *(a1 + 32), *(a1 + 40));
  objc_msgSend_addPredicateToStatement_predicate_(*(a1 + 40), v4, v3, *(a1 + 48));

  return v3;
}

uint64_t sub_18868B664(uint64_t a1, const char *a2, uint64_t a3, void *a4)
{
  result = objc_msgSend_longValue(a4, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_18868B860(id *a1)
{
  v2 = a1[4];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_18868B944;
  v7[3] = &unk_1E70C14A8;
  v8 = v2;
  v3 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[4];
  v4 = v2;
  objc_msgSend_addTransactionCompletionHandler_(v3, v5, v7);

  return 0;
}

void sub_18868B944(id *a1, uint64_t a2)
{
  if (!a2)
  {
    v17 = v2;
    v18 = v3;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_18868BA40;
    v14[3] = &unk_1E70C1480;
    v5 = a1[4];
    v6 = a1[5];
    v7 = a1[6];
    v8 = a1[4];
    v9 = a1[7];
    *&v10 = v8;
    *(&v10 + 1) = v9;
    *&v11 = v6;
    *(&v11 + 1) = v7;
    v15 = v11;
    v16 = v10;
    v13 = objc_msgSend_performDatabaseTransactionWithoutForeignKeyConstraints_(v5, v12, v14);
  }
}

uint64_t sub_18868BA40(uint64_t a1)
{
  v60 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_sql;
  if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *buf = 138543618;
    v57 = v5;
    v58 = 2112;
    v59 = v6;
    _os_log_impl(&dword_1883EA000, v2, OS_LOG_TYPE_INFO, "Deleting table group: %{public}@, groupID = %@", buf, 0x16u);
  }

  v7 = objc_msgSend_tocTableGroup(*(a1 + 48), v3, v4);
  v10 = objc_msgSend_tocTable(v7, v8, v9);
  v46 = v7;
  v13 = objc_msgSend_tocTableGroupTable(v7, v11, v12);
  v14 = *(a1 + 40);
  v52 = 0;
  v16 = objc_msgSend_tocEntriesWithGroupID_error_(v10, v15, v14, &v52);
  v17 = v52;
  if (v17)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v18 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v57 = v17;
      _os_log_error_impl(&dword_1883EA000, v18, OS_LOG_TYPE_ERROR, "Error fetching toc entries for table delete: %@", buf, 0xCu);
    }
  }

  v45 = v13;
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  objc_msgSend_flushCompiledStatementCache(CKSQLiteTable, v20, v21);
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v22 = v16;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v48, v55, 16);
  if (v24)
  {
    v27 = v24;
    v28 = *v49;
    do
    {
      v29 = 0;
      v30 = v17;
      do
      {
        if (*v49 != v28)
        {
          objc_enumerationMutation(v22);
        }

        v31 = objc_msgSend_dbTableName(*(*(&v48 + 1) + 8 * v29), v25, v26);
        v17 = objc_msgSend_dropTable_(*(a1 + 56), v32, v31);

        objc_msgSend_addObject_(v19, v33, v31);
        ++v29;
        v30 = v17;
      }

      while (v27 != v29);
      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v48, v55, 16);
    }

    while (v27);
  }

  v34 = *(a1 + 40);
  v53 = @"GROUPID";
  v54 = v34;
  v36 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v35, &v54, &v53, 1);
  v47 = 0;
  objc_msgSend_deleteEntriesMatching_label_error_predicate_(v10, v37, v36, 0, &v47, &unk_1EFA30150);
  v39 = v47;
  if (v39)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v40 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v57 = v39;
      _os_log_error_impl(&dword_1883EA000, v40, OS_LOG_TYPE_ERROR, "Error deleting toc entries for table delete: %@", buf, 0xCu);
    }
  }

  v41 = objc_msgSend_deletePrimaryKeyValue_(v45, v38, *(a1 + 40));

  if (v41)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v42 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v57 = v41;
      _os_log_error_impl(&dword_1883EA000, v42, OS_LOG_TYPE_ERROR, "Error deleting table group table: %@", buf, 0xCu);
    }
  }

  v43 = *MEMORY[0x1E69E9840];
  return 0;
}

id sub_18868C05C(uint64_t a1, const char *a2, uint64_t a3)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_flags(*(a1 + 32), a2, a3);
  v5 = MEMORY[0x1E696AD98];
  v8 = objc_msgSend_unsignedLongLongValue(v4, v6, v7);
  v10 = objc_msgSend_numberWithUnsignedLongLong_(v5, v9, *(a1 + 48) | v8);
  objc_msgSend_setFlags_(*(a1 + 32), v11, v10);

  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = sub_18868C1F4;
  v30 = &unk_1E70BE848;
  v12 = *(a1 + 40);
  v31 = *(a1 + 32);
  v32 = v4;
  v13 = v4;
  objc_msgSend_addTransactionCompletionHandler_(v12, v14, &v27);
  v17 = objc_msgSend_tocTableGroup(*(a1 + 40), v15, v16, v27, v28, v29, v30, v31);
  v20 = objc_msgSend_tocTableGroupTable(v17, v18, v19);
  v33[0] = CKSQLiteTOCTableGroupTableFlagsName;
  v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v33, 1);
  v24 = objc_msgSend_updateProperties_usingObject_label_(v20, v23, v22, *(a1 + 32), 0);

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

uint64_t sub_18868C1F4(uint64_t result, const char *a2)
{
  if (a2)
  {
    return objc_msgSend_setFlags_(*(result + 32), a2, *(result + 40));
  }

  return result;
}

id sub_18868C2B8(uint64_t a1, const char *a2, uint64_t a3)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_flags(*(a1 + 32), a2, a3);
  v5 = MEMORY[0x1E696AD98];
  v8 = objc_msgSend_unsignedLongLongValue(v4, v6, v7);
  v10 = objc_msgSend_numberWithUnsignedLongLong_(v5, v9, v8 & ~*(a1 + 48));
  objc_msgSend_setFlags_(*(a1 + 32), v11, v10);

  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = sub_18868C450;
  v30 = &unk_1E70BE848;
  v12 = *(a1 + 40);
  v31 = *(a1 + 32);
  v32 = v4;
  v13 = v4;
  objc_msgSend_addTransactionCompletionHandler_(v12, v14, &v27);
  v17 = objc_msgSend_tocTableGroup(*(a1 + 40), v15, v16, v27, v28, v29, v30, v31);
  v20 = objc_msgSend_tocTableGroupTable(v17, v18, v19);
  v33[0] = CKSQLiteTOCTableGroupTableFlagsName;
  v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v33, 1);
  v24 = objc_msgSend_updateProperties_usingObject_label_(v20, v23, v22, *(a1 + 32), 0);

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

uint64_t sub_18868C450(uint64_t result, const char *a2)
{
  if (a2)
  {
    return objc_msgSend_setFlags_(*(result + 32), a2, *(result + 40));
  }

  return result;
}

void sub_18868C4E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v1[1].__sig = 0;
    pthread_mutex_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_18868C878(void **a1)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1883EE21C;
  v27 = sub_1883EF7B4;
  v28 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_18868CA24;
  v20[3] = &unk_1E70C14D0;
  v22 = &v23;
  v2 = a1[4];
  v21 = a1[5];
  objc_msgSend_usingTableGroupCachePerformBlock_(v2, v3, v20);
  v5 = v24[5];
  if (v5)
  {
    v6 = objc_msgSend_purgeGroup_(a1[6], v4, v5);
  }

  else
  {
    v7 = objc_msgSend_tocTableGroup(a1[4], v4, 0);
    v10 = objc_msgSend_tocTableGroupTable(v7, v8, v9);
    v11 = a1[5];
    v19 = 0;
    v13 = objc_msgSend_entryWithGroupName_error_(v10, v12, v11, &v19);
    v14 = v19;
    v16 = objc_msgSend_setFlag_database_(v13, v15, 2, a1[4]);
    objc_msgSend_deleteTables_(v13, v17, a1[4]);
  }

  _Block_object_dispose(&v23, 8);
  return 0;
}

void sub_18868CA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18868CA24(uint64_t a1, void *a2)
{
  v3 = objc_msgSend_objectForKey_(a2, a2, *(a1 + 32));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

void sub_18868CD68(void *a1, void *a2, uint64_t a3)
{
  v4 = a1[6];
  v5 = a1[4];
  v6 = objc_msgSend_name(a2, a2, a3);
  v9 = objc_msgSend_tableGroupInDatabase_withName_options_error_(v4, v7, v5, v6, 327680, 0);

  v8 = v9;
  if (v9)
  {
    (*(a1[5] + 16))();
    v8 = v9;
  }
}

void sub_18868CFB0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a2;
  v10 = objc_msgSend_valueForProperty_propertyInfo_inObject_(v5, v8, v7, a3, v6);
  objc_msgSend_setValue_forProperty_propertyInfo_inObject_(*(a1 + 32), v9, v10, v7, a3, *(a1 + 48));
}

void sub_18868D170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18868D188(uint64_t a1, void *a2)
{
  v3 = objc_msgSend_objectForKey_(a2, a2, *(a1 + 32));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

void sub_18868D444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (v19)
  {
    v19[1].__sig = 0;
    pthread_mutex_unlock(v19);
  }

  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

id sub_18868D47C(uint64_t a1, const char *a2, uint64_t a3)
{
  v78 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_tocTableGroup(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_tocTableGroupTable(v4, v5, v6);
  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 32);
  v12 = v8;
  v13 = objc_opt_self();
  *buf = 0;
  v15 = objc_msgSend_groupEntryInDatabase_withGroupName_error_(v13, v14, v11, v12, buf);
  v17 = *buf;
  v18 = 0;
  if (!v17 && v15)
  {
    v18 = objc_msgSend_tableGroupWithEntry_database_options_(v13, v16, v15, v11, v10);
    if (!v18 || (v10 & 0x20000) == 0)
    {
      v17 = 0;
      goto LABEL_9;
    }

    v17 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v19, @"CKInternalErrorDomain", 1052, @"CKSQLiteTableGroupRequireNew specified and table group %@ already exists", v12);
  }

  if (v17)
  {
    v20 = v17;

    v18 = 0;
  }

LABEL_9:
  v21 = v18;

  v22 = v17;
  v23 = *(*(a1 + 48) + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = v21;

  v27 = *(*(*(a1 + 48) + 8) + 40);
  if (!(v22 | v27))
  {
    v75 = v7;
    v28 = *(a1 + 40);
    v29 = *(a1 + 56);
    v30 = *(a1 + 64);
    v31 = *(a1 + 32);
    v32 = v28;
    v33 = objc_opt_self();
    v36 = objc_msgSend_tocTableGroup(v31, v34, v35);
    v40 = objc_msgSend_tocTableGroupTable(v36, v37, v38);
    if ((v30 & 0x10000) != 0)
    {
      v42 = 0;
    }

    else if (!objc_msgSend_containsString_(v32, v39, @"'") || (objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v41, @"CKErrorDomain", 12, @"table group name contains invalid characters"), (v42 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v43 = [v33 alloc];
      v45 = objc_msgSend_initWithName_options_database_(v43, v44, v32, v30, v31);
      v48 = objc_msgSend_date(MEMORY[0x1E695DF00], v46, v47);
      objc_msgSend_setLastUsed_(v45, v49, v48);
      v50 = NSStringFromClass(v33);
      objc_msgSend_setCreatingClass_(v45, v51, v50);

      objc_msgSend_setCreationDate_(v45, v52, v48);
      v55 = objc_msgSend_insertObject_(v40, v53, v45);
      if (!v55)
      {
        if ((v30 & 0x100000) != 0)
        {
          v55 = objc_msgSend_makeUniqueGroupName_(v40, v54, v45);
        }

        else
        {
          v55 = 0;
        }
      }

      v45[88] = 1;

      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v57 = ck_log_facility_sql;
      if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_DEBUG))
      {
        v71 = v57;
        v74 = objc_msgSend_name(v45, v72, v73);
        *buf = 138543362;
        *&buf[4] = v74;
        _os_log_debug_impl(&dword_1883EA000, v71, OS_LOG_TYPE_DEBUG, "Created new table group: %{public}@.", buf, 0xCu);
      }

      v42 = 0;
      goto LABEL_24;
    }

    v56 = v42;
    v45 = 0;
    v55 = v42;
LABEL_24:

    v22 = v42;
    v58 = *(*(a1 + 48) + 8);
    v59 = *(v58 + 40);
    *(v58 + 40) = v45;

    v27 = *(*(*(a1 + 48) + 8) + 40);
    v7 = v75;
  }

  if (v27)
  {
    v60 = objc_msgSend_prepareTables(v27, v25, v26);

    v22 = v60;
    if (!v60)
    {
      v63 = objc_msgSend_finishInitializing(*(*(*(a1 + 48) + 8) + 40), v61, v62);
      v22 = v63;
      v65 = *(a1 + 48);
      if (*(*(v65 + 8) + 40))
      {
        if (!v63)
        {
          v66 = *(a1 + 64);
          if ((v66 & 0x80000) == 0)
          {
            v67 = *(a1 + 32);
            v76[0] = MEMORY[0x1E69E9820];
            v76[1] = 3221225472;
            v76[2] = sub_18868D948;
            v76[3] = &unk_1E70C1520;
            v76[4] = v65;
            objc_msgSend_usingTableGroupCachePerformBlock_(v67, v64, v76);
            v66 = *(a1 + 64);
          }

          if ((v66 & 0x40000) == 0)
          {
            v68 = objc_msgSend_updateLastUsedDate_(v7, v64, *(*(*(a1 + 48) + 8) + 40));
          }

          v22 = 0;
        }
      }
    }
  }

  v69 = *MEMORY[0x1E69E9840];

  return v22;
}

void sub_18868D948(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = a2;
  v7 = objc_msgSend_name(v2, v4, v5);
  objc_msgSend_setObject_forKey_(v3, v6, v2, v7);
}

void sub_18868E760(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v13 = a3;
  v8 = objc_msgSend_tableID(v13, v6, v7);

  if (!v8)
  {
    v10 = objc_msgSend_addEntryForTable_(*(a1 + 32), v9, v13);
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

void sub_18868E800(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  objc_msgSend_addObject_(v6, v8, v7);
  v16 = objc_msgSend_createTableSQL(v7, v9, v10);

  v12 = objc_msgSend_executeSQL_(*(a1 + 40), v11, v16);
  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    *a4 = 1;
  }

  objc_msgSend_addObject_(*(a1 + 32), v15, v16);
}

void sub_18868E8BC(uint64_t a1, const char *a2, void *a3, _BYTE *a4)
{
  v6 = objc_msgSend_didCreateDatabaseTable(a3, a2, a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *a4 = 1;
  }
}

id sub_18868F2C4(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = *(a1 + 32);
  v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v2, &v27, v31, 16);
  if (v3)
  {
    v6 = v3;
    v7 = *v28;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v28 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v27 + 1) + 8 * v8);
      v10 = objc_msgSend_logicalTableName(v9, v4, v5);
      v12 = objc_msgSend_tableWithName_(*(a1 + 40), v11, v10);
      v26 = 0;
      v14 = objc_msgSend_migrateDataFromTable_error_(v12, v13, v9, &v26);
      v15 = v26;
      v17 = v26;
      if (v17)
      {
        break;
      }

      if ((v14 & 1) == 0)
      {
        v21 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v16, @"CKErrorDomain", 1, @"migration failed for table: %@", v10);
        goto LABEL_16;
      }

      if (*(*(a1 + 40) + 88) == 1)
      {
        v18 = *(*(a1 + 48) + 8);
        v25 = *(v18 + 40);
        hasEntries = objc_msgSend_hasEntries_(v9, v16, &v25);
        objc_storeStrong((v18 + 40), v25);
        if (hasEntries)
        {
          *(*(a1 + 40) + 88) = 0;
        }
      }

      if (v6 == ++v8)
      {
        v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v27, v31, 16);
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v15);
    v21 = v17;
LABEL_16:
    v20 = v21;

    goto LABEL_17;
  }

LABEL_13:

  v20 = *(*(*(a1 + 48) + 8) + 40);
LABEL_17:
  v22 = *MEMORY[0x1E69E9840];

  return v20;
}

void sub_18868F61C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v1[1].__sig = 0;
    pthread_mutex_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_18868FF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18868FF24(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v14 = objc_msgSend_objectForKey_(v7, v9, a2);
  v11 = objc_msgSend_validateTable_matchesTOCEntry_(*(a1 + 40), v10, v8);

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    *a4 = 1;
  }
}

id sub_1886902E8(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v8 = objc_msgSend_validateGroup_matches_(*(a1 + 32), v6, a2, v5);
  if (!v8)
  {
    v9 = objc_msgSend_validateTablesMatchesTOCEntries_(*(a1 + 32), v7, v5);
    if (objc_msgSend_CKIsValidationError_(MEMORY[0x1E696ABC0], v10, v9))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v11 = ck_log_facility_sql;
      if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
      {
        v14 = *(a1 + 32);
        v15 = v11;
        v18 = objc_msgSend_name(v14, v16, v17);
        v22 = 138543618;
        v23 = v18;
        v24 = 2114;
        v25 = v9;
        _os_log_impl(&dword_1883EA000, v15, OS_LOG_TYPE_INFO, "Table validation failed for %{public}@: %{public}@", &v22, 0x16u);
      }

      v19 = objc_msgSend_performDataMigration(*(a1 + 32), v12, v13);
    }

    else
    {
      v19 = v9;
    }

    v8 = v19;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v8;
}

void sub_188690660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

id sub_188690688(uint64_t a1, const char *a2)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v30 = @"GID";
  v3 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], a2, *(*(*(a1 + 48) + 8) + 24));
  v31[0] = v3;
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v4, v31, &v30, 1);

  v7 = objc_msgSend_entriesWithValues_label_setupBlock_(*(a1 + 32), v6, v5, off_1EA911120, &unk_1EFA30170);
  v10 = objc_msgSend_nextObject(v7, v8, v9);
  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  objc_msgSend_invalidate(v7, v13, v14);
  v17 = *(*(*(a1 + 56) + 8) + 40);
  if (v17)
  {
    v18 = objc_msgSend_groupID(v17, v15, v16);
    *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_unsignedLongLongValue(v18, v19, v20);

    v22 = objc_msgSend_tableGroupWithEntry_database_options_(*(a1 + 64), v21, *(*(*(a1 + 56) + 8) + 40), *(a1 + 40), 2359296);
    v26 = objc_msgSend_performValidation(v22, v23, v24);
    if (v26)
    {
      v27 = objc_msgSend_purgeGroup_(CKSQLiteTableGroup, v25, v22);
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = objc_msgSend_error(v7, v15, v16);
  }

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

void sub_188690840(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AE18];
  v8 = a2;
  v4 = objc_msgSend_predicateWithFormat_(v2, v3, @"groupID > $GID");
  objc_msgSend_setSearchPredicate_(v8, v5, v4);

  objc_msgSend_orderAscendingByProperty_(v8, v6, @"groupID");
  objc_msgSend_setLimit_(v8, v7, &unk_1EFA854E8);
}

id sub_188690E00(uint64_t a1)
{
  v40[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = _dyld_image_count();
    v2 = objc_alloc(MEMORY[0x1E695DF90]);
    v4 = objc_msgSend_initWithCapacity_(v2, v3, v1);
    v5 = [CKSQLiteTOCImageInfoEntry alloc];
    v8 = objc_msgSend_initWithSharedCache(v5, v6, v7);
    v11 = v8;
    if (v8)
    {
      v12 = objc_msgSend_name(v8, v9, v10);
      objc_msgSend_setObject_forKey_(v4, v13, v11, v12);
    }

    if (v1)
    {
      for (i = 0; v1 != i; ++i)
      {
        _dyld_get_image_header(i);
        image_name = _dyld_get_image_name(i);
        v16 = image_name;
        if (!v11 || !_dyld_shared_cache_contains_path(image_name))
        {
          v40[0] = 0;
          v40[1] = 0;
          if (!_dyld_get_image_uuid())
          {
            v28 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v17, v18);
            v29 = [CKSignificantIssue alloc];
            v30 = [CKSourceCodeLocation alloc];
            v32 = objc_msgSend_initWithFilePath_lineNumber_(v30, v31, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/SQLite/CKSQLiteTOC.m", 177);
            v34 = objc_msgSend_initWithSourceCodeLocation_format_(v29, v33, v32, @"Could not get image uuid");
            objc_msgSend_handleSignificantIssue_actions_(v28, v35, v34, 0);

            v37 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v36, @"Could not get image uuid");
            objc_msgSend_UTF8String(v37, v38, v39);
            _os_crash();
            __break(1u);
            goto LABEL_16;
          }

          v19 = [CKSQLiteTOCImageInfoEntry alloc];
          v21 = objc_msgSend_initWithImageName_uuid_(v19, v20, v16, v40);
          v24 = objc_msgSend_name(v21, v22, v23);
          objc_msgSend_setObject_forKey_(v4, v25, v21, v24);
        }
      }
    }
  }

  else
  {
LABEL_16:
    v4 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];

  return v4;
}

void sub_188691114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18869112C(uint64_t a1, const char *a2, uint64_t a3, _BYTE *a4)
{
  v6 = objc_msgSend_insertObject_(*(a1 + 32), a2, a3);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

id sub_188691238(uint64_t a1)
{
  v67 = *MEMORY[0x1E69E9840];
  v2 = sub_188690E00(*(a1 + 32));
  v3 = objc_alloc(MEMORY[0x1E695DFA8]);
  v6 = objc_msgSend_count(v2, v4, v5);
  v8 = objc_msgSend_initWithCapacity_(v3, v7, v6);
  v51 = v2;
  v11 = objc_msgSend_allKeys(v2, v9, v10);
  objc_msgSend_addObjectsFromArray_(v8, v12, v11);

  v13 = *(a1 + 32);
  v60 = 0;
  v15 = objc_msgSend_fetchAllEntries_(v13, v14, &v60);
  v16 = v60;
  if (v16)
  {
LABEL_19:
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v46 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      v49 = *(a1 + 32);
      *buf = 134218242;
      v62 = v49;
      v63 = 2114;
      v64 = v16;
      _os_log_error_impl(&dword_1883EA000, v46, OS_LOG_TYPE_ERROR, "CKSQLiteTOCImageInfoTable<%p> databaseMatchesCurrentProcess returns: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x1E695DF90]);
    v20 = objc_msgSend_count(v15, v18, v19);
    v22 = objc_msgSend_initWithCapacity_(v17, v21, v20);
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v50 = v15;
    v23 = v15;
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v56, v66, 16);
    if (v25)
    {
      v28 = v25;
      v29 = *v57;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v57 != v29)
          {
            objc_enumerationMutation(v23);
          }

          v31 = *(*(&v56 + 1) + 8 * i);
          v32 = objc_msgSend_name(v31, v26, v27, v50);
          objc_msgSend_setObject_forKey_(v22, v33, v31, v32);
          objc_msgSend_addObject_(v8, v34, v32);
        }

        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v56, v66, 16);
      }

      while (v28);
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v35 = v8;
    v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v52, v65, 16);
    if (v37)
    {
      v39 = v37;
      v40 = *v53;
      while (2)
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v53 != v40)
          {
            objc_enumerationMutation(v35);
          }

          v42 = *(*(&v52 + 1) + 8 * j);
          v43 = objc_msgSend_objectForKey_(v51, v38, v42, v50);
          v45 = objc_msgSend_objectForKey_(v22, v44, v42);
          v16 = (*(*(a1 + 40) + 16))();

          if (v16)
          {

            v15 = v50;
            goto LABEL_19;
          }
        }

        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v38, &v52, v65, 16);
        if (v39)
        {
          continue;
        }

        break;
      }
    }

    v16 = 0;
    v15 = v50;
  }

  v47 = *MEMORY[0x1E69E9840];

  return v16;
}

id sub_1886915CC(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v7 = v5;
  if (!v4)
  {
    goto LABEL_4;
  }

  if (v5)
  {
    if (objc_msgSend_isEqual_(v4, v6, v5))
    {
LABEL_4:
      v8 = 0;
      goto LABEL_16;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v15 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
    {
      v17 = v15;
      v20 = objc_msgSend_name(v7, v18, v19);
      v23 = 138543362;
      v24 = v20;
      _os_log_impl(&dword_1883EA000, v17, OS_LOG_TYPE_INFO, "CKSQLiteTOCImageInfoTable: detected UUID changed for image: %{public}@", &v23, 0xCu);
    }

    objc_msgSend_validationErrorWithMessage_(CKPrettyError, v16, @"detected image UUID changed");
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v9 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
    {
      v11 = v9;
      v14 = objc_msgSend_name(v4, v12, v13);
      v23 = 138543362;
      v24 = v14;
      _os_log_impl(&dword_1883EA000, v11, OS_LOG_TYPE_INFO, "CKSQLiteTOCImageInfoTable: detected new image: %{public}@", &v23, 0xCu);
    }

    objc_msgSend_validationErrorWithMessage_(CKPrettyError, v10, @"detected new image");
  }
  v8 = ;
LABEL_16:

  v21 = *MEMORY[0x1E69E9840];

  return v8;
}

id sub_18869185C(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1886918E0;
  v5[3] = &unk_1E70C1680;
  v5[4] = v2;
  v3 = objc_msgSend_enumerateImagesWithBlock_(v2, a2, v5);

  return v3;
}

id sub_1886918E0(uint64_t a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (!v5)
  {
    goto LABEL_4;
  }

  if (v6)
  {
    if (objc_msgSend_isEqual_(v5, v7, v6))
    {
LABEL_4:
      v11 = 0;
      goto LABEL_7;
    }

    v12 = objc_msgSend_imageID(v8, v9, v10);
    objc_msgSend_setImageID_(v5, v13, v12);

    v14 = *(a1 + 32);
    v20[0] = @"uuid";
    v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v15, v20, 1);
    v11 = objc_msgSend_updateProperties_usingObject_label_(v14, v17, v16, v5, off_1EA9111A8);
  }

  else
  {
    v11 = objc_msgSend_insertObject_(*(a1 + 32), v7, v5);
  }

LABEL_7:

  v18 = *MEMORY[0x1E69E9840];

  return v11;
}

void sub_1886922BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1886922DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1886923CC;
  v16[3] = &unk_1E70BC098;
  v17 = *(a1 + 48);
  v6 = objc_msgSend_entriesWithValues_label_setupBlock_(v2, v5, v3, v4, v16);
  v9 = objc_msgSend_allObjects(v6, v7, v8);
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v14 = objc_msgSend_error(v6, v12, v13);

  return v14;
}

void sub_1886923CC(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AE18];
  v4 = CKSQLiteTOCTableEntryGroupIDPropertyName;
  v9 = a2;
  v6 = objc_msgSend_predicateWithFormat_(v3, v5, @"%@ = $ID", v4);
  objc_msgSend_setSearchPredicate_(v9, v7, v6);

  objc_msgSend_setFetchedProperties_(v9, v8, *(a1 + 32));
}

void sub_18869270C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_18869272C(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_entriesWithValues_label_setupBlock_(*(a1 + 32), a2, *(a1 + 40), off_1EA911220, &unk_1EFA301B0);
  v6 = objc_msgSend_nextObject(v3, v4, v5);
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v11 = objc_msgSend_error(v3, v9, v10);

  return v11;
}

void sub_1886927B4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AE18];
  v3 = CKSQLiteTOCTableEntryGroupIDPropertyName;
  v4 = CKSQLiteTOCTableEntryLogicalTablePropertyName;
  v5 = a2;
  v8 = objc_msgSend_predicateWithFormat_(v2, v6, @"%@ = $ID AND %@ = $NAME", v3, v4);
  objc_msgSend_setSearchPredicate_(v5, v7, v8);
}

void sub_188692BB0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v1[1].__sig = 0;
    pthread_mutex_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

id sub_188692C80(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11.receiver = *(a1 + 40);
  v11.super_class = CKSQLiteTOCTableGroupTable;
  v4 = objc_msgSendSuper2(&v11, sel_deletePrimaryKeyValue_, v2);
  if (!v4)
  {
    v5 = *(a1 + 40);
    v10 = 0;
    hasEntriesMatching_label_error_predicate = objc_msgSend_hasEntriesMatching_label_error_predicate_(v5, v3, 0, off_1EA911250, &v10, &unk_1EFA301D0);
    v8 = v10;
    if ((hasEntriesMatching_label_error_predicate & 1) == 0)
    {
      objc_msgSend_setIsEmpty_(*(*(a1 + 40) + 80), v7, 1);
    }
  }

  return v4;
}

void sub_188693418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188693430(uint64_t a1, const char *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v20 = @"CLASS";
  v21[0] = v3;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v21, &v20, 1);
  v6 = objc_msgSend_entriesWithValues_label_setupBlock_(*(a1 + 40), v5, v4, off_1EA9112C8, &unk_1EFA301F0);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v15, v19, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend_addObject_(*(*(*(a1 + 48) + 8) + 40), v9, *(*(&v15 + 1) + 8 * v12++));
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v15, v19, 16);
    }

    while (v10);
  }

  v13 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_188693584(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AE18];
  v3 = CKSQLiteTOCTableGroupTableCreatingClassPropertyName;
  v4 = a2;
  v7 = objc_msgSend_predicateWithFormat_(v2, v5, @"%@ = $CLASS", v3);
  objc_msgSend_setSearchPredicate_(v4, v6, v7);
}

void sub_188693764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18869377C(uint64_t a1, const char *a2)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v20[0] = @"CLASS";
  v20[1] = @"EXP_DATE";
  v3 = *(a1 + 40);
  v21[0] = *(a1 + 32);
  v21[1] = v3;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v21, v20, 2);
  v6 = objc_msgSend_entriesWithValues_label_setupBlock_(*(a1 + 48), v5, v4, off_1EA9112E0, &unk_1EFA30210);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v15, v19, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend_addObject_(*(*(*(a1 + 56) + 8) + 40), v9, *(*(&v15 + 1) + 8 * v12++));
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v15, v19, 16);
    }

    while (v10);
  }

  v13 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1886938DC(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AE18];
  v3 = CKSQLiteTOCTableGroupTableCreatingClassPropertyName;
  v4 = CKSQLiteTOCTableGroupTableLastUsedPropertyName;
  v5 = a2;
  v8 = objc_msgSend_predicateWithFormat_(v2, v6, @"%@ = $CLASS AND %@ < $EXP_DATE", v3, v4);
  objc_msgSend_setSearchPredicate_(v5, v7, v8);
}

uint64_t sub_18869519C(uint64_t a1, const char *a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_tocTableGroupTable(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_entriesWithValues_label_setupBlock_(v4, v5, 0, 0, &unk_1EFA30230);

  v9 = objc_msgSend_allObjects(v6, v7, v8);
  v14 = objc_msgSend_error(v6, v10, v11);
  if (v14)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v15 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v30 = v14;
      _os_log_error_impl(&dword_1883EA000, v15, OS_LOG_TYPE_ERROR, "removeDeletedGroups: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    objc_msgSend_invalidate(v6, v12, v13);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = v9;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v25, v31, 16);
    if (v18)
    {
      v20 = v18;
      v21 = *v26;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v16);
          }

          objc_msgSend_deleteTables_(*(*(&v25 + 1) + 8 * i), v19, *(a1 + 40), v25);
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v25, v31, 16);
      }

      while (v20);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_18869538C(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AE18];
  v3 = a2;
  v6 = objc_msgSend_predicateWithFormat_(v2, v4, @"flags & %@ == %@", &unk_1EFA85638, &unk_1EFA85638);
  objc_msgSend_setSearchPredicate_(v3, v5, v6);
}

id sub_188695408(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_dbTableName(CKSQLiteTOCTableGroupTable, a2, a3);
  v6 = CKSQLiteTOCTableGroupTableGroupIDPropertyName;
  v7 = CKSQLiteTOCTableEntryGroupIDPropertyName;
  v10 = objc_msgSend_dbTableName(CKSQLiteTOCTable, v8, v9);
  v12 = objc_msgSend_stringWithFormat_(v4, v11, @"DELETE FROM '%@' WHERE %@ NOT IN (SELECT DISTINCT %@ FROM '%@')", v5, v6, v7, v10);

  v15 = objc_msgSend_db(*(a1 + 32), v13, v14);
  v17 = objc_msgSend_executeSQL_(v15, v16, v12);

  return v17;
}

id sub_1886954E4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_dbTableName(CKSQLiteTOCTableGroupTable, a2, a3);
  v6 = CKSQLiteTOCTableGroupTableGroupIDPropertyName;
  v7 = CKSQLiteTOCTableEntryGroupIDPropertyName;
  v10 = objc_msgSend_dbTableName(CKSQLiteTOCTable, v8, v9);
  v12 = objc_msgSend_stringWithFormat_(v4, v11, @"DELETE FROM '%@' WHERE %@ IN (SELECT %@ from %@ where %@ NOT IN (SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%%'))", v5, v6, v7, v10, CKSQLiteTOCTableEntryDbTablePropertyName);

  v15 = objc_msgSend_db(*(a1 + 32), v13, v14);
  v17 = objc_msgSend_executeSQL_(v15, v16, v12);

  return v17;
}

id sub_1886955CC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_dbTableName(CKSQLiteTOCTable, a2, a3);
  v6 = CKSQLiteTOCTableEntryGroupIDPropertyName;
  v7 = CKSQLiteTOCTableGroupTableGroupIDPropertyName;
  v10 = objc_msgSend_dbTableName(CKSQLiteTOCTableGroupTable, v8, v9);
  v12 = objc_msgSend_stringWithFormat_(v4, v11, @"DELETE FROM '%@' WHERE %@ NOT IN (SELECT DISTINCT %@ FROM '%@')", v5, v6, v7, v10);

  v15 = objc_msgSend_db(*(a1 + 32), v13, v14);
  v17 = objc_msgSend_executeSQL_(v15, v16, v12);

  return v17;
}

id sub_1886956A8(uint64_t a1, const char *a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = objc_msgSend_dbTableName(CKSQLiteTOCTable, a2, a3);
  v7 = objc_msgSend_statementForFetchingDanglingTableNamesInDatabase_tocTableName_tocDBPropertyName_(CKSQLiteCompiledStatement, v6, v4, v5, CKSQLiteTOCTableEntryDbTablePropertyName);

  v35 = 0;
  LODWORD(v4) = objc_msgSend_step_(v7, v8, &v35);
  v9 = v35;
  v10 = v9 == 0;
  if (v4)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v13 = 0;
    do
    {
      v14 = objc_autoreleasePoolPush();
      if (!v13)
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = sub_188695920;
      v33[3] = &unk_1E70C16D0;
      v13 = v13;
      v34 = v13;
      objc_msgSend_enumerateResultColumnsWithBlock_(v7, v15, v33);

      objc_autoreleasePoolPop(v14);
      v35 = 0;
      v17 = objc_msgSend_step_(v7, v16, &v35);
      v18 = v35;
      v12 = v18;
      v10 = v18 == 0;
    }

    while (v17 && !v18);
  }

  else
  {
    v12 = v9;
    v13 = 0;
  }

  if (v10)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v19 = v13;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v29, v36, 16);
    if (v21)
    {
      v23 = v21;
      v24 = *v30;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v30 != v24)
          {
            objc_enumerationMutation(v19);
          }

          v26 = objc_msgSend_dropTable_(*(a1 + 32), v22, *(*(&v29 + 1) + 8 * i), v29);
          if (v26)
          {
            v12 = v26;
            goto LABEL_22;
          }
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v29, v36, 16);
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_22:
  }

  v27 = *MEMORY[0x1E69E9840];

  return v12;
}

id sub_18869660C()
{
  v0 = objc_opt_class();
  v3 = sub_18869FDCC(v0, v1, v2);
  v4 = sub_18869FEB8(&unk_1EFA30250);
  v353 = sub_18869EBC8(v3, v5, v6, v7, v8, v9, v10, v11, v4, 0);

  v12 = sub_18869FFAC();
  v19 = sub_1886A03E0(@"tokenize:using:", v12, v13, v14, v15, v16, v17, v18, v353, 0);

  v20 = sub_1886A0174();
  v21 = objc_opt_class();
  v24 = sub_18869FDCC(v21, v22, v23);
  v32 = sub_18869EA90(v20, v25, v26, v27, v28, v29, v30, v31, v24, 0);
  v33 = sub_1886A0174();
  v34 = objc_opt_class();
  v37 = sub_18869FDCC(v34, v35, v36);
  v45 = sub_18869EA90(v33, v38, v39, v40, v41, v42, v43, v44, v37, 0);
  v287 = sub_1886A03E0(@"distanceToLocation:fromLocation:", v32, v46, v47, v48, v49, v50, v51, v45, 0);

  v361 = sub_1886A03E0(@"now", 0, v52, v53, v54, v55, v56, v57, v194, v195);
  v352 = sub_18869F8D0();
  v351 = sub_18869FFAC();
  v350 = sub_18869F838();
  v349 = sub_18869FB6C();
  v348 = sub_1886A02BC();
  v376 = sub_18869EF80(v352, v351, v350, v349, v348);
  v347 = sub_18869F8D0();
  v346 = sub_18869F968();
  v345 = sub_18869EA90(v347, v58, v59, v60, v61, v62, v63, v64, v346, 0);
  v344 = sub_1886A02BC();
  v343 = sub_18869F838();
  v342 = sub_18869FB6C();
  v341 = sub_18869FFAC();
  v375 = sub_18869EF80(v345, v344, v343, v342, v341);
  v339 = sub_18869F968();
  v338 = sub_1886A02BC();
  v337 = sub_18869F670();
  v336 = sub_18869FADC();
  v374 = sub_18869EF80(v339, v338, v337, v336, v19);
  v335 = sub_18869FA00();
  v334 = sub_18869F968();
  v333 = sub_18869EA90(v335, v65, v66, v67, v68, v69, v70, v71, v334, 0);
  v332 = sub_18869F670();
  v331 = sub_18869FADC();
  v330 = sub_1886A02BC();
  v340 = v19;
  v373 = sub_18869EF80(v333, v19, v332, v331, v330);
  v329 = sub_18869FA00();
  v328 = sub_18869F838();
  v327 = sub_18869FB6C();
  v326 = sub_1886A02BC();
  v372 = sub_18869EF80(v329, v19, v328, v327, v326);
  v325 = sub_18869F8D0();
  v324 = sub_18869F968();
  v323 = sub_18869FA00();
  v322 = sub_18869EA90(v325, v72, v73, v74, v75, v76, v77, v78, v324, v323);
  v321 = sub_1886A0350();
  v320 = sub_18869F708();
  v319 = sub_18869FADC();
  v318 = sub_18869FFAC();
  v371 = sub_18869EF80(v322, v321, v320, v319, v318);
  v317 = sub_18869F8D0();
  v316 = sub_18869FC40();
  v315 = sub_18869F670();
  v314 = sub_18869FADC();
  v313 = sub_1886A0174();
  v370 = sub_18869EF80(v317, v316, v315, v314, v313);
  v312 = sub_18869F8D0();
  v311 = sub_1886A0174();
  v310 = sub_18869F708();
  v309 = sub_18869FADC();
  v308 = sub_18869FC40();
  v369 = sub_18869EF80(v312, v311, v310, v309, v308);
  v307 = sub_18869F968();
  v306 = sub_1886A0174();
  v305 = sub_18869F248();
  v304 = sub_18869FADC();
  v303 = sub_18869FC40();
  v368 = sub_18869EF80(v307, v306, v305, v304, v303);
  v302 = sub_18869F8D0();
  v301 = sub_18869F968();
  v300 = sub_18869EA90(v302, v79, v80, v81, v82, v83, v84, v85, v301, 0);
  v299 = sub_1886A0174();
  v298 = sub_18869F670();
  v297 = sub_18869FADC();
  v296 = sub_18869FD04();
  v367 = sub_18869EF80(v300, v299, v298, v297, v296);
  v295 = sub_18869F8D0();
  v294 = sub_18869F968();
  v293 = sub_18869EA90(v295, v86, v87, v88, v89, v90, v91, v92, v294, 0);
  v292 = sub_1886A0174();
  v291 = sub_18869F670();
  v289 = sub_18869FADC();
  v290 = sub_18869FC40();
  v288 = sub_1886A0540(v290, v93, v94, v95, v96, v97, v98, v99, 0, v196);
  v366 = sub_18869EF80(v293, v292, v291, v289, v288);
  v286 = sub_18869F968();
  v285 = sub_18869FD04();
  v284 = sub_18869F248();
  v283 = sub_18869FADC();
  v282 = sub_1886A0174();
  v365 = sub_18869EF80(v286, v285, v284, v283, v282);
  v280 = sub_18869F968();
  v281 = sub_18869FC40();
  v279 = sub_1886A0540(v281, v100, v101, v102, v103, v104, v105, v106, 0, v197);
  v278 = sub_18869F248();
  v277 = sub_18869FADC();
  v276 = sub_1886A0174();
  v364 = sub_18869EF80(v280, v279, v278, v277, v276);
  v275 = sub_18869F8D0();
  v274 = sub_18869FD04();
  v273 = sub_18869F708();
  v272 = sub_18869FADC();
  v271 = sub_1886A0174();
  v363 = sub_18869EF80(v275, v274, v273, v272, v271);
  v269 = sub_18869F8D0();
  v270 = sub_18869FC40();
  v268 = sub_1886A0540(v270, v107, v108, v109, v110, v111, v112, v113, 0, v198);
  v267 = sub_18869F708();
  v266 = sub_18869FADC();
  v265 = sub_1886A0174();
  v362 = sub_18869EF80(v269, v268, v267, v266, v265);
  v264 = sub_18869F968();
  v263 = sub_18869FA00();
  v261 = sub_18869EA90(v264, v114, v115, v116, v117, v118, v119, v120, v263, 0);
  v260 = sub_18869FD04();
  v259 = sub_18869F670();
  v258 = sub_18869FADC();
  v257 = sub_1886A0174();
  v360 = sub_18869EF80(v261, v260, v259, v258, v257);
  v256 = sub_18869F968();
  v255 = sub_18869FA00();
  v253 = sub_18869EA90(v256, v121, v122, v123, v124, v125, v126, v127, v255, 0);
  v254 = sub_18869FC40();
  v252 = sub_1886A0540(v254, v128, v129, v130, v131, v132, v133, v134, 0, v199);
  v251 = sub_18869F670();
  v250 = sub_18869FADC();
  v249 = sub_1886A0174();
  v359 = sub_18869EF80(v253, v252, v251, v250, v249);
  v248 = sub_18869F8D0();
  v247 = sub_1886A0174();
  v246 = sub_18869F5D8();
  v243 = sub_18869FADC();
  v245 = sub_18869FFAC();
  v244 = sub_1886A0044();
  v242 = sub_18869EA90(v245, v135, v136, v137, v138, v139, v140, v141, v244, 0);
  v358 = sub_18869EF80(v248, v247, v246, v243, v242);
  v241 = sub_18869F8D0();
  v240 = sub_1886A0174();
  v239 = sub_18869F7A0();
  v236 = sub_18869FADC();
  v238 = sub_1886A00DC();
  v237 = sub_1886A00DC();
  v235 = sub_1886A0540(v238, v142, v143, v144, v145, v146, v147, v148, v237, 0);
  v357 = sub_18869EF80(v241, v240, v239, v236, v235);
  v234 = sub_18869F8D0();
  v233 = sub_18869F378();
  v232 = sub_18869FADC();
  v231 = sub_1886A00DC();
  v230 = sub_18869EF80(v234, v287, v233, v232, v231);
  v356 = sub_18869EF28(v230);
  v229 = sub_18869F8D0();
  v228 = sub_1886A0238(@"___share");
  v227 = sub_18869F2E0();
  v226 = sub_18869FADC();
  v225 = sub_1886A0654();
  v355 = sub_18869EF80(v229, v228, v227, v226, v225);
  v224 = sub_18869F8D0();
  v223 = sub_1886A0238(@"___parent");
  v222 = sub_18869F2E0();
  v221 = sub_18869FADC();
  v220 = sub_1886A0654();
  v354 = sub_18869EF80(v224, v223, v222, v221, v220);
  v217 = sub_18869F8D0();
  v219 = sub_1886A0174();
  v218 = sub_1886A0350();
  v212 = sub_18869EA90(v219, v149, v150, v151, v152, v153, v154, v155, v218, 0);
  v216 = sub_18869F248();
  v215 = sub_18869F2E0();
  v214 = sub_18869F378();
  v213 = sub_18869F410();
  v211 = sub_18869F4A8();
  v210 = sub_18869F540();
  v209 = sub_18869EA90(v216, v156, v157, v158, v159, v160, v161, v162, v215, v214);
  v208 = sub_18869FADC();
  v207 = sub_18869FC40();
  v206 = sub_18869EF80(v217, v212, v209, v208, v207);
  v163 = sub_18869EF28(v206);
  v203 = sub_18869F8D0();
  v205 = sub_1886A0174();
  v204 = sub_1886A0350();
  v201 = sub_18869EA90(v205, v164, v165, v166, v167, v168, v169, v170, v204, 0);
  v202 = sub_18869F248();
  v171 = sub_18869F2E0();
  v172 = sub_18869F378();
  v173 = sub_18869F410();
  v174 = sub_18869F4A8();
  v175 = sub_18869F540();
  v183 = sub_18869EA90(v202, v176, v177, v178, v179, v180, v181, v182, v171, v172);
  v184 = sub_18869FADC();
  v185 = sub_18869EF80(v203, v201, v183, v184, v361);
  v200 = sub_18869EF28(v185);
  v262 = sub_18869EA90(v376, v186, v187, v188, v189, v190, v191, v192, v375, v374);

  return v262;
}

id sub_188697B30(uint64_t a1, void *a2)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v5 = objc_msgSend_lowercaseString(v2, v3, v4);
  v7 = objc_msgSend_rangeOfString_(v5, v6, @"c");
  v9 = objc_msgSend_rangeOfString_(v5, v8, @"d");
  v11 = objc_msgSend_rangeOfString_(v5, v10, @"l");
  if (v7 == 0x7FFFFFFFFFFFFFFFLL || v9 == 0x7FFFFFFFFFFFFFFFLL || v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12, @"Invalid argument value: %@", v2);
    v15 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A578];
    v22[0] = v14;
    v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, v22, &v21, 1);
    v13 = objc_msgSend_errorWithDomain_code_userInfo_(v15, v18, @"CKErrorDomain", 12, v17);
  }

  else
  {
    v13 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v13;
}

uint64_t sub_188698808(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

uint64_t sub_1886996C0(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_userInfo(a1, a2, a3);
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"ck_isComparisonError");
  v8 = objc_msgSend_BOOLValue(v5, v6, v7);

  return v8;
}

void sub_188699A04(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

__CFString *sub_18869A1D0(unint64_t a1, const char *a2)
{
  if (a1 > 2)
  {
    v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"%lu", a1);
  }

  else
  {
    v2 = off_1E70C1710[a1];
  }

  return v2;
}

__CFString *sub_18869B94C(uint64_t a1, const char *a2)
{
  if (a1 > 6)
  {
    if (a1 > 9)
    {
      if (a1 > 99)
      {
        if (a1 == 100)
        {
          v3 = @"BETWEEN";

          return v3;
        }

        if (a1 == 1000)
        {
          v3 = @"TOKENMATCHES";

          return v3;
        }
      }

      else
      {
        if (a1 == 10)
        {
          v3 = @"IN";

          return v3;
        }

        if (a1 == 99)
        {
          v3 = @"CONTAINS";

          return v3;
        }
      }

LABEL_59:
      v3 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"%lu", a1);

      return v3;
    }

    if (a1 == 7)
    {
      v3 = @"LIKE";
    }

    else if (a1 == 8)
    {
      v3 = @"BEGINSWITH";
    }

    else
    {
      v3 = @"ENDSWITH";
    }
  }

  else
  {
    if (a1 > 2)
    {
      if (a1 > 4)
      {
        if (a1 == 5)
        {
          v3 = @"!=";
        }

        else
        {
          v3 = @"MATCHES";
        }
      }

      else if (a1 == 3)
      {
        v3 = @">=";
      }

      else
      {
        v3 = @"==";
      }

      return v3;
    }

    if (a1)
    {
      if (a1 != 1)
      {
        if (a1 == 2)
        {
          v3 = @">";

          return v3;
        }

        goto LABEL_59;
      }

      v3 = @"<=";
    }

    else
    {
      v3 = @"<";
    }
  }

  return v3;
}

__CFString *sub_18869BE94(unint64_t a1, const char *a2)
{
  if (a1 >= 3)
  {
    v3 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"%lu", a1);
  }

  else
  {
    v3 = off_1E70C1728[a1];
  }

  return v3;
}

void *sub_18869BF94(void *result, uint64_t a2)
{
  if (result)
  {
    v3.receiver = result;
    v3.super_class = CKComparisonOptionsValidator;
    result = objc_msgSendSuper2(&v3, sel_init);
    if (result)
    {
      result[1] = a2;
    }
  }

  return result;
}

__CFString *sub_18869C238(char a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3);
  v7 = v4;
  if (a1)
  {
    objc_msgSend_addObject_(v4, v5, @"c");
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  objc_msgSend_addObject_(v7, v5, @"d");
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  objc_msgSend_addObject_(v7, v5, @"n");
  if ((a1 & 8) != 0)
  {
LABEL_5:
    objc_msgSend_addObject_(v7, v5, @"l");
  }

LABEL_6:
  if (objc_msgSend_count(v7, v5, v6))
  {
    objc_msgSend_insertObject_atIndex_(v7, v8, @"[", 0);
    objc_msgSend_addObject_(v7, v9, @"]");
    v11 = objc_msgSend_componentsJoinedByString_(v7, v10, &stru_1EFA32970);
  }

  else
  {
    v11 = @"(none)";
  }

  return v11;
}

id *sub_18869D290(void *a1, void *a2, void *a3)
{
  if (!a1)
  {
    return 0;
  }

  v10.receiver = a1;
  v10.super_class = CKFunctionExpressionValidator;
  v4 = a3;
  v5 = a2;
  v6 = objc_msgSendSuper2(&v10, sel_init);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 1, a2);

    v8 = v4;
    v5 = v7[2];
    v7[2] = v8;
  }

  return v7;
}

id *sub_18869DC30(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = CKKindOfClassValidator;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  v4 = v3;
  if (v3)
  {
    objc_storeStrong(v3 + 1, a2);
  }

  return v4;
}

uint64_t sub_18869E984()
{
  v0 = CKShouldUseNewPredicateValidation();
  v1 = off_1E70BA158;
  if (!v0)
  {
    v1 = off_1E70BA398;
  }

  v2 = objc_alloc_init(*v1);
  v3 = qword_1ED4B6320;
  qword_1ED4B6320 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

CKAnyPredicateValidator *sub_18869EA90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v12 = a1;
  if (!v12)
  {
    v21 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v10, v11);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v22, "id<CKObjectValidating> any(__strong id<CKObjectValidating>, ...)");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v21, v24, v23, @"CKPredicateValidatorConvenienceFunctions.m", 14, @"Invalid parameter not satisfying: %@", @"validator != nil");
  }

  v13 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DF70], v10, v12);
  v25 = &a10;
  v14 = a9;
  if (v14)
  {
    v16 = v14;
    do
    {
      objc_msgSend_addObject_(v13, v15, v16);
      v17 = v25++;
      v18 = *v17;

      v16 = v18;
    }

    while (v18);
  }

  v19 = objc_alloc_init(CKAnyPredicateValidator);
  sub_188699A04(v19, v13);

  return v19;
}

id sub_18869EBC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v12 = a1;
  if (!v12)
  {
    v23 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v10, v11);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v24, "id<CKObjectValidating> all(__strong id<CKObjectValidating>, ...)");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v23, v26, v25, @"CKPredicateValidatorConvenienceFunctions.m", 33, @"Invalid parameter not satisfying: %@", @"validator != nil");
  }

  v13 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DF70], v10, v12);
  v27 = &a10;
  v14 = a9;
  if (v14)
  {
    v16 = v14;
    do
    {
      objc_msgSend_addObject_(v13, v15, v16);
      v17 = v27++;
      v18 = *v17;

      v16 = v18;
    }

    while (v18);
  }

  v19 = [CKAllPredicateValidator alloc];
  v21 = objc_msgSend_initWithValidators_(v19, v20, v13);

  return v21;
}

id sub_18869ED00(void *a1)
{
  v1 = a1;
  v2 = [CKRecursivePredicateValidator alloc];
  v4 = objc_msgSend_initWithValidator_(v2, v3, v1);

  return v4;
}

id sub_18869ED58()
{
  if (qword_1ED4B6338 != -1)
  {
    dispatch_once(&qword_1ED4B6338, &unk_1EFA30290);
  }

  v1 = qword_1ED4B6330;

  return v1;
}

uint64_t sub_18869EDAC()
{
  v0 = [CKCompoundTypePredicateValidator alloc];
  v2 = objc_msgSend_initWithType_(v0, v1, 1);
  v3 = qword_1ED4B6330;
  qword_1ED4B6330 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

id sub_18869EDF0()
{
  if (qword_1ED4B6348 != -1)
  {
    dispatch_once(&qword_1ED4B6348, &unk_1EFA302B0);
  }

  v1 = qword_1ED4B6340;

  return v1;
}

uint64_t sub_18869EE44()
{
  v0 = [CKCompoundTypePredicateValidator alloc];
  v2 = objc_msgSend_initWithType_(v0, v1, 0);
  v3 = qword_1ED4B6340;
  qword_1ED4B6340 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

CKTruePredicateValidator *sub_18869EE88()
{
  v0 = objc_alloc_init(CKTruePredicateValidator);

  return v0;
}

id sub_18869EEB8(void *a1)
{
  v2 = [CKCompoundSubpredicateValidator alloc];
  v3 = sub_18869DC30([CKKindOfClassValidator alloc], a1);
  v5 = objc_msgSend_initWithValidator_(v2, v4, v3);

  return v5;
}

id sub_18869EF28(void *a1)
{
  v1 = a1;
  v2 = [CKFlipFlopPredicateValidator alloc];
  v4 = objc_msgSend_initWithValidator_(v2, v3, v1);

  return v4;
}

CKComparisonPredicateValidator *sub_18869EF80(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v15 = a5;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_14:
    v32 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v13, v14);
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v33, "id<CKObjectValidating> comparison(__strong id<CKObjectValidating>, __strong id<CKObjectValidating>, __strong id<CKObjectValidating>, __strong id<CKObjectValidating>, __strong id<CKObjectValidating>)");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v32, v35, v34, @"CKPredicateValidatorConvenienceFunctions.m", 93, @"Invalid parameter not satisfying: %@", @"op");

    if (v15)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v28 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v13, v14);
  v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v29, "id<CKObjectValidating> comparison(__strong id<CKObjectValidating>, __strong id<CKObjectValidating>, __strong id<CKObjectValidating>, __strong id<CKObjectValidating>, __strong id<CKObjectValidating>)");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v28, v31, v30, @"CKPredicateValidatorConvenienceFunctions.m", 92, @"Invalid parameter not satisfying: %@", @"lhs");

  if (!v11)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (v15)
  {
    goto LABEL_4;
  }

LABEL_15:
  v36 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v13, v14);
  v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v37, "id<CKObjectValidating> comparison(__strong id<CKObjectValidating>, __strong id<CKObjectValidating>, __strong id<CKObjectValidating>, __strong id<CKObjectValidating>, __strong id<CKObjectValidating>)");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v36, v39, v38, @"CKPredicateValidatorConvenienceFunctions.m", 94, @"Invalid parameter not satisfying: %@", @"rhs");

LABEL_4:
  v16 = objc_alloc_init(CKComparisonPredicateValidator);
  v18 = v16;
  if (v9)
  {
    objc_msgSend_setModifierValidator_(v16, v17, v9);
  }

  else
  {
    v20 = sub_18869F1F4();
    objc_msgSend_setModifierValidator_(v18, v21, v20);
  }

  objc_msgSend_setLeftExpressionValidator_(v18, v19, v10);
  objc_msgSend_setOperatorValidator_(v18, v22, v11);
  if (v12)
  {
    objc_msgSend_setOptionsValidator_(v18, v23, v12);
  }

  else
  {
    v25 = sub_18869F1F4();
    objc_msgSend_setOptionsValidator_(v18, v26, v25);
  }

  objc_msgSend_setRightExpressionValidator_(v18, v24, v15);

  return v18;
}

id sub_18869F1F4()
{
  if (qword_1ED4B64D8 != -1)
  {
    dispatch_once(&qword_1ED4B64D8, &unk_1EFA305D0);
  }

  v1 = qword_1ED4B64D0;

  return v1;
}

id sub_18869F248()
{
  if (qword_1ED4B6358 != -1)
  {
    dispatch_once(&qword_1ED4B6358, &unk_1EFA302D0);
  }

  v1 = qword_1ED4B6350;

  return v1;
}

uint64_t sub_18869F29C()
{
  v0 = [CKComparisonOperatorValidator alloc];
  v2 = objc_msgSend_initWithOperatorType_(v0, v1, 4);
  v3 = qword_1ED4B6350;
  qword_1ED4B6350 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

id sub_18869F2E0()
{
  if (qword_1ED4B6368 != -1)
  {
    dispatch_once(&qword_1ED4B6368, &unk_1EFA302F0);
  }

  v1 = qword_1ED4B6360;

  return v1;
}

uint64_t sub_18869F334()
{
  v0 = [CKComparisonOperatorValidator alloc];
  v2 = objc_msgSend_initWithOperatorType_(v0, v1, 5);
  v3 = qword_1ED4B6360;
  qword_1ED4B6360 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

id sub_18869F378()
{
  if (qword_1ED4B6378 != -1)
  {
    dispatch_once(&qword_1ED4B6378, &unk_1EFA30310);
  }

  v1 = qword_1ED4B6370;

  return v1;
}

uint64_t sub_18869F3CC()
{
  v0 = [CKComparisonOperatorValidator alloc];
  v2 = objc_msgSend_initWithOperatorType_(v0, v1, 0);
  v3 = qword_1ED4B6370;
  qword_1ED4B6370 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

id sub_18869F410()
{
  if (qword_1ED4B6388 != -1)
  {
    dispatch_once(&qword_1ED4B6388, &unk_1EFA30330);
  }

  v1 = qword_1ED4B6380;

  return v1;
}

uint64_t sub_18869F464()
{
  v0 = [CKComparisonOperatorValidator alloc];
  v2 = objc_msgSend_initWithOperatorType_(v0, v1, 1);
  v3 = qword_1ED4B6380;
  qword_1ED4B6380 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

id sub_18869F4A8()
{
  if (qword_1ED4B6398 != -1)
  {
    dispatch_once(&qword_1ED4B6398, &unk_1EFA30350);
  }

  v1 = qword_1ED4B6390;

  return v1;
}

uint64_t sub_18869F4FC()
{
  v0 = [CKComparisonOperatorValidator alloc];
  v2 = objc_msgSend_initWithOperatorType_(v0, v1, 2);
  v3 = qword_1ED4B6390;
  qword_1ED4B6390 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

id sub_18869F540()
{
  if (qword_1ED4B63A8 != -1)
  {
    dispatch_once(&qword_1ED4B63A8, &unk_1EFA30370);
  }

  v1 = qword_1ED4B63A0;

  return v1;
}

uint64_t sub_18869F594()
{
  v0 = [CKComparisonOperatorValidator alloc];
  v2 = objc_msgSend_initWithOperatorType_(v0, v1, 3);
  v3 = qword_1ED4B63A0;
  qword_1ED4B63A0 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

id sub_18869F5D8()
{
  if (qword_1ED4B63B8 != -1)
  {
    dispatch_once(&qword_1ED4B63B8, &unk_1EFA30390);
  }

  v1 = qword_1ED4B63B0;

  return v1;
}

uint64_t sub_18869F62C()
{
  v0 = [CKComparisonOperatorValidator alloc];
  v2 = objc_msgSend_initWithOperatorType_(v0, v1, 8);
  v3 = qword_1ED4B63B0;
  qword_1ED4B63B0 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

id sub_18869F670()
{
  if (qword_1ED4B63C8 != -1)
  {
    dispatch_once(&qword_1ED4B63C8, &unk_1EFA303B0);
  }

  v1 = qword_1ED4B63C0;

  return v1;
}

uint64_t sub_18869F6C4()
{
  v0 = [CKComparisonOperatorValidator alloc];
  v2 = objc_msgSend_initWithOperatorType_(v0, v1, 10);
  v3 = qword_1ED4B63C0;
  qword_1ED4B63C0 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

id sub_18869F708()
{
  if (qword_1ED4B63D8 != -1)
  {
    dispatch_once(&qword_1ED4B63D8, &unk_1EFA303D0);
  }

  v1 = qword_1ED4B63D0;

  return v1;
}

uint64_t sub_18869F75C()
{
  v0 = [CKComparisonOperatorValidator alloc];
  v2 = objc_msgSend_initWithOperatorType_(v0, v1, 99);
  v3 = qword_1ED4B63D0;
  qword_1ED4B63D0 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

id sub_18869F7A0()
{
  if (qword_1ED4B63E8 != -1)
  {
    dispatch_once(&qword_1ED4B63E8, &unk_1EFA303F0);
  }

  v1 = qword_1ED4B63E0;

  return v1;
}

uint64_t sub_18869F7F4()
{
  v0 = [CKComparisonOperatorValidator alloc];
  v2 = objc_msgSend_initWithOperatorType_(v0, v1, 100);
  v3 = qword_1ED4B63E0;
  qword_1ED4B63E0 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

id sub_18869F838()
{
  if (qword_1ED4B63F8 != -1)
  {
    dispatch_once(&qword_1ED4B63F8, &unk_1EFA30410);
  }

  v1 = qword_1ED4B63F0;

  return v1;
}

uint64_t sub_18869F88C()
{
  v0 = [CKComparisonOperatorValidator alloc];
  v2 = objc_msgSend_initWithOperatorType_(v0, v1, 1000);
  v3 = qword_1ED4B63F0;
  qword_1ED4B63F0 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

id sub_18869F8D0()
{
  if (qword_1ED4B6408 != -1)
  {
    dispatch_once(&qword_1ED4B6408, &unk_1EFA30430);
  }

  v1 = qword_1ED4B6400;

  return v1;
}

uint64_t sub_18869F924()
{
  v0 = [CKComparisonModifierValidator alloc];
  v2 = objc_msgSend_initWithModifier_(v0, v1, 0);
  v3 = qword_1ED4B6400;
  qword_1ED4B6400 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

id sub_18869F968()
{
  if (qword_1ED4B6418 != -1)
  {
    dispatch_once(&qword_1ED4B6418, &unk_1EFA30450);
  }

  v1 = qword_1ED4B6410;

  return v1;
}

uint64_t sub_18869F9BC()
{
  v0 = [CKComparisonModifierValidator alloc];
  v2 = objc_msgSend_initWithModifier_(v0, v1, 2);
  v3 = qword_1ED4B6410;
  qword_1ED4B6410 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

id sub_18869FA00()
{
  if (qword_1ED4B6428 != -1)
  {
    dispatch_once(&qword_1ED4B6428, &unk_1EFA30470);
  }

  v1 = qword_1ED4B6420;

  return v1;
}

uint64_t sub_18869FA54()
{
  v0 = [CKComparisonModifierValidator alloc];
  v2 = objc_msgSend_initWithModifier_(v0, v1, 1);
  v3 = qword_1ED4B6420;
  qword_1ED4B6420 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

void *sub_18869FA98(uint64_t a1)
{
  v1 = sub_18869BF94([CKComparisonOptionsValidator alloc], a1);

  return v1;
}

id sub_18869FADC()
{
  if (qword_1ED4B6438 != -1)
  {
    dispatch_once(&qword_1ED4B6438, &unk_1EFA30490);
  }

  v1 = qword_1ED4B6430;

  return v1;
}

uint64_t sub_18869FB30()
{
  v0 = sub_18869FA98(0);
  v1 = qword_1ED4B6430;
  qword_1ED4B6430 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id sub_18869FB6C()
{
  if (qword_1ED4B6448 != -1)
  {
    dispatch_once(&qword_1ED4B6448, &unk_1EFA304B0);
  }

  v1 = qword_1ED4B6440;

  return v1;
}

uint64_t sub_18869FBC0()
{
  v0 = sub_18869FA98(11);
  v1 = qword_1ED4B6440;
  qword_1ED4B6440 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id *sub_18869FBFC(void *a1)
{
  v1 = sub_18869DC30([CKKindOfClassValidator alloc], a1);

  return v1;
}

id sub_18869FC40()
{
  if (qword_1ED4B6458 != -1)
  {
    dispatch_once(&qword_1ED4B6458, &unk_1EFA304D0);
  }

  v1 = qword_1ED4B6450;

  return v1;
}

void sub_18869FC94()
{
  v0 = [CKConstantValueExpressionValidator alloc];
  v4 = sub_18869F1F4();
  v2 = objc_msgSend_initWithValidator_(v0, v1, v4);
  v3 = qword_1ED4B6450;
  qword_1ED4B6450 = v2;
}

id sub_18869FD04()
{
  if (qword_1ED4B6468 != -1)
  {
    dispatch_once(&qword_1ED4B6468, &unk_1EFA304F0);
  }

  v1 = qword_1ED4B6460;

  return v1;
}

void sub_18869FD58()
{
  v0 = [CKConstantValueExpressionValidator alloc];
  v4 = objc_alloc_init(CKKindOfCollectionClassValidator);
  v2 = objc_msgSend_initWithValidator_(v0, v1, v4);
  v3 = qword_1ED4B6460;
  qword_1ED4B6460 = v2;
}

id sub_18869FDCC(void *a1, const char *a2, uint64_t a3)
{
  if (!a1)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v10, "id<CKObjectValidating> cv(__unsafe_unretained Class)");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v9, v12, v11, @"CKPredicateValidatorConvenienceFunctions.m", 299, @"Invalid parameter not satisfying: %@", @"c != nil");
  }

  v4 = [CKConstantValueExpressionValidator alloc];
  v5 = sub_18869DC30([CKKindOfClassValidator alloc], a1);
  v7 = objc_msgSend_initWithValidator_(v4, v6, v5);

  return v7;
}

id sub_18869FEB8(void *a1)
{
  v3 = a1;
  if (!v3)
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v1, v2);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v12, "id<CKObjectValidating> cv_Val(NSError *(^__strong)(__strong id))");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v11, v14, v13, @"CKPredicateValidatorConvenienceFunctions.m", 303, @"Invalid parameter not satisfying: %@", @"validator != nil");
  }

  v4 = [CKConstantValueExpressionValidator alloc];
  v5 = [CKCustomBlockValidator alloc];
  v7 = objc_msgSend_initWithBlock_(v5, v6, v3);
  v9 = objc_msgSend_initWithValidator_(v4, v8, v7);

  return v9;
}

id sub_18869FFAC()
{
  if (qword_1ED4B6478 != -1)
  {
    dispatch_once(&qword_1ED4B6478, &unk_1EFA30510);
  }

  v1 = qword_1ED4B6470;

  return v1;
}

uint64_t sub_1886A0000()
{
  v0 = objc_opt_class();
  v3 = sub_18869FDCC(v0, v1, v2);
  v4 = qword_1ED4B6470;
  qword_1ED4B6470 = v3;

  return MEMORY[0x1EEE66BB8](v3, v4);
}

id sub_1886A0044()
{
  if (qword_1ED4B6488 != -1)
  {
    dispatch_once(&qword_1ED4B6488, &unk_1EFA30530);
  }

  v1 = qword_1ED4B6480;

  return v1;
}

uint64_t sub_1886A0098()
{
  v0 = objc_opt_class();
  v3 = sub_18869FDCC(v0, v1, v2);
  v4 = qword_1ED4B6480;
  qword_1ED4B6480 = v3;

  return MEMORY[0x1EEE66BB8](v3, v4);
}

id sub_1886A00DC()
{
  if (qword_1ED4B6498 != -1)
  {
    dispatch_once(&qword_1ED4B6498, &unk_1EFA30550);
  }

  v1 = qword_1ED4B6490;

  return v1;
}

uint64_t sub_1886A0130()
{
  v0 = objc_opt_class();
  v3 = sub_18869FDCC(v0, v1, v2);
  v4 = qword_1ED4B6490;
  qword_1ED4B6490 = v3;

  return MEMORY[0x1EEE66BB8](v3, v4);
}

id sub_1886A0174()
{
  if (qword_1ED4B64A8 != -1)
  {
    dispatch_once(&qword_1ED4B64A8, &unk_1EFA30570);
  }

  v1 = qword_1ED4B64A0;

  return v1;
}

void sub_1886A01C8()
{
  v0 = [CKKeyPathExpressionValidator alloc];
  v4 = sub_18869F1F4();
  v2 = objc_msgSend_initWithValidator_(v0, v1, v4);
  v3 = qword_1ED4B64A0;
  qword_1ED4B64A0 = v2;
}

id sub_1886A0238(void *a1)
{
  v1 = a1;
  v2 = [CKKeyPathExpressionValidator alloc];
  v3 = [CKStringValueValidator alloc];
  v5 = objc_msgSend_initWithValue_(v3, v4, v1);

  v7 = objc_msgSend_initWithValidator_(v2, v6, v5);

  return v7;
}

id sub_1886A02BC()
{
  if (qword_1ED4B64B8 != -1)
  {
    dispatch_once(&qword_1ED4B64B8, &unk_1EFA30590);
  }

  v1 = qword_1ED4B64B0;

  return v1;
}

uint64_t sub_1886A0310()
{
  v0 = sub_1886A0238(@"allTokens");
  v1 = qword_1ED4B64B0;
  qword_1ED4B64B0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id sub_1886A0350()
{
  if (qword_1ED4B64C8 != -1)
  {
    dispatch_once(&qword_1ED4B64C8, &unk_1EFA305B0);
  }

  v1 = qword_1ED4B64C0;

  return v1;
}

uint64_t sub_1886A03A4()
{
  v0 = objc_alloc_init(CKEvaluatedObjectExpressionValidator);
  v1 = qword_1ED4B64C0;
  qword_1ED4B64C0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id *sub_1886A03E0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v11 = a1;
  v14 = a2;
  if (!v11)
  {
    v25 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v12, v13);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v26, "id<CKObjectValidating> func(NSString *__strong, __strong id<CKObjectValidating>, ...)");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v25, v28, v27, @"CKPredicateValidatorConvenienceFunctions.m", 364, @"Invalid parameter not satisfying: %@", @"functionName != nil");
  }

  v15 = objc_msgSend_array(MEMORY[0x1E695DF70], v12, v13);
  v17 = v15;
  if (v14)
  {
    objc_msgSend_addObject_(v15, v16, v14);
    v29 = &a10;
    v18 = a9;
    if (v18)
    {
      v20 = v18;
      do
      {
        objc_msgSend_addObject_(v17, v19, v20);
        v21 = v29++;
        v22 = *v21;

        v20 = v22;
      }

      while (v22);
    }
  }

  v23 = sub_18869D290([CKFunctionExpressionValidator alloc], v11, v17);

  return v23;
}

id sub_1886A0540(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v10 = a1;
  v13 = objc_msgSend_array(MEMORY[0x1E695DF70], v11, v12);
  v15 = v13;
  if (v10)
  {
    objc_msgSend_addObject_(v13, v14, v10);
    v25 = &a10;
    v16 = a9;
    if (v16)
    {
      v18 = v16;
      do
      {
        objc_msgSend_addObject_(v15, v17, v18);
        v19 = v25++;
        v20 = *v19;

        v18 = v20;
      }

      while (v20);
    }
  }

  v21 = [CKAggregateExpressionValidator alloc];
  v23 = objc_msgSend_initWithValidators_(v21, v22, v15);

  return v23;
}

uint64_t sub_1886A0618()
{
  v0 = objc_alloc_init(CKTrueValidator);
  v1 = qword_1ED4B64D0;
  qword_1ED4B64D0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id sub_1886A0654()
{
  if (qword_1ED4B64E8 != -1)
  {
    dispatch_once(&qword_1ED4B64E8, &unk_1EFA305F0);
  }

  v1 = qword_1ED4B64E0;

  return v1;
}

uint64_t sub_1886A06A8()
{
  v0 = objc_alloc_init(CKNilValidator);
  v1 = qword_1ED4B64E0;
  qword_1ED4B64E0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_1886A0A74()
{
  v0 = [CKAccountOverrideInfo alloc];
  v2 = objc_msgSend__initWithEmail_password_recoveryKey_(v0, v1, @"__anonymous_account__", 0, 0);
  v3 = qword_1ED4B64F8;
  qword_1ED4B64F8 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

uint64_t sub_1886A0B18()
{
  v0 = [CKAccountOverrideInfo alloc];
  v2 = objc_msgSend__initWithEmail_password_recoveryKey_(v0, v1, @"__live_account__", 0, 0);
  v3 = qword_1ED4B6508;
  qword_1ED4B6508 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

void sub_1886A179C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  (*(v29 + 16))(v29);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void *sub_1886A17F4(void *result)
{
  v1 = result;
  if (result[6])
  {
    result = *(*(result[4] + 8) + 40);
    *v1[6] = result;
  }

  if (v1[7])
  {
    result = *(*(v1[5] + 8) + 40);
    *v1[7] = result;
  }

  return result;
}

id sub_1886A2830(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a1)
  {
    v6 = objc_msgSend_CKUserDefaults(CKUserDefaults, v3, v4);
    v8 = objc_msgSend_dictionaryForKey_(v6, v7, @"BehaviorOptions");

    if (v8)
    {
      v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, v5);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_1886A28D4(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = a2;
    v5 = objc_msgSend_CKUserDefaults(CKUserDefaults, v3, v4);
    v7 = objc_msgSend_objectForKey_(v5, v6, v2);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1886A2950(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v4 = sub_1886A2830(a1, a2);
  if (v4)
  {
    v7 = v4;
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v10 = objc_msgSend_null(MEMORY[0x1E695DFB0], v8, v9);

      v7 = v10;
      if (!v10)
      {
        goto LABEL_9;
      }
    }

LABEL_7:
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      a3 = objc_msgSend_BOOLValue(v7, v11, v12);
    }

    goto LABEL_9;
  }

  v7 = objc_msgSend_null(MEMORY[0x1E695DFB0], v5, v6);
  if (v7)
  {
    goto LABEL_7;
  }

LABEL_9:

  return a3;
}

uint64_t sub_1886A2A08(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v4 = sub_1886A2830(a1, a2);
  if (v4)
  {
    v7 = v4;
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v10 = objc_msgSend_null(MEMORY[0x1E695DFB0], v8, v9);

      v7 = v10;
      if (!v10)
      {
        goto LABEL_9;
      }
    }

LABEL_7:
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      a3 = objc_msgSend_intValue(v7, v11, v12);
    }

    goto LABEL_9;
  }

  v7 = objc_msgSend_null(MEMORY[0x1E695DFB0], v5, v6);
  if (v7)
  {
    goto LABEL_7;
  }

LABEL_9:

  return a3;
}

double sub_1886A2AC0(uint64_t a1, void *a2, double a3)
{
  if (!a1)
  {
    return 0.0;
  }

  v4 = sub_1886A2830(a1, a2);
  if (v4)
  {
    v7 = v4;
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v10 = objc_msgSend_null(MEMORY[0x1E695DFB0], v8, v9);

      v7 = v10;
      if (!v10)
      {
        goto LABEL_9;
      }
    }

LABEL_7:
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_msgSend_doubleValue(v7, v11, v12);
      a3 = v13;
    }

    goto LABEL_9;
  }

  v7 = objc_msgSend_null(MEMORY[0x1E695DFB0], v5, v6);
  if (v7)
  {
    goto LABEL_7;
  }

LABEL_9:

  return a3;
}

id sub_1886A2B80(id a1, void *a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = sub_1886A2830(a1, a2);
    if (v6)
    {
      v9 = v6;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || !objc_msgSend_length(v9, v10, v11))
      {
        v12 = objc_msgSend_null(MEMORY[0x1E695DFB0], v10, v11);

        v9 = v12;
        if (!v12)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      v9 = objc_msgSend_null(MEMORY[0x1E695DFB0], v7, v8);
      if (!v9)
      {
        goto LABEL_9;
      }
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v14 = v9;
    if ((isKindOfClass & 1) == 0)
    {
LABEL_10:
      a1 = v14;

      goto LABEL_11;
    }

LABEL_9:
    v14 = v5;
    goto LABEL_10;
  }

LABEL_11:

  return a1;
}

id sub_1886A35CC(void *a1, void *a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = sub_1886A2B80(a1, a2, v5);
    if (objc_msgSend_isEqualToString_(v6, v7, @"(Automatic)"))
    {
      v10 = v5;

      v6 = v10;
    }

    if (!objc_msgSend_length(v6, v8, v9) || (objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v11, v6), (a1 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (objc_msgSend_length(v5, v11, v12))
      {
        a1 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v13, v5);
      }

      else
      {
        a1 = 0;
      }
    }
  }

  return a1;
}

uint64_t sub_1886A4398(uint64_t result)
{
  if (result)
  {
    return sub_1886A2950(result, @"ForceUploadRequestActivitiesToRunImmediately", 0);
  }

  return result;
}

void sub_1886A4FBC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_postNotice(WeakRetained, v1, v2);
}

uint64_t sub_1886A5134(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 32) + 8));
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, 1, &unk_1EFA30670);
  }

  v3 = (*(a1 + 32) + 8);

  return pthread_mutex_unlock(v3);
}

id sub_1886A64AC(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v3 = qword_1EA919B80;
  v10 = qword_1EA919B80;
  if (!qword_1EA919B80)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1886A6D9C;
    v6[3] = &unk_1E70BBE90;
    v6[4] = &v7;
    sub_1886A6D9C(v6, a2, a3);
    v3 = v8[3];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_1886A6574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1886A658C(void *a1)
{
  v103[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v98 = 0;
  v99 = &v98;
  v100 = 0x2050000000;
  v4 = qword_1ED4B6530;
  v101 = qword_1ED4B6530;
  if (!qword_1ED4B6530)
  {
    v93 = MEMORY[0x1E69E9820];
    v94 = 3221225472;
    v95 = sub_1886A710C;
    v96 = &unk_1E70BBE90;
    v97 = &v98;
    sub_1886A710C(&v93, v1, v2);
    v4 = v99[3];
  }

  v5 = v4;
  _Block_object_dispose(&v98, 8);
  if (v4)
  {
    v6 = objc_opt_new();
    v9 = objc_msgSend_nameComponents(v3, v7, v8);
    v12 = objc_msgSend_givenName(v9, v10, v11);
    v14 = v12;
    if (v12)
    {
      objc_msgSend_setGivenName_(v6, v13, v12);
    }

    else
    {
      objc_msgSend_setGivenName_(v6, v13, &stru_1EFA32970);
    }

    v17 = objc_msgSend_nameComponents(v3, v15, v16);
    v20 = objc_msgSend_familyName(v17, v18, v19);
    v22 = v20;
    if (v20)
    {
      objc_msgSend_setFamilyName_(v6, v21, v20);
    }

    else
    {
      objc_msgSend_setFamilyName_(v6, v21, &stru_1EFA32970);
    }

    v25 = objc_msgSend_lookupInfo(v3, v23, v24);
    v28 = objc_msgSend_emailAddress(v25, v26, v27);
    v31 = objc_msgSend_length(v28, v29, v30) == 0;

    if (!v31)
    {
      v35 = sub_1886A702C(v32, v33, v34);
      v36 = v35;
      if (v35)
      {
        v98 = 0;
        v99 = &v98;
        v100 = 0x2020000000;
        v37 = qword_1ED4B6538;
        v101 = qword_1ED4B6538;
        if (!qword_1ED4B6538)
        {
          v93 = MEMORY[0x1E69E9820];
          v94 = 3221225472;
          v95 = sub_1886A729C;
          v96 = &unk_1E70BBE90;
          v97 = &v98;
          v38 = sub_1886A6E64(v35, v33, v34);
          v39 = dlsym(v38, "CNLabelHome");
          *(v97[1] + 24) = v39;
          qword_1ED4B6538 = *(v97[1] + 24);
          v37 = v99[3];
        }

        _Block_object_dispose(&v98, 8);
        if (!v37)
        {
          v83 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v40, v41);
          v85 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v84, "NSString *getCNLabelHome(void)");
          v86 = dlerror();
          objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v83, v87, v85, @"CKContactFetcher.m", 22, @"%s", v86);

          goto LABEL_32;
        }

        v42 = *v37;
        v45 = objc_msgSend_emailAddress(v25, v43, v44);
        v47 = objc_msgSend_labeledValueWithLabel_value_(v36, v46, v42, v45);

        v103[0] = v47;
        v49 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v48, v103, 1);
        objc_msgSend_setEmailAddresses_(v6, v50, v49);
      }
    }

    v51 = objc_msgSend_phoneNumber(v25, v33, v34);
    v54 = objc_msgSend_length(v51, v52, v53) == 0;

    if (v54)
    {
      goto LABEL_25;
    }

    v58 = sub_1886A6CBC(v55, v56, v57);
    v61 = sub_1886A702C(v58, v59, v60);
    if (!v58)
    {
      goto LABEL_25;
    }

    v62 = v61;
    if (!v61)
    {
      goto LABEL_25;
    }

    v63 = objc_msgSend_phoneNumber(v25, v56, v57);
    v65 = objc_msgSend_phoneNumberWithStringValue_(v58, v64, v63);

    if (!v65)
    {
LABEL_24:

LABEL_25:
      v80 = objc_msgSend_copy(v6, v56, v57);

      goto LABEL_27;
    }

    v98 = 0;
    v99 = &v98;
    v100 = 0x2020000000;
    v69 = qword_1ED4B6540;
    v101 = qword_1ED4B6540;
    if (!qword_1ED4B6540)
    {
      v93 = MEMORY[0x1E69E9820];
      v94 = 3221225472;
      v95 = sub_1886A72EC;
      v96 = &unk_1E70BBE90;
      v97 = &v98;
      v70 = sub_1886A6E64(v66, v67, v68);
      v71 = dlsym(v70, "CNLabelPhoneNumberMain");
      *(v97[1] + 24) = v71;
      qword_1ED4B6540 = *(v97[1] + 24);
      v69 = v99[3];
    }

    _Block_object_dispose(&v98, 8);
    if (v69)
    {
      v74 = *v69;
      v76 = objc_msgSend_labeledValueWithLabel_value_(v62, v75, v74, v65);

      v102 = v76;
      v78 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v77, &v102, 1);
      objc_msgSend_setPhoneNumbers_(v6, v79, v78);

      goto LABEL_24;
    }

    v88 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v72, v73);
    v90 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v89, "NSString *getCNLabelPhoneNumberMain(void)");
    v91 = dlerror();
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v88, v92, v90, @"CKContactFetcher.m", 21, @"%s", v91);

LABEL_32:
    __break(1u);
  }

  v80 = 0;
LABEL_27:

  v81 = *MEMORY[0x1E69E9840];

  return v80;
}

void sub_1886A6ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1886A6B04(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = sub_1886A64AC(a1, a2, a3);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v4 authorizationStatusForEntityType_];
}

void sub_1886A6B6C(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

id sub_1886A6BDC(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v3 = qword_1EA919B98;
  v10 = qword_1EA919B98;
  if (!qword_1EA919B98)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1886A73DC;
    v6[3] = &unk_1E70BBE90;
    v6[4] = &v7;
    sub_1886A73DC(v6, a2, a3);
    v3 = v8[3];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_1886A6CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1886A6CBC(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v3 = qword_1EA919BA0;
  v10 = qword_1EA919BA0;
  if (!qword_1EA919BA0)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1886A74F4;
    v6[3] = &unk_1E70BBE90;
    v6[4] = &v7;
    sub_1886A74F4(v6, a2, a3);
    v3 = v8[3];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_1886A6D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1886A6D9C(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1886A6E64(a1, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNContactStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1EA919B80 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v4, v5);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v7, "Class getCNContactStoreClass(void)_block_invoke");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v6, v9, v8, @"CKContactFetcher.m", 32, @"Unable to find class %s", "CNContactStore");

    __break(1u);
  }
}

void *sub_1886A6E64(uint64_t a1, const char *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  if (!qword_1EA919B88)
  {
    v10[1] = MEMORY[0x1E69E9820];
    v10[2] = 3221225472;
    v10[3] = sub_1886A6FB8;
    v10[4] = &unk_1E70BC418;
    v10[5] = v10;
    v11 = xmmword_1E70C1AA8;
    v12 = 0;
    qword_1EA919B88 = _sl_dlopen();
  }

  v3 = qword_1EA919B88;
  if (!qword_1EA919B88)
  {
    v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v7, "void *ContactsLibrary(void)");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v9, v8, @"CKContactFetcher.m", 19, @"%s", v10[0]);

    __break(1u);
    goto LABEL_7;
  }

  v4 = v10[0];
  if (v10[0])
  {
LABEL_7:
    free(v4);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1886A6FB8(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1EA919B88 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1886A702C(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v3 = qword_1EA919B90;
  v10 = qword_1EA919B90;
  if (!qword_1EA919B90)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1886A71D4;
    v6[3] = &unk_1E70BBE90;
    v6[4] = &v7;
    sub_1886A71D4(v6, a2, a3);
    v3 = v8[3];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_1886A70F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1886A710C(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1886A6E64(a1, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNMutableContact");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED4B6530 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v4, v5);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v7, "Class getCNMutableContactClass(void)_block_invoke");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v6, v9, v8, @"CKContactFetcher.m", 29, @"Unable to find class %s", "CNMutableContact");

    __break(1u);
  }
}

void sub_1886A71D4(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1886A6E64(a1, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNLabeledValue");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1EA919B90 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v4, v5);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v7, "Class getCNLabeledValueClass(void)_block_invoke");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v6, v9, v8, @"CKContactFetcher.m", 31, @"Unable to find class %s", "CNLabeledValue");

    __break(1u);
  }
}

void *sub_1886A729C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_1886A6E64(a1, a2, a3);
  result = dlsym(v4, "CNLabelHome");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED4B6538 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1886A72EC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_1886A6E64(a1, a2, a3);
  result = dlsym(v4, "CNLabelPhoneNumberMain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED4B6540 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1886A733C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_1886A6E64(a1, a2, a3);
  result = dlsym(v4, "CNContactGivenNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED4B6548 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1886A738C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_1886A6E64(a1, a2, a3);
  result = dlsym(v4, "CNContactFamilyNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED4B6550 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1886A73DC(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1886A6E64(a1, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNContact");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1EA919B98 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v4, v5);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v7, "Class getCNContactClass(void)_block_invoke");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v6, v9, v8, @"CKContactFetcher.m", 28, @"Unable to find class %s", "CNContact");

    __break(1u);
  }
}

void *sub_1886A74A4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_1886A6E64(a1, a2, a3);
  result = dlsym(v4, "CNContactEmailAddressesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED4B6558 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1886A74F4(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1886A6E64(a1, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNPhoneNumber");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1EA919BA0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v4, v5);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v7, "Class getCNPhoneNumberClass(void)_block_invoke");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v6, v9, v8, @"CKContactFetcher.m", 30, @"Unable to find class %s", "CNPhoneNumber");

    __break(1u);
  }
}

void *sub_1886A75BC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_1886A6E64(a1, a2, a3);
  result = dlsym(v4, "CNContactPhoneNumbersKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED4B6560 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CKContainerEnvironmentFromString(void *a1, const char *a2)
{
  if (objc_msgSend_compare_options_(a1, a2, @"Production", 1))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

id sub_1886ABCC0(void *a1, uint64_t a2, void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DF70];
  v8 = objc_msgSend_count(a1, v6, v7);
  v10 = objc_msgSend_arrayWithCapacity_(v5, v9, v8);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v11 = a1;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v45, v49, 16);
  if (v13)
  {
    v14 = v13;
    v15 = *v46;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v46 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v45 + 1) + 8 * i);
        v18 = v4;
        if (objc_msgSend_conformsToProtocol_(v17, v19, &unk_1EFA9C3D0))
        {
          v22 = objc_msgSend_CKDeepCopy(v17, v20, v21);
LABEL_14:
          v24 = v22;
          goto LABEL_15;
        }

        if (objc_msgSend_conformsToProtocol_(v17, v20, &unk_1EFA8BF50))
        {
          v33 = MEMORY[0x1E696AEC0];
          v34 = objc_opt_class();
          v35 = NSStringFromClass(v34);
          v36 = NSStringFromProtocol(&unk_1EFA9C3D0);
          v38 = objc_msgSend_stringWithFormat_(v33, v37, @"Collection with class %@ does not support %@", v35, v36, v45);

          goto LABEL_22;
        }

        if (!v4)
        {
          if (!objc_msgSend_conformsToProtocol_(v17, v23, &unk_1EFA87B00))
          {
LABEL_21:
            v39 = MEMORY[0x1E696AEC0];
            v40 = objc_opt_class();
            v35 = NSStringFromClass(v40);
            v38 = objc_msgSend_stringWithFormat_(v39, v41, @"Object with class %@ cannot be copied", v35);
LABEL_22:

            v42 = [CKException alloc];
            v44 = objc_msgSend_initWithName_format_(v42, v43, *MEMORY[0x1E695D940], @"%@", v38);
            objc_exception_throw(v44);
          }

          v22 = objc_msgSend_copyWithZone_(v17, v25, 0);
          goto LABEL_14;
        }

        v24 = (*(v4 + 2))(v18, v17);
        if (!v24)
        {
          goto LABEL_21;
        }

LABEL_15:

        objc_msgSend_addObject_(v10, v26, v24);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v27, &v45, v49, 16);
    }

    while (v14);
  }

  v30 = objc_msgSend_copy(v10, v28, v29);
  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

id sub_1886ABF78(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF90];
  v8 = objc_msgSend_count(a1, v6, v7);
  v10 = objc_msgSend_dictionaryWithCapacity_(v5, v9, v8);
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = sub_1886AC070;
  v21 = &unk_1E70C1C18;
  v22 = v10;
  v23 = v4;
  v11 = v4;
  v12 = v10;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(a1, v13, &v18);
  v16 = objc_msgSend_copy(v12, v14, v15, v18, v19, v20, v21);

  return v16;
}

void sub_1886AC070(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  v8 = v6;
  v9 = v7;
  if (!objc_msgSend_conformsToProtocol_(v8, v10, &unk_1EFA9C3D0))
  {
    if (objc_msgSend_conformsToProtocol_(v8, v11, &unk_1EFA8BF50))
    {
      v28 = MEMORY[0x1E696AEC0];
      goto LABEL_25;
    }

    if (v9)
    {
      v15 = v9[2](v9, v8);
      if (v15)
      {
        goto LABEL_10;
      }
    }

    else if (objc_msgSend_conformsToProtocol_(v8, v14, &unk_1EFA87B00))
    {
      v13 = objc_msgSend_copyWithZone_(v8, v16, 0);
      goto LABEL_9;
    }

    v29 = MEMORY[0x1E696AEC0];
LABEL_27:
    v35 = objc_opt_class();
    v31 = NSStringFromClass(v35);
    v34 = objc_msgSend_stringWithFormat_(v29, v36, @"Object with class %@ cannot be copied", v31);
LABEL_28:

    v37 = [CKException alloc];
    v39 = objc_msgSend_initWithName_format_(v37, v38, *MEMORY[0x1E695D940], @"%@", v34);
    objc_exception_throw(v39);
  }

  v13 = objc_msgSend_CKDeepCopy(v8, v11, v12);
LABEL_9:
  v15 = v13;
LABEL_10:

  v18 = *(a1 + 32);
  v17 = *(a1 + 40);
  v40 = v5;
  v19 = v17;
  if (!objc_msgSend_conformsToProtocol_(v40, v20, &unk_1EFA9C3D0))
  {
    if (!objc_msgSend_conformsToProtocol_(v40, v21, &unk_1EFA8BF50))
    {
      if (v19)
      {
        v25 = v19[2](v19, v40);
        if (v25)
        {
          goto LABEL_19;
        }
      }

      else if (objc_msgSend_conformsToProtocol_(v40, v24, &unk_1EFA87B00))
      {
        v23 = objc_msgSend_copyWithZone_(v40, v26, 0);
        goto LABEL_18;
      }

      v29 = MEMORY[0x1E696AEC0];
      goto LABEL_27;
    }

    v28 = MEMORY[0x1E696AEC0];
LABEL_25:
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    v32 = NSStringFromProtocol(&unk_1EFA9C3D0);
    v34 = objc_msgSend_stringWithFormat_(v28, v33, @"Collection with class %@ does not support %@", v31, v32);

    goto LABEL_28;
  }

  v23 = objc_msgSend_CKDeepCopy(v40, v21, v22);
LABEL_18:
  v25 = v23;
LABEL_19:

  objc_msgSend_setObject_forKeyedSubscript_(v18, v27, v15, v25);
}

id sub_1886AC304(void *a1, uint64_t a2, void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DFA8];
  v8 = objc_msgSend_count(a1, v6, v7);
  v10 = objc_msgSend_setWithCapacity_(v5, v9, v8);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v11 = a1;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v45, v49, 16);
  if (v13)
  {
    v14 = v13;
    v15 = *v46;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v46 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v45 + 1) + 8 * i);
        v18 = v4;
        if (objc_msgSend_conformsToProtocol_(v17, v19, &unk_1EFA9C3D0))
        {
          v22 = objc_msgSend_CKDeepCopy(v17, v20, v21);
LABEL_14:
          v24 = v22;
          goto LABEL_15;
        }

        if (objc_msgSend_conformsToProtocol_(v17, v20, &unk_1EFA8BF50))
        {
          v33 = MEMORY[0x1E696AEC0];
          v34 = objc_opt_class();
          v35 = NSStringFromClass(v34);
          v36 = NSStringFromProtocol(&unk_1EFA9C3D0);
          v38 = objc_msgSend_stringWithFormat_(v33, v37, @"Collection with class %@ does not support %@", v35, v36, v45);

          goto LABEL_22;
        }

        if (!v4)
        {
          if (!objc_msgSend_conformsToProtocol_(v17, v23, &unk_1EFA87B00))
          {
LABEL_21:
            v39 = MEMORY[0x1E696AEC0];
            v40 = objc_opt_class();
            v35 = NSStringFromClass(v40);
            v38 = objc_msgSend_stringWithFormat_(v39, v41, @"Object with class %@ cannot be copied", v35);
LABEL_22:

            v42 = [CKException alloc];
            v44 = objc_msgSend_initWithName_format_(v42, v43, *MEMORY[0x1E695D940], @"%@", v38);
            objc_exception_throw(v44);
          }

          v22 = objc_msgSend_copyWithZone_(v17, v25, 0);
          goto LABEL_14;
        }

        v24 = (*(v4 + 2))(v18, v17);
        if (!v24)
        {
          goto LABEL_21;
        }

LABEL_15:

        objc_msgSend_addObject_(v10, v26, v24);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v27, &v45, v49, 16);
    }

    while (v14);
  }

  v30 = objc_msgSend_copy(v10, v28, v29);
  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

id sub_1886AC5BC(void *a1, const char *a2, uint64_t a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFA0];
  v5 = objc_msgSend_count(a1, a2, a3);
  v7 = objc_msgSend_orderedSetWithCapacity_(v4, v6, v5);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v8 = a1;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v41, v45, 16);
  if (v10)
  {
    v11 = v10;
    v12 = *v42;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v41 + 1) + 8 * i);
        if (objc_msgSend_conformsToProtocol_(v14, v15, &unk_1EFA9C3D0))
        {
          v18 = objc_msgSend_CKDeepCopy(v14, v16, v17);
        }

        else
        {
          if (objc_msgSend_conformsToProtocol_(v14, v16, &unk_1EFA8BF50))
          {
            v29 = MEMORY[0x1E696AEC0];
            v30 = objc_opt_class();
            v31 = NSStringFromClass(v30);
            v32 = NSStringFromProtocol(&unk_1EFA9C3D0);
            v34 = objc_msgSend_stringWithFormat_(v29, v33, @"Collection with class %@ does not support %@", v31, v32, v41);

            goto LABEL_18;
          }

          if (!objc_msgSend_conformsToProtocol_(v14, v19, &unk_1EFA87B00))
          {
            v35 = MEMORY[0x1E696AEC0];
            v36 = objc_opt_class();
            v31 = NSStringFromClass(v36);
            v34 = objc_msgSend_stringWithFormat_(v35, v37, @"Object with class %@ cannot be copied", v31);
LABEL_18:

            v38 = [CKException alloc];
            v40 = objc_msgSend_initWithName_format_(v38, v39, *MEMORY[0x1E695D940], @"%@", v34);
            objc_exception_throw(v40);
          }

          v18 = objc_msgSend_copyWithZone_(v14, v20, 0);
        }

        v21 = v18;

        objc_msgSend_addObject_(v7, v22, v21);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v23, &v41, v45, 16);
    }

    while (v11);
  }

  v26 = objc_msgSend_copy(v7, v24, v25);
  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

id sub_1886AC828(void *a1, uint64_t a2, void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DFA0];
  v8 = objc_msgSend_count(a1, v6, v7);
  v10 = objc_msgSend_orderedSetWithCapacity_(v5, v9, v8);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v11 = a1;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v45, v49, 16);
  if (v13)
  {
    v14 = v13;
    v15 = *v46;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v46 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v45 + 1) + 8 * i);
        v18 = v4;
        if (objc_msgSend_conformsToProtocol_(v17, v19, &unk_1EFA9C3D0))
        {
          v22 = objc_msgSend_CKDeepCopy(v17, v20, v21);
LABEL_14:
          v24 = v22;
          goto LABEL_15;
        }

        if (objc_msgSend_conformsToProtocol_(v17, v20, &unk_1EFA8BF50))
        {
          v33 = MEMORY[0x1E696AEC0];
          v34 = objc_opt_class();
          v35 = NSStringFromClass(v34);
          v36 = NSStringFromProtocol(&unk_1EFA9C3D0);
          v38 = objc_msgSend_stringWithFormat_(v33, v37, @"Collection with class %@ does not support %@", v35, v36, v45);

          goto LABEL_22;
        }

        if (!v4)
        {
          if (!objc_msgSend_conformsToProtocol_(v17, v23, &unk_1EFA87B00))
          {
LABEL_21:
            v39 = MEMORY[0x1E696AEC0];
            v40 = objc_opt_class();
            v35 = NSStringFromClass(v40);
            v38 = objc_msgSend_stringWithFormat_(v39, v41, @"Object with class %@ cannot be copied", v35);
LABEL_22:

            v42 = [CKException alloc];
            v44 = objc_msgSend_initWithName_format_(v42, v43, *MEMORY[0x1E695D940], @"%@", v38);
            objc_exception_throw(v44);
          }

          v22 = objc_msgSend_copyWithZone_(v17, v25, 0);
          goto LABEL_14;
        }

        v24 = (*(v4 + 2))(v18, v17);
        if (!v24)
        {
          goto LABEL_21;
        }

LABEL_15:

        objc_msgSend_addObject_(v10, v26, v24);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v27, &v45, v49, 16);
    }

    while (v14);
  }

  v30 = objc_msgSend_copy(v10, v28, v29);
  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

id sub_1886ACAE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_opt_class();
  if (objc_msgSend_conformsToProtocol_(v7, v8, &unk_1EFA8A7B0))
  {
    v10 = objc_autoreleasePoolPush();
    v12 = objc_msgSend_CKObjectDescriptionRedact_avoidShortDescription_(a1, v11, a3, a4);
    v15 = objc_msgSend_description(v12, v13, v14);

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, @"<%@: %p>", a1, a1);
  }

  return v15;
}

id sub_1886ACBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [CKObjectDescription alloc];
  v9 = objc_msgSend_initWithObject_redact_avoidShortDescription_(v7, v8, a1, a3, a4);

  return v9;
}

void *sub_1886ACF48(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  if (objc_msgSend_BOOLValue(a3, v5, v6))
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

void sub_1886ADBF8(void *a1, uint64_t a2, void *a3)
{
  v21 = a3;
  objc_msgSend_setPrintAsDictionary_(v21, v4, 1);
  if (objc_msgSend_avoidShortDescription(v21, v5, v6))
  {
    objc_msgSend_addProperty_value_shouldRedact_(v21, v7, @"type", @"data", 0);
  }

  v9 = MEMORY[0x1E696AD98];
  v10 = objc_msgSend_length(a1, v7, v8);
  v12 = objc_msgSend_numberWithUnsignedInteger_(v9, v11, v10);
  objc_msgSend_addProperty_value_shouldRedact_(v21, v13, @"length", v12, 0);

  if (objc_msgSend_length(a1, v14, v15) < 0x19)
  {
    v18 = objc_msgSend_base64EncodedStringWithOptions_(a1, v16, 32);
    objc_msgSend_addProperty_value_shouldRedact_(v21, v20, @"data", v18, 1);
  }

  else
  {
    v18 = objc_msgSend_CKSHA256(a1, v16, v17);
    objc_msgSend_addProperty_value_shouldRedact_(v21, v19, @"sha256", v18, 1);
  }
}

__CFString *sub_1886ADD08(uint64_t a1, const char *a2, char a3)
{
  if (a3)
  {
    v5 = @"<private>";
  }

  else
  {
    v5 = objc_msgSend_localizedStringFromPersonNameComponents_style_options_(MEMORY[0x1E696ADF8], a2, a1, 1, 0, v3);
  }

  return v5;
}

void sub_1886ADD68(void *a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_msgSend_setPrintAsDictionary_(v4, v5, 1);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1EFA85DD0, v6, &v18, v22, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(&unk_1EFA85DD0);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = NSSelectorFromString(v11);
        v14 = objc_msgSend_performSelector_(a1, v13, v12);
        objc_msgSend_addProperty_value_shouldRedact_(v4, v15, v11, v14, 1);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1EFA85DD0, v16, &v18, v22, 16);
    }

    while (v8);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1886AF084(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void sub_1886AF328(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 40), a2);
  }
}

void *sub_1886AF3A4(void *result, const char *a2)
{
  if (result)
  {
    v2 = objc_msgSend_valueForEntitlement_(result, a2, a2);
    v5 = objc_msgSend_BOOLValue(v2, v3, v4);

    return v5;
  }

  return result;
}

void sub_1886B223C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v16);
  _Unwind_Resume(a1);
}

void sub_1886B2270(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = (*(a1 + 40) * 1000000000.0);
  v5 = objc_msgSend_coalescer(*(a1 + 32), a2, a3);
  objc_msgSend_setActivityDelay_(v5, v4, v3);
}

void sub_1886B22D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
    objc_sync_enter(v7);
    v10 = objc_msgSend_object(v7, v8, v9);
    if (objc_msgSend_conformsToProtocol_(v10, v11, &unk_1EFAC8CE0))
    {
      v14 = objc_msgSend_isContentAccessed(v10, v12, v13) ^ 1;
    }

    else
    {
      v14 = 1;
    }

    if (v14 != objc_msgSend_isExpired(v7, v12, v13))
    {
      v15 = dispatch_get_global_queue(0, 0);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = sub_1886B241C;
      v16[3] = &unk_1E70BFE40;
      v16[4] = v7;
      v17 = v14;
      dispatch_async(v15, v16);
    }

    objc_sync_exit(v7);
  }

  v4[2](v4);
}

id sub_1886B3144(void *a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DF70];
  v8 = objc_msgSend_count(a1, v6, v7);
  v10 = objc_msgSend_arrayWithCapacity_(v5, v9, v8);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = a1;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v22, v26, 16);
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = v4[2](v4, *(*(&v22 + 1) + 8 * i));
        objc_msgSend_addObject_(v10, v18, v17, v22);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v19, &v22, v26, 16);
    }

    while (v14);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v10;
}

id sub_1886B32A8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF70];
  v8 = objc_msgSend_count(a1, v6, v7);
  v10 = objc_msgSend_arrayWithCapacity_(v5, v9, v8);
  if (objc_msgSend_count(a1, v11, v12))
  {
    v14 = 0;
    do
    {
      v15 = objc_msgSend_objectAtIndexedSubscript_(a1, v13, v14);
      v16 = v4[2](v4, v15, v14);
      objc_msgSend_addObject_(v10, v17, v16);

      ++v14;
    }

    while (v14 < objc_msgSend_count(a1, v18, v19));
  }

  return v10;
}

id sub_1886B3390(void *a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DF90];
  v8 = objc_msgSend_count(a1, v6, v7);
  v10 = objc_msgSend_dictionaryWithCapacity_(v5, v9, v8);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = a1;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v28, v32, 16);
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = v4[2](v4, *(*(&v28 + 1) + 8 * i));
        v20 = objc_msgSend_v2(v17, v18, v19, v28);
        v23 = objc_msgSend_v1(v17, v21, v22);
        objc_msgSend_setObject_forKeyedSubscript_(v10, v24, v20, v23);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v25, &v28, v32, 16);
    }

    while (v14);
  }

  v26 = *MEMORY[0x1E69E9840];

  return v10;
}

id sub_1886B351C(void *a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DF70];
  v8 = objc_msgSend_count(a1, v6, v7);
  v10 = objc_msgSend_arrayWithCapacity_(v5, v9, v8);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = a1;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v24, v28, 16);
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        v18 = objc_autoreleasePoolPush();
        v20 = v4[2](v4, v17);
        if (v20)
        {
          objc_msgSend_addObject_(v10, v19, v20, v24);
        }

        objc_autoreleasePoolPop(v18);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v21, &v24, v28, 16);
    }

    while (v14);
  }

  v22 = *MEMORY[0x1E69E9840];

  return v10;
}

id sub_1886B3698(void *a1, uint64_t a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DF90];
  v8 = objc_msgSend_count(a1, v6, v7);
  v10 = objc_msgSend_dictionaryWithCapacity_(v5, v9, v8);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = a1;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v29, v33, 16);
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = v4[2](v4, *(*(&v29 + 1) + 8 * i));
        v20 = v17;
        if (v17)
        {
          v21 = objc_msgSend_v2(v17, v18, v19, v29);
          v24 = objc_msgSend_v1(v20, v22, v23);
          objc_msgSend_setObject_forKeyedSubscript_(v10, v25, v21, v24);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v26, &v29, v33, 16);
    }

    while (v14);
  }

  v27 = *MEMORY[0x1E69E9840];

  return v10;
}

id sub_1886B382C(void *a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DF70];
  v8 = objc_msgSend_count(a1, v6, v7);
  v10 = objc_msgSend_arrayWithCapacity_(v5, v9, v8);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = a1;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v22, v26, 16);
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v18 = v4[2](v4, *(*(&v22 + 1) + 8 * i));
        if (v18)
        {
          objc_msgSend_addObjectsFromArray_(v10, v17, v18, v22);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v19, &v22, v26, 16);
    }

    while (v14);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v10;
}

id sub_1886B39AC(void *a1, uint64_t a2, char a3, void *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v8 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v6, v7);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = a1;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v32, v37, 16);
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    v30 = *MEMORY[0x1E695D930];
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        v17 = v5[2](v5, v15);
        if (v17)
        {
          v18 = objc_msgSend_objectForKeyedSubscript_(v8, v16, v17);
          v20 = v18;
          if (v18)
          {
            objc_msgSend_arrayByAddingObject_(v18, v19, v15);
          }

          else
          {
            v36 = v15;
            objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v19, &v36, 1);
          }
          v22 = ;
          objc_msgSend_setObject_forKeyedSubscript_(v8, v23, v22, v17, v30);
        }

        else if ((a3 & 1) == 0)
        {
          v21 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], v16, v30, @"Returning a non-nil result from a non-compact map function", 0);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v24, &v32, v37, 16);
    }

    while (v12);
  }

  v27 = objc_msgSend_copy(v8, v25, v26);
  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

id sub_1886B3BB4(void *a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DF70];
  v8 = objc_msgSend_count(a1, v6, v7);
  v10 = objc_msgSend_arrayWithCapacity_(v5, v9, v8);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = a1;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v21, v25, 16);
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        if (v4[2](v4, v17))
        {
          objc_msgSend_addObject_(v10, v18, v17, v21);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v18, &v21, v25, 16);
    }

    while (v14);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v10;
}

BOOL sub_1886B3D14(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1886B3DB8;
  v9[3] = &unk_1E70C1D08;
  v10 = v4;
  v5 = v4;
  v7 = objc_msgSend_indexOfObjectPassingTest_(a1, v6, v9) != 0x7FFFFFFFFFFFFFFFLL;

  return v7;
}

uint64_t sub_1886B3DB8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    *a4 = 1;
  }

  return result;
}

id sub_1886B3E00(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1886B3EE0;
  v13[3] = &unk_1E70C1D08;
  v7 = v6;
  v14 = v7;
  v9 = objc_msgSend_indexOfObjectWithOptions_passingTest_(a1, v8, a3, v13);
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v11 = objc_msgSend_objectAtIndex_(a1, v10, v9);
  }

  return v11;
}

uint64_t sub_1886B3EE0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    *a4 = 1;
  }

  return result;
}

id sub_1886B3F1C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF70];
  v8 = objc_msgSend_count(a1, v6, v7);
  v10 = objc_msgSend_arrayWithCapacity_(v5, v9, v8);
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = sub_1886B4014;
  v21 = &unk_1E70C1C18;
  v22 = v10;
  v23 = v4;
  v11 = v4;
  v12 = v10;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(a1, v13, &v18);
  v16 = objc_msgSend_copy(v12, v14, v15, v18, v19, v20, v21);

  return v16;
}

void sub_1886B4014(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = (*(*(a1 + 40) + 16))();
  objc_msgSend_addObject_(v1, v2, v3);
}

id sub_1886B4070(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF70];
  v8 = objc_msgSend_count(a1, v6, v7);
  v10 = objc_msgSend_arrayWithCapacity_(v5, v9, v8);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1886B4154;
  v17[3] = &unk_1E70C1D30;
  v19 = v4;
  v11 = v10;
  v18 = v11;
  v12 = v4;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(a1, v13, v17);
  v14 = v18;
  v15 = v11;

  return v11;
}

uint64_t sub_1886B4154(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  v3 = v2;
  if (v2)
  {
    v5 = v2;
    v2 = objc_msgSend_addObject_(*(a1 + 32), v2, v2);
    v3 = v5;
  }

  return MEMORY[0x1EEE66BB8](v2, v3);
}

id sub_1886B41BC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF70];
  v8 = objc_msgSend_count(a1, v6, v7);
  v10 = objc_msgSend_arrayWithCapacity_(v5, v9, v8);
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = sub_1886B42B0;
  v21 = &unk_1E70C1D30;
  v22 = v10;
  v23 = v4;
  v11 = v10;
  v12 = v4;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(a1, v13, &v18);
  v16 = objc_msgSend_copy(v11, v14, v15, v18, v19, v20, v21);

  return v16;
}

uint64_t sub_1886B42B0(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  v3 = v2;
  if (v2)
  {
    v5 = v2;
    v2 = objc_msgSend_addObjectsFromArray_(*(a1 + 32), v2, v2);
    v3 = v5;
  }

  return MEMORY[0x1EEE66BB8](v2, v3);
}

id sub_1886B4318(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF90];
  v8 = objc_msgSend_count(a1, v6, v7);
  v10 = objc_msgSend_dictionaryWithCapacity_(v5, v9, v8);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1886B43F8;
  v17[3] = &unk_1E70C1C18;
  v11 = v10;
  v18 = v11;
  v19 = v4;
  v12 = v4;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(a1, v13, v17);
  v14 = v19;
  v15 = v11;

  return v11;
}

void sub_1886B43F8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = a2;
  v9 = v6(v5, v7, a3);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v8, v9, v7);
}

id sub_1886B4488(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF90];
  v8 = objc_msgSend_count(a1, v6, v7);
  v10 = objc_msgSend_dictionaryWithCapacity_(v5, v9, v8);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1886B456C;
  v17[3] = &unk_1E70C1D30;
  v19 = v4;
  v11 = v10;
  v18 = v11;
  v12 = v4;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(a1, v13, v17);
  v14 = v18;
  v15 = v11;

  return v11;
}

void sub_1886B456C(uint64_t a1, void *a2)
{
  v5 = a2;
  v4 = (*(*(a1 + 40) + 16))();
  if (v4)
  {
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v3, v4, v5);
  }
}

id sub_1886B45EC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF90];
  v8 = objc_msgSend_count(a1, v6, v7);
  v10 = objc_msgSend_dictionaryWithCapacity_(v5, v9, v8);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1886B46D0;
  v17[3] = &unk_1E70C1D30;
  v19 = v4;
  v11 = v10;
  v18 = v11;
  v12 = v4;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(a1, v13, v17);
  v14 = v18;
  v15 = v11;

  return v11;
}

void sub_1886B46D0(uint64_t a1)
{
  v10 = (*(*(a1 + 40) + 16))();
  v4 = objc_msgSend_v2(v10, v2, v3);
  v5 = *(a1 + 32);
  v8 = objc_msgSend_v1(v10, v6, v7);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v9, v4, v8);
}

id sub_1886B4764(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF90];
  v8 = objc_msgSend_count(a1, v6, v7);
  v10 = objc_msgSend_dictionaryWithCapacity_(v5, v9, v8);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1886B4848;
  v17[3] = &unk_1E70C1D30;
  v19 = v4;
  v11 = v10;
  v18 = v11;
  v12 = v4;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(a1, v13, v17);
  v14 = v18;
  v15 = v11;

  return v11;
}

void sub_1886B4848(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ((*(*(a1 + 40) + 16))())
  {
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v6, v5, v7);
  }
}

id sub_1886B48C8(void *a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DF70];
  v8 = objc_msgSend_count(a1, v6, v7);
  v10 = objc_msgSend_arrayWithCapacity_(v5, v9, v8);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = a1;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v22, v26, 16);
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = v4[2](v4, *(*(&v22 + 1) + 8 * i));
        objc_msgSend_addObject_(v10, v18, v17, v22);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v19, &v22, v26, 16);
    }

    while (v14);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v10;
}

id sub_1886B4A2C(void *a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DF70];
  v8 = objc_msgSend_count(a1, v6, v7);
  v10 = objc_msgSend_arrayWithCapacity_(v5, v9, v8);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = a1;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v22, v26, 16);
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v18 = v4[2](v4, *(*(&v22 + 1) + 8 * i));
        if (v18)
        {
          objc_msgSend_addObject_(v10, v17, v18, v22);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v19, &v22, v26, 16);
    }

    while (v14);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v10;
}

id sub_1886B4B94(void *a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DF70];
  v8 = objc_msgSend_count(a1, v6, v7);
  v10 = objc_msgSend_arrayWithCapacity_(v5, v9, v8);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = a1;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v21, v25, 16);
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        if (v4[2](v4, v17))
        {
          objc_msgSend_addObject_(v10, v18, v17, v21);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v18, &v21, v25, 16);
    }

    while (v14);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v10;
}

id sub_1886B4CF4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF70];
  v8 = objc_msgSend_count(a1, v6, v7);
  v10 = objc_msgSend_arrayWithCapacity_(v5, v9, v8);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1886B4DD4;
  v17[3] = &unk_1E70C1D58;
  v11 = v10;
  v18 = v11;
  v19 = v4;
  v12 = v4;
  objc_msgSend_enumerateIndexesUsingBlock_(a1, v13, v17);
  v14 = v19;
  v15 = v11;

  return v11;
}

void sub_1886B4DD4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = (*(*(a1 + 40) + 16))();
  objc_msgSend_addObject_(v1, v2, v3);
}

id sub_1886B4E30(void *a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = a1;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v24, v28, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = objc_msgSend_objectForKey_(v8, v11, v15, v24);
        v17 = v4[2](v4, v15, v16);

        if (v17)
        {
          objc_msgSend_addObjectsFromArray_(v7, v18, v17);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v24, v28, 16);
    }

    while (v12);
  }

  v21 = objc_msgSend_copy(v7, v19, v20);
  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

void sub_1886B53B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (v14)
  {
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

void sub_1886B57CC(uint64_t a1, const char *a2, NSUInteger a3)
{
  v6 = objc_msgSend_rangeMap(*(a1 + 32), a2, a3);
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = *(v6 + 8);
  if (v9 == v8)
  {
    goto LABEL_19;
  }

  v10 = (v8 - v9) >> 5;
  v11 = *(v6 + 8);
  do
  {
    v12 = v10 >> 1;
    v13 = &v11[32 * (v10 >> 1)];
    v15 = *v13;
    v16 = v13[1];
    v14 = (v13 + 4);
    v10 += ~(v10 >> 1);
    if (v16 + v15 <= a2)
    {
      v11 = v14;
    }

    else
    {
      v10 = v12;
    }
  }

  while (v10);
  while (v11 != v9)
  {
    v17 = v11;
    v19 = *(v11 - 4);
    v11 -= 32;
    v18 = v19;
    if (v19 > a2 || *(v17 - 3) + v18 <= a2)
    {
      goto LABEL_12;
    }
  }

  v17 = *(v6 + 8);
LABEL_12:
  if (v17 == v8)
  {
LABEL_19:
  }

  else
  {
    v20 = v17 - v9;

    if ((~v20 & 0x1FFFFFFFE0) != 0)
    {
      v23 = (v20 >> 5);
      v24 = objc_msgSend_rangeMap(*(a1 + 32), v21, v22);
      v25 = v24[2] - v24[1];

      if (v23 < v25 >> 5)
      {
        for (i = 32 * v23; ; i += 32)
        {
          v29 = objc_msgSend_rangeMap(*(a1 + 32), v26, v27);
          v30 = v29[1] + i;
          v31 = *v30;
          v32 = *(v30 + 8);
          v33 = *(v30 + 16);

          v39.location = a2;
          v39.length = a3;
          v40.location = v31;
          v40.length = v32;
          if (!NSIntersectionRange(v39, v40).length)
          {
            break;
          }

          (*(*(a1 + 40) + 16))();

          ++v23;
          v36 = objc_msgSend_rangeMap(*(a1 + 32), v34, v35);
          v37 = v36[2] - v36[1];

          if (v23 >= v37 >> 5)
          {
            return;
          }
        }
      }
    }
  }
}

void sub_1886B5C90(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_rangeMap(*(a1 + 32), a2, a3);
  v7 = *(a1 + 40);
  v8 = v7;
  v10 = v6[2];
  v9 = v6[3];
  if (v10 >= v9)
  {
    v12 = v6[1];
    v13 = (v10 - v12) >> 5;
    if ((v13 + 1) >> 59)
    {
      sub_1886B6DA4();
    }

    v14 = v9 - v12;
    v15 = v14 >> 4;
    if (v14 >> 4 <= (v13 + 1))
    {
      v15 = v13 + 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v16 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v15;
    }

    v23[4] = v6 + 1;
    if (v16)
    {
      sub_1886B6E44(v16);
    }

    v17 = (32 * v13);
    *v17 = a2;
    v17[1] = a3;
    v17[2] = v8;
    v17[3] = 0;
    v11 = v17 + 4;
    v18 = v6[1];
    v19 = v6[2];
    v20 = v17 + v18 - v19;
    sub_1886B6EC0(v18, v19, v20);
    v21 = v6[1];
    v6[1] = v20;
    v6[2] = v17 + 4;
    v22 = v6[3];
    v6[3] = 0;
    v23[2] = v21;
    v23[3] = v22;
    v23[0] = v21;
    v23[1] = v21;
    sub_1886B6F2C(v23);
  }

  else
  {
    *v10 = a2;
    v10[1] = a3;
    v10[2] = v7;
    v10[3] = 0;
    v11 = v10 + 4;
  }

  v6[2] = v11;
}

void sub_1886B5DD0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 4;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

unint64_t sub_1886B5E58(void *a1, unint64_t a2, unint64_t a3)
{
  v5 = (a3 + a2) >> 1;
  v6 = (*a1 + 32 * v5);
  result = v6[1] + *v6;
  v6[3] = result;
  if (v5 > a2)
  {
    result = sub_1886B5E58(a1);
    if (v6[3] > result)
    {
      result = v6[3];
    }

    v6[3] = result;
  }

  if (v5 + 1 < a3)
  {
    result = sub_1886B5E58(a1);
    if (v6[3] > result)
    {
      result = v6[3];
    }

    v6[3] = result;
  }

  return result;
}

void sub_1886B5EEC(__n128 *a1, __n128 *a2, unint64_t a3, __n128 *a4, uint64_t a5)
{
  if (a3 < 2)
  {
    return;
  }

  v6 = a1;
  if (a3 == 2)
  {
    v7 = &a2[-2];
    v8 = a2[-2].n128_u64[0];
    v9 = v8 >= a1->n128_u64[0];
    if (v8 == a1->n128_u64[0])
    {
      v10 = a2[-2].n128_u64[1];
      v11 = a1->n128_u64[1];
      v9 = v10 >= v11;
      if (v10 == v11)
      {
        v9 = a2[-1].n128_u64[0] >= a1[1].n128_u64[0];
      }
    }

    if (!v9)
    {

      sub_1886B6354(a1, v7);
    }

    return;
  }

  if (a3 <= 0)
  {
    if (a1 == a2)
    {
      return;
    }

    v18 = a1 + 2;
    if (&a1[2] == a2)
    {
      return;
    }

    v19 = 0;
    v20 = a1;
    while (1)
    {
      v21 = v20;
      v20 = v18;
      v22 = v18->n128_u64[0];
      if (v18->n128_u64[0] == *v21)
      {
        v23 = v21[5];
        v24 = v21[1];
        v25 = v23 >= v24;
        if (v23 == v24)
        {
          v25 = v21[6] >= v21[2];
        }

        if (!v25)
        {
          goto LABEL_27;
        }
      }

      else if (v22 < *v21)
      {
        v23 = v21[5];
LABEL_27:
        v27 = v21[6];
        v26 = v21[7];
        v21[6] = 0;
        *v20 = *v21;
        v28 = v21[2];
        v21[2] = 0;
        v29 = v20[1].n128_u64[0];
        v20[1].n128_u64[0] = v28;

        v20[1].n128_u64[1] = v21[3];
        if (v21 == v6)
        {
          v21 = v6;
        }

        else
        {
          v64 = v26;
          v30 = v19;
          do
          {
            v31 = (v6 + v30);
            v32 = *(v6 + v30 - 32);
            v33 = v22 >= v32;
            if (v22 == v32 && (v34 = *(v31 - 3), v33 = v23 >= v34, v23 == v34))
            {
              if (v27 >= *(v6 + v30 - 16))
              {
                v21 = (v6 + v30);
                goto LABEL_37;
              }
            }

            else if (v33)
            {
              goto LABEL_37;
            }

            v21 -= 4;
            *v31 = *(v6 + v30 - 32);
            v35 = v6 + v30;
            v36 = *(v6 + v30 - 16);
            *(v35 - 16) = 0;
            v37 = *(v6 + v30 + 16);
            *(v35 + 16) = v36;

            *(v35 + 24) = *(v35 - 8);
            v30 -= 32;
          }

          while (v30);
          v21 = v6;
LABEL_37:
          v26 = v64;
        }

        *v21 = v22;
        v21[1] = v23;
        v38 = v21[2];
        v21[2] = v27;

        v21[3] = v26;
      }

      v18 = v20 + 2;
      v19 += 32;
      if (&v20[2] == a2)
      {
        return;
      }
    }
  }

  v15 = a3 >> 1;
  v16 = &a1[2 * (a3 >> 1)];
  if (a3 <= a5)
  {
    sub_1886B63D0(a1, &a1[2 * (a3 >> 1)], a3 >> 1, a4);
    v39 = a3 - v15;
    v40 = &a4[2 * v15];
    sub_1886B63D0(&v6[4 * (a3 >> 1)], a2, v39, v40);
    v65 = a3;
    v41 = &a4[2 * a3];
    v42 = v40;
    v43 = a4;
    while (v42 != v41)
    {
      v44 = v42->n128_u64[0] >= v43->n128_u64[0];
      if (v42->n128_u64[0] == v43->n128_u64[0])
      {
        v45 = v42->n128_u64[1];
        v46 = v43->n128_u64[1];
        v44 = v45 >= v46;
        if (v45 == v46)
        {
          v44 = v42[1].n128_u64[0] >= v43[1].n128_u64[0];
        }
      }

      if (v44)
      {
        *v6 = *v43;
        v49 = v43[1].n128_u64[0];
        v43[1].n128_u64[0] = 0;
        v50 = v6[2];
        v6[2] = v49;

        v6[3] = v43[1].n128_u64[1];
        v43 += 2;
      }

      else
      {
        *v6 = *v42;
        v47 = v42[1].n128_u64[0];
        v42[1].n128_u64[0] = 0;
        v48 = v6[2];
        v6[2] = v47;

        v6[3] = v42[1].n128_u64[1];
        v42 += 2;
      }

      v6 += 4;
      if (v43 == v40)
      {
        if (v42 != v41)
        {
          v51 = 0;
          do
          {
            v52 = &v42[v51 / 0x10];
            v53 = &v6[v51 / 8];
            *v53 = v42[v51 / 0x10];
            v54 = v42[v51 / 0x10 + 1].n128_u64[0];
            v42[v51 / 0x10 + 1].n128_u64[0] = 0;
            v55 = v6[v51 / 8 + 2];
            v53[1].n128_u64[0] = v54;

            v53[1].n128_u64[1] = v42[v51 / 0x10 + 1].n128_u64[1];
            v51 += 32;
          }

          while (&v52[2] != v41);
        }

        goto LABEL_57;
      }
    }

    if (v43 != v40)
    {
      v56 = 0;
      do
      {
        v57 = &v43[v56 / 0x10];
        v58 = &v6[v56 / 8];
        *v58 = v43[v56 / 0x10];
        v59 = v43[v56 / 0x10 + 1].n128_u64[0];
        v43[v56 / 0x10 + 1].n128_u64[0] = 0;
        v60 = v6[v56 / 8 + 2];
        v58[1].n128_u64[0] = v59;

        v58[1].n128_u64[1] = v43[v56 / 0x10 + 1].n128_u64[1];
        v56 += 32;
      }

      while (&v57[2] != v40);
    }

LABEL_57:
    if (a4)
    {
      v61 = 0;
      v62 = &a4[1];
      do
      {
        v63 = *v62;
        v62 += 4;

        ++v61;
      }

      while (v61 < v65);
    }
  }

  else
  {
    sub_1886B5EEC(a1, &a1[2 * (a3 >> 1)], a3 >> 1, a4, a5);
    v17 = a3 - v15;
    sub_1886B5EEC(v16, a2, v17, a4, a5);

    sub_1886B6794(v6, v16, a2, v15, v17, a4, a5);
  }
}

void sub_1886B6340(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1886B6D40(va);
  _Unwind_Resume(a1);
}

void sub_1886B6354(__int128 *a1, __int128 *a2)
{
  v9 = *a1;
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  *(a1 + 2) = 0;
  *a1 = *a2;
  v6 = *(a2 + 2);
  *(a2 + 2) = 0;
  v7 = *(a1 + 2);
  *(a1 + 2) = v6;

  v8 = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *a2 = v9;
  *(a2 + 2) = v4;

  *(a2 + 3) = v5;
}

__n128 sub_1886B63D0(__n128 *a1, __n128 *a2, unint64_t a3, __n128 *a4)
{
  if (!a3)
  {
    return result;
  }

  v4 = a4;
  v7 = a1;
  if (a3 == 2)
  {
    v11 = a2 - 2;
    v12 = a2[-2].n128_u64[0];
    v13 = v12 >= a1->n128_u64[0];
    if (v12 == a1->n128_u64[0])
    {
      v14 = a2[-2].n128_u64[1];
      v15 = a1->n128_u64[1];
      v13 = v14 >= v15;
      if (v14 == v15)
      {
        v13 = a2[-1].n128_u64[0] >= a1[1].n128_u64[0];
      }
    }

    if (v13)
    {
      *a4 = *a1;
      v47 = a1[1].n128_u64[0];
      v48 = a1[1].n128_u64[1];
      a1[1].n128_u64[0] = 0;
      a4[1].n128_u64[0] = v47;
      a4[1].n128_u64[1] = v48;
      result = *v11;
      a4[2] = *v11;
      v49 = a2[-1].n128_u64[0];
      a2[-1].n128_u64[0] = 0;
      a4[3].n128_u64[0] = v49;
      v10 = &a4[3].n128_u64[1];
      v19 = &a2[-1].n128_u64[1];
      goto LABEL_36;
    }

    *a4 = *v11;
    v16 = a2[-1].n128_u64[0];
    v17 = a2[-1].n128_u64[1];
    a2[-1].n128_u64[0] = 0;
    a4[1].n128_u64[0] = v16;
    a4[1].n128_u64[1] = v17;
    result = *a1;
    a4[2] = *a1;
    v18 = a1[1].n128_u64[0];
    a1[1].n128_u64[0] = 0;
    a4[3].n128_u64[0] = v18;
    v10 = &a4[3].n128_u64[1];
LABEL_10:
    v19 = &a1[1].n128_u64[1];
LABEL_36:
    *v10 = *v19;
    return result;
  }

  if (a3 == 1)
  {
    result = *a1;
    *a4 = *a1;
    v9 = a1[1].n128_u64[0];
    a1[1].n128_u64[0] = 0;
    a4[1].n128_u64[0] = v9;
    v10 = &a4[1].n128_u64[1];
    goto LABEL_10;
  }

  if (a3 <= 8)
  {
    if (a1 == a2)
    {
      return result;
    }

    result = *a1;
    *a4 = *a1;
    v20 = a1[1].n128_u64[0];
    v21 = a1[1].n128_u64[1];
    a1[1].n128_u64[0] = 0;
    a4[1].n128_u64[0] = v20;
    a4[1].n128_u64[1] = v21;
    v22 = a1 + 2;
    if (&a1[2] == a2)
    {
      return result;
    }

    v23 = 0;
    v24 = a4;
    v25 = a4;
    while (1)
    {
      v26 = v22;
      v27 = v25->n128_u64[0];
      v25 += 2;
      v28 = v22->n128_u64[0] >= v27;
      if (v22->n128_u64[0] == v27)
      {
        v29 = v7[2].n128_u64[1];
        v30 = v24->n128_u64[1];
        v28 = v29 >= v30;
        if (v29 == v30)
        {
          v28 = v7[3].n128_u64[0] >= v24[1].n128_u64[0];
        }
      }

      if (v28)
      {
        result = *v26;
        *v25 = *v26;
        v43 = v7[3].n128_u64[0];
        v44 = v7[3].n128_u64[1];
        v7[3].n128_u64[0] = 0;
        v24[3].n128_u64[0] = v43;
        v24[3].n128_u64[1] = v44;
        goto LABEL_33;
      }

      *v25 = *v24;
      v31 = v24[1].n128_i64[0];
      v32 = v24[1].n128_i64[1];
      v24[1].n128_u64[0] = 0;
      v24[3].n128_u64[0] = v31;
      v24[3].n128_u64[1] = v32;
      v33 = v4;
      if (v24 == v4)
      {
        goto LABEL_32;
      }

      v34 = v23;
      while (1)
      {
        v35 = (v4->n128_u64 + v34);
        v36 = *(v4[-2].n128_u64 + v34);
        v37 = v26->n128_u64[0] >= v36;
        if (v26->n128_u64[0] != v36)
        {
          goto LABEL_24;
        }

        v38 = v7[2].n128_u64[1];
        v39 = *(v35 - 3);
        if (v38 == v39)
        {
          v37 = v7[3].n128_u64[0] >= *(v4[-1].n128_u64 + v34);
LABEL_24:
          if (v37)
          {
            v33 = v24;
            goto LABEL_32;
          }

          goto LABEL_28;
        }

        if (v38 >= v39)
        {
          break;
        }

LABEL_28:
        v24 -= 2;
        *v35 = *(&v4[-2] + v34);
        v40 = v4 + v34;
        v41 = *(v4[-1].n128_i64 + v34);
        *(v40 - 16) = 0;
        v42 = *(v4[1].n128_u64 + v34);
        *(v40 + 16) = v41;

        *(v40 + 24) = *(v40 - 8);
        v34 -= 32;
        if (!v34)
        {
          v33 = v4;
          goto LABEL_32;
        }
      }

      v33 = (v4 + v34);
LABEL_32:
      *v33 = *v26;
      v45 = v7[3].n128_u64[0];
      v7[3].n128_u64[0] = 0;
      v46 = v33[1].n128_u64[0];
      v33[1].n128_u64[0] = v45;

      v33[1].n128_u64[1] = v7[3].n128_u64[1];
LABEL_33:
      v22 = v26 + 2;
      v23 += 32;
      v24 = v25;
      v7 = v26;
      if (&v26[2] == a2)
      {
        return result;
      }
    }
  }

  v50 = &a1[2 * (a3 >> 1)];
  sub_1886B5EEC(a1, v50, a3 >> 1, a4, a3 >> 1);
  sub_1886B5EEC(&v7[2 * (a3 >> 1)], a2, a3 - (a3 >> 1), &v4[2 * (a3 >> 1)], a3 - (a3 >> 1));
  v51 = &v7[2 * (a3 >> 1)];
  while (v51 != a2)
  {
    v52 = v51->n128_u64[0] >= v7->n128_u64[0];
    if (v51->n128_u64[0] == v7->n128_u64[0])
    {
      v53 = v51->n128_u64[1];
      v54 = v7->n128_u64[1];
      v52 = v53 >= v54;
      if (v53 == v54)
      {
        v52 = v51[1].n128_u64[0] >= v7[1].n128_u64[0];
      }
    }

    if (v52)
    {
      result = *v7;
      *v4 = *v7;
      v57 = v7[1].n128_u64[0];
      v58 = v7[1].n128_u64[1];
      v7[1].n128_u64[0] = 0;
      v4[1].n128_u64[0] = v57;
      v4[1].n128_u64[1] = v58;
      v7 += 2;
    }

    else
    {
      result = *v51;
      *v4 = *v51;
      v55 = v51[1].n128_u64[0];
      v56 = v51[1].n128_u64[1];
      v51[1].n128_u64[0] = 0;
      v4[1].n128_u64[0] = v55;
      v4[1].n128_u64[1] = v56;
      v51 += 2;
    }

    v4 += 2;
    if (v7 == v50)
    {
      if (v51 != a2)
      {
        v59 = 0;
        do
        {
          v60 = &v51[v59];
          v61 = &v4[v59];
          result = v51[v59];
          *v61 = result;
          v62 = v51[v59 + 1].n128_u64[0];
          v63 = v51[v59 + 1].n128_u64[1];
          v60[1].n128_u64[0] = 0;
          v61[1].n128_u64[0] = v62;
          v61[1].n128_u64[1] = v63;
          v59 += 2;
        }

        while (&v60[2] != a2);
      }

      return result;
    }
  }

  if (v7 != v50)
  {
    v64 = 0;
    do
    {
      v65 = &v4[v64];
      v66 = &v7[v64];
      result = v7[v64];
      *v65 = result;
      v67 = v7[v64 + 1].n128_u64[0];
      v68 = v7[v64 + 1].n128_u64[1];
      v66[1].n128_u64[0] = 0;
      v65[1].n128_u64[0] = v67;
      v65[1].n128_u64[1] = v68;
      v64 += 2;
    }

    while (&v66[2] != v50);
  }

  return result;
}

void sub_1886B6794(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    v8 = a5;
    while (a4 > a7 && v8 > a7)
    {
      if (!a4)
      {
        return;
      }

      v13 = 0;
      v14 = *a2;
      v15 = -a4;
      while (1)
      {
        v16 = *(v13 + a1);
        v17 = v14 >= v16;
        if (v14 == v16)
        {
          v18 = *(a2 + 1);
          v19 = *(v13 + a1 + 8);
          v17 = v18 >= v19;
          if (v18 == v19)
          {
            v17 = *(a2 + 2) >= *(v13 + a1 + 16);
          }
        }

        if (!v17)
        {
          break;
        }

        v13 += 2;
        v17 = __CFADD__(v15++, 1);
        if (v17)
        {
          return;
        }
      }

      v20 = -v15;
      v21 = (v13 + a1);
      v92 = a3;
      v93 = a6;
      if (-v15 >= v8)
      {
        if (v15 == -1)
        {

          sub_1886B6354((v13 + a1), a2);
          return;
        }

        v32 = v20 / 2;
        v33 = &a1[2 * (v20 / 2)];
        v23 = a2;
        if (a2 != a3)
        {
          v34 = (a3 - a2) >> 5;
          v35 = *(v13 + v33);
          v36 = *(v13 + v33 + 8);
          v23 = a2;
          do
          {
            v37 = v34 >> 1;
            v38 = &v23[2 * (v34 >> 1)];
            v39 = *v38 >= v35;
            if (*v38 == v35)
            {
              v40 = *(v38 + 1);
              v39 = v40 >= v36;
              if (v40 == v36)
              {
                v39 = *(v38 + 2) >= *(v13 + v33 + 16);
              }
            }

            if (!v39)
            {
              v23 = v38 + 2;
              v37 = v34 + ~v37;
            }

            v34 = v37;
          }

          while (v37);
        }

        v22 = (v23 - a2) >> 5;
        v24 = (v13 + v33);
      }

      else
      {
        v22 = v8 / 2;
        v23 = &a2[2 * (v8 / 2)];
        v24 = a2;
        if ((a2 - a1) != v13)
        {
          v25 = (a2 - a1 - v13) >> 5;
          v26 = *v23;
          v27 = *(v23 + 1);
          v24 = (v13 + a1);
          do
          {
            v28 = v25 >> 1;
            v29 = &v24[2 * (v25 >> 1)];
            v30 = v26 >= *v29;
            if (v26 == *v29)
            {
              v31 = *(v29 + 1);
              v30 = v27 >= v31;
              if (v27 == v31)
              {
                v30 = *(v23 + 2) >= *(v29 + 2);
              }
            }

            if (v30)
            {
              v24 = v29 + 2;
              v28 = v25 + ~v28;
            }

            v25 = v28;
          }

          while (v28);
        }

        v32 = (v24 - a1 - v13) >> 5;
      }

      v41 = v23;
      if (v24 != a2)
      {
        v41 = v24;
        if (v23 != a2)
        {
          v90 = v21;
          v91 = a7;
          sub_1886B6354(v24, a2);
          v41 = v24 + 2;
          for (i = a2 + 2; i != v23; i += 2)
          {
            if (v41 == a2)
            {
              a2 = i;
            }

            sub_1886B6354(v41, i);
            v41 += 2;
          }

          if (v41 != a2)
          {
            v43 = v41;
            v44 = a2;
            do
            {
              while (1)
              {
                sub_1886B6354(v43, a2);
                v43 += 2;
                a2 += 2;
                if (a2 == v23)
                {
                  break;
                }

                if (v43 == v44)
                {
                  v44 = a2;
                }
              }

              a2 = v44;
            }

            while (v43 != v44);
          }

          v21 = v90;
          a7 = v91;
        }
      }

      a4 = -(v32 + v15);
      v45 = v8 - v22;
      if (v32 + v22 >= v8 - (v32 + v22) - v15)
      {
        v49 = v21;
        v50 = -(v32 + v15);
        v47 = a7;
        sub_1886B6794(v41, v23, v92, v50, v45, v93);
        v48 = v49;
        v23 = v24;
        v45 = v22;
        a6 = v93;
        a4 = v32;
        a3 = v41;
      }

      else
      {
        v46 = v22;
        a6 = v93;
        v47 = a7;
        sub_1886B6794(v21, v24, v41, v32, v46, v93);
        v48 = v41;
        a3 = v92;
      }

      a2 = v23;
      a1 = v48;
      v8 = v45;
      a7 = v47;
      if (!v45)
      {
        return;
      }
    }

    if (a4 <= v8)
    {
      if (a2 == a1)
      {
        return;
      }

      v52 = 0;
      v68 = a6;
      v69 = a1;
      do
      {
        *v68 = *v69;
        v70 = *(v69 + 2);
        v71 = *(v69 + 3);
        *(v69 + 2) = 0;
        v68[2] = v70;
        v68[3] = v71;
        ++v52;
        v69 += 2;
        v68 += 4;
      }

      while (v69 != a2);
      v72 = v68 - 4;
      v73 = a6;
      while (a2 != a3)
      {
        v74 = *a2 >= *v73;
        if (*a2 == *v73)
        {
          v75 = *(a2 + 1);
          v76 = v73[1];
          v74 = v75 >= v76;
          if (v75 == v76)
          {
            v74 = *(a2 + 2) >= v73[2];
          }
        }

        if (v74)
        {
          *a1 = *v73;
          v79 = v73[2];
          v73[2] = 0;
          v80 = *(a1 + 2);
          *(a1 + 2) = v79;

          *(a1 + 3) = v73[3];
          v73 += 4;
        }

        else
        {
          *a1 = *a2;
          v77 = *(a2 + 2);
          *(a2 + 2) = 0;
          v78 = *(a1 + 2);
          *(a1 + 2) = v77;

          *(a1 + 3) = *(a2 + 3);
          a2 += 2;
        }

        a1 += 2;
        if (v68 == v73)
        {
          goto LABEL_93;
        }
      }

      if (v68 != v73)
      {
        v83 = 0;
        do
        {
          v84 = &a1[v83 / 0x10];
          v85 = &v73[v83 / 8];
          *v84 = *&v73[v83 / 8];
          v86 = v73[v83 / 8 + 2];
          v73[v83 / 8 + 2] = 0;
          v87 = *&a1[v83 / 0x10 + 1];
          *(v84 + 2) = v86;

          *(v84 + 3) = v73[v83 / 8 + 3];
          v83 += 32;
        }

        while (v72 != v85);
      }
    }

    else
    {
      if (a2 == a3)
      {
        return;
      }

      v51 = 0;
      v52 = 0;
      do
      {
        v53 = a6 + v51 * 16;
        v54 = &a2[v51];
        *v53 = a2[v51];
        v55 = *&a2[v51 + 1];
        v56 = *(&a2[v51 + 1] + 1);
        *(v54 + 2) = 0;
        *(v53 + 16) = v55;
        *(v53 + 24) = v56;
        ++v52;
        v51 += 2;
      }

      while (v54 + 2 != a3);
      v57 = a3 - 1;
      v58 = (a6 + v51 * 16);
      while (a2 != a1)
      {
        v59 = a2 - 2;
        v60 = *(a2 - 4);
        v61 = *(v58 - 4);
        v62 = v61 >= v60;
        if (v61 == v60)
        {
          v63 = *(v58 - 3);
          v64 = *(a2 - 3);
          v62 = v63 >= v64;
          if (v63 == v64)
          {
            v62 = *(v58 - 2) >= *(a2 - 2);
          }
        }

        if (v62)
        {
          v59 = v58 - 2;
          v65 = v58;
          v58 -= 2;
        }

        else
        {
          v65 = a2;
          a2 -= 2;
        }

        *(v57 - 1) = *v59;
        v66 = *(v65 - 2);
        *(v65 - 2) = 0;
        v67 = *v57;
        *v57 = v66;

        *(v57 + 1) = *(v65 - 1);
        v57 -= 2;
        if (v58 == a6)
        {
          goto LABEL_93;
        }
      }

      for (; v58 != a6; v58 -= 2)
      {
        *(v57 - 1) = *(v58 - 2);
        v81 = *(v58 - 2);
        *(v58 - 2) = 0;
        v82 = *v57;
        *v57 = v81;

        *(v57 + 1) = *(v58 - 1);
        v57 -= 2;
      }
    }

LABEL_93:
    if (a6)
    {
      v88 = (a6 + 16);
      do
      {
        v89 = *v88;
        v88 += 4;

        --v52;
      }

      while (v52);
    }
  }
}

uint64_t *sub_1886B6D40(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    if (*v3)
    {
      v4 = 0;
      v5 = (v2 + 16);
      do
      {
        v6 = *v5;
        v5 += 4;

        ++v4;
      }

      while (v4 < *v3);
    }
  }

  return a1;
}

void sub_1886B6DB4()
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1886B6E08(exception);
  __cxa_throw(exception, off_1E70BB650, MEMORY[0x1E69E5278]);
}

std::logic_error *sub_1886B6E08(std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "vector");
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void sub_1886B6E44(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  sub_1886B6E8C();
}

void sub_1886B6E8C()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void sub_1886B6EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      v6 = *(v5 + 16);
      v7 = *(v5 + 24);
      *(v5 + 16) = 0;
      *(a3 + 16) = v6;
      *(a3 + 24) = v7;
      v5 += 32;
      a3 += 32;
    }

    while (v5 != a2);
    do
    {

      v4 += 32;
    }

    while (v4 != a2);
  }
}

uint64_t sub_1886B6F2C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL sub_1886B6F80(void *a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_numberOfArguments(a1, a2, a3) - 1;
  do
  {
    v6 = v5;
    if (v5 < 2)
    {
      break;
    }

    v7 = objc_msgSend__signatureForBlockAtArgumentIndex_(a1, v4, v5);

    v5 = v6 - 1;
  }

  while (!v7);
  return v6 > 1;
}

id CKSelectorAndSignaturesIncludingParentProtocols(void *a1, int a2)
{
  v3 = a1;
  v4 = objc_opt_new();
  outCount = 0;
  v5 = protocol_copyMethodDescriptionList(v3, 1, 1, &outCount);
  v6 = v5;
  if (outCount)
  {
    v7 = 0;
    v8 = v5;
    do
    {
      v9 = *v8;
      v10 = CKExtendedMethodSignatureForProtocolSelector(v3, *v8);
      if (v10)
      {
        v11 = [CKTuple2 alloc];
        v12 = NSStringFromSelector(v9);
        v14 = objc_msgSend_initWithObject1_object2_(v11, v13, v12, v10);
        objc_msgSend_addObject_(v4, v15, v14);
      }

      ++v7;
      v8 += 2;
    }

    while (v7 < outCount);
  }

  else if (!v5)
  {
    goto LABEL_9;
  }

  free(v6);
LABEL_9:
  if (!a2)
  {
    goto LABEL_16;
  }

  v16 = protocol_copyProtocolList(v3, &outCount);
  v17 = v16;
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      v19 = CKSelectorAndSignaturesIncludingParentProtocols(v17[i], 1);
      objc_msgSend_addObjectsFromArray_(v4, v20, v19);
    }
  }

  else if (!v16)
  {
    goto LABEL_16;
  }

  free(v17);
LABEL_16:

  return v4;
}

void sub_1886B7178(void *a1, uint64_t a2, void *a3, void *a4)
{
  v58 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v52 = v6;
  v7 = a4;
  v10 = objc_msgSend_methodSignature(a1, v8, v9);
  v13 = objc_msgSend_numberOfArguments(v10, v11, v12);
  while (--v13 >= 2)
  {
    v14 = v10;
    ArgumentTypeAtIndex = objc_msgSend_getArgumentTypeAtIndex_(v14, v15, v13);
    v18 = *ArgumentTypeAtIndex;
    if (v18 == 64)
    {
      if (63 == ArgumentTypeAtIndex[1])
      {
        goto LABEL_7;
      }
    }

    else if (64 == v18)
    {
LABEL_7:
      aBlock = 0;
      objc_msgSend_getArgument_atIndex_(a1, v17, &aBlock, v13);
      _Block_signature(aBlock);
      v19 = aBlock;
      v22 = objc_msgSend_selector(a1, v20, v21);
      log = v7;
      v48 = CKExtendedMethodSignatureForProtocolSelector(v7, v22);
      v24 = objc_msgSend__signatureForBlockAtArgumentIndex_(v48, v23, v13);
      v26 = objc_msgSend_invocationWithMethodSignature_(MEMORY[0x1E695DF50], v25, v24);
      objc_msgSend_retainArguments(v26, v27, v28);
      v29 = v19;
      objc_msgSend_setTarget_(v26, v30, v19);
      v35 = objc_msgSend_numberOfArguments(v24, v31, v32);
      while (--v35 >= 1)
      {
        v36 = objc_msgSend__classForObjectAtArgumentIndex_(v24, v33, v35);
        v37 = objc_opt_class();
        if (objc_msgSend_isSubclassOfClass_(v36, v38, v37))
        {
          objc_msgSend_setArgument_atIndex_(v26, v33, &v52, v35);
LABEL_16:
          objc_msgSend_invoke(v26, v33, v34);
          v39 = v29;
          v7 = log;
          goto LABEL_17;
        }
      }

      if (!v6)
      {
        goto LABEL_16;
      }

      v39 = v29;
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v7 = log;
      v40 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        loga = v40;
        v41 = NSStringFromProtocol(v7);
        v44 = objc_msgSend_selector(a1, v42, v43);
        v45 = NSStringFromSelector(v44);
        *buf = 138543874;
        *&buf[4] = v41;
        v54 = 2114;
        v55 = v45;
        v56 = 2112;
        v57 = v6;
        _os_log_error_impl(&dword_1883EA000, loga, OS_LOG_TYPE_ERROR, "Asked to invoke reply block of [%{public}@ %{public}@] with an error, but that reply block doesn't take an error.  Dropping this invocation on the floor.  Error: %@", buf, 0x20u);
      }

LABEL_17:
      *buf = __NSMakeSpecialForwardingCaptureBlock();
      objc_msgSend_setArgument_atIndex_(a1, v46, buf, v13);

      break;
    }
  }

  v47 = *MEMORY[0x1E69E9840];
}

void sub_1886B748C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v28 = a5;
  v13 = a6;
  v14 = a7;
  v17 = objc_msgSend_methodSignature(a1, v15, v16);
  if (a3 < a3 + a4)
  {
    do
    {
      v18 = v17;
      ArgumentTypeAtIndex = objc_msgSend_getArgumentTypeAtIndex_(v18, v19, a3);
      v23 = ArgumentTypeAtIndex;
      v24 = *ArgumentTypeAtIndex;
      if (v24 > 0x62)
      {
        if (*ArgumentTypeAtIndex > 0x68u)
        {
          if (*ArgumentTypeAtIndex > 0x70u)
          {
            if (v24 == 113)
            {
              goto LABEL_31;
            }

            if (v24 != 115)
            {
              goto LABEL_26;
            }

            goto LABEL_29;
          }

          if (v24 != 105)
          {
            if (v24 != 108)
            {
              goto LABEL_26;
            }

            goto LABEL_31;
          }

          goto LABEL_20;
        }

        if (v24 != 99)
        {
          if (v24 == 100)
          {
            goto LABEL_31;
          }

          if (v24 != 102)
          {
            goto LABEL_26;
          }

LABEL_20:
          if (v28)
          {
            v25 = v28[2];
LABEL_33:
            v25();
            goto LABEL_34;
          }

          goto LABEL_34;
        }
      }

      else
      {
        if (*ArgumentTypeAtIndex > 0x48u)
        {
          if (*ArgumentTypeAtIndex > 0x50u)
          {
            if (v24 == 81)
            {
              goto LABEL_31;
            }

            if (v24 != 83)
            {
              goto LABEL_26;
            }

LABEL_29:
            if (v28)
            {
              v25 = v28[2];
              goto LABEL_33;
            }

            goto LABEL_34;
          }

          if (v24 != 73)
          {
            if (v24 != 76)
            {
              goto LABEL_26;
            }

LABEL_31:
            if (v28)
            {
              v25 = v28[2];
              goto LABEL_33;
            }

            goto LABEL_34;
          }

          goto LABEL_20;
        }

        if (v24 == 64)
        {
          if (ArgumentTypeAtIndex[1] == 63)
          {
            if (v14)
            {
              v14[2](v14, a3);
            }
          }

          else if (v13)
          {
            v13[2](v13, a3);
          }

          goto LABEL_34;
        }

        if (v24 != 66 && v24 != 67)
        {
LABEL_26:
          v26 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v21, v22);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v26, v27, a2, a1, @"CKInvocationUtilities.m", 195, @"Unsuitable argument type %s", v23);

          goto LABEL_34;
        }
      }

      if (v28)
      {
        v25 = v28[2];
        goto LABEL_33;
      }

LABEL_34:
      ++a3;
      --a4;
    }

    while (a4);
  }
}

id sub_1886B770C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v42 = a4;
  v8 = objc_msgSend_callbackProxyEndpoint(v5, v6, v7);
  v11 = objc_msgSend_interface(v8, v9, v10);
  v14 = objc_msgSend_protocol(v11, v12, v13);

  v17 = objc_msgSend_ckOperationClassName(v5, v15, v16);
  v18 = NSClassFromString(v17);

  if (v18)
  {
    v21 = objc_msgSend_daemonCallbackCompletionSelector(v18, v19, v20);
    v22 = CKExtendedMethodSignatureForProtocolSelector(v14, v21);
    v24 = objc_msgSend_invocationWithMethodSignature_(MEMORY[0x1E695DF50], v23, v22);
    objc_msgSend_retainArguments(v24, v25, v26);
    objc_msgSend_setSelector_(v24, v27, v21);
    v31 = objc_msgSend_numberOfArguments(v22, v28, v29);
    while (--v31 >= 2)
    {
      v32 = objc_msgSend__classForObjectAtArgumentIndex_(v22, v30, v31);
      v33 = objc_opt_class();
      if (objc_msgSend_isSubclassOfClass_(v32, v34, v33))
      {
        objc_msgSend_setArgument_atIndex_(v24, v30, &v42, v31);
        break;
      }
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v35 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
    {
      v38 = v35;
      v41 = objc_msgSend_ckOperationClassName(v5, v39, v40);
      *buf = 138412290;
      v44 = v41;
      _os_log_fault_impl(&dword_1883EA000, v38, OS_LOG_TYPE_FAULT, "Class %@ couldn't be created in the daemon", buf, 0xCu);
    }

    v24 = 0;
  }

  v36 = *MEMORY[0x1E69E9840];

  return v24;
}

uint64_t sub_1886B8FDC()
{
  v0 = objc_alloc_init(CKMemoryInfo);
  v1 = qword_1ED4B6578;
  qword_1ED4B6578 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_1886B906C()
{
  v0 = dispatch_workloop_create("com.apple.cloudkit.memoryInfo");
  v1 = qword_1ED4B6588;
  qword_1ED4B6588 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1886B91D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v4 = objc_msgSend_source(WeakRetained, v2, v3);
    data = dispatch_source_get_data(v4);

    objc_msgSend_handleMemoryPressureEvent_(v7, v6, data);
    WeakRetained = v7;
  }
}

void sub_1886B9470(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, a3);
  objc_msgSend_postNotificationName_object_(v5, v4, @"CKMemoryPressureDidChangeNotification", *(a1 + 32));
}

id sub_1886BB190(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    a1 = objc_opt_new();
    objc_msgSend_appendString_(a1, v4, @"{ ");
    v7 = objc_msgSend_keyEnumerator(v3, v5, v6);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v20, v24, 16);
    if (v9)
    {
      v11 = v9;
      v12 = *v21;
      v13 = 1;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v7);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          if ((v13 & 1) == 0)
          {
            objc_msgSend_appendString_(a1, v10, @", ");
          }

          v16 = objc_msgSend_objectForKeyedSubscript_(v3, v10, v15);
          objc_msgSend_appendFormat_(a1, v17, @"%@:%@", v15, v16);

          v13 = 0;
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v20, v24, 16);
        v13 = 0;
      }

      while (v11);
    }

    objc_msgSend_appendString_(a1, v10, @" }");
  }

  v18 = *MEMORY[0x1E69E9840];

  return a1;
}

__CFString *CKPersonaTypeDescription(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70C1EA0[a1 - 1];
  }
}

uint64_t CKPersonasAreEquivalent(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (CKObjectsAreBothNilOrEqual(v3, v4))
  {
    isEquivalentToPersona = 1;
  }

  else if (v3 && v4)
  {
    isEquivalentToPersona = objc_msgSend_isEquivalentToPersona_(v3, v5, v4);
  }

  else if (objc_msgSend_isDataSeparated(v3, v5, v6))
  {
    isEquivalentToPersona = 0;
  }

  else
  {
    isEquivalentToPersona = objc_msgSend_isDataSeparated(v4, v8, v9) == 0;
  }

  return isEquivalentToPersona;
}

id sub_1886BC404(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_type(v3, v4, v5) == *(a1 + 32))
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1886BCA94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1886BD184(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = *MEMORY[0x1E69E9840];
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = sub_1883EE25C;
  v53 = sub_1883EF7D4;
  v54 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_1883EE25C;
  v47 = sub_1883EF7D4;
  v48 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1886BD6A8;
  aBlock[3] = &unk_1E70C1758;
  aBlock[6] = a3;
  aBlock[7] = a4;
  aBlock[4] = &v49;
  aBlock[5] = &v43;
  v5 = _Block_copy(aBlock);
  v9 = objc_msgSend_personaIdentifier(a1, v6, v7);
  if (!v9)
  {
    if (!objc_msgSend_aa_isAccountClass_(a1, v8, *MEMORY[0x1E698B760]))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v25 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v56 = a1;
        _os_log_error_impl(&dword_1883EA000, v25, OS_LOG_TYPE_ERROR, "Failed to resolve the persona for account: %@", buf, 0xCu);
      }

      v27 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v26, @"CKInternalErrorDomain", 2003, @"Failed to resolve the persona for account: %@", a1);
      v12 = 0;
      v17 = v44[5];
      v44[5] = v27;
      goto LABEL_28;
    }

    v41 = 0;
    v14 = objc_msgSend_personasWithType_error_(CKPersona, v13, 1, &v41);
    v17 = v41;
    if (v14)
    {
      if (objc_msgSend_count(v14, v15, v16))
      {
        v20 = objc_msgSend_firstObject(v14, v18, v19);
        v21 = v50[5];
        v50[5] = v20;
        v12 = 1;
LABEL_27:

        goto LABEL_28;
      }
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v28 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        v40 = v44[5];
        *buf = 138412290;
        v56 = v40;
        _os_log_error_impl(&dword_1883EA000, v28, OS_LOG_TYPE_ERROR, "Failed to fetch personal personas with error: %@", buf, 0xCu);
      }
    }

    v29 = objc_msgSend_launchPersona(CKPersona, v18, v19);
    v21 = v29;
    if (v29 && objc_msgSend_isDataSeparated(v29, v30, v31))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v32 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v56 = a1;
        _os_log_error_impl(&dword_1883EA000, v32, OS_LOG_TYPE_ERROR, "Failed to resolve the persona for primary account: %@", buf, 0xCu);
      }

      v34 = objc_msgSend_errorWithDomain_code_error_format_(CKPrettyError, v33, @"CKInternalErrorDomain", 2003, v17, @"Failed to resolve the persona for primary account: %@", a1);
      v12 = 0;
      v35 = v44[5];
      v44[5] = v34;
    }

    else
    {
      v36 = v50;
      v37 = v21;
      v35 = v36[5];
      v36[5] = v37;
      v12 = 1;
    }

    goto LABEL_27;
  }

  v10 = objc_msgSend_personaWithIdentifier_error_(CKPersona, v8, v9, 0);
  v11 = v50[5];
  v50[5] = v10;

  if (!v50[5])
  {
    v22 = [CKPersona alloc];
    v24 = objc_msgSend_initWithIdentifier_type_(v22, v23, v9, 0);
    v17 = v50[5];
    v50[5] = v24;
    v12 = 1;
LABEL_28:

    goto LABEL_29;
  }

  v12 = 1;
LABEL_29:

  v5[2](v5);
  _Block_object_dispose(&v43, 8);

  _Block_object_dispose(&v49, 8);
  v38 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_1886BD654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  (*(v11 + 16))(v11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void *sub_1886BD6A8(void *result)
{
  v1 = result;
  if (result[6])
  {
    result = *(*(result[4] + 8) + 40);
    *v1[6] = result;
  }

  if (v1[7])
  {
    result = *(*(v1[5] + 8) + 40);
    *v1[7] = result;
  }

  return result;
}

uint64_t sub_1886BD75C()
{
  v0 = objc_alloc_init(CKProcessInfo);
  v1 = qword_1ED4B6070;
  qword_1ED4B6070 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

BOOL sub_1886BD898()
{
  result = _CKUseSystemInstalledBinaries();
  _sCKUseSystemInstalledBinaries = result;
  return result;
}

void sub_1886BE0DC()
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v0 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1883EA000, v0, OS_LOG_TYPE_ERROR, "Kill signal received. Goodbye cruel world!", v1, 2u);
  }

  exit(1);
}

void sub_1886BE16C(uint64_t a1)
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEBUG, "Posting CKIdentityUpdateNotification", v7, 2u);
  }

  v5 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v3, v4);
  objc_msgSend_postNotificationName_object_(v5, v6, @"CKIdentityUpdateNotification", *(a1 + 32));
}

void sub_1886BE3BC(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = a1;
    objc_sync_enter(v4);
    v5 = v4[2];
    objc_msgSend_addObject_(v5, v6, v3);

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_ck;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = v4[2];
      v17 = 138412546;
      v18 = v3;
      v19 = 2048;
      v20 = objc_msgSend_count(v8, v9, v10);
      _os_log_impl(&dword_1883EA000, v7, OS_LOG_TYPE_INFO, "Registering %@ for account and authorization change notifications. Now have %ld registered containers", &v17, 0x16u);
    }

    if ((byte_1ED4B6770 & 1) == 0)
    {
      byte_1ED4B6770 = 1;
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v11 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v17) = 0;
        _os_log_debug_impl(&dword_1883EA000, v11, OS_LOG_TYPE_DEBUG, "Registering notification handlers", &v17, 2u);
      }

      objc_msgSend___registerForAuthorizationChangeNotifications(v4, v12, v13);
      objc_msgSend___registerForAccountChangeNotifications(v4, v14, v15);
    }

    objc_sync_exit(v4);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1886BE5B4(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1883EA000, v3, OS_LOG_TYPE_DEFAULT, "Authorization changed for %@", &v9, 0xCu);
    }

    objc_msgSend_setContainerScopedUserID_(WeakRetained, v4, 0);
    objc_msgSend_setOrgAdminUserID_(WeakRetained, v6, 0);
    objc_msgSend_setPushEnvironment_(WeakRetained, v7, 0);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1886BE6CC(uint64_t a1, int a2)
{
  v53 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1883EA000, v4, OS_LOG_TYPE_DEFAULT, "Account change notification received for all containers", buf, 2u);
  }

  v7 = objc_msgSend_sharedManager(CKProcessScopedStateManager, v5, v6);
  objc_sync_enter(v7);
  if (v7)
  {
    v8 = v7[2];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v12 = objc_msgSend_allObjects(v9, v10, v11);

  objc_sync_exit(v7);
  v15 = objc_msgSend_importantUserRecordAccessQueue(CKContainer, v13, v14);
  block = MEMORY[0x1E69E9820];
  v45 = 3221225472;
  v46 = sub_1886BEA50;
  v47 = &unk_1E70BC388;
  v16 = v12;
  v48 = v16;
  dispatch_sync(v15, &block);

  objc_msgSend_invalidateCachedAccountInfo(CKAccountInfo, v17, v18);
  v43 = 0;
  state = notify_get_state(a2, &v43);
  if (state)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v21 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v50 = a2;
      v51 = 1024;
      v52 = state;
      _os_log_error_impl(&dword_1883EA000, v21, OS_LOG_TYPE_ERROR, "Failed to retrieve validation counter with token %d: status %u", buf, 0xEu);
    }

    v22 = 0;
    v43 = 0;
  }

  else
  {
    v22 = v43;
  }

  objc_msgSend_setValidAccountInfoValidationCounterValue_(CKAccountInfo, v19, v22, v43, block, v45, v46, v47);
  v23 = v7;
  objc_sync_enter(v23);
  if (!v7)
  {
    goto LABEL_18;
  }

  if ((v23[8] & 1) == 0)
  {
    v23[10] = 1;
LABEL_18:
    v31 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v24, v25);
    v32 = *(a1 + 32);
    v35 = sub_1884239B0(v32, v33, v34);
    objc_msgSend_addObserver_selector_name_object_(v31, v36, v32, sel_connectionBecameInvalid_, @"CKXPCConnectionInterrupted", v35);

    v39 = sub_1884239B0(*(a1 + 32), v37, v38);
    objc_msgSend_activate(v39, v40, v41);

    objc_sync_exit(v23);
    v28 = v23;
    goto LABEL_19;
  }

  objc_sync_exit(v23);

  v28 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v26, v27);
  v29 = CKAccountChangedNotificationName();
  objc_msgSend_postNotificationName_object_(v28, v30, v29, 0);

LABEL_19:
  v42 = *MEMORY[0x1E69E9840];
}

void sub_1886BEA50(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v1 = *(a1 + 32);
  v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v2, &v16, v22, 16);
  if (v3)
  {
    v5 = v3;
    v6 = *v17;
    *&v4 = 138543362;
    v15 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v1);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v9 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v15;
          v21 = v8;
          _os_log_impl(&dword_1883EA000, v9, OS_LOG_TYPE_DEFAULT, "Account change notification received for %{public}@", buf, 0xCu);
        }

        objc_msgSend_setContainerScopedUserID_(v8, v10, 0, v15, v16);
        objc_msgSend_setOrgAdminUserID_(v8, v11, 0);
        objc_msgSend_setPushEnvironment_(v8, v12, 0);
        ++v7;
      }

      while (v5 != v7);
      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v13, &v16, v22, 16);
    }

    while (v5);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1886BEBFC(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = a1;
    objc_sync_enter(v4);
    v5 = v4[2];
    objc_msgSend_removeObject_(v5, v6, v3);

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_ck;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = v4[2];
      v12 = 138412546;
      v13 = v3;
      v14 = 2048;
      v15 = objc_msgSend_count(v9, v10, v11);
      _os_log_debug_impl(&dword_1883EA000, v7, OS_LOG_TYPE_DEBUG, "Unregistering %@ from account changes. Now have %ld registered containers", &v12, 0x16u);
    }

    objc_sync_exit(v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1886BFE88(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

id sub_1886C15A8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_equivalencyProperties(a2, a2, a3);
  v6 = objc_msgSend_dictionary(v3, v4, v5);

  return v6;
}

void sub_1886C1770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1886C1914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1886C1AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1886C1C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1886C1D50(uint64_t a1, const char *a2, uint64_t a3)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v6 = off_1EA9115F0;
  v18 = off_1EA9115F0;
  if (!off_1EA9115F0)
  {
    v7 = sub_1886C2A1C(a1, a2, a3);
    v16[3] = dlsym(v7, "MMCSSignatureGeneratorUpdate");
    off_1EA9115F0 = v16[3];
    v6 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (v6)
  {
    v6(a1, a2, a3, 1);
  }

  else
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v8, v9);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v11, "void __MMCSSignatureGeneratorUpdate(void *, const void *, size_t, Boolean)");
    v13 = dlerror();
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v10, v14, v12, @"CKSignatureGenerator.m", 37, @"%s", v13);

    __break(1u);
  }
}

void sub_1886C1EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1886C1FF8(uint64_t a1, const char *a2, uint64_t a3)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v4 = off_1EA912398;
  v16 = off_1EA912398;
  if (!off_1EA912398)
  {
    v5 = sub_1886C2A1C(a1, a2, a3);
    v14[3] = dlsym(v5, "MMCSSignatureAndSchemeSize");
    off_1EA912398 = v14[3];
    v4 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (v4)
  {
    v4(a1);
  }

  else
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v6, v7);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v9, "size_t __MMCSSignatureAndSchemeSize(const unsigned char *)");
    v11 = dlerror();
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v8, v12, v10, @"CKSignatureGenerator.m", 49, @"%s", v11);

    __break(1u);
  }
}

void sub_1886C2144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1886C232C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1886C252C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1886C26E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1886C28A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1886C29CC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_1886C2A1C(a1, a2, a3);
  result = dlsym(v4, "MMCSSignatureGeneratorCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EA911600 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1886C2A1C(uint64_t a1, const char *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  if (!qword_1EA9123B0)
  {
    v10[1] = MEMORY[0x1E69E9820];
    v10[2] = 3221225472;
    v10[3] = sub_1886C2B70;
    v10[4] = &unk_1E70BC418;
    v10[5] = v10;
    v11 = xmmword_1E70C1F98;
    v12 = 0;
    qword_1EA9123B0 = _sl_dlopen();
  }

  v3 = qword_1EA9123B0;
  if (!qword_1EA9123B0)
  {
    v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v7, "void *MMCSLibrary(void)");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v9, v8, @"CKSignatureGenerator.m", 22, @"%s", v10[0]);

    __break(1u);
    goto LABEL_7;
  }

  v4 = v10[0];
  if (v10[0])
  {
LABEL_7:
    free(v4);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1886C2B70(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1EA9123B0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1886C2BE4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_1886C2A1C(a1, a2, a3);
  result = dlsym(v4, "MMCSSignatureGeneratorCreateWithBoundaryKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EA919BB8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1886C2C34(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_1886C2A1C(a1, a2, a3);
  result = dlsym(v4, "MMCSSignatureGeneratorCreateWithVerificationKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EA919BC0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1886C2C84(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_1886C2A1C(a1, a2, a3);
  result = dlsym(v4, "MMCSSignatureGeneratorFinish");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EA9115F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1886C2CD4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_1886C2A1C(a1, a2, a3);
  result = dlsym(v4, "MMCSSignatureGeneratorUpdate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EA9115F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1886C2D24(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_1886C2A1C(a1, a2, a3);
  result = dlsym(v4, "MMCSSignatureAndSchemeSize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EA912398 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1886C2D74(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_1886C2A1C(a1, a2, a3);
  result = dlsym(v4, "MMCSSignatureCreateFromFileDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EA919BC8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1886C2DC4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_1886C2A1C(a1, a2, a3);
  result = dlsym(v4, "MMCSSignatureCreateWithBoundaryKeyFromFileDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EA919BD0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1886C2E14(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_1886C2A1C(a1, a2, a3);
  result = dlsym(v4, "MMCSSignatureIsValid");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EA919BD8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1886C2E64(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_1886C2A1C(a1, a2, a3);
  result = dlsym(v4, "MMCSSignatureIsValidV2");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EA9115E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1886C3C10()
{
  v0 = objc_alloc_init(CKSignificantIssueHandler);
  v1 = qword_1ED4B65A8;
  qword_1ED4B65A8 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1886C40D4(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v9 = objc_msgSend_ckShortDescription(v5, v7, v8);
      v15 = 138412546;
      v16 = v9;
      v17 = 2112;
      v18 = v3;
      _os_log_error_impl(&dword_1883EA000, v6, OS_LOG_TYPE_ERROR, "Failed to report cloud telemetry event for significant issue %@ with error: %@", &v15, 0x16u);
LABEL_11:
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v10 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 32);
      v6 = v10;
      v9 = objc_msgSend_ckShortDescription(v12, v13, v14);
      v15 = 138412290;
      v16 = v9;
      _os_log_debug_impl(&dword_1883EA000, v6, OS_LOG_TYPE_DEBUG, "Successfully reported cloud telemetry event for significant issue %@", &v15, 0xCu);
      goto LABEL_11;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1886C4278(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v9 = objc_msgSend_ckShortDescription(v5, v7, v8);
      v15 = 138412546;
      v16 = v9;
      v17 = 2112;
      v18 = v3;
      _os_log_error_impl(&dword_1883EA000, v6, OS_LOG_TYPE_ERROR, "Failed to report symptom diagnostics for significant issue %@ with error: %@", &v15, 0x16u);
LABEL_11:
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v10 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 32);
      v6 = v10;
      v9 = objc_msgSend_ckShortDescription(v12, v13, v14);
      v15 = 138412290;
      v16 = v9;
      _os_log_debug_impl(&dword_1883EA000, v6, OS_LOG_TYPE_DEBUG, "Successfully reported symptom diagnostics for significant issue %@", &v15, 0xCu);
      goto LABEL_11;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1886C6658()
{
  v0 = [CKTapToRadarManager alloc];
  inited = objc_msgSend_initInternal(v0, v1, v2);
  v4 = qword_1ED4B65B8;
  qword_1ED4B65B8 = inited;

  return MEMORY[0x1EEE66BB8](inited, v4);
}

void sub_1886C6FF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend__lockedTriggerTapToRadarWithRequest_(WeakRetained, v2, *(a1 + 32));
}

id sub_1886C81E0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_1886C857C(a1, a2, a3);
  v6 = objc_msgSend_objectForKey_(v4, v5, a1);

  return v6;
}

void sub_1886C8234(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  RunLoopSource = CFUserNotificationCreateRunLoopSource(*MEMORY[0x1E695E480], *(a1 + 40), sub_1886C843C, 0);
  if (RunLoopSource)
  {
    v3 = RunLoopSource;
    Current = CFRunLoopGetCurrent();
    v5 = CFRunLoopCopyCurrentMode(Current);
    if (!v5)
    {
      v5 = CFRetain(*MEMORY[0x1E695E8D0]);
    }

    v6 = *(a1 + 40);
    v7 = *(a1 + 32);
    v10 = sub_1886C857C(v7, v8, v9);
    v11 = _Block_copy(v7);

    objc_msgSend_setObject_forKey_(v10, v12, v11, v6);
    CFRunLoopAddSource(Current, v3, v5);
    CFRelease(v5);
    v13 = *MEMORY[0x1E69E9840];

    CFRelease(v3);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 40);
      v18 = 138412290;
      v19 = v17;
      _os_log_error_impl(&dword_1883EA000, v14, OS_LOG_TYPE_ERROR, "Couldn't schedule response for notification %@", &v18, 0xCu);
    }

    CFUserNotificationCancel(*(a1 + 40));
    v15 = *(a1 + 40);
    (*(*(a1 + 32) + 16))();
    v16 = *MEMORY[0x1E69E9840];
  }
}

void sub_1886C843C(uint64_t a1, const char *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = sub_1886C81E0(a1, a2, a3);
  v6 = v5;
  if (v5)
  {
    v7 = (*(v5 + 16))(v5, a1, a2);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v10 = ck_log_facility_ck;
    v7 = os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      v14 = 138412290;
      v15 = a1;
      _os_log_error_impl(&dword_1883EA000, v10, OS_LOG_TYPE_ERROR, "No completion block for notification %@", &v14, 0xCu);
    }
  }

  v11 = sub_1886C857C(v7, v8, v9);
  objc_msgSend_removeObjectForKey_(v11, v12, a1);

  v13 = *MEMORY[0x1E69E9840];
}

id sub_1886C857C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = qword_1EA919BE0;
  if (!qword_1EA919BE0)
  {
    v4 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x1E696AD18], a2, a3);
    v5 = qword_1EA919BE0;
    qword_1EA919BE0 = v4;

    v3 = qword_1EA919BE0;
  }

  return v3;
}

id CKValidSharingURLHostnames()
{
  if (qword_1ED4B6608 != -1)
  {
    dispatch_once(&qword_1ED4B6608, &unk_1EFA30A30);
  }

  v1 = qword_1ED4B6600;

  return v1;
}

uint64_t sub_1886C8628(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_setWithObjects_(MEMORY[0x1E695DFD8], a2, @"icloud.com", @"www.icloud.com", @"share.icloud.com", @"icloud.com.cn", @"www.icloud.com.cn", @"share.icloud.com.cn", 0);
  v3 = qword_1ED4B6600;
  qword_1ED4B6600 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

uint64_t CKBoolFromCKTernaryWithDefault(uint64_t a1, unsigned int a2)
{
  if (a1 == 1)
  {
    a2 = 1;
  }

  if (a1)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

id CKGetHomeDirRealPath()
{
  v0 = NSHomeDirectory();
  v1 = CKGetRealPath(v0);

  return v1;
}

id CKGetDarwinTempDirRealPath()
{
  v10 = *MEMORY[0x1E69E9840];
  bzero(__s, 0x400uLL);
  confstr(65537, __s, 0x400uLL);
  v2 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v0, v1);
  v3 = strlen(__s);
  v5 = objc_msgSend_stringWithFileSystemRepresentation_length_(v2, v4, __s, v3);

  v6 = CKGetRealPath(v5);

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id CKGetDarwinCacheDirRealPath()
{
  v10 = *MEMORY[0x1E69E9840];
  bzero(__s, 0x400uLL);
  confstr(65538, __s, 0x400uLL);
  v2 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v0, v1);
  v3 = strlen(__s);
  v5 = objc_msgSend_stringWithFileSystemRepresentation_length_(v2, v4, __s, v3);

  v6 = CKGetRealPath(v5);

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id CKGetHomeDirEscapingSandbox()
{
  v10 = *MEMORY[0x1E69E9840];
  memset(&v8, 0, sizeof(v8));
  v7 = 0;
  v0 = getuid();
  v2 = 0;
  if (!getpwuid_r(v0, &v8, v9, 0x400uLL, &v7))
  {
    v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v1, v7->pw_dir);
    v2 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v4, v3, 1);
  }

  v5 = *MEMORY[0x1E69E9840];

  return v2;
}

id CKApplicationBundleIDForPush(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v7;
  }

  if (v10)
  {
    v12 = v10;
  }

  if (v9)
  {
    v12 = v9;
  }

  v13 = v12;

  return v13;
}

id CKPushTopicForPushBehavior(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v10 = a4;
  if (a1 == 2)
  {
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, @"%@%@", v8, v10);
    v15 = objc_msgSend_CKSHA256(v12, v13, v14);
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v16, @"%@-DH-%@", v7, v15);
  }

  else if (a1 == 1)
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id CKUnitTestOverrideClasses()
{
  if (qword_1ED4B6630 != -1)
  {
    dispatch_once(&qword_1ED4B6630, &unk_1EFA30A90);
  }

  v1 = qword_1ED4B6628;

  return v1;
}

void sub_1886C8B80()
{
  v7[4] = *MEMORY[0x1E69E9840];
  v0 = CKAcceptableValueClasses();
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v7[2] = objc_opt_class();
  v7[3] = objc_opt_class();
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v1, v7, 4);
  v4 = objc_msgSend_setByAddingObjectsFromArray_(v0, v3, v2);
  v5 = qword_1ED4B6628;
  qword_1ED4B6628 = v4;

  v6 = *MEMORY[0x1E69E9840];
}

id CKOperationProgressCallbackClasses()
{
  if (qword_1ED4B6640 != -1)
  {
    dispatch_once(&qword_1ED4B6640, &unk_1EFA30AB0);
  }

  v1 = qword_1ED4B6638;

  return v1;
}

uint64_t sub_1886C8CB4()
{
  v43 = MEMORY[0x1E695DFD8];
  v42 = objc_opt_class();
  v41 = objc_opt_class();
  v40 = objc_opt_class();
  v39 = objc_opt_class();
  v38 = objc_opt_class();
  v37 = objc_opt_class();
  v36 = objc_opt_class();
  v35 = objc_opt_class();
  v34 = objc_opt_class();
  v33 = objc_opt_class();
  v32 = objc_opt_class();
  v31 = objc_opt_class();
  v30 = objc_opt_class();
  v29 = objc_opt_class();
  v28 = objc_opt_class();
  v27 = objc_opt_class();
  v26 = objc_opt_class();
  v25 = objc_opt_class();
  v24 = objc_opt_class();
  v23 = objc_opt_class();
  v22 = objc_opt_class();
  v21 = objc_opt_class();
  v20 = objc_opt_class();
  v19 = objc_opt_class();
  v18 = objc_opt_class();
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v12 = objc_msgSend_setWithObjects_(v43, v11, v42, v41, v40, v39, v38, v37, v36, v35, v34, v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, 0);
  v13 = qword_1ED4B6638;
  qword_1ED4B6638 = v12;

  return MEMORY[0x1EEE66BB8](v12, v13);
}

id CKOperationMetricsClasses()
{
  if (qword_1ED4B6670 != -1)
  {
    dispatch_once(&qword_1ED4B6670, &unk_1EFA30B10);
  }

  v1 = qword_1ED4B6668;

  return v1;
}

uint64_t sub_1886C90C0()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v8 = objc_msgSend_setWithObjects_(v0, v7, v1, v2, v3, v4, v5, v6, 0);
  v9 = qword_1ED4B6668;
  qword_1ED4B6668 = v8;

  return MEMORY[0x1EEE66BB8](v8, v9);
}

id CKStringWithLimitedArray(void *a1, unint64_t a2)
{
  v3 = a1;
  if (objc_msgSend_count(v3, v4, v5) <= a2)
  {
    v13 = CKStringWithArray(v3);
  }

  else
  {
    v8 = objc_msgSend_array(MEMORY[0x1E695DF70], v6, v7);
    v10 = objc_msgSend_subarrayWithRange_(v3, v9, 0, a2);
    objc_msgSend_addObjectsFromArray_(v8, v11, v10);

    objc_msgSend_addObject_(v8, v12, @"...");
    v13 = CKStringWithArray(v8);
  }

  return v13;
}

id CKStringWithDictionary(void *a1)
{
  v1 = a1;
  v3 = objc_msgSend_stringWithString_(MEMORY[0x1E696AD60], v2, @"{");
  v6 = objc_msgSend_keyEnumerator(v1, v4, v5);
  v9 = objc_msgSend_nextObject(v6, v7, v8);
  if (v9)
  {
    v12 = v9;
    do
    {
      if (objc_msgSend_length(v3, v10, v11) != 1)
      {
        objc_msgSend_appendString_(v3, v13, @", ");
      }

      v14 = objc_msgSend_objectForKeyedSubscript_(v1, v13, v12);
      v15 = CKStringWithObject(v14);
      objc_msgSend_appendFormat_(v3, v16, @"%@: %@", v12, v15);

      v19 = objc_msgSend_nextObject(v6, v17, v18);

      v12 = v19;
    }

    while (v19);
  }

  objc_msgSend_appendString_(v3, v10, @"}");

  return v3;
}

id CKStringWithSet(void *a1)
{
  v1 = a1;
  v3 = objc_msgSend_stringWithString_(MEMORY[0x1E696AD60], v2, @"{");
  v6 = objc_msgSend_objectEnumerator(v1, v4, v5);
  v9 = objc_msgSend_nextObject(v6, v7, v8);
  if (v9)
  {
    v12 = v9;
    do
    {
      if (objc_msgSend_length(v3, v10, v11) != 1)
      {
        objc_msgSend_appendString_(v3, v13, @", ");
      }

      v14 = CKStringWithObject(v12);
      objc_msgSend_appendString_(v3, v15, v14);

      v18 = objc_msgSend_nextObject(v6, v16, v17);

      v12 = v18;
    }

    while (v18);
  }

  objc_msgSend_appendString_(v3, v10, @"}");

  return v3;
}

id CKShareURLSlugForiWorkShareTitle(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v7 = v4;
  if (qword_1ED4B6680 == -1)
  {
    if (v4)
    {
LABEL_3:
      v8 = qword_1ED4B6678;
      v9 = objc_msgSend_lowercaseString(v7, v5, v6);
      objc_msgSend_objectForKeyedSubscript_(v8, v10, v9);
      goto LABEL_4;
    }
  }

  else
  {
    dispatch_once(&qword_1ED4B6680, &unk_1EFA30B30);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  if (v3)
  {
    v13 = objc_msgSend_pathExtension(v3, v5, v6);
    v9 = objc_msgSend_lowercaseString(v13, v14, v15);

    if (!v9)
    {
      v11 = 0;
      goto LABEL_5;
    }

    objc_msgSend_objectForKeyedSubscript_(qword_1ED4B6678, v16, v9);
    v11 = LABEL_4:;
LABEL_5:

    goto LABEL_6;
  }

  v11 = 0;
LABEL_6:

  return v11;
}

void sub_1886C958C()
{
  v0 = qword_1ED4B6678;
  qword_1ED4B6678 = &unk_1EFA85F90;
}

id CKContainerSetupInfoWithBundleIDOverridesForOOPUIFromContainer(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_setupInfo(v1, v2, v3);
  v7 = objc_msgSend_copy(v4, v5, v6);

  v10 = objc_msgSend_containerOptions(v7, v8, v9);
  v13 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(v10, v11, v12);

  if (!v13)
  {
    v16 = objc_msgSend_containerOptions(v7, v14, v15);
    v19 = objc_msgSend_primaryIdentifier(v1, v17, v18);
    objc_msgSend_setApplicationBundleIdentifierOverride_(v16, v20, v19);
  }

  return v7;
}

__CFString *CKSharingContainerSlugForContainerID(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = @"share";
  v10 = objc_msgSend_specialContainerType(a1, v8, v9);
  if (v10 <= 20)
  {
    if (v10 == 4)
    {
      v13 = @"iclouddrive";

      v14 = CKShareURLSlugForiWorkShareTitle(v5, v6);
      if (v14)
      {
        v7 = v14;

        v13 = v7;
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_21;
    }

    if (v10 == 5)
    {
      v16 = @"photos";

      if (objc_msgSend_isEqualToString_(v6, v17, @"photos_sharing"))
      {
        v19 = kCKPhotosSharedLibraryShareURLSlug;
      }

      else if (objc_msgSend_isEqualToString_(v6, v18, @"photos_links"))
      {
        v19 = kCKPhotosEPPMomentShareURLSlug;
      }

      else
      {
        if (!objc_msgSend_isEqualToString_(v6, v20, @"photos_sharedcollections"))
        {
          v7 = v16;
          goto LABEL_22;
        }

        v19 = kCKPhotosSharedCollectionsShareURLSlug;
      }

      v13 = *v19;
      v7 = v16;
      goto LABEL_21;
    }

    if (v10 == 6 && objc_msgSend_isEqualToString_(v6, v11, @"events"))
    {
      v12 = kCKEventsShareURLSlug;
LABEL_20:
      v13 = *v12;
LABEL_21:

      v7 = v13;
    }
  }

  else
  {
    if (v10 <= 27)
    {
      if (v10 == 21)
      {
        v12 = kCKNotesShareURLSlug;
      }

      else
      {
        if (v10 != 25)
        {
          goto LABEL_22;
        }

        v12 = kCKRemindersShareURLSlug;
      }

      goto LABEL_20;
    }

    if (v10 == 28)
    {
      if (!objc_msgSend_isEqualToString_(v6, v11, @"safari-tab-groups"))
      {
        goto LABEL_22;
      }

      v12 = kCKSafariTabGroupsShareURLSlug;
      goto LABEL_20;
    }

    if (v10 == 29 && objc_msgSend_isEqualToString_(v6, v11, @"freeform"))
    {
      v12 = kCKFreeformShareURLSlug;
      goto LABEL_20;
    }
  }

LABEL_22:

  return v7;
}

__CFString *CKStringForTransferSize(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70C20F8[a1 - 1];
  }
}

__CFString *CKStringForNetworkServiceType(unint64_t a1)
{
  if (a1 > 0xB)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70C2130[a1];
  }
}

__CFString *CKStringForXPCActivityState(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70C21A8[a1];
  }
}

__CFString *CKStringForDuetPreClearedMode(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70C21D8[a1];
  }
}

CFDataRef mmapFileDescriptor(int a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v19.st_dev = 67109120;
    *&v19.st_mode = a1;
    _os_log_debug_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEBUG, "Memory mapping the file with fd %d", &v19, 8u);
    if (a1 < 0)
    {
      goto LABEL_6;
    }
  }

  else if (a1 < 0)
  {
LABEL_6:
    v3 = 0;
    goto LABEL_7;
  }

  memset(&v19, 0, sizeof(v19));
  if (fstat(a1, &v19))
  {
    goto LABEL_6;
  }

  if (v19.st_size)
  {
    v6 = mmap(0, v19.st_size, 1, 1025, a1, 0);
    if (v6 == -1)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v11 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        v12 = v11;
        v13 = *__error();
        LODWORD(context.version) = 67109376;
        HIDWORD(context.version) = a1;
        LOWORD(context.info) = 1024;
        *(&context.info + 2) = v13;
        _os_log_error_impl(&dword_1883EA000, v12, OS_LOG_TYPE_ERROR, "Could not mmap %d: %{errno}d", &context, 0xEu);
      }

      goto LABEL_6;
    }

    v7 = v6;
    context.version = 0;
    memset(&context.retain, 0, 40);
    context.info = v19.st_size;
    context.deallocate = sub_1886C9CC8;
    context.preferredSize = 0;
    v8 = CFAllocatorCreate(0, &context);
    if (v8)
    {
      v9 = v8;
      v3 = CFDataCreateWithBytesNoCopy(0, v7, v19.st_size, v8);
      if (!v3)
      {
        munmap(v7, v19.st_size);
      }

      CFRelease(v9);
    }

    else
    {
      v3 = 0;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v15[0] = 67109376;
      v15[1] = a1;
      v16 = 2048;
      st_size = v19.st_size;
      _os_log_debug_impl(&dword_1883EA000, v14, OS_LOG_TYPE_DEBUG, "Successfully mapped fd %d (%lld bytes)", v15, 0x12u);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v10 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(context.version) = 0;
      _os_log_debug_impl(&dword_1883EA000, v10, OS_LOG_TYPE_DEBUG, "Memory mapping a zero byte file", &context, 2u);
    }

    v3 = CFDataCreate(0, 0, 0);
  }

LABEL_7:
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

void sub_1886C9CC8(void *a1, size_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  munmap(a1, a2);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v5 = 134217984;
    v6 = a2;
    _os_log_debug_impl(&dword_1883EA000, v3, OS_LOG_TYPE_DEBUG, "Unmapped %ld bytes", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

id mmapFileAtPath(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  bzero(buffer, 0x401uLL);
  if (!v1)
  {
    goto LABEL_17;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v10 = v2;
    v13 = objc_msgSend_CKSanitizedPath(v1, v11, v12);
    *buf = 138543362;
    v23 = v13;
    _os_log_debug_impl(&dword_1883EA000, v10, OS_LOG_TYPE_DEBUG, "Memory mapping the file at %{public}@", buf, 0xCu);
  }

  if (CFStringGetFileSystemRepresentation(v1, buffer, 1024) != 1)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v14 = v7;
      v17 = objc_msgSend_CKSanitizedPath(v1, v15, v16);
      *buf = 138543362;
      v23 = v17;
      _os_log_error_impl(&dword_1883EA000, v14, OS_LOG_TYPE_ERROR, "Can't get file system representation for backup file path %{public}@", buf, 0xCu);
    }

    goto LABEL_17;
  }

  v3 = open(buffer, 0, 0);
  if (v3 < 1)
  {
LABEL_17:
    v6 = 0;
    goto LABEL_18;
  }

  v4 = v3;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v5 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v18 = v5;
    v21 = objc_msgSend_CKSanitizedPath(v1, v19, v20);
    *buf = 138543362;
    v23 = v21;
    _os_log_debug_impl(&dword_1883EA000, v18, OS_LOG_TYPE_DEBUG, "Attempting to map file at %{public}@", buf, 0xCu);
  }

  v6 = mmapFileDescriptor(v4);
  close(v4);
LABEL_18:

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

uint64_t CKPIDIsStillAlive(int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  buffer[0] = 0;
  v1 = proc_pidinfo(a1, 11, 1uLL, buffer, 1024);
  if (buffer[0])
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 0;
  }

  result = v2;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void CKWarnForInvalidApplicationIdentifier(void *a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v5 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v28 = v3;
      v29 = 2114;
      v30 = @"application-identifier";
      v31 = 2114;
      v32 = @"com.apple.developer.associated-application-identifier";
      v33 = 2114;
      v34 = v4;
      _os_log_error_impl(&dword_1883EA000, v5, OS_LOG_TYPE_ERROR, "Invalid value of %{public}@ for entitlement %{public}@ or %{public}@ on process %{public}@. We expect TEAMID.BUNDLEID, and insist that TEAMID is exactly 10 characters long, consisting of [0-9][A-Z]. This is a permanent issue, and access to CloudKit will be denied until this is resolved", buf, 0x2Au);
    }

    v8 = objc_msgSend_sharedOptions(CKBehaviorOptions, v6, v7);
    isAppleInternalInstall = objc_msgSend_isAppleInternalInstall(v8, v9, v10);

    if (isAppleInternalInstall && (objc_msgSend_hasPrefix_(v3, v12, @"com.apple.") & 1) == 0)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v13 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        *buf = 138544386;
        v28 = v4;
        v29 = 2114;
        v30 = @"application-identifier";
        v31 = 2114;
        v32 = @"com.apple.developer.associated-application-identifier";
        v33 = 2114;
        v34 = v3;
        v35 = 2114;
        v36 = v3;
        _os_log_error_impl(&dword_1883EA000, v13, OS_LOG_TYPE_ERROR, "\n\n\nAn application using CloudKit %{public}@ has a %{public}@ or %{public}@ entitlement value of %{public}@.  CloudKit is expecting an entitlement value of TEAMID.BUNDLEID. %{public}@\n\n\n", buf, 0x34u);
      }

      v15 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, @"The applicationIdentifier of %@ isn't a suitable TEAMID.BUNDLEID value, and CloudKit access is denied.  Please fix the entitlements of the calling process %@. See syslog for more info.", v3, v4);
      v25[0] = *MEMORY[0x1E695EE58];
      v17 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v16, @"Invalid Entitlements for %@", v4);
      v18 = *MEMORY[0x1E695EE60];
      v26[0] = v17;
      v26[1] = v15;
      v19 = *MEMORY[0x1E695EE78];
      v25[1] = v18;
      v25[2] = v19;
      v26[2] = @"OK";
      v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v20, v26, v25, 3);

      v22 = CFUserNotificationCreate(0, 0.0, 3uLL, 0, v21);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1886CA3F8;
      block[3] = &unk_1E70BC418;
      block[4] = v22;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void sub_1886CA3F8(uint64_t a1, const char *a2)
{
  objc_msgSend_showUserNotification_withCompletionBlock_(CKUserNotificationUtilities, a2, *(a1 + 32), &unk_1EFA30B50);
  v3 = *(a1 + 32);

  CFRelease(v3);
}

void setCKUseSystemInstalledBinariesBackingBool(int a1)
{
  if (_sCKUseSystemInstalledBinariesPredicate != -1)
  {
    dispatch_once(&_sCKUseSystemInstalledBinariesPredicate, &unk_1EFA30BD0);
  }

  v2 = _sCKUseSystemInstalledBinaries;
  _sCKUseSystemInstalledBinaries = a1;
  if (v2 != a1)
  {

    ck_log_facilities_setup_logging_facilities();
  }
}

BOOL sub_1886CA4E4()
{
  result = _CKUseSystemInstalledBinaries();
  _sCKUseSystemInstalledBinaries = result;
  return result;
}

BOOL sub_1886CA504()
{
  result = _CKUseSystemInstalledBinaries();
  _sCKUseSystemInstalledBinaries = result;
  return result;
}

uint64_t CKTrap()
{
  v0 = getpid();

  return kill(v0, 5);
}

void setCKIsRunningInTestHost()
{
  v0 = byte_1EA919CC8;
  byte_1EA919CC8 = 1;
  if ((v0 & 1) == 0)
  {
    ck_log_facilities_setup_logging_facilities();
  }
}

BOOL CKCurrentQueueIsMainQueue()
{
  if (qword_1EA919BF0 != -1)
  {
    dispatch_once(&qword_1EA919BF0, &unk_1EFA30C10);
  }

  return dispatch_get_specific(&unk_1EA911571) != 0;
}

uint64_t CKShouldUseNewPredicateValidation()
{
  if (qword_1ED4B66D0 != -1)
  {
    dispatch_once(&qword_1ED4B66D0, &unk_1EFA30C30);
  }

  return byte_1ED4B65D2;
}

uint64_t CKCurrentProcessLinkCheck0fd6bdf95f2efb6e65813fd4cd0f5d9af656d08a()
{
  if (qword_1ED4B66D0 != -1)
  {
    dispatch_once(&qword_1ED4B66D0, &unk_1EFA30C30);
  }

  return byte_1ED4B65D2;
}

uint64_t sub_1886CA69C()
{
  result = dyld_program_sdk_at_least();
  byte_1ED4B65D2 = result;
  return result;
}

uint64_t CKCurrentProcessLinkCheck5dbf91c3fd1d871f0bcfe60afeb451e3e708d350()
{
  if (qword_1ED4B66D8 != -1)
  {
    dispatch_once(&qword_1ED4B66D8, &unk_1EFA30C50);
  }

  return byte_1ED4B65D3;
}

uint64_t sub_1886CA70C()
{
  result = dyld_program_sdk_at_least();
  byte_1ED4B65D3 = result;
  return result;
}

uint64_t CKCurrentProcessLinkCheck908c3403f5370f9fc0f790c790ce4de0669132c0()
{
  if (qword_1ED4B66E8 != -1)
  {
    dispatch_once(&qword_1ED4B66E8, &unk_1EFA30C90);
  }

  return byte_1ED4B65D5;
}

uint64_t sub_1886CA77C()
{
  result = dyld_program_sdk_at_least();
  byte_1ED4B65D5 = result;
  return result;
}

uint64_t CKCurrentProcessLinkCheck32f5805a68adfc1b65f94a0de69aa32177c7cd24()
{
  if (qword_1ED4B66F0 != -1)
  {
    dispatch_once(&qword_1ED4B66F0, &unk_1EFA30CB0);
  }

  return byte_1ED4B65D6;
}

uint64_t sub_1886CA7EC()
{
  result = dyld_program_sdk_at_least();
  byte_1ED4B65D6 = result;
  return result;
}

uint64_t CKCurrentProcessLinkCheck168f06831e5b4d3ab6cc64d69a8cc447()
{
  if (qword_1ED4B6700 != -1)
  {
    dispatch_once(&qword_1ED4B6700, &unk_1EFA30CF0);
  }

  return byte_1ED4B65D8;
}

uint64_t sub_1886CA894()
{
  result = dyld_program_sdk_at_least();
  byte_1ED4B65D8 = result;
  return result;
}

uint64_t CKCurrentProcessLinkCheckc809671068f5f334951d6b3e996f193c()
{
  if (qword_1ED4B6708 != -1)
  {
    dispatch_once(&qword_1ED4B6708, &unk_1EFA30D10);
  }

  return byte_1ED4B65D9;
}

uint64_t sub_1886CA904()
{
  result = dyld_program_sdk_at_least();
  byte_1ED4B65D9 = result;
  return result;
}

uint64_t CKIsDebuggerAttached()
{
  v8 = *MEMORY[0x1E69E9840];
  bzero(v6, 0x288uLL);
  *v3 = 0xE00000001;
  v4 = 1;
  v5 = getpid();
  v2 = 648;
  if (sysctl(v3, 4u, v6, &v2, 0, 0))
  {
    __assert_rtn("CKIsDebuggerAttached", "CKUtils.m", 1443, "junk == 0");
  }

  v0 = *MEMORY[0x1E69E9840];
  return (v7 >> 11) & 1;
}

id CKRandomDataWithLength(size_t a1)
{
  v2 = malloc_type_malloc(a1, 0x54452C2AuLL);
  if (!v2)
  {
    goto LABEL_4;
  }

  v5 = v2;
  if (SecRandomCopyBytes(*MEMORY[0x1E697B308], a1, v2))
  {
    free(v5);
LABEL_4:
    v7 = objc_msgSend_data(MEMORY[0x1E695DEF0], v3, v4);
    goto LABEL_6;
  }

  v7 = objc_msgSend_dataWithBytesNoCopy_length_(MEMORY[0x1E695DEF0], v6, v5, a1);
LABEL_6:

  return v7;
}

id CKHKDFSHA256(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v7 = objc_msgSend_dataUsingEncoding_(a2, v6, 4);
  v8 = objc_alloc(MEMORY[0x1E695DF88]);
  v10 = objc_msgSend_initWithLength_(v8, v9, a3);
  ccsha256_di();
  objc_msgSend_length(v5, v11, v12);
  v13 = v5;
  objc_msgSend_bytes(v13, v14, v15);

  objc_msgSend_length(v7, v16, v17);
  objc_msgSend_bytes(v7, v18, v19);
  v26 = objc_msgSend_mutableBytes(v10, v20, v21);
  if (ccnistkdf_ctr_hmac())
  {

    v10 = 0;
  }

  v24 = objc_msgSend_copy(v10, v22, v23, v26);

  return v24;
}

uint64_t CKQoSClassFromNSQualityOfService(uint64_t result)
{
  if (result <= 16)
  {
    if (result == 9)
    {
      return result;
    }

    return 0;
  }

  if (result != 33 && result != 25 && result != 17)
  {
    return 0;
  }

  return result;
}

uint64_t CKNSQualityOfServiceFromQoSClass(int a1)
{
  if (a1 <= 16)
  {
    if (a1 == 9)
    {
      return 9;
    }

    return -1;
  }

  if (a1 == 33)
  {
    return 33;
  }

  if (a1 != 25)
  {
    if (a1 == 17)
    {
      return 17;
    }

    return -1;
  }

  return 25;
}

uint64_t CKMainBundleIsAppExtension()
{
  if (qword_1ED4B6720 != -1)
  {
    dispatch_once(&qword_1ED4B6720, &unk_1EFA30D70);
  }

  return byte_1ED4B65DB;
}

void sub_1886CACD0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_bundleRecordForCurrentProcess(MEMORY[0x1E6963620], a2, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    byte_1ED4B65DB = 1;
  }
}

void CKCFArrayForEach(const __CFArray *a1, void *a2)
{
  context = a2;
  v5.length = CFArrayGetCount(a1);
  v5.location = 0;
  CFArrayApplyFunction(a1, v5, sub_1886CADE0, context);
}

double sub_1886CAE00(int a1)
{
  if (qword_1ED4B6760 != -1)
  {
    dispatch_once(&qword_1ED4B6760, &unk_1EFA30DD0);
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v2 = mach_continuous_time();
    return *&qword_1ED4B6768 * v2;
  }

  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = mach_continuous_approximate_time();
  return *&qword_1ED4B6768 * v2;
}

char *CKTabIndentAtDepth(unint64_t a1)
{
  v1 = 11 - a1;
  if (a1 > 0xB)
  {
    v1 = 0;
  }

  return &asc_18871EDC9[v1];
}

uint64_t NSTimeIntervalToClosestXPCActivityInterval(double a1)
{
  v1 = 0;
  v8[9] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9CE8];
  v8[0] = *MEMORY[0x1E69E9CD0];
  v8[1] = v2;
  v3 = *MEMORY[0x1E69E9CD8];
  v8[2] = *MEMORY[0x1E69E9CB8];
  v8[3] = v3;
  v4 = *MEMORY[0x1E69E9CE0];
  v8[4] = *MEMORY[0x1E69E9CC8];
  v8[5] = v4;
  v5 = *MEMORY[0x1E69E9CC0];
  v8[6] = *MEMORY[0x1E69E9CF8];
  v8[7] = v5;
  result = *MEMORY[0x1E69E9CF0];
  v8[8] = *MEMORY[0x1E69E9CF0];
  while (*&a0123456789abcd_1[v1 * 8 + 16] < a1)
  {
    if (++v1 == 9)
    {
      goto LABEL_6;
    }
  }

  result = v8[v1];
LABEL_6:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

id CKGetCurrentActivities()
{
  entries[3] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_new();
  memset(entries, 0, 24);
  count = 3;
  os_activity_get_active(entries, &count);
  if (count)
  {
    for (i = 0; i < count; ++i)
    {
      v3 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v1, entries[i]);
      objc_msgSend_addObject_(v0, v4, v3);
    }
  }

  v5 = *MEMORY[0x1E69E9840];

  return v0;
}

id CKLocalizedString(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = MEMORY[0x1E696AAE8];
  v11 = a2;
  v12 = a1;
  v13 = objc_opt_class();
  v15 = objc_msgSend_bundleForClass_(v10, v14, v13);
  v16 = CKLocalizedStringFromTableInBundleVA(v12, @"CloudKit", v15, v11, &a9);

  return v16;
}

id CKLocalizedStringFromTableInBundleVA(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v14 = a4;
  if (!v9)
  {
    v27 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v12, v13);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v28, "NSString * _Nonnull CKLocalizedStringFromTableInBundleVA(NSString *__strong _Nonnull, NSString *__strong _Nonnull, NSBundle *__strong _Nonnull, NSString *__strong _Nonnull, va_list)");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v27, v30, v29, @"CKUtils.m", 1698, @"key must not be nil");
  }

  if (!objc_msgSend_length(v9, v12, v13))
  {
    v31 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v15, v16);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v32, "NSString * _Nonnull CKLocalizedStringFromTableInBundleVA(NSString *__strong _Nonnull, NSString *__strong _Nonnull, NSBundle *__strong _Nonnull, NSString *__strong _Nonnull, va_list)");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v31, v34, v33, @"CKUtils.m", 1699, @"key must not be empty");
  }

  v17 = CKLocalizedFormatString(v9, v10, v11);
  if (objc_msgSend_length(v14, v18, v19))
  {
    v20 = objc_alloc(MEMORY[0x1E696AEC0]);
    v39 = 0;
    valid = objc_msgSend_initWithValidatedFormat_validFormatSpecifiers_locale_arguments_error_(v20, v21, v17, v14, 0, a5, &v39);
    v25 = v39;
    if (!valid)
    {
      v35 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v23, v24);
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v36, "NSString * _Nonnull CKLocalizedStringFromTableInBundleVA(NSString *__strong _Nonnull, NSString *__strong _Nonnull, NSBundle *__strong _Nonnull, NSString *__strong _Nonnull, va_list)");
      objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v35, v38, v37, @"CKUtils.m", 1709, @"Couldn't validate format string %@ with specifiers %@: %@", v17, v14, v25);
    }
  }

  else
  {
    valid = v17;
  }

  return valid;
}

id CKLocalizedStringFromTableInBundle(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = CKLocalizedStringFromTableInBundleVA(a1, a2, a3, a4, &a9);

  return v9;
}

id CKLocalizedFormatString(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v9 = objc_msgSend_localizedStringForKey_value_table_(v7, v8, v5, &stru_1EFA32970, v6);
  if (_os_feature_enabled_impl())
  {
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v10, @"%@_FFAPPLEACCOUNT", v5);
    v13 = objc_msgSend_localizedStringForKey_value_table_(v7, v12, v11, v9, v6);

    v9 = v13;
  }

  return v9;
}

id sub_1886CB488(void *a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    DispatchData = objc_msgSend__createDispatchData(a1, v4, v5);
    v10 = objc_msgSend__createDispatchData(v6, v8, v9);
    v13 = v10;
    if (DispatchData && v10)
    {
      concat = dispatch_data_create_concat(DispatchData, v10);
    }

    else
    {
      v15 = objc_msgSend_mutableCopy(a1, v11, v12);
      objc_msgSend_appendData_(v15, v16, v6);
      concat = objc_msgSend_copy(v15, v17, v18);
    }
  }

  else
  {
    concat = a1;
  }

  return concat;
}

id sub_1886CB554(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, a3);
  v7 = objc_msgSend_invertedSet(v4, v5, v6);
  v9 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(a1, v8, v7);

  return v9;
}

id sub_1886CB5CC(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_stringByDeletingPathExtension(a1, a2, a3);
  v6 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v4, v5);
  v8 = objc_msgSend_componentsSeparatedByCharactersInSet_(v3, v7, v6);

  v10 = objc_msgSend_componentsJoinedByString_(v8, v9, @"_");
  v13 = objc_msgSend_mutableCopy(v10, v11, v12);

  v16 = objc_msgSend_URLFragmentAllowedCharacterSet(MEMORY[0x1E696AB08], v14, v15);
  v19 = objc_msgSend_invertedSet(v16, v17, v18);

  if (objc_msgSend_rangeOfCharacterFromSet_(v13, v20, v19) == 0x7FFFFFFFFFFFFFFFLL && v21 == 0)
  {
    if (objc_msgSend_length(v13, v21, v22))
    {
      v28 = objc_msgSend_length(v13, v25, v26);
      while (1)
      {
        v29 = v28 - 1;
        if (objc_msgSend_characterAtIndex_(v13, v27, v28 - 1) != 46)
        {
          break;
        }

        --v28;
        if (!v29)
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v31 = ck_log_facility_ck;
          if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
          {
            *v38 = 0;
            _os_log_debug_impl(&dword_1883EA000, v31, OS_LOG_TYPE_DEBUG, "The document name consisted entirely of periods. Using no fragment.", v38, 2u);
          }

          goto LABEL_17;
        }
      }

      if (v29 < objc_msgSend_length(v13, v27, v30) - 1)
      {
        v35 = objc_msgSend_length(v13, v33, v34);
        objc_msgSend_deleteCharactersInRange_(v13, v36, v28, v35 - v28);
      }
    }

    v32 = v13;
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v24 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1883EA000, v24, OS_LOG_TYPE_INFO, "Warn: Share title contains characters that require URL encoding. Dropping fragment from URL.", buf, 2u);
    }

LABEL_17:
    v32 = 0;
  }

  return v32;
}

id sub_1886CB820(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_mutableCopy(a1, a2, a3);
  v6 = objc_msgSend_length(v3, v4, v5);
  objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v3, v7, @"_", @" ", 0, 0, v6);
  v10 = objc_msgSend_stringByRemovingPercentEncoding(v3, v8, v9);

  return v10;
}

id sub_1886CB894(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v4 = objc_msgSend_UTF8String(v1, v2, v3);
  v6 = objc_msgSend_lengthOfBytesUsingEncoding_(v1, v5, 4);
  CC_SHA256(v4, v6, md);
  v8 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v7, md, 32);

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id sub_1886CB944(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend__CKSHA256HashData(a1, a2, a3);
  v6 = objc_msgSend_CKLowercaseHexStringWithoutSpaces(v3, v4, v5);

  return v6;
}

id sub_1886CB990(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend__CKSHA256HashData(a1, a2, a3);
  v5 = objc_msgSend_base64EncodedStringWithOptions_(v3, v4, 0);

  return v5;
}

id sub_1886CB9E0(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], a2, a3);
  v6 = objc_msgSend_stringByTrimmingCharactersInSet_(a1, v5, v4);

  v9 = objc_msgSend_CKNilIfLengthZero(v6, v7, v8);

  return v9;
}

id sub_1886CBA54(void *a1, const char *a2)
{
  v2 = objc_msgSend_dataUsingEncoding_(a1, a2, 4);
  v5 = objc_msgSend_CKBase64URLSafeString(v2, v3, v4);

  return v5;
}

id sub_1886CBAA4(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_CKDataFromBase64URLSafeString_(MEMORY[0x1E695DEF0], a2, a1);
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = objc_msgSend_initWithData_encoding_(v3, v4, v2, 4);

  return v5;
}

id sub_1886CBB0C(void *a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_mutableCopy(a1, v5, v6);
  v8 = objc_alloc(MEMORY[0x1E696AE70]);
  v21 = 0;
  v10 = objc_msgSend_initWithPattern_options_error_(v8, v9, @"[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}", 0, &v21);
  v11 = v21;
  v14 = v11;
  if (v10)
  {
    v15 = v11 == 0;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    v17 = objc_msgSend_length(v7, v12, v13);
    objc_msgSend_replaceMatchesInString_options_range_withTemplate_(v10, v18, v7, 0, 0, v17, v4);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v16 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v14;
      _os_log_error_impl(&dword_1883EA000, v16, OS_LOG_TYPE_ERROR, "Error creating regex for removing UUIDs: %@", buf, 0xCu);
    }
  }

  v19 = *MEMORY[0x1E69E9840];

  return v7;
}

id sub_1886CBC8C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = objc_opt_new();
  v9 = objc_msgSend_stringByPaddingToLength_withString_startingAtIndex_(&stru_1EFA32970, v8, a3, @" ", 0);
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1886CBDE0;
  v16[3] = &unk_1E70C2060;
  v19 = v21;
  v10 = v7;
  v17 = v10;
  v20 = a4;
  v11 = v9;
  v18 = v11;
  objc_msgSend_enumerateLinesUsingBlock_(a1, v12, v16);
  v13 = v18;
  v14 = v10;

  _Block_object_dispose(v21, 8);

  return v14;
}

void sub_1886CBDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1886CBDE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 48) + 8) + 24) && (objc_msgSend_appendFormat_(*(a1 + 32), v3, @"\n"), v3 = v4, *(*(*(a1 + 48) + 8) + 24)) || *(a1 + 56) != 1)
  {
    objc_msgSend_appendFormat_(*(a1 + 32), v3, @"%@%@", *(a1 + 40), v3);
  }

  else
  {
    objc_msgSend_appendString_(*(a1 + 32), v3, v3);
  }

  ++*(*(*(a1 + 48) + 8) + 24);
}

id sub_1886CBEA0(void *a1)
{
  v14 = 0;
  v2 = a1;
  v5 = objc_msgSend_bytes(v2, v3, v4);
  v8 = objc_msgSend_length(a1, v6, v7);
  v9 = CKHexCharFromBytes(v5, v8, &v14, 0);
  v10 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = objc_msgSend_initWithBytesNoCopy_length_encoding_freeWhenDone_(v10, v11, v9, v14, 1, 1);

  return v12;
}

id sub_1886CBF28(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v5 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF88]);
  if (a4)
  {
    v8 = @"0123456789ABCDEF";
  }

  else
  {
    v8 = @"0123456789abcdef";
  }

  if (a4)
  {
    v9 = -65;
  }

  else
  {
    v9 = -97;
  }

  v10 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v6, v8);
  if (objc_msgSend_length(v5, v11, v12))
  {
    v15 = 0;
    do
    {
      v16 = v15;
      if (objc_msgSend_length(v5, v13, v14) <= v15)
      {
        IsMember = 0;
        LODWORD(v20) = 0;
      }

      else
      {
        v19 = v15 + 1;
        do
        {
          v15 = v19;
          v20 = objc_msgSend_characterAtIndex_(v5, v17, v16);
          IsMember = objc_msgSend_characterIsMember_(v10, v21, v20);
          v16 = v15;
          if (IsMember)
          {
            break;
          }

          v23 = objc_msgSend_length(v5, v17, v18);
          v19 = v15 + 1;
        }

        while (v23 > v15);
      }

      if (objc_msgSend_length(v5, v17, v18) <= v16)
      {
        break;
      }

      ++v15;
      while (1)
      {
        v25 = objc_msgSend_characterAtIndex_(v5, v24, v16);
        if (objc_msgSend_characterIsMember_(v10, v26, v25))
        {
          break;
        }

        v16 = v15;
        if (objc_msgSend_length(v5, v27, v28) <= v15++)
        {
          goto LABEL_27;
        }
      }

      if (!IsMember)
      {
        break;
      }

      v30 = v25 - 48;
      if ((v25 - 48) >= 0xA)
      {
        v30 = v25 + v9 + 10;
      }

      v31 = (v20 - 48) >= 0xA ? 16 * v20 - 112 : 16 * v20;
      v35 = v30 + v31;
      objc_msgSend_appendBytes_length_(v7, v27, &v35, 1);
    }

    while (objc_msgSend_length(v5, v32, v33) > v15);
  }

LABEL_27:

  return v7;
}

id sub_1886CC0F4(uint64_t a1, const char *a2, void *a3)
{
  if (a3)
  {
    v3 = objc_msgSend_mutableCopy(a3, a2, a3);
    v6 = objc_msgSend_length(v3, v4, v5);
    objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v3, v7, @"-", @"+", 0, 0, v6);
    v10 = objc_msgSend_length(v3, v8, v9);
    objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v3, v11, @"_", @"/", 0, 0, v10);
    v15 = objc_msgSend_length(v3, v12, v13) & 3;
    if (v15)
    {
      v16 = v15 | 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        objc_msgSend_appendString_(v3, v14, @"=");
      }

      while (!__CFADD__(v16++, 1));
    }

    v18 = objc_alloc(MEMORY[0x1E695DEF0]);
    v20 = objc_msgSend_initWithBase64EncodedString_options_(v18, v19, v3, 0);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

uint64_t sub_1886CC1E8(id a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (a1 == v6 || !objc_msgSend_length(a1, v4, v5) && !objc_msgSend_length(v6, v7, v8))
  {
    goto LABEL_18;
  }

  if (!objc_msgSend_length(a1, v7, v8))
  {
LABEL_19:
    v21 = -1;
    goto LABEL_24;
  }

  if (!objc_msgSend_length(v6, v9, v10))
  {
    v21 = 1;
    goto LABEL_24;
  }

  v13 = objc_msgSend_length(a1, v11, v12);
  v16 = objc_msgSend_length(v6, v14, v15);
  if (v13 >= v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = v13;
  }

  if (v19)
  {
    v20 = 0;
    v21 = 1;
    do
    {
      v39 = 0;
      objc_msgSend_getBytes_range_(a1, v17, &v39 + 1, v20, 1);
      objc_msgSend_getBytes_range_(v6, v22, &v39, v20, 1);
      if (HIBYTE(v39) < v39)
      {
        goto LABEL_19;
      }

      if (v39 < HIBYTE(v39))
      {
        goto LABEL_24;
      }

      ++v20;
      v25 = objc_msgSend_length(a1, v23, v24);
      v28 = objc_msgSend_length(v6, v26, v27);
      if (v25 >= v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = v25;
      }
    }

    while (v20 < v29);
  }

  v30 = objc_msgSend_length(a1, v17, v18);
  if (v30 != objc_msgSend_length(v6, v31, v32))
  {
    v35 = objc_msgSend_length(a1, v33, v34);
    if (v35 < objc_msgSend_length(v6, v36, v37))
    {
      v21 = -1;
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
LABEL_18:
    v21 = 0;
  }

LABEL_24:

  return v21;
}

__CFString *sub_1886CC350(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_pathComponents(a1, a2, a3);
  if (objc_msgSend_count(v4, v5, v6) < 2)
  {
    v11 = &stru_1EFA32970;
  }

  else
  {
    v9 = objc_msgSend_pathComponents(a1, v7, v8);
    v11 = objc_msgSend_objectAtIndexedSubscript_(v9, v10, 1);
  }

  return v11;
}

id sub_1886CC3D8(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_scheme(a1, a2, a3);
  if (v4)
  {
    v7 = v4;
    v8 = objc_msgSend_host(a1, v5, v6);
    if (v8)
    {
      v11 = v8;
      v12 = objc_msgSend_pathComponents(a1, v9, v10);
      v15 = objc_msgSend_count(v12, v13, v14);

      if (v15 >= 2)
      {
        v16 = MEMORY[0x1E696AEC0];
        v17 = objc_msgSend_scheme(a1, v5, v6);
        v20 = objc_msgSend_host(a1, v18, v19);
        v23 = objc_msgSend_CKURLSlug(a1, v21, v22);
        v25 = objc_msgSend_stringWithFormat_(v16, v24, @"%@://%@/%@/", v17, v20, v23);

        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v25 = objc_msgSend_absoluteString(a1, v5, v6);
LABEL_7:

  return v25;
}

__CFString *sub_1886CC4F0(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_pathComponents(a1, a2, a3);
  if (objc_msgSend_count(v4, v5, v6) < 3)
  {
    v19 = &stru_1EFA32970;
  }

  else
  {
    v9 = objc_msgSend_pathComponents(a1, v7, v8);
    v12 = objc_msgSend_pathComponents(a1, v10, v11);
    v15 = objc_msgSend_count(v12, v13, v14);
    v17 = objc_msgSend_subarrayWithRange_(v9, v16, 2, v15 - 2);
    v19 = objc_msgSend_componentsJoinedByString_(v17, v18, @"/");
  }

  return v19;
}

id sub_1886CC5B8(void *a1, const char *a2, uint64_t a3)
{
  if ((objc_msgSend_isFileURL(a1, a2, a3) & 1) == 0)
  {
    v10 = a1;
    goto LABEL_19;
  }

  v7 = objc_msgSend_path(a1, v5, v6);
  if (!objc_msgSend_hasPrefix_(v7, v8, @"/.nofollow"))
  {
    if ((objc_msgSend_hasPrefix_(v7, v9, @"/") & 1) == 0)
    {
      v29 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v11, v12);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v29, v30, a2, a1, @"CKUtils.m", 2166, @"Can't nofollow a relative path: %@", v7);
    }

    v13 = NSHomeDirectory();
    v14 = CKGetHomeDirRealPath();
    if (objc_msgSend_hasSuffix_(v13, v15, @"/") && (objc_msgSend_hasSuffix_(v14, v16, @"/") & 1) == 0)
    {
      v20 = objc_msgSend_stringByAppendingString_(v14, v16, @"/");
      v19 = v14;
      v14 = v20;
    }

    else
    {
      if ((objc_msgSend_hasSuffix_(v13, v16, @"/") & 1) != 0 || !objc_msgSend_hasSuffix_(v14, v17, @"/"))
      {
        goto LABEL_14;
      }

      v18 = objc_msgSend_stringByAppendingString_(v13, v17, @"/");
      v19 = v13;
      v13 = v18;
    }

LABEL_14:
    if ((objc_msgSend_isEqualToString_(v14, v17, v13) & 1) == 0 && objc_msgSend_hasPrefix_(v7, v21, v13))
    {
      v23 = objc_msgSend_length(v13, v21, v22);
      v25 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v7, v24, 0, v23, v14);

      v7 = v25;
    }

    v26 = objc_msgSend_stringByAppendingString_(@"/.nofollow", v21, v7);

    v10 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v27, v26);

    v7 = v26;
    goto LABEL_18;
  }

  v10 = a1;
LABEL_18:

LABEL_19:

  return v10;
}

BOOL sub_1886CC7D4(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v8 = objc_msgSend_fileSystemRepresentation(v5, v6, v7);
  v9 = open(v8, 0);
  if (v9 < 0)
  {
    v16 = *__error();
    v17 = __error();
    v18 = strerror(*v17);
    v15 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v19, @"CKInternalErrorDomain", 1000, @"open() failed while marking %@ as purgeable %d (%s)", a1, v16, v18);
    if (!a3)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v10 = v9;
  v22 = 65541;
  v11 = ffsctl(v9, 0xC0084A44uLL, &v22, 0);
  if (v11)
  {
    v12 = v11;
    v13 = strerror(v11);
    v15 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v14, @"CKInternalErrorDomain", 1000, @"Failed to mark %@ as purgeable %d (%s)", a1, v12, v13);
  }

  else
  {
    v15 = 0;
  }

  close(v10);
  if (a3)
  {
LABEL_8:
    if (v15)
    {
      v20 = v15;
      *a3 = v15;
    }
  }

LABEL_10:

  return v15 == 0;
}

uint64_t sub_1886CC9C4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  objc_sync_enter(v5);
  v8 = objc_msgSend_containsObject_(v5, v6, v4);
  if ((v8 & 1) == 0)
  {
    objc_msgSend_addObject_(v5, v7, v4);
  }

  objc_sync_exit(v5);

  return v8 ^ 1u;
}

void sub_1886CCA48(void *a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = a1;
  objc_sync_enter(v4);
  objc_msgSend_removeObject_(v4, v5, v6);
  objc_sync_exit(v4);
}

uint64_t sub_1886CCAC4(void *a1)
{
  v1 = a1;
  objc_sync_enter(v1);
  v4 = objc_msgSend_count(v1, v2, v3);
  objc_sync_exit(v1);

  return v4;
}

BOOL sub_1886CCB1C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  objc_sync_enter(v8);
  v10 = objc_msgSend_objectForKey_(v8, v9, v7);

  if (!v10)
  {
    objc_msgSend_setObject_forKey_(v8, v11, v6, v7);
  }

  objc_sync_exit(v8);

  return v10 == 0;
}

void sub_1886CCBC4(void *a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = a1;
  objc_sync_enter(v4);
  objc_msgSend_removeObjectForKey_(v4, v5, v6);
  objc_sync_exit(v4);
}

uint64_t sub_1886CCC40(void *a1)
{
  v1 = a1;
  objc_sync_enter(v1);
  v4 = objc_msgSend_count(v1, v2, v3);
  objc_sync_exit(v1);

  return v4;
}

id sub_1886CCC98(void *a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = a3;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v21, v29, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v22;
    *&v8 = 138543618;
    v20 = v8;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        v13 = objc_msgSend_objectForKey_(a1, v7, v12, v20, v21);
        if (v13)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v14, v13);
            if (v15)
            {
              v17 = v15;

              goto LABEL_17;
            }
          }

          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v16 = ck_log_facility_ck;
          if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
          {
            *buf = v20;
            v26 = v12;
            v27 = 2114;
            v28 = v13;
            _os_log_debug_impl(&dword_1883EA000, v16, OS_LOG_TYPE_DEBUG, "Couldn't create url for key %{public}@ with value %{public}@", buf, 0x16u);
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v21, v29, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_17:

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

id sub_1886CCEA4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = objc_msgSend_objectForKeyedSubscript_(a1, v5, v4);
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v10 = objc_msgSend_lowercaseString(v4, v7, v8);
    v9 = objc_msgSend_objectForKeyedSubscript_(a1, v11, v10);

    if (!v9)
    {
      v14 = objc_msgSend_capitalizedString(v4, v12, v13);
      v9 = objc_msgSend_objectForKeyedSubscript_(a1, v15, v14);

      if (!v9)
      {
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = sub_1886CD014;
        v25[3] = &unk_1E70C2088;
        v26 = v4;
        v17 = objc_msgSend_keysOfEntriesPassingTest_(a1, v16, v25);
        if (objc_msgSend_count(v17, v18, v19))
        {
          v22 = objc_msgSend_anyObject(v17, v20, v21);
          v9 = objc_msgSend_objectForKeyedSubscript_(a1, v23, v22);
        }

        else
        {
          v9 = 0;
        }
      }
    }
  }

  return v9;
}

uint64_t sub_1886CD014(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !objc_msgSend_caseInsensitiveCompare_(v6, v7, *(a1 + 32)))
  {
    v8 = 1;
    *a4 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_1886CD08C(int a1, int a2, int __errnum)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14 = *MEMORY[0x1E695E620];
  v4 = MEMORY[0x1E696AEC0];
  v5 = strerror(__errnum);
  v7 = objc_msgSend_stringWithUTF8String_(v4, v6, v5);
  v15[0] = v7;
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v8, v15, &v14, 1);

  v11 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v10, *MEMORY[0x1E696A798], __errnum, v9);

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

uint64_t sub_1886CD184()
{
  v0 = MEMORY[0x1E696ABC0];
  v2 = *__error();

  return objc_msgSend_CKErrorWithPOSIXCode_(v0, v1, v2);
}

BOOL sub_1886CD1C4(void *a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_domain(a1, a2, a3);
  if (objc_msgSend_isEqualToString_(v5, v6, *MEMORY[0x1E696A798]))
  {
    v9 = objc_msgSend_code(a1, v7, v8) == a3;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_1886CD230(void *a1, const char *a2, uint64_t a3, int a4)
{
  v57 = *MEMORY[0x1E69E9840];
  v51 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x1E695DF90], a2, 3);
  if (!a4)
  {
    goto LABEL_22;
  }

  v8 = objc_msgSend_domain(a1, v6, v7);
  objc_msgSend_CKAddPropertySafelyForKey_value_(v51, v9, @"domain", v8);

  v10 = objc_alloc(MEMORY[0x1E696AD98]);
  v13 = objc_msgSend_code(a1, v11, v12);
  v15 = objc_msgSend_initWithLong_(v10, v14, v13);
  objc_msgSend_CKAddPropertySafelyForKey_value_(v51, v16, @"code", v15);

  v19 = objc_msgSend_localizedDescription(a1, v17, v18);
  objc_msgSend_CKAddPropertySafelyForKey_value_(v51, v20, @"localizedDescription", v19);

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v23 = objc_msgSend_userInfo(a1, v21, v22);
  v26 = objc_msgSend_allKeys(v23, v24, v25);

  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v52, v56, 16);
  if (!v28)
  {
    goto LABEL_19;
  }

  v30 = v28;
  v31 = *v53;
  do
  {
    for (i = 0; i != v30; ++i)
    {
      if (*v53 != v31)
      {
        objc_enumerationMutation(v26);
      }

      v33 = *(*(&v52 + 1) + 8 * i);
      if ((objc_msgSend_isEqualToString_(v33, v29, @"NSLocalizedDescription") & 1) == 0)
      {
        v35 = objc_msgSend_userInfo(a1, v29, v34);
        v37 = objc_msgSend_valueForKey_(v35, v36, v33);

        if (v37)
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_12;
          }

          v39 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v37, v38, 1, 1, 1);
          if (!objc_msgSend_count(v39, v40, v41))
          {

LABEL_12:
            if (objc_msgSend_isValidJSONObject_(MEMORY[0x1E696ACB0], v38, v37))
            {
              objc_msgSend_CKAddPropertySafelyForKey_value_(v51, v43, v33, v37);
              goto LABEL_16;
            }

            v39 = objc_msgSend_description(v37, v43, v44);
          }

          objc_msgSend_CKAddPropertySafelyForKey_value_(v51, v42, v33, v39);
        }

LABEL_16:

        continue;
      }
    }

    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v52, v56, 16);
  }

  while (v30);
LABEL_19:

  v48 = objc_msgSend_CKStringForWellKnownCKErrors(a1, v45, v46);
  if (v48)
  {
    objc_msgSend_CKAddPropertySafelyForKey_value_(v51, v47, @"cloudKitErrorType", v48);
  }

LABEL_22:
  v49 = *MEMORY[0x1E69E9840];

  return v51;
}

uint64_t CKIsPCSError(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_domain(v1, v2, v3);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v5, @"CKInternalErrorDomain");

  if (isEqualToString)
  {
    v9 = objc_msgSend_code(v1, v7, v8);
    if ((v9 - 5000) <= 0x14)
    {
      v10 = 0x1F0A3Fu >> (v9 + 120);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

id CKTopLevelUnderlyingErrorCodes()
{
  if (qword_1ED4B6730 != -1)
  {
    dispatch_once(&qword_1ED4B6730, &unk_1EFA30D90);
  }

  v1 = qword_1ED4B6728;

  return v1;
}

uint64_t sub_1886CD5E4(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_setWithObjects_(MEMORY[0x1E695DFD8], a2, &unk_1EFA85A10, &unk_1EFA85A28, &unk_1EFA85A40, &unk_1EFA85A58, &unk_1EFA85A70, &unk_1EFA85A88, &unk_1EFA85AA0, &unk_1EFA85AB8, 0);
  v3 = qword_1ED4B6728;
  qword_1ED4B6728 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

uint64_t CKGetGenerationCounterForFd(int a1, _DWORD *a2, void *a3)
{
  v13 = 0;
  v12 = xmmword_1886FEB30;
  v11 = 0;
  if (fgetattrlist(a1, &v12, &v11, 8uLL, 0x20u))
  {
    if (a3)
    {
      v7 = objc_msgSend_CKErrorFromErrno(MEMORY[0x1E696ABC0], v5, v6);
LABEL_4:
      v8 = v7;
      v9 = v7;
      result = 0;
      *a3 = v8;
      return result;
    }
  }

  else
  {
    if (HIDWORD(v11))
    {
      *a2 = HIDWORD(v11);
      return 1;
    }

    if (a3)
    {
      v7 = objc_msgSend_CKErrorWithPOSIXCode_(MEMORY[0x1E696ABC0], v5, 16);
      goto LABEL_4;
    }
  }

  return 0;
}

id sub_1886CD754(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(a1, v6, 1, 1, a3);
  if (objc_msgSend_count(v7, v8, v9))
  {
    objc_msgSend_CKPropertiesStyleString(v7, v10, v11);
  }

  else
  {
    objc_msgSend_CKPropertiesDescription(a1, v10, v11);
  }
  v14 = ;
  if (v14)
  {
    v15 = MEMORY[0x1E696AEC0];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v19 = objc_msgSend_stringWithFormat_(v15, v18, @"<%@: %p %@>", v17, a1, v14);;
  }

  else
  {
    v19 = objc_msgSend_description(a1, v12, v13);
  }

  objc_autoreleasePoolPop(v5);

  return v19;
}

id sub_1886CD858(void *a1, const char *a2, uint64_t a3, int a4, int a5)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (a5)
    {
      v6 = MEMORY[0x1E695DF90];
      v7 = objc_msgSend_count(a1, a2, a3);
      v9 = objc_msgSend_dictionaryWithCapacity_(v6, v8, v7);
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      obj = objc_msgSend_allKeys(a1, v10, v11);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v35, v39, 16);
      if (v13)
      {
        v14 = v13;
        v15 = *v36;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v36 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v35 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = v17;
            }

            else
            {
              v20 = objc_msgSend_description(v17, v18, v19);
            }

            v22 = v20;
            v23 = objc_msgSend_objectForKeyedSubscript_(a1, v21, v17);
            v25 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v23, v24, 1, 1, 1);

            if (objc_msgSend_count(v25, v26, v27))
            {
              objc_msgSend_setObject_forKeyedSubscript_(v9, v28, v25, v22);
            }

            else
            {
              v29 = objc_msgSend_objectForKeyedSubscript_(a1, v28, v17);
              objc_msgSend_setObject_forKeyedSubscript_(v9, v30, v29, v22);
            }
          }

          v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v35, v39, 16);
        }

        while (v14);
      }
    }

    else
    {
      v9 = a1;
    }
  }

  else
  {
    v9 = MEMORY[0x1E695E0F8];
  }

  v32 = *MEMORY[0x1E69E9840];

  return v9;
}

id sub_1886CDA68(void *a1, const char *a2, uint64_t a3, int a4, int a5)
{
  v28[2] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (a5)
    {
      v6 = MEMORY[0x1E695DF70];
      v7 = objc_msgSend_count(a1, a2, a3);
      v9 = objc_msgSend_arrayWithCapacity_(v6, v8, v7);
      if (objc_msgSend_count(a1, v10, v11))
      {
        v13 = 0;
        do
        {
          v14 = objc_msgSend_objectAtIndexedSubscript_(a1, v12, v13);
          v17 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v14, v15, 1, 1, 1);
          if (v17)
          {
            objc_msgSend_setObject_atIndexedSubscript_(v9, v16, v17, v13);
          }

          else
          {
            v18 = objc_msgSend_objectAtIndexedSubscript_(a1, v16, v13);
            objc_msgSend_setObject_atIndexedSubscript_(v9, v19, v18, v13);
          }

          ++v13;
        }

        while (v13 < objc_msgSend_count(a1, v20, v21));
      }

      v27[0] = @"type";
      v27[1] = @"items";
      v28[0] = @"array";
      v28[1] = v9;
      v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, v28, v27, 2);
    }

    else
    {
      v25 = @"items";
      v26 = a1;
      v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, &v26, &v25, 1);
    }
  }

  else
  {
    v22 = MEMORY[0x1E695E0F8];
  }

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

id sub_1886CDC24(void *a1, const char *a2, uint64_t a3, int a4, int a5)
{
  v30[2] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v25 = @"count";
    v14 = MEMORY[0x1E696AD98];
    v15 = objc_msgSend_count(a1, a2, a3);
    v10 = objc_msgSend_numberWithUnsignedInteger_(v14, v16, v15);
    v26 = v10;
    v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v17, &v26, &v25, 1);
    goto LABEL_5;
  }

  if (a5)
  {
    v6 = MEMORY[0x1E695DF70];
    v7 = objc_msgSend_count(a1, a2, a3);
    v9 = objc_msgSend_arrayWithCapacity_(v6, v8, v7);
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = sub_1886CDDE4;
    v23 = &unk_1E70C20B0;
    v24 = v9;
    v10 = v9;
    objc_msgSend_enumerateObjectsUsingBlock_(a1, v11, &v20);
    v29[0] = @"type";
    v29[1] = @"items";
    v30[0] = @"orderedSet";
    v30[1] = v10;
    v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, v30, v29, 2, v20, v21, v22, v23);

LABEL_5:
    goto LABEL_7;
  }

  v27 = @"items";
  v28 = a1;
  v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, &v28, &v27, 1);
LABEL_7:
  v18 = *MEMORY[0x1E69E9840];

  return v13;
}

void sub_1886CDDE4(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v7 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v9, v5, 1, 1, 1);
  v8 = *(a1 + 32);
  if (v7)
  {
    objc_msgSend_setObject_atIndexedSubscript_(v8, v6, v7, a3);
  }

  else
  {
    objc_msgSend_setObject_atIndexedSubscript_(v8, v6, v9, a3);
  }
}

id sub_1886CDE6C(void *a1, const char *a2, uint64_t a3, int a4, int a5)
{
  v36[3] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (a5)
    {
      v36[0] = @"data";
      v35[0] = @"type";
      v35[1] = @"length";
      v6 = MEMORY[0x1E696AD98];
      v7 = objc_msgSend_length(a1, a2, a3);
      v9 = objc_msgSend_numberWithUnsignedInteger_(v6, v8, v7);
      v36[1] = v9;
      v35[2] = @"data";
      v11 = objc_msgSend_base64EncodedStringWithOptions_(a1, v10, 32);
      v36[2] = v11;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, v36, v35, 3);
    }

    else
    {
      if (objc_msgSend_length(a1, a2, a3) < 0x19)
      {
        v31[0] = @"length";
        v25 = MEMORY[0x1E696AD98];
        v26 = objc_msgSend_length(a1, v14, v15);
        v9 = objc_msgSend_numberWithUnsignedInteger_(v25, v27, v26);
        v31[1] = @"data";
        v32[0] = v9;
        v11 = objc_msgSend_base64EncodedStringWithOptions_(a1, v28, 32);
        v32[1] = v11;
        v22 = MEMORY[0x1E695DF20];
        v23 = v32;
        v24 = v31;
      }

      else
      {
        v33[0] = @"length";
        v16 = MEMORY[0x1E696AD98];
        v17 = objc_msgSend_length(a1, v14, v15);
        v9 = objc_msgSend_numberWithUnsignedInteger_(v16, v18, v17);
        v33[1] = @"sha256";
        v34[0] = v9;
        v11 = objc_msgSend_CKSHA256(a1, v19, v20);
        v34[1] = v11;
        v22 = MEMORY[0x1E695DF20];
        v23 = v34;
        v24 = v33;
      }

      objc_msgSend_dictionaryWithObjects_forKeys_count_(v22, v21, v23, v24, 2);
    }
    v13 = ;
  }

  else
  {
    v13 = MEMORY[0x1E695E0F8];
  }

  v29 = *MEMORY[0x1E69E9840];

  return v13;
}

id sub_1886CE2B0(void *a1, const char *a2, uint64_t a3, int a4, int a5)
{
  v45[4] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (a5)
    {
      v45[0] = @"location";
      v44[0] = @"type";
      v44[1] = @"latitude";
      v6 = MEMORY[0x1E696AD98];
      objc_msgSend_coordinate(a1, a2, a3);
      v9 = objc_msgSend_numberWithDouble_(v6, v7, v8);
      v45[1] = v9;
      v44[2] = @"longitude";
      v10 = MEMORY[0x1E696AD98];
      objc_msgSend_coordinate(a1, v11, v12);
      v16 = objc_msgSend_numberWithDouble_(v10, v13, v14, v15);
      v45[2] = v16;
      v44[3] = @"altitude";
      v17 = MEMORY[0x1E696AD98];
      objc_msgSend_altitude(a1, v18, v19);
      v22 = objc_msgSend_numberWithDouble_(v17, v20, v21);
      v45[3] = v22;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v23, v45, v44, 4);
    }

    else
    {
      v42[0] = @"latitude";
      v25 = MEMORY[0x1E696AD98];
      objc_msgSend_coordinate(a1, a2, a3);
      v9 = objc_msgSend_numberWithDouble_(v25, v26, v27);
      v43[0] = v9;
      v42[1] = @"longitude";
      v28 = MEMORY[0x1E696AD98];
      objc_msgSend_coordinate(a1, v29, v30);
      v16 = objc_msgSend_numberWithDouble_(v28, v31, v32, v33);
      v43[1] = v16;
      v42[2] = @"altitude";
      v34 = MEMORY[0x1E696AD98];
      objc_msgSend_altitude(a1, v35, v36);
      v22 = objc_msgSend_numberWithDouble_(v34, v37, v38);
      v43[2] = v22;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v39, v43, v42, 3);
    }
    v24 = ;
  }

  else
  {
    v24 = MEMORY[0x1E695E0F8];
  }

  v40 = *MEMORY[0x1E69E9840];

  return v24;
}

id sub_1886CE4A4(void *a1, const char *a2, uint64_t a3, int a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695DF90];
  v7 = objc_msgSend_count(&unk_1EFA85DE8, a2, a3);
  v10 = objc_msgSend_dictionaryWithCapacity_(v6, v8, v7);
  if (a4)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1EFA85DE8, v9, &v23, v27, 16);
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(&unk_1EFA85DE8);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          v16 = NSSelectorFromString(v15);
          v18 = objc_msgSend_performSelector_(a1, v17, v16);
          objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v19, v15, v18);
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1EFA85DE8, v20, &v23, v27, 16);
      }

      while (v12);
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return v10;
}

void sub_1886CE600(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    v12 = a3;
    objc_msgSend_setObject_forKey_(a1, v6, a4);
  }

  else
  {
    v7 = MEMORY[0x1E695DFB0];
    v8 = a3;
    v12 = objc_msgSend_null(v7, v9, v10);
    objc_msgSend_setObject_forKey_(a1, v11, v12, v8);
  }
}

void sub_1886CE6A0(void *a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = a1;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v13, v17, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_CKAssignToContainerWithID_(*(*(&v13 + 1) + 8 * v11++), v8, v4, v13);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v13, v17, 16);
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1886CE79C(void *a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = a1;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v13, v17, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_CKAssignToContainerWithID_(*(*(&v13 + 1) + 8 * v11++), v8, v4, v13);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v13, v17, 16);
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1886CE898(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1886CE92C;
  v7[3] = &unk_1E70C1BF0;
  v8 = v4;
  v5 = v4;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(a1, v6, v7);
}

void sub_1886CE92C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v8 = a3;
  objc_msgSend_CKAssignToContainerWithID_(a2, v6, v5);
  objc_msgSend_CKAssignToContainerWithID_(v8, v7, *(a1 + 32));
}

void sub_1886CE998(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8 = objc_msgSend_userInfo(a1, v5, v6);
  objc_msgSend_CKAssignToContainerWithID_(v8, v7, v4);
}

void CKNSIndexSet_enumerateInverseRangesInRange_options_usingBlock(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = a5;
  if (a4)
  {
    __assert_rtn("CKNSIndexSet_enumerateInverseRangesInRange_options_usingBlock", "CKUtils.m", 2724, "opts == 0 && NSEnumerationOptions not yet supported");
  }

  v11 = v10;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3010000000;
  v33 = "";
  v34 = a2;
  v35 = a3;
  v16 = v10 + 2;
  do
  {
    v12 = v31;
    if (!v31[5])
    {
      break;
    }

    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1886CEC24;
    v17[3] = &unk_1E70C20D8;
    v19 = &v26;
    v20 = &v30;
    v13 = v11;
    v18 = v13;
    v21 = &v22;
    objc_msgSend_enumerateRangesInRange_options_usingBlock_(v9, v14, v12[4], v12[5], 0, v17);
    if (*(v27 + 24) != 1)
    {
      (*v16)(v13, v31[4], v31[5], (v23 + 3));
      *(v23 + 24) = 1;

      _Block_object_dispose(&v22, 8);
      _Block_object_dispose(&v26, 8);
      break;
    }

    v15 = *(v23 + 24);

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v26, 8);
  }

  while ((v15 & 1) == 0);
  _Block_object_dispose(&v30, 8);
}

void sub_1886CEBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void *sub_1886CEC24(void *result, unint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(result[5] + 8) + 24) = 1;
  v6 = *(result[6] + 8);
  v7 = *(v6 + 32);
  if (a2 <= v7)
  {
    v13 = v7 - (a2 + a3) + *(v6 + 40);
    *(v6 + 32) = a2 + a3;
    *(v6 + 40) = v13;
  }

  else
  {
    v9 = result;
    v10 = *(result[7] + 8);
    result = (*(result[4] + 16))();
    v11 = *(v9[6] + 8);
    v12 = *(v11 + 32) - (a2 + a3) + *(v11 + 40);
    *(v11 + 32) = a2 + a3;
    *(v11 + 40) = v12;
    *a4 = 1;
  }

  return result;
}

id CKNSIndexSet_indexSetWithInverseIndexSet(void *a1)
{
  v1 = MEMORY[0x1E696AD50];
  v2 = a1;
  v5 = objc_msgSend_indexSet(v1, v3, v4);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1886CEDA0;
  v8[3] = &unk_1E70BDD48;
  v6 = v5;
  v9 = v6;
  CKNSIndexSet_enumerateInverseRangesInRange_options_usingBlock(v2, 0, 0x7FFFFFFFFFFFFFFELL, 0, v8);

  return v6;
}

id sub_1886CEDB0(id a1)
{
  v1 = a1;
  if (a1)
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = objc_autoreleasePoolPush();
      v7 = objc_msgSend_CKStatusReportArray(v1, v5, v6);
      v1 = objc_msgSend_CKComponentsAndSubcomponentsJoinedByString_(v7, v8, @"\n");

      objc_autoreleasePoolPop(v4);
    }

    else
    {
      v1 = objc_msgSend_description(v1, v2, v3);
    }
  }

  return v1;
}

void sub_1886CEE50(uint64_t a1, objc_class *a2, void *a3, void *a4, int a5)
{
  v48 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_self();
  if (qword_1ED4B66F8 != -1)
  {
    dispatch_once(&qword_1ED4B66F8, &unk_1EFA30CD0);
  }

  if (byte_1ED4B65D7 == 1 && v10 != a2)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v12 = v8;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v38, v47, 16);
    if (v14)
    {
      v16 = v14;
      v17 = *v39;
LABEL_9:
      v18 = 0;
      while (1)
      {
        if (*v39 != v17)
        {
          objc_enumerationMutation(v12);
        }

        if (v10 == *(*(&v38 + 1) + 8 * v18))
        {
          goto LABEL_26;
        }

        if (v16 == ++v18)
        {
          v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v38, v47, 16);
          if (v16)
          {
            goto LABEL_9;
          }

          break;
        }
      }
    }

    v12 = NSStringFromClass(v10);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v19 = v9;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v34, v46, 16);
    if (v21)
    {
      v23 = v21;
      v24 = *v35;
LABEL_17:
      v25 = 0;
      while (1)
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(v19);
        }

        if (objc_msgSend_isEqualToString_(*(*(&v34 + 1) + 8 * v25), v22, v12))
        {
          break;
        }

        if (v23 == ++v25)
        {
          v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v34, v46, 16);
          if (v23)
          {
            goto LABEL_17;
          }

          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_23:

      if (!a5)
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v31 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
        {
          v32 = v31;
          v33 = NSStringFromClass(a2);
          *buf = 138543618;
          v43 = v33;
          v44 = 2114;
          v45 = v12;
          _os_log_error_impl(&dword_1883EA000, v32, OS_LOG_TYPE_ERROR, "BUG IN CLIENT OF CLOUDKIT: %{public}@ should not be subclassed (%{public}@). If it is, Sendable may no longer apply. This will become an error in a near future release.", buf, 0x16u);
        }

        goto LABEL_26;
      }

      v19 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v26, v27);
      v28 = NSStringFromClass(a2);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v19, v29, sel_CKVerifySubclassWithBaseClass_allowedSubclasses_allowedExternalSubclasses_assert_, v10, @"CKUtils.m", 2802, @"BUG IN CLIENT OF CLOUDKIT: %@ should not be subclassed (%@). If it is, Sendable may no longer apply.", v28, v12, v34);
    }

LABEL_26:
  }

  v30 = *MEMORY[0x1E69E9840];
}

id sub_1886CF174(void *a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  context = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = a1;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v21, v25, 16);
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_CKComponentsAndSubcomponentsJoinedByString_(v12, v13, v4);
        }

        else
        {
          objc_msgSend_description(v12, v13, v14);
        }
        v15 = ;
        objc_msgSend_appendFormat_(v5, v16, @"%@%@", v15, v4);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v17, &v21, v25, 16);
    }

    while (v9);
  }

  objc_autoreleasePoolPop(context);
  v18 = *MEMORY[0x1E69E9840];

  return v5;
}

id sub_1886CF304(void *a1, const char *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E695DF70];
  v5 = objc_msgSend_count(a1, a2, a3);
  v7 = objc_msgSend_arrayWithCapacity_(v4, v6, v5);
  v10 = objc_msgSend_mutableCopy(a1, v8, v9);
  for (i = objc_msgSend_count(v10, v11, v12); i; i = objc_msgSend_count(v10, v22, v23))
  {
    v16 = objc_msgSend_count(v10, v14, v15);
    v17 = arc4random_uniform(v16);
    v19 = objc_msgSend_objectAtIndexedSubscript_(v10, v18, v17);
    objc_msgSend_addObject_(v7, v20, v19);

    objc_msgSend_removeObjectAtIndex_(v10, v21, v17);
  }

  return v7;
}

id sub_1886CF3C0(void *a1, const char *a2, uint64_t a3)
{
  if (!objc_msgSend_length(a1, a2, a3))
  {
    v13 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v6, v7);
    if ((a3 - 1) >= 8)
    {
      v14 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12, @"(unknown: %i)", a3);
    }

    else
    {
      v14 = off_1E70C21F0[(a3 - 1)];
    }

    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v13, v12, a2, a1, @"CKUtils.m", 2845, @"You can't pass an empty string for an identifier of type %@", v14);
  }

  v8 = objc_opt_new();
  objc_msgSend_setName_(v8, v9, a1);
  if (a3 >= 1)
  {
    objc_msgSend_setType_(v8, v10, a3);
  }

  return v8;
}

uint64_t sub_1886CF4EC(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = __exp10(a3);
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_doubleValue(a1, v6, v7);
  v11 = round(v4 * v10) / v4;

  return objc_msgSend_numberWithDouble_(v5, v8, v9, v11);
}

id sub_1886CF550(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = objc_opt_new();
  objc_msgSend_coordinate(v3, v5, v6);
  objc_msgSend_setLatitude_(v4, v7, v8);
  objc_msgSend_coordinate(v3, v9, v10);
  objc_msgSend_setLongitude_(v4, v11, v12, v13);
  objc_msgSend_horizontalAccuracy(v3, v14, v15);
  objc_msgSend_setHorizontalAccuracy_(v4, v16, v17);
  objc_msgSend_verticalAccuracy(v3, v18, v19);
  objc_msgSend_setVerticalAccuracy_(v4, v20, v21);
  objc_msgSend_altitude(v3, v22, v23);
  objc_msgSend_setAltitude_(v4, v24, v25);
  objc_msgSend_course(v3, v26, v27);
  objc_msgSend_setCourse_(v4, v28, v29);
  objc_msgSend_speed(v3, v30, v31);
  objc_msgSend_setSpeed_(v4, v32, v33);
  v36 = objc_msgSend_timestamp(v3, v34, v35);

  if (v36)
  {
    v37 = objc_opt_new();
    objc_msgSend_setTimestamp_(v4, v38, v37);

    v41 = objc_msgSend_timestamp(v3, v39, v40);
    objc_msgSend_timeIntervalSinceReferenceDate(v41, v42, v43);
    v45 = v44;
    v48 = objc_msgSend_timestamp(v4, v46, v47);
    objc_msgSend_setTime_(v48, v49, v50, v45);
  }

  return v4;
}

id sub_1886CF690(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E6985C40];
  v4 = a3;
  v5 = [v3 alloc];
  objc_msgSend_latitude(v4, v6, v7);
  v9 = v8;
  objc_msgSend_longitude(v4, v10, v11);
  v13 = CLLocationCoordinate2DMake(v9, v12);
  objc_msgSend_altitude(v4, v14, v15);
  v17 = v16;
  objc_msgSend_horizontalAccuracy(v4, v18, v19);
  v21 = v20;
  objc_msgSend_verticalAccuracy(v4, v22, v23);
  v25 = v24;
  objc_msgSend_course(v4, v26, v27);
  v29 = v28;
  objc_msgSend_speed(v4, v30, v31);
  v33 = v32;
  v34 = MEMORY[0x1E695DF00];
  v37 = objc_msgSend_timestamp(v4, v35, v36);

  objc_msgSend_time(v37, v38, v39);
  v42 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v34, v40, v41);
  v44 = objc_msgSend_initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_course_speed_timestamp_(v5, v43, v42, v13.latitude, v13.longitude, v17, v21, v25, v29, v33);

  return v44;
}

id CKWatchAppBundleIDFromProcessBundleID(uint64_t a1, const char *a2)
{
  v20 = 0;
  v2 = objc_msgSend_bundleRecordWithBundleIdentifier_allowPlaceholder_error_(MEMORY[0x1E6963620], a2, a1, 0, &v20);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_extensionPointRecord(v2, v3, v4), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend_identifier(v5, v6, v7), v8 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v8, v9, @"com.apple.watchkit"), v8, v5, isEqualToString))
  {
    v13 = objc_msgSend_containingBundleRecord(v2, v11, v12);
    v16 = objc_msgSend_bundleIdentifier(v13, v14, v15);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = objc_msgSend_bundleIdentifier(v2, v17, v18);
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

id CKSelectLocalAppNamesByBundleIDs(void *a1)
{
  v76 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (objc_msgSend_count(v1, v2, v3))
  {
    v62 = objc_opt_new();
    v63 = objc_msgSend_set(MEMORY[0x1E695DFA8], v4, v5);
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v61 = v1;
    v6 = v1;
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v67, v75, 16);
    if (v8)
    {
      v10 = v8;
      v11 = *v68;
      v12 = 0x1E6963000uLL;
      *&v9 = 138412290;
      v60 = v9;
      do
      {
        v13 = 0;
        v64 = v10;
        do
        {
          if (*v68 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v14 = *(*(&v67 + 1) + 8 * v13);
          v15 = objc_alloc(*(v12 + 1528));
          v66 = 0;
          v17 = objc_msgSend_initWithBundleIdentifier_allowPlaceholder_error_(v15, v16, v14, 0, &v66);
          v18 = v66;
          if (v18)
          {
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
            }

            v19 = ck_log_facility_ck;
            if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v72 = v14;
              v73 = 2112;
              v74 = v18;
              _os_log_debug_impl(&dword_1883EA000, v19, OS_LOG_TYPE_DEBUG, "LSApplicationRecord with bundle id %@: is not available on this device. Skipping it: %@", buf, 0x16u);
            }
          }

          else
          {
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
            }

            v20 = ck_log_facility_ck;
            if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v72 = v14;
              v73 = 2112;
              v74 = v17;
              _os_log_debug_impl(&dword_1883EA000, v20, OS_LOG_TYPE_DEBUG, "Considering registered bundleID: %@, got record: %@", buf, 0x16u);
            }

            v23 = objc_msgSend_applicationState(v17, v21, v22, v60);
            if ((objc_msgSend_isInstalled(v23, v24, v25) & 1) != 0 && (objc_msgSend_URL(v17, v26, v27), (v28 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v31 = v28;
              objc_msgSend_URL(v17, v29, v30);
              v32 = v12;
              v33 = v11;
              v35 = v34 = v6;
              v65 = objc_msgSend_containsObject_(v63, v36, v35);

              v6 = v34;
              v11 = v33;
              v12 = v32;
              v10 = v64;

              if ((v65 & 1) == 0)
              {
                v39 = objc_msgSend_URL(v17, v37, v38);
                objc_msgSend_addObject_(v63, v40, v39);

                v43 = objc_msgSend_sharedConnection(MEMORY[0x1E69ADFB8], v41, v42);
                isCloudSyncAllowed = objc_msgSend_isCloudSyncAllowed_(v43, v44, v14);

                if (isCloudSyncAllowed)
                {
                  if (ck_log_initialization_predicate != -1)
                  {
                    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
                  }

                  v10 = v64;
                  v46 = ck_log_facility_ck;
                  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = v60;
                    v72 = v14;
                    _os_log_debug_impl(&dword_1883EA000, v46, OS_LOG_TYPE_DEBUG, "BundleID %@ is installed and sync allowed", buf, 0xCu);
                  }

                  v49 = objc_msgSend_localizedName(v17, v47, v48);
                  v51 = v49;
                  if (v49)
                  {
                    objc_msgSend_setObject_forKeyedSubscript_(v62, v50, v49, v14);
                  }

                  else
                  {
                    objc_msgSend_setObject_forKeyedSubscript_(v62, v50, v14, v14);
                  }
                }

                else
                {
                  if (ck_log_initialization_predicate != -1)
                  {
                    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
                  }

                  v10 = v64;
                  v53 = ck_log_facility_ck;
                  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138543362;
                    v72 = v14;
                    _os_log_impl(&dword_1883EA000, v53, OS_LOG_TYPE_INFO, "Warn: %{public}@ is disabled by profile", buf, 0xCu);
                  }
                }
              }
            }

            else
            {
            }
          }

          ++v13;
        }

        while (v10 != v13);
        v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v52, &v67, v75, 16);
        v10 = v54;
      }

      while (v54);
    }

    v57 = objc_msgSend_copy(v62, v55, v56);
    v1 = v61;
  }

  else
  {
    v57 = 0;
  }

  v58 = *MEMORY[0x1E69E9840];

  return v57;
}

id CKURLSlugsToBundleIDsMap()
{
  if (qword_1ED4B6740 != -1)
  {
    dispatch_once(&qword_1ED4B6740, &unk_1EFA30DB0);
  }

  v1 = qword_1ED4B6738;

  return v1;
}

void sub_1886CFDF4()
{
  v0 = MEMORY[0x1E696AAE8];
  v1 = objc_opt_class();
  v18 = objc_msgSend_bundleForClass_(v0, v2, v1);
  v4 = objc_msgSend_pathForResource_ofType_(v18, v3, @"url-slugs-to-bundle-ids", @"plist");
  v6 = objc_msgSend_dictionaryWithContentsOfFile_(MEMORY[0x1E695DF20], v5, v4);
  v8 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x1E695DF90], v7, v6);
  v10 = objc_msgSend_pathForResource_ofType_(v18, v9, @"apple-feature-url-slugs-to-bundle-ids", @"plist");
  v12 = objc_msgSend_dictionaryWithContentsOfFile_(MEMORY[0x1E695DF20], v11, v10);
  objc_msgSend_addEntriesFromDictionary_(v8, v13, v12);
  v16 = objc_msgSend_copy(v8, v14, v15);
  v17 = qword_1ED4B6738;
  qword_1ED4B6738 = v16;
}

uint64_t CKSimulateOncePerBootProcessRestart()
{
  pthread_mutex_lock(&stru_1ED4B5F80);
  byte_1ED4B65DC = 0;
  v0 = qword_1ED4B65E8;
  qword_1ED4B65E8 = 0;

  qword_1ED4B6758 = 0;
  v1 = qword_1ED4B65F8;
  qword_1ED4B65F8 = 0;

  return pthread_mutex_unlock(&stru_1ED4B5F80);
}

void CKSimulateOncePerBootReboot()
{
  pthread_mutex_lock(&stru_1ED4B5F80);
  while (qword_1ED4B65F0)
  {
    pthread_cond_wait(&stru_1ED4B5F50, &stru_1ED4B5F80);
  }

  pthread_mutex_lock(&stru_1ED4B5FC0);
  byte_1ED4B65DC = 0;
  v0 = qword_1ED4B65E8;
  qword_1ED4B65E8 = 0;

  qword_1ED4B6758 = 0;
  v1 = qword_1ED4B65F8;
  qword_1ED4B65F8 = 0;

  v6 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v2, v3);
  objc_msgSend_removeObjectForKey_(v6, v4, @"CKStartupTime");
  objc_msgSend_removeObjectForKey_(v6, v5, @"CKPerBootTasks");
  pthread_mutex_unlock(&stru_1ED4B5FC0);
  pthread_mutex_unlock(&stru_1ED4B5F80);
}

id CKDescriptionForTimeInterval(double a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v14[7] = xmmword_1886FEBE0;
  v14[8] = unk_1886FEBF0;
  v14[9] = xmmword_1886FEC00;
  v14[10] = unk_1886FEC10;
  v14[3] = xmmword_1886FEBA0;
  v14[4] = unk_1886FEBB0;
  v14[5] = xmmword_1886FEBC0;
  v14[6] = unk_1886FEBD0;
  *&v13[8] = xmmword_1886FEB60;
  v14[0] = unk_1886FEB70;
  v14[1] = xmmword_1886FEB80;
  v14[2] = unk_1886FEB90;
  v1 = v12;
  if (a1 >= 0.0)
  {
    v2 = 32;
  }

  else
  {
    LOBYTE(v12[0]) = 45;
    v1 = v12 + 1;
    a1 = -a1;
    v2 = 31;
  }

  if (a1 * 1000000000.0 >= 0.1)
  {
    v3 = v13;
    do
    {
      v5 = v3[1];
      v3 += 3;
    }

    while (a1 > v5 && v5 != 0.0);
    v6 = a1 * *(v3 - 1);
    if (v5 != 0.0 || v6 < 1000.0)
    {
      __snprintf_chk(v1, v2, 0, 0x20uLL, "%.3g %s");
      goto LABEL_16;
    }

    v4 = ">1k %s";
  }

  else
  {
    v3 = v14;
    if (a1 == 0.0)
    {
      v4 = "0.0 %s";
    }

    else
    {
      v4 = "<0.1 %s";
    }
  }

  __snprintf_chk(v1, v2, 0, 0x20uLL, v4, v3, v11, v12[0]);
LABEL_16:
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v7, v12);
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id sub_1886D1BC8(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_path(a1, a2, a3);
  v6 = objc_msgSend_pathComponents(v3, v4, v5);

  if (objc_msgSend_count(v6, v7, v8) >= 2)
  {
    v11 = objc_msgSend_objectAtIndexedSubscript_(v6, v9, 1);
    v14 = objc_msgSend_stringByRemovingPercentEncoding(v11, v12, v13);
    v17 = objc_msgSend_lowercaseString(v14, v15, v16);

    v10 = objc_msgSend_capitalizedString(v17, v18, v19);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

__CFString *sub_1886D1C80(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_CKShareURLSlugBasedApplicationName(a1, a2, a3);
  v6 = objc_msgSend_lowercaseString(v3, v4, v5);

  if (objc_msgSend_isEqualToString_(v6, v7, @"pages"))
  {
    v9 = @"com.apple.iWork.Pages";
  }

  else if (objc_msgSend_isEqualToString_(v6, v8, @"keynote"))
  {
    v9 = @"com.apple.iWork.Keynote";
  }

  else if (objc_msgSend_isEqualToString_(v6, v10, @"numbers"))
  {
    v9 = @"com.apple.iWork.Numbers";
  }

  else
  {
    v9 = @"iclouddrive";
    if (!objc_msgSend_isEqualToString_(v6, v11, @"iclouddrive"))
    {
      v9 = 0;
    }
  }

  return v9;
}

uint64_t sub_1886D1D3C(void *a1, uint64_t a2, void *a3)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v16[1] = 0;
  v15[0] = 0;
  v15[1] = 0;
  v4 = a3;
  objc_msgSend_getUUIDBytes_(a1, v5, v16);
  objc_msgSend_getUUIDBytes_(v4, v6, v15);

  v8 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v7, v16, 16);
  v10 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v9, v15, 16);
  v12 = objc_msgSend_CKCompare_(v8, v11, v10);

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t CKCanUseOneTimeLinksWithEntitlements(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v7 = objc_msgSend_objectForKeyedSubscript_(a2, v6, @"EnforceOneTimeLinkEntitlements");
  v10 = objc_msgSend_BOOLValue(v7, v8, v9);

  if (v10 & 1) == 0 && ((__sTestOverridesAvailable[0] & 1) != 0 || (objc_msgSend_hasSPIEntitlement(v5, v11, v12)) || (objc_msgSend_hasInProcessOneTimeLinksEntitlement(v5, v11, v12))
  {
    v14 = 1;
  }

  else if (a3)
  {
    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v13, @"CKErrorDomain", 12, @"%@", @"To use one time links, you must have the 'com.apple.developer.icloud-extended-share-access' entitlement with an array that includes 'InProcessOneTimeLinks'.");
    *a3 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t CKCanUseShareAccessRequestsWithEntitlements(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v7 = objc_msgSend_objectForKeyedSubscript_(a2, v6, @"EnforceShareAccessRequestsEntitlements");
  v10 = objc_msgSend_BOOLValue(v7, v8, v9);

  if (v10 & 1) == 0 && ((__sTestOverridesAvailable[0] & 1) != 0 || (objc_msgSend_hasSPIEntitlement(v5, v11, v12)) || (objc_msgSend_hasInProcessShareAccessRequestsEntitlement(v5, v11, v12))
  {
    v14 = 1;
  }

  else if (a3)
  {
    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v13, @"CKErrorDomain", 12, @"%@", @"To use access requests, you must have the 'com.apple.developer.icloud-extended-share-access' entitlement with an array that includes 'InProcessShareAccessRequests'.");
    *a3 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

double sub_1886D2038()
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = 1.0 / (1000000000.0 / v0 * v1);
  qword_1ED4B6768 = *&result;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = MEMORY[0x1EEDC4558](options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x1EEE68DA0]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = MEMORY[0x1EEE68FC8]();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return MEMORY[0x1EEE690B8]();
}

{
  return MEMORY[0x1EEE69100]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x1EEE6ACC8]();
}

{
  return MEMORY[0x1EEE6ACE8]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x1EEE6AE00]();
}

{
  return MEMORY[0x1EEE6AE20]();
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}