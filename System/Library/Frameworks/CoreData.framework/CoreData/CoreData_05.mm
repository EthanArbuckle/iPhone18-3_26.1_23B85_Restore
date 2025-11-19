void _NSCoreDataCanonical(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 == 1)
  {
    v4 = sqlite3_value_text(*a3);
    if (v4)
    {
      v5 = -[objc_class newStringFrom:usingUnicodeTransforms:](NSClassFromString(@"_NSPredicateOperatorUtilities"), "newStringFrom:usingUnicodeTransforms:", [MEMORY[0x1E696AEC0] stringWithUTF8String:v4], 387);
      sqlite3_result_text(a1, [v5 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {

      sqlite3_result_null(a1);
    }
  }

  else
  {

    sqlite3_result_error(a1, "NSCoreDataCanonical: requires one argument", 1);
  }
}

void _NSCoreDataMatchesBridge(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v52 = *MEMORY[0x1E69E9840];
  if (a2 != 3)
  {
    v8 = *MEMORY[0x1E69E9840];
    v7 = "NSCoreDataMatches: requres 3 arguments (value, pattern, variant)";
    goto LABEL_5;
  }

  v5 = sqlite3_value_int(a3[2]);
  if (v5 >= 4)
  {
    v6 = *MEMORY[0x1E69E9840];
    v7 = "NSCoreDataMatches: variant must be an integer in the range [0,3]";
LABEL_5:

    sqlite3_result_error(a1, v7, 1);
    return;
  }

  v9 = v5;
  v10 = sqlite3_value_text(*a3);
  v11 = sqlite3_value_text(a3[1]);
  if (v10 && (v12 = v11) != 0)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = _PFStackAllocatorCreate(&v20, 1024);
    v14 = *MEMORY[0x1E695E498];
    v15 = CFStringCreateWithCStringNoCopy(v13, v10, 0x8000100u, *MEMORY[0x1E695E498]);
    v16 = CFStringCreateWithCStringNoCopy(v13, v12, 0x8000100u, v14);
    v17 = sqlite3_user_data(a1);
    if (!*v17)
    {
      *v17 = [MEMORY[0x1E696AE20] operatorWithType:6 modifier:0 options:0];
      v17[1] = [MEMORY[0x1E696AE20] operatorWithType:6 modifier:0 options:1];
      v17[2] = [MEMORY[0x1E696AE20] operatorWithType:6 modifier:0 options:2];
      v17[3] = [MEMORY[0x1E696AE20] operatorWithType:6 modifier:0 options:3];
    }

    sqlite3_result_int(a1, [v17[v9] performOperationUsingObject:v15 andObject:v16]);
    if (*(&v21 + 1))
    {
      if (v15)
      {
        CFRelease(v15);
      }

      if (v16)
      {
        CFRelease(v16);
      }
    }

    v18 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v19 = *MEMORY[0x1E69E9840];

    sqlite3_result_int(a1, 0);
  }
}

void _NSCoreDataTriggerUpdateAffectedObjectValue(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 == 5)
  {
    v5 = sqlite3_value_text(*a3);
    v6 = sqlite3_value_int64(a3[1]);
    v7 = sqlite3_value_int64(a3[2]);
    v8 = sqlite3_value_text(a3[3]);
    sqlite3_value_int64(a3[4]);
    if (v5)
    {
      if (v8)
      {
        v9 = sqlite3_user_data(a1);

        [NSSQLiteConnection triggerUpdatedRowInTable:v9 withEntityID:v5 primaryKey:v6 columnName:v7 newValue:?];
      }
    }
  }
}

void _NSCoreDataDATriggerInsertUpdatedAffectedObjectValue(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 != 5)
  {
    return;
  }

  v4 = sqlite3_user_data(a1);
  if (!v4)
  {
    return;
  }

  v5 = v4;
  if (!v4[24])
  {
    return;
  }

  v6 = sqlite3_value_text(*a3);
  v7 = sqlite3_value_int64(a3[1]);
  v8 = sqlite3_value_int64(a3[2]);
  v9 = sqlite3_value_text(a3[3]);
  if (!v6)
  {
    return;
  }

  v10 = v9;
  if (!v9)
  {
    return;
  }

  v11 = sqlite3_value_type(a3[4]);
  switch(v11)
  {
    case 3:
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:sqlite3_value_text(a3[4])];
      break;
    case 2:
      v12 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:sqlite3_value_double(a3[4])];
      break;
    case 1:
      v12 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:sqlite3_value_int64(a3[4])];
      break;
    default:
      v13 = 0;
      goto LABEL_15;
  }

  v13 = v12;
LABEL_15:
  v14 = v13;
  [(NSSQLiteConnection *)v5 derivedAttributeUpdatedInsertedRowInTable:v6 withEntityID:v7 primaryKey:v8 columnName:v10 newValue:v13];
}

void _NSCoreDataDATriggerUpdatedAffectedObjectValue(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 != 5)
  {
    return;
  }

  v4 = sqlite3_user_data(a1);
  if (!v4)
  {
    return;
  }

  v5 = v4;
  if (!v4[24])
  {
    return;
  }

  v6 = sqlite3_value_text(*a3);
  v7 = sqlite3_value_int64(a3[1]);
  v8 = sqlite3_value_int64(a3[2]);
  v9 = sqlite3_value_text(a3[3]);
  if (!v6)
  {
    return;
  }

  v10 = v9;
  if (!v9)
  {
    return;
  }

  v11 = sqlite3_value_type(a3[4]);
  switch(v11)
  {
    case 3:
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:sqlite3_value_text(a3[4])];
      break;
    case 2:
      v12 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:sqlite3_value_double(a3[4])];
      break;
    case 1:
      v12 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:sqlite3_value_int64(a3[4])];
      break;
    default:
      v13 = 0;
      goto LABEL_15;
  }

  v13 = v12;
LABEL_15:
  v14 = v13;
  [(NSSQLiteConnection *)v5 derivedAttributeUpdatedRowInTable:v6 withEntityID:v7 primaryKey:v8 columnName:v10 newValue:v13];
}

void _NSPersistentHistoryBatchDeleteUpdateTriggerDataBlobOperator(sqlite3_context *a1, int a2, uint64_t a3)
{
  if (a2 < 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 8 * a2;
    do
    {
      if (sqlite3_value_type(*(a3 + v5)) == 4)
      {
        v8 = objc_alloc(MEMORY[0x1E695DEF0]);
        v9 = sqlite3_value_blob(*(a3 + v5));
        v10 = [v8 initWithBytes:v9 length:sqlite3_value_bytes(*(a3 + v5))];
        v11 = v10;
        if (v5)
        {
          v12 = [_NSPersistentHistoryChange _mergeOldMask:v6 andNewMask:v10];

          v6 = v12;
        }

        else
        {
          v6 = v10;
        }
      }

      v5 += 8;
    }

    while (v7 != v5);
  }

  v13 = [v6 length];
  v14 = sqlite3_malloc(v13);
  if (!v14)
  {
    sqlite3_result_error(a1, "_NSPersistentHistoryBatchDeleteUpdateTriggerDataBlobOperator: malloc failure", 1);
  }

  [v6 getBytes:v14 length:v13];

  v15 = MEMORY[0x1E69E59A0];

  sqlite3_result_blob(a1, v14, v13, v15);
}

void _NSCoreDataDATriggerMergeableString(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v45 = *MEMORY[0x1E69E9840];
  if (a2 == 5)
  {
    if (sqlite3_value_type(a3[4]) == 4)
    {
      v5 = sqlite3_user_data(a1);
      v6 = sqlite3_value_text(*a3);
      v7 = sqlite3_value_int64(a3[1]);
      v8 = sqlite3_value_text(a3[3]);
      if (!v6)
      {
        goto LABEL_12;
      }

      v9 = v8;
      if (!v8)
      {
        goto LABEL_12;
      }

      v10 = objc_alloc(MEMORY[0x1E695DEF0]);
      v11 = sqlite3_value_blob(a3[4]);
      v12 = [v10 initWithBytes:v11 length:sqlite3_value_bytes(a3[4])];
      v40 = 0;
      v13 = _sqlCoreLookupSQLEntityForEntityID([objc_msgSend(v5 "adapter")], v7);
      v14 = v13;
      if (v13)
      {
        v15 = v13[5];
      }

      else
      {
        v15 = 0;
      }

      v16 = [objc_msgSend(objc_msgSend(objc_msgSend(v15 objectForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v9)), "propertyDescription"), "derivationExpression"), "keyPath"}];
      if (v14)
      {
        v17 = v14[5];
      }

      else
      {
        v17 = 0;
      }

      v18 = -[objc_class transformedValueClass](_PFClassFromString([objc_msgSend(objc_msgSend(v17 objectForKey:{v16), "propertyDescription"), "valueTransformerName"}]), "transformedValueClass");
      if (v18)
      {
        v19 = [+[_PFRoutines unarchiveCylicGraphObjectOfClasses:fromData:error:](_PFRoutines objc_msgSend(MEMORY[0x1E695DFD8]];
        if (!v40)
        {
          v20 = v19;
          sqlite3_result_text(a1, [v19 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

LABEL_12:
          v21 = *MEMORY[0x1E69E9840];
          return;
        }

        v30 = objc_autoreleasePoolPush();
        if (!_NSCoreDataIsOSLogEnabled(1))
        {
          goto LABEL_39;
        }

        v31 = _pflogging_catastrophic_mode;
        LogStream = _PFLogGetLogStream(1);
        v33 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
        if (v31)
        {
          if (v33)
          {
            *buf = 138412290;
            v44 = v40;
            goto LABEL_38;
          }
        }

        else if (v33)
        {
          *buf = 138412290;
          v44 = v40;
LABEL_38:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Mergeable transformer failed with an error while trying to save a mergeable value, %@.\n", buf, 0xCu);
        }

LABEL_39:
        _NSCoreDataLog_console(1, "Mergeable transformer failed with an error while trying to save a mergeable value, %@.", v40);
        objc_autoreleasePoolPop(v30);
        v38 = MEMORY[0x1E695DF30];
        v39 = *MEMORY[0x1E695D930];
        v41 = *MEMORY[0x1E696AA08];
        v42 = v40;
        v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        v36 = @"Mergeable transformer failed with an error while trying to save a mergeable value.";
        v34 = v38;
        v35 = v39;
LABEL_40:
        objc_exception_throw([v34 exceptionWithName:v35 reason:v36 userInfo:v37]);
      }

      v26 = objc_autoreleasePoolPush();
      if (_NSCoreDataIsOSLogEnabled(1))
      {
        v27 = _pflogging_catastrophic_mode;
        v28 = _PFLogGetLogStream(1);
        v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
        if (v27)
        {
          if (v29)
          {
            *buf = 0;
            goto LABEL_34;
          }
        }

        else if (v29)
        {
          *buf = 0;
LABEL_34:
          _os_log_error_impl(&dword_18565F000, v28, OS_LOG_TYPE_ERROR, "CoreData: error: Mergeable transformer class name is nil while trying to save a mergeable value.\n", buf, 2u);
        }
      }

      _NSCoreDataLog_console(1, "Mergeable transformer class name is nil while trying to save a mergeable value.");
      objc_autoreleasePoolPop(v26);
      v34 = MEMORY[0x1E695DF30];
      v35 = *MEMORY[0x1E695D930];
      v36 = @"Mergeable transformer class name is nil while trying to save a mergeable value.";
      v37 = 0;
      goto LABEL_40;
    }

    if (sqlite3_value_type(a3[4]) == 5)
    {
      v24 = *MEMORY[0x1E69E9840];

      sqlite3_result_null(a1);
      return;
    }

    v25 = *MEMORY[0x1E69E9840];
    v23 = "_NSCoreDataDATriggerMergeableString: requires a transformable blob";
  }

  else
  {
    v22 = *MEMORY[0x1E69E9840];
    v23 = "_NSCoreDataDATriggerMergeableString: requires five arguments";
  }

  sqlite3_result_error(a1, v23, 1);
}

uint64_t NSSQLiteRegisterMigrationFunctions(sqlite3 *a1, void *pApp)
{
  function = sqlite3_create_function(a1, "NSPersistentHistoryMigrateUpdates", -1, 2052, pApp, _NSPersistentHistoryMigrateUpdates, 0, 0);
  if (function)
  {
    sqlite3_create_function(a1, "NSPersistentHistoryMigrateUpdates", 0, 4, 0, 0, 0, 0);
  }

  return function;
}

void _NSPersistentHistoryMigrateUpdates(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v5 = sqlite3_user_data(a1);
  v6 = sqlite3_value_int64(a3[1]);
  v7 = sqlite3_value_int64(a3[2]);
  v8 = objc_alloc(MEMORY[0x1E695DEF0]);
  v9 = sqlite3_value_blob(a3[3]);
  v10 = [v8 initWithBytes:v9 length:sqlite3_value_bytes(a3[3])];
  if (v5)
  {
    v11 = *(v5 + 25);
    v12 = [*(v5 + 3) entityForID:v7];
    v13 = *(v5 + 2);
  }

  else
  {
    v12 = [0 entityForID:v7];
    v11 = 0;
    v13 = 0;
  }

  v14 = [v13 entityForID:v6];
  v15 = [v11 objectForKey:{objc_msgSend(v12, "name")}];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 objectForKey:v10];
    if (v17)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v11 setObject:v16 forKey:{objc_msgSend(v12, "name")}];
  }

  v18 = [_NSPersistentHistoryChange _updatedPropertiesForEntity:v12 andData:v10];
  if ([(__CFSet *)v18 count])
  {
    v19 = [(__CFSet *)v18 valueForKey:@"name"];
  }

  else
  {
    v19 = 0;
  }

  v17 = [_NSPersistentHistoryChange _propertyDataForEntity:v14 withSetOfPropertyNames:v19];
  if ([v16 count] >= 0x3E9)
  {
    [v16 removeAllObjects];
  }

  [v16 setObject:v17 forKey:v10];

LABEL_13:
  v20 = [v17 length];
  v21 = sqlite3_malloc(v20);
  if (!v21)
  {
    sqlite3_result_error(a1, "NSPersistentHistoryMigrateUpdates: malloc failure", 1);
  }

  [v17 getBytes:v21 length:v20];

  v22 = MEMORY[0x1E69E59A0];

  sqlite3_result_blob(a1, v21, v20, v22);
}

void _NSCoreDataCaseSwitch(sqlite3_context *a1, int a2, sqlite3_value **a3, int a4)
{
  v52 = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    v6 = sqlite3_value_text(*a3);
    if (v6)
    {
      v7 = v6;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v8 = _PFStackAllocatorCreate(&v20, 1024);
      Mutable = CFStringCreateMutable(v8, 0);
      CFStringAppendCString(Mutable, v7, 0x8000100u);
      if (a4)
      {
        CFStringUppercase(Mutable, 0);
      }

      else
      {
        CFStringLowercase(Mutable, 0);
      }

      v12 = [(__CFString *)Mutable lengthOfBytesUsingEncoding:4];
      v13 = v12 + 1;
      Length = CFStringGetLength(Mutable);
      if (v12 + 1 >= 1024)
      {
        p_buffer = malloc_type_malloc(v12 + 2, 0x100004077774924uLL);
      }

      else
      {
        p_buffer = &buffer;
      }

      usedBufLen = 0;
      v54.location = 0;
      v54.length = Length;
      CFStringGetBytes(Mutable, v54, 0x8000100u, 0, 0, p_buffer, v13, &usedBufLen);
      v16 = usedBufLen;
      if (usedBufLen >= v13)
      {
        v16 = v13;
      }

      p_buffer[v16] = 0;
      sqlite3_result_text(a1, p_buffer, -1, 0xFFFFFFFFFFFFFFFFLL);
      if (*(&v21 + 1))
      {
        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }

      else
      {
        *(&v20 + 1) = v20;
      }

      if (v13 >= 1024)
      {
        free(p_buffer);
      }

      v17 = *MEMORY[0x1E69E9840];
    }

    else
    {
      v11 = *MEMORY[0x1E69E9840];

      sqlite3_result_null(a1);
    }
  }

  else
  {
    v10 = *MEMORY[0x1E69E9840];

    sqlite3_result_error(a1, "NSCoreDataTo(Uppercase|Lowercase): requires one argument", 1);
  }
}

void sub_185859CCC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_begin_catch(a1);
    JUMPOUT(0x185859BDCLL);
  }

  _Unwind_Resume(a1);
}

void sub_18585A2C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __CFString *a18, uint64_t a19, uint64_t a20, __CFString *a21)
{
  if (a2 == 1)
  {
    v22 = objc_begin_catch(exception_object);
    *(*(*(v21 + 80) + 8) + 24) = 0;
    v23 = objc_alloc(MEMORY[0x1E696ABC0]);
    v24 = *MEMORY[0x1E696A588];
    a18 = @"NSUnderlyingException";
    a19 = v24;
    a20 = v22;
    a21 = @"Record fetch failed because fetching the record metadata hit an unhandled exception.";
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a20 forKeys:&a18 count:2];
    *(*(*(v21 + 72) + 8) + 40) = [v23 initWithDomain:*MEMORY[0x1E696A250] code:134421 userInfo:v25];
    objc_end_catch();
    JUMPOUT(0x18585A284);
  }

  _Unwind_Resume(exception_object);
}

void sub_18585E368(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x18585E20CLL);
  }

  JUMPOUT(0x18585E360);
}

void sub_18585ED4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1858602E0(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Block_object_dispose(&STACK[0x2D0], 8);
  _Unwind_Resume(a1);
}

void sub_185860984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1858617E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_185861EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_185862AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void *bufferResultSetRealloc(void *ptr, size_t *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *a2 + 7;
  if (v4 >= 0x4000)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v5 = 0x4000;
  }

  v6 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v6 = malloc_default_zone();
  }

  result = malloc_type_zone_realloc(v6, ptr, v5, 0xD4D2A54CuLL);
  if (!result)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v12 = 134217984;
      v13 = v5;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: bufferResultSetRealloc failed to realloc buffer to %ld bytes\n", &v12, 0xCu);
    }

    v10 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v12 = 134217984;
      v13 = v5;
      _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: bufferResultSetRealloc failed to realloc buffer to %ld bytes", &v12, 0xCu);
    }

    v11 = [_NSCoreDataException exceptionWithName:134183 code:@"realloc failed" reason:0 userInfo:?];
    objc_exception_throw(v11);
  }

  *a2 = v5;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void *bufferResultSetAllocateWithVMMemory(unint64_t a1, int a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a1 <= 0x800)
  {
    v3 = 0xFFFFLL;
  }

  else
  {
    v3 = a1;
  }

  v4 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v4 = malloc_default_zone();
  }

  v5 = malloc_type_zone_calloc(v4, 1uLL, 0x50uLL, 0x10900404577C156uLL);
  v5[2] = v3;
  *(v5 + 6) = 2;
  *(v5 + 8) = 1;
  v6 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v6 = malloc_default_zone();
  }

  v7 = malloc_type_zone_malloc(v6, 0x10uLL, 0x80040B8603338uLL);
  v5[6] = v7;
  v7[1] = 0;
  address = 0;
  v8 = MEMORY[0x1E69E9A60];
  if (a2)
  {
    v9 = 754974723;
  }

  else
  {
    v9 = 754974721;
  }

  v10 = vm_allocate(*MEMORY[0x1E69E9A60], &address, v3, v9);
  if (v10)
  {
    v11 = v10;
    v12 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v13 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v15 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v13)
      {
        if (v15)
        {
          goto LABEL_27;
        }
      }

      else if (v15)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_28;
  }

  v16 = address;
  v5[8] = address;
  *v5[6] = v16;
  v17 = v5[8];
  v5[9] = v17;
  *v17 = 0;
  address = 0;
  v18 = vm_allocate(*v8, &address, 0x800uLL, 754974721);
  if (v18)
  {
    v11 = v18;
    v12 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v19 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v20 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v19)
      {
        if (v20)
        {
          goto LABEL_27;
        }
      }

      else if (v20)
      {
LABEL_27:
        *buf = 134218240;
        v27 = v3;
        v28 = 1024;
        v29 = v11;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: *** vm_allocate(size=%lld) failed (error code=%d)\n\n", buf, 0x12u);
      }
    }

LABEL_28:
    _NSCoreDataLog_console(1, "*** vm_allocate(size=%lld) failed (error code=%d)\n", v3, v11);
    objc_autoreleasePoolPop(v12);
    v5 = 0;
    goto LABEL_29;
  }

  v21 = address;
  v5[7] = address;
  v21[511] = 0;
  *v21 = 0;
  *(v5 + 7) = 512;
  v22 = *(v5 + 10);
  *(v5 + 10) = v22 | 8;
  if (a2)
  {
    *(v5 + 10) = v22 | 0x18;
    bufferResultSetNonPurgeable(v5);
  }

  *(v5 + 9) = 0;
  *v5 = 0;
  v5[9] += 8;
LABEL_29:
  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

BOOL bufferResultSetNonPurgeable(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 40) & 0x10) != 0)
  {
    v11 = 0;
    v3 = MEMORY[0x1865FAA60](*MEMORY[0x1E69E9A60], *(a1 + 64), 0, &v11);
    v1 = v3 == 0;
    if (!v3)
    {
      *(a1 + 40) &= ~0x20u;
      goto LABEL_11;
    }

    v4 = v3;
    v5 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v6 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v8 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v6)
      {
        if (v8)
        {
          goto LABEL_12;
        }
      }

      else if (v8)
      {
LABEL_12:
        *buf = 138412546;
        v13 = a1;
        v14 = 1024;
        v15 = v4;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: %@ bufferResultSetNonPurgeable failed to set vm buffer as non-purgeable: %d\n", buf, 0x12u);
      }
    }

    _NSCoreDataLog_console(1, "%@ bufferResultSetNonPurgeable failed to set vm buffer as non-purgeable: %d", a1, v4);
    objc_autoreleasePoolPop(v5);
    goto LABEL_11;
  }

  v1 = 0;
LABEL_11:
  v9 = *MEMORY[0x1E69E9840];
  return v1;
}

void *bufferResultSetAllocateWithBuffer(uint64_t a1, uint64_t a2)
{
  v4 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v4 = malloc_default_zone();
  }

  v5 = malloc_type_zone_calloc(v4, 1uLL, 0x50uLL, 0x10900404577C156uLL);
  v5[2] = a1;
  *(v5 + 6) = 2;
  *(v5 + 8) = 1;
  v6 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v6 = malloc_default_zone();
  }

  v7 = malloc_type_zone_malloc(v6, 0x10uLL, 0x80040B8603338uLL);
  v5[6] = v7;
  v7[1] = 0;
  v5[8] = a2;
  *v5[6] = a2;
  v8 = v5[8];
  v5[9] = v8;
  *(v5 + 9) = 0;
  *v5 = *v8;
  return v5;
}

BOOL bufferResultSetPurgeable(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 40) & 0x50) == 0x10)
  {
    v11 = 1;
    v2 = MEMORY[0x1865FAA60](*MEMORY[0x1E69E9A60], *(a1 + 64), 0, &v11);
    v3 = v2 == 0;
    if (v2)
    {
      v4 = v2;
      v5 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        v6 = _pflogging_catastrophic_mode;
        LogStream = _PFLogGetLogStream(1);
        v8 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
        if (v6)
        {
          if (v8)
          {
            goto LABEL_12;
          }
        }

        else if (v8)
        {
LABEL_12:
          *buf = 138412546;
          v13 = a1;
          v14 = 1024;
          v15 = v4;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: %@ bufferResultSetPurgeable failed to set vm buffer as purgeable: %d\n", buf, 0x12u);
        }
      }

      _NSCoreDataLog_console(1, "%@ bufferResultSetPurgeable failed to set vm buffer as purgeable: %d", a1, v4);
      objc_autoreleasePoolPop(v5);
      goto LABEL_11;
    }

    *(a1 + 40) |= 0x20u;
  }

  else
  {
    v3 = 0;
  }

LABEL_11:
  v9 = *MEMORY[0x1E69E9840];
  return v3;
}

unsigned int *setMultiColumnValueDictionary(id *a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  object = snapshot_get_object(a1, *a2);
  v7 = object;
  v8 = [*(a2 + 16) propertyDescription];
  if (!object)
  {
    v9 = [objc_msgSend(*(a2 + 16) "propertyDescription")];
    v20 = a3;
    if (v9)
    {
      do
      {
        v10 = v9;
        v9 = [v9 superCompositeAttribute];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    v11 = -[NSKnownKeysMappingStrategy initForKeys:]([NSKnownKeysMappingStrategy alloc], "initForKeys:", [objc_msgSend(v10 "elements")]);
    object = [[NSKnownKeysDictionary alloc] initWithSearchStrategy:v11];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = [v10 elements];
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        v16 = 0;
        do
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v21 + 1) + 8 * v16);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            _createKnownKeysDictionaryForMultiColumnValue(v17, object);
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }

    a3 = v20;
  }

  [(NSKnownKeysDictionary *)object setValue:a3 forKeyPath:[(NSPropertyDescription *)v8 _elementPath]];
  result = snapshot_set_object(a1, *a2, object);
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

void setMultiColumnValueNullFlag(id *a1, unsigned int *a2)
{
  object = snapshot_get_object(a1, *a2);
  v4 = object;
  if (!object)
  {
    *(a1 + (*a2 >> 3) + 28) |= 1 << (*a2 & 7);
  }
}

uint64_t _createKnownKeysDictionaryForMultiColumnValue(__CFString *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [(__CFString *)a1 elements];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 addObject:{objc_msgSend(*(*(&v23 + 1) + 8 * v9++), "name")}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v10 = [[NSKnownKeysMappingStrategy alloc] initForKeys:v4];
    v11 = [[NSKnownKeysDictionary alloc] initWithSearchStrategy:v10];

    [a2 setValue:v11 forKeyPath:-[NSPropertyDescription _elementPath](a1)];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [(__CFString *)a1 elements];
  result = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (result)
  {
    v14 = result;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          _createKnownKeysDictionaryForMultiColumnValue(v17, a2);
        }

        ++v16;
      }

      while (v14 != v16);
      result = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
      v14 = result;
    }

    while (result);
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _fireFaultsOnBackgroundThread(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 24);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  PF_FREE_OBJECT_ARRAY(v2);
  *(a1 + 24) = 0;
  if (v3)
  {
    v9 = *(v3 + 32);
    v3 = *(v3 + 128);
  }

  else
  {
    v9 = 0;
  }

  if (v6 < v7 + v6)
  {
    v10 = (v8 + v6);
    v11 = (v5 + 8 * v6);
    v12 = (v4 + 8 * v6);
    do
    {
      v13 = *v12;
      if (((*(*v12 + 16) >> 15) & 3 | 4) == 5)
      {
        v14 = *(v13 + 48);
        if (v14 && *v14)
        {
          v15 = 3;
        }

        else
        {
          _PFFaultHandlerFulfillFault(v3, v13, v9, *v11, 0);
          v15 = 1;
        }

        *v10 = v15;
      }

      ++v10;
      ++v11;
      ++v12;
      --v7;
    }

    while (v7);
  }

  v16 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t _deallocateSQLRowCacheOnBackgroundThread(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *v2;
  v4 = *(v2 + 8);
  if (v4)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = v3[v5];
      v8 = atomic_load((v7 + 40));
      v9 = v8;
      atomic_compare_exchange_strong((v7 + 40), &v9, 0);
      if (v9 == v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = v9;
      }

      v5 = v6;
      v11 = v4 > v6++;
    }

    while (v11);
  }

  pthread_mutex_lock((a1 + 32));
  while (!*(v2 + 16))
  {
    pthread_cond_wait((a1 + 96), (a1 + 32));
  }

  pthread_mutex_unlock((a1 + 32));
  if (v4)
  {
    v12 = 0;
    v13 = 1;
    do
    {
      _PFDeallocateObject(v3[v12]);
      v12 = v13;
      v11 = v4 > v13++;
    }

    while (v11);
  }

  v14 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v14 = malloc_default_zone();
  }

  malloc_zone_free(v14, v3);
  v15 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v15 = malloc_default_zone();
  }

  malloc_zone_free(v15, *(a1 + 24));
  *(a1 + 24) = 0;
  return 0;
}

void sub_185870290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a2)
  {
    objc_destroyWeak((v31 + 40));
    objc_destroyWeak((v32 - 112));
    objc_begin_catch(exception_object);
    JUMPOUT(0x18586FF6CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_185870544(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x185870524);
}

void sub_185870B38(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, __CFString *a26, uint64_t a27, id a28, __CFString *a29)
{
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak((v30 - 144));
  if (a2 == 1)
  {
    v33 = objc_begin_catch(a1);
    *(*(*(a11 + 72) + 8) + 24) = 0;
    v34 = objc_alloc(MEMORY[0x1E696ABC0]);
    v35 = *MEMORY[0x1E696A588];
    a26 = @"NSUnderlyingException";
    a27 = v35;
    a28 = v33;
    a29 = @"Export encountered an unhandled exception while analyzing history in the store.";
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a28 forKeys:&a26 count:2];
    *(*(*(a11 + 64) + 8) + 40) = [v34 initWithDomain:*MEMORY[0x1E696A250] code:134421 userInfo:v36];
    objc_end_catch();
    JUMPOUT(0x185870AECLL);
  }

  _Unwind_Resume(a1);
}

void sub_185870E80(void *a1)
{
  objc_end_catch();
  objc_begin_catch(a1);
  JUMPOUT(0x185870DE4);
}

void sub_1858710E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 88), 8);
  _Unwind_Resume(a1);
}

void sub_185871128(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x185871120);
}

void sub_18587160C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1858715ECLL);
}

void sub_185871614(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1858714F4);
  }

  JUMPOUT(0x185871604);
}

void sub_1858726F0(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __CFString *a29, uint64_t a30, uint64_t a31, __CFString *a32, char a33)
{
  if (!a2)
  {
    _Unwind_Resume(exc_buf);
  }

  if (a2 == 2)
  {
    v33 = objc_begin_catch(exc_buf);
    v34 = objc_alloc(MEMORY[0x1E696ABC0]);
    v35 = *MEMORY[0x1E696A588];
    a29 = @"NSUnderlyingException";
    a30 = v35;
    a31 = v33;
    a32 = @"Export encountered a fatal exception while analyzing history.";
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a31 forKeys:&a29 count:2];
    [v34 initWithDomain:*MEMORY[0x1E696A250] code:134421 userInfo:v36];
    objc_end_catch();
    JUMPOUT(0x185871DC4);
  }

  objc_begin_catch(exc_buf);
  JUMPOUT(0x185871DC8);
}

void sub_185872938(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x185872920);
  }

  JUMPOUT(0x18587282CLL);
}

void sub_1858730A0(void *exc_buf, int a2)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(exc_buf);
      JUMPOUT(0x185873010);
    }

    v2 = objc_begin_catch(exc_buf);
    objc_exception_rethrow();
  }

  JUMPOUT(0x185873094);
}

void sub_1858730E0(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1858730B4);
  }

  JUMPOUT(0x185873094);
}

void sub_185873C8C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x185873ABCLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_185874120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_185874168(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x185874160);
}

void sub_185874178(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x185873FA4);
  }

  JUMPOUT(0x185874160);
}

void sub_185874394(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x185874374);
}

void sub_185874588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __CFString *a18, uint64_t a19, uint64_t a20, __CFString *a21)
{
  if (a2 == 1)
  {
    v22 = objc_begin_catch(exception_object);
    *(*(*(v21 + 72) + 8) + 24) = 0;
    v23 = objc_alloc(MEMORY[0x1E696ABC0]);
    v24 = *MEMORY[0x1E696A588];
    a18 = @"NSUnderlyingException";
    a19 = v24;
    a20 = v22;
    a21 = @"Export encountered an unhandled exception while analyzing history in the store.";
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a20 forKeys:&a18 count:2];
    *(*(*(v21 + 64) + 8) + 40) = [v23 initWithDomain:*MEMORY[0x1E696A250] code:134421 userInfo:v25];
    objc_end_catch();
    JUMPOUT(0x18587454CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_185874948(void *exc_buf, int a2)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(exc_buf);
      JUMPOUT(0x1858748B4);
    }

    v2 = objc_begin_catch(exc_buf);
    objc_exception_rethrow();
  }

  JUMPOUT(0x18587493CLL);
}

void sub_185874988(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18587495CLL);
  }

  JUMPOUT(0x18587493CLL);
}

uint64_t _PFModelMapTotalEntityCountForModel(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = +[_PFModelMap ancillaryModelFactoryClasses];
  v3 = [objc_msgSend(a1 "entities")];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v3 += [*(*(&v10 + 1) + 8 * v7++) ancillaryEntityCount];
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_18587C2A8(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x18587C204);
  }

  _Unwind_Resume(exc_buf);
}

uint64_t _PFCoreDataProcessInstanceUUID()
{
  result = qword_1ED4BE848;
  if (!qword_1ED4BE848)
  {
    objc_opt_class();
    return qword_1ED4BE848;
  }

  return result;
}

Class override_class_superclass_0(objc_class *a1)
{
  Superclass = class_getSuperclass(a1);

  return class_getSuperclass(Superclass);
}

IMP generateReturnPointerMethod(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __generateReturnPointerMethod_block_invoke_0;
  aBlock[3] = &__block_descriptor_40_e9__v16__0_8l;
  aBlock[4] = a1;
  v1 = _Block_copy(aBlock);
  os_unfair_lock_lock_with_options();
  Mutable = qword_1ED4BEAE0;
  if (!qword_1ED4BEAE0)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    qword_1ED4BEAE0 = Mutable;
  }

  CFArrayAppendValue(Mutable, v1);
  os_unfair_lock_unlock(&stru_1ED4BEADC);
  return imp_implementationWithBlock(v1);
}

void sub_18587FB50(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, int a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (a2)
  {
    if (a2 == 3)
    {
      objc_begin_catch(exc_buf);
      if (!a28 && +[NSMappingModel migrationDebugLevel]>= 1)
      {
        v29 = MEMORY[0x1E696ABC0];
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:@"Cannot migrate store in-place"];
        [v29 errorWithDomain:*MEMORY[0x1E696A250] code:134110 userInfo:v30];
      }

      if (a22)
      {
        v31 = MEMORY[0x1E696ABC0];
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:@"Cannot migrate store in-place"];
        [v31 errorWithDomain:*MEMORY[0x1E696A250] code:134110 userInfo:v32];
      }

      objc_end_catch();
    }

    else
    {
      if (a2 == 2)
      {
        v33 = objc_begin_catch(exc_buf);
        objc_exception_rethrow();
      }

      objc_begin_catch(exc_buf);
    }

    JUMPOUT(0x18587F1C8);
  }

  JUMPOUT(0x18587FD58);
}

void sub_18587FD1C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18587FCE8);
  }

  JUMPOUT(0x18587FD58);
}

void sub_18587FD40(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_185882E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_185883DB8(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x185883BC8);
  }

  _Unwind_Resume(exc_buf);
}

void sub_18588616C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  objc_begin_catch(a1);
  JUMPOUT(0x185885E98);
}

void sub_185886A4C(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1858869BCLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_185887ABC(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x185887A70);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1858889B0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x18588893CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_18588B2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1858941C4()
{
  if (v0)
  {
    objc_end_catch();
  }

  JUMPOUT(0x185894210);
}

void sub_185894204(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

void sub_185896418(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(exc_buf);
      JUMPOUT(0x1858961E4);
    }

    objc_begin_catch(exc_buf);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exc_buf);
}

void sub_185896550(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x185896524);
  }

  JUMPOUT(0x185896564);
}

void sub_18589B994(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18589B960);
  }

  _Unwind_Resume(a1);
}

void sub_18589B9C8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  if (a2 != 2)
  {
    objc_begin_catch(a1);
    JUMPOUT(0x18589B724);
  }

  objc_begin_catch(a1);

  objc_exception_rethrow();
}

void sub_18589BA84(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18589BA90);
  }

  _Unwind_Resume(a1);
}

void sub_18589BAB4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x18589BB34);
}

void sub_18589BAC0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x18589BB20);
}

void sub_18589BACC(_Unwind_Exception *a1)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Unwind_Resume(a1);
}

void sub_18589BAF4(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x18589BB0CLL);
}

void sub_18589BB14(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18589BB1CLL);
  }

  _Unwind_Resume(a1);
}

void sub_18589BB24(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18589BB2CLL);
  }

  _Unwind_Resume(a1);
}

void sub_18589BB68(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18589BB3CLL);
  }

  _Unwind_Resume(a1);
}

void sub_18589D474(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x18589D2E4);
  }

  _Unwind_Resume(exc_buf);
}

void sub_18589D984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1858A094C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

void sub_1858A0A60(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1858A0A68);
  }

  _Unwind_Resume(a1);
}

id returnBoolThing1(void *a1, const char *a2)
{
  v3 = [a1 _underlyingProperty];

  return [v3 a2];
}

void sub_1858A74A8(void *a1)
{
  objc_begin_catch(a1);
  free(v2);
  free(v1);
  objc_exception_rethrow();
}

uint64_t preserveOrderKeysByForwardSkip(unsigned int *a1, int a2, int a3, char a4)
{
  if (a2 < 1)
  {
    return 0;
  }

  result = 0;
  v6 = 0;
  v7 = a2;
  do
  {
    if (*a1)
    {
      if (*a1 <= v6)
      {
        if (a4)
        {
          if (v7 + result < a3)
          {
            return 0;
          }
        }

        else
        {
          *a1 = 0;
        }
      }

      else
      {
        result = (result + 1);
        v6 = *a1;
      }
    }

    else if (v6)
    {
      ++v6;
    }

    else
    {
      v6 = 0;
    }

    ++a1;
    --v7;
  }

  while (v7);
  return result;
}

uint64_t preserveOrderKeysByReverseSkip(uint64_t a1, int a2, int a3, char a4)
{
  if (a2 < 1)
  {
    return 0;
  }

  result = 0;
  v6 = 0;
  v7 = a1 - 4;
  v8 = a2;
  do
  {
    v9 = *(v7 + 4 * v8);
    if (v9)
    {
      if (v6 - 1 >= v9)
      {
        result = (result + 1);
        v6 = *(v7 + 4 * v8);
      }

      else if (a4)
      {
        if (v8 + result - 1 < a3)
        {
          return 0;
        }
      }

      else
      {
        *(v7 + 4 * v8) = 0;
      }
    }

    else if (v6-- == 0)
    {
      v6 = 0;
    }

    --v8;
  }

  while ((v8 + 1) > 1);
  return result;
}

unsigned int *_PF_SnowLeopard_CFDictionaryCreateWithObjectsAndKeys(uint64_t *a1, __CFString **a2, unint64_t a3)
{
  v6 = malloc_type_malloc(0x28uLL, 0x1080040E7E3AC0BuLL);
  v7 = v6;
  v8 = *v6 & 0x7FFFFF00;
  *(v6 + 4) = 0;
  *(v6 + 1) = 0;
  v6[4] = 0x10000;
  *v6 = v8 | 0x80000001;
  *(v6 + 3) = 0;
  *(v6 + 4) = 0;
  if (a3 < 5)
  {
    if (!a3)
    {
      return v7;
    }
  }

  else
  {
    *(v6 + 9) = 2;
    _PF_SnowLeopard_CFBasicHashRehash(v6, a3);
  }

  do
  {
    v10 = *a2++;
    v9 = v10;
    v11 = *a1++;
    _PF_SnowLeopard_CFBasicHashSetValue(v7, v9, v11);
    --a3;
  }

  while (a3);
  return v7;
}

void _PF_SnowLeopard_CFDictionaryDestroy(void **a1)
{
  v2 = a1 + 3;
  free(a1[3]);
  free(*(v2 + ((*a1 >> 28) & 8)));

  free(a1);
}

uint64_t _PF_SnowLeopard_CFStringHashNSString(__CFString *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(a1);
  v3 = Length;
  v4 = v10;
  if (Length >= 97)
  {
    [(__CFString *)a1 getCharacters:v10 range:0, 32];
    [(__CFString *)a1 getCharacters:&v11 range:(Length >> 1) - 16, 32];
    [(__CFString *)a1 getCharacters:&v12 range:Length - 32, 32];
    v5 = &v13;
    v6 = &v13;
LABEL_5:
    v4 = v10;
    do
    {
      v3 = 16974593 * *v4 + 67503105 * v3 + 66049 * v4[1] + 257 * v4[2] + v4[3];
      v4 += 4;
    }

    while (v4 < v6);
    goto LABEL_9;
  }

  [(__CFString *)a1 getCharacters:v10 range:0, Length];
  v5 = &v10[Length];
  if ((Length & 0xFFFFFFFFFFFFFFFCLL) >= 1)
  {
    v6 = &v10[Length & 0xFFFFFFFFFFFFFFFCLL];
    goto LABEL_5;
  }

LABEL_9:
  while (v4 < v5)
  {
    v7 = *v4++;
    v3 = 257 * v3 + v7;
  }

  v8 = *MEMORY[0x1E69E9840];
  return (v3 << (Length & 0x1F)) + v3;
}

unint64_t _PF_SnowLeopard_CFBasicHashFindBucket_NoCollision(unsigned int *a1, __CFString *a2)
{
  if (!*(a1 + 4))
  {
    return -1;
  }

  if (_PF_SnowLeopard_CFBasicHashTableSizes[*(a1 + 4)] <= 1uLL)
  {
    v3 = 1;
  }

  else
  {
    v3 = _PF_SnowLeopard_CFBasicHashTableSizes[*(a1 + 4)];
  }

  result = _PF_SnowLeopard_CFStringHashNSString(a2) % v3;
  v5 = v3;
  while (*(*(a1 + ((*a1 >> 28) & 8) + 24) + 8 * result))
  {
    if (v3 <= result + 1)
    {
      v6 = v3;
    }

    else
    {
      v6 = 0;
    }

    result = result + 1 - v6;
    if (!--v5)
    {
      return -1;
    }
  }

  return result;
}

unint64_t _PF_SnowLeopard_CFBasicHashFindBucket@<X0>(unint64_t result@<X0>, __CFString *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 4);
  if (!*(result + 4))
  {
    *a3 = xmmword_18592E970;
    *(a3 + 16) = unk_18592E980;
    return result;
  }

  v5 = result;
  if (_PF_SnowLeopard_CFBasicHashTableSizes[v3] <= 1uLL)
  {
    v6 = 1;
  }

  else
  {
    v6 = _PF_SnowLeopard_CFBasicHashTableSizes[v3];
  }

  result = _PF_SnowLeopard_CFStringHashNSString(a2);
  v7 = result % v6;
  v9 = *v5;
  v8 = v5 + 6;
  v10 = *(v8 + ((v9 >> 28) & 8));
  v11 = -1;
  v12 = v6;
  while (1)
  {
    v13 = *(v10 + 8 * v7);
    if (v13 == -1)
    {
      if (v11 == -1)
      {
        v11 = v7;
      }

      goto LABEL_18;
    }

    if (!v13)
    {
      break;
    }

    if (v13 == 2814029233)
    {
      v13 = 0;
    }

    if (v13 == 2780474809)
    {
      v14 = -1;
    }

    else
    {
      v14 = v13;
    }

    if (v14 == a2)
    {
      v14 = a2;
LABEL_29:
      v16 = a3;
      *a3 = v7;
      v18 = *(*v8 + 8 * v7);
      if (v18 == 2814029233)
      {
        v18 = 0;
      }

      else if (v18 == 2780474809)
      {
        v18 = -1;
      }

      *(a3 + 8) = v14;
      *(a3 + 16) = v18;
      v13 = 1;
      goto LABEL_34;
    }

    result = [v14 isEqual:a2];
    if (result)
    {
      goto LABEL_29;
    }

LABEL_18:
    if (v6 <= v7 + 1)
    {
      v15 = v6;
    }

    else
    {
      v15 = 0;
    }

    v7 = v7 + 1 - v15;
    if (!--v12)
    {
      v13 = 0;
      v16 = a3;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *a3 = v11;
      goto LABEL_34;
    }
  }

  v16 = a3;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (v11 == -1)
  {
    v17 = v7;
  }

  else
  {
    v17 = v11;
  }

  *a3 = v17;
LABEL_34:
  *(v16 + 24) = v13;
  return result;
}

void _PF_SnowLeopard_CFBasicHashRehash(unsigned int *a1, uint64_t a2)
{
  v3 = *(a1 + 4);
  if (a2)
  {
    v3 = 0;
    while (_PF_SnowLeopard_CFBasicHashTableCapacities[v3] < a1[2] + a2)
    {
      if (++v3 == 64)
      {
        v3 = 0;
        break;
      }
    }
  }

  v4 = _PF_SnowLeopard_CFBasicHashTableSizes[v3];
  v5 = _PF_SnowLeopard_CFBasicHashTableSizes[*(a1 + 4)];
  if (v4 < 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = 8 * v4;
    v7 = malloc_type_malloc(8 * v4, 0x80040B8603338uLL);
    bzero(v7, v6);
    if ((*a1 & 0x80000000) != 0)
    {
      v8 = malloc_type_malloc(v6, 0x80040B8603338uLL);
      bzero(v8, v6);
      goto LABEL_11;
    }
  }

  v8 = 0;
LABEL_11:
  *(a1 + 4) = v3;
  *(a1 + 8) = 0;
  v18 = *(a1 + 3);
  *(a1 + 3) = v7;
  if ((*a1 & 0x80000000) != 0)
  {
    v9 = *(a1 + 4);
    *(a1 + 4) = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v5 >= 1)
  {
    v10 = v18;
    v11 = v9;
    do
    {
      v13 = *v10++;
      v12 = v13;
      if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        if (v12 == 2814029233)
        {
          v12 = 0;
        }

        if (v12 == 2780474809)
        {
          v14 = -1;
        }

        else
        {
          v14 = v12;
        }

        if ((*a1 & 0x80000000) != 0 && v9)
        {
          if (*v11 == 2780474809)
          {
            v15 = -1;
          }

          else
          {
            v15 = *v11;
          }

          if (*v11 == 2814029233)
          {
            v16 = 0;
          }

          else
          {
            v16 = v15;
          }

          Bucket_NoCollision = _PF_SnowLeopard_CFBasicHashFindBucket_NoCollision(a1, v16);
          *(*(a1 + 3) + 8 * Bucket_NoCollision) = v14;
        }

        else
        {
          if ((*a1 & 0x80000000) != 0)
          {
            v16 = 0;
          }

          else
          {
            v16 = v14;
          }

          Bucket_NoCollision = _PF_SnowLeopard_CFBasicHashFindBucket_NoCollision(a1, v16);
          *(*(a1 + 3) + 8 * Bucket_NoCollision) = v14;
          if (!v9)
          {
            goto LABEL_36;
          }
        }

        *(*(a1 + ((*a1 >> 28) & 8) + 24) + 8 * Bucket_NoCollision) = v16;
      }

LABEL_36:
      ++v11;
      --v5;
    }

    while (v5);
  }

  free(v18);

  free(v9);
}

unint64_t _PF_SnowLeopard_CFBasicHashAddValue(unint64_t result, unint64_t a2, __CFString *a3, uint64_t a4)
{
  v6 = result;
  v7 = 0;
  ++*(result + 18);
  v8 = *(result + 8);
  while (1)
  {
    v9 = _PF_SnowLeopard_CFBasicHashTableCapacities[v7];
    if (v9 >= v8)
    {
      break;
    }

    if (++v7 == 64)
    {
      v9 = 0;
      break;
    }
  }

  v10 = (v8 + 1);
  if (v9 >= v10)
  {
    v11 = *(result + 24);
    if (*(v11 + 8 * a2) == -1)
    {
      --*(result + 16);
    }
  }

  else
  {
    _PF_SnowLeopard_CFBasicHashRehash(result, 1);
    result = _PF_SnowLeopard_CFBasicHashFindBucket_NoCollision(v6, a3);
    a2 = result;
    v11 = *(v6 + 3);
    LODWORD(v10) = v6[2] + 1;
  }

  *(v11 + 8 * a2) = a4;
  *(*(v6 + ((*v6 >> 28) & 8) + 24) + 8 * a2) = a3;
  v6[2] = v10;
  return result;
}

unint64_t _PF_SnowLeopard_CFBasicHashSetValue(unsigned int *a1, __CFString *a2, uint64_t a3)
{
  v8 = 0u;
  v9 = 0u;
  result = _PF_SnowLeopard_CFBasicHashFindBucket(a1, a2, &v8);
  v7 = v8;
  if (*(&v9 + 1))
  {
    ++*(a1 + 9);
    *(*(a1 + 3) + 8 * v7) = a3;
    *(*(a1 + ((*a1 >> 28) & 8) + 24) + 8 * v7) = a2;
  }

  else
  {

    return _PF_SnowLeopard_CFBasicHashAddValue(a1, v7, a2, a3);
  }

  return result;
}

unsigned int *_PF_SnowLeopard_CFBasicHashGetBucket@<X0>(unsigned int *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a2;
  v3 = a3 + 1;
  v4 = *(*(result + 3) + 8 * a2);
  if ((v4 - 1) >= 0xFFFFFFFFFFFFFFFELL)
  {
    *v3 = 0;
    a3[2] = 0;
    a3[3] = 0;
  }

  else
  {
    v5 = -1;
    if (v4 != 2780474809)
    {
      v5 = *(*(result + 3) + 8 * a2);
    }

    if (v4 == 2814029233)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }

    a3[2] = v6;
    a3[3] = 1;
    v7 = *(*(result + ((*result >> 28) & 8) + 24) + 8 * a2);
    if (v7 == 2814029233)
    {
      v7 = 0;
    }

    else if (v7 == 2780474809)
    {
      v7 = -1;
    }

    *v3 = v7;
  }

  return result;
}

unsigned int *_PF_SnowLeopard_CFDictionaryGetValues(unsigned int *result, uint64_t a2)
{
  v2 = result[2];
  v3 = _PF_SnowLeopard_CFBasicHashTableSizes[*(result + 4)];
  if (v2)
  {
    v4 = v3 < 1;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v6 = result;
    v7 = 0;
    v8 = 0;
    do
    {
      v12 = 0u;
      v13 = 0u;
      result = _PF_SnowLeopard_CFBasicHashGetBucket(v6, v7, &v12);
      if (*(&v13 + 1))
      {
        --v2;
        if (v8 < v3)
        {
          v9 = v13;
          v10 = *(&v13 + 1) - 1;
          do
          {
            *(a2 + 8 * v8++) = v9;
            v11 = v10-- != 0;
          }

          while (v11 && v8 < v3);
        }
      }

      if (v2 < 1)
      {
        break;
      }

      ++v7;
    }

    while (v7 < v3);
  }

  return result;
}

unsigned int *snapshot_set_int32(char *a1, unsigned int a2, int a3)
{
  Class = object_getClass(a1);
  result = object_getIndexedIvars(Class);
  a1[(a2 >> 3) + 28] &= ~(1 << (a2 & 7));
  *&a1[result[a2 + 19]] = a3;
  return result;
}

unsigned int *snapshot_set_float(char *a1, unsigned int a2, float a3)
{
  Class = object_getClass(a1);
  result = object_getIndexedIvars(Class);
  a1[(a2 >> 3) + 28] &= ~(1 << (a2 & 7));
  *&a1[result[a2 + 19]] = a3;
  return result;
}

void sub_1858AD940(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    v5 = objc_begin_catch(exception_object);
    if (a2 == 2)
    {
      v6 = v5;
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        v8 = [v6 userInfo];
        *(v3 - 96) = 138412546;
        *(v2 + 4) = v6;
        *(v3 - 84) = 2112;
        *(v2 + 14) = v8;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Exception %@ ui %@ occurred in +[_CDSnapshot _invalidateStaticCaches:] objc_disposeClassPair\n", (v3 - 96), 0x16u);
      }

      v9 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v10 = [v6 userInfo];
        *(v3 - 96) = 138412546;
        *(v2 + 4) = v6;
        *(v3 - 84) = 2112;
        *(v2 + 14) = v10;
        _os_log_fault_impl(&dword_18565F000, v9, OS_LOG_TYPE_FAULT, "CoreData: Exception %@ ui %@ occurred in +[_CDSnapshot _invalidateStaticCaches:] objc_disposeClassPair", (v3 - 96), 0x16u);
      }

      objc_exception_rethrow();
    }

    v11 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *(v3 - 96) = 0;
      _os_log_error_impl(&dword_18565F000, v11, OS_LOG_TYPE_ERROR, "CoreData: fault: Unknown exception occurred in +[_CDSnapshot _invalidateStaticCaches:] objc_disposeClassPair\n", (v3 - 96), 2u);
    }

    v12 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *(v3 - 96) = 0;
      _os_log_fault_impl(&dword_18565F000, v12, OS_LOG_TYPE_FAULT, "CoreData: Unknown exception occurred in +[_CDSnapshot _invalidateStaticCaches:] objc_disposeClassPair", (v3 - 96), 2u);
    }

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1858ADD0C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1858ADCCCLL);
}

void sub_1858AE834(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1858AE838);
  }

  objc_terminate();
}

void sub_1858B2BF8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_1858B49F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1858B5AD8(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1858B5820);
  }

  JUMPOUT(0x1858B5B08);
}

void sub_1858B5EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 buf)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      buf = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault:  NSXPCStoreConnectionManager tried to blow a lock\n", &buf, 2u);
    }

    v12 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      buf = 0;
      _os_log_fault_impl(&dword_18565F000, v12, OS_LOG_TYPE_FAULT, "CoreData:  NSXPCStoreConnectionManager tried to blow a lock", &buf, 2u);
    }

    objc_end_catch();
    JUMPOUT(0x1858B5E3CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1858B6294(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  v12 = a1;
  if (!a2)
  {
LABEL_26:
    _Unwind_Resume(v12);
  }

  if (a2 == 3)
  {
    v14 = objc_begin_catch(a1);
    v15 = objc_autoreleasePoolPush();
    if (!_NSCoreDataIsOSLogEnabled(1))
    {
      goto LABEL_8;
    }

    if (_pflogging_catastrophic_mode)
    {
      LogStream = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v14;
    }

    else
    {
      LogStream = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v14;
    }

    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: manager sendMessageWithContext: failed with error bearing exception: %@\n", &buf, 0xCu);
LABEL_8:
    _NSCoreDataLog_console(1, "manager sendMessageWithContext: failed with error bearing exception: %@");
    objc_autoreleasePoolPop(v15);
    v18 = *(v11 + 40);
    if (v18)
    {
      objc_setProperty_nonatomic(v18, v17, 0, 24);
    }

    v20 = [v14 errorObjectWithUserInfo:0];
    v21 = *(v11 + 40);
    if (v21)
    {
      objc_setProperty_nonatomic(v21, v19, v20, 32);
    }

    objc_end_catch();
    JUMPOUT(0x1858B6118);
  }

  v22 = objc_begin_catch(a1);
  if (a2 == 2)
  {
    v12 = v22;
    v23 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v12;
      _os_log_error_impl(&dword_18565F000, v23, OS_LOG_TYPE_ERROR, "CoreData: fault: manager sendMessageWithContext: failed with exception (how? it should never throw): %@\n", &buf, 0xCu);
    }

    v24 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v12;
    v25 = "CoreData: manager sendMessageWithContext: failed with exception (how? it should never throw): %@";
    v26 = v24;
    v27 = 12;
  }

  else
  {
    v28 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_18565F000, v28, OS_LOG_TYPE_ERROR, "CoreData: fault: manager sendMessageWithContext failed with unknown exception\n", &buf, 2u);
    }

    v12 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    LOWORD(buf) = 0;
    v25 = "CoreData: manager sendMessageWithContext failed with unknown exception";
    v26 = v12;
    v27 = 2;
  }

  _os_log_fault_impl(&dword_18565F000, v26, OS_LOG_TYPE_FAULT, v25, &buf, v27);
LABEL_25:
  __break(1u);
  goto LABEL_26;
}

void sub_1858B6514(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    objc_begin_catch(a1);
    JUMPOUT(0x1858B6214);
  }

  _Unwind_Resume(a1);
}

void sub_1858B6558(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1858B655CLL);
  }

  objc_terminate();
}

void sub_1858B6650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1858B6A28(_Unwind_Exception *a1)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void sub_1858B6A74(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1858B6C44);
  }

  v4 = objc_begin_catch(a1);
  if (a2 != 2)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      LOWORD(STACK[0x240]) = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: disconnectAllConnections failed with unknown excception\n", &STACK[0x240], 2u);
    }

    v9 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      LOWORD(STACK[0x240]) = 0;
      _os_log_fault_impl(&dword_18565F000, v9, OS_LOG_TYPE_FAULT, "CoreData: disconnectAllConnections failed with unknown excception", &STACK[0x240], 2u);
    }

    JUMPOUT(0x1858B6BFCLL);
  }

  v5 = v4;
  v6 = objc_autoreleasePoolPush();
  if (_NSCoreDataIsOSLogEnabled(1))
  {
    if (_pflogging_catastrophic_mode)
    {
      v7 = _PFLogGetLogStream(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LODWORD(STACK[0x240]) = 138412290;
        STACK[0x244] = v5;
LABEL_10:
        _os_log_error_impl(&dword_18565F000, v7, OS_LOG_TYPE_ERROR, "CoreData: error: disconnectAllConnections failed with excception: %@\n", &STACK[0x240], 0xCu);
      }
    }

    else
    {
      v7 = _PFLogGetLogStream(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LODWORD(STACK[0x240]) = 138412290;
        STACK[0x244] = v5;
        goto LABEL_10;
      }
    }
  }

  _NSCoreDataLog_console(1, "disconnectAllConnections failed with excception: %@");
  objc_autoreleasePoolPop(v6);
  *(*(*(v2 + 40) + 8) + 40) = v5;
  objc_end_catch();
  JUMPOUT(0x1858B68A8);
}

void sub_1858B6C00(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    objc_begin_catch(a1);
    JUMPOUT(0x1858B68ACLL);
  }

  _Unwind_Resume(a1);
}

void sub_1858B6C3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1858B6C40);
  }

  objc_terminate();
}

void *standardizedURL(void *a1)
{
  v1 = a1;
  if ([a1 isFileURL])
  {
    v2 = realpath_DARWIN_EXTSN([objc_msgSend(v1 "path")], 0);
    if (v2)
    {
      v3 = v2;
      v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:objc_msgSend(MEMORY[0x1E696AEC0] isDirectory:{"stringWithUTF8String:", v2), 0}];
LABEL_6:
      v1 = v4;
      free(v3);
      return v1;
    }

    v5 = [v1 lastPathComponent];
    v6 = realpath_DARWIN_EXTSN([objc_msgSend(objc_msgSend(v1 "URLByDeletingLastPathComponent")], 0);
    if (v6)
    {
      v3 = v6;
      v4 = [objc_msgSend(MEMORY[0x1E695DFF8] fileURLWithPath:objc_msgSend(MEMORY[0x1E696AEC0] isDirectory:{"stringWithUTF8String:", v6), 1), "URLByAppendingPathComponent:", v5}];
      goto LABEL_6;
    }
  }

  return v1;
}

void sub_1858BAACC(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v34 = objc_begin_catch(exc_buf);
      objc_end_catch();
    }

    else
    {
      objc_begin_catch(exc_buf);
    }

    JUMPOUT(0x1858BA8E8);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1858BD5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1858BE1F4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    objc_destroyWeak((v73 + 40));
    objc_destroyWeak((v72 + 32));
    objc_destroyWeak((v71 + 32));
    objc_destroyWeak((v70 + 32));
    objc_destroyWeak((v69 + 32));
    objc_destroyWeak(&location);
    _Block_object_dispose(&STACK[0x250], 8);
    _Block_object_dispose(&STACK[0x280], 8);
    objc_begin_catch(a1);
    JUMPOUT(0x1858BE138);
  }

  _Unwind_Resume(a1);
}

void sub_1858BEE30(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1858BECF0);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1858BFA10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, uint64_t a17, uint64_t a18, __CFString *a19, __CFString *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __CFString *a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  objc_destroyWeak((v33 + 40));
  if (a2 == 1)
  {
    v36 = objc_begin_catch(a1);
    v37 = MEMORY[0x1E696ABC0];
    v38 = *MEMORY[0x1E696A588];
    a27 = @"CloudKit setup failed because it couldn't register a handler for the setup activity. There is another instance of this persistent store actively syncing with CloudKit in this process.";
    v39 = *MEMORY[0x1E696A998];
    a17 = v38;
    a18 = v39;
    a28 = [v31 URL];
    a29 = v36;
    a19 = @"NSUnderlyingException";
    a20 = @"activityIdentifier";
    a30 = *(v30 + 176);
    v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a27 forKeys:&a17 count:4];
    v41 = [v37 errorWithDomain:*MEMORY[0x1E696A250] code:134422 userInfo:v40];
    objc_end_catch();
    objc_destroyWeak(&location);
    [NSCloudKitMirroringDelegate resetAfterError:v30 andKeepContainer:v41];
    v42 = *(v32 + 3776);
    [v41 domain];
    [v41 code];
    -[NSCloudKitMirroringDelegate tearDown:](v30, [v42 stringWithFormat:@"Error %@:%ld"]);
    JUMPOUT(0x1858BF9C8);
  }

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1858C110C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1858C2664()
{
  if (v0)
  {
    JUMPOUT(0x1858C266CLL);
  }

  JUMPOUT(0x1858C2670);
}

void sub_1858C492C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 136));
  _Unwind_Resume(a1);
}

void sub_1858C4F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1858C518C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1858C55D8(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1858C5584);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1858C5FB8(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1858C5F64);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1858C64F4(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1858C6498);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1858C6BD0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_destroyWeak((v2 + 48));
    objc_destroyWeak((v3 - 160));
    objc_begin_catch(exception_object);
    JUMPOUT(0x1858C6B64);
  }

  _Unwind_Resume(exception_object);
}

void sub_1858C6ED4(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1858C6E8CLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1858C736C(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1858C7318);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1858C75B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);
  objc_begin_catch(a1);
  JUMPOUT(0x1858C7534);
}

void sub_1858C7B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1858C7DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_1858C853C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1858C8A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_1858C8F78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1858CA8C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  _Block_object_dispose(va2, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1858CBEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1858CF480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_1858CFE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1858D0878(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __CFString *a37, uint64_t a38, uint64_t a39, __CFString *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint8_t buf, int a46, int a47, __int16 a48, __int16 a49, __int16 a50, __int16 a51, int a52, int a53, __int16 a54)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v55 = objc_begin_catch(exc_buf);
      *(*(*(v54 + 64) + 8) + 24) = 0;
      v56 = objc_alloc(MEMORY[0x1E696ABC0]);
      v57 = *MEMORY[0x1E696A588];
      a37 = @"NSUnderlyingException";
      a38 = v57;
      a39 = v55;
      a40 = @"Attempt to schedule an import failed because of an unhandled exception.";
      v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a39 forKeys:&a37 count:2];
      *(*(*(v54 + 72) + 8) + 40) = [v56 initWithDomain:*MEMORY[0x1E696A250] code:134421 userInfo:v58];
      objc_end_catch();
      JUMPOUT(0x1858D0794);
    }

    objc_begin_catch(exc_buf);
    JUMPOUT(0x1858D0798);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1858D1A14(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __CFString *a19, uint64_t a20, uint64_t a21, __CFString *a22)
{
  if (a2 == 1)
  {
    v23 = objc_begin_catch(exc_buf);
    *(*(*(v22 + 72) + 8) + 24) = 0;
    v24 = objc_alloc(MEMORY[0x1E696ABC0]);
    v25 = *MEMORY[0x1E696A588];
    a19 = @"NSUnderlyingException";
    a20 = v25;
    a21 = v23;
    a22 = @"Encountered an unhandled exception while marking zones needing recovery from Manatee identity loss.";
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a21 forKeys:&a19 count:2];
    *(*(*(v22 + 64) + 8) + 40) = [v24 initWithDomain:*MEMORY[0x1E696A250] code:134421 userInfo:v26];
    objc_end_catch();
    JUMPOUT(0x1858D1960);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1858D1DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1858D260C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void sub_1858D4890(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v9 = objc_begin_catch(exc_buf);
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        LODWORD(a9) = 138412290;
        *(&a9 + 4) = v9;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unhandled exception in rowCacheForGeneration %@\n", &a9, 0xCu);
      }

      v11 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        LODWORD(a9) = 138412290;
        *(&a9 + 4) = v9;
        _os_log_fault_impl(&dword_18565F000, v11, OS_LOG_TYPE_FAULT, "CoreData: Unhandled exception in rowCacheForGeneration %@", &a9, 0xCu);
      }

      objc_end_catch();
      JUMPOUT(0x1858D4810);
    }

    objc_begin_catch(exc_buf);
    JUMPOUT(0x1858D4814);
  }

  JUMPOUT(0x1858D4884);
}

void sub_1858D4B08(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(v2 + 8);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1858D5274(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1858D5230);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1858D5A44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v36 = objc_begin_catch(exception_object);
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        v39 = *(v33 + 40);
        *(v35 - 128) = 138412546;
        *(v34 + 4) = v39;
        *(v35 - 116) = 2112;
        *(v34 + 14) = v36;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: %@ - Exception thrown during import: %@\n", (v35 - 128), 0x16u);
      }

      v38 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        v40 = *(v33 + 40);
        *(v35 - 128) = 138412546;
        *(v34 + 4) = v40;
        *(v35 - 116) = 2112;
        *(v34 + 14) = v36;
        _os_log_fault_impl(&dword_18565F000, v38, OS_LOG_TYPE_FAULT, "CoreData: %@ - Exception thrown during import: %@", (v35 - 128), 0x16u);
      }

      objc_end_catch();
    }

    else
    {
      objc_begin_catch(exception_object);
    }

    JUMPOUT(0x1858D58D0);
  }

  _Unwind_Resume(exception_object);
}

void sub_1858D5F08(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __CFString *a11, uint64_t a12, uint64_t a13, __CFString *a14)
{
  if (a2 == 1)
  {
    v15 = objc_begin_catch(exc_buf);
    *(*(*(v14 + 64) + 8) + 24) = 0;
    v16 = objc_alloc(MEMORY[0x1E696ABC0]);
    v17 = *MEMORY[0x1E696A588];
    a11 = @"NSUnderlyingException";
    a12 = v17;
    a13 = v15;
    a14 = @"Import failed because committing the metadata changes hit an unhandled exception.";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a13 forKeys:&a11 count:2];
    *(*(*(v14 + 56) + 8) + 40) = [v16 initWithDomain:*MEMORY[0x1E696A250] code:134421 userInfo:v18];
    objc_end_catch();
    JUMPOUT(0x1858D5E08);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1858D664C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1858D7594(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, __CFString *a49, uint64_t a50, uint64_t a51, __CFString *a52)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v53 = objc_begin_catch(exc_buf);
      *(*(*(v52 + 72) + 8) + 24) = 0;
      v54 = objc_alloc(MEMORY[0x1E696ABC0]);
      v55 = *MEMORY[0x1E696A588];
      a49 = @"NSUnderlyingException";
      a50 = v55;
      a51 = v53;
      a52 = @"Import failed because applying the accumulated changes hit an unhandled exception.";
      v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a51 forKeys:&a49 count:2];
      *(*(*(v52 + 56) + 8) + 40) = [v54 initWithDomain:*MEMORY[0x1E696A250] code:134421 userInfo:v56];
      objc_end_catch();
      JUMPOUT(0x1858D72B8);
    }

    objc_begin_catch(exc_buf);
    JUMPOUT(0x1858D72BCLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1858D8AD4(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(exc_buf);
      JUMPOUT(0x1858D89A0);
    }

    v17 = objc_begin_catch(exc_buf);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exc_buf);
}

void sub_1858D8BD8(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1858D8BACLL);
  }

  JUMPOUT(0x1858D8B84);
}

void sub_1858D9EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1858DA028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1858DA658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1858DA970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1858DAA78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1858DAB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1858DC8C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1858DD358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);
  _Unwind_Resume(a1);
}

void sub_1858DE2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void sub_1858DEEDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void sub_1858DF664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1858DFCC0(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1858DFC54);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1858E0054(void *exc_buf, int a2)
{
  if (a2 == 2)
  {
    v3 = objc_begin_catch(exc_buf);
    if (v2)
    {
      objc_setProperty_nonatomic(v2, v4, v3, 48);
    }

    objc_end_catch();
    JUMPOUT(0x1858DFFF8);
  }

  objc_begin_catch(exc_buf);
  JUMPOUT(0x1858DFFFCLL);
}

void sub_1858E22AC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x1858E214CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1858E3DB4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

void sub_1858E5548(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

void sub_1858E7700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location)
{
  objc_destroyWeak(&a30);
  objc_destroyWeak(&a35);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1858E7D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1858E83F4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    _Block_object_dispose(&a61, 8);
    _Block_object_dispose(&a65, 8);
    objc_begin_catch(a1);
    JUMPOUT(0x1858E8358);
  }

  _Unwind_Resume(a1);
}

void sub_1858E9D6C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1858E9B54);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1858E9E88(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1858E9454);
  }

  JUMPOUT(0x1858E9E74);
}

void sub_1858EB1F4(void *exc_buf, int a2)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(exc_buf);
      JUMPOUT(0x1858EAF58);
    }

    objc_begin_catch(exc_buf);
    *(*(v2 - 120) + 24) = 0;
    objc_exception_rethrow();
  }

  JUMPOUT(0x1858EB278);
}

void sub_1858EB22C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1858EB204);
  }

  JUMPOUT(0x1858EB278);
}

void sub_1858EB240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1858EB280(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1858EB278);
}

void sub_1858EC750(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

void sub_1858EC860(void *a1, int a2)
{
  if (a2)
  {
    objc_begin_catch(a1);
    JUMPOUT(0x1858EC584);
  }

  JUMPOUT(0x1858EC858);
}

void sub_1858ECEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1858EDCA4(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1858EDC18);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1858EDDBC(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1858EDC2CLL);
  }

  JUMPOUT(0x1858EDDA0);
}

uint64_t recordIDComparator_block_invoke(uint64_t a1, void *a2, void *a3)
{
  result = [objc_msgSend(a2 "recordName")];
  if (!result)
  {
    result = [objc_msgSend(objc_msgSend(a2 "zoneID")];
    if (!result)
    {
      v6 = [objc_msgSend(a2 "zoneID")];
      v7 = [objc_msgSend(a3 "zoneID")];

      return [v6 caseInsensitiveCompare:v7];
    }
  }

  return result;
}

void sub_1858F0014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void sub_1858F2418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Unwind_Resume(a1);
}

void sub_1858F2C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Unwind_Resume(a1);
}

void sub_1858F74E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1858F7EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(&a19);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1858F8B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1858F95D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1858F9D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1858F9E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1858FB5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1858FD550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x1858FD44CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1858FE064(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1858FDF10);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1858FE60C(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1858FE510);
  }

  _Unwind_Resume(exc_buf);
}

Class initCoreSpotlightCSSearchableItem()
{
  if (_MergedGlobals_89 != -1)
  {
    dispatch_once(&_MergedGlobals_89, &__block_literal_global_33);
  }

  result = objc_getClass("CSSearchableItem");
  qword_1ED4BEBB8 = result;
  getCoreSpotlightCSSearchableItemClass = CoreSpotlightCSSearchableItemFunction;
  return result;
}

Class initCoreSpotlightCSSearchableItemAttributeSet()
{
  if (_MergedGlobals_89 != -1)
  {
    dispatch_once(&_MergedGlobals_89, &__block_literal_global_33);
  }

  result = objc_getClass("CSSearchableItemAttributeSet");
  qword_1ED4BEBC0 = result;
  getCoreSpotlightCSSearchableItemAttributeSetClass = CoreSpotlightCSSearchableItemAttributeSetFunction;
  return result;
}

Class initCoreSpotlightCSCustomAttributeKey()
{
  if (_MergedGlobals_89 != -1)
  {
    dispatch_once(&_MergedGlobals_89, &__block_literal_global_33);
  }

  result = objc_getClass("CSCustomAttributeKey");
  qword_1ED4BEBC8 = result;
  getCoreSpotlightCSCustomAttributeKeyClass = CoreSpotlightCSCustomAttributeKeyFunction;
  return result;
}

void sub_185900C00()
{
  if (v0)
  {
    JUMPOUT(0x185900C08);
  }

  JUMPOUT(0x185900C0CLL);
}

void sub_1859010EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_185901388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, __CFString *a11, uint64_t a12)
{
  if (a2 == 2)
  {
    v13 = objc_begin_catch(exception_object);
    *(*(*(v12 + 40) + 8) + 24) = 0;
    v14 = objc_alloc(MEMORY[0x1E696ABC0]);
    a11 = @"NSUnderlyingException";
    a12 = v13;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a12 forKeys:&a11 count:1];
    *(*(*(v12 + 48) + 8) + 40) = [v14 initWithDomain:*MEMORY[0x1E696A250] code:134402 userInfo:v15];
  }

  else
  {
    if (a2 != 1)
    {
      _Unwind_Resume(exception_object);
    }

    v16 = objc_begin_catch(exception_object);
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      LODWORD(a9) = 138412290;
      *(&a9 + 4) = v16;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unexpected exception thrown during metadata migration: %@\n", &a9, 0xCu);
    }

    v18 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      LODWORD(a9) = 138412290;
      *(&a9 + 4) = v16;
      _os_log_fault_impl(&dword_18565F000, v18, OS_LOG_TYPE_FAULT, "CoreData: Unexpected exception thrown during metadata migration: %@", &a9, 0xCu);
    }
  }

  objc_end_catch();
  JUMPOUT(0x185901334);
}

void sub_185903D38(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x5B0], 8);
  _Block_object_dispose(&STACK[0x5F8], 8);
  _Block_object_dispose(&STACK[0x560], 8);
  _Block_object_dispose(&STACK[0x590], 8);
  _Unwind_Resume(a1);
}

void sub_185904714(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __CFString *a12, uint64_t a13, uint64_t a14, __CFString *a15)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v16 = objc_begin_catch(exc_buf);
      *(*(*(v15 + 56) + 8) + 24) = 0;
      v17 = objc_alloc(MEMORY[0x1E696ABC0]);
      v18 = *MEMORY[0x1E696A588];
      a12 = @"NSUnderlyingException";
      a13 = v18;
      a14 = v16;
      a15 = @"Metadata migration failed due to an unhandled exception while fetching zone metadata.";
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a14 forKeys:&a12 count:2];
      *(*(*(v15 + 48) + 8) + 40) = [v17 initWithDomain:*MEMORY[0x1E696A250] code:134402 userInfo:v19];
      objc_end_catch();
      JUMPOUT(0x1859046A0);
    }

    objc_begin_catch(exc_buf);
    JUMPOUT(0x1859046A4);
  }

  JUMPOUT(0x185904708);
}

void sub_185906C14(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a2 == 2)
  {
    v21 = objc_begin_catch(a1);
    *(*(*(a20 + 40) + 8) + 24) = 0;
    v22 = objc_alloc(MEMORY[0x1E696ABC0]);
    STACK[0x2A0] = @"NSUnderlyingException";
    STACK[0x2A8] = v21;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&STACK[0x2A8] forKeys:&STACK[0x2A0] count:1];
    *(*(*(a20 + 48) + 8) + 40) = [v22 initWithDomain:*MEMORY[0x1E696A250] code:134402 userInfo:v23];
  }

  else
  {
    if (a2 != 1)
    {
      _Unwind_Resume(a1);
    }

    v24 = objc_begin_catch(a1);
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *(v20 - 192) = 138412290;
      STACK[0x654] = v24;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unexpected exception thrown during metadata migration: %@\n", (v20 - 192), 0xCu);
    }

    v26 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      *(v20 - 192) = 138412290;
      STACK[0x654] = v24;
      _os_log_fault_impl(&dword_18565F000, v26, OS_LOG_TYPE_FAULT, "CoreData: Unexpected exception thrown during metadata migration: %@", (v20 - 192), 0xCu);
    }
  }

  objc_end_catch();
  JUMPOUT(0x185906AB0);
}

void sub_185907748(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __CFString *a33, uint64_t a34)
{
  if (a2 == 1)
  {
    v34 = objc_begin_catch(exc_buf);
    v35 = objc_alloc(MEMORY[0x1E696ABC0]);
    a33 = @"NSUnderlyingException";
    a34 = v34;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a34 forKeys:&a33 count:1];
    [v35 initWithDomain:*MEMORY[0x1E696A250] code:134402 userInfo:v36];
    objc_end_catch();
    JUMPOUT(0x1859075F0);
  }

  _Unwind_Resume(exc_buf);
}

void sub_185907D24(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30)
{
  if (a2 == 1)
  {
    v32 = objc_begin_catch(exc_buf);
    *(a30 + 24) = 0;
    v33 = objc_alloc(MEMORY[0x1E696ABC0]);
    *(v30 - 176) = @"NSUnderlyingException";
    *(v30 - 168) = v32;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 - 168 forKeys:v30 - 176 count:1];
    v35 = [v33 initWithDomain:*MEMORY[0x1E696A250] code:134402 userInfo:v34];
    *(a24 + 40) = v35;
    objc_end_catch();
    JUMPOUT(0x185907B98);
  }

  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(exc_buf);
}

void sub_1859083BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

void sub_18590884C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_185908F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&a22, 8);
  _Unwind_Resume(a1);
}

void sub_185909CF4(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x185909BA0);
  }

  JUMPOUT(0x1859099B4);
}

void sub_18590A368(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18590A29CLL);
  }

  JUMPOUT(0x18590A18CLL);
}

void sub_18590ABC4(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __CFString *a18, uint64_t a19)
{
  if (a2 == 1)
  {
    v20 = objc_begin_catch(exc_buf);
    *(*(*(v19 + 72) + 8) + 24) = 0;
    v21 = objc_alloc(MEMORY[0x1E696ABC0]);
    a18 = @"NSUnderlyingException";
    a19 = v20;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a19 forKeys:&a18 count:1];
    *(*(*(v19 + 64) + 8) + 40) = [v21 initWithDomain:*MEMORY[0x1E696A250] code:134402 userInfo:v22];
    objc_end_catch();
    JUMPOUT(0x18590AB04);
  }

  _Unwind_Resume(exc_buf);
}

void sub_18590B048(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __CFString *a23, uint64_t a24)
{
  if (a2 == 1)
  {
    v24 = objc_begin_catch(exc_buf);
    *(*(*(a10 + 56) + 8) + 24) = 0;
    v25 = objc_alloc(MEMORY[0x1E696ABC0]);
    a23 = @"NSUnderlyingException";
    a24 = v24;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a24 forKeys:&a23 count:1];
    *(*(*(a10 + 48) + 8) + 40) = [v25 initWithDomain:*MEMORY[0x1E696A250] code:134402 userInfo:v26];
    objc_end_catch();
    JUMPOUT(0x18590AF60);
  }

  _Unwind_Resume(exc_buf);
}

void sub_18590B684(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __CFString *a33, uint64_t a34)
{
  if (a2 == 1)
  {
    v34 = objc_begin_catch(exc_buf);
    v35 = MEMORY[0x1E696ABC0];
    a33 = @"NSUnderlyingException";
    a34 = v34;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a34 forKeys:&a33 count:1];
    [v35 errorWithDomain:*MEMORY[0x1E696A250] code:134402 userInfo:v36];
    objc_end_catch();
    JUMPOUT(0x18590B514);
  }

  _Unwind_Resume(exc_buf);
}

void sub_18590BC50(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __CFString *a35, uint64_t a36, uint64_t a37, __CFString *a38)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v38 = objc_begin_catch(exc_buf);
      *(*(*(a16 + 64) + 8) + 24) = 0;
      v39 = objc_alloc(MEMORY[0x1E696ABC0]);
      v40 = *MEMORY[0x1E696A588];
      a35 = @"NSUnderlyingException";
      a36 = v40;
      a37 = v38;
      a38 = @"Metadata migration failed due to an unhandled exception while fetching zone metadata.";
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a37 forKeys:&a35 count:2];
      *(*(*(a16 + 56) + 8) + 40) = [v39 initWithDomain:*MEMORY[0x1E696A250] code:134402 userInfo:v41];
      objc_end_catch();
      JUMPOUT(0x18590BBFCLL);
    }

    objc_begin_catch(exc_buf);
    JUMPOUT(0x18590BC00);
  }

  _Unwind_Resume(exc_buf);
}

void sub_18590C438(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __CFString *a18, uint64_t a19)
{
  if (a2 == 1)
  {
    v21 = objc_begin_catch(exc_buf);
    *(*(*(v20 + 64) + 8) + 24) = 0;
    v22 = objc_alloc(MEMORY[0x1E696ABC0]);
    a18 = @"NSUnderlyingException";
    a19 = v21;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a19 forKeys:&a18 count:1];
    *(*(*(v20 + 56) + 8) + 40) = [v22 initWithDomain:*MEMORY[0x1E696A250] code:134402 userInfo:v23];
    *v19 = 1;
    objc_end_catch();
    JUMPOUT(0x18590C3F4);
  }

  _Unwind_Resume(exc_buf);
}

void sub_18590CF94(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18590CE74);
  }

  JUMPOUT(0x18590CC58);
}

void sub_18590D17C(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18590D188);
  }

  JUMPOUT(0x18590D170);
}

void sub_18590D46C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18590D374);
  }

  JUMPOUT(0x18590D170);
}

NSAttributeDescription *makeAttribute(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(NSAttributeDescription);
  [(NSPropertyDescription *)v4 setName:a1];
  [(NSAttributeDescription *)v4 setAttributeType:a2];

  return v4;
}

void sub_18590DB68(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __int128 buf)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v35 = objc_begin_catch(a1);
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        v38 = [objc_msgSend(v35 "reason")];
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v38;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: unexpected failure updating index statistics: %s\n", &buf, 0xCu);
      }

      v37 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        v39 = [objc_msgSend(v35 "reason")];
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v39;
        _os_log_fault_impl(&dword_18565F000, v37, OS_LOG_TYPE_FAULT, "CoreData: unexpected failure updating index statistics: %s", &buf, 0xCu);
      }

      objc_end_catch();
    }

    else
    {
      objc_begin_catch(a1);
    }

    JUMPOUT(0x18590DAC4);
  }

  _Unwind_Resume(a1);
}

void sub_18590F7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

NSBatchInsertResult *_executeBatchInsertRequest(uint64_t a1)
{
  v76 = *MEMORY[0x1E69E9840];
  v2 = [a1 persistentStoreRequest];
  v3 = v2;
  v56 = v2;
  if (!a1)
  {
    v51 = [v2 _secureOperation];
    v8 = [v3 resultType];
    v52 = [0 mergePolicy];
    v4 = 0;
    v7 = 0;
    v55 = 0;
    v10 = v52 == NSMergeByPropertyObjectTrumpMergePolicy;
    if (!v51)
    {
      goto LABEL_10;
    }

LABEL_5:
    [(NSSQLiteConnection *)v4 setSecureDeleteMode:?];
    v55 = 1;
    if (!a1)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v4 = *(a1 + 24);
  v5 = [v2 _secureOperation];
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = (*(v6 + 201) >> 2) & 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v3 resultType];
  v9 = [*(a1 + 32) mergePolicy];
  v10 = v9 == NSMergeByPropertyObjectTrumpMergePolicy;
  if (v5)
  {
    goto LABEL_5;
  }

  v55 = 0;
LABEL_8:
  v11 = *(a1 + 8);
  if (v11)
  {
    [*(v11 + 216) lock];
  }

LABEL_10:
  [(NSSQLiteConnection *)v4 beginTransaction];
  v12 = (v8 == 1) | v7;
  v53 = v7;
  if ((v8 == 1) | v7 & 1 && (!a1 ? (v13 = 0) : (v13 = -[NSSQLBatchOperationRequestContext createObjectIDCaptureStatementsForDrop:](a1, 0)), v67 = 0u, v68 = 0u, v65 = 0u, v66 = 0u, (v14 = [v13 countByEnumeratingWithState:&v65 objects:v75 count:16]) != 0))
  {
    v15 = *v66;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v66 != v15)
        {
          objc_enumerationMutation(v13);
        }

        [(NSSQLiteConnection *)v4 prepareAndExecuteSQLStatement:?];
        v17 = 1;
      }

      v14 = [v13 countByEnumeratingWithState:&v65 objects:v75 count:16];
    }

    while (v14);
  }

  else
  {
    v17 = 0;
  }

  if (a1)
  {
    v18 = *(a1 + 8);
  }

  else
  {
    v18 = 0;
  }

  v54 = v8;
  v19 = _sqlCoreLookupSQLEntityForEntityDescription(v18, [v56 entity]);
  if ([v56 objectsToInsert])
  {
    v20 = -[NSSQLiteConnection insertArray:forEntity:includeOnConflict:](v4, [v56 objectsToInsert], v19, v10);
    goto LABEL_30;
  }

  if ([v56 dictionaryHandler])
  {
    v20 = -[NSSQLiteConnection insertDictionaryBlock:forEntity:includeOnConflict:](v4, [v56 dictionaryHandler], v19, v10);
    goto LABEL_30;
  }

  if ([v56 managedObjectHandler])
  {
    v20 = -[NSSQLiteConnection insertManagedObjectBlock:forEntity:includeOnConflict:](v4, [v56 managedObjectHandler], v19, v10);
LABEL_30:
    v21 = v20;
    if (v12)
    {
      goto LABEL_31;
    }

LABEL_48:
    v25 = 0;
    v30 = 0;
    goto LABEL_49;
  }

  v21 = 0;
  if ((v12 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_31:
  if (a1)
  {
    v22 = *(a1 + 88);
  }

  else
  {
    v22 = 0;
  }

  v23 = [(NSSQLiteConnection *)v4 gatherObjectIDsFromTable:v22];
  v24 = v23;
  if (v53 && [v23 count])
  {
    [(NSSQLiteConnection *)v4 processInsertRequest:a1];
    if (!a1)
    {
      v25 = 0;
      v26 = 0;
      goto LABEL_39;
    }

    v25 = *(a1 + 72);
    goto LABEL_38;
  }

  v25 = 0;
  v26 = 0;
  if (a1)
  {
LABEL_38:
    v26 = [(NSSQLBatchOperationRequestContext *)a1 createObjectIDCaptureStatementsForDrop:?];
  }

LABEL_39:
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v27 = [v26 countByEnumeratingWithState:&v61 objects:v74 count:16];
  if (v27)
  {
    v28 = *v62;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v62 != v28)
        {
          objc_enumerationMutation(v26);
        }

        [(NSSQLiteConnection *)v4 prepareAndExecuteSQLStatement:?];
      }

      v27 = [v26 countByEnumeratingWithState:&v61 objects:v74 count:16];
    }

    while (v27);
  }

  v17 = 0;
  v30 = v24;
LABEL_49:
  [(NSSQLiteConnection *)v4 commitTransaction];
  if (a1)
  {
    v31 = *(a1 + 8);
    if (v31)
    {
      if (atomic_load((v31 + 208)))
      {
        if (v21)
        {
          v33 = [v4 registerCurrentQueryGenerationWithStore:*(a1 + 8)];
          if (v33)
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              LODWORD(v70) = v33;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Batch insert failed to generate a post transaction query generation with error %d\n", buf, 8u);
            }

            v35 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
            {
              *buf = 67109120;
              LODWORD(v70) = v33;
              _os_log_fault_impl(&dword_18565F000, v35, OS_LOG_TYPE_FAULT, "CoreData: Batch insert failed to generate a post transaction query generation with error %d", buf, 8u);
            }
          }
        }

        else if ([(NSSQLStoreRequestContext *)a1 debugLogLevel]>= 1)
        {
          v36 = objc_autoreleasePoolPush();
          _pflogInitialize(6);
          if (_NSCoreDataIsLogEnabled(6) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v37 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v37, OS_LOG_TYPE_ERROR, "CoreData: error: Batch insert did not affect any rows, not registering a query generation\n", buf, 2u);
              }
            }

            else
            {
              v38 = _PFLogGetLogStream(6);
              if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v38, OS_LOG_TYPE_INFO, "CoreData: sql: Batch insert did not affect any rows, not registering a query generation\n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v39 = 1;
          }

          else
          {
            v39 = 6;
          }

          _NSCoreDataLog_console(v39, "Batch insert did not affect any rows, not registering a query generation");
          objc_autoreleasePoolPop(v36);
        }
      }
    }
  }

  if (v54 == 2)
  {
    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v21];
  }

  if (![v56 resultType])
  {
    v30 = [MEMORY[0x1E696AD98] numberWithBool:1];
  }

  if (a1)
  {
    v40 = *(a1 + 24);
  }

  else
  {
    v40 = 0;
  }

  [(NSSQLiteConnection *)v40 _performPostSaveTasks:v55 andForceFullVacuum:0];
  if (a1 && (v41 = *(a1 + 8)) != 0)
  {
    [*(v41 + 216) unlock];
    v42 = *(a1 + 8);
  }

  else
  {
    v42 = 0;
  }

  [(NSSQLCore *)v42 _postChangeNotificationWithTransactionID:v25];
  [(NSSQLiteConnection *)v4 endFetchAndRecycleStatement:?];
  if (v17)
  {
    v43 = a1 ? [(NSSQLBatchOperationRequestContext *)a1 createObjectIDCaptureStatementsForDrop:?]: 0;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v44 = [v43 countByEnumeratingWithState:&v57 objects:v73 count:16];
    if (v44)
    {
      v45 = *v58;
      do
      {
        for (k = 0; k != v44; ++k)
        {
          if (*v58 != v45)
          {
            objc_enumerationMutation(v43);
          }

          [(NSSQLiteConnection *)v4 prepareAndExecuteSQLStatement:?];
        }

        v44 = [v43 countByEnumeratingWithState:&v57 objects:v73 count:16];
      }

      while (v44);
    }
  }

  if (v55)
  {
    [(NSSQLiteConnection *)v4 setSecureDeleteMode:?];
  }

  if (v30)
  {
    result = -[NSBatchInsertResult initWithResultType:andObject:]([NSBatchInsertResult alloc], "initWithResultType:andObject:", [v56 resultType], v30);
  }

  else
  {
    v48 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v70 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLCore_Functions.m";
      v71 = 1024;
      v72 = 752;
      _os_log_error_impl(&dword_18565F000, v48, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v49 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v70 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLCore_Functions.m";
      v71 = 1024;
      v72 = 752;
      _os_log_fault_impl(&dword_18565F000, v49, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    }

    result = 0;
  }

  v50 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18591064C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint8_t buf, int a42, int a43, __int16 a44)
{
  if (a2)
  {
    if (a2 == 4 || a2 == 3)
    {
      [objc_begin_catch(exception_object) errorObjectWithUserInfo:0];
      objc_end_catch();
    }

    else
    {
      if (a2 == 2)
      {
        objc_begin_catch(exception_object);
        objc_exception_rethrow();
      }

      objc_begin_catch(exception_object);
    }

    JUMPOUT(0x185910304);
  }

  _Unwind_Resume(exception_object);
}

void sub_1859107E0(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1859107C4);
  }

  JUMPOUT(0x185910A98);
}

void sub_185910A84(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x185910AA8);
  }

  JUMPOUT(0x185910A98);
}

void sub_185910AA0(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18591089CLL);
  }

  JUMPOUT(0x185910A98);
}

uint64_t _deleteExternalDataReferences(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  result = [a1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(a1);
        }

        [*(*(&v7 + 1) + 8 * v5++) _deleteExternalReferenceFromPermanentLocation];
      }

      while (v3 != v5);
      result = [a1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v3 = result;
    }

    while (result);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _deleteFileBackedFutures(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  result = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v11;
    do
    {
      v5 = 0;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(a1);
        }

        v6 = *(*(&v10 + 1) + 8 * v5);
        if (v6)
        {
          v7 = *(v6 + 8);
        }

        else
        {
          v7 = 0;
        }

        v8 = [v7 path];
        [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
        ++v5;
      }

      while (v3 != v5);
      result = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v3 = result;
    }

    while (result);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

CFMutableArrayRef _rowsForConflictDetection(void *a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(a2 objectAtIndex:{0), "entity"}];
  if (v5)
  {
    if (atomic_load((v5 + 124)))
    {
      v7 = *(v5 + 72);
    }

    else
    {
      do
      {
        v7 = v5;
        v5 = [v5 superentity];
      }

      while (v5);
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = [_sqlCoreLookupSQLEntityForEntityDescription(a1 v7)];
  v8 = [MEMORY[0x1E696AD60] string];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [a2 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    v12 = @"%qi";
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(a2);
        }

        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v12, objc_msgSend(objc_msgSend(*(*(&v19 + 1) + 8 * i), "objectID"), "_referenceData64")];
        [v8 appendString:v14];

        v12 = @", %qi";
      }

      v10 = [a2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v12 = @", %qi";
    }

    while (v10);
  }

  result = -[NSSQLiteConnection copyRawIntegerRowsForSQL:](a3, [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT %@, %@ FROM %@ WHERE %@ IN (%@) ORDER BY %@", @"Z_PK", @"Z_OPT", v17, @"Z_PK", v8, @"Z_PK"]);
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t compareManagedObjectsBySQLPKs(void *a1, void *a2)
{
  v3 = [objc_msgSend(a1 "objectID")];
  v4 = [objc_msgSend(a2 "objectID")];
  v5 = -1;
  if (v3 >= v4)
  {
    v5 = 1;
  }

  if (v3 == v4)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t _newConflictRecordForObject(void *a1, void *a2, unint64_t a3, int a4)
{
  v8 = _newObjectGraphStyleForSQLRow(a2, a1);
  v9 = _newObjectGraphStyleForSQLRow(a3, a1);
  v10 = [NSMergeConflict alloc];
  if (a3)
  {
    a3 = [a3 _versionNumber];
  }

  if (a2)
  {
    v11 = [a2 _versionNumber];
  }

  else
  {
    v11 = 0;
  }

  if (a4)
  {
    v12 = 0;
  }

  else
  {
    v12 = v9;
  }

  v13 = [(NSMergeConflict *)v10 initWithSource:a1 newVersion:a3 oldVersion:v11 cachedSnapshot:v8 persistedSnapshot:v12];

  return v13;
}

void *_performExhaustiveOptimisticLockingDetectionForSaveRequest(uint64_t a1, void *a2, int a3)
{
  v4 = a1;
  v82 = *MEMORY[0x1E69E9840];
  if (a1 && (a1 = *(a1 + 96)) != 0 && (v5 = *(a1 + 8)) != 0)
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSSQLSavePlan *)a1 newObjectsForExhaustiveLockConflictDetection];
  if (v6)
  {
    if ([a2 count])
    {
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v8 = [a2 countByEnumeratingWithState:&v70 objects:v75 count:16];
      if (v8)
      {
        v9 = *v71;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v71 != v9)
            {
              objc_enumerationMutation(a2);
            }

            [v7 addObject:{objc_msgSend(v6, "objectWithID:", *(*(&v70 + 1) + 8 * i))}];
          }

          v8 = [a2 countByEnumeratingWithState:&v70 objects:v75 count:16];
        }

        while (v8);
      }
    }
  }

  v64 = [MEMORY[0x1E695DFA8] set];
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v11 = [a2 countByEnumeratingWithState:&v66 objects:v74 count:16];
  if (v11)
  {
    v12 = *v67;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v67 != v12)
        {
          objc_enumerationMutation(a2);
        }

        v14 = *(*(&v66 + 1) + 8 * j);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v14 = [v14 objectID];
        }

        if (v14)
        {
          [v64 addObject:v14];
        }
      }

      v11 = [a2 countByEnumeratingWithState:&v66 objects:v74 count:16];
    }

    while (v11);
  }

  v60 = [v4 rowCache];
  if (v4)
  {
    v53 = *(v4 + 24);
  }

  else
  {
    v53 = 0;
  }

  v15 = [v7 count];
  v58 = [MEMORY[0x1E695DF70] array];
  if (v15)
  {
    v55 = [_PFRoutines _groupObjectsByRootEntity:v7];
    v54 = [v55 count];
    if (v54)
    {
      cf = 0;
      v16 = 0;
      while (1)
      {
        v56 = v16;
        v63 = [objc_msgSend(v55 "objectAtIndex:{"sortedArrayUsingFunction:context:", compareManagedObjectsBySQLPKs, 0}")];
        if (cf)
        {
          CFRelease(cf);
        }

        v17 = v4 ? *(v4 + 8) : 0;
        cf = _rowsForConflictDetection(v17, v63, v53);
        Count = CFArrayGetCount(cf);
        v62 = [v63 count];
        if (v62)
        {
          break;
        }

LABEL_117:
        v16 = v56 + 1;
        if (v56 + 1 == v54)
        {
          if (cf)
          {
            CFRelease(cf);
          }

          goto LABEL_122;
        }
      }

      v18 = 0;
      idx = 1;
      while (1)
      {
        v19 = objc_autoreleasePoolPush();
        if (idx >= Count)
        {
          ValueAtIndex = 0;
        }

        else
        {
          ValueAtIndex = CFArrayGetValueAtIndex(cf, idx);
        }

        v21 = [v63 objectAtIndex:v18];
        v22 = [v21 objectID];
        v23 = [(NSSQLSaveChangesRequestContext *)v4 originalRowForObjectID:v22];
        if (!v23)
        {
          v24 = [(NSSQLStoreRequestContext *)v4 createNestedObjectFaultContextForObjectWithID:v22];
          v25 = v24;
          if (v24)
          {
            *(v24 + 104) = 1;
          }

          if (v4)
          {
            v26 = *(v4 + 24);
          }

          else
          {
            v26 = 0;
          }

          [(NSSQLStoreRequestContext *)v24 setConnection:v26];
          [(NSSQLStoreRequestContext *)v25 setQueryGenerationToken:?];
          v27 = _executeObjectFaultRequest(v25);
          v23 = v27;
          if (v4 && v27)
          {
            [*(v4 + 136) setObject:v27 forKey:v22];
          }

          [(NSSQLStoreRequestContext *)v25 setConnection:?];
        }

        if (ValueAtIndex && [v22 _referenceData64] == *ValueAtIndex)
        {
          break;
        }

        v34 = _newConflictRecordForObject(v21, v23, 0, 0);
        [(NSPersistentStoreCache *)v60 forgetRowForObjectID:v22];
        if ([(NSSQLStoreRequestContext *)v4 debugLogLevel]< 2)
        {
          if ([(NSSQLStoreRequestContext *)v4 debugLogLevel]>= 1)
          {
            v39 = objc_autoreleasePoolPush();
            _pflogInitialize(4);
            if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
            {
              if (_pflogging_catastrophic_mode)
              {
                LogStream = _PFLogGetLogStream(1);
                if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v77 = v22;
                  _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Optimistic locking failure for %@.  Row was deleted.\n", buf, 0xCu);
                }
              }

              else
              {
                v44 = _PFLogGetLogStream(4);
                if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v77 = v22;
                  _os_log_impl(&dword_18565F000, v44, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Optimistic locking failure for %@.  Row was deleted.\n", buf, 0xCu);
                }
              }
            }

            if (_pflogging_catastrophic_mode)
            {
              v45 = 1;
            }

            else
            {
              v45 = 4;
            }

            _NSCoreDataLog_console(v45, "Optimistic locking failure for %@.  Row was deleted.", v22);
            objc_autoreleasePoolPop(v39);
          }
        }

        else
        {
          v37 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v38 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v77 = v22;
                v78 = 2112;
                v79 = v23;
                _os_log_error_impl(&dword_18565F000, v38, OS_LOG_TYPE_ERROR, "CoreData: error: Optimistic locking failure for %@.  Row was deleted.  Original row = %@ New Row = <deleted>\n", buf, 0x16u);
              }
            }

            else
            {
              v42 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v77 = v22;
                v78 = 2112;
                v79 = v23;
                _os_log_impl(&dword_18565F000, v42, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Optimistic locking failure for %@.  Row was deleted.  Original row = %@ New Row = <deleted>\n", buf, 0x16u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v43 = 1;
          }

          else
          {
            v43 = 4;
          }

          _NSCoreDataLog_console(v43, "Optimistic locking failure for %@.  Row was deleted.  Original row = %@ New Row = <deleted>", v22, v23);
          objc_autoreleasePoolPop(v37);
        }

        v46 = 1;
        if (!v34)
        {
LABEL_111:
          ++idx;
          goto LABEL_112;
        }

LABEL_110:
        [v58 addObject:v34];

        if (!v46)
        {
          goto LABEL_111;
        }

LABEL_112:
        objc_autoreleasePoolPop(v19);
        if (v62 == ++v18)
        {
          goto LABEL_117;
        }
      }

      if (v23)
      {
        v28 = atomic_load(v23 + 5);
        v29 = *(v28 + 12);
      }

      else
      {
        v29 = 0;
      }

      if (v29 == ValueAtIndex[1] && ![v64 containsObject:{objc_msgSend(v23, "objectID")}])
      {
        goto LABEL_111;
      }

      v30 = [(NSSQLStoreRequestContext *)v4 createNestedObjectFaultContextForObjectWithID:v22];
      v31 = v30;
      if (v30)
      {
        *(v30 + 104) = 1;
      }

      if (v4)
      {
        v32 = *(v4 + 24);
      }

      else
      {
        v32 = 0;
      }

      [(NSSQLStoreRequestContext *)v30 setConnection:v32];
      [(NSSQLStoreRequestContext *)v31 setQueryGenerationToken:?];
      v33 = _executeObjectFaultRequest(v31);
      [(NSSQLStoreRequestContext *)v31 setConnection:?];

      v34 = _newConflictRecordForObject(v21, v23, v33, a3);
      if ([(NSSQLStoreRequestContext *)v4 debugLogLevel]< 2)
      {
        if ([(NSSQLStoreRequestContext *)v4 debugLogLevel]< 1)
        {
          goto LABEL_109;
        }

        v35 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v41 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v77 = v22;
              _os_log_error_impl(&dword_18565F000, v41, OS_LOG_TYPE_ERROR, "CoreData: error: Optimistic locking failure for %@.  Row was updated.\n", buf, 0xCu);
            }
          }

          else
          {
            v49 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v77 = v22;
              _os_log_impl(&dword_18565F000, v49, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Optimistic locking failure for %@.  Row was updated.\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v50 = 1;
        }

        else
        {
          v50 = 4;
        }

        _NSCoreDataLog_console(v50, "Optimistic locking failure for %@.  Row was updated.", v22);
      }

      else
      {
        v35 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v36 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v77 = v22;
              v78 = 2112;
              v79 = v23;
              v80 = 2112;
              v81 = v33;
              _os_log_error_impl(&dword_18565F000, v36, OS_LOG_TYPE_ERROR, "CoreData: error: Optimistic locking failure for %@.  Row was updated.  Original row = %@ New Row = %@\n", buf, 0x20u);
            }
          }

          else
          {
            v47 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v77 = v22;
              v78 = 2112;
              v79 = v23;
              v80 = 2112;
              v81 = v33;
              _os_log_impl(&dword_18565F000, v47, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Optimistic locking failure for %@.  Row was updated.  Original row = %@ New Row = %@\n", buf, 0x20u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v48 = 1;
        }

        else
        {
          v48 = 4;
        }

        _NSCoreDataLog_console(v48, "Optimistic locking failure for %@.  Row was updated.  Original row = %@ New Row = %@", v22, v23, v33);
      }

      objc_autoreleasePoolPop(v35);
LABEL_109:
      v46 = v33 == 0;
      if (!v34)
      {
        goto LABEL_111;
      }

      goto LABEL_110;
    }
  }

LABEL_122:
  if ([v58 count])
  {
    result = v58;
  }

  else
  {
    result = 0;
  }

  v52 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_185911A58()
{
  if (v0)
  {
    JUMPOUT(0x185911A60);
  }

  JUMPOUT(0x185911A74);
}

void sub_185911A68(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

uint64_t ___prefetchRelationshipKeys_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 _referenceData64];
  if (v4 < [a3 _referenceData64])
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

_PFResultArray *_prepareBufferedDictionaryResult(void *a1, uint64_t a2)
{
  v3 = a1;
  v56 = *MEMORY[0x1E69E9840];
  if (![a1 count])
  {
    goto LABEL_40;
  }

  v43 = a2;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (!v4)
  {
    goto LABEL_40;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  v8 = *v51;
  v9 = 0x1EA8C5000uLL;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v51 != v8)
      {
        objc_enumerationMutation(v3);
      }

      v11 = *(*(*(&v50 + 1) + 8 * i) + 24);
      v12 = *(v11 + 32);
      if (!v12)
      {
        goto LABEL_14;
      }

      v13 = *(v11 + 48);
      v14 = *(v11 + 32);
      do
      {
        v15 = *v13++;
        v7 += *v15;
        --v14;
      }

      while (v14);
      if (v11)
      {
        v16 = 0;
        v17 = *(v11 + 48);
        do
        {
          v18 = *v17++;
          v16 = v16 + *(v18 + 4) - 8;
          --v12;
        }

        while (v12);
      }

      else
      {
LABEL_14:
        v16 = 0;
      }

      v6 += v16;
    }

    v5 = [v3 countByEnumeratingWithState:&v50 objects:v55 count:16];
  }

  while (v5);
  if (v7)
  {
    v19 = v6 + 8;
    v20 = v19 + 4 * v7;
    if (v20 <= 0x400)
    {
      v20 = 1024;
    }

    v21 = v20 + 7;
    v22 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v22 = malloc_default_zone();
    }

    v41 = v21;
    v23 = malloc_type_zone_calloc(v22, 1uLL, v21 & 0xFFFFFFFF8, 0xCB0F0E53uLL);
    *v23 = v7;
    v23[1] = v19;
    v42 = v23;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v45 = [v3 countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v45)
    {
      v24 = (v42 + 8);
      v25 = (v42 + v19);
      v44 = *v47;
      do
      {
        v26 = 0;
        do
        {
          if (*v47 != v44)
          {
            objc_enumerationMutation(v3);
          }

          v27 = v3;
          v28 = *(*(&v46 + 1) + 8 * v26);
          if (v28)
          {
            v29 = *(v28 + *(v9 + 696));
          }

          else
          {
            v29 = 0;
          }

          v30 = v9;
          if (*(v29 + 32))
          {
            v31 = 0;
            do
            {
              v32 = *(*(v29 + 48) + 8 * v31);
              v33 = *v32;
              v34 = (v32[1] - 8);
              v35 = v32 + 2;
              memcpy(v24, v32 + 2, v34);
              if (v33 == 1)
              {
                *v25 = v34;
                v36 = 4;
              }

              else
              {
                v36 = (4 * v33);
                memcpy(v25, v35 + v34, v36);
              }

              v24 += v34;
              v25 = (v25 + v36);
              ++v31;
            }

            while (v31 < *(v29 + 32));
          }

          ++v26;
          v3 = v27;
          v9 = v30;
        }

        while (v26 != v45);
        v37 = [v27 countByEnumeratingWithState:&v46 objects:v54 count:16];
        v45 = v37;
      }

      while (v37);
    }

    v38 = bufferResultSetAllocateWithBuffer(v41 & 0xFFFFFFFF8, v42);
    result = _prepareLargeDictionaryResults(v38, v43, 0);
  }

  else
  {
LABEL_40:
    result = NSArray_EmptyArray;
  }

  v40 = *MEMORY[0x1E69E9840];
  return result;
}

Class initCloudKitCKContainerOptions()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = objc_getClass("CKContainerOptions");
  qword_1ED4BEC08 = result;
  getCloudKitCKContainerOptionsClass = CloudKitCKContainerOptionsFunction;
  return result;
}

Class initCloudKitCKRecordZone()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = objc_getClass("CKRecordZone");
  qword_1ED4BEC10 = result;
  getCloudKitCKRecordZoneClass[0] = CloudKitCKRecordZoneFunction;
  return result;
}

Class initCloudKitCKAcceptSharesOperation()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = objc_getClass("CKAcceptSharesOperation");
  qword_1ED4BEC30 = result;
  getCloudKitCKAcceptSharesOperationClass = CloudKitCKAcceptSharesOperationFunction;
  return result;
}

Class initCloudKitCKFetchDatabaseChangesOperation()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = objc_getClass("CKFetchDatabaseChangesOperation");
  qword_1ED4BEC38 = result;
  getCloudKitCKFetchDatabaseChangesOperationClass = CloudKitCKFetchDatabaseChangesOperationFunction;
  return result;
}

Class initCloudKitCKModifyRecordZonesOperation()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = objc_getClass("CKModifyRecordZonesOperation");
  qword_1ED4BEC40 = result;
  getCloudKitCKModifyRecordZonesOperationClass = CloudKitCKModifyRecordZonesOperationFunction;
  return result;
}

Class initCloudKitCKModifyRecordsOperation()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = objc_getClass("CKModifyRecordsOperation");
  qword_1ED4BEC48 = result;
  getCloudKitCKModifyRecordsOperationClass = CloudKitCKModifyRecordsOperationFunction;
  return result;
}

Class initCloudKitCKFetchRecordZonesOperation()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = objc_getClass("CKFetchRecordZonesOperation");
  qword_1ED4BEC50 = result;
  getCloudKitCKFetchRecordZonesOperationClass = CloudKitCKFetchRecordZonesOperationFunction;
  return result;
}

Class initCloudKitCKFetchRecordsOperation()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = objc_getClass("CKFetchRecordsOperation");
  qword_1ED4BEC58 = result;
  getCloudKitCKFetchRecordsOperationClass = CloudKitCKFetchRecordsOperationFunction;
  return result;
}

Class initCloudKitCKDatabaseSubscription()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = objc_getClass("CKDatabaseSubscription");
  qword_1ED4BEC60 = result;
  getCloudKitCKDatabaseSubscriptionClass[0] = CloudKitCKDatabaseSubscriptionFunction;
  return result;
}

Class initCloudKitCKModifySubscriptionsOperation()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = objc_getClass("CKModifySubscriptionsOperation");
  qword_1ED4BEC68 = result;
  getCloudKitCKModifySubscriptionsOperationClass = CloudKitCKModifySubscriptionsOperationFunction;
  return result;
}

Class initCloudKitCKAsset()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = objc_getClass("CKAsset");
  qword_1ED4BEC70 = result;
  getCloudKitCKAssetClass = CloudKitCKAssetFunction;
  return result;
}

Class initCloudKitCKFetchRecordZoneChangesConfiguration()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = objc_getClass("CKFetchRecordZoneChangesConfiguration");
  qword_1ED4BEC80 = result;
  getCloudKitCKFetchRecordZoneChangesConfigurationClass = CloudKitCKFetchRecordZoneChangesConfigurationFunction;
  return result;
}

Class initCloudKitCKFetchRecordZoneChangesOperation()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = objc_getClass("CKFetchRecordZoneChangesOperation");
  qword_1ED4BEC88 = result;
  getCloudKitCKFetchRecordZoneChangesOperationClass = CloudKitCKFetchRecordZoneChangesOperationFunction;
  return result;
}

Class initCloudKitCKEncryptedData()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = objc_getClass("CKEncryptedData");
  qword_1ED4BECA0 = result;
  getCloudKitCKEncryptedDataClass = CloudKitCKEncryptedDataFunction;
  return result;
}

Class initCloudKitCKSchedulerActivity()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = objc_getClass("CKSchedulerActivity");
  qword_1ED4BECB8 = result;
  getCloudKitCKSchedulerActivityClass = CloudKitCKSchedulerActivityFunction;
  return result;
}

Class initCloudKitCKFetchShareParticipantsOperation()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = objc_getClass("CKFetchShareParticipantsOperation");
  qword_1ED4BECD0 = result;
  getCloudKitCKFetchShareParticipantsOperationClass = CloudKitCKFetchShareParticipantsOperationFunction;
  return result;
}

Class initCloudKitCKFetchShareMetadataOperation()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = objc_getClass("CKFetchShareMetadataOperation");
  qword_1ED4BECD8 = result;
  getCloudKitCKFetchShareMetadataOperationClass = CloudKitCKFetchShareMetadataOperationFunction;
  return result;
}

Class initCloudKitCKQueryOperation()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = objc_getClass("CKQueryOperation");
  qword_1ED4BECE0 = result;
  getCloudKitCKQueryOperationClass = CloudKitCKQueryOperationFunction;
  return result;
}

Class initCloudKitCKQuery()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = objc_getClass("CKQuery");
  qword_1ED4BECE8 = result;
  getCloudKitCKQueryClass = CloudKitCKQueryFunction;
  return result;
}

Class initCloudKitCKSystemSharingUIObserver()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = objc_getClass("CKSystemSharingUIObserver");
  qword_1ED4BECF8 = result;
  getCloudKitCKSystemSharingUIObserverClass = CloudKitCKSystemSharingUIObserverFunction;
  return result;
}

uint64_t initCloudKitCKPartialErrorsByItemIDKey()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = *dlsym(_MergedGlobals_92, "CKPartialErrorsByItemIDKey");
  qword_1ED4BED10 = result;
  getCloudKitCKPartialErrorsByItemIDKey = CKPartialErrorsByItemIDKeyCloudKitFunction;
  return result;
}

uint64_t initCloudKitCKRecordChangedErrorServerRecordKey()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = *dlsym(_MergedGlobals_92, "CKRecordChangedErrorServerRecordKey");
  qword_1ED4BED18 = result;
  getCloudKitCKRecordChangedErrorServerRecordKey = CKRecordChangedErrorServerRecordKeyCloudKitFunction;
  return result;
}

uint64_t initCloudKitCKErrorRetryAfterKey()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = *dlsym(_MergedGlobals_92, "CKErrorRetryAfterKey");
  qword_1ED4BED30 = result;
  getCloudKitCKErrorRetryAfterKey = CKErrorRetryAfterKeyCloudKitFunction;
  return result;
}

uint64_t initCloudKitCKRecordZoneDefaultName()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = *dlsym(_MergedGlobals_92, "CKRecordZoneDefaultName");
  qword_1ED4BED38 = result;
  getCloudKitCKRecordZoneDefaultName[0] = CKRecordZoneDefaultNameCloudKitFunction;
  return result;
}

uint64_t initCloudKitCKRecordTypeShare()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = *dlsym(_MergedGlobals_92, "CKRecordTypeShare");
  qword_1ED4BED40 = result;
  getCloudKitCKRecordTypeShare = CKRecordTypeShareCloudKitFunction;
  return result;
}

uint64_t initCloudKitCKRecordNameZoneWideShare()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = *dlsym(_MergedGlobals_92, "CKRecordNameZoneWideShare");
  qword_1ED4BED48 = result;
  getCloudKitCKRecordNameZoneWideShare = CKRecordNameZoneWideShareCloudKitFunction;
  return result;
}

uint64_t initCloudKitCKErrorUserDidResetEncryptedDataKey()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = *dlsym(_MergedGlobals_92, "CKErrorUserDidResetEncryptedDataKey");
  qword_1ED4BED50 = result;
  getCloudKitCKErrorUserDidResetEncryptedDataKey = CKErrorUserDidResetEncryptedDataKeyCloudKitFunction;
  return result;
}

uint64_t initCKDatabaseScopeString(uint64_t a1)
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  v2 = dlsym(_MergedGlobals_92, "CKDatabaseScopeString");
  softLinkCKDatabaseScopeString[0] = v2;

  return (v2)(a1);
}

void sub_185913D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_185914420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _readCompositeAttributeIntoShellFromBytes(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  AttributeIntoShellFromBytes = _readAttributeIntoShellFromBytes(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  if (AttributeIntoShellFromBytes)
  {
    v15 = *a3;
    v16 = (*a3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v17 = v16 + 4;
    if (v16 + 4 <= a4)
    {
      v18 = *(a2 + v16);
      if (v18)
      {
        v25 = *(a7 + 8 * bswap32(v18));
        v19 = MEMORY[0x1E695DFD8];
        v20 = objc_opt_class();
        v21 = objc_opt_class();
        v22 = objc_opt_class();
        v23 = [v19 setWithObjects:{v20, v21, v22, objc_opt_class(), 0}];
        *(a5 + 120) = [_PFRoutines unarchiveCylicGraphObjectOfClasses:v23 fromData:v25 error:a9];
      }

      v15 = v17;
    }

    *a3 = v15;
  }

  return AttributeIntoShellFromBytes;
}

void sub_1859164F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_18591753C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  if (a2 == 2)
  {
    v2 = objc_begin_catch(exception_object);
    objc_end_catch();
  }

  else
  {
    objc_begin_catch(exception_object);
  }

  JUMPOUT(0x185917334);
}

void sub_18591884C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x185918784);
  }

  _Unwind_Resume(exception_object);
}

void __LoadRunningBoardServices_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  LoadRunningBoardServices_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/RunningBoardServices.framework/RunningBoardServices", 2);
  if (!LoadRunningBoardServices_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v1 = 136315138;
    v2 = dlerror();
    _os_log_fault_impl(&dword_18565F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "### Failed to Soft Link: /System/Library/PrivateFrameworks/RunningBoardServices.framework/RunningBoardServices\n%s", &v1, 0xCu);
  }

  v0 = *MEMORY[0x1E69E9840];
}

Class initRunningBoardServicesRBSAssertion()
{
  if (_MergedGlobals_93 != -1)
  {
    dispatch_once(&_MergedGlobals_93, &__block_literal_global_37);
  }

  result = objc_getClass("RBSAssertion");
  qword_1ED4BED60 = result;
  getRunningBoardServicesRBSAssertionClass = RunningBoardServicesRBSAssertionFunction;
  return result;
}

Class initRunningBoardServicesRBSTarget()
{
  if (_MergedGlobals_93 != -1)
  {
    dispatch_once(&_MergedGlobals_93, &__block_literal_global_37);
  }

  result = objc_getClass("RBSTarget");
  qword_1ED4BED68 = result;
  getRunningBoardServicesRBSTargetClass = RunningBoardServicesRBSTargetFunction;
  return result;
}

Class initRunningBoardServicesRBSDomainAttribute()
{
  if (_MergedGlobals_93 != -1)
  {
    dispatch_once(&_MergedGlobals_93, &__block_literal_global_37);
  }

  result = objc_getClass("RBSDomainAttribute");
  qword_1ED4BED70 = result;
  getRunningBoardServicesRBSDomainAttributeClass = RunningBoardServicesRBSDomainAttributeFunction;
  return result;
}

void sub_185919DA8(_Unwind_Exception *a1)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void sub_185919DD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x185919DD8);
  }

  objc_terminate();
}

void sub_18591AF00(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_18591B08C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_18591B13C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}