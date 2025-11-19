void sub_2400F906C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2400F9238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2400F962C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ASULogHandleForCategory(uint64_t a1)
{
  if (ASULogHandleForCategory_onceToken != -1)
  {
    dispatch_once(&ASULogHandleForCategory_onceToken, &__block_literal_global);
  }

  v2 = ASULogHandleForCategory_logHandles[a1];

  return v2;
}

uint64_t __ASULogHandleForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.appstoreutilities", "Defaults");
  v1 = ASULogHandleForCategory_logHandles[0];
  ASULogHandleForCategory_logHandles[0] = v0;

  qword_27E3C72D8 = os_log_create("com.apple.appstoreutilities", "SQL");

  return MEMORY[0x2821F96F8]();
}

void sub_2400F9B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2400F9C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2400F9DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ASUSQLiteCopyFoundationValue(void *a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  if (!v3 || (a2 & 0x80000000) != 0)
  {
    if (!v3)
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (*(v3 + 2) <= a2)
  {
LABEL_14:
    v11 = sqlite3_column_type(*(v3 + 6), a2);
    if (v11 <= 2)
    {
      if (v11 == 1)
      {
        v13 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v4, "int64ForColumnIndex:", a2)}];
        goto LABEL_23;
      }

      if (v11 == 2)
      {
        v12 = MEMORY[0x277CCABB0];
        [v4 doubleForColumnIndex:a2];
        v13 = [v12 numberWithDouble:?];
        goto LABEL_23;
      }

LABEL_21:
      v13 = [v4 dataForColumnIndex:a2];
      goto LABEL_23;
    }

    if (v11 == 5)
    {
      v5 = 0;
      goto LABEL_24;
    }

    if (v11 != 3)
    {
      goto LABEL_21;
    }

LABEL_20:
    v13 = [v4 stringForColumnIndex:a2];
    goto LABEL_23;
  }

  v5 = 0;
  v6 = *(*(v3 + 2) + a2);
  if (v6 <= 2)
  {
    if (*(*(v3 + 2) + a2))
    {
      if (v6 != 1)
      {
        if (v6 != 2)
        {
          goto LABEL_24;
        }

        v7 = [v3 dataForColumnIndex:a2];
        if (v7)
        {
          v17 = 0;
          v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v17];
          v9 = v17;
          if (v8)
          {
LABEL_37:
            v5 = v8;

            goto LABEL_24;
          }

          v10 = ASULogHandleForCategory(1);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v16 = [v4[5] objectAtIndexedSubscript:a2];
            *buf = 138543618;
            v19 = v16;
            v20 = 2114;
            v21 = v9;
          }
        }

        else
        {
          v9 = 0;
        }

        v8 = 0;
        goto LABEL_37;
      }

      v13 = [v3 dateForColumnIndex:a2];
LABEL_23:
      v5 = v13;
      goto LABEL_24;
    }

    goto LABEL_14;
  }

  switch(v6)
  {
    case 3u:
      v13 = [v3 UUIDForColumnIndex:a2];
      goto LABEL_23;
    case 4u:
      v13 = [v3 URLForColumnIndex:a2];
      goto LABEL_23;
    case 5u:
      goto LABEL_20;
  }

LABEL_24:

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

void sub_2400FC78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2400FD0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2400FE834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2400FFC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_240100808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2401011DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2401013C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2401016C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_240101AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ASUSQLiteApplyConnectionOptions(sqlite3 *a1, void *a2)
{
  v3 = a2;
  sqlite3_extended_result_codes(a1, 1);
  v4 = [v3 encryptionKeyId];

  if (!v4 || ([v3 encryptionKeyId], v5 = objc_claimAutoreleasedReturnValue(), v6 = ASUSQLiteEncryptDatabase(a1, v5), v5, !v6))
  {
    v7 = sqlite3_exec(a1, "PRAGMA journal_mode=WAL", 0, 0, 0);
    if (v7)
    {
      v6 = v7;
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"PRAGMA cache_size=%ld", objc_msgSend(v3, "cacheSize")];
      v6 = sqlite3_exec(a1, [v8 UTF8String], 0, 0, 0);
    }
  }

  return v6;
}

uint64_t ASUSQLiteEncryptDatabase(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = [ASUDefaultsManager databaseEncryptionKeyWithIdentifier:v2];
    v4 = v3;
    if (v3 && [v3 length] == 16)
    {
      v5 = 0;
    }

    else
    {
      v14 = 0;
      v6 = [ASUSQLiteKeychainHelper fetchKeyWithIdentifier:v2 error:&v14];
      v5 = v14;

      if (v6 && [v6 length] == 16)
      {
        v4 = v6;
      }

      else
      {

        v8 = ASULogHandleForCategory(1);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v16 = v2;
          _os_log_impl(&dword_2400F8000, v8, OS_LOG_TYPE_DEFAULT, "Generating new encryption key for identifier: %{public}@", buf, 0xCu);
        }

        CCRandomGenerateBytes(buf, 0x10uLL);
        v4 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:16];

        v13 = 0;
        v9 = [ASUSQLiteKeychainHelper storeKey:v4 withIdentifier:v2 error:&v13];
        v5 = v13;
        if (!v9)
        {
          v10 = ASULogHandleForCategory(1);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543618;
            v16 = v2;
            v17 = 2114;
            v18 = v5;
            _os_log_fault_impl(&dword_2400F8000, v10, OS_LOG_TYPE_FAULT, "Unable to fetch/generate key with identifier: %{public}@ error: %{public}@", buf, 0x16u);
          }

          [ASUDefaultsManager setDatabaseEncryptionKey:v4 withIdentifier:v2];
        }
      }
    }

    [v4 bytes];
    [v4 length];
    v7 = sqlite3_key();
  }

  else
  {
    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

id ASUSQLiteCreateErrorForResultCode(int a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (a1 - 100 < 2 || a1 == 0)
  {
    v2 = 0;
  }

  else
  {
    v4 = sqlite3_errstr(a1);
    if (v4 && *v4)
    {
      v9 = *MEMORY[0x277CCA450];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
      v10[0] = v5;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    }

    else
    {
      v6 = 0;
    }

    v2 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ASUSQLiteErrorDomain" code:a1 userInfo:v6];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v2;
}

void ASUSQLiteTrashDatabaseName(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCAD78];
  v4 = a1;
  v5 = [v3 UUID];
  v6 = [v5 UUIDString];
  v7 = [v6 substringToIndex:8];

  v8 = ASUSQLiteGetRelatedFilePath(v4, 0);
  v9 = ASUSQLiteGetRelatedFilePath(v4, 1);
  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [v8 stringByAppendingString:v7];
  v22 = 0;
  [v10 moveItemAtPath:v8 toPath:v11 error:&v22];
  v12 = v22;

  v13 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = [v9 stringByAppendingString:v7];
  v21 = v12;
  [v13 moveItemAtPath:v9 toPath:v14 error:&v21];
  v15 = v21;

  v16 = [MEMORY[0x277CCAA00] defaultManager];
  v17 = [v4 stringByAppendingString:v7];
  v20 = v15;
  [v16 moveItemAtPath:v4 toPath:v17 error:&v20];

  v18 = v20;
  if (a2 && v18)
  {
    v19 = v18;
    *a2 = v18;
  }
}

id ASUSQLiteGetRelatedFilePath(void *a1, uint64_t a2)
{
  v4 = a1;
  v5 = v4;
  if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_6;
    }

    v6 = @"-wal";
  }

  else
  {
    v6 = @"-shm";
  }

  v2 = [v4 stringByAppendingString:v6];
LABEL_6:

  return v2;
}

uint64_t ASUSQLiteDeleteDatabase(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCAA00];
  v4 = a1;
  v5 = objc_alloc_init(v3);
  v6 = ASUSQLiteGetRelatedFilePath(v4, 0);
  v16 = 0;
  [v5 removeItemAtPath:v6 error:&v16];
  v7 = v16;

  v8 = ASUSQLiteGetRelatedFilePath(v4, 1);
  v15 = v7;
  [v5 removeItemAtPath:v8 error:&v15];
  v9 = v15;

  v14 = v9;
  v10 = [v5 removeItemAtPath:v4 error:&v14];

  v11 = v14;
  if (a2 && v11)
  {
    v12 = v11;
    *a2 = v11;
  }

  return v10;
}

uint64_t ASUSQLiteOpenDatabaseAndApplyOptions(sqlite3 **a1, void *a2)
{
  v3 = a2;
  ppDb = 0;
  v4 = [v3 databasePath];
  if ([v3 isReadOnly])
  {
    v5 = 2;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v7 = [v4 stringByDeletingLastPathComponent];
    [v6 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:0];

    v5 = 6;
  }

  v8 = [v3 protectionType];
  v9 = v8;
  if (v8)
  {
    v5 |= ASUSQLiteOpenFlagForProtectionType(v8);
  }

  v10 = sqlite3_open_v2([v4 fileSystemRepresentation], &ppDb, v5, 0);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = ASUSQLiteApplyConnectionOptions(ppDb, v3);
    if (!v11)
    {
      *a1 = ppDb;
      goto LABEL_12;
    }
  }

  if (ppDb)
  {
    sqlite3_close(ppDb);
  }

LABEL_12:

  return v11;
}

uint64_t ASUSQLiteOpenFlagForProtectionType(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 isEqualToString:*MEMORY[0x277CCA1B8]])
    {
      v3 = 0x400000;
    }

    else if ([v2 isEqualToString:*MEMORY[0x277CCA190]])
    {
      v3 = 0x100000;
    }

    else if ([v2 isEqualToString:*MEMORY[0x277CCA198]])
    {
      v3 = 0x200000;
    }

    else if ([v2 isEqualToString:*MEMORY[0x277CCA1A0]])
    {
      v3 = 3145728;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_240104D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_240104EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2401058AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ASUSQLiteBindFoundationValue(void *a1, uint64_t a2, void *a3)
{
  v9 = a1;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 bindArray:v5 atPosition:a2];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 bindDictionary:v5 atPosition:a2];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 bindString:v5 atPosition:a2];
    goto LABEL_10;
  }

  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v9 bindNullAtPosition:a2];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 timeIntervalSinceReferenceDate];
LABEL_15:
    [v9 bindDouble:a2 atPosition:?];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 bindData:v5 atPosition:a2];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 bindUUID:v5 atPosition:a2];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v5 absoluteString];
        [v9 bindString:v6 atPosition:a2];
      }

      else
      {
        v7 = [v5 objCType];
        v8 = *v7;
        if ((v8 == 102 || v8 == 100) && !v7[1])
        {
          [v5 doubleValue];
          goto LABEL_15;
        }

        [v9 bindInt64:objc_msgSend(v5 atPosition:{"longLongValue"), a2}];
      }
    }
  }

LABEL_10:
}

__CFString *ASUSQLitePlaceholderGenerator(uint64_t a1)
{
  if (a1)
  {
    v2 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:3 * a1 + 1];
    [v2 appendString:@"?"];
    v3 = a1 - 1;
    if (a1 != 1)
    {
      do
      {
        [v2 appendString:{@", ?"}];
        --v3;
      }

      while (v3);
    }

    v4 = [v2 copy];
  }

  else
  {
    v4 = &stru_285214D50;
  }

  return v4;
}

void sub_240108834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_240108920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _timeIntervalSinceReferenceDate(sqlite3_context *a1)
{
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];

  sqlite3_result_int64(a1, v2);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2821100F0](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}