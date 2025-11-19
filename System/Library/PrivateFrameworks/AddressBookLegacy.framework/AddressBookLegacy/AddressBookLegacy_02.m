BOOL ABAddressBookSetMe(uint64_t a1, const void *a2)
{
  if (ABLogAPIUsage())
  {
    v4 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v4);
    v6 = ABLogAddressBook(a1);
    ABLogStringForPerson(a2);
    _ABLog2(6, "_Bool ABAddressBookSetMe(ABAddressBookRef, ABRecordRef)", 1224, v5, @"%@, me=%@", v7, v8, v9, v6);
    CFRelease(v5);
  }

  if (a2)
  {
    v10 = ABPersonCopySource(a2);
    v11 = ABOSLogMeCardChanges();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7EFB000, v11, OS_LOG_TYPE_DEFAULT, "AddressBook will set the Me card", buf, 2u);
    }

    if (v10)
    {
      cf = 0;
      v12 = ABSourceSetMe(v10, a2, &cf);
      v13 = ABOSLogMeCardChanges();
      v14 = v13;
      if (v12)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *v35 = 0;
          _os_log_impl(&dword_1B7EFB000, v14, OS_LOG_TYPE_INFO, "AddressBook did successfully set the Me card", v35, 2u);
        }

        RecordID = ABRecordGetRecordID(v10);
        ABAddressBookSetIntegerProperty(a1, @"MeSourceID", RecordID, v16, v17, v18, v19, v20, v33);
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        ABAddressBookSetMe_cold_1(&cf, v14);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      CFRelease(v10);
    }

    else
    {
      v27 = ABOSLogMeCardChanges();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        ABAddressBookSetMe_cold_2();
      }

      v12 = 0;
    }
  }

  else
  {
    v21 = ABOSLogMeCardChanges();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 0;
      _os_log_impl(&dword_1B7EFB000, v21, OS_LOG_TYPE_DEFAULT, "AddressBook will clear the existing Me card", v34, 2u);
    }

    ABAddressBookSetIntegerProperty(a1, @"MeSourceID", 0xFFFFFFFFLL, v22, v23, v24, v25, v26, v33);
    ABCDBContextLogChangeForPerson(*(a1 + 16), 0, 0xAu);
    v12 = 1;
  }

  if (ABLogAPIUsage())
  {
    v28 = ABLogStringForBool(v12);
    _ABLog2(6, "_Bool ABAddressBookSetMe(ABAddressBookRef, ABRecordRef)", 1253, @">> ", @"success=%@", v29, v30, v31, v28);
  }

  return v12;
}

CFArrayRef ABAddressBookCopyArrayOfAllMeCards(const void *a1)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogAddressBook(a1);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyArrayOfAllMeCards(ABAddressBookRef)", 1208, v3, @"%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  v8 = ABAddressBookCopyMe(a1);
  if (v8)
  {
    v9 = v8;
    v10 = ABPersonCopyArrayOfAllLinkedPeople(v8);
    CFRelease(v9);
  }

  else
  {
    v10 = 0;
  }

  if (ABLogAPIUsage())
  {
    v11 = ABLogStringForPeople(v10);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyArrayOfAllMeCards(ABAddressBookRef)", 1218, @">> ", @"meCards=%@", v12, v13, v14, v11);
  }

  return v10;
}

void ABAddressBookClearPreferredMeSource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ABAddressBookSetIntegerProperty(a1, @"MeSourceID", 0xFFFFFFFFLL, a4, a5, a6, a7, a8, v10);
  v9 = *(a1 + 16);

  ABCDBContextLogChangeForPerson(v9, 0, 0xAu);
}

BOOL ABAddressBookSetBestMeIfNeeded(const void *a1, void *a2, void *a3, void *a4)
{
  v53 = *MEMORY[0x1E69E9840];
  if (ABLogAPIUsage())
  {
    v8 = _isMainThread();
    v9 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v8);
    v10 = ABLogAddressBook(a1);
    _ABLog2(6, "_Bool ABAddressBookSetBestMeIfNeeded(ABAddressBookRef, CFStringRef, CFStringRef, CFStringRef)", 1381, v9, @"%@, first=%@, last=%@, email=%@", v11, v12, v13, v10);
    CFRelease(v9);
  }

  v14 = ABAddressBookCopyMe(a1);
  if (v14)
  {
    CFRelease(v14);
    v15 = 0;
    goto LABEL_44;
  }

  if (![a2 length])
  {
    a2 = 0;
  }

  if (![a3 length])
  {
    a3 = 0;
  }

  v46 = 0;
  v47 = 0;
  if ([a4 length])
  {
    v16 = a4;
  }

  else
  {
    v16 = 0;
  }

  v44 = 0;
  v45 = 0;
  Current = CFRunLoopGetCurrent();
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __ABAddressBookSetBestMeIfNeeded_block_invoke;
  v43[3] = &__block_descriptor_40_e42_v28__0__ABSearchOperation_8__NSArray_16B24l;
  v43[4] = Current;
  v18 = objc_opt_new();
  [v18 setMaxConcurrentOperationCount:1];
  _addOperation(a2, kABPersonFirstNameProperty, &v47, v43, a1, v18);
  v40 = a3;
  _addOperation(a3, kABPersonLastNameProperty, &v46, v43, a1, v18);
  _addOperation(v16, kABPersonEmailProperty, &v45, v43, a1, v18);
  v19 = ABPhoneUtilitiesCopyDevicePhoneNumber();
  if (v19)
  {
    v20 = v19;
    if (CFStringGetLength(v19))
    {
      v21 = objc_opt_new();
      active = CPPhoneNumberCopyActiveCountryCode();
      [v21 setPredicate:{+[ABSearchOperation personPredicateWithPhoneLike:countryHint:addressBook:](ABSearchOperation, "personPredicateWithPhoneLike:countryHint:addressBook:", v20, active, a1)}];

      [v21 setContext:&v44];
      [v21 setProgressBlock:v43];
      [v21 setAddressBook:a1];
      [v18 addOperation:v21];
    }

    CFRelease(v20);
  }

  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v23 = [v18 operations];
  v24 = [v23 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v24)
  {
    v25 = v24;
    while (2)
    {
      v26 = *v49;
LABEL_19:
      v27 = 0;
      while (1)
      {
        if (*v49 != v26)
        {
          objc_enumerationMutation(v23);
        }

        if (![*(*(&v48 + 1) + 8 * v27) isFinished])
        {
          break;
        }

        if (v25 == ++v27)
        {
          v25 = [v23 countByEnumeratingWithState:&v48 objects:v52 count:16];
          if (v25)
          {
            goto LABEL_19;
          }

          goto LABEL_27;
        }
      }

      v28 = objc_opt_new();
      CFRunLoopRunInMode(kABSearchOperationRunloopMode, 10.0, 1u);

      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v23 = [v18 operations];
      v25 = [v23 countByEnumeratingWithState:&v48 objects:v52 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }
  }

LABEL_27:

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  v30 = objc_opt_new();
  v52[0] = 0;
  v31 = v47;
  if (a2 && v40 && v47 && v46)
  {
    [v47 intersectSet:?];

    v46 = v47;
    v31 = v47;
  }

  _countInstancesOfRecord(Mutable, v31, v52, v30);
  _countInstancesOfRecord(Mutable, v46, v52, v30);
  _countInstancesOfRecord(Mutable, v45, v52, v30);
  _countInstancesOfRecord(Mutable, v44, v52, v30);
  if ([v30 count] >= 2)
  {
    v32 = objc_opt_new();
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __ABAddressBookSetBestMeIfNeeded_block_invoke_2;
    v42[3] = &unk_1E7CCC8C8;
    v42[4] = v32;
    [v30 enumerateObjectsUsingBlock:v42];
    if ([v32 count])
    {
      v33 = ABAddressBookCopyDefaultSource(a1);
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __ABAddressBookSetBestMeIfNeeded_block_invoke_3;
      v41[3] = &__block_descriptor_40_e11_q24__0_8_16l;
      v41[4] = v33;
      [v30 sortUsingComparator:v41];
      if (v33)
      {
        CFRelease(v33);
      }

      v34 = [v30 lastObject];
    }

    else
    {
      v34 = 0;
    }

    if (!v34)
    {
      goto LABEL_41;
    }

LABEL_38:
    v15 = ABAddressBookSetMe(a1, v34);
    goto LABEL_42;
  }

  v34 = [v30 lastObject];
  if (v34)
  {
    goto LABEL_38;
  }

LABEL_41:
  v15 = 0;
LABEL_42:

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_44:
  if (ABLogAPIUsage())
  {
    v35 = ABLogStringForBool(v15);
    _ABLog2(6, "_Bool ABAddressBookSetBestMeIfNeeded(ABAddressBookRef, CFStringRef, CFStringRef, CFStringRef)", 1510, @">> ", @"changed=%@", v36, v37, v38, v35);
  }

  return v15;
}

void __ABAddressBookSetBestMeIfNeeded_block_invoke(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = [a2 context];
  if ([a3 count])
  {
    v8 = *v7;
    if (!*v7)
    {
      v8 = objc_opt_new();
      *v7 = v8;
    }

    [v8 addObjectsFromArray:a3];
  }

  if ((a4 & 1) == 0)
  {
    v9 = *(a1 + 32);

    CFRunLoopStop(v9);
  }
}

void _addOperation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a1)
  {
    v12 = objc_opt_new();
    [v12 setPredicate:{+[ABSearchOperation personPredicateWithValue:comparison:forProperty:addressBook:](ABSearchOperation, "personPredicateWithValue:comparison:forProperty:addressBook:", a1, 0, a2, a5)}];
    [v12 setContext:a3];
    [v12 setProgressBlock:a4];
    [v12 setAddressBook:a5];
    [a6 addOperation:v12];
  }
}

uint64_t _countInstancesOfRecord(const __CFDictionary *a1, void *a2, _DWORD *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  result = [a2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (result)
  {
    v9 = result;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(a2);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        v13 = (CFDictionaryGetValue(a1, v12) + 1);
        if (v13 != *a3)
        {
          if (v13 <= *a3)
          {
            goto LABEL_10;
          }

          *a3 = v13;
          [a4 removeAllObjects];
        }

        [a4 addObject:v12];
LABEL_10:
        CFDictionarySetValue(a1, v12, v13);
        ++v11;
      }

      while (v9 != v11);
      result = [a2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v9 = result;
    }

    while (result);
  }

  return result;
}

void __ABAddressBookSetBestMeIfNeeded_block_invoke_2(uint64_t a1, ABRecordRef person, uint64_t a3, _BYTE *a4)
{
  v6 = ABPersonCopySource(person);
  if (v6)
  {
    v7 = v6;
    v8 = [*(a1 + 32) containsObject:v6];
    v9 = *(a1 + 32);
    if (v8)
    {
      [v9 removeAllObjects];
      *a4 = 1;
    }

    else
    {
      [v9 addObject:v7];
    }

    CFRelease(v7);
  }
}

uint64_t __ABAddressBookSetBestMeIfNeeded_block_invoke_3(uint64_t a1, ABRecordRef person, const void *a3)
{
  v4 = *(a1 + 32);
  v5 = ABPersonCopySource(person);
  v6 = ABPersonCopySource(a3);
  v7 = v6;
  if (v5 == v6)
  {
    v10 = 0;
    if (!v5)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v5 == v4)
  {
    v10 = 1;
    if (!v5)
    {
      goto LABEL_23;
    }

LABEL_22:
    CFRelease(v5);
    goto LABEL_23;
  }

  if (v6 != v4)
  {
    if (v5 && v6)
    {
      IntValue = ABRecordGetIntValue(v5, kABSourceTypeProperty);
      v9 = ABRecordGetIntValue(v7, kABSourceTypeProperty);
      if ((IntValue & 0xFEFFFFFF) <= (v9 & 0xFEFFFFFF))
      {
        if ((v9 & 0xFEFFFFFF) <= (IntValue & 0xFEFFFFFF))
        {
          v10 = 0;
        }

        else
        {
          v10 = -1;
        }
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      if (v5)
      {
        v10 = v6 == 0;
      }

      else
      {
        v10 = -1;
      }

      if (!v5)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_22;
  }

  v10 = -1;
  if (v5)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (v7)
  {
    CFRelease(v7);
  }

  return v10;
}

void ABAddressBookRequestAccessWithCompletion(ABAddressBookRef addressBook, ABAddressBookRequestAccessCompletionHandler completion)
{
  if (ABLogAPIUsage())
  {
    v4 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v4);
    v6 = ABLogAddressBook(addressBook);
    _ABLog2(6, "void ABAddressBookRequestAccessWithCompletion(ABAddressBookRef, ABAddressBookRequestAccessCompletionHandler)", 1532, v5, @"%@", v7, v8, v9, v6);
    CFRelease(v5);
  }

  ABTCCRequestAccessWithCompletion(completion);
  if (ABLogAPIUsage())
  {

    _ABLog2(6, "void ABAddressBookRequestAccessWithCompletion(ABAddressBookRef, ABAddressBookRequestAccessCompletionHandler)", 1534, @">> ", 0, v10, v11, v12, v14);
  }
}

BOOL ABAddressBookIsAvailable()
{
  if (ABLogAPIUsage())
  {
    v5 = _isMainThread();
    v0 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABAddressBookIsAvailable(void)", 1539, v0, 0, v1, v2, v3, v5);
    CFRelease(v0);
  }

  return ABTCCIsAccessGranted() != 0;
}

BOOL ABAddressBookIsNeverAvailable()
{
  if (ABLogAPIUsage())
  {
    v5 = _isMainThread();
    v0 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABAddressBookIsNeverAvailable(void)", 1545, v0, 0, v1, v2, v3, v5);
    CFRelease(v0);
  }

  return ABTCCIsAccessDenied();
}

void ABAddressBookForceNullDatabaseForAccessDeniedSetEnabled(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (ABLogAPIUsage())
  {
    v17 = _isMainThread();
    v10 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "void ABAddressBookForceNullDatabaseForAccessDeniedSetEnabled(CFPropertyListRef)", 1575, v10, 0, v11, v12, v13, v17);
    CFRelease(v10);
  }

  CFPreferencesSetAppValue(@"ABForceNullDatabaseForAccessDenied", a1, @".GlobalPreferences");
  CFPreferencesSynchronize(@".GlobalPreferences", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (ABLogAPIUsage())
  {

    _ABLog2(6, "void ABAddressBookForceNullDatabaseForAccessDeniedSetEnabled(CFPropertyListRef)", 1578, @">> ", 0, v14, v15, v16, a9);
  }
}

uint64_t ABAddressBookGetSharedAddressFormatsDictionary()
{
  if (ABLogAPIUsage())
  {
    v10 = _isMainThread();
    v0 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFDictionaryRef ABAddressBookGetSharedAddressFormatsDictionary(void)", 1583, v0, 0, v1, v2, v3, v10);
    CFRelease(v0);
  }

  v4 = ABGetSharedAddressFormatsDictionary();
  if (ABLogAPIUsage())
  {
    _ABLog2(6, "CFDictionaryRef ABAddressBookGetSharedAddressFormatsDictionary(void)", 1585, @">> ", 0, v5, v6, v7, v9);
  }

  return v4;
}

BOOL ABAddressBookHasLocalContent(uint64_t a1)
{
  CPRecordStoreGetDatabase();
  CPSqliteDatabaseConnectionForReading();
  if (CPSqliteConnectionStatementForSQL() && (v2 = CPSqliteStatementIntegerResult(), CPSqliteStatementReset(), v2 > 0))
  {
    return 1;
  }

  else
  {
    return [ABFacebookMigrator mayHaveFacebookContacts:a1];
  }
}

BOOL ABAddressBookShouldAnalyzeDatabase(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 16))
  {
    v7 = ABOSLogAnalyzeDatabase();
    result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    ABAddressBookShouldAnalyzeDatabase_cold_2();
    return 0;
  }

  CPRecordStoreGetDatabase();
  if (!CPSqliteDatabaseConnectionForWriting())
  {
    v9 = ABOSLogAnalyzeDatabase();
    result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    ABAddressBookShouldAnalyzeDatabase_cold_1();
    return 0;
  }

  v3 = CPSqliteConnectionIntegerForPropertyWithDefaultValue();
  v4 = v3;
  if (v3 == -1)
  {
    v10 = ABOSLogAnalyzeDatabase();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(&dword_1B7EFB000, v10, OS_LOG_TYPE_DEFAULT, "Never analyzed database before! Should analyze.", v12, 2u);
    }
  }

  else
  {
    if (v3 <= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = v3;
    }

    if (v3 >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = v3;
    }

    if (v6)
    {
      if (v5 / v6 < 10)
      {
        return 0;
      }
    }

    else if (v5 <= 0)
    {
      return 0;
    }
  }

  v11 = ABOSLogAnalyzeDatabase();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109376;
    v12[1] = v4;
    v13 = 1024;
    v14 = a2;
    _os_log_impl(&dword_1B7EFB000, v11, OS_LOG_TYPE_DEFAULT, "Old count = %d, current count = %d. Should analyze database.", v12, 0xEu);
  }

  return 1;
}

void ABAddressBookAnalyzeDatabase(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = ABOSLogAnalyzeDatabase();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_1B7EFB000, v2, OS_LOG_TYPE_DEFAULT, "Will analyze database", &v15, 2u);
  }

  if (*(a1 + 16))
  {
    CPRecordStoreGetDatabase();
    v3 = CPSqliteDatabaseConnectionForWriting();
    if (v3)
    {
      v4 = v3;
      [objc_msgSend(objc_msgSend(MEMORY[0x1E69966E8] "currentEnvironment")];
      v6 = v5;
      v7 = sqlite3_exec(*(v4 + 8), "PRAGMA analysis_limit=5000;", 0, 0, 0);
      if (!v7)
      {
        v7 = sqlite3_exec(*(v4 + 8), "ANALYZE;", 0, 0, 0);
      }

      CPSqliteConnectionSetIntegerForProperty();
      [objc_msgSend(objc_msgSend(MEMORY[0x1E69966E8] "currentEnvironment")];
      v9 = [MEMORY[0x1E6996858] stringForTimeInterval:v8 - v6];
      v10 = ABOSLogAnalyzeDatabase();
      v11 = v10;
      if (v7)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v12 = sqlite3_errmsg(*(v4 + 8));
          v15 = 67109634;
          *v16 = v7;
          *&v16[4] = 2080;
          *&v16[6] = v12;
          v17 = 2114;
          v18 = v9;
          _os_log_error_impl(&dword_1B7EFB000, v11, OS_LOG_TYPE_ERROR, "Failed to analyze database: (%d) %s (%{public}@)", &v15, 0x1Cu);
        }
      }

      else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138543362;
        *v16 = v9;
        _os_log_impl(&dword_1B7EFB000, v11, OS_LOG_TYPE_DEFAULT, "Did analyze database (%{public}@)", &v15, 0xCu);
      }
    }

    else
    {
      v14 = ABOSLogAnalyzeDatabase();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        ABAddressBookShouldAnalyzeDatabase_cold_1();
      }
    }
  }

  else
  {
    v13 = ABOSLogAnalyzeDatabase();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      ABAddressBookShouldAnalyzeDatabase_cold_2();
    }
  }
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

CFDateRef _ABRecordCopyWrappedCPPropertyRef(const void *a1, int a2, const void *a3)
{
  valuePtr = a3;
  if (kABPersonCreationDateProperty != a2 && kABPersonModificationDateProperty != a2)
  {
    PropertyType = ABRecordGetPropertyType(a1, a2);
    if (PropertyType == 2)
    {
      return CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    }

    if (a3)
    {

      return CFRetain(a3);
    }

    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  v5 = *MEMORY[0x1E695E480];

  return CFDateCreate(v5, a3);
}

CFDateRef ABRecordCopyOriginalValue(const void *a1, int a2)
{
  if (ABLogAPIUsage())
  {
    v15 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFTypeRef ABRecordCopyOriginalValue(ABRecordRef, ABPropertyID)", 79, v4, 0, v5, v6, v7, v15);
    CFRelease(v4);
  }

  OriginalProperty = CPRecordGetOriginalProperty();
  v9 = _ABRecordCopyWrappedCPPropertyRef(a1, a2, OriginalProperty);
  if (ABLogAPIUsage())
  {
    _ABLog2(6, "CFTypeRef ABRecordCopyOriginalValue(ABRecordRef, ABPropertyID)", 82, @">> ", 0, v10, v11, v12, v14);
  }

  return v9;
}

BOOL ABRecordRemoveValue(ABRecordRef record, ABPropertyID property, CFErrorRef *error)
{
  v3 = *&property;
  if (ABLogAPIUsage())
  {
    v10 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABRecordRemoveValue(ABRecordRef, ABPropertyID, CFErrorRef *)", 132, v5, 0, v6, v7, v8, v10);
    CFRelease(v5);
  }

  return ABCRecordRemoveValueAndReturnError(record, v3);
}

CFStringRef ABRecordCopyCompositeName(ABRecordRef record)
{
  if (ABLogAPIUsage())
  {
    v12 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFStringRef ABRecordCopyCompositeName(ABRecordRef)", 138, v2, 0, v3, v4, v5, v12);
    CFRelease(v2);
  }

  Class = CPRecordGetClass();
  if (Class == ABCPersonClass)
  {

    return ABPersonCopyCompositeName(record);
  }

  else if (Class == ABCGroupClass[0])
  {

    return ABGroupCopyCompositeName(record);
  }

  else if (Class == ABCSourceClass)
  {

    return ABSourceCopyCompositeName();
  }

  else
  {
    if (ABLogAPIUsage())
    {
      _ABLog2(6, "CFStringRef ABRecordCopyCompositeName(ABRecordRef)", 152, @">> ", 0, v7, v8, v9, v11);
    }

    return 0;
  }
}

uint64_t ABRecordShow()
{
  if (ABLogAPIUsage())
  {
    v5 = _isMainThread();
    v0 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "void ABRecordShow(ABRecordRef)", 160, v0, 0, v1, v2, v3, v5);
    CFRelease(v0);
  }

  return ABCRecordShow();
}

uint64_t ABRecordSetIntValue(const void *a1, uint64_t a2, int a3, CFAllocatorRef *a4)
{
  if (ABLogAPIUsage())
  {
    v13 = _isMainThread();
    v8 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABRecordSetIntValue(ABRecordRef, ABPropertyID, int, CFErrorRef *)", 178, v8, 0, v9, v10, v11, v13);
    CFRelease(v8);
  }

  return ABCRecordSetIntValueAndReturnError(a1, a2, a3, a4);
}

uint64_t ABRecordNameForProperty(uint64_t a1, uint64_t a2)
{
  if (ABLogAPIUsage())
  {
    v9 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFStringRef ABRecordNameForProperty(ABRecordRef, ABPropertyID)", 190, v4, 0, v5, v6, v7, v9);
    CFRelease(v4);
  }

  return ABCRecordNameForProperty(a1, a2);
}

uint64_t ABRecordGetPolicy(const void *a1)
{
  AddressBook = ABRecordGetAddressBook();
  if (ABRecordGetRecordType(a1) == 1)
  {
    v3 = ABGroupCopySource(a1);
    goto LABEL_6;
  }

  if (!ABRecordGetRecordType(a1))
  {
    v3 = ABPersonCopySource(a1);
LABEL_6:
    if (v3)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v3 = 0;
LABEL_7:
  if (AddressBook)
  {
    v3 = ABAddressBookCopyDefaultSource(AddressBook);
    CPRecordSetProperty();
  }

LABEL_9:
  if (!v3)
  {
    return 0;
  }

  Policy = ABSourceGetPolicy(v3);
  CFRelease(v3);
  return Policy;
}

CFStringRef ABPersonCopyLocalizedLowercasePropertyName(int a1)
{
  if (ABLogAPIUsage())
  {
    v9 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFStringRef ABPersonCopyLocalizedLowercasePropertyName(ABPropertyID)", 304, v2, 0, v3, v4, v5, v9);
    CFRelease(v2);
  }

  v6 = ABPersonNameForProperty(a1);
  v7 = _ABBundle();

  return CFBundleCopyLocalizedString(v7, v6, v6, @"LocalizedLowercaseProperties");
}

CFStringRef ABPersonCopyLocalizedPropertyName(ABPropertyID property)
{
  if (ABLogAPIUsage())
  {
    v8 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFStringRef ABPersonCopyLocalizedPropertyName(ABPropertyID)", 311, v2, 0, v3, v4, v5, v8);
    CFRelease(v2);
  }

  v6 = ABPersonNameForProperty(property);

  return ABCCopyLocalizedPropertyOrLabel(v6);
}

double ABPersonSizeForFormat(unsigned int a1)
{
  PixelWidth = ABPersonImageFormatGetPixelWidth(a1);
  ABPersonImageFormatGetPixelHeight(a1);
  return PixelWidth;
}

uint64_t _setImageDataWithCropRect(const void *a1, int a2, const __CFData *a3, int a4, double a5, double a6, double a7, double a8)
{
  *&v48[3] = *MEMORY[0x1E69E9840];
  cf = 0;
  v38 = 0;
  if (ABImageUtilsCopyImageSourceAndGetSizeFromData(a3, &cf, &v38 + 1, &v38))
  {
    if (a4)
    {
      v16 = v38 - a6 - a8;
      v17 = ABOSLogImageMetadata();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134219008;
        v40 = a5;
        v41 = 2048;
        v42 = a6;
        v43 = 2048;
        v44 = a7;
        v45 = 2048;
        v46 = a8;
        v47 = 2048;
        *v48 = v16;
        _os_log_debug_impl(&dword_1B7EFB000, v17, OS_LOG_TYPE_DEBUG, "[Likeness Update] Thumbnail cropRect {%.2f, %.2f, %.2f, %.2f} inverted Y-origin to %.2f", buf, 0x34u);
      }
    }

    else
    {
      v16 = a6;
    }

    if (([MEMORY[0x1E6996738] cropRect:a5 fitsWithinSize:{v16, a7, a8, SHIDWORD(v38), v38}] & 1) == 0)
    {
      v19 = ABOSLogImageMetadata();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 134219264;
        v40 = a5;
        v41 = 2048;
        v42 = v16;
        v43 = 2048;
        v44 = a7;
        v45 = 2048;
        v46 = a8;
        v47 = 1024;
        v48[0] = HIDWORD(v38);
        LOWORD(v48[1]) = 1024;
        *(&v48[1] + 2) = v38;
        _os_log_error_impl(&dword_1B7EFB000, v19, OS_LOG_TYPE_ERROR, "[Likeness Update] Attempting to set imageData with cropRect {%.2f, %.2f, %.2f, %.2f} extending beyond image of size (%i x %i), forcing a centered square cropRect", buf, 0x36u);
      }

      [MEMORY[0x1E6996738] centeredSquareCropRectInRect:{0.0, 0.0, SHIDWORD(v38), v38}];
      a5 = v20;
      v16 = v21;
      a7 = v22;
      a8 = v23;
    }

    if (v16 >= 0.0)
    {
      v25 = v16;
    }

    else
    {
      v24 = ABOSLogImageMetadata();
      v25 = 0.0;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 134219008;
        v40 = a5;
        v41 = 2048;
        v42 = v16;
        v43 = 2048;
        v44 = a7;
        v45 = 2048;
        v46 = a8;
        v47 = 1024;
        v48[0] = v38;
        _os_log_error_impl(&dword_1B7EFB000, v24, OS_LOG_TYPE_ERROR, "[Likeness Update] Thumbnail cropRect {%.2f, %.2f, %.2f, %.2f} Y-origin forced to 0 because it was negative (availableHeight = %i)", buf, 0x30u);
      }
    }

    v26 = ABPersonSetImageDataAndCropRect(a1, a2);
    v18 = v26;
    if (a2 == 2 && v26)
    {
      v27 = ABOSLogImageMetadata();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134219264;
        v40 = a5;
        v41 = 2048;
        v42 = v25;
        v43 = 2048;
        v44 = a7;
        v45 = 2048;
        v46 = a8;
        v47 = 1024;
        v48[0] = HIDWORD(v38);
        LOWORD(v48[1]) = 1024;
        *(&v48[1] + 2) = v38;
        _os_log_impl(&dword_1B7EFB000, v27, OS_LOG_TYPE_DEFAULT, "[Likeness Update] Setting original size imageData with cropRect {%.2f, %.2f, %.2f, %.2f} for image of size (%i x %i). Also setting thumbnail & fullscreen derivatives.", buf, 0x36u);
      }

      v28 = *MEMORY[0x1E695F058];
      v29 = *(MEMORY[0x1E695F058] + 8);
      v30 = SHIDWORD(v38);
      v31 = v38;
      v32 = ABImageUtilsCenteredOverflowRectWithFullScreenRatioForRectWithAvailableSize(a5, v25, a7, a8, SHIDWORD(v38), v38);
      _resizeAndStoreImageSourceForFormat(a1, cf, 4u, 0, v28, v29, v30, v31, v32, v33, v34, v35);
      _resizeAndStoreImageSourceForFormat(a1, cf, 0, 1, v28, v29, v30, v31, a5, v25, a7, a8);
    }

    CFRelease(cf);
  }

  else if (a3)
  {
    return 0;
  }

  else
  {
    return ABCPersonRemoveImageData(a1);
  }

  return v18;
}

uint64_t ABPersonSetImageDataAndCropRect(const void *a1, int a2)
{
  if (ABLogAPIUsage())
  {
    v9 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABPersonSetImageDataAndCropRect(ABCRecordRef, ABPersonImageFormat, CFDataRef, int, int, int, int, CFErrorRef *)", 537, v4, 0, v5, v6, v7, v9);
    CFRelease(v4);
  }

  return ABCPersonSetImageDataDerivedFromFormatAndCropRectAndReturnError(a1, a2);
}

void _resizeAndStoreImageSourceForFormat(const void *a1, CGImageSource *a2, unsigned int a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double PixelWidth, double PixelHeight)
{
  if (ABPersonImageFormatIsLessThanOrEqualToPixelSize(a3, a7, a8))
  {
    v29 = PixelWidth;
    v22 = PixelHeight;
    Scale = ABPersonImageFormatGetScale(a3);
    PixelWidth = ABPersonImageFormatGetPixelWidth(a3);
    PixelHeight = ABPersonImageFormatGetPixelHeight(a3);
LABEL_5:
    ImageFromImageSourceWithSizeCropRectMaxSize = ABImageUtilsCreateImageFromImageSourceWithSizeCropRectMaxSize(a2, a7, a8, a9, a10, v29, v22, PixelWidth, PixelHeight);
    if (Scale != 1.0)
    {
      PixelWidth = PixelWidth / Scale;
      PixelHeight = PixelHeight / Scale;
    }

    v25 = *MEMORY[0x1E6963860];
    Type = CGImageSourceGetType(a2);
    if (UTTypeConformsTo(v25, Type))
    {
      v27 = @"public.png";
    }

    else
    {
      v27 = @"public.jpeg";
    }

    ScaledImageData = ABImageUtilsCreateScaledImageData(ImageFromImageSourceWithSizeCropRectMaxSize, 8u, v27, 0, PixelWidth, PixelHeight, Scale);
    ABPersonSetImageDataAndCropRect(a1, a3);
    CGImageRelease(ImageFromImageSourceWithSizeCropRectMaxSize);
    if (ScaledImageData)
    {

      CFRelease(ScaledImageData);
    }

    return;
  }

  if (a4)
  {
    Scale = 1.0;
    v29 = PixelWidth;
    v22 = PixelHeight;
    goto LABEL_5;
  }

  ABCPersonRemoveImageDataAndReturnError(a1, a3);
}

BOOL ABPersonSetImageData(ABRecordRef person, CFDataRef imageData, CFErrorRef *error)
{
  if (ABLogAPIUsage())
  {
    v14 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABPersonSetImageData(ABRecordRef, CFDataRef, CFErrorRef *)", 487, v5, 0, v6, v7, v8, v14);
    CFRelease(v5);
  }

  v15 = 0;
  ABImageUtilsCopyImageSourceAndGetSizeFromData(imageData, 0, &v15 + 1, &v15);
  v9 = ABImageUtilsCenteredSquareForRect(0.0, 0.0, SHIDWORD(v15), v15);
  return _setImageDataWithCropRect(person, 2, imageData, 0, v9, v10, v11, v12);
}

uint64_t ABPersonGetDerivedFromFormatFromImageWithFormat(uint64_t a1, int a2)
{
  if (ABLogAPIUsage())
  {
    v9 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "ABPersonImageFormat ABPersonGetDerivedFromFormatFromImageWithFormat(ABRecordRef, ABPersonImageFormat)", 509, v4, 0, v5, v6, v7, v9);
    CFRelease(v4);
  }

  return ABCPersonGetDerivedFromFormatFromImageWithFormat(a1, a2);
}

const __CFData *ABPersonCopyImageDataAndInvertedCropRect(uint64_t a1, int a2, _DWORD *a3, int *a4, _DWORD *a5, _DWORD *a6)
{
  if (ABLogAPIUsage())
  {
    v19 = _isMainThread();
    v12 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFDataRef ABPersonCopyImageDataAndInvertedCropRect(ABRecordRef, ABPersonImageFormat, int *, int *, int *, int *)", 514, v12, 0, v13, v14, v15, v19);
    CFRelease(v12);
  }

  v21 = 0;
  v16 = ABCPersonCopyImageDataAndCropRect(a1, a2, a3, &v21, a5, a6);
  v17 = v16;
  if (v16)
  {
    v20 = 0;
    if (ABImageUtilsCopyImageSourceAndGetSizeFromData(v16, 0, 0, &v20))
    {
      if (a4 && a6)
      {
        *a4 = (v20 - (v21 + *a6)) & ~((v20 - (v21 + *a6)) >> 31);
      }
    }
  }

  return v17;
}

uint64_t ABPersonCopyImageDataAndCropRect(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  if (ABLogAPIUsage())
  {
    v17 = _isMainThread();
    v12 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFDataRef ABPersonCopyImageDataAndCropRect(ABRecordRef, ABPersonImageFormat, int *, int *, int *, int *)", 532, v12, 0, v13, v14, v15, v17);
    CFRelease(v12);
  }

  return ABCPersonCopyImageDataAndCropRect(a1, a2, a3, a4, a5, a6);
}

uint64_t ABPersonSetImageDataDerivedFromFormatAndReturnError(const void *a1, int a2)
{
  if (ABLogAPIUsage())
  {
    v9 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABPersonSetImageDataDerivedFromFormatAndReturnError(ABRecordRef, ABPersonImageFormat, ABPersonImageFormat, CFDataRef, CFErrorRef *)", 542, v4, 0, v5, v6, v7, v9);
    CFRelease(v4);
  }

  return ABCPersonSetImageDataDerivedFromFormatAndCropRectAndReturnError(a1, a2);
}

BOOL ABPersonSetImageHashForImageData(const void *a1, void *a2, CFErrorRef *a3)
{
  v5 = [a2 _cn_md5Hash];
  v6 = kABPersonImageHashProperty;

  return ABRecordSetValue(a1, v6, v5, a3);
}

void ABPersonResetImageTypeIfNeeded(const void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (([ABRecordCopyValue(a1 kABPersonImageTypeProperty)] & 1) == 0)
  {
    if (((*(*MEMORY[0x1E6996570] + 16))() & 1) == 0)
    {
      ABRecordSetValue(a1, kABPersonImageTypeProperty, @"PHOTO", 0);
      v2 = ABRecordCopyValue(a1, kABPersonInternalUUIDProperty);
      v3 = ABOSLogImageMetadata();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138543362;
        v9 = v2;
        _os_log_impl(&dword_1B7EFB000, v3, OS_LOG_TYPE_DEFAULT, "AddressBook set empty image type to photo for contact identifier %{public}@", &v8, 0xCu);
      }
    }

    v4 = ABRecordCopyValue(a1, kABPersonImageHashProperty);
    if (v4)
    {
      v5 = v4;
      if (([-[__CFData _cn_md5Hash](ABPersonCopyImageDataWithFormat(a1 5u)] & 1) == 0 && (objc_msgSend(-[__CFData _cn_md5Hash](ABPersonCopyImageDataWithFormat(a1, kABPersonImageFormatOriginalSize), "_cn_md5Hash"), "isEqualToData:", v5) & 1) == 0)
      {
        ABRecordSetValue(a1, kABPersonImageTypeProperty, @"PHOTO", 0);
        v6 = ABRecordCopyValue(a1, kABPersonInternalUUIDProperty);
        v7 = ABOSLogImageMetadata();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 138543362;
          v9 = v6;
          _os_log_impl(&dword_1B7EFB000, v7, OS_LOG_TYPE_DEFAULT, "AddressBook reset image type to photo for contact identifier %{public}@", &v8, 0xCu);
        }
      }
    }
  }
}

CFDataRef ABPersonCopyImageDataWithFormat(ABRecordRef person, ABPersonImageFormat format)
{
  if (ABLogAPIUsage())
  {
    v9 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFDataRef ABPersonCopyImageDataWithFormat(ABRecordRef, ABPersonImageFormat)", 615, v4, 0, v5, v6, v7, v9);
    CFRelease(v4);
  }

  return ABCPersonCopyImageData(person, format);
}

void ABPersonResetSharedPhotoDisplayPreference(const void *a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(ABRecordCopyValue(a1, kABPersonDisplayFlagsProperty), "integerValue") & 0xFFFFFFFFFFFFFF3FLL | 0x80}];
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  ABRecordSetValue(a1, kABPersonDisplayFlagsProperty, v3, 0);

  CFRelease(v3);
}

CFDataRef ABPersonCopyImageData(ABRecordRef person)
{
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFDataRef ABPersonCopyImageData(ABRecordRef)", 609, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  return ABPersonCopyImageDataWithFormat(person, kABPersonImageFormatOriginalSize);
}

CFStringRef ABPersonCopyAvatarRecipeData(const void *a1)
{
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFDataRef ABPersonCopyAvatarRecipeData(ABRecordRef)", 621, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  return ABCPersonCopyAvatarRecipeData(a1);
}

CFStringRef ABPersonSetAvatarRecipeData(const void *a1, uint64_t a2)
{
  if (ABLogAPIUsage())
  {
    v9 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABPersonSetAvatarRecipeData(ABRecordRef, CFDataRef)", 627, v4, 0, v5, v6, v7, v9);
    CFRelease(v4);
  }

  return ABCPersonSetAvatarRecipeData(a1, a2);
}

BOOL ABPersonClearAvatarRecipeData(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABPersonClearAvatarRecipeData(ABRecordRef)", 633, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  return ABCPersonClearAvatarRecipeData(a1);
}

BOOL ABPersonHasImageData(ABRecordRef person)
{
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABPersonHasImageData(ABRecordRef)", 639, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  return ABCPersonHasImageData(person);
}

BOOL ABPersonRemoveImageData(ABRecordRef person, CFErrorRef *error)
{
  if (ABLogAPIUsage())
  {
    v8 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABPersonRemoveImageData(ABRecordRef, CFErrorRef *)", 645, v3, 0, v4, v5, v6, v8);
    CFRelease(v3);
  }

  return ABCPersonRemoveImageDataAndReturnError(person, -1);
}

CFComparisonResult ABPersonComparePeopleByName(ABRecordRef person1, ABRecordRef person2, ABPersonSortOrdering ordering)
{
  if (ABLogAPIUsage())
  {
    v16 = _isMainThread();
    v6 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFComparisonResult ABPersonComparePeopleByName(ABRecordRef, ABRecordRef, ABPersonSortOrdering)", 652, v6, 0, v7, v8, v9, v16);
    CFRelease(v6);
  }

  v10 = ABCPersonCompareNameOfPeople(person1, person2, ordering);
  if (ABLogAPIUsage())
  {
    _ABLog2(6, "CFComparisonResult ABPersonComparePeopleByName(ABRecordRef, ABRecordRef, ABPersonSortOrdering)", 654, @">> ", 0, v11, v12, v13, v15);
  }

  return v10;
}

uint64_t ABAddressBookGetEmailCount(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogAddressBook(a1);
    _ABLog2(6, "CFIndex ABAddressBookGetEmailCount(ABAddressBookRef)", 699, v3, @"%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  return _countProperty(a1, kABPersonEmailProperty, 0);
}

void ABPersonCopyArrayOfPhoneNumbersLabelsAndPeopleInRange(uint64_t a1, int a2, int a3, void *a4, void *a5, void *a6)
{
  if (ABLogAPIUsage())
  {
    v12 = _isMainThread();
    v13 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v12);
    v14 = ABLogAddressBook(a1);
    _ABLog2(6, "void ABPersonCopyArrayOfPhoneNumbersLabelsAndPeopleInRange(ABAddressBookRef, CFRange, CFArrayRef *, CFArrayRef *, CFArrayRef *)", 717, v13, @"%@", v15, v16, v17, v14);
    CFRelease(v13);
  }

  v18 = *(a1 + 16);

  ABCDBContextCopyArrayOfPhoneNumbersLabelAndPeopleInRange(v18, a2, a3, a4, a5, a6);
}

uint64_t _accumulateEmails(uint64_t a1, __CFArray *a2)
{
  v3 = sqlite3_column_text(*(a1 + 8), 0);
  if (v3)
  {
    v4 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v3, 0x8000100u);
    if (v4)
    {
      v5 = v4;
      if (CFStringGetLength(v4))
      {
        CFArrayAppendValue(a2, v5);
      }

      CFRelease(v5);
    }
  }

  return 0;
}

uint64_t ABAddressBookGetPersonCountInSource(uint64_t a1, const void *a2)
{
  if (ABLogAPIUsage())
  {
    v4 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v4);
    v6 = ABLogAddressBook(a1);
    _ABLog2(6, "CFIndex ABAddressBookGetPersonCountInSource(ABAddressBookRef, ABRecordRef)", 773, v5, @"%@", v7, v8, v9, v6);
    CFRelease(v5);
  }

  return ABCGetPersonCountInSourceShowingLinks(a1, a2, 0);
}

uint64_t ABAddressBookCopyPeopleWithUUIDs(uint64_t a1, const __CFArray *a2)
{
  if (ABLogAPIUsage())
  {
    v4 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v4);
    v6 = ABLogAddressBook(a1);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyPeopleWithUUIDs(ABAddressBookRef, CFArrayRef)", 785, v5, @"%@", v7, v8, v9, v6);
    CFRelease(v5);
  }

  v10 = ABCPersonCopyRecordsForUUIDs(a1, a2);
  if (ABLogAPIUsage())
  {
    _ABLog2(6, "CFArrayRef ABAddressBookCopyPeopleWithUUIDs(ABAddressBookRef, CFArrayRef)", 787, @">> ", 0, v11, v12, v13, v15);
  }

  return v10;
}

uint64_t ABAddressBookCopyPeopleWithLinkIdentifiers(uint64_t a1, const __CFArray *a2)
{
  if (ABLogAPIUsage())
  {
    v4 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v4);
    v6 = ABLogAddressBook(a1);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyPeopleWithLinkIdentifiers(ABAddressBookRef, CFArrayRef)", 794, v5, @"%@", v7, v8, v9, v6);
    CFRelease(v5);
  }

  v10 = ABCPersonCopyRecordsForLinkIdentifers(a1, a2);
  if (ABLogAPIUsage())
  {
    _ABLog2(6, "CFArrayRef ABAddressBookCopyPeopleWithLinkIdentifiers(ABAddressBookRef, CFArrayRef)", 796, @">> ", 0, v11, v12, v13, v15);
  }

  return v10;
}

CFArrayRef ABAddressBookCopyArrayOfAllPeople(ABAddressBookRef addressBook)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogAddressBook(addressBook);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyArrayOfAllPeople(ABAddressBookRef)", 802, v3, @"%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  v8 = ABCCopyArrayOfAllPeople(addressBook);
  if (ABLogAPIUsage())
  {
    _ABLog2(6, "CFArrayRef ABAddressBookCopyArrayOfAllPeople(ABAddressBookRef)", 804, @">> ", 0, v9, v10, v11, v13);
  }

  return v8;
}

__CFString *ABAddressBookCopyWhereClauseForLinkedPeopleInGroupsAndSources(int a1, char a2, CFArrayRef theArray, const __CFArray *a4, uint64_t a5)
{
  if (theArray)
  {
    v10 = CFArrayGetCount(theArray) > 0;
    if (a4)
    {
LABEL_3:
      v11 = CFArrayGetCount(a4) > 0;
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
LABEL_6:
  v12 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (a5)
  {
    v14 = CFStringCreateWithFormat(v12, 0, @"%@.", a5);
    v15 = CFStringCreateWithFormat(v12, 0, @"%@_inner", a5);
    if (!a1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v15 = @"innerPerson";
    v14 = &stru_1F2FE2718;
    if (!a1)
    {
      goto LABEL_13;
    }
  }

  if ((a2 & 1) == 0)
  {
    CFStringAppendFormat(Mutable, 0, @"%@IsPreferredName = 1", v14);
    if (!a5)
    {
      return Mutable;
    }

    goto LABEL_21;
  }

LABEL_13:
  if (v10 && v11)
  {
    SubqueryForLinkedPersonIDsInGroups = _createSubqueryForLinkedPersonIDsInGroups(theArray, v15, a1);
    SubqueryForLinkedPersonIDsInSources = _createSubqueryForLinkedPersonIDsInSources(a4, v15, a1);
    CFStringAppendFormat(Mutable, 0, @"%@ROWID IN (%@ UNION %@)", v14, SubqueryForLinkedPersonIDsInGroups, SubqueryForLinkedPersonIDsInSources);
    CFRelease(SubqueryForLinkedPersonIDsInGroups);
  }

  else
  {
    if (v10)
    {
      v18 = _createSubqueryForLinkedPersonIDsInGroups(theArray, v15, a1);
    }

    else
    {
      if (!v11)
      {
        CFRelease(Mutable);
        Mutable = 0;
        if (!a5)
        {
          return Mutable;
        }

        goto LABEL_21;
      }

      v18 = _createSubqueryForLinkedPersonIDsInSources(a4, v15, a1);
    }

    SubqueryForLinkedPersonIDsInSources = v18;
    CFStringAppendFormat(Mutable, 0, @"%@ROWID IN (%@)", v14, v18);
  }

  CFRelease(SubqueryForLinkedPersonIDsInSources);
  if (a5)
  {
LABEL_21:
    CFRelease(v14);
    CFRelease(v15);
  }

  return Mutable;
}

CFStringRef _createSubqueryForLinkedPersonIDsInGroups(const __CFArray *a1, uint64_t a2, int a3)
{
  Count = CFArrayGetCount(a1);
  PlaceholdersForNumberOfItems = _createPlaceholdersForNumberOfItems(Count);
  if (a3)
  {
    v7 = CFStringCreateWithFormat(0, 0, @"IFNULL(abpl.PreferredNamePersonID, %@.ROWID)", a2);
  }

  else
  {
    v7 = CFStringCreateWithFormat(0, 0, @"%@.ROWID", a2);
  }

  v8 = v7;
  v9 = CFStringCreateWithFormat(0, 0, @"SELECT %@ FROM ABGroupMembers abgm JOIN ABPerson %@ ON abgm.member_id = %@.ROWID LEFT OUTER JOIN ABPersonLink abpl ON %@.PersonLink = abpl.ROWID WHERE abgm.group_id IN (%@) AND abgm.member_type = 0", v7, a2, a2, a2, PlaceholdersForNumberOfItems);
  CFRelease(v8);
  CFRelease(PlaceholdersForNumberOfItems);
  return v9;
}

CFStringRef _createSubqueryForLinkedPersonIDsInSources(const __CFArray *a1, uint64_t a2, int a3)
{
  Count = CFArrayGetCount(a1);
  PlaceholdersForNumberOfItems = _createPlaceholdersForNumberOfItems(Count);
  if (a3)
  {
    v7 = CFStringCreateWithFormat(0, 0, @"IFNULL(abpl.PreferredNamePersonID, %@.ROWID)", a2);
  }

  else
  {
    v7 = CFStringCreateWithFormat(0, 0, @"%@.ROWID", a2);
  }

  v8 = v7;
  v9 = CFStringCreateWithFormat(0, 0, @"SELECT %@ FROM ABPerson %@ LEFT OUTER JOIN ABPersonLink abpl ON %@.PersonLink = abpl.ROWID WHERE %@.StoreID IN (%@)", v7, a2, a2, a2, PlaceholdersForNumberOfItems);
  CFRelease(v8);
  CFRelease(PlaceholdersForNumberOfItems);
  return v9;
}

uint64_t ABAddressBookBindWhereClauseForLinkedPeopleInGroupsAndSources(uint64_t result, CFArrayRef theArray, CFArrayRef a3, sqlite3_stmt *a4, _DWORD *a5)
{
  if (result)
  {
    if (theArray)
    {
      result = CFArrayGetCount(theArray);
      v9 = (ceil(result / 10.0) * 10.0);
      if (v9 >= 1)
      {
        v10 = result;
        for (i = 0; i != v9; ++i)
        {
          if (i >= v10)
          {
            v15 = (*a5)++;
            result = sqlite3_bind_null(a4, v15);
          }

          else
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
            RecordID = ABRecordGetRecordID(ValueAtIndex);
            v14 = (*a5)++;
            result = sqlite3_bind_int(a4, v14, RecordID);
          }
        }
      }
    }

    if (a3)
    {
      result = CFArrayGetCount(a3);
      v16 = (ceil(result / 10.0) * 10.0);
      if (v16 >= 1)
      {
        v17 = result;
        for (j = 0; j != v16; ++j)
        {
          if (j >= v17)
          {
            v22 = (*a5)++;
            result = sqlite3_bind_null(a4, v22);
          }

          else
          {
            v19 = CFArrayGetValueAtIndex(a3, j);
            v20 = ABRecordGetRecordID(v19);
            v21 = (*a5)++;
            result = sqlite3_bind_int(a4, v21, v20);
          }
        }
      }
    }
  }

  return result;
}

uint64_t _copyArrayOfPreferredNamePeopleForOptionalGroupsAndSourcesWithSortOrdering(const void *a1, uint64_t a2, CFArrayRef theArray, const __CFArray *a4, int a5)
{
  if (!theArray)
  {
    v10 = 1;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    Count = 0;
    goto LABEL_6;
  }

  v10 = CFArrayGetCount(theArray) == 0;
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  Count = CFArrayGetCount(a4);
LABEL_6:
  if ((a2 & v10) == 1 && !Count)
  {
    return 0;
  }

  if (a2 && Count >= 1)
  {
    v13 = ABAddressBookCopyArrayOfAllSources(a1);
    if (v13)
    {
      v14 = v13;
      if (CFArrayGetCount(v13) < 1)
      {
LABEL_17:
        a2 = 0;
      }

      else
      {
        v15 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v14, v15);
          if ((ABRecordGetIntValue(ValueAtIndex, kABSourceTypeProperty) & 0x1000000) == 0)
          {
            v26.length = CFArrayGetCount(a4);
            v26.location = 0;
            if (!CFArrayContainsValue(a4, v26, ValueAtIndex))
            {
              break;
            }
          }

          if (++v15 >= CFArrayGetCount(v14))
          {
            goto LABEL_17;
          }
        }

        a2 = 1;
      }

      CFRelease(v14);
    }

    else
    {
      a2 = 0;
    }
  }

  cf = 0;
  SelectPrefix = CPRecordStoreCreateSelectPrefix();
  v18 = ABAddressBookCopyWhereClauseForLinkedPeopleInGroupsAndSources(1, a2, theArray, a4, @"outerPerson");
  if (v18)
  {
    v19 = v18;
    CFStringAppend(SelectPrefix, @" WHERE ");
    CFStringAppend(SelectPrefix, v19);
    CFRelease(v19);
  }

  if (a5)
  {
    v20 = @" ORDER BY LastSortLanguageIndex, LastSortSection, LastSort";
  }

  else
  {
    v20 = @" ORDER BY FirstSortLanguageIndex, FirstSortSection, FirstSort";
  }

  CFStringAppend(SelectPrefix, v20);
  CFStringAppend(SelectPrefix, @";");
  CPRecordStoreGetDatabase();
  v21 = CPSqliteDatabaseStatementForReading();
  ABRegulatoryLogReadContactsData(a1);
  CFRelease(SelectPrefix);
  if (v21 && (v22 = *(v21 + 8)) != 0)
  {
    v24 = 1;
    ABAddressBookBindWhereClauseForLinkedPeopleInGroupsAndSources(a2, theArray, a4, v22, &v24);
    v12 = CPRecordStoreProcessStatementWithPropertyIndices();
    CPSqliteStatementReset();
  }

  else
  {
    v12 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t ABAddressBookCopyArrayOfPreferredNamePeopleForGroupsAndSourcesWithSortOrdering(const void *a1, const __CFArray *a2, const __CFArray *a3, int a4)
{
  if (ABLogAPIUsage())
  {
    v8 = _isMainThread();
    v9 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v8);
    v10 = ABLogAddressBook(a1);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyArrayOfPreferredNamePeopleForGroupsAndSourcesWithSortOrdering(ABAddressBookRef, CFArrayRef, CFArrayRef, ABPersonSortOrdering)", 1023, v9, @"%@", v11, v12, v13, v10);
    CFRelease(v9);
  }

  return _copyArrayOfPreferredNamePeopleForOptionalGroupsAndSourcesWithSortOrdering(a1, 1, a2, a3, a4);
}

uint64_t ABAddressBookCopyArrayOfAllPreferredNamePeopleWithSortOrdering(const void *a1, int a2)
{
  if (ABLogAPIUsage())
  {
    v4 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v4);
    v6 = ABLogAddressBook(a1);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyArrayOfAllPreferredNamePeopleWithSortOrdering(ABAddressBookRef, ABPersonSortOrdering)", 1029, v5, @"%@", v7, v8, v9, v6);
    CFRelease(v5);
  }

  return _copyArrayOfPreferredNamePeopleForOptionalGroupsAndSourcesWithSortOrdering(a1, 0, 0, 0, a2);
}

CFArrayRef ABAddressBookCopyPeopleWithName(ABAddressBookRef addressBook, CFStringRef name)
{
  if (ABLogAPIUsage())
  {
    v4 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v4);
    v6 = ABLogAddressBook(addressBook);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyPeopleWithName(ABAddressBookRef, CFStringRef)", 1035, v5, @"%@", v7, v8, v9, v6);
    CFRelease(v5);
  }

  SortOrdering = ABPersonGetSortOrdering();
  v12 = 0;
  ABCCopyPeopleAndIdentifiersMatchingName(addressBook, name, SortOrdering, -1, &v12, 0);
  result = v12;
  if (!v12)
  {
    return CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, 0);
  }

  return result;
}

CFStringRef ABPersonInvalidateImageData(const __CFString *a1)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogAddressBook(a1);
    _ABLog2(6, "void ABPersonInvalidateImageData(ABAddressBookRef, ABImagePredicateFunction, void *)", 1065, v3, @"%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  return ABCPersonInvalidateImageData(a1);
}

CFStringRef ABPersonInvalidateSpecificImageData(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "void ABPersonInvalidateSpecificImageData(ABRecordRef, ABPersonImageFormat)", 1069, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  return ABCPersonInvalidateSpecificImageData(a1);
}

const __CFString *ABPersonInvalidateAllImageData(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "void ABPersonInvalidateAllImageData(ABRecordRef)", 1073, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  return ABCPersonInvalidateAllImageData(a1);
}

uint64_t __ABCopyArrayOfSectionListOffsetsForManagedConfiguration_block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v3 + 8);
  v6 = *(v5 + 24);
  *(v5 + 24) = v6 + 1;
  return sqlite3_bind_int(v4, v6, a2);
}

uint64_t __ABCopyArrayOfSectionListOffsetsForManagedConfiguration_block_invoke_2(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v3 + 8);
  v6 = *(v5 + 24);
  *(v5 + 24) = v6 + 1;
  return sqlite3_bind_int(v4, v6, a2);
}

uint64_t ABCopyArrayOfPeopleAtOffset(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  if (ABLogAPIUsage())
  {
    v9 = _isMainThread();
    v10 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v9);
    v11 = ABLogAddressBook(a1);
    _ABLog2(6, "CFArrayRef ABCopyArrayOfPeopleAtOffset(ABAddressBookRef, ABRecordRef, ABPersonSortOrdering, int, int)", 1134, v10, @"%@", v12, v13, v14, v11);
    CFRelease(v10);
  }

  return ABCCopyArrayOfPeopleAtOffsetIncludingOnlyPreferredNamePeople(a1, a3, a4, a5, 0);
}

uint64_t __ABAddressBookGetPreferredNamePeopleCountForManagedConfiguration_block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v3 + 8);
  v6 = *(v5 + 24);
  *(v5 + 24) = v6 + 1;
  return sqlite3_bind_int(v4, v6, a2);
}

uint64_t __ABAddressBookGetPreferredNamePeopleCountForManagedConfiguration_block_invoke_2(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v3 + 8);
  v6 = *(v5 + 24);
  *(v5 + 24) = v6 + 1;
  return sqlite3_bind_int(v4, v6, a2);
}

uint64_t ABCopyArrayOfPreferredNamePeopleAtOffsetForManagedConfiguration(uint64_t a1, void *a2, int a3, int a4, int a5)
{
  if (a2 && ([a2 deviceHasManagementRestrictions] & 1) != 0)
  {
    v10 = ABAddressBookIndexSetOfAllowedSourceIdentifiersIncludingDisabledSources(a1, a2, 0);
    v11 = SQLInClauseStringForParameterCount([v10 count]);
    SelectPrefixFromRecordDescriptor = CPRecordStoreCreateSelectPrefixFromRecordDescriptor();
    [SelectPrefixFromRecordDescriptor appendFormat:@" WHERE ROWID IN (SELECT rowid FROM ABPerson WHERE personlink = -1 AND StoreID IN %@ UNION SELECT ab_allowed_preferred_contact(abp.rowid, abp.StoreID, abp.IsPreferredName, ?) FROM ABPerson abp JOIN ABPersonLink abpl on abpl.rowid = abp.PersonLink WHERE abp.StoreID IN %@ GROUP BY abpl.rowid) ", v11, v11];
    if (a3)
    {
      v13 = @" ORDER BY LastSortLanguageIndex, LastSortSection, LastSort";
    }

    else
    {
      v13 = @" ORDER BY FirstSortLanguageIndex, FirstSortSection, FirstSort";
    }

    [SelectPrefixFromRecordDescriptor appendString:v13];
    [SelectPrefixFromRecordDescriptor appendString:@" LIMIT ? OFFSET ?"];
    ABRegulatoryLogReadContactsData(a1);
    CPRecordStoreGetDatabase();
    v14 = CPSqliteDatabaseStatementForReading();
    if (v14 && (v15 = v14, *(v14 + 8)))
    {
      v26 = 0;
      v27 = &v26;
      v28 = 0x2020000000;
      v29 = 1;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __ABCopyArrayOfPreferredNamePeopleAtOffsetForManagedConfiguration_block_invoke;
      v25[3] = &unk_1E7CCCBD0;
      v25[4] = &v26;
      v25[5] = v14;
      [v10 enumerateIndexesUsingBlock:v25];
      v16 = *(v15 + 8);
      v17 = *(v27 + 6);
      *(v27 + 6) = v17 + 1;
      sqlite3_bind_blob(v16, v17, v10, 8, 0);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __ABCopyArrayOfPreferredNamePeopleAtOffsetForManagedConfiguration_block_invoke_2;
      v24[3] = &unk_1E7CCCBD0;
      v24[4] = &v26;
      v24[5] = v15;
      [v10 enumerateIndexesUsingBlock:v24];
      v18 = *(v15 + 8);
      v19 = *(v27 + 6);
      *(v27 + 6) = v19 + 1;
      sqlite3_bind_int(v18, v19, a5);
      v20 = *(v15 + 8);
      v21 = *(v27 + 6);
      *(v27 + 6) = v21 + 1;
      sqlite3_bind_int(v20, v21, a4 & ~(a4 >> 31));
      v22 = CPRecordStoreProcessStatement();
      CPSqliteStatementReset();
      _Block_object_dispose(&v26, 8);
    }

    else
    {
      v22 = 0;
    }

    return v22;
  }

  else
  {

    return ABCopyArrayOfPreferredNamePeopleAtOffset(a1, a3, a4, a5);
  }
}

void sub_1B7F23600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ABCopyArrayOfPreferredNamePeopleAtOffset(uint64_t a1, int a2, int a3, int a4)
{
  if (ABLogAPIUsage())
  {
    v8 = _isMainThread();
    v9 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v8);
    v10 = ABLogAddressBook(a1);
    _ABLog2(6, "CFArrayRef ABCopyArrayOfPreferredNamePeopleAtOffset(ABAddressBookRef, ABPersonSortOrdering, int, int)", 1229, v9, @"%@", v11, v12, v13, v10);
    CFRelease(v9);
  }

  return ABCCopyArrayOfPeopleAtOffsetIncludingOnlyPreferredNamePeople(a1, a2, a3, a4, 1);
}

uint64_t __ABCopyArrayOfPreferredNamePeopleAtOffsetForManagedConfiguration_block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v3 + 8);
  v6 = *(v5 + 24);
  *(v5 + 24) = v6 + 1;
  return sqlite3_bind_int(v4, v6, a2);
}

uint64_t __ABCopyArrayOfPreferredNamePeopleAtOffsetForManagedConfiguration_block_invoke_2(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v3 + 8);
  v6 = *(v5 + 24);
  *(v5 + 24) = v6 + 1;
  return sqlite3_bind_int(v4, v6, a2);
}

uint64_t ABPersonRetrieveCompositeNameFormat()
{
  __personCompositeNameFormat = 0;
  result = [MEMORY[0x1E696ADF8] _defaultDisplayNameOrder];
  if (result == 1)
  {
    v1 = 0;
  }

  else
  {
    if (result != 2)
    {
      return result;
    }

    v1 = 1;
  }

  __personCompositeNameFormat = v1;
  return result;
}

void ABPersonSetCompositeNameFormat(int a1)
{
  if (ABLogAPIUsage())
  {
    v8 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "void ABPersonSetCompositeNameFormat(ABPersonCompositeNameFormat)", 1248, v2, 0, v3, v4, v5, v8);
    CFRelease(v2);
  }

  if (__personCompositeNameFormat != a1)
  {
    __personCompositeNameFormat = a1;
    if (a1)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    [getNSPersonNameComponentsFormatterPreferencesClass() setDefaultDisplayNameOrder:v6];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.AddressBook.PreferenceChanged", 0, 0, 1u);
  }
}

uint64_t getNSPersonNameComponentsFormatterPreferencesClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__0;
  v0 = getNSPersonNameComponentsFormatterPreferencesClass_softClass;
  v7 = __Block_byref_object_dispose__0;
  v8 = getNSPersonNameComponentsFormatterPreferencesClass_softClass;
  if (!getNSPersonNameComponentsFormatterPreferencesClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getNSPersonNameComponentsFormatterPreferencesClass_block_invoke;
    v2[3] = &unk_1E7CCC410;
    v2[4] = &v3;
    __getNSPersonNameComponentsFormatterPreferencesClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B7F23918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

ABPersonCompositeNameFormat ABPersonGetCompositeNameFormat(void)
{
  if (ABLogAPIUsage())
  {
    v5 = _isMainThread();
    v0 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "ABPersonCompositeNameFormat ABPersonGetCompositeNameFormat(void)", 1266, v0, 0, v1, v2, v3, v5);
    CFRelease(v0);
  }

  return __personCompositeNameFormat;
}

uint64_t ABPersonGetEditNameFormat()
{
  if (ABLogAPIUsage())
  {
    v5 = _isMainThread();
    v0 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "ABPersonEditNameFormat ABPersonGetEditNameFormat(void)", 1289, v0, 0, v1, v2, v3, v5);
    CFRelease(v0);
  }

  return __personEditNameFormat;
}

CFStringRef ABPersonCopyCompositeNameDelimiterForRecord(ABRecordRef record)
{
  v2 = 0;
  ABPersonGetCompositeNameFormatAndDelimiterForRecord(record, &v2);
  return v2;
}

CFArrayRef ABPersonCopyNamePieces(const void *a1, int a2, uint64_t *a3)
{
  if (ABLogAPIUsage())
  {
    v11 = _isMainThread();
    v6 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFArrayRef ABPersonCopyNamePieces(ABRecordRef, ABPersonSortOrdering, CFIndex *)", 1357, v6, 0, v7, v8, v9, v11);
    CFRelease(v6);
  }

  return ABCPersonCopyNamePieces(a1, a2, a3);
}

uint64_t ABPersonCopy(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "ABRecordRef ABPersonCopy(ABRecordRef)", 1482, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  return MEMORY[0x1EEDEC588](a1);
}

uint64_t ABPersonShow(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "void ABPersonShow(ABRecordRef)", 1487, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  return ABCPersonShow(a1);
}

CFMutableStringRef ABPersonCopyCompositePhoneticName(const void *a1)
{
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFStringRef ABPersonCopyCompositePhoneticName(ABRecordRef)", 1499, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  return ABCPersonCopyCompositePhoneticName(a1);
}

void ABPersonSetShortNameFormat(unsigned int a1)
{
  if (ABLogAPIUsage())
  {
    v8 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "void ABPersonSetShortNameFormat(ABPersonShortNameFormat)", 1534, v2, 0, v3, v4, v5, v8);
    CFRelease(v2);
  }

  if (__personShortNameFormat != a1)
  {
    __personShortNameFormat = a1;
    if (a1 < 4)
    {
      v6 = a1 + 1;
    }

    else
    {
      v6 = 3;
    }

    [getNSPersonNameComponentsFormatterPreferencesClass() setShortNameFormat:v6];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.AddressBook.PreferenceChanged", 0, 0, 1u);
  }
}

void ABPersonSetShortNameFormatEnabled(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "void ABPersonSetShortNameFormatEnabled(_Bool)", 1570, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  if (__personShortNameFormatEnabled != a1)
  {
    [getNSPersonNameComponentsFormatterPreferencesClass() setShortNameIsEnabled:a1];
    __personShortNameFormatEnabled = a1;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.AddressBook.PreferenceChanged", 0, 0, 1u);
  }
}

void ABPersonSetShortNamePreferNicknames(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "void ABPersonSetShortNamePreferNicknames(_Bool)", 1588, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  if (__personShortNamePreferNicknames != a1)
  {
    [getNSPersonNameComponentsFormatterPreferencesClass() setPreferNicknamesDefault:a1];
    __personShortNamePreferNicknames = a1;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.AddressBook.PreferenceChanged", 0, 0, 1u);
  }
}

void _replaceNameWithInitial(CFStringRef *a1)
{
  if (CFStringGetLength(*a1) >= 2)
  {
    v3.location = 0;
    v3.length = 1;
    v2 = CFStringCreateWithSubstring(0, *a1, v3);
    CFRelease(*a1);
    *a1 = v2;
  }
}

uint64_t __PreferencesChanged()
{
  v0 = ABPeoplePickerPrefs();
  CFPreferencesAppSynchronize(v0);
  __personCompositeNameFormat = 0;
  v1 = [MEMORY[0x1E696ADF8] _defaultDisplayNameOrder];
  if (v1 == 1)
  {
    v2 = 0;
  }

  else
  {
    if (v1 != 2)
    {
      goto LABEL_6;
    }

    v2 = 1;
  }

  __personCompositeNameFormat = v2;
LABEL_6:
  ABPersonRetrieveEditNameFormat();

  return ABPersonRetrieveShortNameSettings();
}

CFTypeRef ABPersonCopySoundIdentifierForMultiValueIdentifierForIndividualContact(const void *a1, uint64_t a2)
{
  if (ABLogAPIUsage())
  {
    v14 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFStringRef ABPersonCopySoundIdentifierForMultiValueIdentifierForIndividualContact(ABRecordRef, int)", 1823, v4, 0, v5, v6, v7, v14);
    CFRelease(v4);
  }

  if ((a2 & 0x80000000) != 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d", a2);
  }

  v9 = ABRecordCopyValue(a1, kABPersonSoundProperty);
  if (!v9)
  {
    v12 = 0;
    if (!v8)
    {
      return v12;
    }

    goto LABEL_13;
  }

  v10 = v9;
  IndexForIdentifier = ABMultiValueGetIndexForIdentifier(v9, a2);
  if (IndexForIdentifier == -1)
  {
    v12 = 0;
  }

  else
  {
    v12 = ABMultiValueCopyValueAtIndex(v10, IndexForIdentifier);
  }

  CFRelease(v10);
  if (v8)
  {
LABEL_13:
    CFRelease(v8);
  }

  return v12;
}

const void *ABPersonCopySoundIdentifierForMultiValueIdentifierIncludingLinkedContacts(const void *a1, uint64_t a2)
{
  v4 = ABPersonCopyArrayOfAllLinkedPeople(a1);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  Count = CFArrayGetCount(v4);
  v7 = ABPersonCopySoundIdentifierForMultiValueIdentifierForIndividualContact(a1, a2);
  v8 = v7;
  if (Count < 1)
  {
    v10 = v7;
  }

  else
  {
    v9 = 1;
    v10 = v7;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v9 - 1);
      v12 = ABPersonCopySoundIdentifierForMultiValueIdentifierForIndividualContact(ValueAtIndex, a2);
      if (v12)
      {
        v13 = v12;
        if (v10)
        {
          v14 = CFEqual(v12, v10);
          v15 = v14 == 0;
          if (!v14 && !v8)
          {
            CFRelease(v10);
            v10 = 0;
            v15 = 1;
          }

          CFRelease(v13);
        }

        else
        {
          v15 = 0;
          v10 = v12;
        }
      }

      else
      {
        v15 = 0;
      }

      if (v9 >= Count)
      {
        break;
      }

      ++v9;
    }

    while (!v15);
  }

  CFRelease(v5);
  return v10;
}

CFArrayRef ABPersonCopyArrayOfAllLinkedPeople(ABRecordRef person)
{
  if (ABLogAPIUsage())
  {
    v12 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFArrayRef ABPersonCopyArrayOfAllLinkedPeople(ABRecordRef)", 2734, v2, 0, v3, v4, v5, v12);
    CFRelease(v2);
  }

  v6 = ABPersonCopyArrayOfAllLinkedPeopleWithAccountIdentifier(person, 0);
  if (ABLogAPIUsage())
  {
    _ABLog2(6, "CFArrayRef ABPersonCopyArrayOfAllLinkedPeople(ABRecordRef)", 2736, @">> ", 0, v7, v8, v9, v11);
  }

  return v6;
}

void ABPersonSetSoundIdentifierForMultiValueIdentifier(const void *a1, uint64_t a2, void *a3)
{
  v17 = a2;
  if (ABLogAPIUsage())
  {
    v16 = _isMainThread();
    v6 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "void ABPersonSetSoundIdentifierForMultiValueIdentifier(ABRecordRef, int, CFStringRef)", 1890, v6, 0, v7, v8, v9, v16);
    CFRelease(v6);
  }

  if ((a2 & 0x80000000) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d", a2);
  }

  v11 = ABRecordCopyValue(a1, kABPersonSoundProperty);
  if (v11)
  {
    v12 = v11;
    MutableCopy = ABMultiValueCreateMutableCopy(v11);
    CFRelease(v12);
  }

  else
  {
    MutableCopy = ABMultiValueCreateMutable(0x101u);
  }

  IndexForIdentifier = ABMultiValueGetIndexForIdentifier(MutableCopy, a2);
  if (IndexForIdentifier == -1)
  {
    if (a3)
    {
      Count = ABMultiValueGetCount(MutableCopy);
      ABMultiValueInsertAndCreateIdentifier(MutableCopy, a3, 0, Count, 0, &v17, 0);
    }

    if (MutableCopy)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (a3)
    {
      ABMultiValueReplaceValueAtIndex(MutableCopy, a3, IndexForIdentifier);
      if (!MutableCopy)
      {
        goto LABEL_17;
      }

LABEL_16:
      ABCRecordSetValue(a1, kABCSoundProperty, MutableCopy);
      CFRelease(MutableCopy);
      goto LABEL_17;
    }

    ABMultiValueRemoveValueAndLabelAtIndex(MutableCopy, IndexForIdentifier);
    if (MutableCopy)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
  if (v10)
  {
    CFRelease(v10);
  }
}

CFComparisonResult ABPersonCompareNameOfPeople(uint64_t a1, uint64_t a2, int a3)
{
  if (ABLogAPIUsage())
  {
    v11 = _isMainThread();
    v6 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFComparisonResult ABPersonCompareNameOfPeople(ABRecordRef, ABRecordRef, ABPersonSortOrdering)", 1931, v6, 0, v7, v8, v9, v11);
    CFRelease(v6);
  }

  return ABCPersonCompareNameOfPeople(a1, a2, a3);
}

uint64_t ABAddressBookFindPersonMatchingPhoneNumber(uint64_t a1, uint64_t a2, int *a3, void *a4)
{
  if (ABLogAPIUsage())
  {
    v8 = _isMainThread();
    v9 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v8);
    v10 = ABLogAddressBook(a1);
    _ABLog2(6, "ABRecordRef ABAddressBookFindPersonMatchingPhoneNumber(ABAddressBookRef, CFStringRef, ABMultiValueIdentifier *, CFStringRef *)", 1945, v9, @"%@, phoneNumber=%@", v11, v12, v13, v10);
    CFRelease(v9);
  }

  return ABCFindPersonMatchingPhoneNumber(a1, a2, a3, a4);
}

uint64_t ABAddressBookFindPersonMatchingPhoneNumberWithCountry(uint64_t a1, uint64_t a2, void *a3, int *a4, void *a5)
{
  if (ABLogAPIUsage())
  {
    v10 = _isMainThread();
    v11 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v10);
    v12 = ABLogAddressBook(a1);
    _ABLog2(6, "ABRecordRef ABAddressBookFindPersonMatchingPhoneNumberWithCountry(ABAddressBookRef, CFStringRef, CFStringRef, ABMultiValueIdentifier *, CFStringRef *)", 1949, v11, @"%@", v13, v14, v15, v12);
    CFRelease(v11);
  }

  return ABCFindPersonMatchingPhoneNumberWithCountry(a1, a2, a3, a4, a5);
}

uint64_t ABAddressBookFindPersonMatchingPhoneNumberWithCountryAndHint(uint64_t a1, uint64_t a2, void *a3, int *a4, void *a5)
{
  if (ABLogAPIUsage())
  {
    v10 = _isMainThread();
    v11 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v10);
    v12 = ABLogAddressBook(a1);
    _ABLog2(6, "ABRecordRef ABAddressBookFindPersonMatchingPhoneNumberWithCountryAndHint(ABAddressBookRef, CFStringRef, CFStringRef, ABMultiValueIdentifier *, CFStringRef *, const char *)", 1953, v11, @"%@", v13, v14, v15, v12);
    CFRelease(v11);
  }

  return ABCFindPersonMatchingPhoneNumberWithCountryAndHint(a1, a2, a3, a4, a5);
}

CFArrayRef ABAddressBookCopyArrayOfUIDsMatchingPhoneNumberWithCountryAndHint(uint64_t a1, uint64_t a2, void *a3, const __CFArray **a4)
{
  if (ABLogAPIUsage())
  {
    v8 = _isMainThread();
    v9 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v8);
    v10 = ABLogAddressBook(a1);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyArrayOfUIDsMatchingPhoneNumberWithCountryAndHint(ABCAddressBookRef, CFStringRef, CFStringRef, CFArrayRef *, const char *)", 1958, v9, @"%@", v11, v12, v13, v10);
    CFRelease(v9);
  }

  return ABCCopyArrayOfUIDsMatchingPhoneNumberWithCountryAndHint(a1, a2, a3, a4);
}

uint64_t ABAddressBookFindPersonMatchingURL(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  if (ABLogAPIUsage())
  {
    v6 = _isMainThread();
    v7 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v6);
    v8 = ABLogAddressBook(a1);
    _ABLog2(6, "ABRecordRef ABAddressBookFindPersonMatchingURL(ABAddressBookRef, CFStringRef, ABMultiValueIdentifier *)", 1963, v7, @"%@", v9, v10, v11, v8);
    CFRelease(v7);
  }

  return ABCFindPersonMatchingURL(a1, a2, a3);
}

uint64_t ABAddressBookFindPersonMatchingEmailAddress(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  if (ABLogAPIUsage())
  {
    v6 = _isMainThread();
    v7 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v6);
    v8 = ABLogAddressBook(a1);
    _ABLog2(6, "ABRecordRef ABAddressBookFindPersonMatchingEmailAddress(ABAddressBookRef, CFStringRef, ABMultiValueIdentifier *)", 1967, v7, @"%@", v9, v10, v11, v8);
    CFRelease(v7);
  }

  return ABCFindPersonMatchingEmailAddress(a1, a2, a3);
}

void ABAddressBookCopyPeopleAndIdentifiersMatchingName(uint64_t a1, __CFString *a2, int a3, int a4, const __CFArray **a5, const __CFArray **a6)
{
  if (ABLogAPIUsage())
  {
    v12 = _isMainThread();
    v13 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v12);
    v14 = ABLogAddressBook(a1);
    _ABLog2(6, "void ABAddressBookCopyPeopleAndIdentifiersMatchingName(ABAddressBookRef, CFStringRef, ABPersonSortOrdering, ABPropertyID, CFArrayRef *, CFArrayRef *)", 1981, v13, @"%@", v15, v16, v17, v14);
    CFRelease(v13);
  }

  ABCCopyPeopleAndIdentifiersMatchingName(a1, a2, a3, a4, a5, a6);
}

void ABAddressBookCopyPeopleAndMultiValuePropertiesMatchingName(uint64_t a1, __CFString *a2, int a3, int a4, const __CFArray **a5, const __CFArray **a6, const __CFArray **a7)
{
  if (ABLogAPIUsage())
  {
    v14 = _isMainThread();
    v15 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v14);
    v16 = ABLogAddressBook(a1);
    _ABLog2(6, "void ABAddressBookCopyPeopleAndMultiValuePropertiesMatchingName(ABAddressBookRef, CFStringRef, ABPersonSortOrdering, ABPropertyID, CFArrayRef *, CFArrayRef *, CFArrayRef *)", 1989, v15, @"%@", v17, v18, v19, v16);
    CFRelease(v15);
  }

  ABCCopyPeopleAndMultiValuePropertiesMatchingName(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t ABAddressBookCopyArrayOfAllPeopleMatching(uint64_t a1, const __CFString *a2, const __CFString *a3, const void *a4, const void *a5)
{
  if (ABLogAPIUsage())
  {
    v10 = _isMainThread();
    v11 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v10);
    v12 = ABLogAddressBook(a1);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyArrayOfAllPeopleMatching(ABAddressBookRef, CFStringRef, CFStringRef, ABRecordRef, ABRecordRef)", 1996, v11, @"%@", v13, v14, v15, v12);
    CFRelease(v11);
  }

  v16 = *(a1 + 16);
  SortOrdering = ABPersonGetSortOrdering();

  return ABCDBCopyArrayOfAllPeopleMatchingString(v16, a2, SortOrdering, a3, a4, a5);
}

uint64_t _accumulateUIDsMatchingExternalUUID(uint64_t a1, __CFArray *a2)
{
  v3 = sqlite3_column_int(*(a1 + 8), 0);
  CFArrayAppendValue(a2, v3);
  return 0;
}

uint64_t _accumulateInternalUUIDs(uint64_t a1, __CFArray *a2)
{
  v3 = sqlite3_column_text(*(a1 + 8), 0);
  if (v3)
  {
    v4 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v3, 0x8000100u);
    if (v4)
    {
      v5 = v4;
      if (CFStringGetLength(v4))
      {
        CFArrayAppendValue(a2, v5);
      }

      CFRelease(v5);
    }
  }

  return 0;
}

uint64_t _accumulateABRecordIDPtrs(uint64_t a1, __CFArray *a2)
{
  v3 = sqlite3_column_int(*(a1 + 8), 0);
  CFArrayAppendValue(a2, v3);
  return 0;
}

CFDataRef _copyDataRefForStatementColumn(sqlite3_stmt *a1, int a2)
{
  v4 = sqlite3_column_bytes(a1, a2);
  v5 = sqlite3_column_blob(a1, a2);
  if (!v4)
  {
    return 0;
  }

  v6 = v5;
  if (!v5)
  {
    return 0;
  }

  v7 = *MEMORY[0x1E695E480];

  return CFDataCreate(v7, v6, v4);
}

const void *ABAddressBookCopyPersonMatchingMapData(uint64_t a1, const void *a2)
{
  if (ABLogAPIUsage())
  {
    v4 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v4);
    v6 = ABLogAddressBook(a1);
    _ABLog2(6, "ABRecordRef ABAddressBookCopyPersonMatchingMapData(ABAddressBookRef, CFStringRef)", 2274, v5, @"%@", v7, v8, v9, v6);
    CFRelease(v5);
  }

  if (!a2)
  {
    return 0;
  }

  CFRetain(a2);
  v10 = _copyPersonMatchingPrivateProperty(a1, kABPersonMapsDataProperty, a2);
  CFRelease(a2);
  return v10;
}

__CFString *ABPersonCopyStringForIndexing(void *a1, int a2, int a3)
{
  values = a1;
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (a2)
  {
    v8 = ABPersonCopyArrayOfAllLinkedPeople(a1);
  }

  else
  {
    v8 = CFArrayCreate(v6, &values, 1, MEMORY[0x1E695E9C0]);
  }

  v9 = v8;
  if (_ABPersonGetArrayOfAllFTSPropertyIDs_onceToken != -1)
  {
    ABPersonCopyStringForIndexing_cold_1();
  }

  v10 = _ABPersonGetArrayOfAllFTSPropertyIDs_retVal;
  Count = CFArrayGetCount(_ABPersonGetArrayOfAllFTSPropertyIDs_retVal);
  if (v9)
  {
    v12 = Count;
    v31 = v6;
    v32 = a3;
    v13 = CFArrayGetCount(v9);
    if (v13 >= 1)
    {
      v14 = v13;
      for (i = 0; i != v14; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v9, i);
        if (v12 >= 1)
        {
          v17 = ValueAtIndex;
          for (j = 0; j != v12; ++j)
          {
            v19 = CFArrayGetValueAtIndex(v10, j);
            StringForIndexingForProperty = ABPersonCreateStringForIndexingForProperty(v17, v19);
            if (StringForIndexingForProperty)
            {
              v21 = StringForIndexingForProperty;
              CFStringAppend(Mutable, StringForIndexingForProperty);
              CFStringAppend(Mutable, @" ");
              CFRelease(v21);
            }
          }
        }
      }
    }

    CFRelease(v9);
    a3 = v32;
    v6 = v31;
  }

  if (!a3)
  {
    return Mutable;
  }

  v22 = CFStringCreateMutable(v6, 0);
  v23 = ABTokenListCreate();
  AddressBook = ABRecordGetAddressBook();
  WordTokenizer = ABAddressBookGetWordTokenizer(AddressBook);
  ABTokenListPopulateFromString(v23, WordTokenizer, 0, Mutable, 1, 1, 0);
  v26 = ABTokenListGetCount(v23);
  if (v26 >= 1)
  {
    v27 = v26;
    for (k = 0; k != v27; ++k)
    {
      TokenAtIndex = ABTokenListGetTokenAtIndex(v23, k);
      CFStringAppend(v22, TokenAtIndex);
      CFStringAppend(v22, @" ");
    }
  }

  CFRelease(v23);
  CFRelease(Mutable);
  return v22;
}

uint64_t _ABPersonGetArrayOfAllFTSPropertyIDs()
{
  if (_ABPersonGetArrayOfAllFTSPropertyIDs_onceToken != -1)
  {
    _ABPersonGetArrayOfAllFTSPropertyIDs_cold_1();
  }

  return _ABPersonGetArrayOfAllFTSPropertyIDs_retVal;
}

__CFString *ABPersonCreateStringForIndexingForProperty(const void *a1, ABPropertyID property)
{
  if (kABPersonPhoneProperty == property)
  {
    active = CPPhoneNumberCopyActiveCountryCode();
    if (active)
    {
      v5 = active;
      v6 = ABRecordCopyValue(a1, property);
      if (v6)
      {
        v7 = v6;
        Mutable = CFStringCreateMutable(0, 0);
        Count = ABMultiValueGetCount(v7);
        if (Count >= 1)
        {
          v10 = Count;
          for (i = 0; i != v10; ++i)
          {
            v12 = ABMultiValueCopyValueAtIndex(v7, i);
            if (v12)
            {
              v13 = v12;
              CFStringAppend(Mutable, v12);
              v14 = _PNCopyIndexStringsForAddressBookSearch();
              if (v14)
              {
                v15 = v14;
                v16 = CFStringCreateByCombiningStrings(0, v14, @" ");
                if (v16)
                {
                  v17 = v16;
                  CFStringAppend(Mutable, @" ");
                  CFStringAppend(Mutable, v17);
                  CFStringAppend(Mutable, @" ");
                  CFRelease(v17);
                }

                CFRelease(v15);
              }

              CFRelease(v13);
            }
          }
        }

        goto LABEL_13;
      }

      goto LABEL_24;
    }

    return 0;
  }

  TypeOfProperty = ABPersonGetTypeOfProperty(property);
  if (TypeOfProperty == 261)
  {
    v22 = ABRecordCopyValue(a1, property);
    if (!v22)
    {
      return 0;
    }

    v23 = v22;
    if (ABPersonCreateStringForIndexingForProperty_onceToken != -1)
    {
      ABPersonCreateStringForIndexingForProperty_cold_1();
    }

    if (kABPersonAddressProperty == property)
    {
      v24 = &ABPersonCreateStringForIndexingForProperty_addressKeys;
    }

    else if (kABPersonSocialProfileProperty == property)
    {
      v24 = &ABPersonCreateStringForIndexingForProperty_socialKeys;
    }

    else
    {
      if (kABPersonInstantMessageProperty != property)
      {
        goto LABEL_48;
      }

      v24 = &ABPersonCreateStringForIndexingForProperty_instantMessagingKeys;
    }

    v25 = *v24;
    if (*v24)
    {
      v26 = ABMultiValueCopyArrayOfAllValues(v23);
      if (v26)
      {
        v27 = v26;
        v28 = CFArrayGetCount(v26);
        if (v28)
        {
          v29 = v28;
          Mutable = CFStringCreateMutable(0, 0);
          if (v29 >= 1)
          {
            for (j = 0; j != v29; ++j)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v27, j);
              v32 = *v25;
              if (*v25)
              {
                v33 = ValueAtIndex;
                v34 = v25 + 1;
                do
                {
                  Value = CFDictionaryGetValue(v33, v32);
                  if (Value)
                  {
                    v36 = Value;
                    if (CFStringGetLength(Value))
                    {
                      CFStringAppend(Mutable, v36);
                      CFStringAppend(Mutable, @" ");
                    }
                  }

                  v37 = *v34++;
                  v32 = v37;
                }

                while (v37);
              }
            }
          }
        }

        else
        {
          Mutable = 0;
        }

        CFRelease(v27);
        CFRelease(v23);
        if (!Mutable || CFStringGetLength(Mutable))
        {
          return Mutable;
        }

        v38 = Mutable;
        goto LABEL_49;
      }
    }

LABEL_48:
    v38 = v23;
LABEL_49:
    CFRelease(v38);
    return 0;
  }

  if (TypeOfProperty == 257)
  {
    v20 = ABRecordCopyValue(a1, property);
    if (v20)
    {
      v5 = v20;
      v21 = ABMultiValueCopyArrayOfAllValues(v20);
      if (v21)
      {
        v7 = v21;
        if (CFArrayGetCount(v21))
        {
          Mutable = CFStringCreateByCombiningStrings(0, v7, @" ");
        }

        else
        {
          Mutable = 0;
        }

LABEL_13:
        CFRelease(v7);
LABEL_25:
        CFRelease(v5);
        return Mutable;
      }

LABEL_24:
      Mutable = 0;
      goto LABEL_25;
    }

    return 0;
  }

  if (TypeOfProperty != 1)
  {
    return 0;
  }

  return ABRecordCopyValue(a1, property);
}

void *__ABPersonCreateStringForIndexingForProperty_block_invoke()
{
  v0 = malloc_type_calloc(9uLL, 8uLL, 0x6004044C4A2DFuLL);
  ABPersonCreateStringForIndexingForProperty_addressKeys = v0;
  *v0 = @"Street";
  v0[1] = @"ZIP";
  v0[2] = @"State";
  v0[3] = @"Country";
  v0[4] = @"CountryCode";
  v0[5] = @"City";
  v0[6] = @"SubLocality";
  v0[7] = @"SubAdministrativeArea";
  v1 = malloc_type_calloc(3uLL, 8uLL, 0x6004044C4A2DFuLL);
  ABPersonCreateStringForIndexingForProperty_socialKeys = v1;
  *v1 = @"username";
  v1[1] = @"identifier";
  result = malloc_type_calloc(2uLL, 8uLL, 0x6004044C4A2DFuLL);
  ABPersonCreateStringForIndexingForProperty_instantMessagingKeys = result;
  *result = @"username";
  return result;
}

__CFString *ABPersonCreateSupplementalStringForIndexingForCompositeName(const void *a1)
{
  v2 = ABPersonCopyCompositeName(a1);
  if (ABPersonCreateSupplementalStringForIndexingForCompositeName___onceToken != -1)
  {
    ABPersonCreateSupplementalStringForIndexingForCompositeName_cold_1();
  }

  if (ABContentsExclusivelyInCharacterSet(v2, ABPersonCreateSupplementalStringForIndexingForCompositeName___invertedKorean))
  {
    Mutable = 0;
  }

  else
  {
    v5 = *MEMORY[0x1E695E480];
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    for (i = 0; i != 32; ++i)
    {
      if (i > 0x10 || ((1 << i) & 0x10116) == 0)
      {
        v7 = CFStringCreateMutable(v5, 0);
        if (v7)
        {
          v8 = v7;
          ABPersonAppendNameParts(a1, i, v7, 1, 0, 1);
          if (CFStringGetLength(v8))
          {
            CFStringAppend(Mutable, v8);
            CFStringAppend(Mutable, @" ");
          }

          CFRelease(v8);
        }
      }
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return Mutable;
}

void *__ABPersonCreateSupplementalStringForIndexingForCompositeName_block_invoke()
{
  result = ABGetCharacterSetWithPattern(@"[^[:Hangul:]]");
  ABPersonCreateSupplementalStringForIndexingForCompositeName___invertedKorean = result;
  return result;
}

__CFString *ABPersonCreateSmartDialerLastFourDigitsStringForIndexing(const void *a1)
{
  active = CPPhoneNumberCopyActiveCountryCode();
  if (!active)
  {
    return 0;
  }

  v3 = active;
  v4 = ABRecordCopyValue(a1, kABPersonPhoneProperty);
  if (v4)
  {
    v5 = v4;
    Mutable = CFStringCreateMutable(0, 0);
    Count = ABMultiValueGetCount(v5);
    if (Count >= 1)
    {
      v8 = Count;
      for (i = 0; i != v8; ++i)
      {
        v10 = ABMultiValueCopyValueAtIndex(v5, i);
        if (v10)
        {
          v11 = v10;
          FourDigitsOfLocalNumber = _PNCopyLastFourDigitsOfLocalNumber();
          if (FourDigitsOfLocalNumber)
          {
            v13 = FourDigitsOfLocalNumber;
            CFStringAppend(Mutable, FourDigitsOfLocalNumber);
            CFStringAppend(Mutable, @" ");
            CFRelease(v13);
          }

          CFRelease(v11);
        }
      }
    }

    CFRelease(v5);
  }

  else
  {
    Mutable = 0;
  }

  CFRelease(v3);
  return Mutable;
}

__CFString *ABPersonCreateSmartDialerStringFromCFString()
{
  [MEMORY[0x1E695DF58] currentLocale];
  EncodedString = TINumberPadGetEncodedString();
  if (!EncodedString)
  {
    return &stru_1F2FE2718;
  }

  v1 = CFRetain(EncodedString);
  if (!v1)
  {
    return &stru_1F2FE2718;
  }

  v2 = v1;
  MutableCopy = CFStringCreateMutableCopy(0, 0, v1);
  CFStringTrimWhitespace(MutableCopy);
  CFRelease(v2);
  return MutableCopy;
}

__CFString *ABPersonCreateSmartDialerLatinStringFromCFString(const __CFString *a1)
{
  if (!a1)
  {
    return &stru_1F2FE2718;
  }

  Length = CFStringGetLength(a1);
  if (!Length)
  {
    return &stru_1F2FE2718;
  }

  v3 = Length;
  v4 = CFLocaleCopyCurrent();
  v5 = *MEMORY[0x1E695E480];
  v14.location = 0;
  v14.length = v3;
  v6 = CFStringTokenizerCreate(*MEMORY[0x1E695E480], a1, v14, 0x10004uLL, v4);
  Mutable = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
  while (CFStringTokenizerAdvanceToNextToken(v6))
  {
    v8 = CFStringTokenizerCopyCurrentTokenAttribute(v6, 0x10000uLL);
    if (v8)
    {
      v9 = v8;
      MutableCopy = CFStringCreateMutableCopy(0, 0, v8);
      CFStringTrimWhitespace(MutableCopy);
      if (CFStringGetLength(MutableCopy) >= 1)
      {
        CFArrayAppendValue(Mutable, MutableCopy);
        CFArrayAppendValue(Mutable, @" ");
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      CFRelease(v9);
    }
  }

  v11 = CFStringCreateByCombiningStrings(0, Mutable, &stru_1F2FE2718);
  SmartDialerStringFromCFString = ABPersonCreateSmartDialerStringFromCFString();
  if (v4)
  {
    CFRelease(v4);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return SmartDialerStringFromCFString;
}

__CFString *ABPersonCreateSmartDialerStringForIndexingFromCFString(const __CFString *a1)
{
  SmartDialerStringFromCFString = ABPersonCreateSmartDialerStringFromCFString();
  if (!SmartDialerStringFromCFString)
  {
    return &stru_1F2FE2718;
  }

  v3 = SmartDialerStringFromCFString;
  if (CFStringGetLength(SmartDialerStringFromCFString) > 0)
  {
    return v3;
  }

  CFRelease(v3);

  return ABPersonCreateSmartDialerLatinStringFromCFString(a1);
}

const void *ABPersonCopyArrayOfAllLinkedPeopleWithAccountIdentifierAndAddressBook(void *a1, uint64_t a2, uint64_t a3)
{
  values = a1;
  if (ABLogAPIUsage())
  {
    v6 = _isMainThread();
    v7 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v6);
    v8 = ABLogAddressBook(a3);
    _ABLog2(6, "CFArrayRef ABPersonCopyArrayOfAllLinkedPeopleWithAccountIdentifierAndAddressBook(ABRecordRef, CFStringRef, ABAddressBookRef)", 2686, v7, @"%@", v9, v10, v11, v8);
    CFRelease(v7);
  }

  IntValue = ABRecordGetIntValue(a1, kABPersonLinkProperty);
  v13 = IntValue;
  if (!a3 || IntValue == -1)
  {
    goto LABEL_10;
  }

  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, @"WHERE PersonLink = ?");
  v15 = MutableCopy;
  if (a2)
  {
    CFStringAppend(MutableCopy, @" AND StoreID IN (SELECT abs.rowid FROM ABStore abs, ABAccount aba WHERE abs.AccountID = aba.ROWID AND aba.AccountIdentifier = ?)");
  }

  v16 = CPRecordStoreCopyAllInstancesOfClassWhereWithBindBlock();
  CFRelease(v15);
  if (!v16)
  {
    goto LABEL_10;
  }

  if (!CFArrayGetCount(v16))
  {
    CFRelease(v16);
LABEL_10:
    if (!a2 || v13 == -1)
    {
      v16 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
    }

    else
    {
      v16 = 0;
    }
  }

  if (ABLogAPIUsage())
  {
    _ABLog2(6, "CFArrayRef ABPersonCopyArrayOfAllLinkedPeopleWithAccountIdentifierAndAddressBook(ABRecordRef, CFStringRef, ABAddressBookRef)", 2719, @">> ", 0, v17, v18, v19, v21);
  }

  return v16;
}

sqlite3_stmt *__ABPersonCopyArrayOfAllLinkedPeopleWithAccountIdentifierAndAddressBook_block_invoke(sqlite3_stmt *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    result = *(a2 + 8);
    if (result)
    {
      sqlite3_bind_int(result, 1, *(v3 + 10));
      result = *(v3 + 4);
      if (result)
      {
        v4 = *(a2 + 8);
        v5 = _CPCreateUTF8StringFromCFString();
        v6 = MEMORY[0x1E69E9B38];

        return sqlite3_bind_text(v4, 2, v5, -1, v6);
      }
    }
  }

  return result;
}

const void *ABPersonCopyArrayOfAllLinkedPeopleWithAccountIdentifier(void *a1, uint64_t a2)
{
  if (ABLogAPIUsage())
  {
    v15 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFArrayRef ABPersonCopyArrayOfAllLinkedPeopleWithAccountIdentifier(ABRecordRef, CFStringRef)", 2724, v4, 0, v5, v6, v7, v15);
    CFRelease(v4);
  }

  AddressBook = ABRecordGetAddressBook();
  v9 = ABPersonCopyArrayOfAllLinkedPeopleWithAccountIdentifierAndAddressBook(a1, a2, AddressBook);
  if (ABLogAPIUsage())
  {
    _ABLog2(6, "CFArrayRef ABPersonCopyArrayOfAllLinkedPeopleWithAccountIdentifier(ABRecordRef, CFStringRef)", 2727, @">> ", 0, v10, v11, v12, v14);
  }

  return v9;
}

uint64_t ABPersonCopyLinkUUID(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v18 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFStringRef ABPersonCopyLinkUUID(ABRecordRef)", 2743, v2, 0, v3, v4, v5, v18);
    CFRelease(v2);
  }

  AddressBook = ABRecordGetAddressBook();
  if (AddressBook && (v7 = AddressBook, CPRecordStoreGetDatabase()) && (IntValue = ABRecordGetIntValue(a1, kABPersonLinkProperty), IntValue != -1) && (v9 = IntValue, v10 = CPSqliteDatabaseStatementForReading(), ABRegulatoryLogReadContactsData(v7), v10) && (v11 = *(v10 + 8)) != 0)
  {
    sqlite3_bind_int(v11, 1, v9);
    v12 = CPSqliteStatementCopyStringResult();
    CPSqliteStatementReset();
  }

  else
  {
    v12 = 0;
  }

  if (ABLogAPIUsage())
  {
    _ABLog2(6, "CFStringRef ABPersonCopyLinkUUID(ABRecordRef)", 2762, @">> ", 0, v13, v14, v15, v17);
  }

  return v12;
}

uint64_t ABPersonSetLinkUUID(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v14 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABPersonSetLinkUUID(ABRecordRef, CFStringRef)", 2768, v2, 0, v3, v4, v5, v14);
    CFRelease(v2);
  }

  if (!ABRecordGetAddressBook())
  {
    return 0;
  }

  if (!CPRecordStoreGetDatabase())
  {
    return 0;
  }

  IntValue = ABRecordGetIntValue(a1, kABPersonLinkProperty);
  if (IntValue == -1)
  {
    return 0;
  }

  v7 = IntValue;
  v8 = CPSqliteDatabaseStatementForWriting();
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = *(v8 + 8);
  if (!v10)
  {
    return 0;
  }

  v11 = _CPCreateUTF8StringFromCFString();
  v12 = 1;
  sqlite3_bind_text(v10, 1, v11, -1, MEMORY[0x1E69E9B38]);
  sqlite3_bind_int(*(v9 + 8), 2, v7);
  CPSqliteStatementPerform();
  CPSqliteStatementReset();
  return v12;
}

uint64_t ABPersonLinkPerson(const void *a1, const void *a2)
{
  if (ABLogAPIUsage())
  {
    v51 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABPersonLinkPerson(ABRecordRef, ABRecordRef, CFErrorRef *)", 2798, v4, 0, v5, v6, v7, v51);
    CFRelease(v4);
  }

  AddressBook = ABRecordGetAddressBook();
  if (!AddressBook)
  {
    return 0;
  }

  v9 = AddressBook;
  if (AddressBook != ABRecordGetAddressBook())
  {
    return 0;
  }

  IntValue = ABRecordGetIntValue(a1, kABPersonLinkProperty);
  v13 = ABRecordGetIntValue(a2, kABPersonLinkProperty);
  v14 = ABPersonCopyPreferredLinkedPersonForImageIfExists(a2);
  if (!v14)
  {
    v14 = CFRetain(a2);
  }

  v15 = ABPersonCopyPreferredLinkedPersonForImageIfExists(a1);
  if (!v15)
  {
    v15 = CFRetain(a1);
  }

  if (IntValue != -1 && v13 != -1)
  {
    v23 = ABPersonCopyLinkUUID(a2);
    v24 = ABPersonCopyArrayOfAllLinkedPeople(a2);
    if (v24)
    {
      v25 = v24;
      v54 = v14;
      Count = CFArrayGetCount(v24);
      if (Count >= 1)
      {
        v27 = Count;
        v52 = v23;
        v28 = 0;
        v29 = 1;
        do
        {
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v25, v28);
            if (v29)
            {
              break;
            }

            v29 = 0;
            if (++v28 == v27)
            {
              CFRelease(v25);
              v10 = 0;
              v23 = v52;
              v14 = v54;
              if (v52)
              {
                goto LABEL_45;
              }

              goto LABEL_57;
            }
          }

          v29 = ABCRecordSetIntValueAndReturnError(ValueAtIndex, kABPersonLinkProperty, IntValue, 0);
          ++v28;
        }

        while (v28 != v27);
        CFRelease(v25);
        v23 = v52;
        v14 = v54;
        if (v29)
        {
          goto LABEL_38;
        }

        v10 = 0;
        if (v52)
        {
          goto LABEL_45;
        }

        goto LABEL_57;
      }

      CFRelease(v25);
    }

LABEL_38:
    if (v23)
    {
      ABCDBContextLogChangeForUnifiedPerson(*(v9 + 16), v23, 5u);
    }

    else
    {
      ABDiagnosticsEnabled();
      v31 = ABLogStringForPerson(a1);
      ABLogStringForPerson(a2);
      _ABLog2(3, "_Bool ABPersonLinkPerson(ABRecordRef, ABRecordRef, CFErrorRef *)", 2841, 0, @"Failure getting toPersonLinkUUID while linking contact %@ to %@", v32, v33, v34, v31);
    }

    v35 = ABPersonCopyLinkUUID(a1);
    if (v35)
    {
      v36 = v35;
      ABCDBContextLogChangeForLinkingPersons(*(v9 + 16), a1, a2, v35);
      ABCDBContextLogChangeForUnifiedPerson(*(v9 + 16), v36, 4u);
      CFRelease(v36);
    }

    else
    {
      ABDiagnosticsEnabled();
      v37 = ABLogStringForPerson(a1);
      ABLogStringForPerson(a2);
      _ABLog2(3, "_Bool ABPersonLinkPerson(ABRecordRef, ABRecordRef, CFErrorRef *)", 2851, 0, @"Failure getting personLinkUUID while linking contact %@ to %@", v38, v39, v40, v37);
    }

    v10 = 1;
    if (v23)
    {
LABEL_45:
      v41 = v23;
LABEL_56:
      CFRelease(v41);
      goto LABEL_57;
    }

    goto LABEL_57;
  }

  v17 = (IntValue & v13) == -1;
  if ((IntValue & v13) == 0xFFFFFFFF)
  {
    CPRecordStoreGetDatabase();
    v18 = CPSqliteDatabaseStatementForWriting();
    v10 = v18;
    if (!v18)
    {
      goto LABEL_57;
    }

    v53 = (IntValue & v13) == -1;
    v19 = v14;
    v20 = *(v18 + 8);
    if (!v20 || (RecordID = ABRecordGetRecordID(a1), sqlite3_bind_int(v20, 1, RecordID), v22 = CPSqliteStatementPerform(), CPSqliteDatabaseConnectionForReading(), IntValue = CPSqliteConnectionRowidOfLastInsert(), CPSqliteStatementReset(), v22 != 101))
    {
      v10 = 0;
      v14 = v19;
      goto LABEL_57;
    }

    v14 = v19;
    v17 = v53;
  }

  else
  {
    if (IntValue != -1)
    {
      goto LABEL_34;
    }

    IntValue = v13;
    if (v13 == -1)
    {
      v10 = 0;
      goto LABEL_57;
    }
  }

  if (!ABCRecordSetIntValueAndReturnError(a1, kABPersonLinkProperty, IntValue, 0))
  {
    v10 = 0;
    goto LABEL_47;
  }

  ABCDBContextLogChangeForPerson(*(v9 + 16), a1, 5u);
LABEL_34:
  v10 = 1;
LABEL_47:
  if (v13 == -1)
  {
    if (ABCRecordSetIntValueAndReturnError(a2, kABPersonLinkProperty, IntValue, 0))
    {
      ABCDBContextLogChangeForPerson(*(v9 + 16), a2, 5u);
      v10 = 1;
    }

    else
    {
      v10 = 0;
    }
  }

  v42 = ABPersonCopyLinkUUID(a1);
  if (v42)
  {
    v43 = v42;
    ABCDBContextLogChangeForLinkingPersons(*(v9 + 16), a1, a2, v42);
    if (v17)
    {
      v44 = 3;
    }

    else
    {
      v44 = 4;
    }

    ABCDBContextLogChangeForUnifiedPerson(*(v9 + 16), v43, v44);
    v41 = v43;
    goto LABEL_56;
  }

  ABDiagnosticsEnabled();
  v47 = ABLogStringForPerson(a1);
  ABLogStringForPerson(a2);
  _ABLog2(3, "_Bool ABPersonLinkPerson(ABRecordRef, ABRecordRef, CFErrorRef *)", 2901, 0, @"Failure getting linkUUID while linking contact %@ to %@", v48, v49, v50, v47);
LABEL_57:
  HasImageData = ABPersonHasImageData(v14);
  v46 = ABPersonHasImageData(v15);
  if (!HasImageData || !v46)
  {
    _updatePreferredImageForPerson(a2, 1, 1, 1);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v10;
}

CFTypeRef ABPersonCopyPreferredLinkedPersonForImageIfExists(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "ABRecordRef ABPersonCopyPreferredLinkedPersonForImageIfExists(ABRecordRef)", 3129, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  return _copyPreferredPersonWithPreferredColumnIfExists(a1, 0);
}

uint64_t ABPersonUnlink(CFTypeRef a1)
{
  if (ABLogAPIUsage())
  {
    v27 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABPersonUnlink(ABRecordRef, CFErrorRef *)", 2925, v2, 0, v3, v4, v5, v27);
    CFRelease(v2);
  }

  IntValue = ABRecordGetIntValue(a1, kABPersonLinkProperty);
  v7 = ABPersonCopyLinkUUID(a1);
  v8 = v7;
  if (IntValue == -1)
  {
    v21 = 1;
    if (!v7)
    {
      return v21;
    }
  }

  else
  {
    AddressBook = ABRecordGetAddressBook();
    v10 = ABPersonCopyPreferredLinkedPersonForImageIfExists(a1);
    if (v10 == a1)
    {
      _updatePreferredImageForPerson(a1, 0, 0, 1);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    v11 = ABPersonCopyArrayOfAllLinkedPeople(a1);
    if (v11)
    {
      v12 = v11;
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
      Count = CFArrayGetCount(v12);
      if (Count >= 1)
      {
        v15 = Count;
        for (i = 0; i != v15; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v12, i);
          if (ValueAtIndex != a1)
          {
            v18 = ValueAtIndex;
            if (ABRecordGetIntValue(ValueAtIndex, kABPersonLinkProperty) == IntValue)
            {
              CFArrayAppendValue(Mutable, v18);
            }
          }
        }
      }

      if (CFArrayGetCount(Mutable) == 1)
      {
        v19 = CFArrayGetValueAtIndex(Mutable, 0);
        if (ABCRecordSetIntValueAndReturnError(v19, kABPersonLinkProperty, -1, 0))
        {
          ABCDBContextLogChangeForPerson(*(AddressBook + 16), v19, 3u);
        }

        v20 = 5;
      }

      else
      {
        v20 = 4;
      }

      CFRelease(Mutable);
      CFRelease(v12);
    }

    else
    {
      v20 = 4;
    }

    v21 = ABCRecordSetIntValueAndReturnError(a1, kABPersonLinkProperty, -1, 0);
    if (v21)
    {
      ABCDBContextLogChangeForPerson(*(AddressBook + 16), a1, 7u);
      ABCDBContextLogChangeForPerson(*(AddressBook + 16), a1, 3u);
    }

    if (!v8)
    {
      ABDiagnosticsEnabled();
      v22 = ABLogStringForPerson(a1);
      _ABLog2(3, "_Bool ABPersonUnlink(ABRecordRef, CFErrorRef *)", 2983, 0, @"Failure getting linkUUID while unlinking contact %@ ", v23, v24, v25, v22);
      return v21;
    }

    ABCDBContextLogChangeForUnifiedPerson(*(AddressBook + 16), v8, v20);
  }

  CFRelease(v8);
  return v21;
}

uint64_t ABPersonIsDowntimeWhitelisted(const void *a1)
{
  RecordID = ABRecordGetRecordID(a1);
  if (!a1)
  {
    return 0;
  }

  if (RecordID == -1)
  {
    return 0;
  }

  v3 = ABRecordCopyValue(a1, kABPersonDowntimeWhitelistProperty);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v3 isEqualToString:@"true"];
  CFRelease(v4);
  return v5;
}

ABRecordRef ABPersonIsReadonly(const void *a1)
{
  if (ABLogAPIUsage())
  {
    v9 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABPersonIsReadonly(ABRecordRef)", 3078, v2, 0, v3, v4, v5, v9);
    CFRelease(v2);
  }

  result = ABPersonCopySource(a1);
  if (result)
  {
    v7 = result;
    IsContentReadonly = ABSourceIsContentReadonly(result);
    CFRelease(v7);
    return IsContentReadonly;
  }

  return result;
}

CFTypeRef ABPersonCopyPreferredLinkedPersonForImage(const void *a1)
{
  if (ABLogAPIUsage())
  {
    v15 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "ABRecordRef ABPersonCopyPreferredLinkedPersonForImage(ABRecordRef)", 3090, v2, 0, v3, v4, v5, v15);
    CFRelease(v2);
  }

  v6 = ABPersonCopyPreferredLinkedPersonForImageIfExists(a1);
  if (v6)
  {
    return v6;
  }

  v8 = ABPersonCopyArrayOfAllLinkedPeople(a1);
  if (!v8)
  {
    goto LABEL_23;
  }

  v9 = v8;
  Count = CFArrayGetCount(v8);
  if (Count < 1)
  {
    v6 = 0;
    goto LABEL_21;
  }

  v11 = Count;
  v12 = 0;
  v13 = 1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v9, v13 - 1);
    if (ABPersonHasImageData(ValueAtIndex))
    {
      if (v12 || !ABPersonIsReadonly(ValueAtIndex))
      {
        v6 = CFRetain(ValueAtIndex);
        goto LABEL_14;
      }

      v12 = CFRetain(ValueAtIndex);
    }

    v6 = 0;
LABEL_14:
    if (v13 >= v11)
    {
      break;
    }

    ++v13;
  }

  while (!v6);
  if (v12 && v6)
  {
    CFRelease(v12);
    CFRelease(v9);
    return v6;
  }

  if (!v12)
  {
LABEL_21:
    v12 = v6;
  }

  CFRelease(v9);
  v6 = v12;
  if (v12)
  {
    return v6;
  }

LABEL_23:

  return CFRetain(a1);
}

void ABPersonSetPreferredLinkedPersonForImage(const void *a1)
{
  if (ABLogAPIUsage())
  {
    v6 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "void ABPersonSetPreferredLinkedPersonForImage(ABRecordRef)", 3135, v2, 0, v3, v4, v5, v6);
    CFRelease(v2);
  }

  _updatePreferredImageForPerson(a1, 1, 1, 1);
}

void ABPersonSetPreferredLinkedPersonForName(const void *a1)
{
  if (ABLogAPIUsage())
  {
    v20 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "void ABPersonSetPreferredLinkedPersonForName(ABRecordRef)", 3141, v2, 0, v3, v4, v5, v20);
    CFRelease(v2);
  }

  v6 = ABCGetAddressBookForRecord();
  if (v6)
  {
    v7 = v6;
    RecordID = ABRecordGetRecordID(a1);
    IntValue = ABRecordGetIntValue(a1, kABPersonLinkProperty);
    if (IntValue != -1)
    {
      v10 = IntValue;
      CPRecordStoreGetDatabase();
      v11 = CPSqliteDatabaseStatementForWriting();
      if (v11)
      {
        v12 = v11;
        v13 = *(v11 + 8);
        if (v13)
        {
          sqlite3_bind_int(v13, 1, RecordID);
          sqlite3_bind_int(*(v12 + 8), 2, v10);
          CPSqliteStatementPerform();
          CPSqliteStatementReset();
        }
      }

      v14 = ABPersonCopyLinkUUID(a1);
      if (v14)
      {
        v15 = v14;
        ABCDBContextLogChangeForPerson(*(v7 + 16), a1, 8u);
        ABCDBContextLogChangeForUnifiedPerson(*(v7 + 16), v15, 4u);

        CFRelease(v15);
      }

      else
      {
        ABDiagnosticsEnabled();
        v16 = ABLogStringForPerson(a1);
        _ABLog2(3, "void ABPersonSetPreferredLinkedPersonForName(ABRecordRef)", 3168, 0, @"Failure getting linkUUID while setting contact %@ as preferred name", v17, v18, v19, v16);
      }
    }
  }
}

uint64_t ABAddressBookClearAllMeCards(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = 1;
  v2 = ABAddressBookCopyArrayOfAllSourcesIncludingDisabledSources(a1, 1);
  if (v2)
  {
    v3 = v2;
    Count = CFArrayGetCount(v2);
    v5 = ABOSLogMeCardChanges();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v12 = Count;
      _os_log_impl(&dword_1B7EFB000, v5, OS_LOG_TYPE_DEFAULT, "Will clear all Me cards from %ld sources", buf, 0xCu);
    }

    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
        if (ValueAtIndex)
        {
          v8 = ValueAtIndex;
          if (ABSourceGetMe(ValueAtIndex))
          {
            v9 = ABOSLogMeCardChanges();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
            {
              *buf = 134218240;
              v12 = i + 1;
              v13 = 2048;
              v14 = Count;
              _os_log_impl(&dword_1B7EFB000, v9, OS_LOG_TYPE_INFO, "Removing Me card for source %ld of %ld", buf, 0x16u);
            }

            v1 &= ABSourceSetMe(v8, 0, 0);
          }
        }
      }
    }

    CFRelease(v3);
  }

  return v1 & 1;
}

CFArrayRef ABPersonCreateArrayOfAllPropertyIDs()
{
  values[31] = *MEMORY[0x1E69E9840];
  if (ABLogAPIUsage())
  {
    v5 = _isMainThread();
    v0 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFArrayRef ABPersonCreateArrayOfAllPropertyIDs(void)", 3198, v0, 0, v1, v2, v3, v5);
    CFRelease(v0);
  }

  values[0] = kABPersonPrefixProperty;
  values[1] = kABPersonFirstNameProperty;
  values[2] = kABPersonMiddleNameProperty;
  values[3] = kABPersonLastNameProperty;
  values[4] = kABPersonSuffixProperty;
  values[5] = kABPersonPreviousFamilyNameProperty;
  values[6] = kABPersonFirstNamePhoneticProperty;
  values[7] = kABPersonMiddleNamePhoneticProperty;
  values[8] = kABPersonLastNamePhoneticProperty;
  values[9] = kABPersonFirstNamePronunciationProperty;
  values[10] = kABPersonMiddleNamePronunciationProperty;
  values[11] = kABPersonLastNamePronunciationProperty;
  values[12] = kABPersonNicknameProperty;
  values[13] = kABPersonAddressingGrammarProperty;
  values[14] = kABPersonJobTitleProperty;
  values[15] = kABPersonDepartmentProperty;
  values[16] = kABPersonOrganizationProperty;
  values[17] = kABPersonOrganizationPhoneticProperty;
  values[18] = kABPersonOrganizationPronunciationProperty;
  values[19] = kABPersonPhoneProperty;
  values[20] = kABPersonEmailProperty;
  values[21] = kABPersonSoundProperty;
  values[22] = kABPersonURLProperty;
  values[23] = kABPersonAddressProperty;
  values[24] = kABPersonBirthdayProperty;
  values[25] = kABPersonAlternateBirthdayProperty;
  values[26] = kABPersonDateProperty;
  values[27] = kABPersonRelatedNamesProperty;
  values[28] = kABPersonSocialProfileProperty;
  values[29] = kABPersonInstantMessageProperty;
  values[30] = kABPersonNoteProperty;
  return CFArrayCreate(*MEMORY[0x1E695E480], values, 31, 0);
}

uint64_t ABPersonGetSetOfModificationDateTouchingPropertyIDs()
{
  if (ABPersonGetSetOfModificationDateTouchingPropertyIDs_onceToken != -1)
  {
    ABPersonGetSetOfModificationDateTouchingPropertyIDs_cold_1();
  }

  return ABPersonGetSetOfModificationDateTouchingPropertyIDs_retVal;
}

CFSetRef __ABPersonGetSetOfModificationDateTouchingPropertyIDs_block_invoke()
{
  v1[37] = *MEMORY[0x1E69E9840];
  v1[0] = kABPersonPrefixProperty;
  v1[1] = kABPersonFirstNameProperty;
  v1[2] = kABPersonMiddleNameProperty;
  v1[3] = kABPersonLastNameProperty;
  v1[4] = kABPersonSuffixProperty;
  v1[5] = kABPersonPreviousFamilyNameProperty;
  v1[6] = kABPersonFirstNamePhoneticProperty;
  v1[7] = kABPersonMiddleNamePhoneticProperty;
  v1[8] = kABPersonLastNamePhoneticProperty;
  v1[9] = kABPersonFirstNamePronunciationProperty;
  v1[10] = kABPersonMiddleNamePronunciationProperty;
  v1[11] = kABPersonLastNamePronunciationProperty;
  v1[12] = kABPersonNicknameProperty;
  v1[13] = kABPersonDisplayNameProperty;
  v1[14] = kABPersonAddressingGrammarProperty;
  v1[15] = kABPersonJobTitleProperty;
  v1[16] = kABPersonDepartmentProperty;
  v1[17] = kABPersonOrganizationProperty;
  v1[18] = kABPersonOrganizationPhoneticProperty;
  v1[19] = kABPersonOrganizationPronunciationProperty;
  v1[20] = kABPersonPhoneProperty;
  v1[21] = kABPersonEmailProperty;
  v1[22] = kABPersonURLProperty;
  v1[23] = kABPersonAddressProperty;
  v1[24] = kABPersonBirthdayProperty;
  v1[25] = kABPersonAlternateBirthdayProperty;
  v1[26] = kABPersonDateProperty;
  v1[27] = kABPersonRelatedNamesProperty;
  v1[28] = kABPersonSocialProfileProperty;
  v1[29] = kABPersonInstantMessageProperty;
  v1[30] = kABPersonNoteProperty;
  v1[31] = kABPersonImageProperty;
  v1[32] = kABPersonImageTypeProperty;
  v1[33] = kABPersonImageHashProperty;
  v1[34] = kABPersonMemojiMetadataProperty;
  v1[35] = kABPersonWallpaperProperty;
  v1[36] = kABPersonWallpaperMetadataProperty;
  result = CFSetCreate(*MEMORY[0x1E695E480], v1, 37, 0);
  ABPersonGetSetOfModificationDateTouchingPropertyIDs_retVal = result;
  return result;
}

const __CFArray *ABPersonCopyPropertyIDsExcludingPropertyIDs(const __CFArray *a1, const __CFArray *a2)
{
  if (ABLogAPIUsage())
  {
    v15 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFArrayRef ABPersonCopyPropertyIDsExcludingPropertyIDs(CFArrayRef, CFArrayRef)", 3407, v4, 0, v5, v6, v7, v15);
    CFRelease(v4);
  }

  MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1);
  if (a2)
  {
    if (CFArrayGetCount(a2))
    {
      Count = CFArrayGetCount(MutableCopy);
      v10 = CFArrayGetCount(a2);
      if (v10 >= 1)
      {
        v11 = v10 + 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, v11 - 2);
          v16.location = 0;
          v16.length = Count;
          FirstIndexOfValue = CFArrayGetFirstIndexOfValue(MutableCopy, v16, ValueAtIndex);
          if (FirstIndexOfValue != -1)
          {
            CFArrayRemoveValueAtIndex(MutableCopy, FirstIndexOfValue);
            --Count;
          }

          --v11;
        }

        while (v11 > 1);
      }
    }
  }

  return MutableCopy;
}

void ABMergePropertiesFromPersonIntoPerson(const __CFArray *a1, const void *a2, const void *a3)
{
  v5 = a1;
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v7 = Count;
    v8 = 0;
    v21 = v5;
    v22 = a2;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
      if ((ABPersonGetTypeOfProperty(ValueAtIndex) & 0x100) != 0)
      {
        v10 = ABRecordCopyValue(a2, ValueAtIndex);
        if (v10)
        {
          v11 = v10;
          v12 = ABRecordCopyValue(a3, ValueAtIndex);
          if (v12)
          {
            v13 = v12;
            MutableCopy = ABMultiValueCreateMutableCopy(v12);
            CFRelease(v13);
          }

          else
          {
            PropertyType = ABMultiValueGetPropertyType(v11);
            MutableCopy = ABMultiValueCreateMutable(PropertyType);
          }

          v16 = ABMultiValueGetCount(v11);
          if (v16 >= 1)
          {
            v17 = v16;
            for (i = 0; i != v17; ++i)
            {
              v19 = ABMultiValueCopyValueAtIndex(v11, i);
              v20 = ABMultiValueCopyLabelAtIndex(v11, i);
              if (v19)
              {
                ABMultiValueAddValueAndLabelIfUnique(MutableCopy, v19, v20, 1, 0);
                CFRelease(v19);
              }

              if (v20)
              {
                CFRelease(v20);
              }
            }
          }

          ABRecordSetValue(a3, ValueAtIndex, MutableCopy, 0);
          CFRelease(MutableCopy);
          CFRelease(v11);
          v5 = v21;
          a2 = v22;
        }
      }

      else
      {
        _mergeSingleValuePropertyFromRecordIntoRecord(ValueAtIndex, a2, a3);
      }

      ++v8;
    }

    while (v8 != v7);
  }
}

void _mergeSingleValuePropertyFromRecordIntoRecord(ABPropertyID property, const void *a2, ABRecordRef record)
{
  v6 = ABRecordCopyValue(record, property);
  if (!v6)
  {
    v7 = ABRecordCopyValue(a2, property);
    if (!v7)
    {
      return;
    }

    v6 = v7;
    ABRecordSetValue(record, property, v7, 0);
  }

  CFRelease(v6);
}

void ABPersonMergePersonIntoPerson(const void *a1, const void *a2)
{
  if (ABLogAPIUsage())
  {
    v9 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "void ABPersonMergePersonIntoPerson(ABRecordRef, ABRecordRef)", 3490, v4, 0, v5, v6, v7, v9);
    CFRelease(v4);
  }

  ArrayOfAllPropertyIDs = ABPersonCreateArrayOfAllPropertyIDs();
  ABMergePropertiesFromPersonIntoPerson(ArrayOfAllPropertyIDs, a1, a2);

  CFRelease(ArrayOfAllPropertyIDs);
}

const void *ABPersonCreateUnifiedPerson(const void *a1)
{
  if (ABLogAPIUsage())
  {
    v12 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "ABRecordRef ABPersonCreateUnifiedPerson(ABRecordRef)", 3498, v2, 0, v3, v4, v5, v12);
    CFRelease(v2);
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return 0;
  }

  v7 = Mutable;
  CFArrayAppendValue(Mutable, a1);
  ArrayOfUnifiedPeople = ABPersonCreateArrayOfUnifiedPeople(v7);
  if (ArrayOfUnifiedPeople)
  {
    v9 = ArrayOfUnifiedPeople;
    if (CFArrayGetCount(ArrayOfUnifiedPeople) == 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v9, 0);
      CFRetain(ValueAtIndex);
    }

    else
    {
      ValueAtIndex = 0;
    }

    CFRelease(v9);
  }

  else
  {
    ValueAtIndex = 0;
  }

  CFRelease(v7);
  return ValueAtIndex;
}

__CFArray *ABPersonCreateArrayOfUnifiedPeople(const __CFArray *a1)
{
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFMutableArrayRef ABPersonCreateArrayOfUnifiedPeople(CFArrayRef)", 3521, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  return ABPersonCreateArrayOfUnifiedPeopleWithAccountIdentifier(a1, 0);
}

__CFArray *ABPersonCreateArrayOfUnifiedPeopleWithAccountIdentifier(const __CFArray *a1, uint64_t a2)
{
  values[9] = *MEMORY[0x1E69E9840];
  if (ABLogAPIUsage())
  {
    v32 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFMutableArrayRef ABPersonCreateArrayOfUnifiedPeopleWithAccountIdentifier(CFArrayRef, CFStringRef)", 3557, v4, 0, v5, v6, v7, v32);
    CFRelease(v4);
  }

  v8 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a1)
  {
    v10 = CFSetCreateMutable(v8, 0, MEMORY[0x1E695E9F8]);
    if (v10)
    {
      v11 = v10;
      ArrayOfAllPropertyIDs = ABPersonCreateArrayOfAllPropertyIDs();
      values[0] = kABPersonPrefixProperty;
      values[1] = kABPersonFirstNameProperty;
      values[2] = kABPersonMiddleNameProperty;
      values[3] = kABPersonLastNameProperty;
      values[4] = kABPersonSuffixProperty;
      values[5] = kABPersonFirstNamePhoneticProperty;
      values[6] = kABPersonMiddleNamePhoneticProperty;
      values[7] = kABPersonLastNamePhoneticProperty;
      values[8] = kABPersonPreviousFamilyNameProperty;
      v13 = CFArrayCreate(v8, values, 9, 0);
      if (v13 && ArrayOfAllPropertyIDs)
      {
        cf = ABPersonCopyPropertyIDsExcludingPropertyIDs(ArrayOfAllPropertyIDs, v13);
        if (!cf)
        {
          goto LABEL_36;
        }

        v35 = v13;
        Count = CFArrayGetCount(a1);
        if (Count >= 1)
        {
          v15 = Count;
          v16 = 0;
          v33 = Mutable;
          v34 = a2;
          v36 = Count;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a1, v16);
            if (ValueAtIndex)
            {
              v18 = ValueAtIndex;
              if (!CFSetContainsValue(v11, ValueAtIndex))
              {
                if (!a2 && ABRecordGetIntValue(v18, kABPersonLinkProperty) == -1)
                {
                  CFArrayAppendValue(Mutable, v18);
                }

                else
                {
                  v19 = ABPersonCopyArrayOfAllLinkedPeopleWithAccountIdentifier(v18, a2);
                  if (v19)
                  {
                    v20 = v19;
                    IndexValueIfExists = ABAddressBookCopyArrayOfLinkedPeopleMovingPreferredNameToFirstIndexValueIfExists(v19);
                    CFRelease(v20);
                    if (IndexValueIfExists)
                    {
                      v22 = CFArrayGetCount(IndexValueIfExists);
                      if (v22 >= 1)
                      {
                        v23 = v22;
                        TemporaryNewPersonWithRecordID = 0;
                        v25 = 0;
                        v37 = IndexValueIfExists;
                        do
                        {
                          v26 = CFArrayGetValueAtIndex(IndexValueIfExists, v25);
                          CFSetAddValue(v11, v26);
                          if (TemporaryNewPersonWithRecordID)
                          {
                            ABMergePropertiesFromPersonIntoPerson(cf, v26, TemporaryNewPersonWithRecordID);
                          }

                          else
                          {
                            ABRecordGetRecordID(v26);
                            TemporaryNewPersonWithRecordID = ABPersonCreateTemporaryNewPersonWithRecordID();
                            v27 = ArrayOfAllPropertyIDs;
                            ABMergePropertiesFromPersonIntoPerson(ArrayOfAllPropertyIDs, v26, TemporaryNewPersonWithRecordID);
                            v28 = ABRecordCopyValue(v26, kABPersonLinkProperty);
                            ABRecordSetValue(TemporaryNewPersonWithRecordID, kABPersonLinkProperty, v28, 0);
                            if (v28)
                            {
                              CFRelease(v28);
                            }

                            v29 = ABRecordCopyValue(v26, kABPersonInternalUUIDProperty);
                            ABRecordSetValue(TemporaryNewPersonWithRecordID, kABPersonInternalUUIDProperty, v29, 0);
                            if (v29)
                            {
                              CFRelease(v29);
                            }

                            v30 = ABRecordCopyValue(v26, kABPersonKindProperty);
                            ABRecordSetValue(TemporaryNewPersonWithRecordID, kABPersonKindProperty, v30, 0);
                            if (v30)
                            {
                              CFRelease(v30);
                            }

                            ArrayOfAllPropertyIDs = v27;
                            IndexValueIfExists = v37;
                          }

                          _mergeSingleValuePropertyFromRecordIntoRecord(kABPersonPhonemeDataProperty, v26, TemporaryNewPersonWithRecordID);
                          ++v25;
                        }

                        while (v23 != v25);
                        Mutable = v33;
                        a2 = v34;
                        if (TemporaryNewPersonWithRecordID)
                        {
                          CFArrayAppendValue(v33, TemporaryNewPersonWithRecordID);
                          CFRelease(TemporaryNewPersonWithRecordID);
                        }
                      }

                      CFRelease(IndexValueIfExists);
                      v15 = v36;
                    }
                  }
                }
              }
            }

            ++v16;
          }

          while (v16 != v15);
        }

        CFRelease(cf);
        v13 = v35;
      }

      if (!v13)
      {
LABEL_37:
        if (ArrayOfAllPropertyIDs)
        {
          CFRelease(ArrayOfAllPropertyIDs);
        }

        CFRelease(v11);
        return Mutable;
      }

LABEL_36:
      CFRelease(v13);
      goto LABEL_37;
    }
  }

  return Mutable;
}

__CFArray *ABAddressBookCopyArrayOfLinkedPeopleMovingPreferredNameToFirstIndexValueIfExists(const __CFArray *a1)
{
  if (!a1 || CFArrayGetCount(a1) < 1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], Count, a1);
  ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
  v5 = ABPersonCopyPreferredLinkedPersonForName(ValueAtIndex);
  if (v5)
  {
    v6 = v5;
    RecordID = ABRecordGetRecordID(ValueAtIndex);
    if (RecordID != ABRecordGetRecordID(v6) && Count >= 1)
    {
      v8 = 0;
      while (1)
      {
        v9 = CFArrayGetValueAtIndex(a1, v8);
        v10 = ABRecordGetRecordID(v9);
        if (v10 == ABRecordGetRecordID(v6))
        {
          break;
        }

        if (Count == ++v8)
        {
          goto LABEL_12;
        }
      }

      CFArraySetValueAtIndex(MutableCopy, 0, v6);
      CFArraySetValueAtIndex(MutableCopy, v8, ValueAtIndex);
    }

LABEL_12:
    CFRelease(v6);
  }

  return MutableCopy;
}

uint64_t ABPersonIsLinkedToMe(const void *a1, ABRecordRef record)
{
  if (ABRecordGetRecordID(record) == -1)
  {
    return 0;
  }

  result = 0;
  if (!a1 || !record)
  {
    return result;
  }

  IntegerProperty = ABAddressBookGetIntegerProperty(a1);
  if (IntegerProperty == -1)
  {
    return 0;
  }

  result = ABAddressBookGetSourceWithRecordID(a1, IntegerProperty);
  if (result)
  {
    result = ABSourceGetMe(result);
    if (result)
    {
      v6 = result;
      if (result == record)
      {
        return 1;
      }

      IntValue = ABRecordGetIntValue(record, kABPersonLinkProperty);
      if (IntValue != -1)
      {
        return IntValue == ABRecordGetIntValue(v6, kABPersonLinkProperty);
      }

      return 0;
    }
  }

  return result;
}

ABMutableMultiValueRef ABPersonCreatePhoneNumberValueSanitized(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  MutableCopy = ABMultiValueCreateMutableCopy(a1);
  Count = ABMultiValueGetCount(a1);
  if (Count >= 1)
  {
    v4 = Count;
    for (i = 0; i != v4; ++i)
    {
      v6 = ABMultiValueCopyValueAtIndex(a1, i);
      v7 = [v6 _cn_stringBySanitizingPhoneNumber];
      if (v6 != v7)
      {
        ABMultiValueReplaceValueAtIndex(MutableCopy, v7, i);
      }
    }
  }

  return MutableCopy;
}

__CFString *_createPlaceholdersForNumberOfItems(uint64_t a1)
{
  v1 = (ceil(a1 / 10.0) * 10.0);
  Mutable = CFStringCreateMutable(0, 2 * v1 - 1);
  if (v1 >= 2)
  {
    v3 = v1 - 1;
    do
    {
      CFStringAppend(Mutable, @"?,");
      --v3;
    }

    while (v3);
  }

  CFStringAppend(Mutable, @"?");
  return Mutable;
}

Class __getNSPersonNameComponentsFormatterPreferencesClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!IntlPreferencesLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __IntlPreferencesLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7CCCC10;
    v5 = 0;
    IntlPreferencesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!IntlPreferencesLibraryCore_frameworkLibrary_0)
  {
    __getNSPersonNameComponentsFormatterPreferencesClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("NSPersonNameComponentsFormatterPreferences");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getNSPersonNameComponentsFormatterPreferencesClass_block_invoke_cold_1();
  }

  getNSPersonNameComponentsFormatterPreferencesClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __IntlPreferencesLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  IntlPreferencesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_2()
{

  return CPSqliteStatementSendResults();
}

uint64_t OUTLINED_FUNCTION_6_1(sqlite3_stmt *a1, uint64_t a2, const char *a3, uint64_t a4, void (__cdecl *a5)(void *))
{

  return sqlite3_bind_text(a1, 1, a3, -1, a5);
}

ABPropertyType ABMultiValueGetPropertyType(ABMultiValueRef multiValue)
{
  if (ABLogAPIUsage())
  {
    v12 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "ABPropertyType ABMultiValueGetPropertyType(ABMultiValueRef)", 21, v2, 0, v3, v4, v5, v12);
    CFRelease(v2);
  }

  v6 = ABCMultiValuePropertyType(multiValue);
  if (ABLogAPIUsage())
  {
    _ABLog2(6, "ABPropertyType ABMultiValueGetPropertyType(ABMultiValueRef)", 23, @">> ", 0, v7, v8, v9, v11);
  }

  return v6 & 0xFFFFFEFF;
}

CFIndex ABMultiValueGetCount(ABMultiValueRef multiValue)
{
  if (ABLogAPIUsage())
  {
    v12 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFIndex ABMultiValueGetCount(ABMultiValueRef)", 29, v2, 0, v3, v4, v5, v12);
    CFRelease(v2);
  }

  Count = ABCMultiValueGetCount(multiValue);
  if (ABLogAPIUsage())
  {
    _ABLog2(6, "CFIndex ABMultiValueGetCount(ABMultiValueRef)", 31, @">> ", 0, v7, v8, v9, v11);
  }

  return Count;
}

CFTypeRef ABMultiValueCopyValueAtIndex(ABMultiValueRef multiValue, CFIndex index)
{
  if (ABLogAPIUsage())
  {
    v14 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFTypeRef ABMultiValueCopyValueAtIndex(ABMultiValueRef, CFIndex)", 37, v4, 0, v5, v6, v7, v14);
    CFRelease(v4);
  }

  v8 = ABCMultiValueCopyValueAtIndex(multiValue, index);
  if (ABLogAPIUsage())
  {
    _ABLog2(6, "CFTypeRef ABMultiValueCopyValueAtIndex(ABMultiValueRef, CFIndex)", 39, @">> ", 0, v9, v10, v11, v13);
  }

  return v8;
}

CFArrayRef ABMultiValueCopyArrayOfAllValues(ABMultiValueRef multiValue)
{
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFArrayRef ABMultiValueCopyArrayOfAllValues(ABMultiValueRef)", 44, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  return ABCMultiValueCopyValues(multiValue);
}

CFStringRef ABMultiValueCopyLabelAtIndex(ABMultiValueRef multiValue, CFIndex index)
{
  if (ABLogAPIUsage())
  {
    v14 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFStringRef ABMultiValueCopyLabelAtIndex(ABMultiValueRef, CFIndex)", 50, v4, 0, v5, v6, v7, v14);
    CFRelease(v4);
  }

  v8 = ABCMultiValueCopyLabelAtIndex(multiValue, index);
  if (ABLogAPIUsage())
  {
    _ABLog2(6, "CFStringRef ABMultiValueCopyLabelAtIndex(ABMultiValueRef, CFIndex)", 52, @">> ", 0, v9, v10, v11, v13);
  }

  return v8;
}

CFIndex ABMultiValueGetIndexForIdentifier(ABMultiValueRef multiValue, ABMultiValueIdentifier identifier)
{
  if (ABLogAPIUsage())
  {
    v9 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFIndex ABMultiValueGetIndexForIdentifier(ABMultiValueRef, ABMultiValueIdentifier)", 58, v4, 0, v5, v6, v7, v9);
    CFRelease(v4);
  }

  return ABCMultiValueIndexForIdentifier(multiValue, identifier);
}

ABMultiValueIdentifier ABMultiValueGetIdentifierAtIndex(ABMultiValueRef multiValue, CFIndex index)
{
  if (ABLogAPIUsage())
  {
    v14 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "ABMultiValueIdentifier ABMultiValueGetIdentifierAtIndex(ABMultiValueRef, CFIndex)", 64, v4, 0, v5, v6, v7, v14);
    CFRelease(v4);
  }

  IdentifierAtIndex = ABCMultiValueGetIdentifierAtIndex(multiValue, index);
  if (ABLogAPIUsage())
  {
    _ABLog2(6, "ABMultiValueIdentifier ABMultiValueGetIdentifierAtIndex(ABMultiValueRef, CFIndex)", 66, @">> ", 0, v9, v10, v11, v13);
  }

  return IdentifierAtIndex;
}

CFArrayRef *ABMultiValueCopyUUIDAtIndex(CFArrayRef *a1, CFIndex a2)
{
  if (ABLogAPIUsage())
  {
    v14 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFStringRef ABMultiValueCopyUUIDAtIndex(ABMultiValueRef, CFIndex)", 72, v4, 0, v5, v6, v7, v14);
    CFRelease(v4);
  }

  v8 = ABCMultiValueCopyUUIDAtIndex(a1, a2);
  if (ABLogAPIUsage())
  {
    _ABLog2(6, "CFStringRef ABMultiValueCopyUUIDAtIndex(ABMultiValueRef, CFIndex)", 74, @">> ", 0, v9, v10, v11, v13);
  }

  return v8;
}

CFIndex ABMultiValueGetFirstIndexOfValue(ABMultiValueRef multiValue, CFTypeRef value)
{
  if (ABLogAPIUsage())
  {
    v9 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFIndex ABMultiValueGetFirstIndexOfValue(ABMultiValueRef, CFTypeRef)", 81, v4, 0, v5, v6, v7, v9);
    CFRelease(v4);
  }

  return ABCMultiValueGetFirstIndexOfValue(multiValue, value);
}

uint64_t ABMultiValueGetFirstIndexOfValueWithCallback(uint64_t a1, uint64_t a2, unsigned int (*a3)(uint64_t, const void *))
{
  if (ABLogAPIUsage())
  {
    v11 = _isMainThread();
    v6 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFIndex ABMultiValueGetFirstIndexOfValueWithCallback(ABMultiValueRef, CFTypeRef, CFArrayEqualCallBack)", 87, v6, 0, v7, v8, v9, v11);
    CFRelease(v6);
  }

  return ABCMultiValueGetFirstIndexOfValueWithCallback(a1, a2, a3);
}

CFIndex ABMultiValueGetFirstIndexOfLabel(uint64_t a1, const void *a2)
{
  if (ABLogAPIUsage())
  {
    v9 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFIndex ABMultiValueGetFirstIndexOfLabel(ABMultiValueRef, CFStringRef)", 93, v4, 0, v5, v6, v7, v9);
    CFRelease(v4);
  }

  return ABCMultiValueGetFirstIndexOfLabel(a1, a2);
}

ABMutableMultiValueRef ABMultiValueCreateMutable(ABPropertyType type)
{
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "ABMutableMultiValueRef ABMultiValueCreateMutable(ABPropertyType)", 101, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  return ABCMultiValueCreateMutable(type);
}

ABMutableMultiValueRef ABMultiValueCreateMutableCopy(ABMultiValueRef multiValue)
{
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "ABMutableMultiValueRef ABMultiValueCreateMutableCopy(ABMultiValueRef)", 106, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  return ABCMultiValueCreateMutableCopy(multiValue);
}

void ABMultiValueSetImmutable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (ABLogAPIUsage())
  {
    v17 = _isMainThread();
    v10 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "void ABMultiValueSetImmutable(ABMultiValueRef)", 111, v10, 0, v11, v12, v13, v17);
    CFRelease(v10);
  }

  if (a1)
  {
    *(a1 + 60) &= ~1u;
  }

  if (ABLogAPIUsage())
  {

    _ABLog2(6, "void ABMultiValueSetImmutable(ABMultiValueRef)", 116, @">> ", 0, v14, v15, v16, a9);
  }
}

BOOL ABMultiValueAddValueAndLabel(ABMutableMultiValueRef multiValue, CFTypeRef value, CFStringRef label, ABMultiValueIdentifier *outIdentifier)
{
  if (ABLogAPIUsage())
  {
    v13 = _isMainThread();
    v8 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABMultiValueAddValueAndLabel(ABMutableMultiValueRef, CFTypeRef, CFStringRef, ABMultiValueIdentifier *)", 123, v8, 0, v9, v10, v11, v13);
    CFRelease(v8);
  }

  if ((*(multiValue + 60) & 1) == 0)
  {
    ABMultiValueAddValueAndLabel_cold_1();
  }

  return ABCMultiValueAdd(multiValue, value, label, 0, outIdentifier);
}

BOOL ABMultiValueInsertValueAndLabelAtIndex(ABMutableMultiValueRef multiValue, CFTypeRef value, CFStringRef label, CFIndex index, ABMultiValueIdentifier *outIdentifier)
{
  if (ABLogAPIUsage())
  {
    v15 = _isMainThread();
    v10 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABMultiValueInsertValueAndLabelAtIndex(ABMutableMultiValueRef, CFTypeRef, CFStringRef, CFIndex, ABMultiValueIdentifier *)", 130, v10, 0, v11, v12, v13, v15);
    CFRelease(v10);
  }

  return ABMultiValueInsertValueAndLabelAndUUIDAtIndex(multiValue, value, label, 0, index, outIdentifier);
}

__CFArray *ABMultiValueInsertValueAndLabelAndUUIDAtIndex(uint64_t a1, void *a2, const void *a3, const __CFString *a4, CFIndex a5, int *a6)
{
  if (ABLogAPIUsage())
  {
    v17 = _isMainThread();
    v12 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABMultiValueInsertValueAndLabelAndUUIDAtIndex(ABMutableMultiValueRef, CFTypeRef, CFStringRef, CFStringRef, CFIndex, ABMultiValueIdentifier *)", 136, v12, 0, v13, v14, v15, v17);
    CFRelease(v12);
  }

  if ((*(a1 + 60) & 1) == 0)
  {
    ABMultiValueInsertValueAndLabelAndUUIDAtIndex_cold_1();
  }

  return ABCMultiValueInsert(a1, a2, a3, a5, a4, a6);
}

BOOL ABMultiValueRemoveValueAndLabelAtIndex(ABMutableMultiValueRef multiValue, CFIndex index)
{
  if (ABLogAPIUsage())
  {
    v9 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABMultiValueRemoveValueAndLabelAtIndex(ABMutableMultiValueRef, CFIndex)", 143, v4, 0, v5, v6, v7, v9);
    CFRelease(v4);
  }

  if ((*(multiValue + 60) & 1) == 0)
  {
    ABMultiValueRemoveValueAndLabelAtIndex_cold_1();
  }

  return ABCMultiValueRemove(multiValue, index);
}

BOOL ABMultiValueReplaceValueAtIndex(ABMutableMultiValueRef multiValue, CFTypeRef value, CFIndex index)
{
  if (ABLogAPIUsage())
  {
    v11 = _isMainThread();
    v6 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABMultiValueReplaceValueAtIndex(ABMutableMultiValueRef, CFTypeRef, CFIndex)", 150, v6, 0, v7, v8, v9, v11);
    CFRelease(v6);
  }

  if ((*(multiValue + 60) & 1) == 0)
  {
    ABMultiValueReplaceValueAtIndex_cold_1();
  }

  return ABCMultiValueReplaceValue(multiValue, value, index);
}

BOOL ABMultiValueReplaceLabelAtIndex(ABMutableMultiValueRef multiValue, CFStringRef label, CFIndex index)
{
  if (ABLogAPIUsage())
  {
    v11 = _isMainThread();
    v6 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABMultiValueReplaceLabelAtIndex(ABMutableMultiValueRef, CFStringRef, CFIndex)", 157, v6, 0, v7, v8, v9, v11);
    CFRelease(v6);
  }

  if ((*(multiValue + 60) & 1) == 0)
  {
    ABMultiValueReplaceLabelAtIndex_cold_1();
  }

  return ABCMultiValueReplaceLabel(multiValue, label, index);
}

BOOL ABMultiValueSetPrimaryIdentifier(ABMutableMultiValueRef multiValue, CFStringRef identifier)
{
  v2 = identifier;
  if (ABLogAPIUsage())
  {
    v9 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABMultiValueSetPrimaryIdentifier(ABMutableMultiValueRef, ABMultiValueIdentifier)", 164, v4, 0, v5, v6, v7, v9);
    CFRelease(v4);
  }

  if ((*(multiValue + 60) & 1) == 0)
  {
    ABMultiValueSetPrimaryIdentifier_cold_1();
  }

  return ABCMultiValueSetPrimaryIdentifier(multiValue, v2);
}

ABMultiValueRef ABMultiValueCreate(void)
{
  v1 = v0;
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "ABMultiValueRef ABMultiValueCreate(ABPropertyType)", 172, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  return ABCMultiValueCreate(v1);
}

ABMultiValueRef ABMultiValueCreateCopy(ABMultiValueRef multiValue)
{
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "ABMultiValueRef ABMultiValueCreateCopy(ABMultiValueRef)", 176, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  return ABCMultiValueCreateCopy(multiValue);
}

__CFArray *ABMultiValueInsertAndCreateIdentifier(uint64_t a1, void *a2, const void *a3, CFIndex a4, const __CFString *a5, int *a6, int a7)
{
  if (ABLogAPIUsage())
  {
    v19 = _isMainThread();
    v14 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABMultiValueInsertAndCreateIdentifier(ABMutableMultiValueRef, CFTypeRef, CFStringRef, CFIndex, CFStringRef, ABMultiValueIdentifier *, _Bool)", 181, v14, 0, v15, v16, v17, v19);
    CFRelease(v14);
  }

  if ((*(a1 + 60) & 1) == 0)
  {
    ABMultiValueInsertAndCreateIdentifier_cold_1();
  }

  return ABCMultiValueInsertAndCreateIdentifier(a1, a2, a3, a4, a5, a6, a7);
}

void ABMultiValueShow(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v6 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "void ABMultiValueShow(ABMultiValueRef)", 187, v2, 0, v3, v4, v5, v6);
    CFRelease(v2);
  }

  ABCMultiValueShow(a1);
}

uint64_t ABMultiValueLoad(void *a1, int a2, uint64_t a3)
{
  if (ABLogAPIUsage())
  {
    v11 = _isMainThread();
    v6 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "void ABMultiValueLoad(ABRecordRef, ABPropertyID, CPSqliteConnection *)", 192, v6, 0, v7, v8, v9, v11);
    CFRelease(v6);
  }

  return ABCMultiValueLoad(a1, a2, a3);
}

void ABMultiValueBatchLoad(const __CFArray *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (ABLogAPIUsage())
  {
    v19 = _isMainThread();
    v12 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "void ABMultiValueBatchLoad(CFArrayRef, ABPropertyID, ABAddressBookRef)", 198, v12, 0, v13, v14, v15, v19);
    CFRelease(v12);
  }

  ABCMultiValueBatchLoad(a1, a2, a3);
  if (ABLogAPIUsage())
  {

    _ABLog2(6, "void ABMultiValueBatchLoad(CFArrayRef, ABPropertyID, ABAddressBookRef)", 200, @">> ", 0, v16, v17, v18, a9);
  }
}

void ABMultiValueSave(const void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (ABLogAPIUsage())
  {
    v19 = _isMainThread();
    v12 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "void ABMultiValueSave(ABRecordRef, ABPropertyID, CPSqliteConnection *)", 204, v12, 0, v13, v14, v15, v19);
    CFRelease(v12);
  }

  ABCMultiValueSave(a1, a2, a3);
  if (ABLogAPIUsage())
  {

    _ABLog2(6, "void ABMultiValueSave(ABRecordRef, ABPropertyID, CPSqliteConnection *)", 206, @">> ", 0, v16, v17, v18, a9);
  }
}

BOOL kABMultiValueAddressComparator_block_invoke_2(int a1, CFTypeRef cf1, CFTypeRef cf2, CFTypeRef *a4)
{
  if (CFEqual(cf1, cf2))
  {
    return 1;
  }

  Value = CFDictionaryGetValue(cf2, @"CountryCode");
  v9 = CFDictionaryGetValue(cf1, @"CountryCode");
  v10 = v9;
  if (Value)
  {
    v11 = CFStringGetLength(Value) < 1;
    if (v10)
    {
LABEL_5:
      v12 = CFStringGetLength(v10) < 1;
      goto LABEL_8;
    }
  }

  else
  {
    v11 = 1;
    if (v9)
    {
      goto LABEL_5;
    }
  }

  v12 = 1;
LABEL_8:
  v13 = _abCopyAddressDictionaryWithoutCountryCode(cf1);
  v14 = _abCopyAddressDictionaryWithoutCountryCode(cf2);
  if (!CFEqual(v13, v14))
  {
    v7 = 0;
    goto LABEL_16;
  }

  if (v11 || !v12)
  {
    if (v12 || !v11)
    {
      v7 = 0;
      if (Value && v10)
      {
        v7 = CFStringCompare(v10, Value, 1uLL) == kCFCompareEqualTo;
        if (!v13)
        {
          goto LABEL_18;
        }

LABEL_17:
        CFRelease(v13);
        goto LABEL_18;
      }

LABEL_16:
      if (!v13)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else
  {
    *a4 = CFRetain(cf2);
  }

  v7 = 1;
  if (v13)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (v14)
  {
    CFRelease(v14);
  }

  return v7;
}

const __CFDictionary *_abCopyAddressDictionaryWithoutCountryCode(CFDictionaryRef theDict)
{
  MutableCopy = theDict;
  if (theDict)
  {
    if (CFDictionaryGetValue(theDict, @"CountryCode"))
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, MutableCopy);
      CFDictionaryRemoveValue(MutableCopy, @"CountryCode");
    }

    else
    {
      CFRetain(MutableCopy);
    }
  }

  return MutableCopy;
}

BOOL ABMultiValueAddValueAndLabelIfUnique(_BYTE *a1, const void *a2, const __CFString *a3, int a4, uint64_t (**a5)(void *, CFTypeRef, const void *, CFTypeRef *))
{
  if (ABLogAPIUsage())
  {
    v24 = _isMainThread();
    v9 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABMultiValueAddValueAndLabelIfUnique(ABMutableMultiValueRef, CFTypeRef, CFStringRef, _Bool, ABMultiValueUniqueInsertionComparator)", 262, v9, 0, v10, v11, v12, v24);
    CFRelease(v9);
  }

  if ((a1[60] & 1) == 0)
  {
    ABMultiValueAddValueAndLabelIfUnique_cold_1();
  }

  Count = ABMultiValueGetCount(a1);
  if (!a5)
  {
    a5 = &__block_literal_global_5;
  }

  if (Count < 1)
  {
    return ABMultiValueAddValueAndLabel(a1, a2, a3, 0);
  }

  v14 = Count;
  v15 = 0;
  v26 = 0;
  for (i = 0; i != v14; ++i)
  {
    v17 = ABMultiValueCopyValueAtIndex(a1, i);
    value = 0;
    v18 = a5[2](a5, v17, a2, &value);
    if (v18)
    {
      v19 = a4 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      v15 |= v18;
    }

    else
    {
      v20 = ABMultiValueCopyLabelAtIndex(a1, i);
      v21 = v20;
      if (a3 | v20)
      {
        if (a3 && v20)
        {
          v15 |= CFEqual(a3, v20) != 0;
LABEL_20:
          CFRelease(v21);
          goto LABEL_21;
        }

        if (v20)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v15 = 1;
      }
    }

LABEL_21:
    if (value)
    {
      v26 = ABMultiValueReplaceValueAtIndex(a1, value, i);
      if (value)
      {
        CFRelease(value);
      }
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  v22 = v26;
  if (((v15 | v26) & 1) == 0)
  {
    return ABMultiValueAddValueAndLabel(a1, a2, a3, 0);
  }

  return v22;
}

uint64_t ABMultiValueGetTypeID()
{
  if (ABLogAPIUsage())
  {
    v5 = _isMainThread();
    v0 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFTypeID ABMultiValueGetTypeID(void)", 308, v0, 0, v1, v2, v3, v5);
    CFRelease(v0);
  }

  return ABCMultiValueGetTypeID();
}

void ABMultiValueEnumerateWithBlock(const void *a1, uint64_t a2)
{
  if (ABLogAPIUsage())
  {
    v16 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "void ABMultiValueEnumerateWithBlock(ABMultiValueRef, ABMultiValueEnumeratorBlock)", 313, v4, 0, v5, v6, v7, v16);
    CFRelease(v4);
  }

  if (a1)
  {
    Count = ABMultiValueGetCount(a1);
    v9 = Count - 1;
    if (Count >= 1)
    {
      v10 = 0;
      do
      {
        v11 = ABMultiValueCopyLabelAtIndex(a1, v10);
        v12 = ABMultiValueCopyValueAtIndex(a1, v10);
        v13 = (*(a2 + 16))(a2, v10, v11, v12);
        if (v11)
        {
          CFRelease(v11);
        }

        if (v12)
        {
          CFRelease(v12);
        }

        if (v9 == v10++)
        {
          v15 = 1;
        }

        else
        {
          v15 = v13;
        }
      }

      while (v15 != 1);
    }
  }
}

ABRecordRef ABGroupCreate(void)
{
  if (ABLogAPIUsage())
  {
    v5 = _isMainThread();
    v0 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "ABRecordRef ABGroupCreate(void)", 24, v0, 0, v1, v2, v3, v5);
    CFRelease(v0);
  }

  return ABCGroupCreateNewGroup();
}

CFArrayRef ABGroupCopyArrayOfAllMembers(ABRecordRef group)
{
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFArrayRef ABGroupCopyArrayOfAllMembers(ABRecordRef)", 30, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  return ABCGroupCopyArrayOfAllMembers(group);
}

CFArrayRef ABGroupCopyArrayOfAllMembersWithSortOrdering(ABRecordRef group, ABPersonSortOrdering sortOrdering)
{
  if (ABLogAPIUsage())
  {
    v9 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFArrayRef ABGroupCopyArrayOfAllMembersWithSortOrdering(ABRecordRef, ABPersonSortOrdering)", 36, v4, 0, v5, v6, v7, v9);
    CFRelease(v4);
  }

  return ABCGroupCopyArrayOfAllMembersWithSortOrdering(group, sortOrdering);
}

BOOL ABGroupAddMember(ABRecordRef group, ABRecordRef person, CFErrorRef *error)
{
  if (ABLogAPIUsage())
  {
    v10 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABGroupAddMember(ABRecordRef, ABRecordRef, CFErrorRef *)", 42, v5, 0, v6, v7, v8, v10);
    CFRelease(v5);
  }

  return ABCGroupAddMemberAndReturnError(group, person);
}

BOOL ABGroupRemoveMember(ABRecordRef group, ABRecordRef member, CFErrorRef *error)
{
  if (ABLogAPIUsage())
  {
    v10 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABGroupRemoveMember(ABRecordRef, ABRecordRef, CFErrorRef *)", 48, v5, 0, v6, v7, v8, v10);
    CFRelease(v5);
  }

  return ABCGroupRemoveMemberAndReturnError(group, member);
}

ABRecordRef ABAddressBookGetGroupWithRecordID(ABAddressBookRef addressBook, ABRecordID recordID)
{
  v2 = *&recordID;
  if (ABLogAPIUsage())
  {
    v4 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v4);
    v6 = ABLogAddressBook(addressBook);
    _ABLog2(6, "ABRecordRef ABAddressBookGetGroupWithRecordID(ABAddressBookRef, ABRecordID)", 55, v5, @"%@", v7, v8, v9, v6);
    CFRelease(v5);
  }

  return ABCGroupGetRecordForUniqueID(addressBook, v2);
}

uint64_t ABAddressBookCopyGroupsWithUUIDs(uint64_t a1, const __CFArray *a2)
{
  if (ABLogAPIUsage())
  {
    v4 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v4);
    v6 = ABLogAddressBook(a1);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyGroupsWithUUIDs(ABAddressBookRef, CFArrayRef)", 61, v5, @"%@", v7, v8, v9, v6);
    CFRelease(v5);
  }

  return ABCGroupCopyRecordsForUUIDs(a1, a2);
}

CFIndex ABAddressBookGetGroupCount(ABAddressBookRef addressBook)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogAddressBook(addressBook);
    _ABLog2(6, "CFIndex ABAddressBookGetGroupCount(ABAddressBookRef)", 68, v3, @"%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  return ABCGetGroupCount(addressBook, 0);
}

uint64_t ABAddressBookGetGroupCountInSource(uint64_t a1, const void *a2)
{
  if (ABLogAPIUsage())
  {
    v4 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v4);
    v6 = ABLogAddressBook(a1);
    _ABLog2(6, "CFIndex ABAddressBookGetGroupCountInSource(ABAddressBookRef, ABRecordRef)", 73, v5, @"%@", v7, v8, v9, v6);
    CFRelease(v5);
  }

  return ABCGetGroupCount(a1, a2);
}

CFArrayRef ABAddressBookCopyArrayOfAllGroups(ABAddressBookRef addressBook)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogAddressBook(addressBook);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyArrayOfAllGroups(ABAddressBookRef)", 80, v3, @"%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  v8 = ABCCopyArrayOfAllGroups(addressBook);
  if (ABLogAPIUsage())
  {
    _ABLog2(6, "CFArrayRef ABAddressBookCopyArrayOfAllGroups(ABAddressBookRef)", 82, @">> ", 0, v9, v10, v11, v13);
  }

  return v8;
}

uint64_t ABAddressBookCopyArrayOfAllGroupsWithSortOrdering(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogAddressBook(a1);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyArrayOfAllGroupsWithSortOrdering(ABAddressBookRef, ABGroupSortOrdering)", 88, v3, @"%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  return ABCCopyArrayOfAllGroupsWithSortOrdering(a1);
}

uint64_t ABGroupCopyArrayOfAllGroupsWithMembersOfTypeWithUUIDs(uint64_t a1, unsigned int a2, int a3, const __CFArray *a4)
{
  if (ABLogAPIUsage())
  {
    v13 = _isMainThread();
    v8 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFArrayRef ABGroupCopyArrayOfAllGroupsWithMembersOfTypeWithUUIDs(ABAddressBookRef, ABRecordType, _Bool, CFArrayRef)", 96, v8, 0, v9, v10, v11, v13);
    CFRelease(v8);
  }

  return ABCCopyArrayOfAllGroupsWithMembersOfTypeWithUUIDs(a1, a2, a3, a4);
}

CFArrayRef ABGroupCopyArrayOfAllSubgroups(ABGroupRef group)
{
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFArrayRef ABGroupCopyArrayOfAllSubgroups(ABRecordRef)", 101, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  return ABCGroupCopyArrayOfAllSubgroups(group);
}

CFArrayRef ABGroupCopyArrayOfAllMembersAndSubgroups(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFArrayRef ABGroupCopyArrayOfAllMembersAndSubgroups(ABRecordRef)", 105, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  return ABCGroupCopyArrayOfAllMembersAndSubgroups(a1);
}

uint64_t ABGroupAddSubgroup(const void *a1, const void *a2)
{
  if (ABLogAPIUsage())
  {
    v9 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABGroupAddSubgroup(ABRecordRef, ABRecordRef)", 110, v4, 0, v5, v6, v7, v9);
    CFRelease(v4);
  }

  return ABCGroupAddSubgroup(a1, a2);
}

uint64_t ABGroupRemoveSubgroup(uint64_t a1, uint64_t a2)
{
  if (ABLogAPIUsage())
  {
    v9 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABGroupRemoveSubgroup(ABRecordRef, ABRecordRef)", 114, v4, 0, v5, v6, v7, v9);
    CFRelease(v4);
  }

  return ABCGroupRemoveSubgroup(a1, a2);
}

uint64_t ABGroupDelete(int a1)
{
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "void ABGroupDelete(ABRecordID, ABRecordRef, CPSqliteConnection *)", 122, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  return ABCGroupDelete(a1);
}

uint64_t ABGroupCopyCompositeName(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFStringRef ABGroupCopyCompositeName(ABRecordRef)", 127, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  return ABCGroupCopyCompositeName(a1);
}

uint64_t ABGroupGetTypeOfProperty(int a1)
{
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "ABPropertyType ABGroupGetTypeOfProperty(ABPropertyID)", 162, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  return ABCGroupTypeOfProperty(a1);
}

__CFString *ABGroupNameForProperty(int a1)
{
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFStringRef ABGroupNameForProperty(ABPropertyID)", 169, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  return ABCGroupNameForProperty(a1);
}

uint64_t _updateDowntimeWhitelistForPerson(uint64_t a1)
{
  v2 = sqlite3_column_int(*(a1 + 8), 0);
  v3 = objc_alloc(MEMORY[0x1E695DEF0]);
  v4 = sqlite3_column_blob(*(a1 + 8), 1);
  v5 = [v3 initWithBytes:v4 length:{sqlite3_column_bytes(*(a1 + 8), 1)}];
  v6 = [ABDowntimeWhitelistMigrator unknownPropertiesFromExternalRepresentation:v5];
  v7 = [v6 objectForKeyedSubscript:AB_DOWNTIME_WHITELIST_KEY];
  v8 = [v7 objectAtIndex:0];

  if (v8)
  {
    v9 = [v6 mutableCopy];
    [v9 setObject:0 forKeyedSubscript:AB_DOWNTIME_WHITELIST_KEY];
    v10 = [ABDowntimeWhitelistMigrator externalRepresentationFromUnknownProperties:v9];

    v11 = CPSqliteConnectionStatementForSQL();
    if (v11)
    {
      v12 = v11;
      v13 = *(v11 + 8);
      v14 = _ABCCreateUTF8StringFromCFString(v8);
      sqlite3_bind_text(v13, 1, v14, -1, MEMORY[0x1E69E9B38]);
      if ([v10 length])
      {
        sqlite3_bind_blob(*(v12 + 8), 2, [v10 bytes], objc_msgSend(v10, "length"), 0);
      }

      else
      {
        sqlite3_bind_null(*(v12 + 8), 2);
      }

      sqlite3_bind_int(*(v12 + 8), 3, v2);
      CPSqliteStatementPerform();
      CPSqliteStatementReset();
    }
  }

  else
  {
    v10 = v5;
  }

  return 0;
}

void invokeOnThread(void *a1, void *a2, void *a3, uint64_t a4)
{
  v9 = objc_alloc_init(ABCCallbackInvoker);
  v8 = [MEMORY[0x1E696AF00] currentThread] == a4;
  CFRetain(a1);
  v9->cb = a2;
  v9->ab = a1;
  v9->context = a3;
  [(ABCCallbackInvoker *)v9 performSelector:sel_invoke onThread:a4 withObject:0 waitUntilDone:v8];
}

uint64_t ABSourceCreate()
{
  if (ABLogAPIUsage())
  {
    v5 = _isMainThread();
    v0 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "ABRecordRef ABSourceCreate(void)", 40, v0, 0, v1, v2, v3, v5);
    CFRelease(v0);
  }

  return ABCSourceCreateNewSourceAndReturnError();
}

uint64_t ABAddressBookGetAccountForSource(uint64_t a1, uint64_t a2)
{
  if (ABLogAPIUsage())
  {
    v4 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v4);
    v6 = ABLogAddressBook(a1);
    _ABLog2(6, "ABRecordRef ABAddressBookGetAccountForSource(ABAddressBookRef, ABRecordRef)", 46, v5, @"%@", v7, v8, v9, v6);
    CFRelease(v5);
  }

  IntValue = ABRecordGetIntValue(a2, kABSourceAccountIDProperty);
  if (!a1)
  {
    return 0;
  }

  v11 = IntValue;
  v12 = *(a1 + 16);
  if (!v12 || v11 == -1)
  {
    return 0;
  }

  v13 = ABAccountClass;

  return ABCDBContextRecordForUIDOfType(v12, v11, v13);
}

uint64_t ABAddressBookSetAccountForSource(uint64_t a1, const void *a2, const void *a3, CFAllocatorRef *a4)
{
  if (ABLogAPIUsage())
  {
    v8 = _isMainThread();
    v9 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v8);
    v10 = ABLogAddressBook(a1);
    _ABLog2(6, "_Bool ABAddressBookSetAccountForSource(ABAddressBookRef, ABRecordRef, ABRecordRef, CFErrorRef *)", 58, v9, @"%@", v11, v12, v13, v10);
    CFRelease(v9);
  }

  if (!a3)
  {
    return 1;
  }

  RecordID = ABRecordGetRecordID(a3);
  if (RecordID == -1)
  {
    if (a4)
    {
      v17 = CFErrorCreate(0, @"ABAddressBookErrorDomain", 0, 0);
      result = 0;
      *a4 = v17;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = kABSourceAccountIDProperty;

    return ABRecordSetIntValue(a2, v15, RecordID, a4);
  }

  return result;
}

CFTypeRef ABAddressBookCopyAccountIdentifierForSource(uint64_t a1, uint64_t a2)
{
  result = ABAddressBookGetAccountForSource(a1, a2);
  if (result)
  {

    return ABAccountCopyIdentifier(result);
  }

  return result;
}

const void *ABAddressBookCopyLocalSource(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogAddressBook(a1);
    _ABLog2(6, "ABRecordRef ABAddressBookCopyLocalSource(ABAddressBookRef)", 88, v3, @"%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  result = ABCSourceCopyLocalSource(a1);
  if (!result)
  {

    return ABSourceCreate();
  }

  return result;
}

CFTypeRef ABAddressBookCopyDefaultSourceIsPersistableFallback(const void *a1, _BYTE *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if (ABLogAPIUsage())
  {
    v4 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v4);
    v6 = ABLogAddressBook(a1);
    _ABLog2(6, "ABRecordRef ABAddressBookCopyDefaultSourceIsPersistableFallback(ABAddressBookRef, BOOL *)", 135, v5, @"%@", v7, v8, v9, v6);
    CFRelease(v5);
  }

  if (!a1)
  {
    v14 = ABOSLogGeneral();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7EFB000, v14, OS_LOG_TYPE_DEFAULT, "No addressBook, returning an empty source", buf, 2u);
    }

    return ABSourceCreate();
  }

  v10 = _ABCGetActualDefaultSource(a1);
  v11 = v10;
  if (v10 && ABRecordGetIntValue(v10, kABSourceEnabledProperty) == 1 && ABRecordGetIntValue(v11, kABSourceTypeProperty) != 6 && (ABSourceIsRemote(v11) & 1) == 0 && (ABSourceIsContentReadonlyIncludingGuardianRestrictions(v11, 0) & 1) == 0)
  {
    v33 = ABOSLogGeneral();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      RecordID = ABRecordGetRecordID(v11);
      _os_log_impl(&dword_1B7EFB000, v33, OS_LOG_TYPE_DEFAULT, "Returning a valid actual default source (recordID %d)", buf, 8u);
    }

    return CFRetain(v11);
  }

  v12 = ABOSLogGeneral();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if (v11)
    {
      v13 = ABRecordGetRecordID(v11);
    }

    else
    {
      v13 = -1;
    }

    *buf = 67109120;
    RecordID = v13;
    _os_log_impl(&dword_1B7EFB000, v12, OS_LOG_TYPE_DEFAULT, "Actual default source is invalid (recordID %d), trying fallbacks to find replacement default source", buf, 8u);
  }

  v17 = [ABAddressBookCopyArrayOfAllAccounts(a1) mutableCopy];
  if (!v11)
  {
    goto LABEL_24;
  }

  AccountForSource = ABAddressBookGetAccountForSource(a1, v11);
  if (!AccountForSource)
  {
    goto LABEL_24;
  }

  v19 = AccountForSource;
  v20 = ABAddressBookCopySuitableDefaultSourceInAccount(a1, AccountForSource);
  if (!v20)
  {
    [v17 removeObject:v19];
LABEL_24:
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v24 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (!v24)
    {
LABEL_32:
      v29 = ABOSLogGeneral();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7EFB000, v29, OS_LOG_TYPE_DEFAULT, "Failed to find a valid default source, returning the local source", buf, 2u);
      }

      v16 = ABCSourceCopyLocalSource(a1);
      goto LABEL_38;
    }

    v25 = v24;
    v26 = *v35;
LABEL_26:
    v27 = 0;
    while (1)
    {
      if (*v35 != v26)
      {
        objc_enumerationMutation(v17);
      }

      v28 = ABAddressBookCopySuitableDefaultSourceInAccount(a1, *(*(&v34 + 1) + 8 * v27));
      if (v28)
      {
        break;
      }

      if (v25 == ++v27)
      {
        v25 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v25)
        {
          goto LABEL_26;
        }

        goto LABEL_32;
      }
    }

    v16 = v28;
    v21 = ABOSLogGeneral();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    v30 = ABRecordGetRecordID(v16);
    *buf = 67109120;
    RecordID = v30;
    v23 = "Found another syncing source (recordID %d) to use as default source";
    goto LABEL_37;
  }

  v16 = v20;
  v21 = ABOSLogGeneral();
  if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_38;
  }

  v22 = ABRecordGetRecordID(v16);
  *buf = 67109120;
  RecordID = v22;
  v23 = "Found another source (recordID %d) in the same account as invalid default, using that instead";
LABEL_37:
  _os_log_impl(&dword_1B7EFB000, v21, OS_LOG_TYPE_DEFAULT, v23, buf, 8u);
LABEL_38:
  if (a2 && v16)
  {
    *a2 = 1;
  }

  else if (!v16)
  {
    v31 = ABOSLogGeneral();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7EFB000, v31, OS_LOG_TYPE_DEFAULT, "Returning an empty source", buf, 2u);
    }

    v16 = ABSourceCreate();
  }

  return v16;
}

CFTypeRef ABAddressBookCopySuitableDefaultSourceInAccount(const void *a1, const void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  DefaultSourceForAccount = ABAddressBookGetDefaultSourceForAccount(a1, a2);
  v5 = DefaultSourceForAccount;
  if (!DefaultSourceForAccount || ABRecordGetIntValue(DefaultSourceForAccount, kABSourceEnabledProperty) != 1 || ABRecordGetIntValue(v5, kABSourceTypeProperty) == 6 || (ABSourceIsRemote(v5) & 1) != 0 || (ABSourceIsContentReadonlyIncludingGuardianRestrictions(v5, 0) & 1) != 0 || (result = CFRetain(v5)) == 0)
  {
    v7 = ABAddressBookCopyArrayOfAllSourcesInAccount(a1, a2);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    result = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (result)
    {
      v8 = result;
      v9 = *v14;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          v12 = v11 == v5 || v11 == 0;
          if (!v12 && ABRecordGetIntValue(*(*(&v13 + 1) + 8 * v10), kABSourceEnabledProperty) == 1 && ABRecordGetIntValue(v11, kABSourceTypeProperty) != 6 && (ABSourceIsRemote(v11) & 1) == 0 && (ABSourceIsContentReadonlyIncludingGuardianRestrictions(v11, 0) & 1) == 0)
          {
            return CFRetain(v11);
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        result = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        v8 = result;
        if (result)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

void ABAddressBookCheckDefaultSourceIntegrityAndUpdateIfNeeded(const void *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = ABOSLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7EFB000, v2, OS_LOG_TYPE_DEFAULT, "ABAddressBookCheckDefaultSourceIntegrityAndUpdateIfNeeded - start", buf, 2u);
  }

  v33 = 0;
  v3 = ABAddressBookCopyDefaultSourceIsPersistableFallback(a1, &v33);
  v4 = 0;
  if (v33 == 1)
  {
    v5 = ABAddressBookCopyLocalSource(a1);
    v6 = ABOSLogGeneral();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v3 == v5)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&dword_1B7EFB000, v6, OS_LOG_TYPE_DEFAULT, "The local source is the default source fallback", buf, 2u);
      }

      if (!ABRecordGetIntValue(v5, kABSourceEnabledProperty))
      {
        v8 = [MEMORY[0x1E6959A48] defaultStore];
        v9 = [MEMORY[0x1E6996608] providerWithStore:v8];
        v10 = [v9 isAnyAccountSyncableIgnoringAccount:0];

        if ((v10 & 1) == 0)
        {
          v11 = ABOSLogGeneral();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1B7EFB000, v11, OS_LOG_TYPE_DEFAULT, "The local source is disabled and no other accounts are syncable. Enabling the local source to use as the default source", buf, 2u);
          }

          ABRecordSetValue(v5, kABSourceEnabledProperty, *MEMORY[0x1E695E4D0], 0);
          v4 = 1;
          if (!v5)
          {
            goto LABEL_18;
          }

LABEL_17:
          CFRelease(v5);
          goto LABEL_18;
        }
      }
    }

    else
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&dword_1B7EFB000, v6, OS_LOG_TYPE_DEFAULT, "Persisting the non-local source as the default source", buf, 2u);
      }

      ABAddressBookSetDefaultSource(a1, v3, 0);
    }

    v4 = 0;
    if (!v5)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_18:
  if (v3)
  {
    CFRelease(v3);
  }

  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = ABAddressBookCopyArrayOfAllSourcesIncludingDisabledSources(a1, 1);
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v36 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v29 + 1) + 8 * i);
        IntValue = ABRecordGetIntValue(v17, kABSourceTypeProperty);
        if (IntValue == 6)
        {
          v4 |= ABAddressBookRemoveRecord(a1, v17, 0);
        }

        else if ((IntValue & 0x1000000) != 0)
        {
          v19 = ABAddressBookCopyArrayOfAllPeopleInSource(a1, v17);
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v20 = [(__CFArray *)v19 countByEnumeratingWithState:&v25 objects:v35 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v26;
            do
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v26 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v4 |= ABAddressBookRemoveRecord(a1, *(*(&v25 + 1) + 8 * j), 0);
              }

              v21 = [(__CFArray *)v19 countByEnumeratingWithState:&v25 objects:v35 count:16];
            }

            while (v21);
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v14);
  }

  if (v4)
  {
    ABAddressBookSave(a1, 0);
  }

  v24 = ABOSLogGeneral();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7EFB000, v24, OS_LOG_TYPE_DEFAULT, "ABAddressBookCheckDefaultSourceIntegrityAndUpdateIfNeeded - end", buf, 2u);
  }
}

uint64_t ABAddressBookCopyArrayOfAllSourcesIncludingDisabledSources(uint64_t a1, int a2)
{
  if (ABLogAPIUsage())
  {
    v4 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v4);
    v6 = ABLogAddressBook(a1);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyArrayOfAllSourcesIncludingDisabledSources(ABAddressBookRef, _Bool)", 327, v5, @"%@", v7, v8, v9, v6);
    CFRelease(v5);
  }

  return ABCSourceCopyArrayOfAllSourcesIncludingDisabledSources(a1, a2);
}

CFArrayRef ABAddressBookCopyArrayOfAllPeopleInSource(ABAddressBookRef addressBook, ABRecordRef source)
{
  if (ABLogAPIUsage())
  {
    v4 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v4);
    v6 = ABLogAddressBook(addressBook);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyArrayOfAllPeopleInSource(ABAddressBookRef, ABRecordRef)", 509, v5, @"%@", v7, v8, v9, v6);
    CFRelease(v5);
  }

  return ABCCopyArrayOfAllPeopleInSource(addressBook, source);
}

uint64_t ABAddressBookCopySourcesWithUUIDs(uint64_t a1, const __CFArray *a2)
{
  if (ABLogAPIUsage())
  {
    v4 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v4);
    v6 = ABLogAddressBook(a1);
    _ABLog2(6, "CFArrayRef ABAddressBookCopySourcesWithUUIDs(ABAddressBookRef, CFArrayRef)", 301, v5, @"%@", v7, v8, v9, v6);
    CFRelease(v5);
  }

  return ABCSourceCopyRecordsForUUIDs(a1, a2);
}

uint64_t ABAddressBookGetCountOfRecordsOutsideSource(int a1, ABRecordRef record)
{
  [MEMORY[0x1E696AEC0] stringWithFormat:@"StoreID != %d", ABRecordGetRecordID(record)];
  CountOfInstancesOfClassWhere = CPRecordStoreGetCountOfInstancesOfClassWhere();
  return (CPRecordStoreGetCountOfInstancesOfClassWhere() + CountOfInstancesOfClassWhere);
}

CFArrayRef ABAddressBookCopyArrayOfAllSources(ABAddressBookRef addressBook)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogAddressBook(addressBook);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyArrayOfAllSources(ABAddressBookRef)", 332, v3, @"%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  result = ABAddressBookCopyArrayOfAllSourcesIncludingDisabledSources(addressBook, 0);
  if (!result)
  {
    v9 = *MEMORY[0x1E695E480];
    v10 = MEMORY[0x1E695E9C0];

    return CFArrayCreate(v9, 0, 0, v10);
  }

  return result;
}

void *ABAddressBookIndexSetOfAllowedSourceIdentifiersIncludingDisabledSources(uint64_t a1, const void *a2, int a3)
{
  v5 = [MEMORY[0x1E696AD50] indexSet];
  v6 = @"AND store.Enabled = 1";
  if (a3)
  {
    v6 = &stru_1F2FE2718;
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT store.rowid from ABStore store LEFT JOIN ABAccount account on store.AccountID = account.ROWID WHERE ab_is_store_allowed(account.AccountIdentifier, store.type, store.guid, ?) = 1 %@;", v6];
  CPRecordStoreGetDatabase();
  CPSqliteDatabaseConnectionForReading();
  v7 = CPSqliteConnectionStatementForSQL();
  if (v7)
  {
    v8 = v7;
    v9 = *(v7 + 8);
    if (v9)
    {
      sqlite3_bind_blob(v9, 1, a2, 8, 0);
      while (sqlite3_step(*(v8 + 8)) == 100)
      {
        [v5 addIndex:{sqlite3_column_int(*(v8 + 8), 0)}];
      }

      CPSqliteStatementReset();
    }
  }

  return v5;
}

const void *ABAddressBookCopySourceWithAccountAndExternalIdentifiers(uint64_t a1, uint64_t a2)
{
  if (ABLogAPIUsage())
  {
    v4 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v4);
    v6 = ABLogAddressBook(a1);
    _ABLog2(6, "ABRecordRef ABAddressBookCopySourceWithAccountAndExternalIdentifiers(ABAddressBookRef, CFStringRef, CFStringRef)", 367, v5, @"%@", v7, v8, v9, v6);
    CFRelease(v5);
  }

  if (!a1 || !*(a1 + 16))
  {
    return 0;
  }

  v10 = (a2 ? CPRecordStoreCopyAllInstancesOfClassWithAliasAndFilter() : CPRecordStoreCopyAllInstancesOfClassWhereWithBindBlock());
  v11 = v10;
  if (!v10)
  {
    return 0;
  }

  if (CFArrayGetCount(v10) < 1)
  {
    v13 = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v11, 0);
    v13 = ValueAtIndex;
    if (ValueAtIndex)
    {
      CFRetain(ValueAtIndex);
    }
  }

  CFRelease(v11);
  return v13;
}

void __ABAddressBookCopySourceWithAccountAndExternalIdentifiers_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 8);
    if (v3)
    {
      v4 = _CPCreateUTF8StringFromCFString();
      v5 = MEMORY[0x1E69E9B38];
      sqlite3_bind_text(v3, 1, v4, -1, MEMORY[0x1E69E9B38]);
      v6 = *(a2 + 8);
      v7 = _CPCreateUTF8StringFromCFString();

      sqlite3_bind_text(v6, 2, v7, -1, v5);
    }
  }
}

void __ABAddressBookCopySourceWithAccountAndExternalIdentifiers_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      v3 = _CPCreateUTF8StringFromCFString();
      v4 = MEMORY[0x1E69E9B38];

      sqlite3_bind_text(v2, 1, v3, -1, v4);
    }
  }
}

uint64_t ABAddressBookCopySourceWithProviderIdentifier(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogAddressBook(a1);
    _ABLog2(6, "ABRecordRef ABAddressBookCopySourceWithProviderIdentifier(ABAddressBookRef, CFStringRef)", 403, v3, @"%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  if (a1)
  {
    if (*(a1 + 16) && (v8 = CPRecordStoreCopyAllInstancesOfClassWhereWithBindBlock()) != 0)
    {
      v9 = v8;
      if (CFArrayGetCount(v8) < 1)
      {
        a1 = 0;
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v9, 0);
        a1 = ValueAtIndex;
        if (ValueAtIndex)
        {
          CFRetain(ValueAtIndex);
        }
      }

      CFRelease(v9);
    }

    else
    {
      return 0;
    }
  }

  return a1;
}

void __ABAddressBookCopySourceWithProviderIdentifier_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      v3 = _CPCreateUTF8StringFromCFString();
      v4 = MEMORY[0x1E69E9B38];

      sqlite3_bind_text(v2, 1, v3, -1, v4);
    }
  }
}

void ABAddressBookPrepareSourceForFamilyDelegate(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    CPRecordStoreGetDatabase();
    CPSqliteDatabaseConnectionForReading();
    v2 = CPSqliteConnectionStatementForSQL();
    v3 = CPSqliteConnectionStatementForSQL();
    v4 = CPSqliteConnectionStatementForSQL();
    if (v2)
    {
      v5 = *(v2 + 8);
      if (v5)
      {
        v6 = _CPCreateUTF8StringFromCFString();
        sqlite3_bind_text(v5, 1, v6, -1, MEMORY[0x1E69E9B38]);
        CPSqliteStatementPerform();
        CPSqliteStatementReset();
      }
    }

    if (v3)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v8 = _CPCreateUTF8StringFromCFString();
        sqlite3_bind_text(v7, 1, v8, -1, MEMORY[0x1E69E9B38]);
        sqlite3_bind_int(*(v3 + 8), 2, 4);
        CPSqliteStatementPerform();
        CPSqliteStatementReset();
      }
    }

    if (v4)
    {
      v9 = *(v4 + 8);
      if (v9)
      {
        v10 = _CPCreateUTF8StringFromCFString();
        sqlite3_bind_text(v9, 1, v10, -1, MEMORY[0x1E69E9B38]);
        CPSqliteStatementPerform();

        CPSqliteStatementReset();
      }
    }
  }
}

const void *ABPersonCreateInSourceAndReturnError(const void *a1, const void **a2)
{
  if (ABLogAPIUsage())
  {
    v9 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "ABRecordRef ABPersonCreateInSourceAndReturnError(ABRecordRef, CFErrorRef *)", 477, v4, 0, v5, v6, v7, v9);
    CFRelease(v4);
  }

  if (ABSourceIsContentReadonlyIncludingGuardianRestrictions(a1, 1))
  {
    if (a2)
    {
      ABPolicyPopulateRecordReadOnlyError(a2, 0, @"SourceNotWritable");
    }

    return 0;
  }

  else
  {

    return ABCPersonCreateNewPersonInSourceAndReturnError(0, a1, a2);
  }
}

ABRecordRef ABGroupCreateInSource(ABRecordRef source)
{
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "ABRecordRef ABGroupCreateInSource(ABRecordRef)", 489, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  return ABCGroupCreateNewGroupInSourceAndReturnError(0, source, 0);
}

ABRecordRef ABPersonCopySource(ABRecordRef person)
{
  if (ABLogAPIUsage())
  {
    v6 = _isMainThread();
    v1 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "ABRecordRef ABPersonCopySource(ABRecordRef)", 496, v1, 0, v2, v3, v4, v6);
    CFRelease(v1);
  }

  return ABCPersonCopySource();
}

ABRecordRef ABGroupCopySource(ABRecordRef group)
{
  if (ABLogAPIUsage())
  {
    v6 = _isMainThread();
    v1 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "ABRecordRef ABGroupCopySource(ABRecordRef)", 502, v1, 0, v2, v3, v4, v6);
    CFRelease(v1);
  }

  return ABCGroupCopySource();
}

CFArrayRef ABAddressBookCopyArrayOfAllPeopleInSourceWithSortOrdering(ABAddressBookRef addressBook, ABRecordRef source, ABPersonSortOrdering sortOrdering)
{
  if (ABLogAPIUsage())
  {
    v6 = _isMainThread();
    v7 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v6);
    v8 = ABLogAddressBook(addressBook);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyArrayOfAllPeopleInSourceWithSortOrdering(ABAddressBookRef, ABRecordRef, ABPersonSortOrdering)", 515, v7, @"%@", v9, v10, v11, v8);
    CFRelease(v7);
  }

  v12 = ABCCopyArrayOfAllPeopleInSourceWithSortOrdering(addressBook, source, sortOrdering);
  if (ABLogAPIUsage())
  {
    _ABLog2(6, "CFArrayRef ABAddressBookCopyArrayOfAllPeopleInSourceWithSortOrdering(ABAddressBookRef, ABRecordRef, ABPersonSortOrdering)", 517, @">> ", 0, v13, v14, v15, v17);
  }

  return v12;
}

CFArrayRef ABAddressBookCopyArrayOfAllGroupsInSource(ABAddressBookRef addressBook, ABRecordRef source)
{
  if (ABLogAPIUsage())
  {
    v4 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v4);
    v6 = ABLogAddressBook(addressBook);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyArrayOfAllGroupsInSource(ABAddressBookRef, ABRecordRef)", 523, v5, @"%@", v7, v8, v9, v6);
    CFRelease(v5);
  }

  return ABCCopyArrayOfAllGroupsInSource(addressBook, source);
}

uint64_t ABAddressBookCopyArrayOfAllPeopleWithExternalIdentifierInSource(uint64_t a1, const void *a2, uint64_t a3)
{
  if (ABLogAPIUsage())
  {
    v6 = _isMainThread();
    v7 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v6);
    v8 = ABLogAddressBook(a1);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyArrayOfAllPeopleWithExternalIdentifierInSource(ABAddressBookRef, CFStringRef, ABRecordRef)", 530, v7, @"%@", v9, v10, v11, v8);
    CFRelease(v7);
  }

  return ABCPersonCopyArrayOfPeopleWithExternalIdentifierInSource(a2, a3);
}

uint64_t ABAddressBookCopyArrayOfAllPeopleWithExternalIdentifiersInSource(uint64_t a1, const __CFArray *a2, uint64_t a3)
{
  if (ABLogAPIUsage())
  {
    v6 = _isMainThread();
    v7 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v6);
    v8 = ABLogAddressBook(a1);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyArrayOfAllPeopleWithExternalIdentifiersInSource(ABAddressBookRef, CFArrayRef, ABRecordRef)", 536, v7, @"%@", v9, v10, v11, v8);
    CFRelease(v7);
  }

  if (!a1)
  {
    a1 = ABCGetAddressBookForRecord();
    if (!a1)
    {
      return 0;
    }
  }

  v12 = *(a1 + 16);
  if (!v12)
  {
    return 0;
  }

  v13 = ABCPersonClass;

  return ABCCopyArrayOfAllInstancesOfClassInSourceWithExternalIdentifiers(v12, v13, a3, a2);
}

uint64_t ABAddressBookCopyArrayOfAllGroupsWithExternalIdentifierInSource(uint64_t a1, const void *a2, uint64_t a3)
{
  if (ABLogAPIUsage())
  {
    v6 = _isMainThread();
    v7 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v6);
    v8 = ABLogAddressBook(a1);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyArrayOfAllGroupsWithExternalIdentifierInSource(ABAddressBookRef, CFStringRef, ABRecordRef)", 552, v7, @"%@", v9, v10, v11, v8);
    CFRelease(v7);
  }

  return ABCGroupCopyArrayOfGroupsWithExternalIdentifierInSource(a2, a3);
}

uint64_t ABAddressBookCopyArrayOfAllGroupsWithExternalIdentifiersInSource(uint64_t a1, const __CFArray *a2, uint64_t a3)
{
  if (ABLogAPIUsage())
  {
    v6 = _isMainThread();
    v7 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v6);
    v8 = ABLogAddressBook(a1);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyArrayOfAllGroupsWithExternalIdentifiersInSource(ABAddressBookRef, CFArrayRef, ABRecordRef)", 558, v7, @"%@", v9, v10, v11, v8);
    CFRelease(v7);
  }

  if (!a1)
  {
    a1 = ABCGetAddressBookForRecord();
    if (!a1)
    {
      return 0;
    }
  }

  v12 = *(a1 + 16);
  if (!v12)
  {
    return 0;
  }

  v13 = ABCGroupClass[0];

  return ABCCopyArrayOfAllInstancesOfClassInSourceWithExternalUUIDs(v12, v13, a3, a2);
}

uint64_t ABAddressBookCopyArrayOfAllPeopleWithExternalUUIDInSource(uint64_t a1, const void *a2, uint64_t a3)
{
  if (ABLogAPIUsage())
  {
    v6 = _isMainThread();
    v7 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v6);
    v8 = ABLogAddressBook(a1);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyArrayOfAllPeopleWithExternalUUIDInSource(ABAddressBookRef, CFStringRef, ABRecordRef)", 575, v7, @"%@", v9, v10, v11, v8);
    CFRelease(v7);
  }

  if (!a1)
  {
    a1 = ABCGetAddressBookForRecord();
    if (!a1)
    {
      return 0;
    }
  }

  v12 = *(a1 + 16);
  if (!v12)
  {
    return 0;
  }

  v13 = ABCPersonClass;

  return ABCCopyArrayOfAllInstancesOfClassInSourceWithExternalUUID(v12, v13, a3, a2);
}

uint64_t ABAddressBookCopyArrayOfAllPeopleWithExternalUUIDsInSource(uint64_t a1, const __CFArray *a2, uint64_t a3)
{
  if (ABLogAPIUsage())
  {
    v6 = _isMainThread();
    v7 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v6);
    v8 = ABLogAddressBook(a1);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyArrayOfAllPeopleWithExternalUUIDsInSource(ABAddressBookRef, CFArrayRef, ABRecordRef)", 591, v7, @"%@", v9, v10, v11, v8);
    CFRelease(v7);
  }

  if (!a1)
  {
    a1 = ABCGetAddressBookForRecord();
    if (!a1)
    {
      return 0;
    }
  }

  v12 = *(a1 + 16);
  if (!v12)
  {
    return 0;
  }

  v13 = ABCPersonClass;

  return ABCCopyArrayOfAllInstancesOfClassInSourceWithExternalUUIDs(v12, v13, a3, a2);
}

uint64_t ABAddressBookCopyArrayOfAllGroupsWithExternalUUIDInSource(uint64_t a1, const void *a2, uint64_t a3)
{
  if (ABLogAPIUsage())
  {
    v6 = _isMainThread();
    v7 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v6);
    v8 = ABLogAddressBook(a1);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyArrayOfAllGroupsWithExternalUUIDInSource(ABAddressBookRef, CFStringRef, ABRecordRef)", 607, v7, @"%@", v9, v10, v11, v8);
    CFRelease(v7);
  }

  if (!a1)
  {
    a1 = ABCGetAddressBookForRecord();
    if (!a1)
    {
      return 0;
    }
  }

  v12 = *(a1 + 16);
  if (!v12)
  {
    return 0;
  }

  v13 = ABCGroupClass[0];

  return ABCCopyArrayOfAllInstancesOfClassInSourceWithExternalUUID(v12, v13, a3, a2);
}

uint64_t ABAddressBookCopyArrayOfAllGroupsWithExternalUUIDsInSource(uint64_t a1, const __CFArray *a2, uint64_t a3)
{
  if (ABLogAPIUsage())
  {
    v6 = _isMainThread();
    v7 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v6);
    v8 = ABLogAddressBook(a1);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyArrayOfAllGroupsWithExternalUUIDsInSource(ABAddressBookRef, CFArrayRef, ABRecordRef)", 622, v7, @"%@", v9, v10, v11, v8);
    CFRelease(v7);
  }

  if (!a1)
  {
    a1 = ABCGetAddressBookForRecord();
    if (!a1)
    {
      return 0;
    }
  }

  v12 = *(a1 + 16);
  if (!v12)
  {
    return 0;
  }

  v13 = ABCGroupClass[0];

  return ABCCopyArrayOfAllInstancesOfClassInSourceWithExternalUUIDs(v12, v13, a3, a2);
}

void ABAddressBookClearExternalIdentifiersInRecordsWithSource(uint64_t a1, uint64_t a2)
{
  if (ABLogAPIUsage())
  {
    v4 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v4);
    v6 = ABLogAddressBook(a1);
    _ABLog2(6, "void ABAddressBookClearExternalIdentifiersInRecordsWithSource(ABAddressBookRef, ABRecordRef)", 636, v5, @"%@", v7, v8, v9, v6);
    CFRelease(v5);
  }

  ABClearAllInstancesOfClassInSourceWithExternalIdentifier(a1, ABCPersonClass, a2);
  v10 = ABCGroupClass[0];

  ABClearAllInstancesOfClassInSourceWithExternalIdentifier(a1, v10, a2);
}

uint64_t ABSourceGetTypeOfProperty(int a1)
{
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "ABPropertyType ABSourceGetTypeOfProperty(ABPropertyID)", 677, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  return ABCSourceTypeOfProperty(a1);
}

CFMutableArrayRef copyRecordIDsInSource(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = *MEMORY[0x1E695E480];
  v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"SELECT ROWID from %s where StoreID = %i;", *a3, a4);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (!CPSqliteConnectionStatementForSQL())
  {
    v8 = v6;
    goto LABEL_6;
  }

  Mutable = CFArrayCreateMutable(v4, 0, 0);
  CPSqliteStatementIntegerResult();
  CPSqliteStatementReset();
  CFRelease(v6);
  if (Mutable)
  {
    v8 = Mutable;
LABEL_6:
    CFRelease(v8);
    return 0;
  }

  return Mutable;
}

uint64_t removeSyncImagesForRecord(const __CFString *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  ImageStore = ABCAddressBookGetImageStore(a1);
  if (!ImageStore)
  {
    return 0;
  }

  return ABCImageStoreRemoveImagesForRecord(a1, ImageStore, a3, 5);
}

BOOL removeSyncImagesFromSource(const __CFString *a1, uint64_t a2, uint64_t a3)
{
  v4 = copyRecordIDsInSource(a1, a2, ABCPersonClass, a3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v7 = CFArrayGetCount(v4) && (ImageStore = ABCAddressBookGetImageStore(a1)) != 0 && ABCImageStoreRemoveImagesForRecordIds(a1, ImageStore, v5, 5) != 0;
  CFRelease(v5);
  return v7;
}

CFIndex updateRecordsForMoveToSource(uint64_t a1, uint64_t a2, const __CFArray *a3, uint64_t a4, const char **a5, int a6)
{
  v9 = *a5;
  v10 = strlen(*ABCPersonClass);
  LODWORD(v9) = strncmp(v9, *ABCPersonClass, v10);
  CPRecordIndexOfPropertyNamed();
  CPRecordIndexOfPropertyNamed();
  CPRecordIndexOfPropertyNamed();
  CPRecordIndexOfPropertyNamed();
  CPRecordIndexOfPropertyNamed();
  v11 = v9;
  if (!v9)
  {
    CPRecordIndexOfPropertyNamed();
  }

  if (a6)
  {
    CPRecordIndexOfPropertyNamed();
  }

  result = CFArrayGetCount(a3);
  if (result >= 1)
  {
    v13 = result;
    for (i = 0; i != v13; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
      result = MEMORY[0x1B8CB5FB0](*(a1 + 16), a5, ValueAtIndex);
      if (result)
      {
        CPRecordUnloadProperty();
        CPRecordInitializeProperty();
        CPRecordUnloadProperty();
        CPRecordUnloadProperty();
        CPRecordUnloadProperty();
        result = CPRecordUnloadProperty();
        if (a6)
        {
          result = CPRecordUnloadProperty();
        }

        if (!v11)
        {
          result = CPRecordUnloadProperty();
        }
      }
    }
  }

  return result;
}

uint64_t moveRecordsToSource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char **a5, int a6)
{
  v10 = copyRecordIDsInSource(a1, a2, a5, a3);
  if (a6)
  {
    v11 = @", ImageURI = NULL";
  }

  else
  {
    v11 = &stru_1F2FE2718;
  }

  v12 = *a5;
  v13 = strlen(*ABCPersonClass);
  v14 = strncmp(*a5, *ABCPersonClass, v13);
  v15 = @", DowntimeWhitelist = NULL";
  if (v14)
  {
    v15 = &stru_1F2FE2718;
  }

  v16 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"UPDATE %s SET StoreID = %i, ExternalIdentifier = NULL, ExternalModificationTag = NULL%@%@ WHERE StoreID = %i;", v12, a4, v11, v15, a3);
  if (v16)
  {
    v17 = v16;
    if (CPSqliteConnectionStatementForSQL())
    {
      CPSqliteStatementPerform();
      CPSqliteStatementReset();
      CFRelease(v17);
      if (!v10)
      {
        return 1;
      }

      updateRecordsForMoveToSource(a1, v18, v10, a4, a5, a6);
      v19 = 1;
      goto LABEL_12;
    }

    CFRelease(v17);
  }

  v19 = 0;
  if (v10)
  {
LABEL_12:
    CFRelease(v10);
  }

  return v19;
}

BOOL moveRecordForIDToSource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char **a5, int a6, int a7)
{
  values[1] = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v11 = @", ImageURI = NULL";
  }

  else
  {
    v11 = &stru_1F2FE2718;
  }

  if (a6)
  {
    v12 = @", ExternalUUID = NULL";
  }

  else
  {
    v12 = &stru_1F2FE2718;
  }

  v13 = *a5;
  v14 = strlen(*ABCPersonClass);
  v15 = strncmp(v13, *ABCPersonClass, v14);
  v16 = @", DowntimeWhitelist = NULL";
  if (v15)
  {
    v16 = &stru_1F2FE2718;
  }

  v17 = *MEMORY[0x1E695E480];
  v18 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"UPDATE %s SET StoreID = %i, ExternalIdentifier = NULL, ExternalModificationTag = NULL%@%@%@ WHERE ROWID = %i;", v13, a4, v11, v12, v16, a3);
  if (v18)
  {
    v19 = v18;
    v20 = CPSqliteConnectionStatementForSQL();
    v21 = v20 != 0;
    if (v20)
    {
      CPSqliteStatementPerform();
      CPSqliteStatementReset();
    }

    CFRelease(v19);
  }

  else
  {
    v21 = 0;
  }

  values[0] = a3;
  v22 = CFArrayCreate(v17, values, 1, 0);
  if (v22)
  {
    v24 = v22;
    if (v21)
    {
      updateRecordsForMoveToSource(a1, v23, v22, a4, a5, a7);
    }

    CFRelease(v24);
  }

  return v21;
}

uint64_t ABAddressBookMovePersonToSource(uint64_t a1, const void *a2, const void *a3, int a4, uint64_t a5)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __ABAddressBookMovePersonToSource_block_invoke;
  v6[3] = &__block_descriptor_40_e629_B48__0_______CFRuntimeBase_QAQ___CPRecordStore___CPRecordStore_____CFString_____CFDictionary_____CFDictionary_____CFDictionary_____CFString_____CFString___opaque_pthread_mutex_t_q_56c______CFArray_____CFArray_____CFArray_____CFArray_____CFArray_____CFDictionary___UCollator___UCollator_____CFString_____CFString_____CFStringTokenizer_____CFString_____CFString_C____CFArray_CC____opaque_pthread_mutex_t_q_56c______CFString_d____CFString_____CFString________ABBookflags_b1b1b8b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1__8__CPSqliteConnection___CPSqliteDatabase___sqlite3_____CFDictionary_____CFDictionary__v_____vIB_16_v24_v32_____CFError_40l;
  v6[4] = a2;
  ABAddressBookMoveRecordToSource(a1, a2, a3, v6, a4, a5);
  return 0;
}

uint64_t __ABAddressBookMovePersonToSource_block_invoke(uint64_t a1, const __CFString *a2)
{
  v2 = removeSyncImagesForRecord(a2, a2, *(a1 + 32));
  if ((v2 & 1) == 0)
  {
    ABDiagnosticsEnabled();
    _ABLog2(3, "_Bool ABAddressBookMovePersonToSource(ABAddressBookRef, ABRecordRef, ABRecordRef, _Bool, CFErrorRef *)_block_invoke", 898, 0, @"removeSyncImagesForRecord returned an error while moving contacts between sources. Continuing with move anyway.", v3, v4, v5, v7);
  }

  return v2;
}

BOOL sourceContainsPerson(ABRecordRef record, uint64_t a2)
{
  result = 0;
  if (record)
  {
    if (a2)
    {
      RecordID = ABRecordGetRecordID(record);
      return RecordID == ABRecordGetIntValue(a2, kABPersonStoreIDProperty);
    }
  }

  return result;
}

BOOL ABSourceSetMe(const void *a1, const void *a2, CFAllocatorRef *a3)
{
  if (ABLogAPIUsage())
  {
    v36 = _isMainThread();
    v6 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABSourceSetMe(ABRecordRef, ABRecordRef, CFErrorRef *)", 981, v6, 0, v7, v8, v9, v36);
    CFRelease(v6);
  }

  IntValue = ABRecordGetIntValue(a1, kABSourceMeIdentifierProperty);
  if (!a2)
  {
    v15 = ABOSLogMeCardChanges();
    v16 = v15;
    if (IntValue == -1)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        ABSourceSetMe_cold_7();
      }

      return 1;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7EFB000, v16, OS_LOG_TYPE_DEFAULT, "Asked to set a nil Me card and will remove the existing card", buf, 2u);
    }

    if (ABRecordSetIntValue(a1, kABSourceMeIdentifierProperty, -1, a3))
    {
      goto LABEL_24;
    }

    v17 = ABOSLogMeCardChanges();
    result = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    ABSourceSetMe_cold_5(a3);
    return 0;
  }

  if (!sourceContainsPerson(a1, a2))
  {
    v19 = ABOSLogMeCardChanges();
    result = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    ABSourceSetMe_cold_1();
    return 0;
  }

  RecordID = ABRecordGetRecordID(a2);
  if (RecordID == -1)
  {
    v20 = ABOSLogMeCardChanges();
    result = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    ABSourceSetMe_cold_4();
    return 0;
  }

  v12 = RecordID;
  v13 = ABOSLogMeCardChanges();
  v14 = v13;
  if (v12 == IntValue)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      ABSourceSetMe_cold_3();
    }

    return 1;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v40 = 0;
    _os_log_impl(&dword_1B7EFB000, v14, OS_LOG_TYPE_DEFAULT, "Asked to set a new Me card and will replace the existing card", v40, 2u);
  }

  if (ABRecordSetIntValue(a1, kABSourceMeIdentifierProperty, v12, a3))
  {
LABEL_24:
    AddressBook = ABRecordGetAddressBook();
    if (AddressBook)
    {
      v22 = AddressBook;
      if (ABAddressBookGetIntegerProperty(AddressBook) == -1)
      {
        v23 = ABOSLogMeCardChanges();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *v39 = 0;
          _os_log_impl(&dword_1B7EFB000, v23, OS_LOG_TYPE_INFO, "Updated the Me card and now adding the preferred souce", v39, 2u);
        }

        v24 = ABRecordGetRecordID(a1);
        ABAddressBookSetIntegerProperty(v22, @"MeSourceID", v24, v25, v26, v27, v28, v29, v35);
      }

      *(v22 + 384) |= 0x40000u;
      ABCDBContextLogChangeForPerson(*(v22 + 16), a2, 0xAu);
      if (!a2)
      {
LABEL_30:
        v30 = ABOSLogMeCardChanges();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v37 = 0;
          v31 = "We successfully removed the Me card";
          v32 = &v37;
LABEL_36:
          _os_log_impl(&dword_1B7EFB000, v30, OS_LOG_TYPE_DEFAULT, v31, v32, 2u);
          return 1;
        }

        return 1;
      }
    }

    else
    {
      v33 = ABOSLogMeCardChanges();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        ABSourceSetMe_cold_6();
        if (!a2)
        {
          goto LABEL_30;
        }
      }

      else if (!a2)
      {
        goto LABEL_30;
      }
    }

    CPRecordMarkChanged();
    v30 = ABOSLogMeCardChanges();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *v38 = 0;
      v31 = "We successfully set a new Me card";
      v32 = v38;
      goto LABEL_36;
    }

    return 1;
  }

  v34 = ABOSLogMeCardChanges();
  result = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
  if (result)
  {
    ABSourceSetMe_cold_2(a3);
    return 0;
  }

  return result;
}

uint64_t ABSourceIsRemote(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABSourceIsRemote(ABRecordRef)", 1061, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  if (a1)
  {
    return (ABRecordGetIntValue(a1, kABSourceTypeProperty) >> 24) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t ABAddressBookTrimWhitespaceFromPersonPropertyIDsInSource(const void *a1, const __CFArray *a2, const void *a3)
{
  if (ABLogAPIUsage())
  {
    v6 = _isMainThread();
    v7 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v6);
    v8 = ABLogAddressBook(a1);
    _ABLog2(6, "_Bool ABAddressBookTrimWhitespaceFromPersonPropertyIDsInSource(ABAddressBookRef, CFArrayRef, ABRecordRef)", 1074, v7, @"%@", v9, v10, v11, v8);
    CFRelease(v7);
  }

  v12 = 0;
  if (a1)
  {
    if (a2)
    {
      Count = CFArrayGetCount(a2);
      v12 = 0;
      if (a3)
      {
        if (Count >= 1)
        {
          v14 = ABAddressBookCopyArrayOfAllPeopleInSource(a1, a3);
          if (v14)
          {
            v15 = v14;
            v29 = CFArrayGetCount(v14);
            if (v29 < 1)
            {
              v12 = 0;
            }

            else
            {
              v12 = 0;
              v16 = 0;
              v28 = v15;
              do
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v15, v16);
                if (ValueAtIndex)
                {
                  v18 = ValueAtIndex;
                  v19 = CFArrayGetCount(a2);
                  if (v19 >= 1)
                  {
                    v20 = v19;
                    for (i = 0; i != v20; ++i)
                    {
                      v22 = CFArrayGetValueAtIndex(a2, i);
                      if (ABRecordTypeOfProperty() == 1)
                      {
                        v23 = ABRecordCopyValue(v18, v22);
                        if (v23)
                        {
                          v24 = v23;
                          v25 = _ABStringByTrimmingWhiteSpace(v23);
                          Length = CFStringGetLength(v24);
                          if (Length != CFStringGetLength(v25))
                          {
                            ABRecordSetValue(v18, v22, v25, 0);
                            v12 = 1;
                          }

                          CFRelease(v24);
                        }
                      }
                    }
                  }
                }

                ++v16;
                v15 = v28;
              }

              while (v16 != v29);
            }

            CFRelease(v15);
          }

          else
          {
            v12 = 0;
          }
        }
      }
    }
  }

  return v12 & 1;
}

uint64_t ABSourceSetCapabilitiesFlag(const void *a1, int a2, int a3)
{
  IntValue = ABRecordGetIntValue(a1, kABSourceCapabilitiesProperty);
  if (a3)
  {
    v7 = IntValue | a2;
  }

  else
  {
    v7 = IntValue & ~a2;
  }

  v8 = kABSourceCapabilitiesProperty;

  return ABRecordSetIntValue(a1, v8, v7, 0);
}

uint64_t ABSourceSetShouldIgnoreCapabilitiesRestrictions(uint64_t a1, uint64_t a2)
{
  if (ABLogAPIUsage())
  {
    v10 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "void ABSourceSetShouldIgnoreCapabilitiesRestrictions(ABRecordRef, _Bool)", 1143, v4, 0, v5, v6, v7, v10);
    CFRelease(v4);
  }

  Policy = ABSourceGetPolicy(a1);

  return ABPolicySetShouldIgnoreCapabilitiesRestrictions(Policy, a2);
}

uint64_t ABSourceIsReadonly(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABSourceIsReadonly(ABRecordRef)", 1150, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  return ABSourceIsContentReadonlyIncludingGuardianRestrictions(a1, 1);
}

uint64_t ABSourceIsContentReadonlyInCapabilityRestrictions(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABSourceIsContentReadonlyInCapabilityRestrictions(ABRecordRef)", 1163, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  if ((ABRecordGetIntValue(a1, kABSourceTypeProperty) & 0x1000000) != 0 || ABRecordGetIntValue(a1, kABSourceTypeProperty) == 7)
  {
    return 1;
  }

  else
  {
    return ABRecordGetIntValue(a1, kABSourceCapabilitiesProperty) & 1;
  }
}

uint64_t ABSourceIsContentReadonlyIncludingGuardianRestrictions(uint64_t a1, int a2)
{
  if (ABLogAPIUsage())
  {
    v14 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABSourceIsContentReadonlyIncludingGuardianRestrictions(ABRecordRef, _Bool)", 1175, v4, 0, v5, v6, v7, v14);
    CFRelease(v4);
  }

  AddressBook = ABRecordGetAddressBook();
  v9 = AddressBook;
  if (AddressBook && ABAddressBookIgnoresContactProviderRestrictions(AddressBook))
  {
    return 0;
  }

  Policy = ABSourceGetPolicy(a1);
  if (ABPolicyShouldIgnoreCapabilitiesRestrictions(Policy))
  {
    return 0;
  }

  IsContentReadonlyInCapabilityRestrictions = ABSourceIsContentReadonlyInCapabilityRestrictions(a1);
  v11 = IsContentReadonlyInCapabilityRestrictions;
  if (v9 && !IsContentReadonlyInCapabilityRestrictions && a2 && !ABAddressBookIgnoresGuardianRestrictions(v9))
  {
    return (ABRecordGetIntValue(a1, kABSourceCapabilitiesProperty) >> 2) & 1;
  }

  return v11;
}

uint64_t ABSourceSetContentReadonly(const void *a1, int a2)
{
  if (ABLogAPIUsage())
  {
    v11 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "void ABSourceSetContentReadonly(ABRecordRef, _Bool)", 1203, v4, 0, v5, v6, v7, v11);
    CFRelease(v4);
  }

  IntValue = ABRecordGetIntValue(a1, kABSourceCapabilitiesProperty);
  v9 = kABSourceCapabilitiesProperty;

  return ABRecordSetIntValue(a1, v9, IntValue & 0xFFFFFFFE | a2, 0);
}

uint64_t ABSourceAreFoldersReadonlyInCapabilityRestrictions(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABSourceAreFoldersReadonlyInCapabilityRestrictions(ABRecordRef)", 1208, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  if ((ABRecordGetIntValue(a1, kABSourceTypeProperty) & 0x1000000) != 0)
  {
    return 1;
  }

  else
  {
    return (ABRecordGetIntValue(a1, kABSourceCapabilitiesProperty) >> 1) & 1;
  }
}

uint64_t ABSourceAreFoldersReadonly(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v8 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABSourceAreFoldersReadonly(ABRecordRef)", 1213, v2, 0, v3, v4, v5, v8);
    CFRelease(v2);
  }

  Policy = ABSourceGetPolicy(a1);
  if (ABPolicyShouldIgnoreCapabilitiesRestrictions(Policy))
  {
    return 0;
  }

  return ABSourceAreFoldersReadonlyInCapabilityRestrictions(a1);
}

uint64_t ABSourceSetFoldersReadonly(const void *a1, int a2)
{
  if (ABLogAPIUsage())
  {
    v12 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "void ABSourceSetFoldersReadonly(ABRecordRef, _Bool)", 1219, v4, 0, v5, v6, v7, v12);
    CFRelease(v4);
  }

  v8 = ABRecordGetIntValue(a1, kABSourceCapabilitiesProperty) & 0xFFFFFFFD;
  if (a2)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  v10 = kABSourceCapabilitiesProperty;

  return ABRecordSetIntValue(a1, v10, v8 | v9, 0);
}

uint64_t ABSourceCopyPeopleWithImageSyncFailedTimeBefore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (ABLogAPIUsage())
  {
    v6 = _isMainThread();
    v7 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v6);
    v8 = ABLogAddressBook(a1);
    _ABLog2(6, "CFArrayRef ABSourceCopyPeopleWithImageSyncFailedTimeBefore(ABAddressBookRef, ABRecordRef, CFDateRef)", 1225, v7, @"%@", v9, v10, v11, v8);
    CFRelease(v7);
  }

  v12 = _ABCCreateCFStringFromDate(a3);
  v13 = ABCCopyArrayOfAllInstancesOfClassInSourceMatchingPredicate(*(a1 + 16), ABCPersonClass, a2, @"ImageSyncFailedTime < ?", v12);
  CFRelease(v12);
  CFRelease(@"ImageSyncFailedTime < ?");
  return v13;
}

void OUTLINED_FUNCTION_3_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

double ABPolicyCreateWithCallbacks(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14)
{
  pthread_once(&kABPolicyRegisterClass, ABPolicyRegisterClass);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    result = 0.0;
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 96) = 0u;
    *(Instance + 112) = 0u;
    *(Instance + 16) = a1;
    *(Instance + 24) = a2;
    *(Instance + 32) = a3;
    *(Instance + 40) = a4;
    *(Instance + 48) = a5;
    *(Instance + 56) = a6;
    *(Instance + 64) = a7;
    *(Instance + 72) = a8;
    *(Instance + 80) = a9;
    *(Instance + 88) = a10;
    *(Instance + 96) = a11;
    *(Instance + 104) = a12;
    *(Instance + 112) = a13;
    *(Instance + 120) = a14;
  }

  return result;
}

uint64_t ABPolicyCopySupportedRecordTypes(uint64_t result)
{
  if (result)
  {
    return (*(result + 16))(*(result + 104));
  }

  return result;
}

uint64_t ABPolicyMaximumNumberOfValuesForProperty(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    return (*(result + 24))(a2, a3, *(result + 104));
  }

  return result;
}

uint64_t ABPolicyCopySupportedLabelsForProperty(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    return (*(result + 32))(a2, a3, *(result + 104));
  }

  return result;
}

uint64_t ABPolicyCopyPreferredLabelsForProperty(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    return (*(result + 40))(a2, a3, *(result + 104));
  }

  return result;
}

uint64_t ABPolicyShouldAddRecord(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v7 = result;
    if ((*(result + 96))(*(result + 104)))
    {
      return 1;
    }

    else
    {
      v8 = *(v7 + 48);
      v9 = *(v7 + 104);

      return v8(a2, a3, v9, a4);
    }
  }

  return result;
}

uint64_t ABPolicyShouldIgnoreCapabilitiesRestrictions(uint64_t result)
{
  if (result)
  {
    return (*(result + 96))(*(result + 104));
  }

  return result;
}

uint64_t ABPolicyShouldRemoveRecord(uint64_t result, uint64_t a2, const void *a3, const void **a4)
{
  if (result)
  {
    v7 = result;
    if ((*(result + 96))(*(result + 104)))
    {
      return 1;
    }

    else if (ABRecordGetRecordType(a3) || a2 && ABAddressBookIgnoresGuardianRestrictions(a2) || !ABPersonIsDowntimeWhitelisted(a3))
    {
      v8 = *(v7 + 56);
      v9 = *(v7 + 104);

      return v8(a2, a3, v9, a4);
    }

    else
    {
      ABPolicyPopulateRecordReadOnlyError(a4, 0, @"RecordNotWritable");
      return 0;
    }
  }

  return result;
}

uint64_t ABPolicyPopulateRecordReadOnlyError(const void **a1, int a2, const void *a3)
{
  if (a1)
  {
    if (a2)
    {
      v5 = *a1;
      if (*a1)
      {
        CFRelease(v5);
      }
    }

    if (a3)
    {
      Mutable = CFDictionaryCreateMutable(0, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, @"PolicyRejectionReason", a3);
    }

    else
    {
      Mutable = 0;
    }

    *a1 = CFErrorCreate(0, @"ABAddressBookErrorDomain", 0, Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  return 0;
}

uint64_t ABPolicyShouldAddMember(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v7 = result;
    if ((*(result + 96))(*(result + 104)))
    {
      return 1;
    }

    else
    {
      v8 = *(v7 + 64);
      v9 = *(v7 + 104);

      return v8(a2, a3, a4, v9);
    }
  }

  return result;
}

uint64_t ABPolicyShouldRemoveMember(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v7 = result;
    if ((*(result + 96))(*(result + 104)))
    {
      return 1;
    }

    else
    {
      v8 = *(v7 + 72);
      v9 = *(v7 + 104);

      return v8(a2, a3, a4, v9);
    }
  }

  return result;
}

uint64_t ABPolicyRecordIsWriteable(const void *a1, void *a2)
{
  v18 = 0;
  if (a2)
  {
    v4 = &v18;
  }

  else
  {
    v4 = 0;
  }

  RecordType = ABRecordGetRecordType(a1);
  if (RecordType == 2)
  {
    if ((ABSourceIsContentReadonly(a1) & 1) == 0 && !ABSourceAreFoldersReadonly(a1))
    {
      return 1;
    }

    v11 = &ABAddressBookErrorUserInfoOperationNotPermittedByStoreReasonSourceNotWritable;
LABEL_28:
    ABPolicyPopulateRecordReadOnlyError(v4, 1, *v11);
LABEL_29:
    v10 = 0;
    if (!a2)
    {
      return v10;
    }

    goto LABEL_30;
  }

  if (RecordType != 1)
  {
    if (!RecordType)
    {
      v6 = ABPersonCopySource(a1);
      if (v6)
      {
        v7 = v6;
        if (ABSourceIsContentReadonly(v6))
        {
          ABPolicyPopulateRecordReadOnlyError(v4, 1, @"SourceNotWritable");
          CFRelease(v7);
          goto LABEL_29;
        }

        CFRelease(v7);
      }

      AddressBook = ABRecordGetAddressBook();
      if (AddressBook)
      {
        if (ABAddressBookIgnoresGuardianRestrictions(AddressBook))
        {
          return 1;
        }

        v13 = ABPersonCopySource(a1);
        if (v13)
        {
          v14 = v13;
          Policy = ABSourceGetPolicy(v13);
          if (Policy)
          {
            v16 = (*(Policy + 96))(*(Policy + 104));
            CFRelease(v14);
            if (v16)
            {
              return 1;
            }
          }

          else
          {
            CFRelease(v14);
          }
        }
      }

      if (ABPersonIsDowntimeWhitelisted(a1))
      {
        v11 = ABAddressBookErrorUserInfoOperationNotPermittedByStoreReasonRecordNotWritable;
        goto LABEL_28;
      }
    }

    return 1;
  }

  v8 = ABGroupCopySource(a1);
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  v10 = ABSourceIsContentReadonly(v8) ^ 1;
  if ((v10 & 1) == 0)
  {
    ABPolicyPopulateRecordReadOnlyError(v4, 1, @"SourceNotWritable");
  }

  CFRelease(v9);
  if (a2)
  {
LABEL_30:
    if ((v10 & 1) == 0)
    {
      v10 = 0;
      *a2 = v18;
    }
  }

  return v10;
}

uint64_t ABPolicyShouldSetValue(uint64_t a1, ABAddressBookRef addressBook, ABRecordRef record, uint64_t a4, void *a5, uint64_t a6, CFTypeRef *a7)
{
  cf = 0;
  if (a7)
  {
    p_cf = &cf;
  }

  else
  {
    p_cf = 0;
  }

  if (record)
  {
    RecordType = ABRecordGetRecordType(record);
    v15 = ABPolicyRecordIsWriteable(record, p_cf) ^ 1;
    if (!RecordType)
    {
      if (ABPersonPropertyIsStub(a4))
      {
        v16 = ABAddressBookErrorUserInfoOperationNotPermittedByStoreReasonRecordPropertyNotWritable;
        goto LABEL_26;
      }

      v18 = 1;
      v19 = kABPersonLinkProperty == a4 || kABPersonSoundProperty == a4;
      v20 = 1;
      if (v19)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (addressBook)
  {
    v17 = ABAddressBookCopyDefaultSource(addressBook);
    if (ABSourceIsContentReadonly(v17))
    {
      v15 = 1;
    }

    else
    {
      v15 = ABSourceAreFoldersReadonly(v17);
    }

    CFRelease(v17);
LABEL_20:
    v18 = 0;
    goto LABEL_21;
  }

  v18 = 0;
  v15 = 0;
LABEL_21:
  v21 = ABRecordGetRecordType(record);
  if (a1 && ((*(a1 + 96))(*(a1 + 104)) & 1) != 0)
  {
    goto LABEL_33;
  }

  if (v15)
  {
    if (cf)
    {
LABEL_27:
      v20 = 0;
      goto LABEL_38;
    }

    v16 = &ABAddressBookErrorUserInfoOperationNotPermittedByStoreReasonSourceNotWritable;
LABEL_26:
    ABPolicyPopulateRecordReadOnlyError(p_cf, 1, *v16);
    goto LABEL_27;
  }

  if (!record)
  {
    goto LABEL_33;
  }

  if (v21 || kABPersonDowntimeWhitelistProperty != a4 || ABAddressBookIgnoresGuardianRestrictions(addressBook))
  {
    if (ABPolicyShouldSetValueForRecordType(a1, v21, a4, a5, a6, p_cf))
    {
LABEL_33:
      v20 = 1;
      goto LABEL_34;
    }
  }

  else
  {
    ABPolicyPopulateRecordReadOnlyError(p_cf, 1, @"RecordPropertyNotWritable");
  }

  v24 = ABRecordCopyValue(record, a4);
  if (v24)
  {
    v25 = v24;
    v20 = CFEqual(a5, v24) != 0;
    CFRelease(v25);
  }

  else
  {
    v20 = a5 == 0;
  }

LABEL_34:
  if (v18 && v20 && kABPersonAlternateBirthdayProperty == a4)
  {
    v20 = ABValidateAlternateBirthday(a5);
  }

LABEL_38:
  if (v20 || !cf)
  {
    if (cf)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0;
    }

    if (v22 == 1)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a7 = cf;
  }

  return v20;
}

uint64_t ABPolicyShouldSetValueForRecordType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (ABLogAPIUsage())
  {
    v19 = _isMainThread();
    v12 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABPolicyShouldSetValueForRecordType(ABPolicyRef, ABRecordType, ABPropertyID, CFTypeRef, _Bool *, CFErrorRef *)", 414, v12, 0, v13, v14, v15, v19);
    CFRelease(v12);
  }

  if (!a1)
  {
    return 0;
  }

  if ((*(a1 + 96))(*(a1 + 104)))
  {
    return 1;
  }

  v17 = *(a1 + 80);
  v18 = *(a1 + 104);

  return v17(a2, a3, a4, a5, v18, a6);
}

uint64_t ABPolicySetShouldIgnoreCapabilitiesRestrictions(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(result + 88))(a2, *(result + 104));
  }

  return result;
}

uint64_t noMaximumValues(int a1, ABPropertyID property)
{
  if ((ABPersonGetTypeOfProperty(property) & 0x100) != 0)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t freePermissivePolicyContext(void *a1)
{
  if (a1)
  {
    free(a1);
  }

  return 1;
}

uint64_t freeReadOnlyPolicyContext(void *a1)
{
  if (a1)
  {
    free(a1);
  }

  return 1;
}

double ABPolicyCreateWithCoder(void *a1, uint64_t a2)
{
  v4 = [a1 decodeIntForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@::%@", a2, @"context-type"}];
  if (v4 == 1)
  {

    return ABPolicyCreateReadOnly();
  }

  else if (v4)
  {
    v6 = [a1 decodeObjectOfClass:objc_opt_class() forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@::%@", a2, @"context-data"}];
    v7 = CFPropertyListCreateWithData(0, v6, 0, 0, 0);
    if (!v7)
    {
      ABPolicyCreateWithCoder_cold_1();
    }

    return ABPolicyCreateWithDictionary(v7);
  }

  else
  {

    return ABPolicyCreatePermissive();
  }
}

void ABPolicyEncodeWithCoder(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 112);
  [a2 encodeInt:v6 forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@::%@", a3, @"context-type"}];
  if (v6 == 2)
  {
    Data = CFPropertyListCreateData(0, *(a1 + 104), kCFPropertyListBinaryFormat_v1_0, 0, 0);
    [a2 encodeObject:Data forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@::%@", a3, @"context-data"}];

    CFRelease(Data);
  }
}

BOOL ABPolicyIsEqualToPolicy(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  if (v2 != *(a2 + 112))
  {
    return 0;
  }

  if (v2 == 2)
  {
    return CFEqual(*(a1 + 104), *(a2 + 104)) != 0;
  }

  return 1;
}

uint64_t ABPolicyRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  kABPolicyTypeID = result;
  return result;
}

uint64_t ABPolicyDestroy(uint64_t result)
{
  v1 = *(result + 120);
  if (v1)
  {
    return v1(*(result + 104));
  }

  return result;
}

void *ABPersonGetUserActivityUserInfoWithInternalUUID(const void *a1, int a2, int a3)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v30 = a2;
  if (a2)
  {
    obj = ABPersonCopyArrayOfAllLinkedPeople(a1);
    v7 = ABPersonCopyPreferredLinkedPersonForName(a1);
  }

  else
  {
    v38[0] = a1;
    obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
    v7 = CFRetain(a1);
  }

  v8 = v7;
  if (a3)
  {
    v9 = ABRecordCopyValue(v7, kABPersonInternalUUIDProperty);
    if ([v9 length])
    {
      [v6 setObject:v9 forKeyedSubscript:kABUserActivityUserInfoInternalUUIDKey];
    }
  }

  IntValue = ABRecordGetIntValue(v8, kABPersonKindProperty);
  v28 = v6;
  if (IntValue == 1)
  {
    v10 = ABRecordCopyValue(v8, kABPersonOrganizationProperty);
    if (![v10 length])
    {
      goto LABEL_16;
    }

    v11 = kABUserActivityUserInfoOrganizationNameKey;
    goto LABEL_15;
  }

  v12 = ABRecordCopyValue(v8, kABPersonFirstNameProperty);
  if ([v12 length])
  {
    [v6 setObject:v12 forKeyedSubscript:kABUserActivityUserInfoFirstNameKey];
  }

  v10 = ABRecordCopyValue(v8, kABPersonLastNameProperty);
  if ([v10 length])
  {
    v11 = kABUserActivityUserInfoLastNameKey;
LABEL_15:
    [v6 setObject:v10 forKeyedSubscript:*v11];
  }

LABEL_16:

  v13 = [MEMORY[0x1E695DF70] array];
  v26 = [MEMORY[0x1E695DF70] array];
  v36 = v26;
  v27 = [MEMORY[0x1E695DF70] array];
  v35 = v27;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v14 = [(__CFArray *)obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v32;
    v17 = kABPersonExternalUUIDProperty;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v31 + 1) + 8 * i);
        v20 = ABRecordCopyValue(v19, v17);
        if ([v20 length])
        {
          if (v30 && v19 == v8)
          {
            [v13 insertObject:v20 atIndex:0];
          }

          else
          {
            [v13 addObject:v20];
          }
        }

        _addUniqueValuesFromPersonMultiValuePropertyToArray(v19, kABPersonPhoneProperty, &v36);
        _addUniqueValuesFromPersonMultiValuePropertyToArray(v19, kABPersonEmailProperty, &v35);
      }

      v15 = [(__CFArray *)obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v15);
  }

  v21 = v28;
  if ([v13 count])
  {
    [v28 setObject:v13 forKeyedSubscript:kABUserActivityUserInfoCardDAVUUIDsKey];
  }

  if ([v26 count])
  {
    [v28 setObject:v26 forKeyedSubscript:kABUserActivityUserInfoPhoneNumbersKey];
  }

  if ([v27 count])
  {
    [v28 setObject:v27 forKeyedSubscript:kABUserActivityUserInfoEmailAddressesKey];
  }

  CFRelease(v8);
  if (![v28 count])
  {
    return 0;
  }

  [v28 setObject:&unk_1F2FF4858 forKeyedSubscript:kABUserActivityUserInfoVersionKey];
  if (v30)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v28 setObject:v22 forKeyedSubscript:kABUserActivityUserInfoUnifiedKey];
  }

  if (IntValue == 1)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v28 setObject:v23 forKeyedSubscript:kABUserActivityUserInfoIsOrganizationKey];
  }

  return v21;
}

CFTypeRef _findPersonWithWeightSearchExcludesPeopleWithExternalUUIDs(__CFArray *a1, void *a2, int a3)
{
  v109 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v4 = a2;
  v6 = [a2 objectForKeyedSubscript:kABUserActivityUserInfoVersionKey];
  v7 = [objc_msgSend(v4 objectForKeyedSubscript:{kABUserActivityUserInfoUnifiedKey), "BOOLValue"}];
  if (![v6 isEqual:&unk_1F2FF4858])
  {
LABEL_92:
    if (ABDiagnosticsEnabled())
    {
      _ABLog2(6, "ABRecordRef _findPersonWithWeightSearchExcludesPeopleWithExternalUUIDs(ABAddressBookRef, CFDictionaryRef, BOOL)", 465, 0, @"Activity continuity - Failed to find person", v74, v75, v76, RecordID);
    }

    return 0;
  }

  v8 = [v4 objectForKeyedSubscript:kABUserActivityUserInfoInternalUUIDKey];
  if (v8)
  {
    v9 = v8;
    v10 = ABAddressBookCopyPersonMatchingInternalUUID(a1, v8);
    if (v10)
    {
      v11 = v10;
      CFAutorelease(v10);
      if (ABDiagnosticsEnabled())
      {
        ABRecordGetRecordID(v11);
        _ABLog2(6, "ABRecordRef _findPersonByInternalUUID(ABAddressBookRef, NSDictionary *)", 421, 0, @"Activity continuity - Found person with internal UUID = %@, recordID = %i", v12, v13, v14, v9);
      }

      goto LABEL_87;
    }
  }

  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  obj = [v4 objectForKeyedSubscript:kABUserActivityUserInfoCardDAVUUIDsKey];
  v15 = [obj countByEnumeratingWithState:&v104 objects:v108 count:16];
  v79 = v4;
  if (v15)
  {
    v16 = v15;
    v17 = *v105;
    while (2)
    {
      v18 = 0;
      v80 = v16;
      do
      {
        if (*v105 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v104 + 1) + 8 * v18);
        v20 = ABAddressBookCopyArrayOfUIDsMatchingExternalUUID(a1);
        if (v20)
        {
          v21 = v20;
          Count = CFArrayGetCount(v20);
          if (Count >= 1)
          {
            v23 = Count;
            v24 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v21, v24);
              PersonWithRecordID = ABAddressBookGetPersonWithRecordID(a1, ValueAtIndex);
              if (PersonWithRecordID)
              {
                break;
              }

              if (v23 == ++v24)
              {
                goto LABEL_17;
              }
            }

            v11 = PersonWithRecordID;
            CFRelease(v21);
            if (ABDiagnosticsEnabled())
            {
              ABRecordGetRecordID(v11);
              _ABLog2(6, "ABRecordRef _findPersonByExternalUUID(ABAddressBookRef, NSDictionary *)", 400, 0, @"Activity continuity - Found person with external UUID = %@, recordID = %i", v30, v31, v32, v19);
            }

            goto LABEL_87;
          }

LABEL_17:
          CFRelease(v21);
          v16 = v80;
        }

        ++v18;
      }

      while (v18 != v16);
      v16 = [obj countByEnumeratingWithState:&v104 objects:v108 count:16];
      v4 = v79;
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  if ([objc_msgSend(v4 objectForKeyedSubscript:{kABUserActivityUserInfoIsOrganizationKey), "BOOLValue"}])
  {
    v27 = [v4 objectForKeyedSubscript:kABUserActivityUserInfoOrganizationNameKey[0]];
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v29 = [v4 objectForKeyedSubscript:kABUserActivityUserInfoFirstNameKey];
    v28 = [v4 objectForKeyedSubscript:kABUserActivityUserInfoLastNameKey[0]];
    v27 = 0;
  }

  v33 = [v4 objectForKeyedSubscript:kABUserActivityUserInfoEmailAddressesKey];
  v34 = [v4 objectForKeyedSubscript:kABUserActivityUserInfoPhoneNumbersKey];
  if ([v29 length])
  {
    v35 = v29;
  }

  else
  {
    v35 = 0;
  }

  if ([v28 length])
  {
    v36 = v28;
  }

  else
  {
    v36 = 0;
  }

  v97 = 0;
  v98 = 0;
  if ([v27 length])
  {
    v37 = v27;
  }

  else
  {
    v37 = 0;
  }

  v95 = 0;
  v96 = 0;
  v94 = 0;
  Current = CFRunLoopGetCurrent();
  v93[0] = MEMORY[0x1E69E9820];
  v93[1] = 3221225472;
  v93[2] = ___findPersonByWeightedSearch_block_invoke;
  v93[3] = &__block_descriptor_40_e42_v28__0__ABSearchOperation_8__NSArray_16B24l;
  v93[4] = Current;
  v39 = objc_opt_new();
  [v39 setMaxConcurrentOperationCount:1];
  obja = v35;
  _addOperation_0(v35, kABPersonFirstNameProperty, &v98, v93, a1, v39, a3);
  v81 = v36;
  _addOperation_0(v36, kABPersonLastNameProperty, &v97, v93, a1, v39, a3);
  _addOperation_0(v37, kABPersonOrganizationProperty, &v96, v93, a1, v39, a3);
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v40 = [v33 countByEnumeratingWithState:&v89 objects:&v104 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v90;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v90 != v42)
        {
          objc_enumerationMutation(v33);
        }

        _addOperation_0(*(*(&v89 + 1) + 8 * i), kABPersonEmailProperty, &v95, v93, a1, v39, a3);
      }

      v41 = [v33 countByEnumeratingWithState:&v89 objects:&v104 count:16];
    }

    while (v41);
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v44 = [v34 countByEnumeratingWithState:&v85 objects:v103 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v86;
    do
    {
      for (j = 0; j != v45; ++j)
      {
        if (*v86 != v46)
        {
          objc_enumerationMutation(v34);
        }

        _addOperation_0(*(*(&v85 + 1) + 8 * j), kABPersonPhoneProperty, &v94, v93, a1, v39, a3);
      }

      v45 = [v34 countByEnumeratingWithState:&v85 objects:v103 count:16];
    }

    while (v45);
  }

  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v48 = [v39 operations];
  v49 = [v48 countByEnumeratingWithState:&v99 objects:v108 count:16];
  if (v49)
  {
    v50 = v49;
    while (2)
    {
      v51 = *v100;
LABEL_51:
      v52 = 0;
      while (1)
      {
        if (*v100 != v51)
        {
          objc_enumerationMutation(v48);
        }

        if (![*(*(&v99 + 1) + 8 * v52) isFinished])
        {
          break;
        }

        if (v50 == ++v52)
        {
          v50 = [v48 countByEnumeratingWithState:&v99 objects:v108 count:16];
          if (v50)
          {
            goto LABEL_51;
          }

          goto LABEL_59;
        }
      }

      v53 = objc_opt_new();
      CFRunLoopRunInMode(kABSearchOperationRunloopMode, 0.1, 1u);

      v99 = 0u;
      v100 = 0u;
      v101 = 0u;
      v102 = 0u;
      v48 = [v39 operations];
      v50 = [v48 countByEnumeratingWithState:&v99 objects:v108 count:16];
      if (v50)
      {
        continue;
      }

      break;
    }
  }

LABEL_59:

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  v55 = objc_opt_new();
  v84 = 0;
  if (obja && v81)
  {
    if (v98 && v97)
    {
      [v98 intersectSet:?];

      v97 = v98;
    }

    else
    {

      v98 = 0;
      v97 = 0;
    }
  }

  _countInstancesOfRecord_0(Mutable, v98, &v84, v55);
  _countInstancesOfRecord_0(Mutable, v97, &v84, v55);
  _countInstancesOfRecord_0(Mutable, v96, &v84, v55);
  _countInstancesOfRecord_0(Mutable, v95, &v84, v55);
  _countInstancesOfRecord_0(Mutable, v94, &v84, v55);
  if ([v55 count] < 2)
  {
    v11 = [v55 lastObject];
    if (v11)
    {
      goto LABEL_83;
    }
  }

  else
  {
    v56 = [MEMORY[0x1E696AD60] string];
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v57 = [v55 countByEnumeratingWithState:&v99 objects:v108 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v100;
      do
      {
        for (k = 0; k != v58; ++k)
        {
          if (*v100 != v59)
          {
            objc_enumerationMutation(v55);
          }

          RecordID = ABRecordGetRecordID(*(*(&v99 + 1) + 8 * k));
          [v56 appendFormat:@"%i "];
        }

        v58 = [v55 countByEnumeratingWithState:&v99 objects:v108 count:16];
      }

      while (v58);
    }

    if (ABDiagnosticsEnabled())
    {
      v61 = [v55 count];
      _ABLog2(6, "ABRecordRef _findPersonByWeightedSearch(ABAddressBookRef, NSDictionary *, BOOL)", 346, 0, @"Activity continuity - Found %lu person(s) by weighted search, recordIDs = %@", v62, v63, v64, v61);
    }

    if ([objc_msgSend(v79 objectForKeyedSubscript:{kABUserActivityUserInfoUnifiedKey), "BOOLValue"}])
    {
      v65 = ABPersonCopyArrayOfAllLinkedPeople([v55 lastObject]);
      if ([v55 isSubsetOfSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", v65)}])
      {
        v11 = ABPersonCopyPreferredLinkedPersonForName([v55 lastObject]);
        CFAutorelease(v11);
      }

      else
      {
        v11 = 0;
      }

      if (v11)
      {
LABEL_83:
        if (ABDiagnosticsEnabled())
        {
          v66 = ABRecordGetRecordID(v11);
          CFDictionaryGetValue(Mutable, v11);
          _ABLog2(6, "ABRecordRef _findPersonByWeightedSearch(ABAddressBookRef, NSDictionary *, BOOL)", 364, 0, @"Activity continuity - Found person by weighted search, recordID = %i, matchCount = %i", v67, v68, v69, v66);
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_87:
  if (((v11 != 0) & v7) == 1)
  {
    v11 = ABPersonCopyPreferredLinkedPersonForName(v11);
    if (ABDiagnosticsEnabled())
    {
      v70 = ABRecordGetRecordID(v11);
      _ABLog2(6, "ABRecordRef _findPersonWithWeightSearchExcludesPeopleWithExternalUUIDs(ABAddressBookRef, CFDictionaryRef, BOOL)", 459, 0, @"Activity continuity - Using preferred linked person, recordID = %i", v71, v72, v73, v70);
    }

    CFAutorelease(v11);
  }

  if (!v11)
  {
    goto LABEL_92;
  }

  return v11;
}

void _addUniqueValuesFromPersonMultiValuePropertyToArray(const void *a1, ABPropertyID a2, id *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = ABRecordCopyValue(a1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = ABMultiValueCopyArrayOfAllValues(v4);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [(__CFArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          if ([v11 length])
          {
            if (([*a3 containsObject:v11] & 1) == 0)
            {
              [*a3 addObject:v11];
            }
          }
        }

        v8 = [(__CFArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    CFRelease(v5);
  }
}

void ___findPersonByWeightedSearch_block_invoke(uint64_t a1, void *a2, void *a3, char a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = [a2 context];
  if ([a3 count])
  {
    if (!*v7)
    {
      *v7 = objc_opt_new();
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v8 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(a3);
          }

          [*v7 addObject:*(*(&v12 + 1) + 8 * v11++)];
        }

        while (v9 != v11);
        v9 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }

  if ((a4 & 1) == 0)
  {
    CFRunLoopStop(*(a1 + 32));
  }
}

void _addOperation_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, int a7)
{
  v19[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v14 = objc_opt_new();
    if (kABPersonPhoneProperty == a2)
    {
      active = CPPhoneNumberCopyActiveCountryCode();
      v16 = [ABSearchOperation personPredicateWithPhoneLike:a1 countryHint:active addressBook:a5];

      if (!a7)
      {
LABEL_4:
        v17 = v14;
        v18 = v16;
LABEL_7:
        [v17 setPredicate:v18];
        [v14 setContext:a3];
        [v14 setProgressBlock:a4];
        [v14 setAddressBook:a5];
        [a6 addOperation:v14];

        return;
      }
    }

    else
    {
      v16 = [ABPredicate personPredicateWithValue:a1 comparison:0 forProperty:a2];
      if (!a7)
      {
        goto LABEL_4;
      }
    }

    v19[0] = v16;
    v19[1] = [ABPredicate personPredicateWithValue:0 comparison:0 forProperty:kABPersonExternalUUIDProperty];
    v18 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v19, 2)}];
    v17 = v14;
    goto LABEL_7;
  }
}

uint64_t _countInstancesOfRecord_0(const __CFDictionary *a1, void *a2, unsigned int *a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  result = [a2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (result)
  {
    v9 = result;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(a2);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        Value = CFDictionaryGetValue(a1, v12);
        v14 = [a2 countForObject:v12] + Value;
        if (*a3 != v14)
        {
          if (*a3 >= v14)
          {
            goto LABEL_10;
          }

          *a3 = v14;
          [a4 removeAllObjects];
        }

        [a4 addObject:v12];
LABEL_10:
        CFDictionarySetValue(a1, v12, v14);
        ++v11;
      }

      while (v9 != v11);
      result = [a2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v9 = result;
    }

    while (result);
  }

  return result;
}

uint64_t correctUnsupportedLabels(int a1, ABPropertyID property, const void *a3, _BYTE *a4, const __CFDictionary *a5)
{
  TypeOfProperty = ABPersonGetTypeOfProperty(property);
  v11 = 1;
  if (a3)
  {
    if ((TypeOfProperty & 0x100) != 0)
    {
      v12 = copyLabels(a1, property, a5);
      if (v12)
      {
        v13 = v12;
        Count = ABMultiValueGetCount(a3);
        v14 = CFDictionaryGetCount(v13);
        if (v14)
        {
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
        }

        else
        {
          Mutable = 0;
        }

        if (Count >= 1)
        {
          v40 = a1;
          v41 = property;
          v16 = 0;
          v17 = *MEMORY[0x1E695E738];
          v18 = 1;
          v43 = a3;
          v44 = *MEMORY[0x1E695E738];
          do
          {
            v19 = ABMultiValueCopyLabelAtIndex(a3, v16);
            if (v19)
            {
              v20 = v19;
            }

            else
            {
              v20 = v17;
            }

            if (v20)
            {
              if (v14)
              {
                Value = CFDictionaryGetValue(Mutable, v20);
                v22 = CFDictionaryGetValue(v13, v20);
                CFDictionarySetValue(Mutable, v20, (Value + 1));
                v36 = Value < v22;
                a3 = v43;
                v17 = v44;
                v23 = v36;
                v18 &= v23;
              }

              else if (v20 != v17)
              {
                ABCMultiValueReplaceLabel(a3, v17, v16);
                if (a4)
                {
                  *a4 = 1;
                }
              }

              CFRelease(v20);
            }

            ++v16;
          }

          while (Count != v16);
          v11 = 1;
          if ((v18 & 1) == 0)
          {
            v38 = a4;
            theDict = a5;
            v24 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
            v25 = 0;
            PreferredLabels = 0;
            v42 = 1;
            while (1)
            {
              v27 = ABMultiValueCopyLabelAtIndex(a3, v25);
              if (v27)
              {
                v17 = v27;
              }

              if (!v17)
              {
                goto LABEL_51;
              }

              v28 = CFDictionaryGetValue(v24, v17);
              if (v28 >= CFDictionaryGetValue(v13, v17))
              {
                if (!PreferredLabels)
                {
                  PreferredLabels = getPreferredLabels(v40, v41, theDict);
                  if (!PreferredLabels)
                  {
                    goto LABEL_49;
                  }
                }

                v30 = CFArrayGetCount(PreferredLabels);
                if (v30 < 1)
                {
                  goto LABEL_49;
                }

                v31 = v30;
                v32 = 1;
                do
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(PreferredLabels, v32 - 1);
                  v33 = CFDictionaryGetValue(v24, ValueAtIndex);
                  if (v33 <= CFDictionaryGetValue(Mutable, ValueAtIndex))
                  {
                    v34 = Mutable;
                  }

                  else
                  {
                    v34 = v24;
                  }

                  v35 = CFDictionaryGetValue(v34, ValueAtIndex);
                  if (v35 >= CFDictionaryGetValue(v13, ValueAtIndex))
                  {
                    ValueAtIndex = 0;
                  }

                  if (ValueAtIndex)
                  {
                    v36 = 0;
                  }

                  else
                  {
                    v36 = v32 < v31;
                  }

                  ++v32;
                }

                while (v36);
                if (!ValueAtIndex)
                {
LABEL_49:
                  v42 = 0;
                  goto LABEL_50;
                }

                ABCMultiValueReplaceLabel(v43, ValueAtIndex, v25);
                if (v38)
                {
                  *v38 = 1;
                }

                v28 = CFDictionaryGetValue(v24, ValueAtIndex);
              }

              else
              {
                ValueAtIndex = v17;
              }

              CFDictionarySetValue(v24, ValueAtIndex, (v28 + 1));
LABEL_50:
              a3 = v43;
              CFRelease(v17);
LABEL_51:
              ++v25;
              v17 = v44;
              if (v25 == Count)
              {
                if (v24)
                {
                  CFRelease(v24);
                }

                v11 = v42;
                break;
              }
            }
          }
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        CFRelease(v13);
      }
    }
  }

  return v11 & 1;
}

CFMutableDictionaryRef copyLabels(int a1, int a2, CFDictionaryRef theDict)
{
  if (a1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, @"ABPerson");
  if (!Value)
  {
    return 0;
  }

  v7 = Value;
  v8 = ABPersonNameForProperty(a2);
  v9 = CFDictionaryGetValue(v7, @"UnsupportedAttributes");
  if (!v9 || (v10 = v9, v23.length = CFArrayGetCount(v9), v23.location = 0, !CFArrayContainsValue(v10, v23, v8)))
  {
    v12 = CFDictionaryGetValue(v7, @"MultiValueRestrictions");
    if (v12)
    {
      v13 = CFDictionaryGetValue(v12, v8);
      if (v13)
      {
        v14 = CFDictionaryGetValue(v13, @"SupportedLabels");
        if (v14)
        {
          v15 = v14;
          Count = CFDictionaryGetCount(v14);
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9D8], 0);
          if (Count >= 1)
          {
            valuePtr = 0;
            v17 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
            v18 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
            CFDictionaryGetKeysAndValues(v15, v17, v18);
            for (i = 0; i != Count; ++i)
            {
              CFNumberGetValue(v18[i], kCFNumberIntType, &valuePtr);
              v20 = valuePtr;
              if ((valuePtr & 0x80000000) != 0)
              {
                valuePtr = 0x7FFFFFFF;
                v20 = 0x7FFFFFFFLL;
              }

              CFDictionarySetValue(Mutable, v17[i], v20);
            }

            free(v18);
            free(v17);
          }

          return Mutable;
        }
      }
    }

    return 0;
  }

  v11 = *MEMORY[0x1E695E480];

  return CFDictionaryCreateMutable(v11, 0, 0, 0);
}

const void *getPreferredLabels(int a1, int a2, CFDictionaryRef theDict)
{
  if (a1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, @"ABPerson");
  if (!Value)
  {
    return 0;
  }

  v6 = Value;
  v7 = ABPersonNameForProperty(a2);
  v8 = CFDictionaryGetValue(v6, @"MultiValueRestrictions");
  if (!v8)
  {
    return 0;
  }

  v9 = CFDictionaryGetValue(v8, v7);
  if (!v9)
  {
    return 0;
  }

  return CFDictionaryGetValue(v9, @"PreferredLabels");
}

uint64_t ABPolicyCreateFromDictionaryAtPath(CFStringRef filePath)
{
  if (!filePath)
  {
    return 0;
  }

  v1 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], filePath, kCFURLPOSIXPathStyle, 0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = ABPolicyCreateWithDictionaryAtURL(v1);
  CFRelease(v2);
  return v3;
}

uint64_t ABPolicyCreateWithDictionaryAtURL(CFURLRef fileURL)
{
  if (!fileURL)
  {
    return 0;
  }

  v1 = *MEMORY[0x1E695E480];
  v2 = CFReadStreamCreateWithFile(*MEMORY[0x1E695E480], fileURL);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (CFReadStreamOpen(v2))
  {
    v4 = CFPropertyListCreateWithStream(v1, v3, 0, 1uLL, 0, 0);
    if (v4)
    {
      ABPolicyCreateWithCallbacks(copyRecordTypes, getMaximumValues, copyLabels, copyPreferredLabels, shouldAddRecord, shouldRemoveRecord, shouldAddMember, shouldRemoveMember, shouldSetValue, setShouldIgnoreCapabilitiesRestrictions, shouldIgnoreCapabilitiesRestrictions, v4, 2, freeContext);
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    CFReadStreamClose(v3);
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v3);
  return v6;
}

__CFArray *copyRecordTypes(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"ABGroup");
  v3 = !Value || (v2 = CFDictionaryGetValue(Value, @"Multigroups")) == 0 || CFBooleanGetValue(v2) != 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 2, 0);
  CFArrayAppendValue(Mutable, 0);
  if (v3)
  {
    CFArrayAppendValue(Mutable, 1);
  }

  return Mutable;
}

uint64_t getMaximumValues(int a1, int a2, CFDictionaryRef theDict)
{
  result = 0x7FFFFFFFLL;
  valuePtr = 0x7FFFFFFF;
  if (!a1)
  {
    Value = CFDictionaryGetValue(theDict, @"ABPerson");
    if (!Value)
    {
      return 0x7FFFFFFFLL;
    }

    v7 = Value;
    v8 = ABPersonNameForProperty(a2);
    v9 = CFDictionaryGetValue(v7, @"UnsupportedAttributes");
    if (v9)
    {
      v10 = v9;
      v15.length = CFArrayGetCount(v9);
      v15.location = 0;
      if (CFArrayContainsValue(v10, v15, v8))
      {
        return 0;
      }
    }

    if ((ABPersonGetTypeOfProperty(a2) & 0x100) == 0)
    {
      return 1;
    }

    v11 = CFDictionaryGetValue(v7, @"MultiValueRestrictions");
    if (v11 && (v12 = CFDictionaryGetValue(v11, v8)) != 0 && (v13 = CFDictionaryGetValue(v12, @"MaximumNumber")) != 0)
    {
      CFNumberGetValue(v13, kCFNumberIntType, &valuePtr);
      return valuePtr;
    }

    else
    {
      return 0x7FFFFFFFLL;
    }
  }

  return result;
}

CFArrayRef copyPreferredLabels(int a1, int a2, const __CFDictionary *a3)
{
  result = getPreferredLabels(a1, a2, a3);
  if (result)
  {
    v4 = result;
    v5 = *MEMORY[0x1E695E480];

    return CFArrayCreateCopy(v5, v4);
  }

  return result;
}

uint64_t shouldAddRecord(uint64_t a1, const void *a2, const __CFDictionary *a3, const void **a4)
{
  if (ABPolicyRecordIsWriteable(a2, 0))
  {
    v7 = copyRecordTypes(a3);
    RecordType = ABRecordGetRecordType(a2);
    v11.length = CFArrayGetCount(v7);
    v11.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v7, v11, RecordType);
    CFRelease(v7);
    if (FirstIndexOfValue != -1)
    {
      return 1;
    }
  }

  ABPolicyPopulateRecordReadOnlyError(a4, 0, @"SourceNotWritable");
  return 0;
}

uint64_t shouldRemoveRecord(uint64_t a1, const void *a2, uint64_t a3, const void **a4)
{
  IsWriteable = ABPolicyRecordIsWriteable(a2, 0);
  if ((IsWriteable & 1) == 0)
  {
    ABPolicyPopulateRecordReadOnlyError(a4, 0, @"SourceNotWritable");
  }

  return IsWriteable;
}

uint64_t shouldSetValue(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, const __CFDictionary *a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  v10 = 0;
  do
  {
    result = (*(&off_1F2FE1DE0 + v10))(a1, a2, a3, a4, a5);
    if (result)
    {
      v12 = v10 >= 3;
    }

    else
    {
      v12 = 1;
    }

    ++v10;
  }

  while (!v12);
  return result;
}

void setShouldIgnoreCapabilitiesRestrictions(int a1, CFMutableDictionaryRef theDict)
{
  if (theDict)
  {
    if (a1)
    {
      CFDictionarySetValue(theDict, @"OverrideReadonly", *MEMORY[0x1E695E4D0]);
    }

    else
    {
      CFDictionaryRemoveValue(theDict, @"OverrideReadonly");
    }
  }
}