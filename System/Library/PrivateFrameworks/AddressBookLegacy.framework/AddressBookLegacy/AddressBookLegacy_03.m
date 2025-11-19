const __CFDictionary *shouldIgnoreCapabilitiesRestrictions(const __CFDictionary *result)
{
  if (result)
  {
    return (CFDictionaryGetValue(result, @"OverrideReadonly") == *MEMORY[0x1E695E4D0]);
  }

  return result;
}

BOOL propertyIsSupported(int a1, int a2, int a3, int a4, CFDictionaryRef theDict)
{
  if (a1)
  {
    v6 = @"ABGroup";
  }

  else
  {
    v6 = @"ABPerson";
  }

  Value = CFDictionaryGetValue(theDict, v6);
  if (!Value)
  {
    return 1;
  }

  v8 = Value;
  v9 = ABPersonNameForProperty(a2);
  v10 = CFDictionaryGetValue(v8, @"UnsupportedAttributes");
  if (!v10)
  {
    return 1;
  }

  v11 = v10;
  v13.length = CFArrayGetCount(v10);
  v13.location = 0;
  return CFArrayContainsValue(v11, v13, v9) == 0;
}

BOOL notTooManyValuesForSet(int a1, ABPropertyID property, const void *a3, uint64_t a4, const __CFDictionary *a5)
{
  result = 1;
  if (!a1 && a3)
  {
    if ((ABPersonGetTypeOfProperty(property) & 0x100) != 0 && (MaximumValues = getMaximumValues(0, property, a5), MaximumValues != 0x7FFFFFFF))
    {
      return ABMultiValueGetCount(a3) <= MaximumValues;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t correctUnsupportedValueKeys(int a1, ABPropertyID property, const void *a3, _BYTE *a4, const __CFDictionary *a5)
{
  TypeOfProperty = ABPersonGetTypeOfProperty(property);
  if (!a1)
  {
    if (a3)
    {
      if (TypeOfProperty == 261)
      {
        Count = ABMultiValueGetCount(a3);
        if (Count >= 1)
        {
          v12 = Count;
          v13 = 0;
          v30 = a3;
          v31 = a4;
          do
          {
            Value = CFDictionaryGetValue(a5, @"ABPerson");
            if (Value)
            {
              v15 = Value;
              v16 = ABPersonNameForProperty(property);
              v17 = CFDictionaryGetValue(v15, @"MultiValueRestrictions");
              if (v17)
              {
                v18 = CFDictionaryGetValue(v17, v16);
                if (v18)
                {
                  v19 = CFDictionaryGetValue(v18, @"UnsupportedValueKeys");
                  if (v19)
                  {
                    v20 = v19;
                    v21 = ABMultiValueCopyValueAtIndex(a3, v13);
                    v22 = CFArrayGetCount(v20);
                    if (v22 >= 1)
                    {
                      v23 = v22;
                      MutableCopy = 0;
                      for (i = 0; i != v23; ++i)
                      {
                        ValueAtIndex = CFArrayGetValueAtIndex(v20, i);
                        if (CFDictionaryContainsKey(v21, ValueAtIndex))
                        {
                          if (!MutableCopy)
                          {
                            Default = CFAllocatorGetDefault();
                            v28 = CFDictionaryGetCount(v21);
                            MutableCopy = CFDictionaryCreateMutableCopy(Default, v28, v21);
                          }

                          CFDictionaryRemoveValue(MutableCopy, ValueAtIndex);
                        }
                      }

                      a3 = v30;
                      if (MutableCopy)
                      {
                        ABCMultiValueReplaceValue(v30, MutableCopy, v13);
                        CFRelease(MutableCopy);
                        if (v31)
                        {
                          *v31 = 1;
                        }
                      }
                    }

                    CFRelease(v21);
                  }
                }
              }
            }

            ++v13;
          }

          while (v13 != v12);
        }
      }
    }
  }

  return 1;
}

__CFDictionary *ABCreateAddressDictionaryWithString(const __CFString *a1)
{
  if (ABLogAPIUsage())
  {
    v26 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFDictionaryRef ABCreateAddressDictionaryWithString(CFStringRef)", 136, v2, 0, v3, v4, v5, v26);
    CFRelease(v2);
  }

  pthread_once(&__copyDataDetectorsResultsForString_sLoadDataDetectorsOnce, _loadDataDetectorsCoreFramework);
  Mutable = 0;
  if (!a1 || !sSharedDataDetectorsScanner)
  {
    return Mutable;
  }

  pthread_mutex_lock(&__copyDataDetectorsResultsForString_sDataDetectorsLock);
  if (!_lazyDDScannerScanString(sSharedDataDetectorsScanner, a1))
  {
    pthread_mutex_unlock(&__copyDataDetectorsResultsForString_sDataDetectorsLock);
    return 0;
  }

  v7 = _lazyDDScannerCopyResults(sSharedDataDetectorsScanner);
  pthread_mutex_unlock(&__copyDataDetectorsResultsForString_sDataDetectorsLock);
  if (!v7)
  {
    return 0;
  }

  if (CFArrayGetCount(v7) != 1 || (ValueAtIndex = CFArrayGetValueAtIndex(v7, 0), Range = _lazyDDResultGetRange(), v11 = v10, Type = _lazyDDResultGetType(ValueAtIndex), CFStringCompare(Type, @"FullAddress", 0) | Range) || v11 != CFStringGetLength(a1))
  {
    CFRelease(v7);
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  SubResults = _lazyDDResultGetSubResults(ValueAtIndex);
  Count = CFArrayGetCount(SubResults);
  if (Count < 1)
  {
    goto LABEL_31;
  }

  v15 = Count;
  v16 = 0;
  v27 = 0;
  do
  {
    v17 = CFArrayGetValueAtIndex(SubResults, v16);
    v18 = _lazyDDResultGetType(v17);
    if (CFStringCompare(v18, @"Street", 0))
    {
      if (CFStringCompare(v18, @"SubLocality", 0))
      {
        if (CFStringCompare(v18, @"City", 0))
        {
          if (CFStringCompare(v18, @"ZipCode", 0))
          {
            if (CFStringCompare(v18, @"SubAdministrativeArea", 0))
            {
              if (CFStringCompare(v18, @"State", 0))
              {
                if (CFStringCompare(v18, @"Country", 0))
                {
                  goto LABEL_28;
                }

                v27 = 1;
                v19 = &kABPersonAddressCountryKey;
              }

              else
              {
                v19 = &kABPersonAddressStateKey;
              }
            }

            else
            {
              v19 = kABPersonAddressSubAdministrativeAreaKey;
            }
          }

          else
          {
            v19 = &kABPersonAddressZIPKey;
          }
        }

        else
        {
          v19 = &kABPersonAddressCityKey;
        }
      }

      else
      {
        v19 = kABPersonAddressSubLocalityKey;
      }
    }

    else
    {
      v19 = &kABPersonAddressStreetKey;
    }

    v20 = *v19;
    if (*v19)
    {
      MatchedString = _lazyDDResultGetMatchedString(v17);
      CFDictionarySetValue(Mutable, v20, MatchedString);
    }

LABEL_28:
    ++v16;
  }

  while (v15 != v16);
  if (v27 && (Value = CFDictionaryGetValue(Mutable, @"Country"), (v23 = ABAddressCopyCountryCodeForCountryName(Value)) != 0))
  {
LABEL_33:
    v24 = v23;
    CFDictionarySetValue(Mutable, @"CountryCode", v23);
    CFRelease(v24);
  }

  else
  {
LABEL_31:
    v23 = CPPhoneNumberCopyNetworkCountryCode();
    if (v23)
    {
      goto LABEL_33;
    }

    v23 = CPPhoneNumberCopyHomeCountryCode();
    if (v23)
    {
      goto LABEL_33;
    }
  }

  CFRelease(v7);
  return Mutable;
}

void _loadDataDetectorsCoreFramework()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = CPSystemRootDirectory();
  MutableCopy = CFStringCreateMutableCopy(0, 0, v0);
  CFStringAppend(MutableCopy, @"/System/Library/PrivateFrameworks/DataDetectorsCore.framework/DataDetectorsCore");
  v2 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], MutableCopy, kCFURLPOSIXPathStyle, 0);
  CFRelease(MutableCopy);
  if (v2)
  {
    v3 = CFURLGetFileSystemRepresentation(v2, 1u, buffer, 1024);
    CFRelease(v2);
    if (v3)
    {
      v4 = dlopen(buffer, 1);
      if (v4)
      {
        v5 = v4;
        v6 = dlsym(v4, "DDScannerCreateWithType");
        _lazyDDScannerCreateWithType = v6;
        v7 = dlsym(v5, "DDScannerCopyResults");
        _lazyDDScannerCopyResults = v7;
        v8 = dlsym(v5, "DDScannerScanString");
        _lazyDDScannerScanString = v8;
        v9 = dlsym(v5, "DDResultGetSubResults");
        _lazyDDResultGetSubResults = v9;
        v10 = dlsym(v5, "DDResultGetType");
        _lazyDDResultGetType = v10;
        v11 = dlsym(v5, "DDResultGetMatchedString");
        _lazyDDResultGetMatchedString = v11;
        v12 = dlsym(v5, "DDResultGetRange");
        _lazyDDResultGetRange = v12;
        if (v6 && v7 && v8 && v9 && v10 && v11 && v12)
        {
          if (!sSharedDataDetectorsScanner)
          {
            sSharedDataDetectorsScanner = _lazyDDScannerCreateWithType(0, 0, 0);
          }
        }

        else
        {
          v14 = *MEMORY[0x1E69E9848];
          dlerror();
          fprintf(v14, "Failed to load some symbols from DataDetectorsCore.framework (%s)");
        }
      }

      else
      {
        v13 = *MEMORY[0x1E69E9848];
        dlerror();
        fprintf(v13, "Failed to load DataDetectorsCore.framework (%s)");
      }
    }
  }
}

uint64_t _getWriterConnection(uint64_t a1, uint64_t a2)
{
  CPRecordStoreGetDatabase();
  v3 = CPSqliteDatabaseConnectionForWriting();
  if (v3)
  {
    v4 = CPSqliteConnectionBeginTransactionType();
    if (v4 && v4 != 101)
    {
      ABDiagnosticsEnabled();
      _ABLog2(4, "CPSqliteConnection *_getWriterConnection(CPRecordStoreRef, const char *)", 21, 0, @"%s: failed to start transaction for writer connection (error %d)", v5, v6, v7, a2);
      return 0;
    }
  }

  else
  {
    ABDiagnosticsEnabled();
    _ABLog2(4, "CPSqliteConnection *_getWriterConnection(CPRecordStoreRef, const char *)", 24, 0, @"%s: failed to get writer connection", v8, v9, v10, a2);
  }

  return v3;
}

void _commitWriterConnection(uint64_t a1, uint64_t a2)
{
  v3 = CPSqliteConnectionCommit();
  if (v3)
  {
    v4 = v3;
    if (v3 != 101)
    {
      ABDiagnosticsEnabled();
      _ABLog2(4, "void _commitWriterConnection(CPSqliteConnection *, const char *)", 33, 0, @"%s: failed to commit transaction (error %d)", v5, v6, v7, a2);
      if (v4 != 10)
      {

        CPSqliteConnectionRollback();
      }
    }
  }
}

uint64_t _dumpTableWithConnection(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AD60] stringWithCapacity:100];
  v4 = [MEMORY[0x1E696AD60] stringWithCapacity:1000];
  [MEMORY[0x1E696AEC0] stringWithFormat:@"select ROWID, * from %@", a2];
  if (CPSqliteConnectionStatementForSQL())
  {
    CPSqliteStatementSendResults();
    CPSqliteStatementReset();
  }

  if ([v3 length])
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%li) = (\n%@\n%@)", a2, 0, v3, v4];
  }

  else
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ =()", a2, v6, v7, v8];
  }
}

uint64_t _dumpTableRowHandler(uint64_t a1, uint64_t a2)
{
  v4 = sqlite3_column_count(*(a1 + 8));
  v5 = v4 - 1;
  if (v4 >= 1)
  {
    v6 = v4;
    if (![*a2 length])
    {
      [*a2 appendString:@"    "];
      for (i = 0; i != v6; ++i)
      {
        v8 = sqlite3_column_name(*(a1 + 8), i);
        v9 = v8;
        if (i == 1 && !strcasecmp(v8, "rowid"))
        {
          **(a2 + 16) = 1;
        }

        else
        {
          [*a2 appendFormat:@"%s", v9];
          if (i < v5)
          {
            [*a2 appendString:@"|"];
          }
        }
      }
    }

    [*(a2 + 8) appendString:@"    "];
    v10 = 0;
    while (v10 == 1 && (**(a2 + 16) & 1) != 0)
    {
LABEL_27:
      if (v6 == ++v10)
      {
        [*(a2 + 8) appendString:@"\n"];
        ++**(a2 + 24);
        return 0;
      }
    }

    v11 = sqlite3_column_type(*(a1 + 8), v10);
    if (v11 <= 2)
    {
      if (v11 != 1)
      {
        if (v11 == 2)
        {
          [*(a2 + 8) appendFormat:@"%f", sqlite3_column_double(*(a1 + 8), v10)];
        }

        goto LABEL_25;
      }

      v14 = *(a2 + 8);
      v16 = sqlite3_column_int(*(a1 + 8), v10);
      v12 = v14;
      v13 = @"%i";
    }

    else
    {
      switch(v11)
      {
        case 3:
          [*(a2 + 8) appendFormat:@"%s", sqlite3_column_text(*(a1 + 8), v10)];
          goto LABEL_25;
        case 4:
          v12 = *(a2 + 8);
          v13 = @"<BLOB>";
          break;
        case 5:
          v12 = *(a2 + 8);
          v13 = @"<NULL>";
          break;
        default:
          goto LABEL_25;
      }
    }

    [v12 appendFormat:v13, v16];
LABEL_25:
    if (v10 < v5)
    {
      [*(a2 + 8) appendString:@"|"];
    }

    goto LABEL_27;
  }

  return 0;
}

uint64_t _dumpTable(uint64_t a1, uint64_t a2)
{
  CPRecordStoreGetDatabase();
  v3 = CPSqliteDatabaseConnectionForReading();

  return _dumpTableWithConnection(v3, a2);
}

void *SQLInClauseStringForParameterCount(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD60] stringWithCapacity:(2 * a1) | 1];
  objc_msgSend(v2, "appendString:", @"(");
  if (a1)
  {
    v3 = 0;
    do
    {
      if (v3)
      {
        v4 = @",?";
      }

      else
      {
        v4 = @"?";
      }

      [v2 appendString:v4];
      ++v3;
    }

    while (a1 != v3);
  }

  [v2 appendString:@""]);
  return v2;
}

uint64_t abPredicateSqliteEval(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v6 = sqlite3_user_data(a1);
  v7 = sqlite3_value_int(*a3);
  v8 = [objc_msgSend(v6 objectAtIndex:{2 * v7), "nonretainedObjectValue"}];
  v9 = [v6 objectAtIndex:(2 * v7) | 1];
  if ([v8 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}])
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  if ([v9 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}])
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  return [v10 evaluateCallbackWithSqliteContext:a1 predicateContext:v11 values:a3 count:a2];
}

uint64_t _predicateIteratePeopleWithCallbacksRecordHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 32) + 1;
  *(a3 + 24) = a2;
  *(a3 + 32) = v4;
  *(a3 + 40) = [*(a3 + 8) ab_metadataForMatchingRow:a1 columnOffset:*(a3 + 48)];
  if (!*(a3 + 24))
  {
    return 0;
  }

  v5 = objc_opt_respondsToSelector();
  v6 = *a3;
  v7 = *(a3 + 8);
  v8 = *(a3 + 24);
  if (v5)
  {
    [v6 predicateShouldContinue:v7 afterFindingRecord:v8 metadata:*(a3 + 40)];
    result = 0;
  }

  else
  {
    result = [v6 predicateShouldContinue:v7 afterFindingRecord:v8] ^ 1;
  }

  *(a3 + 24) = 0;
  return result;
}

uint64_t excludeIdsRowHandler(uint64_t result, void *a2)
{
  if (result)
  {
    result = *(result + 8);
    if (result)
    {
      if ([a2 containsIndex:{sqlite3_column_int(result, 0)}])
      {
        return 0;
      }

      else
      {
        return 2;
      }
    }
  }

  return result;
}

uint64_t appendToBufferWithLineFolding(uint64_t a1, char a2, uint64_t a3)
{
  v3 = a3;
  if (a3 >= 75)
  {
    v6 = *(a1 + 8);
    v7 = *a1;
    if (v6 == *(a1 + 12))
    {
      v8 = 2 * v6;
      *(a1 + 12) = v8;
      v7 = NSZoneRealloc(0, v7, v8);
      *a1 = v7;
      v6 = *(a1 + 8);
    }

    *(a1 + 8) = v6 + 1;
    *(v7 + v6) = 13;
    v9 = *(a1 + 8);
    v10 = *a1;
    if (v9 == *(a1 + 12))
    {
      v11 = 2 * v9;
      *(a1 + 12) = v11;
      v10 = NSZoneRealloc(0, v10, v11);
      *a1 = v10;
      v9 = *(a1 + 8);
    }

    *(a1 + 8) = v9 + 1;
    *(v10 + v9) = 10;
    v12 = *(a1 + 8);
    v13 = *a1;
    if (v12 == *(a1 + 12))
    {
      v14 = 2 * v12;
      *(a1 + 12) = v14;
      v13 = NSZoneRealloc(0, v13, v14);
      *a1 = v13;
      v12 = *(a1 + 8);
    }

    *(a1 + 8) = v12 + 1;
    *(v13 + v12) = 32;
    v3 = 1;
  }

  v15 = *(a1 + 8);
  v16 = *a1;
  if (v15 == *(a1 + 12))
  {
    v17 = 2 * v15;
    *(a1 + 12) = v17;
    v16 = NSZoneRealloc(0, v16, v17);
    *a1 = v16;
    v15 = *(a1 + 8);
  }

  *(a1 + 8) = v15 + 1;
  *(v16 + v15) = a2;
  return v3 + 1;
}

uint64_t ABLimitedAccessContactIdentifiersForBundle(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"parameter ‘addressBook’ must be nonnull" userInfo:0]);
  }

  CPRecordStoreGetDatabase();
  if (!CPSqliteDatabaseConnectionForReading())
  {
    return MEMORY[0x1E695E0F0];
  }

  v3 = [MEMORY[0x1E695DF70] array];
  if (((*(*MEMORY[0x1E6996568] + 16))() & 1) == 0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT LimitedAccess.guid FROM LimitedAccess WHERE LimitedAccess.BundleID = '%@' and IsActive = %i;", a2, 1];
    if (CPSqliteConnectionStatementForSQL())
    {
      CPSqliteStatementSendResults();
      CPSqliteStatementReset();
    }
  }

  return v3;
}

uint64_t _identifierRowHandler(uint64_t a1, void *a2)
{
  v3 = sqlite3_column_text(*(a1 + 8), 0);
  if (v3)
  {
    [a2 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v3)}];
  }

  return 0;
}

uint64_t ABPopulateSyncTableForLimitedAccessAboveSequenceNumber(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD60] string];
  v5 = [MEMORY[0x1E696AD60] string];
  v6 = [MEMORY[0x1E696AD60] string];
  v7 = [MEMORY[0x1E696AD60] string];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v4, @"BundleID", v5, @"guid", v6, @"SequenceNumber", v7, @"IsActive", 0}];
  if (!a1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"parameter ‘addressBook’ must be nonnull" userInfo:0]);
  }

  v9 = v8;
  CPRecordStoreGetDatabase();
  if (CPSqliteDatabaseConnectionForReading())
  {
    v10 = ABOSLogGeneral();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = a2;
      _os_log_impl(&dword_1B7EFB000, v10, OS_LOG_TYPE_DEFAULT, "ABPopulateSyncTableForLimitedAccessAboveSequenceNumber %@", buf, 0xCu);
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"select * from LimitedAccess WHERE SequenceNumber > %i ;", objc_msgSend(a2, "intValue")];
    if (CPSqliteConnectionStatementForSQL())
    {
      CPSqliteStatementSendResults();
      CPSqliteStatementReset();
    }
  }

  return v9;
}

uint64_t _syncTableRowHandler(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKey:@"BundleID"];
  v5 = [a2 objectForKey:@"guid"];
  v14 = [a2 objectForKey:@"SequenceNumber"];
  v13 = [a2 objectForKey:@"IsActive"];
  v6 = sqlite3_column_count(*(a1 + 8));
  if (v6 >= 1)
  {
    v7 = v6;
    v8 = 0;
    while (1)
    {
      v9 = sqlite3_column_name(*(a1 + 8), v8);
      if (!strcasecmp(v9, "BundleID"))
      {
        break;
      }

      if (!strcasecmp(v9, "guid"))
      {
        [v5 appendFormat:@"%s", sqlite3_column_text(*(a1 + 8), v8)];
        v11 = v5;
        goto LABEL_12;
      }

      if (!strcasecmp(v9, "SequenceNumber"))
      {
        v10 = v14;
        [v14 appendFormat:@"%i", sqlite3_column_int(*(a1 + 8), v8)];
LABEL_11:
        v11 = v10;
LABEL_12:
        [v11 appendFormat:@"%s", ", "];
        goto LABEL_13;
      }

      if (!strcasecmp(v9, "IsActive"))
      {
        v10 = v13;
        [v13 appendFormat:@"%i", sqlite3_column_int(*(a1 + 8), v8)];
        goto LABEL_11;
      }

LABEL_13:
      if (v7 == ++v8)
      {
        return 0;
      }
    }

    [v4 appendFormat:@"%s", sqlite3_column_text(*(a1 + 8), v8)];
    v11 = v4;
    goto LABEL_12;
  }

  return 0;
}

void *convertStringtoIntArray(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = [a1 componentsSeparatedByString:{@", "}];
  v2 = [MEMORY[0x1E695DF70] array];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = [*(*(&v9 + 1) + 8 * v6) intValue];
        [v2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v7)}];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  return v2;
}

uint64_t ABLimitedAccessUpdateTable(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v19 = @"parameter ‘addressBook’ must be nonnull";
    goto LABEL_18;
  }

  if (!a2)
  {
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v19 = @"parameter ‘table’ must be nonnull";
LABEL_18:
    objc_exception_throw([v17 exceptionWithName:v18 reason:v19 userInfo:0]);
  }

  v4 = [objc_msgSend(a2 objectForKey:{@"BundleID", "componentsSeparatedByString:", @", "}];
  v20 = [objc_msgSend(a2 objectForKey:{@"guid", "componentsSeparatedByString:", @", "}];
  v5 = convertStringtoIntArray([a2 objectForKey:@"SequenceNumber"]);
  v6 = convertStringtoIntArray([a2 objectForKey:@"IsActive"]);
  v7 = [v4 count];
  WriterConnection = _getWriterConnection(*(a1 + 16), "BOOL ABLimitedAccessUpdateTable(ABAddressBookRef, NSDictionary *)");
  if (WriterConnection)
  {
    v9 = WriterConnection;
    v10 = (v7 - 1);
    v11 = ABOSLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v22 = v7 - 1;
      _os_log_impl(&dword_1B7EFB000, v11, OS_LOG_TYPE_DEFAULT, "ABLimitedAccessUpdateTable update %d rows", buf, 8u);
    }

    if (v7 < 2)
    {
      v13 = 0;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      do
      {
        v14 = CPSqliteConnectionStatementForSQL();
        if (v14)
        {
          v15 = v14;
          v13 = 1;
          sqlite3_bind_text(*(v14 + 8), 1, [objc_msgSend(v4 objectAtIndex:{v12), "UTF8String"}], -1, 0);
          sqlite3_bind_text(*(v15 + 8), 2, [objc_msgSend(v20 objectAtIndex:{v12), "UTF8String"}], -1, 0);
          sqlite3_bind_int(*(v15 + 8), 3, [objc_msgSend(v5 objectAtIndex:{v12), "intValue"}]);
          sqlite3_bind_int(*(v15 + 8), 4, [objc_msgSend(v6 objectAtIndex:{v12), "intValue"}]);
          CPSqliteStatementPerform();
          CPSqliteStatementReset();
        }

        ++v12;
      }

      while (v10 != v12);
    }

    _commitWriterConnection(v9, "BOOL ABLimitedAccessUpdateTable(ABAddressBookRef, NSDictionary *)");
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t ABAddLimitedAccessForBundle(uint64_t a1, void *a2, uint64_t a3)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = a3;
  return ABAddLimitedAccessIdentifiersForBundle(a1, a2, [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1]);
}

uint64_t ABAddLimitedAccessIdentifiersForBundle(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"parameter ‘addressBook’ must be nonnull" userInfo:0]);
  }

  v5 = *MEMORY[0x1E6996568];
  if ((*(*MEMORY[0x1E6996568] + 16))(*MEMORY[0x1E6996568]))
  {
    return 0;
  }

  result = _getWriterConnection(*(a1 + 16), "BOOL ABAddLimitedAccessIdentifiersForBundle(ABAddressBookRef, NSString *, NSArray<NSString *> *)");
  v20 = result;
  if (result)
  {
    v18 = [a3 count];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = [a3 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v19 = a2;
      v9 = 0;
      v10 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(a3);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          if (((*(v5 + 16))(v5, v12) & 1) == 0)
          {
            FreshSequenceNumber = getFreshSequenceNumber(a1);
            v14 = ABOSLogGeneral();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109120;
              v27 = FreshSequenceNumber;
              _os_log_debug_impl(&dword_1B7EFB000, v14, OS_LOG_TYPE_DEBUG, "ABAddLimitedAccessForBundle sequenceNumber %d ", buf, 8u);
            }

            v15 = CPSqliteConnectionStatementForSQL();
            if (v15)
            {
              v16 = v15;
              _bindStringAtIndex(*(v15 + 8), 1, v19);
              _bindStringAtIndex(*(v16 + 8), 2, v12);
              sqlite3_bind_int(*(v16 + 8), 3, FreshSequenceNumber);
              sqlite3_bind_int(*(v16 + 8), 4, 1);
              CPSqliteStatementPerform();
              CPSqliteStatementReset();
              ++v9;
            }
          }
        }

        v8 = [a3 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CNContactStoreLimitedAccessDidChangeNotification", 0, 0, 1u);
    _commitWriterConnection(v20, "BOOL ABAddLimitedAccessIdentifiersForBundle(ABAddressBookRef, NSString *, NSArray<NSString *> *)");
    return v18 == v9;
  }

  return result;
}

uint64_t getFreshSequenceNumber(uint64_t a1)
{
  v2 = ABOSLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_1B7EFB000, v2, OS_LOG_TYPE_DEFAULT, "getFreshSequenceNumber", &v10, 2u);
  }

  LastUsedSequenceNumber = getLastUsedSequenceNumber(a1);
  ABAddressBookSetIntegerProperty(a1, @"ABlimitedAccessLastSequenceNumber", (LastUsedSequenceNumber + 1), v4, v5, v6, v7, v8, v10);
  return (LastUsedSequenceNumber + 1);
}

uint64_t _bindStringAtIndex(sqlite3_stmt *a1, int a2, void *a3)
{
  if (a3)
  {
    v5 = [a3 UTF8String];

    return sqlite3_bind_text(a1, a2, v5, -1, 0);
  }

  else
  {

    return sqlite3_bind_null(a1, a2);
  }
}

uint64_t ABRemoveLimitedAccessForBundle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = a3;
  return ABRemoveLimitedAccessIdentifiersForBundle(a1, a2, [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1]);
}

uint64_t ABRemoveLimitedAccessIdentifiersForBundle(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"parameter ‘addressBook’ must be nonnull" userInfo:0]);
  }

  v4 = *MEMORY[0x1E6996568];
  if ((*(*MEMORY[0x1E6996568] + 16))(*MEMORY[0x1E6996568]))
  {
    return 0;
  }

  result = _getWriterConnection(*(a1 + 16), "BOOL ABRemoveLimitedAccessIdentifiersForBundle(ABAddressBookRef, NSString *, NSArray<NSString *> *)");
  if (result)
  {
    v6 = result;
    v7 = ABOSLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      ABRemoveLimitedAccessIdentifiersForBundle_cold_1(a2, a3, v7);
    }

    v18 = [a3 count];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = [a3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v19 = a2;
      v10 = 0;
      v11 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(a3);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          if (((*(v4 + 16))(v4, v13) & 1) == 0)
          {
            FreshSequenceNumber = getFreshSequenceNumber(a1);
            v15 = CPSqliteConnectionStatementForSQL();
            if (v15)
            {
              v16 = v15;
              sqlite3_bind_int(*(v15 + 8), 1, FreshSequenceNumber);
              sqlite3_bind_int(*(v16 + 8), 2, 0);
              _bindStringAtIndex(*(v16 + 8), 3, v19);
              _bindStringAtIndex(*(v16 + 8), 4, v13);
              CPSqliteStatementPerform();
              CPSqliteStatementReset();
              ++v10;
            }
          }
        }

        v9 = [a3 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    _commitWriterConnection(v6, "BOOL ABRemoveLimitedAccessIdentifiersForBundle(ABAddressBookRef, NSString *, NSArray<NSString *> *)");
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CNContactStoreLimitedAccessDidChangeNotification", 0, 0, 1u);
    return v18 == v10;
  }

  return result;
}

uint64_t ABRemoveContactIdentifierFromLimitedAccessForAllBundles(uint64_t a1, uint64_t a2)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a2;
  return ABRemoveContactIdentifiersFromLimitedAccessForAllBundles(a1, [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1]);
}

uint64_t ABRemoveContactIdentifiersFromLimitedAccessForAllBundles(uint64_t a1, void *a2)
{
  v4 = [a2 _cn_filter:CNLogicalNot()];
  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    return 1;
  }

  if (!a1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"parameter ‘addressBook’ must be nonnull" userInfo:0]);
  }

  WriterConnection = _getWriterConnection(*(a1 + 16), "BOOL ABRemoveContactIdentifiersFromLimitedAccessForAllBundles(ABAddressBookRef, NSArray<NSString *> *)");
  if (!WriterConnection)
  {
    return 0;
  }

  v7 = WriterConnection;
  v8 = ABOSLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    ABRemoveContactIdentifiersFromLimitedAccessForAllBundles_cold_1(a2, v8);
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM LimitedAccess WHERE guid IN %@;", SQLInClauseStringForParameterCount(objc_msgSend(v4, "count"))];
  v9 = CPSqliteConnectionStatementForSQL();
  v5 = v9 != 0;
  if (v9)
  {
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x2020000000;
    v14 = 1;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __ABRemoveContactIdentifiersFromLimitedAccessForAllBundles_block_invoke;
    v12[3] = &unk_1E7CCCE20;
    v12[4] = v13;
    v12[5] = v9;
    [v4 _cn_each:v12];
    CPSqliteStatementPerform();
    CPSqliteStatementReset();
    _Block_object_dispose(v13, 8);
  }

  _commitWriterConnection(v7, "BOOL ABRemoveContactIdentifiersFromLimitedAccessForAllBundles(ABAddressBookRef, NSArray<NSString *> *)");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CNContactStoreLimitedAccessDidChangeNotification", 0, 0, 1u);
  return v5;
}

void sub_1B7F3BF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __ABRemoveContactIdentifiersFromLimitedAccessForAllBundles_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v3 + 8);
  v6 = *(v5 + 24);
  *(v5 + 24) = v6 + 1;
  return _bindStringAtIndex(v4, v6, a2);
}

uint64_t ABLimitedAccessContactsCountForBundle(uint64_t a1, void *a2)
{
  if (!a1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"parameter ‘addressBook’ must be nonnull" userInfo:0]);
  }

  CPRecordStoreGetDatabase();
  result = CPSqliteDatabaseConnectionForReading();
  if (result)
  {
    if (((*(*MEMORY[0x1E6996568] + 16))() & 1) == 0)
    {
      v4 = CPSqliteConnectionStatementForSQL();
      if (v4 && (v5 = v4, (v6 = *(v4 + 8)) != 0) && !sqlite3_bind_text(v6, 1, [a2 UTF8String], -1, 0) && !sqlite3_bind_int(*(v5 + 8), 2, 1))
      {
        v8 = CPSqliteStatementIntegerResult();
        CPSqliteStatementReset();
        if (v8 >= 1)
        {
          return [MEMORY[0x1E696AD98] numberWithInt:v8];
        }
      }

      else
      {
        v7 = ABOSLogGeneral();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          ABLimitedAccessContactsCountForBundle_cold_1(a2, v7);
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t ABGetLimitedAccessLastSyncSequenceNumber(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"parameter ‘addressBook’ must be nonnull" userInfo:0]);
  }

  v2 = ABOSLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13[0]) = 0;
    _os_log_impl(&dword_1B7EFB000, v2, OS_LOG_TYPE_DEFAULT, "ABGetLimitedAccessLastSyncSequenceNumber", v13, 2u);
  }

  v3 = MEMORY[0x1E696AD98];
  IntegerProperty = ABAddressBookGetIntegerProperty(a1);
  if (IntegerProperty == -1)
  {
    CPRecordStoreGetDatabase();
    if (!CPSqliteDatabaseConnectionForReading())
    {
      IntegerProperty = 0xFFFFFFFFLL;
      return [v3 numberWithInt:IntegerProperty];
    }

    IntegerProperty = lastSequenceNumber();
    v5 = ABOSLogGeneral();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v13[0]) = 67109120;
      HIDWORD(v13[0]) = IntegerProperty;
      _os_log_impl(&dword_1B7EFB000, v5, OS_LOG_TYPE_DEFAULT, "getCurrentSequenceNumber key not found, save %d", v13, 8u);
    }

    ABAddressBookSetIntegerProperty(a1, @"ABlimitedAccessTableCurrentSequenceNumber", IntegerProperty, v6, v7, v8, v9, v10, v13[0]);
  }

  v11 = ABOSLogGeneral();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v13[0]) = 67109120;
    HIDWORD(v13[0]) = IntegerProperty;
    _os_log_impl(&dword_1B7EFB000, v11, OS_LOG_TYPE_DEFAULT, "getCurrentSequenceNumber %d", v13, 8u);
  }

  return [v3 numberWithInt:IntegerProperty];
}

BOOL ABPurgeLimitedAccessRecordsForBundle(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"parameter ‘addressBook’ must be nonnull" userInfo:0]);
  }

  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    return 0;
  }

  markFullSyncRequired(a1);
  WriterConnection = _getWriterConnection(*(a1 + 16), "BOOL ABPurgeLimitedAccessRecordsForBundle(ABAddressBookRef, NSString *)");
  if (!WriterConnection)
  {
    return 0;
  }

  v5 = WriterConnection;
  v6 = ABOSLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = a2;
    _os_log_impl(&dword_1B7EFB000, v6, OS_LOG_TYPE_DEFAULT, "ABPurgeLimitedAccessRecordsForBundle bundleId:%@", &v13, 0xCu);
  }

  v7 = CPSqliteConnectionStatementForSQL();
  v8 = v7 != 0;
  if (v7)
  {
    v9 = *(v7 + 8);
    v10 = sqlite3_bind_parameter_index(v9, ":bundleId");
    if (v10 >= 1)
    {
      _bindStringAtIndex(v9, v10, a2);
    }

    CPSqliteStatementPerform();
    CPSqliteStatementReset();
  }

  _commitWriterConnection(v5, "BOOL ABPurgeLimitedAccessRecordsForBundle(ABAddressBookRef, NSString *)");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CNContactStoreLimitedAccessDidChangeNotification", 0, 0, 1u);
  return v8;
}

void markFullSyncRequired(uint64_t a1)
{
  v2 = ABOSLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_1B7EFB000, v2, OS_LOG_TYPE_DEFAULT, "markFullSyncRequired", &v9, 2u);
  }

  FreshSequenceNumber = getFreshSequenceNumber(a1);
  ABAddressBookSetIntegerProperty(a1, @"ABlimitedAccessLastFullSyncSequencenumber", FreshSequenceNumber, v4, v5, v6, v7, v8, v9);
}

ABLimitedAccessSyncData *ABGetWatchLimitedAccessSyncDataStartingAtSequenceNumber(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"parameter ‘addressBook’ must be nonnull" userInfo:0]);
  }

  v4 = ABOSLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v21) = 67109120;
    HIDWORD(v21) = a2;
    _os_log_impl(&dword_1B7EFB000, v4, OS_LOG_TYPE_DEFAULT, "ABGetWatchLimitedAccessSyncDataStartingAtSequenceNumber requesterSeqNum:%d", &v21, 8u);
  }

  CPRecordStoreGetDatabase();
  if (!CPSqliteDatabaseConnectionForReading())
  {
    return 0;
  }

  v5 = objc_alloc_init(ABLimitedAccessSyncData);
  [(ABLimitedAccessSyncData *)v5 setFullSyncRequired:0];
  v6 = [MEMORY[0x1E695DF70] array];
  LODWORD(SequenceNumber) = ABAddressBookGetIntegerProperty(a1);
  if (SequenceNumber != -1)
  {
    goto LABEL_10;
  }

  CPRecordStoreGetDatabase();
  if (CPSqliteDatabaseConnectionForReading())
  {
    SequenceNumber = lastSequenceNumber();
    v8 = ABOSLogGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v21) = 67109120;
      HIDWORD(v21) = SequenceNumber;
      _os_log_impl(&dword_1B7EFB000, v8, OS_LOG_TYPE_DEFAULT, "getFullSyncSequenceNumber key not found, save %d", &v21, 8u);
    }

    ABAddressBookSetIntegerProperty(a1, @"ABlimitedAccessLastFullSyncSequencenumber", SequenceNumber, v9, v10, v11, v12, v13, v21);
LABEL_10:
    v14 = ABOSLogGeneral();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v21) = 67109120;
      HIDWORD(v21) = SequenceNumber;
      _os_log_impl(&dword_1B7EFB000, v14, OS_LOG_TYPE_DEFAULT, "getFullSyncSequenceNumber %d", &v21, 8u);
    }

    goto LABEL_14;
  }

  LODWORD(SequenceNumber) = -1;
LABEL_14:
  if (SequenceNumber > a2)
  {
    [(ABLimitedAccessSyncData *)v5 setFullSyncRequired:1];
    LODWORD(a2) = 0;
  }

  [(ABLimitedAccessSyncData *)v5 setCurrentSequenceNumber:getLastUsedSequenceNumber(a1)];
  v15 = ABOSLogGeneral();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(ABLimitedAccessSyncData *)v5 currentSequenceNumber];
    LODWORD(v21) = 67109632;
    HIDWORD(v21) = a2;
    v22 = 1024;
    v23 = SequenceNumber;
    v24 = 1024;
    v25 = v16;
    _os_log_impl(&dword_1B7EFB000, v15, OS_LOG_TYPE_DEFAULT, "ABLimitedAccess requesterSeqNum %d fullSyncVersion %d currentversion %d", &v21, 0x14u);
  }

  v17 = CPSqliteConnectionStatementForSQL();
  if (v17)
  {
    v18 = *(v17 + 8);
    v19 = sqlite3_bind_parameter_index(v18, ":seqNumber");
    if (v19 >= 1)
    {
      sqlite3_bind_int(v18, v19, a2);
    }

    CPSqliteStatementSendResults();
    CPSqliteStatementReset();
  }

  [(ABLimitedAccessSyncData *)v5 setSyncEventsArray:v6];
  return v5;
}

uint64_t getLastUsedSequenceNumber(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  IntegerProperty = ABAddressBookGetIntegerProperty(a1);
  if (IntegerProperty == -1)
  {
    CPRecordStoreGetDatabase();
    if (!CPSqliteDatabaseConnectionForReading())
    {
      return 0xFFFFFFFFLL;
    }

    IntegerProperty = lastSequenceNumber();
    v3 = ABOSLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v11[0]) = 67109120;
      HIDWORD(v11[0]) = IntegerProperty;
      _os_log_impl(&dword_1B7EFB000, v3, OS_LOG_TYPE_DEFAULT, "getLastUsedSequenceNumber key not found, save %d", v11, 8u);
    }

    ABAddressBookSetIntegerProperty(a1, @"ABlimitedAccessLastSequenceNumber", IntegerProperty, v4, v5, v6, v7, v8, v11[0]);
  }

  v9 = ABOSLogGeneral();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v11[0]) = 67109120;
    HIDWORD(v11[0]) = IntegerProperty;
    _os_log_impl(&dword_1B7EFB000, v9, OS_LOG_TYPE_DEFAULT, "getLastUsedSequenceNumber %d", v11, 8u);
  }

  return IntegerProperty;
}

uint64_t _syncDataRowHandler(uint64_t a1, void *a2)
{
  v3 = objc_alloc_init(ABLimitedAccessSyncEvent);
  v4 = sqlite3_column_count(*(a1 + 8));
  if (v4 >= 1)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      v7 = sqlite3_column_name(*(a1 + 8), i);
      if (!strcasecmp(v7, "BundleID"))
      {
        -[ABLimitedAccessSyncEvent setBundleID:](v3, "setBundleID:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", sqlite3_column_text(*(a1 + 8), i)]);
      }

      else if (!strcasecmp(v7, "guid"))
      {
        -[ABLimitedAccessSyncEvent setContactID:](v3, "setContactID:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", sqlite3_column_text(*(a1 + 8), i)]);
      }

      else if (!strcasecmp(v7, "SequenceNumber"))
      {
        [(ABLimitedAccessSyncEvent *)v3 setSequenceNumber:sqlite3_column_int(*(a1 + 8), i)];
      }

      else if (!strcasecmp(v7, "IsActive"))
      {
        [(ABLimitedAccessSyncEvent *)v3 setIsActive:sqlite3_column_int(*(a1 + 8), i) != 0];
      }
    }
  }

  [a2 addObject:v3];

  return 0;
}

uint64_t ABApplyLimitedAccessSyncEvents(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = ABOSLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7EFB000, v4, OS_LOG_TYPE_DEFAULT, "ABApplyLimitedAccessSyncEvents", buf, 2u);
  }

  WriterConnection = _getWriterConnection(*(a1 + 16), "BOOL ABApplyLimitedAccessSyncEvents(ABAddressBookRef, NSArray<ABLimitedAccessSyncEvent *> *)");
  if (WriterConnection)
  {
    v6 = WriterConnection;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [a2 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(a2);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = ABOSLogGeneral();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [v12 sequenceNumber];
            *buf = 67109120;
            v23 = v14;
            _os_log_impl(&dword_1B7EFB000, v13, OS_LOG_TYPE_DEFAULT, "ABApplyLimitedAccessSyncEvents sequenceNumber %d", buf, 8u);
          }

          v15 = CPSqliteConnectionStatementForSQL();
          if (v15)
          {
            v16 = v15;
            v9 = 1;
            sqlite3_bind_text(*(v15 + 8), 1, [objc_msgSend(v12 "bundleID")], -1, 0);
            sqlite3_bind_text(*(v16 + 8), 2, [objc_msgSend(v12 "contactID")], -1, 0);
            sqlite3_bind_int(*(v16 + 8), 3, [v12 sequenceNumber]);
            sqlite3_bind_int(*(v16 + 8), 4, [v12 isActive]);
            CPSqliteStatementPerform();
            CPSqliteStatementReset();
          }
        }

        v8 = [a2 countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    _commitWriterConnection(v6, "BOOL ABApplyLimitedAccessSyncEvents(ABAddressBookRef, NSArray<ABLimitedAccessSyncEvent *> *)");
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

BOOL ABDropAllLimitedAccessRows(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = ABOSLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = a2;
    _os_log_impl(&dword_1B7EFB000, v4, OS_LOG_TYPE_DEFAULT, "ABDropAllLimitedAccessRows enableFullSyncNotify %d", v8, 8u);
  }

  if (a2)
  {
    markFullSyncRequired(a1);
  }

  WriterConnection = _getWriterConnection(*(a1 + 16), "BOOL ABDropAllLimitedAccessRows(ABAddressBookRef, BOOL)");
  if (WriterConnection)
  {
    CPSqliteConnectionPerformSQL();
    _commitWriterConnection(WriterConnection, "BOOL ABDropAllLimitedAccessRows(ABAddressBookRef, BOOL)");
    if (a2)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CNContactStoreLimitedAccessDidChangeNotification", 0, 0, 1u);
    }
  }

  return WriterConnection != 0;
}

uint64_t lastSequenceNumber()
{
  if (!CPSqliteConnectionStatementForSQL())
  {
    return 0;
  }

  v0 = CPSqliteStatementIntegerResult();
  CPSqliteStatementReset();
  return v0;
}

const __CFDictionary *ABGetLocalizedAddressFormatDictionaryForCountryCode(const void *a1)
{
  result = [MEMORY[0x1E69967B8] addressFormats];
  if (result)
  {

    return CFDictionaryGetValue(result, a1);
  }

  return result;
}

const __CFDictionary *ABGetPreferredKeyboardSettingsForCountryCodeAndAddressPartKey(const void *a1, const void *a2)
{
  result = [MEMORY[0x1E69967B8] addressFormats];
  if (result)
  {
    v5 = result;
    Value = CFDictionaryGetValue(result, a1);
    if (!Value || (v7 = CFDictionaryGetValue(Value, @"kbdSettings")) == 0 || (result = CFDictionaryGetValue(v7, a2)) == 0)
    {
      result = CFDictionaryGetValue(v5, @"defaultKbdSettings");
      if (result)
      {

        return CFDictionaryGetValue(result, a2);
      }
    }
  }

  return result;
}

uint64_t ABAddressCopyCountryCodeForCountryName(void *a1)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    _ABLog2(6, "CFStringRef ABAddressCopyCountryCodeForCountryName(CFStringRef)", 140, v3, @"countryName=%@", v4, v5, v6, a1);
    CFRelease(v3);
  }

  if (!ABAddressCopyCountryCodeForCountryName__countryCodeForCountryNameMappingDictionary)
  {
    v7 = [MEMORY[0x1E69967B8] addressFormats];
    Count = CFDictionaryGetCount(v7);
    v9 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
    v11 = Mutable;
    if (Count)
    {
      v12 = Mutable == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v13 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
      if (v13)
      {
        ABAddressCopyCountryCodeForCountryName_cold_1(v7, v13, Count, v11);
      }
    }

    v14 = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
    v15 = [MEMORY[0x1E69967B8] addressFormats];
    v16 = CFArrayGetCount(v11);
    if (v16)
    {
      v17 = v16;
      v18 = objc_opt_new();
      if (v17 >= 1)
      {
        for (i = 0; i != v17; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v11, i);
          Value = CFDictionaryGetValue(v15, ValueAtIndex);
          v22 = CFDictionaryGetValue(Value, @"COUNTRY");
          if (v22)
          {
            CFArrayAppendValue(v14, [objc_msgSend(MEMORY[0x1E69967B8] localizedStringForPostalAddressString:v22 returningNilIfNotFound:{0), "lowercaseString"}]);
          }
        }
      }
    }

    ABAddressCopyCountryCodeForCountryName__countryCodeForCountryNameMappingDictionary = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjects:v11 forKeys:v14];
    if (v11)
    {
      CFRelease(v11);
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

  v23 = [a1 lowercaseString];
  v24 = CFDictionaryGetValue(ABAddressCopyCountryCodeForCountryName__countryCodeForCountryNameMappingDictionary, v23);
  v25 = v24;
  if (v24)
  {
    CFRetain(v24);
  }

  if (ABLogAPIUsage())
  {
    _ABLog2(6, "CFStringRef ABAddressCopyCountryCodeForCountryName(CFStringRef)", 157, @">> ", @"countryCode=%@", v26, v27, v28, v25);
  }

  return v25;
}

void *ABCreateSingleLineStringForAddressDictionary(const __CFDictionary *a1, int a2)
{
  v4 = [CFDictionaryGetValue(a1 @"CountryCode")];
  if ([v4 length] != 2)
  {
    Value = CFDictionaryGetValue(a1, @"Country");
    v4 = ABAddressCopyCountryCodeForCountryName(Value);
  }

  if (!v4)
  {
    v4 = +[ABPhoneFormatting abDefaultCountryCode];
  }

  v6 = [MEMORY[0x1E69967B8] addressFormats];
  if (v6)
  {
    v6 = CFDictionaryGetValue(v6, v4);
  }

  v7 = [-[__CFDictionary valueForKey:](v6 valueForKey:{@"URL_FORMAT", "componentsSeparatedByString:", @", "}];
  v8 = objc_opt_new();
  v9 = [v7 count];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v15 = *MEMORY[0x1E695D978];
    do
    {
      v12 = [v7 objectAtIndex:v11];
      v13 = CFDictionaryGetValue(a1, v12);
      if ([v12 isEqualToString:@"Country"] && a2 && !objc_msgSend(v13, "length"))
      {
        v13 = [objc_msgSend(MEMORY[0x1E695DF58] "currentLocale")];
      }

      if ([v13 length])
      {
        if ([v8 length])
        {
          [v8 appendString:@" "];
        }

        [v8 appendString:v13];
      }

      ++v11;
    }

    while (v10 != v11);
  }

  [v8 replaceOccurrencesOfString:@"\n" withString:@" " options:2 range:{0, objc_msgSend(v8, "length")}];
  return v8;
}

void ABDeviceRegisterCallbackForFirstUnlock(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __ABDeviceRegisterCallbackForFirstUnlock_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (ABDeviceRegisterCallbackForFirstUnlock___once2 != -1)
  {
    dispatch_once(&ABDeviceRegisterCallbackForFirstUnlock___once2, block);
  }
}

uint64_t __ABDeviceRegisterCallbackForFirstUnlock_block_invoke(uint64_t result)
{
  if (__isBeforeFirstUnlockWithDataProtected == 1)
  {
    v1 = result;
    result = [MEMORY[0x1E6996770] isDevicePasscodeProtected];
    if (result)
    {
      result = [MEMORY[0x1E6996770] isDeviceUnlockedSinceBoot];
      __isBeforeFirstUnlockWithDataProtected = result ^ 1;
      if ((result & 1) == 0)
      {
        out_token = 0;
        v2 = [MEMORY[0x1E6996770] firstUnlockNotificationID];
        global_queue = dispatch_get_global_queue(0, 0);
        v4[0] = MEMORY[0x1E69E9820];
        v4[1] = 3221225472;
        v4[2] = __ABDeviceRegisterCallbackForFirstUnlock_block_invoke_2;
        v4[3] = &__block_descriptor_40_e8_v12__0i8l;
        v4[4] = *(v1 + 32);
        return notify_register_dispatch(v2, &out_token, global_queue, v4);
      }
    }

    else
    {
      __isBeforeFirstUnlockWithDataProtected = 0;
    }
  }

  return result;
}

uint64_t __ABDeviceRegisterCallbackForFirstUnlock_block_invoke_2(uint64_t a1, int token)
{
  state64 = 0;
  notify_get_state(token, &state64);
  if (__isBeforeFirstUnlockWithDataProtected != 1)
  {
    goto LABEL_6;
  }

  if (([MEMORY[0x1E6996770] isDevicePasscodeProtected] & 1) == 0)
  {
    __isBeforeFirstUnlockWithDataProtected = 0;
    goto LABEL_6;
  }

  result = [MEMORY[0x1E6996770] isDeviceUnlockedSinceBoot];
  __isBeforeFirstUnlockWithDataProtected = result ^ 1;
  if (((result ^ 1) & 1) == 0)
  {
LABEL_6:
    ABDiagnosticsEnabled();
    _ABLog2(4, "void ABDeviceRegisterCallbackForFirstUnlock(void (*)(void))_block_invoke_2", 42, 0, @"Invoking callback for first unlock", v4, v5, v6, v7);
    return (*(a1 + 32))();
  }

  return result;
}

id buildTokenTable(int a1)
{
  v21 = 10;
  if (!ABReturnDelimiterData)
  {
    ABReturnDelimiterData = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v21 length:1];
  }

  memset(&callBacks, 0, 24);
  callBacks.copyDescription = copyDescriptionCallBack;
  callBacks.equal = equalCallBack;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = CFArrayCreateMutable(0, 9, &callBacks);
  [v2 addObject:v3];
  CFRelease(v3);
  Token = createToken(@";", 4097, a1);
  CFArrayAppendValue(v3, Token);
  v5 = createToken(@":", 8193, a1);
  CFArrayAppendValue(v3, v5);
  v6 = createToken(@" ", 16385, a1);
  CFArrayAppendValue(v3, v6);
  v7 = createToken(@"=", 1025, a1);
  CFArrayAppendValue(v3, v7);
  v8 = createToken(@"\r", 32770, a1);
  CFArrayAppendValue(v3, v8);
  v9 = createToken(@"\n", 32769, a1);
  CFArrayAppendValue(v3, v9);
  v10 = createToken(@"\", 513, a1);
  CFArrayAppendValue(v3, v10);
  v11 = createToken(@".", 257, a1);
  CFArrayAppendValue(v3, v11);
  v12 = createToken(@",", 193, a1);
  CFArrayAppendValue(v3, v12);
  v13 = CFArrayCreateMutable(0, 1, &callBacks);
  [v2 addObject:v13];
  CFRelease(v13);
  v14 = createToken(@"END", 7, a1);
  CFArrayAppendValue(v13, v14);
  v15 = CFArrayCreateMutable(0, 2, &callBacks);
  [v2 addObject:v15];
  CFRelease(v15);
  v16 = createToken(@"BEGIN", 5, a1);
  CFArrayAppendValue(v15, v16);
  v17 = createToken(@"VCARD", 6, a1);
  CFArrayAppendValue(v15, v17);
  v18 = CFArrayCreateMutable(0, 1, &callBacks);
  [v2 addObject:v18];
  CFRelease(v18);
  v19 = createToken(@"VERSION", 2049, a1);
  CFArrayAppendValue(v18, v19);
  return v2;
}

_DWORD *createToken(__CFString *a1, int a2, int a3)
{
  v6 = malloc_type_malloc(0x18uLL, 0x1080040BEC857D6uLL);
  *v6 = a1;
  v6[2] = a2;
  v7 = [(__CFString *)a1 length];
  if (a3)
  {
    v8 = malloc_type_malloc(2 * v7 + 2, 0x1000040BDFB0063uLL);
    [(__CFString *)a1 getCharacters:v8];
  }

  else
  {
    v8 = malloc_type_malloc(v7 + 1, 0x100004077774924uLL);
    v9 = [(__CFString *)a1 length];
    v10 = [(__CFString *)a1 length];
    v12.location = 0;
    v12.length = v9;
    CFStringGetBytes(a1, v12, 0x600u, 0, 0, v8, v10 + 1, 0);
  }

  *(v6 + 2) = v8;
  return v6;
}

uint64_t ABIsDataAccess()
{
  if (dataAccessOnceToken != -1)
  {
    ABIsDataAccess_cold_1();
  }

  return ABIsDataAccess_result;
}

id __ABIsDataAccess_block_invoke()
{
  result = +[ABUtils mainBundleID];
  if (result)
  {
    result = CFEqual(result, @"com.apple.dataaccess.dataaccessd");
    v1 = result != 0;
  }

  else
  {
    v1 = 0;
  }

  ABIsDataAccess_result = v1;
  return result;
}

uint64_t ABIsDatabaseDoctor()
{
  if (databaseDoctorOnceToken != -1)
  {
    ABIsDatabaseDoctor_cold_1();
  }

  return ABIsDatabaseDoctor_result;
}

id __ABIsDatabaseDoctor_block_invoke()
{
  result = +[ABUtils processName];
  if (result)
  {
    result = [result isEqualToString:@"ABDatabaseDoctor"];
  }

  ABIsDatabaseDoctor_result = result;
  return result;
}

CFComparisonResult _SortPeople(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 320);
  if (v5 && ![v5 isValid])
  {
    return 0;
  }

  v6 = _sortOrdering;

  return ABPersonCompareNameOfPeople(a1, a2, v6);
}

double ABImageUtilsCenteredRectWithFullScreenRatioForImage(CGImage *a1)
{
  if (!a1)
  {
    return *MEMORY[0x1E695F058];
  }

  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  return ABImageUtilsCenteredRectWithFullScreenRatioForRect(0.0, 0.0, Width, Height);
}

double ABImageUtilsCenteredRectWithFullScreenRatioForRect(double a1, double a2, double a3, double a4)
{
  if (a3 / a4 >= 0.666666667)
  {
    v4 = ceil(a4 * 0.666666667);
  }

  else
  {
    v4 = a3;
  }

  return floor((a3 - v4) * 0.5);
}

double ABImageUtilsCenteredOverflowRectWithFullScreenRatioForRectWithAvailableSize(double result, double a2, double a3, double a4, double a5, double a6)
{
  if (a3 / a4 >= 0.666666667)
  {
    if (ceil(a3 / 0.666666667) > a6)
    {
      return floor(result + (a3 - a6 * 0.666666667) * 0.5);
    }
  }

  else
  {
    v7 = ceil(a4 * 0.666666667);
    if (v7 <= a5)
    {
      v8 = floor(result + (v7 - a3) * -0.5);
      result = 0.0;
      if (v8 > 0.0)
      {
        v9 = v7 + v8 - a5;
        v10 = floor(v8 - v9);
        if (v9 <= 0.0)
        {
          return v8;
        }

        else
        {
          return v10;
        }
      }
    }

    else
    {
      return 0.0;
    }
  }

  return result;
}

double ABImageUtilsCenteredSquareForRect(double a1, double a2, double a3, double a4)
{
  if (ABLogAPIUsage())
  {
    v12 = _isMainThread();
    v7 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CGRect ABImageUtilsCenteredSquareForRect(CGRect)", 182, v7, 0, v8, v9, v10, v12);
    CFRelease(v7);
  }

  if (a3 > a4)
  {
    return a1 + (a3 - a4) * 0.5;
  }

  return a1;
}

CGImageRef ABImageUtilsCreateImageFromData(const __CFData *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CGImageSourceCreateWithData(a1, 0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (CGImageSourceGetCount(v1))
  {
    pthread_once(&__thumbnailPropertiesOnce, __initializeThumbnailProperties);
    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v2, 0, __thumbnailProperties);
  }

  else
  {
    ThumbnailAtIndex = 0;
  }

  CFRelease(v2);
  return ThumbnailAtIndex;
}

CGImageRef ABImageUtilsCreateImageFromImageSourceWithSizeCropRectMaxSize(CGImageSource *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  keys[3] = *MEMORY[0x1E69E9840];
  if (!a1 || !CGImageSourceGetCount(a1))
  {
    return 0;
  }

  v28 = a5;
  v18 = *MEMORY[0x1E696DFE8];
  keys[0] = *MEMORY[0x1E696E000];
  keys[1] = v18;
  keys[2] = *MEMORY[0x1E696E100];
  v19 = fmin(a6 / a8, a7 / a9);
  values[0] = *MEMORY[0x1E695E4D0];
  values[1] = values[0];
  valuePtr = vcvtpd_s64_f64(fmax(a3, a2) / v19);
  v20 = *MEMORY[0x1E695E480];
  cf = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  v21 = CFDictionaryCreate(v20, keys, values, 3, 0, 0);
  if (v21)
  {
    v22 = v21;
    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(a1, 0, v21);
    if (ThumbnailAtIndex)
    {
      v24 = ThumbnailAtIndex;
      if (v19 >= 1.0)
      {
        a4 = round(a4 / v19);
        v25 = round(v28 / v19);
        a6 = a8;
        a7 = a9;
      }

      else
      {
        v25 = v28;
      }

      ImageFromImageWithCropRect = ABImageUtilsCreateImageFromImageWithCropRect(ThumbnailAtIndex, a4, v25, a6, a7);
      CFRelease(v24);
    }

    else
    {
      ImageFromImageWithCropRect = 0;
    }

    CFRelease(v22);
  }

  else
  {
    ImageFromImageWithCropRect = 0;
  }

  CFRelease(cf);
  return ImageFromImageWithCropRect;
}

CGImageRef ABImageUtilsCreateImageFromImageWithCropRect(CGImage *a1, double a2, double a3, double a4, double a5)
{
  if (!a1)
  {
    return 0;
  }

  v30 = CGRectStandardize(*&a2);
  v31 = CGRectIntegral(v30);
  DeviceRGB = 0;
  if (v31.size.width <= 0.0)
  {
    return DeviceRGB;
  }

  height = v31.size.height;
  if (v31.size.height <= 0.0)
  {
    return DeviceRGB;
  }

  x = v31.origin.x;
  y = v31.origin.y;
  width = v31.size.width;
  v11 = CGImageGetWidth(a1);
  v12 = CGImageGetHeight(a1);
  v32.origin.x = 0.0;
  v32.origin.y = 0.0;
  v32.size.width = v11;
  v32.size.height = v12;
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  v33 = CGRectIntersection(v32, v43);
  v34 = CGRectStandardize(v33);
  if (v34.size.width < width || v34.size.height < height)
  {
    DeviceRGB = 0;
    if (v34.size.width < 0.0)
    {
      return DeviceRGB;
    }

    if (v34.size.height < 0.0)
    {
      return DeviceRGB;
    }

    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    if (!DeviceRGB)
    {
      return DeviceRGB;
    }

    v14 = CGBitmapContextCreate(0, width, height, 8uLL, vcvtd_n_u64_f64(width, 2uLL), DeviceRGB, 0x2006u);
    CGColorSpaceRelease(DeviceRGB);
    if (v14)
    {
      CGContextSetFillColor(v14, ABImageUtilsCreateImageFromImageWithCropRect_black);
      v35.origin.x = 0.0;
      v35.origin.y = 0.0;
      v35.size.width = width;
      v35.size.height = height;
      CGContextFillRect(v14, v35);
      v36.origin.x = x;
      v36.origin.y = y;
      v36.size.width = width;
      v36.size.height = height;
      v15 = CGImageCreateWithImageInRect(a1, v36);
      if (v15)
      {
        v16 = v15;
        v44.origin.x = -x;
        v44.origin.y = -y;
        v37.origin.x = 0.0;
        v37.origin.y = 0.0;
        v37.size.width = width;
        v37.size.height = height;
        v44.size.width = v11;
        v44.size.height = v12;
        v38 = CGRectIntersection(v37, v44);
        v17 = v38.origin.x;
        v18 = v38.origin.y;
        v19 = v38.size.width;
        v20 = v38.size.height;
        memset(&v28, 0, sizeof(v28));
        CGAffineTransformMakeScale(&v28, 1.0, -1.0);
        memset(&v27, 0, sizeof(v27));
        CGAffineTransformMakeTranslation(&v27, 0.0, height);
        v26 = v28;
        v39.origin.x = v17;
        v39.origin.y = v18;
        v39.size.width = v19;
        v39.size.height = v20;
        v40 = CGRectApplyAffineTransform(v39, &v26);
        v26 = v27;
        v41 = CGRectApplyAffineTransform(v40, &v26);
        v42 = CGRectStandardize(v41);
        CGContextDrawImage(v14, v42, v16);
        DeviceRGB = CGBitmapContextCreateImage(v14);
        CGImageRelease(v16);
      }

      else
      {
        DeviceRGB = 0;
      }

      CFRelease(v14);
      return DeviceRGB;
    }

    return 0;
  }

  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;

  return CGImageCreateWithImageInRect(a1, *&v22);
}

uint64_t _ABImageUtilsImageIsNormalOrientation(const __CFData *a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = CGImageSourceCreateWithData(a1, 0);
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  v3 = CGImageSourceCopyPropertiesAtIndex(v1, 0, 0);
  if (v3)
  {
    v4 = v3;
    Value = CFDictionaryGetValue(v3, *MEMORY[0x1E696DE78]);
    if (Value)
    {
      valuePtr = 0;
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      v6 = valuePtr == 1;
    }

    else
    {
      v6 = 1;
    }

    CFRelease(v4);
  }

  else
  {
    v6 = 1;
  }

  CFRelease(v2);
  return v6;
}

uint64_t ABImageUtilsCopyImageSourceAndGetSizeFromData(const __CFData *a1, CGImageSource **a2, int *a3, int *a4)
{
  if (ABLogAPIUsage())
  {
    v22 = _isMainThread();
    v8 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABImageUtilsCopyImageSourceAndGetSizeFromData(CFDataRef, CGImageSourceRef *, int *, int *)", 279, v8, 0, v9, v10, v11, v22);
    CFRelease(v8);
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (!a1)
  {
    return 0;
  }

  v12 = CGImageSourceCreateWithData(a1, 0);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = CGImageSourceCopyPropertiesAtIndex(v12, 0, 0);
  v15 = v14 != 0;
  if (!v14)
  {
    goto LABEL_30;
  }

  v16 = v14;
  valuePtr = 0;
  Value = CFDictionaryGetValue(v14, *MEMORY[0x1E696DE78]);
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    v18 = valuePtr > 4;
  }

  else
  {
    v18 = 0;
  }

  v19 = CFDictionaryGetValue(v16, *MEMORY[0x1E696DED8]);
  if (v19 && CFNumberGetValue(v19, kCFNumberIntType, &valuePtr))
  {
    if (v18)
    {
      if (a4)
      {
        *a4 = valuePtr;
      }
    }

    else if (a3)
    {
      *a3 = valuePtr;
    }
  }

  v20 = CFDictionaryGetValue(v16, *MEMORY[0x1E696DEC8]);
  if (v20 && CFNumberGetValue(v20, kCFNumberIntType, &valuePtr))
  {
    if (v18)
    {
      if (a3)
      {
        *a3 = valuePtr;
      }
    }

    else if (a4)
    {
      *a4 = valuePtr;
    }
  }

  CFRelease(v16);
  if (a2)
  {
    *a2 = v13;
    return 1;
  }

  else
  {
LABEL_30:
    CFRelease(v13);
  }

  return v15;
}

BOOL ABImageUtilsIsImageDataInSyncCompatibleFormat(const __CFData *a1)
{
  values[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6963860];
  values[0] = *MEMORY[0x1E6963808];
  values[1] = v2;
  v3 = CFArrayCreate(*MEMORY[0x1E695E480], values, 2, 0);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  IsImageDataOfFormatInUTIs = ABImageUtilsIsImageDataOfFormatInUTIs(a1, v3);
  CFRelease(v4);
  return IsImageDataOfFormatInUTIs;
}

BOOL ABImageUtilsIsImageDataOfFormatInUTIs(const __CFData *a1, CFArrayRef theArray)
{
  v2 = 0;
  if (a1 && theArray)
  {
    Count = CFArrayGetCount(theArray);
    v6 = CGImageSourceCreateWithData(a1, 0);
    if (v6)
    {
      v7 = v6;
      Type = CGImageSourceGetType(v6);
      v2 = 0;
      if (Type && Count >= 1)
      {
        v9 = Type;
        v10 = 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v10 - 1);
          v12 = UTTypeConformsTo(v9, ValueAtIndex);
          v2 = v12 != 0;
          if (v10 >= Count)
          {
            break;
          }

          ++v10;
        }

        while (!v12);
      }

      CFRelease(v7);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

BOOL _ABImageUtilsCropRectMatchesOrignalSizeCropRectWithScalingFactor(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  if (a9 != 1.0)
  {
    a5 = floor(a5 * a9);
    a6 = floor(a6 * a9);
    a7 = ceil(a7 * a9);
    a8 = ceil(a8 * a9);
  }

  return CGRectEqualToRect(*&a1, *&a5);
}

BOOL ABImageUtilsOriginalSizeCropRectMatchesSyncedCropRect(uint64_t a1, const __CFData *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v40 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = 0;
  v11 = ABPersonCopyImageDataAndInvertedCropRect(a1, 2, &v25 + 1, &v25, &v24 + 1, &v24);
  v12 = SHIDWORD(v25);
  v13 = v25;
  v14 = SHIDWORD(v24);
  v15 = v24;
  v16 = ABOSLogGeneral();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134219776;
    *v27 = v12;
    *&v27[8] = 2048;
    *v28 = v13;
    *&v28[8] = 2048;
    v29 = v14;
    v30 = 2048;
    v31 = v15;
    v32 = 2048;
    v33 = a3;
    v34 = 2048;
    v35 = a4;
    v36 = 2048;
    v37 = a5;
    v38 = 2048;
    v39 = a6;
    _os_log_debug_impl(&dword_1B7EFB000, v16, OS_LOG_TYPE_DEBUG, "[Likeness Update] original cropRect {%.2f, %.2f, %.2f, %.2f} vs syncedCropRect: {%.2f, %.2f, %.2f, %.2f}", buf, 0x52u);
  }

  v41.origin.x = a3;
  v41.origin.y = a4;
  v41.size.width = a5;
  v41.size.height = a6;
  v42.origin.x = v12;
  v42.origin.y = v13;
  v42.size.width = v14;
  v42.size.height = v15;
  if (CGRectEqualToRect(v41, v42))
  {
    v17 = 1;
  }

  else
  {
    v23 = 0;
    SizeFromData = ABImageUtilsCopyImageSourceAndGetSizeFromData(v11, 0, 0, &v23 + 1);
    v19 = ABImageUtilsCopyImageSourceAndGetSizeFromData(a2, 0, 0, &v23);
    v17 = 0;
    if (SizeFromData)
    {
      if (v19)
      {
        v17 = _ABImageUtilsCropRectMatchesOrignalSizeCropRectWithScalingFactor(a3, a4, a5, a6, v12, v13, v14, v15, v23 / SHIDWORD(v23));
        v20 = ABOSLogGeneral();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v22 = @"NO";
          if (v17)
          {
            v22 = @"YES";
          }

          *buf = 67109634;
          *v27 = HIDWORD(v23);
          *&v27[4] = 1024;
          *&v27[6] = v23;
          *v28 = 2112;
          *&v28[2] = v22;
          _os_log_debug_impl(&dword_1B7EFB000, v20, OS_LOG_TYPE_DEBUG, "[Likeness Update] original height %i vs sync height: %i, cropRect is scaled down: %@", buf, 0x18u);
        }
      }
    }
  }

  return v17;
}

__CFData *ABImageUtilsCreateScaledImageData(CGImage *a1, unsigned int a2, const __CFString *a3, void *a4, double a5, double a6, double a7)
{
  if (a2 != 5 && a2 != 8)
  {
    ABImageUtilsCreateScaledImageData_cold_1();
  }

  ImageData = 0;
  if (a2 == 5)
  {
    v15 = 4102;
  }

  else
  {
    v15 = 8198;
  }

  v16 = a7 <= 0.0 || a1 == 0;
  if (!v16 && a6 > 0.0 && a5 > 0.0)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    if (DeviceRGB)
    {
      v18 = DeviceRGB;
      v19 = round(a5 * a7);
      v20 = round(a6 * a7);
      Width = CGImageGetWidth(a1);
      Height = CGImageGetHeight(a1);
      if (a3 && (v19 == Width ? (v23 = v20 == Height) : (v23 = 0), v23))
      {
        ImageData = _ABImageUtilsCreateImageData(a1, a3, a7);
        if (a4)
        {
          *a4 = CFRetain(a1);
        }
      }

      else
      {
        v24 = 4.0;
        if (a2 == 5)
        {
          v24 = 2.0;
        }

        v25 = CGBitmapContextCreate(0, v19, v20, a2, (v19 * v24), v18, v15);
        if (v25)
        {
          v26 = v25;
          v32.origin.x = 0.0;
          v32.origin.y = 0.0;
          v32.size.width = v19;
          v32.size.height = v20;
          CGContextDrawImage(v25, v32, a1);
          if (a3)
          {
            Image = CGBitmapContextCreateImage(v26);
            ImageData = _ABImageUtilsCreateImageData(Image, a3, a7);
            if (a4)
            {
              *a4 = Image;
            }

            else
            {
              CGImageRelease(Image);
            }
          }

          else
          {
            v28 = *MEMORY[0x1E695E480];
            Data = CGBitmapContextGetData(v26);
            BytesPerRow = CGBitmapContextGetBytesPerRow(v26);
            ImageData = CFDataCreate(v28, Data, (v19 * BytesPerRow));
          }

          CFRelease(v26);
        }

        else
        {
          ImageData = 0;
        }
      }

      CGColorSpaceRelease(v18);
    }

    else
    {
      return 0;
    }
  }

  return ImageData;
}

__CFData *_ABImageUtilsCreateImageData(CGImage *a1, const __CFString *a2, double a3)
{
  keys[2] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v6 = *MEMORY[0x1E695E480];
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  v8 = CGImageDestinationCreateWithData(Mutable, a2, 1uLL, 0);
  if (v8)
  {
    v9 = v8;
    if (a3 == 1.0)
    {
      CGImageDestinationAddImage(v8, a1, 0);
    }

    else
    {
      v14 = a3 * 72.0;
      v10 = CFNumberCreate(v6, kCFNumberDoubleType, &v14);
      v11 = *MEMORY[0x1E696D880];
      keys[0] = *MEMORY[0x1E696D888];
      keys[1] = v11;
      values[0] = v10;
      values[1] = v10;
      v12 = CFDictionaryCreate(v6, keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CGImageDestinationAddImage(v9, a1, v12);
      CFRelease(v12);
      CFRelease(v10);
    }

    CGImageDestinationFinalize(v9);
    CFRelease(v9);
  }

  if (Mutable && !CFDataGetLength(Mutable))
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

uint64_t ABPersonImageFormatGetPixelWidth(unsigned int a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return dword_1B7F7711C[a1];
  }
}

uint64_t ABPersonImageFormatGetPixelHeight(unsigned int a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return dword_1B7F77130[a1];
  }
}

float ABPersonImageFormatGetScale(int a1)
{
  result = 1.0;
  if (a1 == 4)
  {
    return 2.0;
  }

  return result;
}

BOOL ABPersonImageFormatIsLessThanOrEqualToPixelSize(unsigned int a1, signed int a2, signed int a3)
{
  if (a1 > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_1B7F7711C[a1];
  }

  if (v3 > a2)
  {
    return 0;
  }

  if (a1 > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = dword_1B7F77130[a1];
  }

  return v5 <= a3;
}

__CFData *ABImageUtilsCopySyncImageForPerson(const void *a1, unsigned int a2, _BYTE *a3, _DWORD *a4, int a5, int *a6, int *a7, int *a8, int *a9)
{
  v66 = *MEMORY[0x1E69E9840];
  v17 = ABOSLogGeneral();
  if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  *buf = 67109632;
  *v60 = ABRecordGetRecordID(a1);
  *&v60[4] = 1024;
  *&v60[6] = a2;
  *v61 = 1024;
  *&v61[2] = a5;
  _os_log_debug_impl(&dword_1B7EFB000, v17, OS_LOG_TYPE_DEBUG, "[Likeness Update] Enter ABImageUtilsCopySyncImageForPerson: ABRecordID = %i, maxSize = %i, allowOverflow = %i", buf, 0x14u);
  if (a3)
  {
LABEL_3:
    *a3 = 1;
  }

LABEL_4:
  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (a8)
  {
    *a8 = 0;
  }

  if (a9)
  {
    *a9 = 0;
  }

  if (a4)
  {
    *a4 = 2;
  }

  v57 = 0;
  v58 = 1.0;
  v55 = 0;
  v56 = 0;
  isrc = 0;
  v18 = ABPersonCopyImageDataAndInvertedCropRect(a1, 2, &v57 + 1, &v57, &v56 + 1, &v56);
  v19 = ABOSLogGeneral();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
  if (!v18)
  {
    if (v20)
    {
      ABImageUtilsCopySyncImageForPerson_cold_7();
      if (a3)
      {
        goto LABEL_33;
      }
    }

    else if (a3)
    {
LABEL_33:
      v27 = 0;
      *a3 = 0;
      return v27;
    }

    return 0;
  }

  if (v20)
  {
    v50 = [(__CFData *)v18 length];
    *buf = 134219008;
    *v60 = v50;
    *&v60[8] = 1024;
    *v61 = HIDWORD(v57);
    *&v61[4] = 1024;
    *v62 = v57;
    *&v62[4] = 1024;
    v63 = HIDWORD(v56);
    v64 = 1024;
    v65 = v56;
    _os_log_debug_impl(&dword_1B7EFB000, v19, OS_LOG_TYPE_DEBUG, "Original image has length = %lu with thumbnail crop rect (%i, %i, %i, %i)", buf, 0x24u);
  }

  if (ABLogDebugLevelEnabled())
  {
    -[__CFData writeToFile:atomically:](v18, "writeToFile:atomically:", [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/%i-origImage.jpg", ABRecordGetRecordID(a1)], 1);
  }

  if ((ABImageUtilsCopyImageSourceAndGetSizeFromData(v18, &isrc, &v55 + 1, &v55) & 1) == 0)
  {
    isrc = 0;
    v55 = 0;
    goto LABEL_31;
  }

  if (v55 < 1 || v55 <= 0)
  {
    if (isrc)
    {
      CFRelease(isrc);
      isrc = 0;
    }

LABEL_31:
    v28 = ABOSLogGeneral();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      ABImageUtilsCopySyncImageForPerson_cold_6();
      if (a3)
      {
        goto LABEL_33;
      }
    }

    else if (a3)
    {
      goto LABEL_33;
    }

    return 0;
  }

  v52 = a2;
  v21 = *MEMORY[0x1E6963860];
  Type = CGImageSourceGetType(isrc);
  v23 = UTTypeConformsTo(v21, Type);
  if (v23 && (ImageAtIndex = CGImageSourceCreateImageAtIndex(isrc, 0, 0)) != 0)
  {
    v25 = ImageAtIndex;
    AlphaInfo = CGImageGetAlphaInfo(ImageAtIndex);
    v51 = (AlphaInfo > kCGImageAlphaNoneSkipFirst) | (0x1Eu >> AlphaInfo);
    CFRelease(v25);
  }

  else
  {
    LOBYTE(v51) = 0;
  }

  v30 = ABPersonCopyImageDataAndCropRect(a1, 5, 0, 0, 0, 0);
  if (v30)
  {
    v27 = v30;
    v31 = ABOSLogGeneral();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      ABImageUtilsCopySyncImageForPerson_cold_1();
    }

    if (ABLogDebugLevelEnabled())
    {
      -[__CFData writeToFile:atomically:](v27, "writeToFile:atomically:", [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/%i-savedSyncImage.jpg", ABRecordGetRecordID(a1)], 1);
    }

    v53 = 0;
    if (ABImageUtilsCopyImageSourceAndGetSizeFromData(v27, 0, &v53 + 1, &v53))
    {
      v58 = v53 / v55;
      if (vabdd_f64(v58, SHIDWORD(v53) / SHIDWORD(v55)) > 1.0)
      {
        v32 = ABOSLogGeneral();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109888;
          *v60 = HIDWORD(v53);
          *&v60[4] = 1024;
          *&v60[6] = v53;
          *v61 = 1024;
          *&v61[2] = HIDWORD(v55);
          *v62 = 1024;
          *&v62[2] = v55;
          _os_log_error_impl(&dword_1B7EFB000, v32, OS_LOG_TYPE_ERROR, "[Likeness Update] ABImageUtilsCopySyncImageForPerson: inconsistent sync image ratio (%ix%i) vs original image ratio (%ix%i). Crop rect will be messed up", buf, 0x1Au);
          if (!a3)
          {
            goto LABEL_77;
          }

LABEL_76:
          *a3 = 0;
          goto LABEL_77;
        }
      }

LABEL_75:
      if (!a3)
      {
        goto LABEL_77;
      }

      goto LABEL_76;
    }

    v41 = ABOSLogGeneral();
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_75;
    }

    ABImageUtilsCopySyncImageForPerson_cold_2();
    if (a3)
    {
      goto LABEL_76;
    }

LABEL_77:
    v42 = v58;
    if (v58 == 1.0)
    {
      if (a6)
      {
        *a6 = HIDWORD(v57);
      }

      if (a7)
      {
        *a7 = v57;
      }

      if (a8)
      {
        *a8 = HIDWORD(v56);
      }

      if (!a9)
      {
        goto LABEL_95;
      }

      v43 = v56;
    }

    else
    {
      if (a6)
      {
        *a6 = vcvtmd_s64_f64(v58 * SHIDWORD(v57));
      }

      if (a7)
      {
        *a7 = vcvtmd_s64_f64(v42 * v57);
      }

      if (a8)
      {
        *a8 = vcvtpd_s64_f64(v42 * SHIDWORD(v56));
      }

      if (!a9)
      {
        goto LABEL_95;
      }

      v43 = vcvtpd_s64_f64(v42 * v56);
    }

    *a9 = v43;
LABEL_95:
    if (ABLogDebugLevelEnabled())
    {
      -[__CFData writeToFile:atomically:](v27, "writeToFile:atomically:", [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/%i-syncImage.jpg", ABRecordGetRecordID(a1)], 1);
    }

    ABPersonSetImageHashForImageData(a1, v27, 0);
    goto LABEL_98;
  }

  if ((_ABImageUtilsImageIsNormalOrientation(v18) & 1) == 0)
  {
    v33 = ABOSLogGeneral();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      ABImageUtilsCopySyncImageForPerson_cold_3();
    }

    ImageFromData = ABImageUtilsCreateImageFromData(v18);
    v35 = ImageFromData;
    if (v23)
    {
      v36 = @"public.png";
    }

    else
    {
      v36 = @"public.jpeg";
    }

    v18 = _ABImageUtilsCreateImageData(ImageFromData, v36, 1.0);
    if (v35)
    {
      CFRelease(v35);
    }

    if (ABLogDebugLevelEnabled())
    {
      -[__CFData writeToFile:atomically:](v18, "writeToFile:atomically:", [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/%i-normalizedOrigImage.jpg", ABRecordGetRecordID(a1)], 1);
    }
  }

  v37 = [(__CFData *)v18 length];
  if (v18 && v37 <= v52 && ABImageUtilsIsImageDataInSyncCompatibleFormat(v18))
  {
    v38 = ABOSLogGeneral();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      ABImageUtilsCopySyncImageForPerson_cold_4();
    }

    v27 = v18;
    if (v27)
    {
      goto LABEL_77;
    }
  }

  v27 = _copyImageDataReducedUpToSize(v18, isrc, &v58, HIDWORD(v55), v55, v52, a5, v51 & 1);
  if (v27 == 0 && (v51 & 1) != 0)
  {
    v39 = ABOSLogGeneral();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7EFB000, v39, OS_LOG_TYPE_DEFAULT, "[Likeness Update] Scaling failed to reduce to max size, trying again without alpha preservation by allowing JPEG conversion.", buf, 2u);
    }

    v27 = _copyImageDataReducedUpToSize(v18, isrc, &v58, HIDWORD(v55), v55, v52, a5, 0);
  }

  if (v27)
  {
    goto LABEL_77;
  }

  if (a3)
  {
    *a3 = 0;
  }

  v40 = ABOSLogGeneral();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    ABImageUtilsCopySyncImageForPerson_cold_5(v18, v52, v40);
  }

  v27 = 0;
LABEL_98:
  v44 = ABOSLogGeneral();
  if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_109;
  }

  v45 = [(__CFData *)v27 length];
  if (a6)
  {
    v46 = *a6;
    if (a7)
    {
      goto LABEL_101;
    }
  }

  else
  {
    v46 = -1;
    if (a7)
    {
LABEL_101:
      v47 = *a7;
      if (a8)
      {
        goto LABEL_102;
      }

LABEL_106:
      v48 = -1;
      if (a9)
      {
        goto LABEL_103;
      }

LABEL_107:
      v49 = -1;
      goto LABEL_108;
    }
  }

  v47 = -1;
  if (!a8)
  {
    goto LABEL_106;
  }

LABEL_102:
  v48 = *a8;
  if (!a9)
  {
    goto LABEL_107;
  }

LABEL_103:
  v49 = *a9;
LABEL_108:
  *buf = 134219008;
  *v60 = v45;
  *&v60[8] = 1024;
  *v61 = v46;
  *&v61[4] = 1024;
  *v62 = v47;
  *&v62[4] = 1024;
  v63 = v48;
  v64 = 1024;
  v65 = v49;
  _os_log_impl(&dword_1B7EFB000, v44, OS_LOG_TYPE_DEFAULT, "[Likeness Update] Exit ABImageUtilsCopySyncImageForPerson: sync image length = %lu with thumbnail crop rect (%i, %i, %i, %i)", buf, 0x24u);
LABEL_109:
  if (isrc)
  {
    CFRelease(isrc);
  }

  return v27;
}

__CFData *_copyImageDataReducedUpToSize(const __CFData *a1, uint64_t a2, double *a3, uint64_t a4, int a5, unsigned int a6, int a7, int a8)
{
  if (a1 && a7 && (a8 & 1) == 0)
  {
    if (ABDiagnosticsEnabled())
    {
      _ABLog2(7, "NSData *_copyImageDataReducedUpToSize(NSData *, CGImageSourceRef, CGFloat *, int, int, unsigned int, BOOL, BOOL)", 716, 0, @"Trying to jpeg compresss the original image.", v10, v11, v12, v61);
    }

    v65 = *MEMORY[0x1E696D338];
    v13 = 0.8;
    v14 = 0.800000012;
    do
    {
      v15 = CGImageSourceCreateWithData(a1, 0);
      if (v15)
      {
        v16 = v15;
        if (CGImageSourceGetCount(v15) && (v17 = CGImageSourceCopyPropertiesAtIndex(v16, 0, 0), (ImageAtIndex = CGImageSourceCreateImageAtIndex(v16, 0, 0)) != 0))
        {
          v19 = ImageAtIndex;
          v20 = objc_opt_new();
          v21 = CGImageDestinationCreateWithData(v20, @"public.jpeg", 1uLL, 0);
          if (v21)
          {
            v22 = v21;
            v23 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v17];
            *&v24 = v13;
            [v23 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v24), v65}];
            CGImageDestinationAddImage(v22, v19, v23);
            CGImageDestinationFinalize(v22);
            CFRelease(v22);
          }

          CGImageRelease(v19);
        }

        else
        {
          v20 = 0;
        }

        CFRelease(v16);
      }

      else
      {
        v20 = 0;
      }

      if (ABDiagnosticsEnabled())
      {
        [(__CFData *)v20 length];
        _ABLog2(7, "NSData *_copyImageDataReducedUpToSize(NSData *, CGImageSourceRef, CGFloat *, int, int, unsigned int, BOOL, BOOL)", 719, 0, @"Original image at quality %f has length %lu", v25, v26, v27, *&v14);
      }

      if (v20)
      {
        if ([(__CFData *)v20 length]< a6)
        {
          return v20;
        }

        CFRelease(v20);
      }

      v13 = v14 + -0.2;
      v14 = v13;
    }

    while (v13 > 0.0);
  }

  if (a1)
  {
    if (ABDiagnosticsEnabled())
    {
      _ABLog2(7, "NSData *_copyImageDataReducedUpToSize(NSData *, CGImageSourceRef, CGFloat *, int, int, unsigned int, BOOL, BOOL)", 731, 0, @"Trying to scale down the original image.", v28, v29, v30, v61);
    }

    v31 = a4;
    if (a2)
    {
      v32 = a4;
      v33 = a5;
      if (a4 <= a5)
      {
        v34 = a5;
      }

      else
      {
        v34 = a4;
      }

      if (a4 >= a5)
      {
        v32 = a5;
      }

      v35 = v32 / v34;
      v36 = @"public.jpeg";
      if (a8)
      {
        v36 = @"public.png";
      }

      typea = v36;
      v37 = a6;
      v66 = *MEMORY[0x1E696D338];
      v38 = 1024;
      v39 = "NSData *_copyImageDataReducedUpToSize(NSData *, CGImageSourceRef, CGFloat *, int, int, unsigned int, BOOL, BOOL)";
      v63 = a3;
      do
      {
        v40 = v38;
        if (v34 <= v38)
        {
          v20 = 0;
        }

        else
        {
          if (v34 == v33)
          {
            v41 = (v35 * v40);
          }

          else
          {
            v41 = v38;
          }

          if (v34 == v33)
          {
            v42 = v38;
          }

          else
          {
            v42 = (v35 * v40);
          }

          v43 = CGImageSourceCreateWithData(a1, 0);
          if (v43)
          {
            v44 = v43;
            if (CGImageSourceGetCount(v43))
            {
              v45 = v37;
              v46 = v39;
              v47 = CGImageSourceCopyPropertiesAtIndex(v44, 0, 0);
              v48 = CGImageSourceCreateImageAtIndex(v44, 0, 0);
              if (v48)
              {
                v49 = v48;
                if (v41)
                {
                  v50 = v42 == 0;
                }

                else
                {
                  v50 = 1;
                }

                if (!v50)
                {
                  v51 = CGImageCreateByScaling();
                  CFRelease(v49);
                  v49 = v51;
                }

                v20 = objc_opt_new();
                v52 = CGImageDestinationCreateWithData(v20, typea, 1uLL, 0);
                if (v52)
                {
                  v53 = v52;
                  v54 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v47];
                  LODWORD(v55) = 0.5;
                  [v54 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v55), v66}];
                  CGImageDestinationAddImage(v53, v49, v54);
                  CGImageDestinationFinalize(v53);
                  CFRelease(v53);
                }

                CGImageRelease(v49);
                v31 = a4;
              }

              else
              {
                v20 = 0;
              }

              v39 = v46;
              v37 = v45;
              a3 = v63;
            }

            else
            {
              v20 = 0;
            }

            CFRelease(v44);
            if (!a3)
            {
              goto LABEL_60;
            }
          }

          else
          {
            v20 = 0;
            if (!a3)
            {
              goto LABEL_60;
            }
          }

          *a3 = v42 / v33;
        }

LABEL_60:
        if (ABDiagnosticsEnabled())
        {
          [(__CFData *)v20 length];
          _ABLog2(7, v39, 739, 0, @"Original image with size (%i, %i) at %d max edge has length %lu, scalingFactor = %f", v56, v57, v58, v31);
        }

        if (v20)
        {
          if ([(__CFData *)v20 length]< v37)
          {
            return v20;
          }

          CFRelease(v20);
        }

        v59 = v38 > 0x1FF;
        v38 >>= 1;
      }

      while (v59);
    }
  }

  return 0;
}

CFDictionaryRef __initializeThumbnailProperties()
{
  keys[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E696DFE8];
  keys[0] = *MEMORY[0x1E696E000];
  keys[1] = v0;
  values[0] = *MEMORY[0x1E695E4D0];
  values[1] = values[0];
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 2, 0, 0);
  __thumbnailProperties = result;
  return result;
}

void OUTLINED_FUNCTION_0_8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

CFArrayRef ABPersonCreatePeopleInSourceWithVCardRepresentation(ABRecordRef source, CFDataRef vCardData)
{
  if (ABLogAPIUsage())
  {
    v11 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFArrayRef ABPersonCreatePeopleInSourceWithVCardRepresentation(ABRecordRef, CFDataRef)", 19, v4, 0, v5, v6, v7, v11);
    CFRelease(v4);
  }

  v8 = [[ABVCardParser alloc] initWithData:vCardData];
  [(ABVCardParser *)v8 setSource:source];
  v9 = [(ABVCardParser *)v8 sortedPeopleAndProperties:0];

  return v9;
}

CFDataRef ABPersonCreateVCardRepresentationWithPeople(CFArrayRef people)
{
  if (ABLogAPIUsage())
  {
    v8 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFDataRef ABPersonCreateVCardRepresentationWithPeople(CFArrayRef)", 31, v2, 0, v3, v4, v5, v8);
    CFRelease(v2);
  }

  v6 = [ABVCardExporter vCardRepresentationOfRecords:people mode:1];

  return v6;
}

uint64_t ABChangeHistoryCreateTables(uint64_t a1, int a2)
{
  if (a2)
  {
    CPSqliteConnectionPerformSQL();
    CPSqliteConnectionPerformSQL();
    CPSqliteConnectionPerformSQL();
  }

  CPSqliteConnectionPerformSQL();
  CPSqliteConnectionPerformSQL();
  CPSqliteConnectionPerformSQL();
  CPSqliteConnectionPerformSQL();
  CPSqliteConnectionPerformSQL();
  CPSqliteConnectionPerformSQL();

  return CPSqliteConnectionPerformSQL();
}

uint64_t ABChangeHistoryMigrateAddingSaveTimestamp()
{
  CPSqliteConnectionPerformSQL();
  CPSqliteConnectionPerformSQL();
  CPSqliteConnectionPerformSQL();
  CPSqliteConnectionPerformSQL();
  CPSqliteConnectionPerformSQL();
  CPSqliteConnectionPerformSQL();
  v0 = CPSqliteConnectionStatementForSQL();
  if (v0)
  {
    v1 = *(v0 + 8);
    Current = CFAbsoluteTimeGetCurrent();
    sqlite3_bind_double(v1, 1, Current);
    CPSqliteStatementPerform();
    CPSqliteStatementReset();
  }

  CPSqliteConnectionPerformSQL();
  return 1;
}

uint64_t ABChangeHistoryRegisterClientForSource(uint64_t a1, const __CFString *a2, const void *a3)
{
  if (!a2)
  {
    ABLogSimulateCrashReport(@"Unknown client registering for AB change history, creating simulated crash report.");
    ABLogDisplayInternalAlert(@"Unknown client registering for AB change history, creating simulated crash report.");
    return 0xFFFFFFFFLL;
  }

  WriterConnection = _getWriterConnection(*(a1 + 16), "int ABChangeHistoryRegisterClientForSource(ABAddressBookRef, CFStringRef, ABRecordRef)");
  if (!WriterConnection)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = WriterConnection;
  v20 = 0;
  CString = _getCString(a2, &v20);
  if (!CString)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = CString;
  if (a3)
  {
    RecordID = ABRecordGetRecordID(a3);
  }

  else
  {
    RecordID = -1;
  }

  SequenceNumber = CPRecordStoreGetSequenceNumber();
  v13 = CPSqliteConnectionStatementForSQL();
  if (v13)
  {
    v14 = v13;
    sqlite3_bind_text(*(v13 + 8), 1, v9, -1, 0);
    sqlite3_bind_int(*(v14 + 8), 2, RecordID);
    sqlite3_bind_text(*(v14 + 8), 3, v9, -1, 0);
    sqlite3_bind_int(*(v14 + 8), 4, RecordID);
    v15 = *(v14 + 8);
    Current = CFAbsoluteTimeGetCurrent();
    sqlite3_bind_double(v15, 5, Current);
    CPSqliteStatementPerform();
    CPSqliteStatementReset();
  }

  _commitWriterConnection(v7, "int ABChangeHistoryRegisterClientForSource(ABAddressBookRef, CFStringRef, ABRecordRef)");
  if (v20 == 1)
  {
    free(v9);
  }

  if (ABLogChangeHistory() && ABDiagnosticsEnabled())
  {
    _dumpTable(a1, @"ClientCursor");
    _ABLog2(6, "int ABChangeHistoryRegisterClientForSource(ABAddressBookRef, CFStringRef, ABRecordRef)", 191, 0, @"clientIdentifier = %@, storeID = %i\n>> latestSequenceNumber = %i\n%@", v17, v18, v19, a2);
  }

  return SequenceNumber;
}

UInt8 *_getCString(const __CFString *a1, _BYTE *a2)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (!CStringPtr)
  {
    Length = CFStringGetLength(a1);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    usedBufLen = 0;
    CStringPtr = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
    *a2 = 1;
    v9.location = 0;
    v9.length = Length;
    CFStringGetBytes(a1, v9, 0x8000100u, 0, 0, CStringPtr, MaximumSizeForEncoding, &usedBufLen);
    CStringPtr[usedBufLen] = 0;
  }

  return CStringPtr;
}

id ABChangeHistoryCopyAllRegisteredClientIdentifiers()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  CPRecordStoreGetDatabase();
  CPSqliteDatabaseConnectionForWriting();
  if (CPSqliteConnectionStatementForSQL())
  {
    CPSqliteStatementSendResults();
    CPSqliteStatementReset();
  }

  if (ABLogChangeHistory() && ABDiagnosticsEnabled())
  {
    _ABLog2(6, "CFArrayRef ABChangeHistoryCopyAllRegisteredClientIdentifiers(ABAddressBookRef)", 227, 0, @">> clientIdentifiers = %@", v1, v2, v3, v0);
  }

  return v0;
}

uint64_t _allClientsRowHandler(uint64_t a1, void *a2)
{
  v3 = sqlite3_column_text(*(a1 + 8), 0);
  if (v3)
  {
    [a2 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v3)}];
  }

  return 0;
}

void ABChangeHistoryUnregisterClientForSource(uint64_t a1, const __CFString *a2, ABRecordRef record)
{
  if (record)
  {
    RecordID = ABRecordGetRecordID(record);
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    RecordID = -1;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  WriterConnection = _getWriterConnection(*(a1 + 16), "void ABChangeHistoryUnregisterClientForSource(ABAddressBookRef, CFStringRef, ABRecordRef)");
  if (!WriterConnection)
  {
    return;
  }

  v8 = WriterConnection;
  v15 = 0;
  CString = _getCString(a2, &v15);
  v10 = CPSqliteConnectionStatementForSQL();
  if (v10)
  {
    v11 = v10;
    sqlite3_bind_text(*(v10 + 8), 1, CString, -1, 0);
    if (record)
    {
      sqlite3_bind_int(*(v11 + 8), 2, RecordID);
    }

    CPSqliteStatementPerform();
    CPSqliteStatementReset();
  }

  _commitWriterConnection(v8, "void ABChangeHistoryUnregisterClientForSource(ABAddressBookRef, CFStringRef, ABRecordRef)");
  if (v15 == 1)
  {
    free(CString);
  }

LABEL_12:
  if (ABLogChangeHistory())
  {
    if (ABDiagnosticsEnabled())
    {
      _dumpTable(a1, @"ClientCursor");
      _ABLog2(6, "void ABChangeHistoryUnregisterClientForSource(ABAddressBookRef, CFStringRef, ABRecordRef)", 272, 0, @"clientIdentifier = %@, storeID = %i\n%@", v12, v13, v14, a2);
    }
  }
}

void ABChangeHistorySetAddressBookClientIdentifier(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 344);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 344) = 0;
  }

  if (cf)
  {
    CFRetain(cf);
    *(a1 + 344) = cf;
  }

  if (ABLogChangeHistory())
  {
    if (ABDiagnosticsEnabled())
    {
      _ABLog2(6, "void ABChangeHistorySetAddressBookClientIdentifier(ABAddressBookRef, CFStringRef)", 295, 0, @"clientIdentifier = %@", v5, v6, v7, cf);
    }
  }
}

CFStringRef ABChangeHistoryCopyAddressBookClientIdentifier(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 344)) != 0)
  {
    return CFStringCreateCopy(0, v1);
  }

  else
  {
    return 0;
  }
}

void ABChangeHistorySetSaveTimestamp(uint64_t a1, double a2)
{
  *(a1 + 352) = a2;
  if (ABLogChangeHistory())
  {
    if (ABDiagnosticsEnabled())
    {
      v3 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
      _ABLog2(6, "void ABChangeHistorySetSaveTimestamp(ABAddressBookRef, CFAbsoluteTime)", 314, 0, @"saveTimestamp = %@", v4, v5, v6, v3);
    }
  }
}

void ABChangeHistoryAssociateSequenceNumberWithClient(double Current, uint64_t a2, int a3, const __CFString *a4)
{
  v9 = 0;
  CString = _getCString(a4, &v9);
  if (Current == 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
  }

  v7 = CPSqliteConnectionStatementForSQL();
  if (v7)
  {
    v8 = v7;
    sqlite3_bind_text(*(v7 + 8), 1, CString, -1, 0);
    sqlite3_bind_int(*(v8 + 8), 2, a3);
    sqlite3_bind_double(*(v8 + 8), 3, Current);
    CPSqliteStatementPerform();
    CPSqliteStatementReset();
  }

  if (v9 == 1)
  {

    free(CString);
  }
}

void *ABChangeHistoryGetEntityChangesSinceSequenceNumberForClient(void *a1, uint64_t a2, void *a3, unsigned int a4, uint64_t a5, uint64_t a6, const __CFString *a7, const void *a8)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v18[0] = a7;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  }

  else
  {
    v16 = 0;
  }

  return ABChangeHistoryGetChanges(a1, a2, a3, a4, a5, a6, a7, v16, a8);
}

void *ABChangeHistoryGetChanges(void *a1, uint64_t a2, void *a3, unsigned int a4, uint64_t a5, uint64_t a6, const __CFString *a7, uint64_t a8, const void *a9)
{
  v137[1] = *MEMORY[0x1E69E9840];
  v100 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:13];
  v129 = 0;
  if (a7)
  {
    CString = _getCString(a7, &v129);
    if (a9)
    {
LABEL_3:
      RecordID = ABRecordGetRecordID(a9);
      goto LABEL_6;
    }
  }

  else
  {
    CString = 0;
    if (a9)
    {
      goto LABEL_3;
    }
  }

  RecordID = 0xFFFFFFFFLL;
LABEL_6:
  v99 = a2;
  if (ABLogChangeHistory())
  {
    if (ABDiagnosticsEnabled())
    {
      v97 = ABLogStringForBool(a4 & 1);
      v17 = ABLogStringForBool((a4 >> 1) & 1);
      v18 = a5;
      a5 = RecordID;
      v19 = a7;
      v20 = a6;
      v21 = ABLogStringForBool((a4 >> 2) & 1);
      v79 = ABLogStringForBool((a4 >> 3) & 1);
      v80 = ABLogStringForStringArray(a3);
      v77 = v17;
      v78 = v21;
      a6 = v20;
      a7 = v19;
      RecordID = a5;
      LODWORD(a5) = v18;
      v75 = a6;
      v76 = v97;
      v73 = v99;
      v74 = v18;
      v72 = RecordID;
      _ABLog2(6, "CFDictionaryRef ABChangeHistoryGetChanges(ABAddressBookRef, ABChangeHistoryEntityType, CFArrayRef, ABChangeHistoryOptions, int, int, CFStringRef, CFArrayRef, ABRecordRef)", 715, 0, @"clientIdentifier = %@, storeID = %i, entityType = %i, sequenceNumber = %i, recordID = %i, compressChanges = %@, unifyResults = %@, linkingResults = %@, meCardResults = %@, changeKeys = %@", v22, v23, v24, a7);
    }

    v98 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:1000];
    if ((a4 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v98 = 0;
    if ((a4 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if (([a3 containsObject:@"RecordGUIDs"] & 1) == 0)
  {
    v25 = [MEMORY[0x1E695DFA8] setWithArray:a3];
    [v25 addObject:@"RecordGUIDs"];
    if ((a4 & 2) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

LABEL_13:
  v25 = 0;
  if ((a4 & 2) == 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  if (([a3 containsObject:@"PersonLinks"] & 1) == 0)
  {
    if (!v25)
    {
      v25 = [MEMORY[0x1E695DFA8] setWithArray:a3];
    }

    [v25 addObject:@"PersonLinks"];
  }

LABEL_20:
  if ((a4 & 4) != 0 && (![a3 containsObject:@"LinkToPersonUUIDs"] || (objc_msgSend(a3, "containsObject:", @"PersonLinkUUIDs") & 1) == 0))
  {
    if (!v25)
    {
      v25 = [MEMORY[0x1E695DFA8] setWithArray:a3];
    }

    [v25 addObject:@"LinkToPersonUUIDs"];
    [v25 addObject:@"PersonLinkUUIDs"];
  }

  if ((a4 & 8) != 0 && ([a3 containsObject:@"RecordGUIDs"] & 1) == 0)
  {
    v25 = [MEMORY[0x1E695DFA8] setWithArray:a3];
    [v25 addObject:@"RecordGUIDs"];
  }

  if (v25)
  {
    a3 = [v25 allObjects];
  }

  CPRecordStoreGetDatabase();
  v26 = CPSqliteDatabaseConnectionForReadingWithSqlite3OpenFlags();
  context = a1;
  SequenceNumber = CPRecordStoreGetSequenceNumber();
  v128 = 0;
  v92 = v26;
  v27 = CPSqliteConnectionStatementForSQL();
  if (!v27)
  {
    v33 = v99;
    goto LABEL_58;
  }

  v28 = v27;
  sqlite3_bind_text(*(v27 + 8), 1, CString, -1, 0);
  sqlite3_bind_int(*(v28 + 8), 2, RecordID);
  v29 = CPSqliteStatementIntegerResult();
  if (IsRunningInExchangesyncd_onceToken != -1)
  {
    ABChangeHistoryGetChanges_cold_1();
  }

  v30 = RecordID;
  RecordID = a7;
  if (IsRunningInExchangesyncd_isRunningInExchangesyncd == 1)
  {
    v31 = a6;
    v32 = a5 == -1 || v29 <= a5;
LABEL_45:
    v34 = !v32;
    goto LABEL_48;
  }

  if (a5 != -1 || v29 != -1)
  {
    v31 = a6;
    v32 = a5 <= 0 || v29 <= a5;
    goto LABEL_45;
  }

  v31 = a6;
  v34 = 1;
LABEL_48:
  [v100 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v34), @"ChangesTruncated"}];
  if (ABLogChangeHistory())
  {
    [v98 appendFormat:@"    %@ = %@\n", @"ChangesTruncated", ABLogStringForBool(v34)];
  }

  CPSqliteStatementReset();
  LODWORD(a6) = v31;
  a7 = RecordID;
  LODWORD(RecordID) = v30;
  if (v34)
  {
    v33 = v99;
    v35 = v100;
    MultiValueDeletesInSourceFromSequenceNumberExcludingClientIdentifer = SequenceNumber;
    v36 = v98;
    goto LABEL_116;
  }

  v33 = v99;
  if (a5 == -1 && v29 != -1)
  {
    if (ABLogChangeHistory() && ABDiagnosticsEnabled())
    {
      _ABLog2(6, "CFDictionaryRef ABChangeHistoryGetChanges(ABAddressBookRef, ABChangeHistoryEntityType, CFArrayRef, ABChangeHistoryOptions, int, int, CFStringRef, CFArrayRef, ABRecordRef)", 760, 0, @"using latest consumed sequenceNumber = %i", v38, v39, v40, v29);
    }

    LODWORD(a5) = v29;
  }

LABEL_58:
  v126 = 0;
  v127 = 0;
  v125 = 0;
  v124 = 0;
  v122 = 0;
  v123 = 0;
  v120 = 0;
  theArray = 0;
  v118 = 0;
  v119 = 0;
  v116 = 0;
  v117 = 0;
  v115 = 0;
  if (v33 != 2)
  {
    if (RecordID == -1)
    {
      if (a6 == -1)
      {
        MultiValueDeletesInSourceFromSequenceNumberExcludingClientIdentifer = SequenceNumber;
        if (a7)
        {
          v41 = v104;
          v104[0] = MEMORY[0x1E69E9820];
          v104[1] = 3221225472;
          v104[2] = __ABChangeHistoryGetChanges_block_invoke_3;
          v104[3] = &__block_descriptor_48_e66_v16__0__CPSqliteStatement___CPSqliteConnection___sqlite3_stmt_dB_8l;
          v104[4] = CString;
          v105 = a5;
          v106 = v33;
        }

        else
        {
          v41 = v102;
          v102[0] = MEMORY[0x1E69E9820];
          v102[1] = 3221225472;
          v102[2] = __ABChangeHistoryGetChanges_block_invoke_4;
          v102[3] = &__block_descriptor_44_e66_v16__0__CPSqliteStatement___CPSqliteConnection___sqlite3_stmt_dB_8l;
          v103 = a5;
          v102[4] = a8;
        }

        goto LABEL_66;
      }

      v42 = a6;
      v41 = v107;
      v107[0] = MEMORY[0x1E69E9820];
      v107[1] = 3221225472;
      v107[2] = __ABChangeHistoryGetChanges_block_invoke_2;
      v107[3] = &__block_descriptor_52_e66_v16__0__CPSqliteStatement___CPSqliteConnection___sqlite3_stmt_dB_8l;
      v108 = a5;
      v109 = v42;
      v107[4] = CString;
      v110 = v33;
    }

    else
    {
      v41 = v111;
      v111[0] = MEMORY[0x1E69E9820];
      v111[1] = 3221225472;
      v111[2] = __ABChangeHistoryGetChanges_block_invoke;
      v111[3] = &__block_descriptor_52_e66_v16__0__CPSqliteStatement___CPSqliteConnection___sqlite3_stmt_dB_8l;
      v112 = RecordID;
      v113 = a5;
      v111[4] = CString;
      v114 = v33;
    }

    MultiValueDeletesInSourceFromSequenceNumberExcludingClientIdentifer = SequenceNumber;
LABEL_66:
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    if ([a3 containsObject:@"RecordGUIDs"])
    {
      *&v133 = "guid";
      *&v130 = &theArray;
      v43 = 1;
    }

    else
    {
      v43 = 0;
    }

    if ([a3 containsObject:@"ExternalIDs"])
    {
      *(&v133 | (8 * v43)) = "ExternalIdentifier";
      *(&v130 & 0xFFFFFFFFFFFFFFF7 | (8 * (v43++ & 1))) = &v123;
    }

    if (!v33)
    {
      if ([a3 containsObject:@"ImagesChanged"])
      {
        *(&v133 + v43) = "Image";
        *(&v130 + v43++) = &v122;
      }

      if ([a3 containsObject:@"PersonLinks"])
      {
        *(&v133 + v43) = "PersonLink";
        *(&v130 + v43++) = &v117;
      }

      if ([a3 containsObject:@"LinkToPersonUUIDs"])
      {
        *(&v133 + v43) = "LinkToPersonUUID";
        *(&v130 + v43++) = &v116;
      }

      if ([a3 containsObject:@"PersonLinkUUIDs"])
      {
        *(&v133 + v43) = "PersonLinkUUID";
        *(&v130 + v43) = &v115;
      }
    }

    ABRegulatoryLogReadContactsData(context);
    [a3 containsObject:@"ChangeTableRowIDs"];
    [a3 containsObject:@"SequenceNumbers"];
    v83 = *(&v132 + 1);
    v84 = 0;
    v81 = v132;
    v82 = *(&v135 + 1);
    v79 = *(&v131 + 1);
    v80 = v135;
    v77 = v131;
    v78 = *(&v134 + 1);
    v75 = *(&v130 + 1);
    v76 = v134;
    v73 = v130;
    v74 = *(&v133 + 1);
    v71 = v41;
    v72 = v133;
    CPRecordStoreGetChangesAndChangeIndicesAndSequenceNumbersForClassWithOrderAndBindBlockAndProperties();
    if ((a4 & 1) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_81;
  }

  MultiValueDeletesInSourceFromSequenceNumberExcludingClientIdentifer = ABCDBContextGetMultiValueDeletesInSourceFromSequenceNumberExcludingClientIdentifer(context[2], RecordID, a5, CString, &v127, &v120, &v119, &theArray, &v118);
  if ((a4 & 1) == 0)
  {
LABEL_111:
    v47 = 0;
    goto LABEL_112;
  }

LABEL_81:
  v44 = theArray;
  if (!theArray)
  {
    goto LABEL_111;
  }

  v45 = v126;
  v46 = v122;
  v87 = v116;
  v88 = v117;
  if (CFArrayGetCount(theArray) < 1)
  {
    goto LABEL_111;
  }

  v85 = v46;
  v96 = MultiValueDeletesInSourceFromSequenceNumberExcludingClientIdentifer;
  v47 = [MEMORY[0x1E696AD50] indexSet];
  v89 = v44;
  v91 = objc_alloc_init(MEMORY[0x1E695DF90]);
  Count = CFArrayGetCount(v44);
  if (Count >= 1)
  {
    v49 = Count;
    v50 = 0;
    cf2 = *MEMORY[0x1E695E738];
    v51 = -1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v45, v50);
      v53 = ValueAtIndex;
      v54 = ValueAtIndex - 6;
      if (((a4 & 2) != 0 || v54 < 0xFFFFFFFD) && ((a4 & 4) != 0 || v54 >= 4))
      {
        if (ValueAtIndex != 10)
        {
          if ((a4 & 2) != 0 && ValueAtIndex == 1)
          {
            v56 = CFArrayGetValueAtIndex(v88, v50);
            if (v56 != -1)
            {
              v57 = CPSqliteDatabaseStatementForReading();
              if (v57)
              {
                v58 = *(v57 + 8);
                if (v58)
                {
                  sqlite3_bind_int(v58, 1, v56);
                  v59 = CPSqliteStatementCopyStringResult();
                  if (v59)
                  {
                    v60 = CFAutorelease(v59);
                    CPSqliteStatementReset();
                    if (v60)
                    {
                      CFArraySetValueAtIndex(v89, v50, v60);
                      CFArraySetValueAtIndex(v45, v50, 4);
                    }
                  }

                  else
                  {
                    CPSqliteStatementReset();
                  }
                }
              }
            }
          }

          contexta = objc_autoreleasePoolPush();
          v61 = CFArrayGetValueAtIndex(v89, v50);
          v137[0] = v61;
          v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v137 count:1];
          if ((a4 & 4) != 0 && v53 == 6)
          {
            v63 = CFArrayGetValueAtIndex(v87, v50);
            if (!CFEqual(v63, cf2))
            {
              *&v130 = v61;
              *(&v130 + 1) = v63;
              v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v130 count:2];
            }
          }

          *&v133 = MEMORY[0x1E69E9820];
          *(&v133 + 1) = 3221225472;
          *&v134 = ___collateIndexByGuids_block_invoke;
          *(&v134 + 1) = &unk_1E7CCD0D8;
          *&v135 = v91;
          *(&v135 + 1) = v50;
          [v62 _cn_each:{&v133, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84}];
          objc_autoreleasePoolPop(contexta);
          goto LABEL_92;
        }

        if ((a4 & 8) != 0)
        {
          v55 = v50;
          if (v51 != -1)
          {
            [v47 addIndex:v51];
            v55 = v50;
          }

          goto LABEL_93;
        }
      }

      [v47 addIndex:{v50, v71}];
LABEL_92:
      v55 = v51;
LABEL_93:
      ++v50;
      v51 = v55;
    }

    while (v49 != v50);
  }

  *&v133 = MEMORY[0x1E69E9820];
  *(&v133 + 1) = 3221225472;
  *&v134 = ___filterAndCoalesceChangeResults_block_invoke;
  *(&v134 + 1) = &unk_1E7CCD0B0;
  *&v135 = v47;
  *(&v135 + 1) = v45;
  v136 = v85;
  [v91 _cn_each:{&v133, v71}];

  v33 = v99;
  MultiValueDeletesInSourceFromSequenceNumberExcludingClientIdentifer = v96;
LABEL_112:
  v35 = v100;
  v36 = v98;
  if (v124 && CFArrayGetCount(v124) >= 1)
  {
    v64 = v124;
    v65 = CFArrayGetCount(v124);
    MultiValueDeletesInSourceFromSequenceNumberExcludingClientIdentifer = CFArrayGetValueAtIndex(v64, v65 - 1);
  }

  _addResultToChanges(v127, @"RecordIDs", a3, v47, v100, v98, 1);
  _addResultToChanges(v126, @"EventTypes", a3, v47, v100, v98, 1);
  _addResultToChanges(v125, @"ChangeTableRowIDs", a3, v47, v100, v98, 1);
  _addResultToChanges(v124, @"SequenceNumbers", a3, v47, v100, v98, 1);
  _addResultToChanges(v123, @"ExternalIDs", a3, v47, v100, v98, 0);
  _addResultToChanges(v122, @"ImagesChanged", a3, v47, v100, v98, 1);
  _addResultToChanges(theArray, @"RecordGUIDs", a3, v47, v100, v98, 0);
  _addResultToChanges(v120, @"PropertyIDs", a3, v47, v100, v98, 1);
  _addResultToChanges(v119, @"MultiValueIdentifiers", a3, v47, v100, v98, 1);
  _addResultToChanges(v118, @"MultiValueGUIDs", a3, v47, v100, v98, 0);
  _addResultToChanges(v117, @"PersonLinks", a3, v47, v100, v98, 1);
  _addResultToChanges(v116, @"LinkToPersonUUIDs", a3, v47, v100, v98, 0);
  _addResultToChanges(v115, @"PersonLinkUUIDs", a3, v47, v100, v98, 0);
LABEL_116:
  [v35 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", MultiValueDeletesInSourceFromSequenceNumberExcludingClientIdentifer, v71), @"LatestSequenceNumber"}];
  if (ABLogChangeHistory())
  {
    [v36 appendFormat:@"    %@ = %i", @"LatestSequenceNumber", MultiValueDeletesInSourceFromSequenceNumberExcludingClientIdentifer];
    if (ABDiagnosticsEnabled())
    {
      _dumpTableWithConnection(v92, @"ClientCursor");
      _dumpTableWithConnection(v92, @"ClientCursorConsumed");
      _dumpTableWithConnection(v92, @"ClientSequence");
      if (v33 > 2)
      {
        v66 = 0;
      }

      else
      {
        v66 = off_1E7CCD120[v33];
      }

      _dumpTableWithConnection(v92, v66);
      _ABLog2(6, "CFDictionaryRef ABChangeHistoryGetChanges(ABAddressBookRef, ABChangeHistoryEntityType, CFArrayRef, ABChangeHistoryOptions, int, int, CFStringRef, CFArrayRef, ABRecordRef)", 909, 0, @">> changes = (\n%@\n) \n%@\n%@\n%@\n%@", v67, v68, v69, v36);
    }
  }

  if (v129 == 1)
  {
    free(CString);
  }

  return v35;
}

uint64_t IsRunningInExchangesyncd()
{
  if (IsRunningInExchangesyncd_onceToken != -1)
  {
    IsRunningInExchangesyncd_cold_1();
  }

  return IsRunningInExchangesyncd_isRunningInExchangesyncd;
}

uint64_t __IsRunningInExchangesyncd_block_invoke()
{
  result = [@"com.apple.exchangesyncd" isEqualToString:{objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "mainBundle"), "bundleIdentifier")}];
  if (result)
  {
    IsRunningInExchangesyncd_isRunningInExchangesyncd = 1;
  }

  return result;
}

uint64_t __ABChangeHistoryGetChanges_block_invoke(uint64_t a1, uint64_t a2)
{
  sqlite3_bind_int(*(a2 + 8), 1, *(a1 + 40));
  sqlite3_bind_int(*(a2 + 8), 2, *(a1 + 44));
  sqlite3_bind_text(*(a2 + 8), 3, *(a1 + 32), -1, 0);
  sqlite3_bind_text(*(a2 + 8), 4, *(a1 + 32), -1, 0);
  v4 = *(a2 + 8);
  v5 = *(a1 + 48);

  return sqlite3_bind_int(v4, 5, v5);
}

uint64_t __ABChangeHistoryGetChanges_block_invoke_2(uint64_t a1, uint64_t a2)
{
  sqlite3_bind_int(*(a2 + 8), 1, *(a1 + 40));
  sqlite3_bind_int(*(a2 + 8), 2, *(a1 + 40));
  sqlite3_bind_int(*(a2 + 8), 3, *(a1 + 44));
  sqlite3_bind_text(*(a2 + 8), 4, *(a1 + 32), -1, 0);
  sqlite3_bind_text(*(a2 + 8), 5, *(a1 + 32), -1, 0);
  v4 = *(a2 + 8);
  v5 = *(a1 + 48);

  return sqlite3_bind_int(v4, 6, v5);
}

uint64_t __ABChangeHistoryGetChanges_block_invoke_3(uint64_t a1, uint64_t a2)
{
  sqlite3_bind_int(*(a2 + 8), 1, *(a1 + 40));
  sqlite3_bind_text(*(a2 + 8), 2, *(a1 + 32), -1, 0);
  sqlite3_bind_text(*(a2 + 8), 3, *(a1 + 32), -1, 0);
  v4 = *(a2 + 8);
  v5 = *(a1 + 44);

  return sqlite3_bind_int(v4, 4, v5);
}

uint64_t __ABChangeHistoryGetChanges_block_invoke_4(uint64_t a1, uint64_t a2)
{
  sqlite3_bind_int(*(a2 + 8), 1, *(a1 + 40));
  v4 = *(a2 + 8);
  v5 = [objc_msgSend(*(a1 + 32) "firstObject")];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = "";
  }

  return sqlite3_bind_text(v4, 2, v6, -1, 0);
}

void _addResultToChanges(__CFString *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, int a7)
{
  v13 = a1;
  if (a1)
  {
    v12 = a1;
    if ([a3 containsObject:a2])
    {
      if ([a4 count])
      {
        [(__CFString *)v12 removeObjectsAtIndexes:a4];
      }

      [a5 setObject:v12 forKeyedSubscript:a2];
      if (ABLogChangeHistory())
      {
        if (a7)
        {
          v12 = ABLogStringForIntArrayPtr(&v13);
        }

        [a6 appendFormat:@"    %@ = %@\n", a2, v12];
        v12 = v13;
      }
    }

    CFRelease(v12);
  }
}

uint64_t _entityChangesExistWithSequenceNumberAfterRecordID(uint64_t a1, unsigned int a2, int a3, int a4)
{
  if (a2 > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E7CCD120[a2];
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT COUNT(*) FROM (SELECT NULL FROM %@ WHERE sequence_number = ? AND record > ? LIMIT 1);", v6];
  result = CPSqliteConnectionStatementForSQL();
  if (result)
  {
    v8 = result;
    sqlite3_bind_int(*(result + 8), 1, a3);
    sqlite3_bind_int(*(v8 + 8), 2, a4);
    v9 = CPSqliteStatementIntegerResult();
    CPSqliteStatementReset();
    return v9 > 0;
  }

  return result;
}

void _clearChangesForClient(uint64_t a1, unsigned int a2, int a3, int a4, const __CFString *a5, int a6)
{
  LODWORD(v9) = a3;
  WriterConnection = _getWriterConnection(*(a1 + 16), "void _clearChangesForClient(ABAddressBookRef, ABChangeHistoryEntityType, int, int, CFStringRef, int)");
  if (WriterConnection)
  {
    v13 = WriterConnection;
    if (ABLogChangeHistory())
    {
      v14 = ABDiagnosticsEnabled();
      if (a2 == -1)
      {
        if (v14)
        {
          v43 = _dumpTableWithConnection(v13, @"ClientCursor");
          _dumpTableWithConnection(v13, @"ClientCursorConsumed");
          _dumpTableWithConnection(v13, @"ClientSequence");
          _dumpTableWithConnection(v13, @"ABPersonChanges");
          _dumpTableWithConnection(v13, @"ABGroupChanges");
          _dumpTableWithConnection(v13, @"ABPersonMultiValueDeletes");
          _ABLog2(6, "void _clearChangesForClient(ABAddressBookRef, ABChangeHistoryEntityType, int, int, CFStringRef, int)", 969, 0, @"Tables before clear changes:\n%@\n%@\n%@\n%@\n%@\n%@", v17, v18, v19, v43);
        }
      }

      else if (v14)
      {
        v15 = _dumpTableWithConnection(v13, @"ClientCursor");
        _dumpTableWithConnection(v13, @"ClientCursorConsumed");
        _dumpTableWithConnection(v13, @"ClientSequence");
        if (a2 > 2)
        {
          v16 = 0;
        }

        else
        {
          v16 = off_1E7CCD120[a2];
        }

        _dumpTableWithConnection(v13, v16);
        _ABLog2(6, "void _clearChangesForClient(ABAddressBookRef, ABChangeHistoryEntityType, int, int, CFStringRef, int)", 975, 0, @"Tables before clear changes:\n%@\n%@\n%@\n%@", v20, v21, v22, v15);
      }
    }

    if (((a4 | v9) & 0x80000000) == 0)
    {
      if (_entityChangesExistWithSequenceNumberAfterRecordID(v13, 0, v9, a4))
      {
        v9 = (v9 - 1);
        if (ABLogChangeHistory())
        {
          if (ABDiagnosticsEnabled())
          {
            _ABLog2(6, "void _clearChangesForClient(ABAddressBookRef, ABChangeHistoryEntityType, int, int, CFStringRef, int)", 985, 0, @"will clear up to previous sequenceNumber = %i", v23, v24, v25, v9);
          }
        }
      }
    }

    v44 = 0;
    CString = _getCString(a5, &v44);
    v27 = CPSqliteConnectionStatementForSQL();
    if (v27)
    {
      v28 = v27;
      sqlite3_bind_text(*(v27 + 8), 1, CString, -1, 0);
      sqlite3_bind_int(*(v28 + 8), 2, a6);
      sqlite3_bind_int(*(v28 + 8), 3, v9);
      CPSqliteStatementPerform();
      CPSqliteStatementReset();
    }

    v29 = CPSqliteConnectionStatementForSQL();
    if (v29)
    {
      v30 = v29;
      v31 = *(v29 + 8);
      Current = CFAbsoluteTimeGetCurrent();
      sqlite3_bind_double(v31, 1, Current);
      sqlite3_bind_int(*(v30 + 8), 2, v9);
      sqlite3_bind_text(*(v30 + 8), 3, CString, -1, 0);
      sqlite3_bind_int(*(v30 + 8), 4, a6);
      sqlite3_bind_text(*(v30 + 8), 5, CString, -1, 0);
      CPSqliteStatementPerform();
      CPSqliteStatementReset();
    }

    _commitWriterConnection(v13, "void _clearChangesForClient(ABAddressBookRef, ABChangeHistoryEntityType, int, int, CFStringRef, int)");
    if (v44 == 1)
    {
      free(CString);
    }

    if (ABLogChangeHistory())
    {
      v33 = ABDiagnosticsEnabled();
      if (a2 == -1)
      {
        if (v33)
        {
          v36 = _dumpTable(a1, @"ClientCursor");
          _dumpTable(a1, @"ClientCursorConsumed");
          _dumpTable(a1, @"ClientSequence");
          _dumpTable(a1, @"ABPersonChanges");
          _dumpTable(a1, @"ABGroupChanges");
          _dumpTable(a1, @"ABPersonMultiValueDeletes");
          _ABLog2(6, "void _clearChangesForClient(ABAddressBookRef, ABChangeHistoryEntityType, int, int, CFStringRef, int)", 1029, 0, @"Tables after clear changes:\n%@\n%@\n%@\n%@\n%@\n%@", v37, v38, v39, v36);
        }
      }

      else if (v33)
      {
        v34 = _dumpTable(a1, @"ClientCursor");
        _dumpTable(a1, @"ClientCursorConsumed");
        _dumpTable(a1, @"ClientSequence");
        if (a2 > 2)
        {
          v35 = 0;
        }

        else
        {
          v35 = off_1E7CCD120[a2];
        }

        _dumpTable(a1, v35);
        _ABLog2(6, "void _clearChangesForClient(ABAddressBookRef, ABChangeHistoryEntityType, int, int, CFStringRef, int)", 1035, 0, @"Tables after clear changes:%@\n%@\n%@\n%@", v40, v41, v42, v34);
      }
    }
  }
}

void ABChangeHistoryClearChangesUpToSequenceNumberForClient(uint64_t a1, int a2, const __CFString *a3, ABRecordRef record)
{
  if (record)
  {
    RecordID = ABRecordGetRecordID(record);
  }

  else
  {
    RecordID = -1;
  }

  if (ABLogChangeHistory() && ABDiagnosticsEnabled())
  {
    _ABLog2(6, "void ABChangeHistoryClearChangesUpToSequenceNumberForClient(ABAddressBookRef, int, CFStringRef, ABRecordRef)", 1044, 0, @"clientIdentifier = %@, storeID = %i, sequenceNumber = %i", v8, v9, v10, a3);
  }

  _clearChangesForClient(a1, 0xFFFFFFFF, a2, -1, a3, RecordID);
}

void ABChangeHistoryClearEntityChangesUpToSequenceNumberAndRecordIDForClient(uint64_t a1, unsigned int a2, int a3, int a4, const __CFString *a5, ABRecordRef record)
{
  if (record)
  {
    RecordID = ABRecordGetRecordID(record);
  }

  else
  {
    RecordID = -1;
  }

  if (ABLogChangeHistory() && ABDiagnosticsEnabled())
  {
    _ABLog2(6, "void ABChangeHistoryClearEntityChangesUpToSequenceNumberAndRecordIDForClient(ABAddressBookRef, ABChangeHistoryEntityType, int, int, CFStringRef, ABRecordRef)", 1053, 0, @"clientIdentifier = %@, storeID = %i, entityType = %i, sequenceNumber = %i, recordID = %i", v12, v13, v14, a5);
  }

  _clearChangesForClient(a1, a2, a3, a4, a5, RecordID);
}

uint64_t _latestConsumedSequenceNumberForClient(uint64_t a1, const __CFString *a2, int a3, uint64_t a4)
{
  v10 = 0;
  CString = _getCString(a2, &v10);
  v7 = CPSqliteConnectionStatementForSQL();
  if (v7)
  {
    v8 = v7;
    sqlite3_bind_text(*(v7 + 8), 1, CString, -1, 0);
    sqlite3_bind_int(*(v8 + 8), 2, a3);
    a4 = CPSqliteStatementIntegerResult();
    CPSqliteStatementReset();
  }

  if (v10 == 1)
  {
    free(CString);
  }

  return a4;
}

uint64_t ABChangeHistoryGetLatestConsumedSequenceNumberForClient(int a1, const __CFString *a2, ABRecordRef record)
{
  if (record)
  {
    RecordID = ABRecordGetRecordID(record);
  }

  else
  {
    RecordID = -1;
  }

  CPRecordStoreGetDatabase();
  v5 = CPSqliteDatabaseConnectionForWriting();
  v6 = _latestConsumedSequenceNumberForClient(v5, a2, RecordID, 0xFFFFFFFFLL);
  if (ABLogChangeHistory() && ABDiagnosticsEnabled())
  {
    _ABLog2(6, "int ABChangeHistoryGetLatestConsumedSequenceNumberForClient(ABAddressBookRef, CFStringRef, ABRecordRef)", 1094, 0, @"clientIdentifier = %@, storeID = %i\n>> latestConsumedSequenceNumber = %i", v7, v8, v9, a2);
  }

  return v6;
}

void ABChangeHistoryClearEntityChangeTableRowIDsForClient(uint64_t a1, uint64_t a2, const __CFArray *a3, const __CFString *a4, ABRecordRef record)
{
  theArray = a3;
  if (record)
  {
    RecordID = ABRecordGetRecordID(record);
  }

  else
  {
    RecordID = 0xFFFFFFFFLL;
  }

  if (ABLogChangeHistory() && ABDiagnosticsEnabled())
  {
    v29 = a2;
    v30 = ABLogStringForIntArrayPtr(&theArray);
    v28 = RecordID;
    _ABLog2(6, "void ABChangeHistoryClearEntityChangeTableRowIDsForClient(ABAddressBookRef, ABChangeHistoryEntityType, CFArrayRef, CFStringRef, ABRecordRef)", 1130, 0, @"clientIdentifier = %@, storeID = %i, entityType = %i, changeTableRowIDs = %@", v9, v10, v11, a4);
  }

  if (a2 >= 2)
  {
    ABChangeHistoryClearEntityChangeTableRowIDsForClient_cold_1();
  }

  WriterConnection = _getWriterConnection(*(a1 + 16), "void ABChangeHistoryClearEntityChangeTableRowIDsForClient(ABAddressBookRef, ABChangeHistoryEntityType, CFArrayRef, CFStringRef, ABRecordRef)");
  if (WriterConnection)
  {
    v13 = WriterConnection;
    v35 = 0;
    CString = _getCString(a4, &v35);
    v15 = &ABCPersonClass;
    if (a2)
    {
      v15 = ABCGroupClass;
    }

    v16 = *v15;
    v33 = a1;
    if (v16)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*v16];
    }

    else
    {
      v17 = &stru_1F2FE2718;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT sequence_number FROM %@Changes WHERE ROWID = ?;", v17, v28, v29, v30];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"INSERT INTO ClientCursorConsumed (client_identifier, store_id, consumed_entity_class, consumed_entity_id, consumed_change_id, sequence_number) VALUES (?, ?, ?, (SELECT record FROM %@Changes WHERE ROWID = ? LIMIT 1), ?, (SELECT sequence_number FROM %@Changes WHERE ROWID = ?))", v17, v17];
    v18 = CPSqliteConnectionStatementForSQL();
    v19 = CPSqliteConnectionStatementForSQL();
    if (v18 && (v20 = v19) != 0 && theArray && (Count = CFArrayGetCount(theArray), Count >= 1))
    {
      v22 = Count;
      v31 = a4;
      v32 = record;
      v23 = 0;
      v24 = -1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v23);
        sqlite3_bind_int(*(v18 + 8), 1, ValueAtIndex);
        v26 = CPSqliteStatementIntegerResult();
        v27 = v26;
        if (v24 <= v26)
        {
          v24 = v26;
        }

        CPSqliteStatementReset();
        if (v27 >= 1)
        {
          sqlite3_bind_text(*(v20 + 8), 1, CString, -1, 0);
          sqlite3_bind_int(*(v20 + 8), 2, RecordID);
          sqlite3_bind_int(*(v20 + 8), 3, a2);
          sqlite3_bind_int(*(v20 + 8), 4, ValueAtIndex);
          sqlite3_bind_int(*(v20 + 8), 5, ValueAtIndex);
          sqlite3_bind_int(*(v20 + 8), 6, ValueAtIndex);
          CPSqliteStatementPerform();
          CPSqliteStatementReset();
        }

        ++v23;
      }

      while (v22 != v23);
      _commitWriterConnection(v13, "void ABChangeHistoryClearEntityChangeTableRowIDsForClient(ABAddressBookRef, ABChangeHistoryEntityType, CFArrayRef, CFStringRef, ABRecordRef)");
      if (v24 != -1)
      {
        ABChangeHistoryClearEntityChangesUpToSequenceNumberAndRecordIDForClient(v33, a2, v24, -1, v31, v32);
      }
    }

    else
    {
      _commitWriterConnection(v13, "void ABChangeHistoryClearEntityChangeTableRowIDsForClient(ABAddressBookRef, ABChangeHistoryEntityType, CFArrayRef, CFStringRef, ABRecordRef)");
    }

    if (v35 == 1)
    {
      free(CString);
    }
  }
}

void ABChangeHistoryPurgeIdleClients(uint64_t a1, int a2, double a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (ABLogChangeHistory() && ABDiagnosticsEnabled())
  {
    _ABLog2(6, "void ABChangeHistoryPurgeIdleClients(ABAddressBookRef, CFAbsoluteTime, int)", 1271, 0, @"timestamp = %f, numChanges = %i", v6, v7, v8, *&a3);
  }

  WriterConnection = _getWriterConnection(*(a1 + 16), "void ABChangeHistoryPurgeIdleClients(ABAddressBookRef, CFAbsoluteTime, int)");
  if (WriterConnection)
  {
    v10 = WriterConnection;
    v11 = [MEMORY[0x1E695DF70] array];
    v12 = CPSqliteConnectionStatementForSQL();
    if (v12)
    {
      v13 = v12;
      sqlite3_bind_double(*(v12 + 8), 1, a3);
      sqlite3_bind_int(*(v13 + 8), 2, a2);
      CPSqliteStatementSendResults();
      CPSqliteStatementReset();
    }

    if ([v11 count] && (v14 = CPSqliteConnectionStatementForSQL()) != 0 && (v15 = v14, v28 = 0u, v29 = 0u, v26 = 0u, v27 = 0u, (v16 = objc_msgSend(v11, "countByEnumeratingWithState:objects:count:", &v26, v30, 16)) != 0))
    {
      v17 = v16;
      v25 = v10;
      v18 = *v27;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(v11);
          }

          v20 = *(*(&v26 + 1) + 8 * i);
          ABDiagnosticsEnabled();
          _ABLog2(4, "void ABChangeHistoryPurgeIdleClients(ABAddressBookRef, CFAbsoluteTime, int)", 1295, 0, @"Purging change-tracking client %@ which has been idle since %f or is tracking all stores and is behind more more than %d changes", v21, v22, v23, v20);
          sqlite3_bind_text(*(v15 + 8), 1, [v20 cStringUsingEncoding:4], -1, 0);
          CPSqliteStatementPerform();
          CPSqliteStatementReset();
        }

        v17 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v17);
      _commitWriterConnection(v25, "void ABChangeHistoryPurgeIdleClients(ABAddressBookRef, CFAbsoluteTime, int)");
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"ABChangeHistoryIdleClientWasPurgedNotification", 0, 0, 1u);
    }

    else
    {
      _commitWriterConnection(v10, "void ABChangeHistoryPurgeIdleClients(ABAddressBookRef, CFAbsoluteTime, int)");
    }
  }
}

uint64_t _unusedClientRowHandler(uint64_t a1, void *a2)
{
  v3 = sqlite3_column_text(*(a1 + 8), 0);
  if (v3)
  {
    [a2 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v3)}];
  }

  return 0;
}

uint64_t _findSequenceNumberForAgeLimit(double a1)
{
  if (a1 <= 0.0)
  {
    return 0;
  }

  v2 = CPSqliteConnectionStatementForSQL();
  if (!v2)
  {
    return 0;
  }

  sqlite3_bind_double(*(v2 + 8), 1, a1);
  v3 = CPSqliteStatementIntegerResult();
  CPSqliteStatementReset();
  return v3;
}

uint64_t _findSequenceNumberForPersonChangesLimit(uint64_t a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  v3 = CPSqliteConnectionStatementForSQL();
  if (!v3)
  {
    return 0;
  }

  sqlite3_bind_int(*(v3 + 8), 1, a2);
  v4 = CPSqliteStatementIntegerResult();
  CPSqliteStatementReset();
  return v4;
}

uint64_t _findMinConsumedSequenceNumberForDataAccess()
{
  if (!CPSqliteConnectionStatementForSQL())
  {
    return 0;
  }

  v0 = CPSqliteStatementIntegerResult();
  CPSqliteStatementReset();
  return v0;
}

void ABChangeHistoryUpdatePeakPersonCount(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  PersonCount = ABAddressBookGetPersonCount(a1);
  if (PersonCount >= 1 && ABAddressBookGetIntegerProperty(a1) < PersonCount)
  {

    ABAddressBookSetIntegerProperty(a1, @"PeakContactCount", PersonCount, v11, v12, v13, v14, v15, a9);
  }
}

uint64_t ABChangeHistoryGetPersonChangesLimit(uint64_t a1, unsigned int a2)
{
  CPRecordStoreGetDatabase();
  CPSqliteDatabaseConnectionForReading();
  v3 = 5 * CPSqliteConnectionIntegerForPropertyWithDefaultValue();
  if (v3 <= a2)
  {
    return a2;
  }

  else
  {
    return v3;
  }
}

uint64_t ABChangeHistoryGetSequenceNumberForClearingChanges(uint64_t a1)
{
  v2 = CFAbsoluteTimeGetCurrent() + -2592000.0;
  PersonChangesLimit = ABChangeHistoryGetPersonChangesLimit(a1, 0x1F4u);

  return ABChangeHistoryGetSequenceNumberForClearingChangesWithAgeAndChangesLimits(v2, a1, PersonChangesLimit);
}

uint64_t ABChangeHistoryGetSequenceNumberForClearingChangesWithAgeAndChangesLimits(double a1, uint64_t a2, int a3)
{
  CPRecordStoreGetDatabase();
  v5 = CPSqliteDatabaseConnectionForReading();
  SequenceNumberForAgeLimit = _findSequenceNumberForAgeLimit(a1);
  SequenceNumberForPersonChangesLimit = _findSequenceNumberForPersonChangesLimit(v5, a3);
  if (SequenceNumberForAgeLimit <= SequenceNumberForPersonChangesLimit)
  {
    v8 = SequenceNumberForPersonChangesLimit;
  }

  else
  {
    v8 = SequenceNumberForAgeLimit;
  }

  if (v8 >= 1)
  {
    MinConsumedSequenceNumberForDataAccess = _findMinConsumedSequenceNumberForDataAccess();
    if (v8 >= MinConsumedSequenceNumberForDataAccess)
    {
      v10 = MinConsumedSequenceNumberForDataAccess;
    }

    else
    {
      v10 = v8;
    }

    if (MinConsumedSequenceNumberForDataAccess <= 0)
    {
      v8 = v8;
    }

    else
    {
      v8 = v10;
    }

    if (MinConsumedSequenceNumberForDataAccess == -1)
    {
      return 0;
    }
  }

  return v8;
}

BOOL _performQueryToClearSequenceNumber(uint64_t a1, uint64_t a2, int a3)
{
  v5 = CPSqliteConnectionStatementForSQL();
  if (!v5)
  {
    return 0;
  }

  sqlite3_bind_int(*(v5 + 8), 1, a3);
  v6 = CPSqliteStatementPerform();
  v7 = v6 == 101;
  if (v6 != 101 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    _performQueryToClearSequenceNumber_cold_1(a1);
  }

  CPSqliteStatementReset();
  return v7;
}

void ABChangeHistoryClearChangesToSequenceNumber(uint64_t a1, int a2)
{
  if (a2 >= 1)
  {
    v8 = v2;
    v9 = v3;
    CPRecordStoreGetDatabase();
    v5 = CPSqliteDatabaseConnectionForWriting();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __ABChangeHistoryClearChangesToSequenceNumber_block_invoke;
    v6[3] = &__block_descriptor_44_e18_v16__0__NSString_8l;
    v6[4] = v5;
    v7 = a2;
    [&unk_1F2FF4990 _cn_each:v6];
  }
}

void __ABChangeHistoryClearChangesToSequenceNumber_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 40;
  if (!_performQueryToClearSequenceNumber(*(a1 + 32), a2, *(a1 + 40)) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __ABChangeHistoryClearChangesToSequenceNumber_block_invoke_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
  }
}

BOOL _hasClientWithIdentifier(uint64_t a1, const __CFString *a2)
{
  CPRecordStoreGetDatabase();
  CPSqliteDatabaseConnectionForWriting();
  v8 = 0;
  CString = _getCString(a2, &v8);
  v4 = CPSqliteConnectionStatementForSQL();
  v5 = v4;
  if (v4)
  {
    sqlite3_bind_text(*(v4 + 8), 1, CString, -1, 0);
    v6 = CPSqliteStatementIntegerResult();
    CPSqliteStatementReset();
    v5 = v6 > 0;
  }

  if (v8 == 1)
  {
    free(CString);
  }

  return v5;
}

BOOL ABChangeHistoryHasClientWithIdentifier(uint64_t a1, CFStringRef theString)
{
  if (!theString || !CFStringGetLength(theString))
  {
    return 0;
  }

  v4 = *(a1 + 16);

  return _hasClientWithIdentifier(v4, theString);
}

uint64_t ABChangeHistoryTableCount(uint64_t a1, uint64_t a2)
{
  CPRecordStoreGetDatabase();
  CPSqliteDatabaseConnectionForWriting();
  [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT COUNT(*) FROM (SELECT NULL FROM %@);", a2];
  if (!CPSqliteConnectionStatementForSQL())
  {
    return 0;
  }

  v3 = CPSqliteStatementIntegerResult();
  CPSqliteStatementReset();
  return v3;
}

void ABChangeHistoryInsertUpdatesForRecordsFromBlockWithClientIdentifier(uint64_t a1, uint64_t a2, const __CFString *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  HasPendingTransaction = ABAddressBookHasPendingTransaction();
  v42 = a1;
  if (HasPendingTransaction)
  {
    CPRecordStoreGetDatabase();
    WriterConnection = CPSqliteDatabaseConnectionForWriting();
  }

  else
  {
    WriterConnection = _getWriterConnection(*(a1 + 16), "void ABChangeHistoryInsertUpdatesForRecordsFromBlockWithClientIdentifier(ABAddressBookRef, CFArrayRef (^)(void), CFStringRef)");
  }

  v8 = WriterConnection;
  if (WriterConnection)
  {
    v9 = (*(a2 + 16))(a2);
    v43 = CPRecordStoreGetSequenceNumber() + 1;
    if (v9)
    {
      v35 = v8;
      v36 = a3;
      v37 = HasPendingTransaction;
      Count = CFArrayGetCount(v9);
      if (Count >= 1)
      {
        v11 = Count;
        v12 = 0;
        v41 = kABGroupExternalIdentifierProperty;
        v40 = kABGroupInternalUUIDProperty;
        property = kABPersonExternalIdentifierProperty;
        v38 = kABPersonInternalUUIDProperty;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v9, v12);
          RecordType = ABRecordGetRecordType(ValueAtIndex);
          if (RecordType == 1)
          {
            v25 = ABGroupCopySource(ValueAtIndex);
            if (v25)
            {
              v16 = v25;
              RecordID = ABRecordGetRecordID(v25);
              v27 = ABRecordGetRecordID(ValueAtIndex);
              v18 = ABRecordCopyValue(ValueAtIndex, v41);
              v19 = ABRecordCopyValue(ValueAtIndex, v40);
              ABChangeHistoryInsertGroupChangeRecord(*(v42 + 16), v27, 1, v43, v18, RecordID, v19);
              v28 = ABOSLogGeneral();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                *buf = 67109890;
                v45 = v27;
                v46 = 2114;
                v47 = v19;
                v48 = 1024;
                v49 = RecordID;
                v50 = 1024;
                v51 = v43;
                v23 = v28;
                v24 = "Inserted change history record for group id %d (guid %{public}@) after moving to store id %d; sequence number = %d\n";
LABEL_16:
                _os_log_impl(&dword_1B7EFB000, v23, OS_LOG_TYPE_INFO, v24, buf, 0x1Eu);
              }

LABEL_17:
              if (v19)
              {
                CFRelease(v19);
              }

              if (v18)
              {
                CFRelease(v18);
              }

              CFRelease(v16);
            }
          }

          else if (!RecordType)
          {
            v15 = ABPersonCopySource(ValueAtIndex);
            if (v15)
            {
              v16 = v15;
              v17 = ABRecordGetRecordID(v15);
              v18 = ABRecordCopyValue(ValueAtIndex, property);
              v19 = ABRecordCopyValue(ValueAtIndex, v38);
              IntValue = ABRecordGetIntValue(ValueAtIndex, kABPersonLinkProperty);
              v21 = ABRecordGetRecordID(ValueAtIndex);
              ABChangeHistoryInsertPersonChangeRecord(*(v42 + 16), v21, 1, v43, 0, v18, v17, IntValue, v19, 0, 0);
              v22 = ABOSLogGeneral();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
              {
                *buf = 67109890;
                v45 = v21;
                v46 = 2114;
                v47 = v19;
                v48 = 1024;
                v49 = v17;
                v50 = 1024;
                v51 = v43;
                v23 = v22;
                v24 = "Inserted change history record for person id %d (guid %{public}@) after moving to store id %d; sequence number = %d\n";
                goto LABEL_16;
              }

              goto LABEL_17;
            }
          }

          ++v12;
        }

        while (v11 != v12);
      }

      CFRelease(v9);
      HasPendingTransaction = v37;
      v8 = v35;
      a3 = v36;
    }

    ABChangeHistoryAssociateSequenceNumberWithClient(0.0, v8, v43, a3);
    ABAddressBookSetIntegerProperty(v42, @"__CPRecordSequenceNumber", v43, v29, v30, v31, v32, v33, v34);
    if ((HasPendingTransaction & 1) == 0)
    {
      _commitWriterConnection(v8, "void ABChangeHistoryInsertUpdatesForRecordsFromBlockWithClientIdentifier(ABAddressBookRef, CFArrayRef (^)(void), CFStringRef)");
    }
  }
}

BOOL ABChangeHistoryInsertPersonChangeRecordIntoAddressBook(_BOOL8 result, int a2, int a3, int a4, int a5, void *a6, int a7, int a8, void *a9)
{
  if (result)
  {
    return ABChangeHistoryInsertPersonChangeRecord(*(result + 16), a2, a3, a4, a5, a6, a7, a8, a9, 0, 0);
  }

  return result;
}

BOOL ABChangeHistoryInsertGroupChangeRecord(uint64_t a1, int a2, int a3, int a4, void *a5, int a6, void *a7)
{
  CPRecordStoreGetDatabase();
  v13 = CPSqliteDatabaseConnectionForReading();
  v14 = CPSqliteConnectionStatementForSQL();
  if (v14)
  {
    v15 = v14;
    sqlite3_bind_int(*(v14 + 8), 1, a2);
    sqlite3_bind_int(*(v15 + 8), 2, a3);
    sqlite3_bind_int(*(v15 + 8), 3, a4);
    if (a5)
    {
      sqlite3_bind_text(*(v15 + 8), 4, [a5 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      sqlite3_bind_null(*(v15 + 8), 4);
    }

    v20 = *(v15 + 8);
    if (a6 == -1)
    {
      sqlite3_bind_null(v20, 5);
    }

    else
    {
      sqlite3_bind_int(v20, 5, a6);
    }

    sqlite3_bind_text(*(v15 + 8), 6, [a7 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    v21 = CPSqliteStatementPerform();
    v19 = v21 == 101;
    if (v21 != 101)
    {
      v22 = *MEMORY[0x1E69E9848];
      v23 = sqlite3_errcode(*(v13 + 8));
      v24 = sqlite3_errmsg(*(v13 + 8));
      fprintf(v22, "Error %d adding group change log entry statement: %s\n", v23, v24);
    }

    CPSqliteStatementReset();
  }

  else
  {
    v16 = *MEMORY[0x1E69E9848];
    v17 = sqlite3_errcode(*(v13 + 8));
    v18 = sqlite3_errmsg(*(v13 + 8));
    fprintf(v16, "Error %d preparing group changes log statement: %s\n", v17, v18);
    return 0;
  }

  return v19;
}

BOOL ABChangeHistoryInsertPersonChangeRecord(uint64_t a1, int a2, int a3, int a4, int a5, void *a6, int a7, int a8, void *a9, void *a10, void *a11)
{
  CPRecordStoreGetDatabase();
  v18 = CPSqliteDatabaseConnectionForReading();
  v19 = CPSqliteConnectionStatementForSQL();
  if (v19)
  {
    v20 = v19;
    sqlite3_bind_int(*(v19 + 8), 1, a2);
    sqlite3_bind_int(*(v20 + 8), 2, a3);
    sqlite3_bind_int(*(v20 + 8), 3, a4);
    v21 = *(v20 + 8);
    if (a5)
    {
      sqlite3_bind_int(v21, 4, 1);
    }

    else
    {
      sqlite3_bind_null(v21, 4);
    }

    if (a6)
    {
      sqlite3_bind_text(*(v20 + 8), 5, [a6 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      sqlite3_bind_null(*(v20 + 8), 5);
    }

    v23 = *(v20 + 8);
    if (a7 == -1)
    {
      sqlite3_bind_null(v23, 6);
    }

    else
    {
      sqlite3_bind_int(v23, 6, a7);
    }

    sqlite3_bind_int(*(v20 + 8), 7, a8);
    if (a9)
    {
      sqlite3_bind_text(*(v20 + 8), 8, [a9 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      sqlite3_bind_null(*(v20 + 8), 8);
    }

    sqlite3_bind_null(*(v20 + 8), 9);
    if (a10)
    {
      sqlite3_bind_text(*(v20 + 8), 10, [a10 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      sqlite3_bind_null(*(v20 + 8), 10);
    }

    if (a11)
    {
      sqlite3_bind_text(*(v20 + 8), 11, [a11 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      sqlite3_bind_null(*(v20 + 8), 11);
    }

    v24 = CPSqliteStatementPerform();
    v22 = v24 == 101;
    if (v24 != 101 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ABChangeHistoryInsertPersonChangeRecord_cold_1(v18);
    }

    CPSqliteStatementReset();
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ABChangeHistoryInsertPersonChangeRecord_cold_2(v18);
    }

    return 0;
  }

  return v22;
}

uint64_t ABChangeHistoryInsertPersonImageChangeRecordForRecordsWithIdentifiers(uint64_t a1, CFArrayRef theArray)
{
  v2 = a1;
  if (a1)
  {
    if (theArray && CFArrayGetCount(theArray) >= 1)
    {
      v4 = [MEMORY[0x1E695DF70] array];
      ppStmt = 0;
      CPRecordStoreGetDatabase();
      v5 = CPSqliteDatabaseConnectionForReading();
      v6 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithString:", @"SELECT ROWID, StoreID, ExternalIdentifier, guid, PersonLink FROM ABPerson WHERE ROWID IN(? ");
      Count = CFArrayGetCount(theArray);
      v8 = Count;
      if (Count >= 2)
      {
        v9 = Count - 1;
        do
        {
          [v6 appendString:{@", ? "}];
          --v9;
        }

        while (v9);
      }

      [v6 appendString:@";"]);
      if (sqlite3_prepare(*(v5 + 8), [v6 UTF8String], -1, &ppStmt, 0))
      {
        return 0;
      }

      else
      {
        if (v8 >= 1)
        {
          v14 = 0;
          do
          {
            v15 = ppStmt;
            v16 = v14 + 1;
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v14);
            sqlite3_bind_int(v15, v16, ValueAtIndex);
            v14 = v16;
          }

          while (v8 != v16);
        }

        while (1)
        {
          v18 = sqlite3_step(ppStmt);
          if (v18 != 100)
          {
            break;
          }

          [v4 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", sqlite3_column_int(ppStmt, 0))}];
          [v4 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", sqlite3_column_int(ppStmt, 1))}];
          v19 = sqlite3_column_text(ppStmt, 2);
          if (v19)
          {
            v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v19];
          }

          else
          {
            v20 = [MEMORY[0x1E695DFB0] null];
          }

          [v4 addObject:v20];
          v21 = sqlite3_column_text(ppStmt, 3);
          if (v21)
          {
            v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v21];
          }

          else
          {
            v22 = [MEMORY[0x1E695DFB0] null];
          }

          [v4 addObject:v22];
          [v4 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", sqlite3_column_int(ppStmt, 4))}];
        }

        if (v18 == 101)
        {
          SequenceNumber = CPRecordStoreGetSequenceNumber();
          if ([v4 count])
          {
            v29 = 0;
            v30 = *MEMORY[0x1E6996590];
            do
            {
              v31 = [objc_msgSend(v4 objectAtIndex:{v29), "intValue"}];
              v32 = [objc_msgSend(v4 objectAtIndex:{v29 + 1), "intValue"}];
              v33 = (*(v30 + 16))(v30, [v4 objectAtIndex:v29 + 2]);
              v34 = (*(v30 + 16))(v30, [v4 objectAtIndex:v29 + 3]);
              ABChangeHistoryInsertPersonChangeRecord(*(v2 + 16), v31, 1, SequenceNumber + 1, 1, v33, v32, [objc_msgSend(v4 objectAtIndex:{v29 + 4), "intValue"}], v34, 0, 0);
              v29 += 5;
            }

            while (v29 < [v4 count]);
          }

          ABAddressBookSetIntegerProperty(v2, @"__CPRecordSequenceNumber", (SequenceNumber + 1), v24, v25, v26, v27, v28, v35);
          v2 = 1;
        }

        else
        {
          v2 = 0;
        }

        sqlite3_finalize(ppStmt);
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    ABDiagnosticsEnabled();
    _ABLog2(3, "_Bool ABChangeHistoryInsertPersonImageChangeRecordForRecordsWithIdentifiers(ABAddressBookRef, CFArrayRef)", 1688, 0, @"failed to write change history records for deleted thumbnails because we were not passed an ABAddressBookRef", v10, v11, v12, v35);
  }

  return v2;
}

void ___filterAndCoalesceChangeResults_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v7[3] = [a3 count];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___filterAndCoalesceChangeResults_block_invoke_2;
  v5[3] = &unk_1E7CCD088;
  v5[5] = a3;
  v5[6] = v7;
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 40);
  [a3 _cn_each_reverse:v5];
  _Block_object_dispose(v7, 8);
}

uint64_t ___filterAndCoalesceChangeResults_block_invoke_2(uint64_t result, void *a2)
{
  if (--*(*(*(result + 48) + 8) + 24))
  {
    v2 = result;
    v3 = [a2 longValue];
    result = [*(v2 + 32) containsIndex:v3];
    if ((result & 1) == 0)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 56), v3);
      result = [*(v2 + 40) _cn_take:*(*(*(v2 + 48) + 8) + 24)];
      if (ValueAtIndex > 4)
      {
        if (ValueAtIndex > 7)
        {
          if (ValueAtIndex == 8)
          {
            v5 = *(v2 + 56);
            v6 = *(v2 + 32);
            v7 = &v20;
            v20 = MEMORY[0x1E69E9820];
            v21 = 3221225472;
            v22 = ___filterAndCoalesceChangeResults_block_invoke_5;
            v23 = &unk_1E7CCD060;
            v24 = v6;
          }

          else
          {
            if (ValueAtIndex != 9)
            {
              return result;
            }

            v5 = *(v2 + 56);
            v6 = *(v2 + 32);
            v7 = &v15;
            v15 = MEMORY[0x1E69E9820];
            v16 = 3221225472;
            v17 = ___filterAndCoalesceChangeResults_block_invoke_6;
            v18 = &unk_1E7CCD060;
            v19 = v6;
          }

          goto LABEL_17;
        }

        if (ValueAtIndex != 5)
        {
          if (ValueAtIndex != 7)
          {
            return result;
          }

          v5 = *(v2 + 56);
          v6 = *(v2 + 32);
          v7 = &v9;
          v9 = MEMORY[0x1E69E9820];
          v10 = 3221225472;
          v11 = ___filterAndCoalesceChangeResults_block_invoke_7;
          v12 = &unk_1E7CCD038;
          v13 = v6;
          v14 = v3;
          goto LABEL_17;
        }

        goto LABEL_15;
      }

      if (ValueAtIndex != 1)
      {
        if (ValueAtIndex == 2)
        {
LABEL_15:
          v5 = *(v2 + 56);
          v6 = *(v2 + 32);
          v7 = &v25;
          v25 = MEMORY[0x1E69E9820];
          v26 = 3221225472;
          v27 = ___filterAndCoalesceChangeResults_block_invoke_4;
          v28 = &unk_1E7CCD038;
          v29 = v6;
          v30 = v3;
          goto LABEL_17;
        }

        if (ValueAtIndex != 4)
        {
          return result;
        }
      }

      v6 = *(v2 + 32);
      v7 = &v31;
      v31 = MEMORY[0x1E69E9820];
      v32 = 3221225472;
      v33 = ___filterAndCoalesceChangeResults_block_invoke_3;
      v34 = &unk_1E7CCD010;
      v5 = *(v2 + 56);
      v8 = *(v2 + 64);
      v35 = v6;
      v36 = v8;
      v37 = v3;
LABEL_17:
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = ___performBlockWithPreviousIndexes_block_invoke;
      v38[3] = &unk_1E7CCD100;
      v38[5] = v7;
      v38[6] = v5;
      v38[4] = v6;
      return [result enumerateObjectsWithOptions:2 usingBlock:{v38, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37}];
    }
  }

  return result;
}

void ___filterAndCoalesceChangeResults_block_invoke_3(uint64_t a1, CFIndex a2, int a3, _BYTE *a4)
{
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return;
      }

      goto LABEL_7;
    }

LABEL_11:
    [*(a1 + 32) addIndex:*(a1 + 48)];
    *a4 = 1;
    return;
  }

  if (a3 == 3)
  {
    goto LABEL_11;
  }

  if (a3 != 4)
  {
    return;
  }

LABEL_7:
  [*(a1 + 32) addIndex:a2];
  if (CFArrayGetValueAtIndex(*(a1 + 40), a2) == 1)
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);

    CFArraySetValueAtIndex(v7, v8, 1);
  }
}

uint64_t ___filterAndCoalesceChangeResults_block_invoke_4(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  result = [*(a1 + 32) addIndex:a2];
  if (a3 == 3 || !a3)
  {
    result = [*(a1 + 32) addIndex:*(a1 + 40)];
    *a4 = 1;
  }

  return result;
}

uint64_t ___filterAndCoalesceChangeResults_block_invoke_5(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == 8)
  {
    return [*(result + 32) addIndex:a2];
  }

  return result;
}

uint64_t ___filterAndCoalesceChangeResults_block_invoke_6(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == 9)
  {
    return [*(result + 32) addIndex:a2];
  }

  return result;
}

uint64_t ___filterAndCoalesceChangeResults_block_invoke_7(uint64_t result, uint64_t a2, int a3, _BYTE *a4)
{
  v4 = result;
  if ((a3 & 0xFFFFFFFE) == 8)
  {
    v5 = *(result + 32);

    return [v5 addIndex:a2];
  }

  else if (a3 == 6)
  {
    [*(result + 32) addIndex:a2];
    result = [*(v4 + 32) addIndex:*(v4 + 40)];
    *a4 = 1;
  }

  return result;
}

uint64_t ___collateIndexByGuids_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) objectForKey:a2];
  if (!v4)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    [*(a1 + 32) setObject:v4 forKey:a2];
  }

  v5 = [MEMORY[0x1E696AD98] numberWithLong:*(a1 + 40)];

  return [v4 addObject:v5];
}

uint64_t ___performBlockWithPreviousIndexes_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 longValue];
  result = [*(a1 + 32) containsIndex:v3];
  if ((result & 1) == 0)
  {
    CFArrayGetValueAtIndex(*(a1 + 48), v3);
    v5 = *(*(a1 + 40) + 16);

    return v5();
  }

  return result;
}

void OUTLINED_FUNCTION_1_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

uint64_t _createDictionaryFromFile(const __CFString *a1)
{
  v2 = _ABBundle();
  v3 = CFBundleCopyResourceURL(v2, a1, 0, 0);
  v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:{-[__CFURL path](v3, "path")}];
  CFRelease(v3);
  return v4;
}

uint64_t socialProfileURLForServiceAndUsername(void *key, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (socialProfileURLForServiceAndUsername_onceToken != -1)
  {
    socialProfileURLForServiceAndUsername_cold_1();
  }

  v4 = socialProfileURLForServiceAndUsername_formats;
  if (!key || !socialProfileURLForServiceAndUsername_formats)
  {
LABEL_11:
    Value = CFDictionaryGetValue(v4, @"UnknownServiceURLFormat");
    if (a2)
    {
      goto LABEL_7;
    }

    return 0;
  }

  Value = CFDictionaryGetValue(socialProfileURLForServiceAndUsername_formats, key);
  if (!Value)
  {
    v4 = socialProfileURLForServiceAndUsername_formats;
    goto LABEL_11;
  }

  if (!a2)
  {
    return 0;
  }

LABEL_7:
  v10 = 0;
  v6 = [a2 stringByAddingPercentEncodingWithAllowedCharacters:{objc_msgSend(MEMORY[0x1E696AB08], "URLPathAllowedCharacterSet")}];
  v7 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:Value validFormatSpecifiers:@"%@" error:&v10, v6];
  if (v10)
  {
    v8 = ABOSLogGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v12 = Value;
      v13 = 2114;
      v14 = a2;
      v15 = 2114;
      v16 = v10;
      _os_log_error_impl(&dword_1B7EFB000, v8, OS_LOG_TYPE_ERROR, "Error creating social profile URL from format = %{public}@, username = %{public}@, error = %{public}@", buf, 0x20u);
    }
  }

  return v7;
}

uint64_t __socialProfileURLForServiceAndUsername_block_invoke()
{
  result = _createDictionaryFromFile(@"SocialServicesURLFormats.plist");
  socialProfileURLForServiceAndUsername_formats = result;
  return result;
}

void *socialProfileFromURL(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = *MEMORY[0x1E69E9840];
  if (socialProfileFromURL_onceToken != -1)
  {
    socialProfileFromURL_cold_1();
  }

  v28 = [MEMORY[0x1E695DF90] dictionary];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [socialProfileFromURL_servicesDict allKeys];
  v9 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v30 = 0;
        v15 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v13 options:1 error:&v30];
        v16 = [a1 length];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __socialProfileFromURL_block_invoke_2;
        v29[3] = &unk_1E7CCD140;
        v29[6] = a1;
        v29[7] = a4;
        v29[4] = v28;
        v29[5] = v13;
        [v15 enumerateMatchesInString:a1 options:0 range:0 usingBlock:{v16, v29}];
        objc_autoreleasePoolPop(v14);
      }

      v10 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v10);
  }

  if (![v28 objectForKey:@"url"])
  {
    v17 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:a1];
    if ([v17 scheme])
    {
      [v28 setObject:a1 forKey:@"url"];
      v18 = v22;
      v19 = a2;
      if (v22 || (v18 = _socialProfileUsernameFromURL(a1)) != 0)
      {
        [v28 setObject:v18 forKey:@"username"];
      }

      if (!a2)
      {
        v19 = _socialProfileServiceFromURL(a1);
        if (!v19)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      v19 = a2;
      if (!a1 || !a2)
      {
LABEL_22:
        if (v17)
        {
        }

        goto LABEL_24;
      }

      [v28 setObject:socialProfileURLForServiceAndUsername(a2 forKey:{a1), @"url"}];
      [v28 setObject:a1 forKey:@"username"];
    }

    [v28 setObject:v19 forKey:@"service"];
    goto LABEL_22;
  }

LABEL_24:
  if (v28)
  {
    if (a5)
    {
      [v28 setObject:a5 forKey:@"displayname"];
    }

    if (a6)
    {
      [v28 setObject:a6 forKey:@"teamIdentifier"];
    }

    if (a7)
    {
      [v28 setObject:a7 forKey:@"bundleIdentifiers"];
    }
  }

  return v28;
}

uint64_t __socialProfileFromURL_block_invoke()
{
  result = _createDictionaryFromFile(@"SocialServicesURLRegexes.plist");
  socialProfileFromURL_servicesDict = result;
  return result;
}

uint64_t __socialProfileFromURL_block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 numberOfRanges] >= 3)
  {
    v4 = *(a1 + 48);
    v5 = [a2 rangeAtIndex:2];
    [*(a1 + 32) setObject:objc_msgSend(objc_msgSend(v4 forKey:{"substringWithRange:", v5, v6), "stringByRemovingPercentEncoding"), @"username"}];
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    [*(a1 + 32) setObject:v7 forKey:@"identifier"];
  }

  [*(a1 + 32) setObject:objc_msgSend(socialProfileFromURL_servicesDict forKey:{"objectForKey:", *(a1 + 40)), @"service"}];
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);

  return [v8 setObject:v9 forKey:@"url"];
}

uint64_t _socialProfileUsernameFromURL(uint64_t a1)
{
  v1 = [MEMORY[0x1E695DFF8] URLWithString:a1];
  if (![objc_msgSend(objc_msgSend(v1 "scheme")] || !objc_msgSend(v1, "resourceSpecifier"))
  {
    return 0;
  }

  v2 = [v1 resourceSpecifier];

  return [v2 stringByRemovingPercentEncoding];
}

uint64_t _socialProfileServiceFromURL(uint64_t a1)
{
  v1 = [MEMORY[0x1E695DFF8] URLWithString:a1];
  if (([objc_msgSend(objc_msgSend(v1 "scheme")] & 1) == 0 && !objc_msgSend(objc_msgSend(objc_msgSend(v1, "scheme"), "lowercaseString"), "isEqualToString:", @"https") || !objc_msgSend(v1, "host"))
  {
    return 0;
  }

  v2 = [v1 host];
  if (![v2 hasPrefix:@"www."])
  {
    return v2;
  }

  return [v2 substringFromIndex:4];
}

CFStringRef ABCopyPreferredNameForPerson(const void *a1)
{
  v2 = ABPersonCopyPreferredLinkedPersonForName(a1);
  if (v2)
  {
    v3 = v2;
    v4 = ABRecordCopyCompositeName(v2);
    CFRelease(v3);
    return v4;
  }

  else
  {

    return ABRecordCopyCompositeName(a1);
  }
}

uint64_t _ABFavoritesPhoneNumbersEqualCallback(void *a1, void *a2)
{
  v4 = CPPhoneNumberCopyHomeCountryCode();
  [a1 UTF8String];
  [a2 UTF8String];
  v5 = CPPhoneNumbersEqual();
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

void sub_1B7F58A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _ABPhoneUtilitiesSetDevicePhoneNumber(CFTypeRef cf)
{
  if (_globalPhoneNumberOverride != cf)
  {
    if (_globalPhoneNumberOverride)
    {
      CFRelease(_globalPhoneNumberOverride);
    }

    if (cf)
    {
      CFRetain(cf);
    }

    _globalPhoneNumberOverride = cf;
  }
}

uint64_t (*ABPhoneUtilitiesCopyDevicePhoneNumber())(void)
{
  v0 = _globalPhoneNumberOverride;
  if (_globalPhoneNumberOverride)
  {

    return CFRetain(v0);
  }

  else
  {
    result = ABPhoneUtilitiesCopyDevicePhoneNumber_AB_CTSettingCopyMyPhoneNumber;
    if (ABPhoneUtilitiesCopyDevicePhoneNumber__ctFrameworkHandle)
    {
      v2 = ABPhoneUtilitiesCopyDevicePhoneNumber_AB_CTSettingCopyMyPhoneNumber == 0;
    }

    else
    {
      v2 = 1;
    }

    if (!v2 || ([ABDynamicLoader loadFrameworkAtPath:@"/System/Library/Frameworks/CoreTelephony.framework/CoreTelephony" andStoreHandle:&ABPhoneUtilitiesCopyDevicePhoneNumber__ctFrameworkHandle bundle:0], result = dlsym(ABPhoneUtilitiesCopyDevicePhoneNumber__ctFrameworkHandle, "CTSettingCopyMyPhoneNumber"), (ABPhoneUtilitiesCopyDevicePhoneNumber_AB_CTSettingCopyMyPhoneNumber = result) != 0))
    {

      return result();
    }
  }

  return result;
}

const void *ABAddressBookPrimePersonContextForIdentifier(uint64_t a1, uint64_t a2, const void *a3)
{
  v4 = CPRecordCreateWithRecordID();
  v5 = v4;
  if (a3)
  {
    ABRecordSetValue(v4, kABPersonInternalUUIDProperty, a3, 0);
  }

  CPRecordStoreAddRecord();
  CFRelease(v5);
  return v5;
}

uint64_t ABAddressBookCopyAllPeopleForBufferPredicate(uint64_t a1, void *a2, int a3)
{
  result = 0;
  if (a1 && a2)
  {
    if (a3 == 1)
    {
      v5 = @" ORDER BY LastSortLanguageIndex, LastSortSection, LastSort";
    }

    else
    {
      v5 = @" ORDER BY FirstSortLanguageIndex, FirstSortSection, FirstSort";
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"WHERE rowid IN(%@) %@", objc_msgSend(a2, "query"), v5];
    return CPRecordStoreCopyAllInstancesOfClassWhereWithBindBlock();
  }

  return result;
}

void __ABAddressBookCopyAllPeopleForBufferPredicate_block_invoke(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 1;
  v4 = objc_opt_new();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __ABAddressBookCopyAllPeopleForBufferPredicate_block_invoke_2;
  v9[3] = &unk_1E7CCD470;
  v9[4] = v10;
  v9[5] = a2;
  [v4 setIntBinder:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __ABAddressBookCopyAllPeopleForBufferPredicate_block_invoke_3;
  v8[3] = &unk_1E7CCCE20;
  v8[4] = v10;
  v8[5] = a2;
  [v4 setStringBinder:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __ABAddressBookCopyAllPeopleForBufferPredicate_block_invoke_4;
  v7[3] = &unk_1E7CCD498;
  v7[4] = v10;
  v7[5] = a2;
  [v4 setBlobBinder:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __ABAddressBookCopyAllPeopleForBufferPredicate_block_invoke_5;
  v6[3] = &unk_1E7CCD4C0;
  v6[4] = v10;
  v6[5] = a2;
  [v4 setPointerBinder:v6];
  v5 = [*(a1 + 32) bindBlock];
  (*(v5 + 16))(v5, v4);
  _Block_object_dispose(v10, 8);
}

uint64_t __ABAddressBookCopyAllPeopleForBufferPredicate_block_invoke_2(uint64_t a1, int a2)
{
  result = sqlite3_bind_int(*(*(a1 + 40) + 8), *(*(*(a1 + 32) + 8) + 24), a2);
  ++*(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ABAddressBookCopyAllPeopleForBufferPredicate_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 40) + 8);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (a2)
  {
    v6 = _CPCreateUTF8StringFromCFString();
    result = sqlite3_bind_text(v3, v5, v6, -1, MEMORY[0x1E69E9B38]);
  }

  else
  {
    result = sqlite3_bind_null(*(*(a1 + 40) + 8), *(v4 + 24));
  }

  ++*(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ABAddressBookCopyAllPeopleForBufferPredicate_block_invoke_4(uint64_t a1, void *a2, int n)
{
  result = sqlite3_bind_blob(*(*(a1 + 40) + 8), *(*(*(a1 + 32) + 8) + 24), a2, n, 0);
  ++*(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ABAddressBookCopyAllPeopleForBufferPredicate_block_invoke_5(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  result = sqlite3_bind_blob(*(*(a1 + 40) + 8), *(*(*(a1 + 32) + 8) + 24), &v4, 8, 0xFFFFFFFFFFFFFFFFLL);
  ++*(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AppendPendingBlobData(void *a1)
{
  v2 = [objc_msgSend(a1 "mutableData")];
  v3 = [a1 blobLength];
  v4 = v3 - [a1 blobBytesWritten];
  v5 = [objc_msgSend(a1 "mutableData")] + v4;
  v6 = [a1 maxBufferSize];
  if (v5 <= v6)
  {
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v2 >= [a1 maxBufferSize])
    {
      return 0;
    }

    v7 = [a1 maxBufferSize];
    v4 = v7 - v2;
    if (v7 == v2)
    {
      return 0;
    }
  }

  [objc_msgSend(a1 "mutableData")];
  sqlite3_blob_read([a1 incompleteBlob], (objc_msgSend(objc_msgSend(a1, "mutableData"), "mutableBytes") + v2), v4, objc_msgSend(a1, "blobBytesWritten"));
  [a1 setBlobBytesWritten:{objc_msgSend(a1, "blobBytesWritten") + v4}];
  if (v5 > v6)
  {
    return 0;
  }

LABEL_8:
  sqlite3_blob_close([a1 incompleteBlob]);
  [a1 setIncompleteBlob:0];
  [a1 setBlobLength:0];
  [a1 setBlobBytesWritten:0];
  return 1;
}

uint64_t _ABStringByTrimmingWhiteSpace(void *a1)
{
  v2 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];

  return [a1 stringByTrimmingCharactersInSet:v2];
}

void *ABCFTSSetCollatorOverrideForDatabaseConnectionHandle(const void *a1, void *a2)
{
  result = ABCFTSGetCollationContextForDatabaseConnectionHandle(a1);
  if (result)
  {
    v4 = result;
    result = *result;
    if (result != a2)
    {
      if (result)
      {
        result = ABCReleaseCollator(result);
      }

      *v4 = a2;
    }
  }

  return result;
}

void *ABCFTSSetLocaleOverrideForDatabaseConnectionHandle(const void *a1, void *a2)
{
  result = ABCFTSGetCollationContextForDatabaseConnectionHandle(a1);
  if (result)
  {
    v4 = result;
    result = result[1];
    if (result != a2)
    {
      if (result)
      {
        CFRelease(result);
      }

      v4[1] = a2;

      return CFRetain(a2);
    }
  }

  return result;
}

void ABCFSmartDialerFTSTokenizerPropertyMatchCollectFunction(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 == 4)
  {
    v5 = sqlite3_value_int(a3[3]);
    v6 = sqlite3_value_blob(*a3);
    v7 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:0];
    v8 = sqlite3_value_blob(a3[1]);
    v9 = sqlite3_value_blob(a3[2]);
    if (v6)
    {
      table = v7;
      v19 = v6;
      v20 = v5;
      v21 = v8[1];
      if (v21)
      {
        v10 = v9;
        v11 = 0;
        v12 = *v8;
        v13 = 2;
        do
        {
          if (v12)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            v17 = v13;
            do
            {
              if (v8[v17])
              {
                if (!v15)
                {
                  v15 = [MEMORY[0x1E695DF70] array];
                  v18 = ABCFSmartDialerFTSColumnToABPropertyID(v11);
                  NSMapInsert(table, (v18 + 1), v15);
                }

                [v15 addObject:{CFArrayGetValueAtIndex(v10, v16)}];
              }

              ++v16;
              v17 += 3 * v21;
              v14 += 2;
            }

            while (v14 < v12);
          }

          ++v11;
          v13 += 3;
        }

        while (v11 != v21);
      }

      v5 = v20;
      if (table)
      {
        NSMapInsert(v19, v20, table);
      }
    }

    sqlite3_result_int(a1, v5);
  }

  else
  {

    sqlite3_result_null(a1);
  }
}

uint64_t ABCFSmartDialerFTSColumnToABPropertyID(int a1)
{
  result = 0xFFFFFFFFLL;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v3 = &kABPersonOrganizationProperty;
        break;
      case 4:
        v3 = &kABPersonNicknameProperty;
        break;
      case 5:
        v3 = &kABPersonPhoneProperty;
        break;
      default:
        return result;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      v3 = &kABPersonMiddleNameProperty;
    }

    else
    {
      if (a1 != 2)
      {
        return result;
      }

      v3 = &kABPersonLastNameProperty;
    }
  }

  else
  {
    v3 = &kABPersonFirstNameProperty;
  }

  return *v3;
}

uint64_t ABCFFTSTokenizerCreate(int a1, uint64_t a2, void *a3)
{
  v6 = sqlite3_malloc(64);
  if (!v6)
  {
    return 7;
  }

  v7 = v6;
  v6[2] = 0u;
  v6[3] = 0u;
  *v6 = 0u;
  v6[1] = 0u;
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespaceAndNewline);
  *(v7 + 3) = CFCharacterSetCreateInvertedSet(0, Predefined);
  v9 = CFCharacterSetGetPredefined(kCFCharacterSetWhitespaceAndNewline);
  MutableCopy = CFCharacterSetCreateMutableCopy(0, v9);
  *(v7 + 4) = MutableCopy;
  if (MutableCopy)
  {
    CFCharacterSetAddCharactersInString(MutableCopy, @"*");
  }

  if (a1 <= 1)
  {
    v11 = *MEMORY[0x1E695E480];
    v12 = CFStringCreateWithCString(*MEMORY[0x1E695E480], "en", 0x8000100u);
LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  v11 = *MEMORY[0x1E695E480];
  v12 = CFStringCreateWithCString(*MEMORY[0x1E695E480], *(a2 + 8), 0x8000100u);
  if (a1 < 4)
  {
    goto LABEL_9;
  }

  v13 = *(a2 + 24);
  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = CFStringCreateWithCString(v11, v13, 0x8000100u);
LABEL_10:
  *(v7 + 1) = CFLocaleCreate(v11, v12);
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v12;
  }

  *(v7 + 2) = ABCCreateCollatorWithPreferredLocale(0, 1, v15);
  v19.location = 0;
  v19.length = 0;
  *(v7 + 5) = CFStringTokenizerCreate(v11, &stru_1F2FE2718, v19, 0x810000uLL, *(v7 + 1));
  *(v7 + 7) = CFArrayCreateMutable(0, 2, MEMORY[0x1E695E9C0]);
  if (v12)
  {
    CFRelease(v12);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  v16 = *(v7 + 3);
  if (v16)
  {
    if (*(v7 + 4))
    {
      result = 0;
      *a3 = v7;
      return result;
    }

    CFRelease(v16);
  }

  v18 = *(v7 + 4);
  if (v18)
  {
    CFRelease(v18);
  }

  return 7;
}

uint64_t ABCFFTSTokenizerDestroy(uint64_t a1)
{
  CFRelease(*(a1 + 24));
  CFRelease(*(a1 + 32));
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  if ((*(a1 + 49) & 1) == 0)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  if ((*(a1 + 50) & 1) == 0)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      ABCReleaseCollator(v4);
    }
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    CFRelease(v5);
  }

  sqlite3_free(a1);
  return 0;
}

uint64_t ABCFFTSTokenizerOpen(uint64_t a1, char *__s, int a3, void *a4)
{
  v5 = a3;
  *a4 = 0;
  if (a3 < 0)
  {
    if (!__s)
    {
      return 1;
    }

    v5 = strlen(__s);
  }

  v8 = sqlite3_malloc(56);
  if (!v8)
  {
    return 7;
  }

  v9 = v8;
  v8[6] = 0;
  *(v8 + 1) = 0u;
  *(v8 + 2) = 0u;
  *v8 = 0u;
  if (CFArrayGetCount(*(a1 + 56)))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), 0);
    *(v9 + 6) = CFRetain(ValueAtIndex);
    CFArrayRemoveValueAtIndex(*(a1 + 56), 0);
  }

  else
  {
    *(v9 + 6) = ABTokenListCreate();
  }

  v11 = MEMORY[0x1E695E480];
  if ((*(a1 + 48) & 1) == 0)
  {
    v12 = ABCFTSGetCollationContextForDatabaseConnectionHandle(*(*a1 + 48));
    if (v12)
    {
      v13 = *(v12 + 1);
      if (v13)
      {
        *(a1 + 49) = 1;
        v14 = *(a1 + 8);
        if (v14)
        {
          CFRelease(v14);
        }

        *(a1 + 8) = v13;
        v15 = *(a1 + 40);
        if (v15)
        {
          CFRelease(v15);
        }

        v25.location = 0;
        v25.length = 0;
        *(a1 + 40) = CFStringTokenizerCreate(*v11, &stru_1F2FE2718, v25, 0x810000uLL, v13);
      }
    }

    v16 = ABCFTSGetCollationContextForDatabaseConnectionHandle(*(*a1 + 48));
    if (v16)
    {
      v17 = *v16;
      if (*v16)
      {
        v18 = *(a1 + 16);
        if (v18)
        {
          ABCReleaseCollator(v18);
        }

        *(a1 + 16) = v17;
        *(a1 + 50) = 1;
      }
    }

    *(a1 + 48) = 1;
  }

  v19 = CFStringCreateWithBytes(*v11, __s, v5, 0x8000100u, 0);
  *(v9 + 1) = v19;
  if (v19)
  {
    MutableCopy = CFStringCreateMutableCopy(0, 0, v19);
    CFStringTrimWhitespace(MutableCopy);
    if (CFStringHasPrefix(MutableCopy, @"##&"))
    {
      *(v9 + 4) = 1;
      v21 = CFStringFind(*(v9 + 1), @"##&", 0);
      *(v9 + 5) = v21.length + v21.location;
    }

    else
    {
      *(v9 + 4) = 0;
    }

    CFRelease(MutableCopy);
    Length = CFStringGetLength(*(v9 + 1));
    if (*(v9 + 4))
    {
      v26.length = Length;
      v26.location = 0;
      CFStringTokenizerSetString(*(a1 + 40), *(v9 + 1), v26);
    }

    else
    {
      ABTokenListPopulateFromString(*(v9 + 6), *(a1 + 40), *(a1 + 16), *(v9 + 1), 1, 1, 0);
    }

    v24 = *(v9 + 1);
    if (v24)
    {
      if (*(a1 + 40))
      {
        result = 0;
        *a4 = v9;
        return result;
      }

      CFRelease(v24);
    }
  }

  sqlite3_free(v9);
  return 1;
}

uint64_t ABCFFTSTokenizerClose(CFTypeRef *a1)
{
  v2 = *a1;
  CFRelease(a1[1]);
  CFArrayAppendValue(v2[7], a1[6]);
  ABTokenListRemoveAllTokens(a1[6]);
  CFRelease(a1[6]);
  v3 = a1[4];
  if (v3)
  {
    free(v3);
  }

  sqlite3_free(a1);
  return 0;
}

uint64_t ABCFFTSTokenizerNext(uint64_t *a1, void *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  v11 = *a1;
  *a3 = 0;
  v12 = *(a1 + 4);
  if (v12)
  {
    v28 = a6;
    if (v12 == 1)
    {
      v13 = a1[5];
      do
      {
        v35.length = CFStringGetLength(a1[1]) - a1[5];
        result.location = 0;
        result.length = 0;
        v31 = 0;
        usedBufLen = 0;
        v30 = 0;
        v35.location = v13;
        if (!CFStringFindCharacterFromSet(a1[1], *(v11 + 24), v35, 0, &result))
        {
          return 101;
        }

        v34.length = result.location;
        v34.location = 0;
        CFStringGetBytes(a1[1], v34, 0x8000100u, 0, 0, 0, 0, &usedBufLen);
        location = result.location;
        *a4 = usedBufLen;
        v15.length = CFStringGetLength(a1[1]) - location;
        if (v15.length >= 1 && (v15.location = location, CFStringFindCharacterFromSet(a1[1], *(v11 + 32), v15, 0, &result)))
        {
          v16.length = result.location;
          v17 = result.location - v13;
          v18 = a1[1];
        }

        else
        {
          Length = CFStringGetLength(a1[1]);
          v17 = Length - result.location;
          v18 = a1[1];
          v16.length = CFStringGetLength(v18);
        }

        v16.location = 0;
        CFStringGetBytes(v18, v16, 0x8000100u, 0, 0, 0, 0, &v31);
        *a5 = v31;
        v36.location = v13;
        v36.length = v17;
        v20 = CFStringCreateWithSubstring(0, a1[1], v36);
        v21 = a1[4];
        if (v21)
        {
          free(v21);
        }

        v22 = ABCreateSortKey(v20, *(v11 + 16), 0, &v30);
        a1[4] = v22;
        *a3 = v30;
        *a2 = v22;
        CFRelease(v20);
        v23 = v17 + v13;
        if (*a3)
        {
          a1[5] = v23;
          break;
        }

        v37.length = CFStringGetLength(a1[1]) - v23;
        v29.location = 0;
        v29.length = 0;
        v37.location = v23;
        if (!CFStringFindWithOptions(a1[1], @"##&", v37, 0, &v29))
        {
          return 101;
        }

        v13 = v29.length + v29.location;
        a1[5] = v29.length + v29.location;
      }

      while (!*a3);
    }
  }

  else
  {
    v24 = a1[6];
    if (!v24)
    {
      ABCFFTSTokenizerNext_cold_1();
    }

    v25 = a1[3];
    if (*(v24 + 32) == v25)
    {
      return 101;
    }

    v28 = a6;
    *a3 = ABTokenListGetTokenCollationKeyLengthAtIndex(v24, v25);
    *a2 = ABTokenListGetTokenCollationKeyAtIndex(a1[6], a1[3]);
    *a4 = ABTokenListGetTokenStartByteOffsetAtIndex(a1[6], a1[3]);
    *a5 = ABTokenListGetTokenEndByteOffsetAtIndex(a1[6], a1[3]);
  }

  v26 = 0;
  v27 = a1[3];
  a1[3] = v27 + 1;
  *v28 = v27;
  return v26;
}

void ABCFFTSTokenizerNameRankFunction(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 < 2 || (v4 = sqlite3_value_blob(*a3), v5 = *v4, v6 = v4[1], v7 = sqlite3_value_blob(a3[1]), (v5 & 1) != 0) || ((v8 = v7, v20 = 2 * CFArrayGetCount(v7), v20 == v5) ? (v9 = v6 == 25) : (v9 = 0), v9 ? (v10 = v5 == 0) : (v10 = 1), v10))
  {
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = v5 >> 1;
    v14 = 2;
    do
    {
      v15 = 0;
      v16 = 0;
      v17 = v14;
      do
      {
        if (gNameColumns[v15] == 1)
        {
          if (v4[v17])
          {
            ++v12;
            if (v11 < v13)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v8, v11);
              v12 += ((v16 & 1) == 0) + CFStringGetLength(ValueAtIndex);
              v16 = 1;
            }
          }
        }

        ++v15;
        v17 += 3;
      }

      while (v15 != 25);
      ++v11;
      v14 += 75;
    }

    while (v11 != v20);
  }

  sqlite3_result_int(a1, v12);
}

void ABCFFTSTokenizerPropertyMatchFunction(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  table = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:0];
  v19 = table;
  if (a2 >= 2)
  {
    v5 = sqlite3_value_blob(*a3);
    v6 = sqlite3_value_blob(a3[1]);
    v17 = v5[1];
    if (v17)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v5;
      v10 = 2;
      do
      {
        if (v9)
        {
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = v10;
          do
          {
            if (v5[v14])
            {
              if (!v12)
              {
                v12 = [MEMORY[0x1E695DF70] array];
                v15 = ABCFFTSColumnToABPropertyID(v8);
                NSMapInsert(table, (v15 + 1), v12);
              }

              [v12 addObject:{CFArrayGetValueAtIndex(v7, v13)}];
            }

            ++v13;
            v14 += 3 * v17;
            v11 += 2;
          }

          while (v11 < v9);
        }

        ++v8;
        v10 += 3;
      }

      while (v8 != v17);
    }
  }

  sqlite3_result_blob(a1, &v19, 8, 0xFFFFFFFFFFFFFFFFLL);
}

void ABCFSmartDialerFTSTokenizerPropertyMatchFunction(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  table = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:0];
  v19 = table;
  if (a2 >= 2)
  {
    v5 = sqlite3_value_blob(*a3);
    v6 = sqlite3_value_blob(a3[1]);
    v17 = v5[1];
    if (v17)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v5;
      v10 = 2;
      do
      {
        if (v9)
        {
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = v10;
          do
          {
            if (v5[v14])
            {
              if (!v12)
              {
                v12 = [MEMORY[0x1E695DF70] array];
                v15 = ABCFSmartDialerFTSColumnToABPropertyID(v8);
                NSMapInsert(table, (v15 + 1), v12);
              }

              [v12 addObject:{CFArrayGetValueAtIndex(v7, v13)}];
            }

            ++v13;
            v14 += 3 * v17;
            v11 += 2;
          }

          while (v11 < v9);
        }

        ++v8;
        v10 += 3;
      }

      while (v8 != v17);
    }
  }

  sqlite3_result_blob(a1, &v19, 8, 0xFFFFFFFFFFFFFFFFLL);
}

void ABCFFTSTokenizerPropertyMatchCollectFunction(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 == 4)
  {
    v5 = sqlite3_value_int(a3[3]);
    v6 = sqlite3_value_blob(*a3);
    v7 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:0];
    v8 = sqlite3_value_blob(a3[1]);
    v9 = sqlite3_value_blob(a3[2]);
    if (v6)
    {
      table = v7;
      v19 = v6;
      v20 = v5;
      v21 = v8[1];
      if (v21)
      {
        v10 = v9;
        v11 = 0;
        v12 = *v8;
        v13 = 2;
        do
        {
          if (v12)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            v17 = v13;
            do
            {
              if (v8[v17])
              {
                if (!v15)
                {
                  v15 = [MEMORY[0x1E695DF70] array];
                  v18 = ABCFFTSColumnToABPropertyID(v11);
                  NSMapInsert(table, (v18 + 1), v15);
                }

                [v15 addObject:{CFArrayGetValueAtIndex(v10, v16)}];
              }

              ++v16;
              v17 += 3 * v21;
              v14 += 2;
            }

            while (v14 < v12);
          }

          ++v11;
          v13 += 3;
        }

        while (v11 != v21);
      }

      v5 = v20;
      if (table)
      {
        NSMapInsert(v19, v20, table);
      }
    }

    sqlite3_result_int(a1, v5);
  }

  else
  {

    sqlite3_result_null(a1);
  }
}

void ABCFFTSTokenizerSelectSnippetColumnFunction(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 >= 1 && (v4 = sqlite3_value_blob(*a3), v5 = v4[1], v5))
  {
    v6 = 0;
    v7 = 2;
    do
    {
      if (*v4)
      {
        v8 = *v4;
        v9 = v7;
        while (!v4[v9])
        {
          v9 += 3 * v5;
          if (!--v8)
          {
            goto LABEL_8;
          }
        }

        if (gNameColumns[v6])
        {
          v10 = -1;
        }

        else
        {
          v10 = v6;
        }
      }

      else
      {
LABEL_8:
        v10 = -1;
      }

      if (v10 != -1)
      {
        break;
      }

      ++v6;
      v7 += 3;
    }

    while (v6 < v5);
  }

  else
  {
    v10 = -1;
  }

  sqlite3_result_int(a1, v10);
}

void __ABTokenListCreate_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  qword_1ED646D98 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"[[:script=Hiragana:][:script=Katakana:]]+|[^[[:script=Hiragana:][:script=Katakana:]]]{1}" options:1 error:0];

  objc_autoreleasePoolPop(v0);
}

void ABTokenListDestroy(uint64_t a1)
{
  if (!a1)
  {
    ABTokenListDestroy_cold_1();
  }

  ABTokenListRemoveAllTokens(a1);

  v2 = *(a1 + 16);
  if (v2)
  {

    free(v2);
  }
}

void ABTokenListRemoveAllTokens(uint64_t a1)
{
  if (!a1)
  {
    ABTokenListRemoveAllTokens_cold_1();
  }

  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(a1 + 16) + v3;
      CFRelease(*v4);
      v5 = *(v4 + 8);
      if (v5)
      {
        free(v5);
      }

      v3 += 56;
      --v2;
    }

    while (v2);
  }

  *(a1 + 32) = 0;
}

CFStringTokenizerTokenType ABTokenListPopulateFromString(uint64_t a1, __CFStringTokenizer *a2, uint64_t a3, const __CFString *a4, int a5, int a6, uint64_t a7)
{
  if (!a1)
  {
    ABTokenListPopulateFromString_cold_1();
  }

  ABTokenListRemoveAllTokens(a1);
  v40.length = CFStringGetLength(a4);
  v40.location = 0;
  CFStringTokenizerSetString(a2, a4, v40);
  result = CFStringTokenizerAdvanceToNextToken(a2);
  if (result)
  {
    v12 = result;
    alloc = *MEMORY[0x1E695E480];
    v23 = a6;
    do
    {
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(a2);
      v36 = 0;
      usedBufLen[0] = 0;
      v38.location = 0;
      v38.length = CurrentTokenRange.location;
      CFStringGetBytes(a4, v38, 0x8000100u, 0, 0, 0, 0, usedBufLen);
      v39.length = CurrentTokenRange.location + CurrentTokenRange.length;
      v39.location = 0;
      CFStringGetBytes(a4, v39, 0x8000100u, 0, 0, 0, 0, &v36);
      v14 = usedBufLen[0];
      v15 = v36 - usedBufLen[0];
      v16 = CFStringCreateWithSubstring(alloc, a4, CurrentTokenRange);
      if ((v12 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      if (a6)
      {
        context = objc_autoreleasePoolPush();
        v17 = a7;
        v18 = *(a1 + 40);
        v19 = [(__CFString *)v16 length];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __ABTokenListPopulateFromString_block_invoke;
        v29[3] = &__block_descriptor_96_e37_v32__0__NSTextCheckingResult_8Q16_B24l;
        v29[4] = v16;
        v30 = CurrentTokenRange;
        v31 = a1;
        v32 = a4;
        v33 = a3;
        v34 = v14;
        v35 = v15;
        v20 = v18;
        a7 = v17;
        a6 = v23;
        [v20 enumerateMatchesInString:v16 options:0 range:0 usingBlock:{v19, v29}];
        objc_autoreleasePoolPop(context);
      }

      if (a7)
      {
LABEL_8:
        _AddTokenListEntryForRangeInString(a1, a4, a3, v14, v15, CurrentTokenRange.location, CurrentTokenRange.length, v16);
      }

      if (a5)
      {
        v21 = CFStringTokenizerCopyCurrentTokenAttribute(a2, 0x10000uLL);
        if (v21)
        {
          v22 = v21;
          if (CFStringCompare(v21, v16, 0))
          {
            _AddTokenListEntryForRangeInString(a1, a4, a3, v14, v15, CurrentTokenRange.location, CurrentTokenRange.length, v22);
          }

          CFRelease(v22);
        }
      }

      if (v16)
      {
        CFRelease(v16);
      }

      result = CFStringTokenizerAdvanceToNextToken(a2);
      v12 = result;
    }

    while (result);
  }

  return result;
}

void __ABTokenListPopulateFromString_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 range];
  v5 = v4;
  v6 = [*(a1 + 32) substringWithRange:{v3, v4}];
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  v12 = (*(a1 + 40) + v3);

  _AddTokenListEntryForRangeInString(v7, v8, v9, v10, v11, v12, v5, v6);
}

void _AddTokenListEntryForRangeInString(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, const void *a6, const void *a7, CFStringRef theString)
{
  if (a2 && a1 && theString && CFStringGetLength(theString))
  {
    v15 = *(a1 + 32);
    if (v15 == *(a1 + 24))
    {
      v16 = malloc_type_realloc(*(a1 + 16), 56 * v15 + 2800, 0x1070040AB53498DuLL);
      v17 = *(a1 + 24) + 50;
      *(a1 + 16) = v16;
      *(a1 + 24) = v17;
    }

    v21 = 0;
    if (a3)
    {
      v18 = ABCreateSortKey(theString, a3, 0, &v21);
      if (!v18 || !v21)
      {
        if (v18)
        {
          free(v18);
        }

        return;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = &a4[a5];
    v20 = (*(a1 + 16) + 56 * *(a1 + 32));
    v20[3] = a4;
    v20[4] = v19;
    v20[1] = v18;
    *v20 = CFRetain(theString);
    v20[2] = v21;
    v20[5] = a6;
    v20[6] = a7;
    ++*(a1 + 32);
  }
}

uint64_t ABTokenListGetCount(uint64_t a1)
{
  if (!a1)
  {
    ABCFFTSTokenizerNext_cold_1();
  }

  return *(a1 + 32);
}

uint64_t ABTokenListGetTokenStartByteOffsetAtIndex(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    ABTokenListGetTokenStartByteOffsetAtIndex_cold_2();
  }

  if (*(a1 + 32) <= a2)
  {
    ABTokenListGetTokenStartByteOffsetAtIndex_cold_1();
  }

  return *(*(a1 + 16) + 56 * a2 + 24);
}

uint64_t ABTokenListGetTokenEndByteOffsetAtIndex(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    ABTokenListGetTokenEndByteOffsetAtIndex_cold_2();
  }

  if (*(a1 + 32) <= a2)
  {
    ABTokenListGetTokenEndByteOffsetAtIndex_cold_1();
  }

  return *(*(a1 + 16) + 56 * a2 + 32);
}

uint64_t ABTokenListGetTokenAtIndex(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    ABTokenListGetTokenAtIndex_cold_2();
  }

  if (*(a1 + 32) <= a2)
  {
    ABTokenListGetTokenAtIndex_cold_1();
  }

  return *(*(a1 + 16) + 56 * a2);
}

uint64_t ABTokenListGetTokenCollationKeyAtIndex(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    ABTokenListGetTokenCollationKeyAtIndex_cold_2();
  }

  if (*(a1 + 32) <= a2)
  {
    ABTokenListGetTokenCollationKeyAtIndex_cold_1();
  }

  return *(*(a1 + 16) + 56 * a2 + 8);
}

uint64_t ABTokenListGetTokenCollationKeyLengthAtIndex(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    ABTokenListGetTokenCollationKeyLengthAtIndex_cold_2();
  }

  if (*(a1 + 32) <= a2)
  {
    ABTokenListGetTokenCollationKeyLengthAtIndex_cold_1();
  }

  return *(*(a1 + 16) + 56 * a2 + 16);
}

uint64_t ABTokenListGetTokenRangeAtIndex(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    ABTokenListGetTokenRangeAtIndex_cold_2();
  }

  if (*(a1 + 32) <= a2)
  {
    ABTokenListGetTokenRangeAtIndex_cold_1();
  }

  return *(*(a1 + 16) + 56 * a2 + 40);
}

uint64_t ABCFFTSColumnToABPropertyID(int a1)
{
  switch(a1)
  {
    case 0:
      v1 = &kABPersonFirstNameProperty;
      goto LABEL_26;
    case 1:
      v1 = &kABPersonLastNameProperty;
      goto LABEL_26;
    case 2:
      v1 = &kABPersonMiddleNameProperty;
      goto LABEL_26;
    case 3:
      v1 = &kABPersonFirstNamePhoneticProperty;
      goto LABEL_26;
    case 4:
      v1 = &kABPersonMiddleNamePhoneticProperty;
      goto LABEL_26;
    case 5:
      v1 = &kABPersonLastNamePhoneticProperty;
      goto LABEL_26;
    case 6:
      v1 = &kABPersonOrganizationProperty;
      goto LABEL_26;
    case 7:
      v1 = &kABPersonOrganizationPhoneticProperty;
      goto LABEL_26;
    case 8:
      v1 = &kABPersonDepartmentProperty;
      goto LABEL_26;
    case 9:
      v1 = &kABPersonNoteProperty;
      goto LABEL_26;
    case 10:
      v1 = &kABPersonBirthdayProperty;
      goto LABEL_26;
    case 11:
      v1 = &kABPersonJobTitleProperty;
      goto LABEL_26;
    case 12:
      v1 = &kABPersonNicknameProperty;
      goto LABEL_26;
    case 13:
      v1 = &kABPersonPrefixProperty;
      goto LABEL_26;
    case 14:
      v1 = &kABPersonSuffixProperty;
      goto LABEL_26;
    case 15:
      v1 = &kABPersonDisplayNameProperty;
      goto LABEL_26;
    case 16:
      v1 = &kABPersonPhoneProperty;
      goto LABEL_26;
    case 17:
      v1 = &kABPersonEmailProperty;
      goto LABEL_26;
    case 18:
      v1 = &kABPersonAddressProperty;
      goto LABEL_26;
    case 19:
      v1 = &kABPersonSocialProfileProperty;
      goto LABEL_26;
    case 20:
      v1 = &kABPersonURLProperty;
      goto LABEL_26;
    case 21:
      v1 = &kABPersonRelatedNamesProperty;
      goto LABEL_26;
    case 22:
      v1 = &kABPersonInstantMessageProperty;
      goto LABEL_26;
    case 23:
      v1 = &kABPersonDateProperty;
LABEL_26:
      result = *v1;
      break;
    default:
      result = 0xFFFFFFFFLL;
      break;
  }

  return result;
}

uint64_t ABTokenListRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED646DA0 = result;
  return result;
}

uint64_t ABAccountStoreGetAccountTypeForAccount(void *a1, const void *a2)
{
  v4 = __accountTypesCache;
  if (__accountTypesCache)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    __accountTypesCache = v4;
    if (a2)
    {
LABEL_3:
      v5 = ABAccountCopyIdentifier(a2);
      if (v5)
      {
        v6 = v5;
        v7 = [__accountTypesCache objectForKey:v5];
        if (v7)
        {
          v8 = v7;
          if (v7 == [MEMORY[0x1E695DFB0] null])
          {
            v9 = 0;
          }

          else
          {
            v9 = v8;
          }
        }

        else
        {
          v9 = [objc_msgSend(a1 displayTypeForAccountWithIdentifier:{v6), "identifier"}];
          v12 = __accountTypesCache;
          if (v9)
          {
            v13 = __accountTypesCache;
            v14 = v9;
          }

          else
          {
            v14 = [MEMORY[0x1E695DFB0] null];
            v13 = v12;
          }

          [v13 setObject:v14 forKey:v6];
        }

        return v9;
      }

      return 0;
    }
  }

  if (![v4 objectForKey:@"com.apple.unit-testing"])
  {
    return 0;
  }

  v10 = __accountTypesCache;

  return [v10 objectForKey:@"com.apple.unit-testing"];
}

uint64_t ABAccountStoreGetAccountTypeForSource(void *a1, uint64_t a2)
{
  result = ABRecordGetAddressBook();
  if (result)
  {
    AccountForSource = ABAddressBookGetAccountForSource(result, a2);

    return ABAccountStoreGetAccountTypeForAccount(a1, AccountForSource);
  }

  return result;
}

uint64_t ABAccountAddTypeToCache(uint64_t a1, uint64_t a2)
{
  v4 = __accountTypesCache;
  if (!__accountTypesCache)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    __accountTypesCache = v4;
  }

  return [v4 setObject:a2 forKey:a1];
}

uint64_t _mergeRecordsIntoSource(const __CFString *a1, const void *a2, const void *a3)
{
  v6 = ABAddressBookCopyArrayOfAllPeopleInSource(a1, a2);
  Count = CFArrayGetCount(v6);
  if (v6)
  {
    v8 = Count;
    ABDiagnosticsEnabled();
    _ABLog2(5, "_Bool _mergeRecordsIntoSource(ABAddressBookRef, ABRecordRef, ABRecordRef)", 134, 0, @"Merging linked contacts", v9, v10, v11, v30);
    if (v8 < 1)
    {
      v17 = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
      if (_mergePersonIntoLinkedPeopleFromSource(a1, ValueAtIndex, a3))
      {
        v13 = 1;
        do
        {
          v14 = v13;
          if (v8 == v13)
          {
            break;
          }

          v15 = CFArrayGetValueAtIndex(v6, v13);
          v16 = _mergePersonIntoLinkedPeopleFromSource(a1, v15, a3);
          v13 = v14 + 1;
        }

        while (v16);
        v17 = v14 < v8;
      }

      else
      {
        v17 = 1;
      }
    }

    error = 0;
    if (ABAddressBookSave(a1, &error))
    {
      ABDiagnosticsEnabled();
      _ABLog2(5, "_Bool _mergeRecordsIntoSource(ABAddressBookRef, ABRecordRef, ABRecordRef)", 157, 0, @"Moving non linked contacts", v19, v20, v21, v31);
      if (!v17)
      {
        v18 = _movePeopleAndGroupsToSource(a1, a2, a3);
LABEL_18:
        CFRelease(v6);
        return v18;
      }
    }

    else
    {
      if (error)
      {
        v22 = CFErrorCopyDescription(error);
        ABDiagnosticsEnabled();
        _ABLog2(3, "_Bool _mergeRecordsIntoSource(ABAddressBookRef, ABRecordRef, ABRecordRef)", 147, 0, @"Error saving DB when moving people to source %@: %@", v23, v24, v25, a3);
        CFRelease(v22);
      }

      ABDiagnosticsEnabled();
      _ABLog2(5, "_Bool _mergeRecordsIntoSource(ABAddressBookRef, ABRecordRef, ABRecordRef)", 157, 0, @"Moving non linked contacts", v26, v27, v28, v31);
    }

    v18 = 0;
    goto LABEL_18;
  }

  return 1;
}

BOOL _mergePersonIntoLinkedPeopleFromSource(const void *a1, ABRecordRef person, const void *a3)
{
  v6 = ABPersonCopyArrayOfAllLinkedPeople(person);
  if (v6)
  {
    v7 = v6;
    Count = CFArrayGetCount(v6);
    if (Count < 2)
    {
      CFRelease(v7);
    }

    else
    {
      v9 = Count;
      v10 = 0;
      for (i = 0; i != v9; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v7, i);
        RecordID = ABRecordGetRecordID(ValueAtIndex);
        if (RecordID != ABRecordGetRecordID(person))
        {
          v14 = ABPersonCopySource(ValueAtIndex);
          if (v14)
          {
            v15 = v14;
            v16 = ABRecordGetRecordID(v14);
            if (v16 == ABRecordGetRecordID(a3))
            {
              ABDiagnosticsEnabled();
              _ABLog2(5, "_Bool _mergePersonIntoLinkedPeopleFromSource(ABAddressBookRef, ABRecordRef, ABRecordRef)", 69, 0, @"Merging %@ into %@", v17, v18, v19, person);
              ABPersonMergePersonIntoPerson(person, ValueAtIndex);
              _movePicturesFromPersonToPerson(v20, person, ValueAtIndex);
              v10 = 1;
            }

            CFRelease(v15);
          }
        }
      }

      CFRelease(v7);
      if (v10)
      {
        return 1;
      }
    }
  }

  v22 = ABPersonCreateInSource(a3);
  if (!v22)
  {
    return 0;
  }

  v23 = v22;
  ABPersonMergePersonIntoPerson(person, v22);
  error = 0;
  v24 = ABAddressBookAddRecord(a1, v23, &error);
  v25 = v24;
  if ((v24 & 1) == 0)
  {
    v24 = error;
    if (error)
    {
      v26 = CFErrorCopyDescription(error);
      ABDiagnosticsEnabled();
      _ABLog2(3, "_Bool _mergePersonIntoLinkedPeopleFromSource(ABAddressBookRef, ABRecordRef, ABRecordRef)", 91, 0, @"Error when adding person %@ to source %@: %@", v27, v28, v29, person);
      CFRelease(v26);
    }
  }

  if (v25)
  {
    v21 = _movePicturesFromPersonToPerson(v24, person, v23);
  }

  else
  {
    v21 = 0;
  }

  CFRelease(v23);
  return v21;
}

BOOL _movePicturesFromPersonToPerson(int a1, const void *a2, ABRecordRef person)
{
  if (ABPersonHasImageData(person))
  {
    return 1;
  }

  v5 = ABPersonCopyImageData(a2);
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  error = 0;
  v7 = ABPersonSetImageData(person, v5, &error);
  if (!v7 && error)
  {
    v8 = CFErrorCopyDescription(error);
    ABDiagnosticsEnabled();
    _ABLog2(3, "_Bool _movePicturesFromPersonToPerson(ABAddressBookRef, ABRecordRef, ABRecordRef)", 179, 0, @"Error when merging image from person %@ into %@: %@", v9, v10, v11, a2);
    CFRelease(v8);
  }

  CFRelease(v6);
  return v7;
}

BOOL _movePeopleAndGroupsToSource(const __CFString *a1, const void *a2, const void *a3)
{
  ABDiagnosticsEnabled();
  _ABLog2(5, "_Bool _movePeopleAndGroupsToSource(ABAddressBookRef, ABRecordRef, ABRecordRef)", 110, 0, @"Moving contacts from %@ into %@", v6, v7, v8, a2);
  CPRecordStoreGetDatabase();
  v9 = CPSqliteDatabaseConnectionForWriting();
  RecordID = ABRecordGetRecordID(a2);
  if (_removeSyncImagesFromSource(a1, v9, RecordID))
  {
    v11 = ABRecordGetRecordID(a2);
    v12 = ABRecordGetRecordID(a3);
    v13 = _moveRecordsInTableToSource(v12, v9, v11, v12, "ABGroup", 0);
    if (!v9)
    {
      return v13;
    }

    goto LABEL_5;
  }

  v13 = 0;
  if (v9)
  {
LABEL_5:
    CPSqliteDatabaseReleaseSqliteConnection();
  }

  return v13;
}

BOOL _removeSyncImagesFromSource(const __CFString *a1, uint64_t a2, uint64_t a3)
{
  v4 = *MEMORY[0x1E695E480];
  v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"SELECT ROWID from ABPerson where StoreID = %i;", a3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (CPSqliteConnectionStatementForSQL())
  {
    Mutable = CFArrayCreateMutable(v4, 0, 0);
    CPSqliteStatementIntegerResult();
    v9 = CFArrayGetCount(Mutable) && (ImageStore = ABCAddressBookGetImageStore(a1)) != 0 && ABCImageStoreRemoveImagesForRecordIds(a1, ImageStore, Mutable, 5) != 0;
    CFRelease(Mutable);
  }

  else
  {
    v9 = 0;
  }

  CFRelease(v6);
  return v9;
}

BOOL _moveRecordsInTableToSource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = @", ImageURI = NULL";
  if (!a6)
  {
    v6 = &stru_1F2FE2718;
  }

  v7 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"UPDATE %s SET StoreID = %i, ExternalIdentifier = NULL, ExternalModificationTag = NULL%@ WHERE StoreID = %i;", a5, a4, v6, a3);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = CPSqliteConnectionStatementForSQL();
  v10 = v9 != 0;
  if (v9)
  {
    CPSqliteStatementPerform();
    CPSqliteStatementReset();
  }

  CFRelease(v8);
  return v10;
}

uint64_t ABOSLogGeneral()
{
  if (ABOSLogGeneral_onceToken != -1)
  {
    ABOSLogGeneral_cold_1();
  }

  return ABOSLogGeneral_generalLog;
}

os_log_t __ABOSLogGeneral_block_invoke()
{
  result = os_log_create("com.apple.contacts.AddressBookLegacy", "General");
  ABOSLogGeneral_generalLog = result;
  return result;
}

uint64_t ABOSLogMeCardChanges()
{
  if (ABOSLogMeCardChanges_onceToken != -1)
  {
    ABOSLogMeCardChanges_cold_1();
  }

  return ABOSLogMeCardChanges_meCardLog;
}

os_log_t __ABOSLogMeCardChanges_block_invoke()
{
  result = os_log_create("com.apple.contacts.AddressBookLegacy", "me-card-changes");
  ABOSLogMeCardChanges_meCardLog = result;
  return result;
}

uint64_t ABOSLogAnalyzeDatabase()
{
  if (ABOSLogAnalyzeDatabase_onceToken != -1)
  {
    ABOSLogAnalyzeDatabase_cold_1();
  }

  return ABOSLogAnalyzeDatabase_analyzeDatabaseLog;
}

os_log_t __ABOSLogAnalyzeDatabase_block_invoke()
{
  result = os_log_create("com.apple.contacts.AddressBookLegacy", "analyze-database");
  ABOSLogAnalyzeDatabase_analyzeDatabaseLog = result;
  return result;
}

uint64_t ABOSLogDatabase()
{
  if (ABOSLogDatabase_cn_once_token_1 != -1)
  {
    ABOSLogDatabase_cold_1();
  }

  return ABOSLogDatabase_cn_once_object_1;
}

os_log_t __ABOSLogDatabase_block_invoke()
{
  result = os_log_create("com.apple.contacts.AddressBookLegacy", "database");
  ABOSLogDatabase_cn_once_object_1 = result;
  return result;
}

BOOL ABLogDebugLevelEnabled()
{
  if (_initIfNeeded_onceToken != -1)
  {
    ABDiagnosticsEnabled_cold_1();
  }

  return __ABLogMaxConsoleLevel == 7 || __ABLogMaxFileLevel == 7;
}

uint64_t ABLogContactsSearch()
{
  if (_initIfNeeded_onceToken != -1)
  {
    ABDiagnosticsEnabled_cold_1();
  }

  return ABDiagnosticsEnabled() & __ABLogContactsSearch;
}

uint64_t ABLogDataCollection()
{
  if (_initIfNeeded_onceToken != -1)
  {
    ABDiagnosticsEnabled_cold_1();
  }

  return ABDiagnosticsEnabled() & __ABLogDataCollection;
}

uint64_t ABLogPersonDelete()
{
  if (_initIfNeeded_onceToken != -1)
  {
    ABDiagnosticsEnabled_cold_1();
  }

  return ABDiagnosticsEnabled() & __ABLogPersonDelete;
}

uint64_t ABLogChangeHistory()
{
  if (_initIfNeeded_onceToken != -1)
  {
    ABDiagnosticsEnabled_cold_1();
  }

  return ABDiagnosticsEnabled() & __ABLogChangeHistory;
}

void _ABLog2(int a1, uint64_t a2, uint64_t a3, __CFString *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = __ABLogMaxConsoleLevel;
  v10 = __ABLogMaxFileLevel;
  if (__ABLogMaxConsoleLevel >= a1 || __ABLogMaxFileLevel >= a1)
  {
    if (a4)
    {
      v16 = a4;
    }

    else
    {
      v16 = &stru_1F2FE2718;
    }

    if (a5)
    {
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:a5 arguments:&a9];
      if (a4)
      {
        v16 = [(__CFString *)a4 stringByAppendingString:v16];
      }
    }

    if (v9 >= a1)
    {
      NSLog(&cfstr_SI.isa, a2, a3, v16);
    }

    if (v10 >= a1)
    {
      v22 = 0;
      if (pthread_threadid_np(0, &v22))
      {
        v17 = pthread_self();
        v18 = pthread_mach_thread_np(v17);
        v22 = v18;
      }

      else
      {
        v18 = v22;
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ABLog2_block_invoke;
      block[3] = &unk_1E7CCD618;
      block[4] = v16;
      block[5] = v18;
      block[6] = a2;
      v20 = a1;
      v21 = a3;
      dispatch_async(__ABLogAslQueue, block);
    }
  }
}

uint64_t ABLogStringForPerson(const void *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  if (a1)
  {
    v3 = ABPersonCopyCompositeName(a1);
    v4 = v3;
  }

  else
  {
    v3 = @"NULL";
  }

  return [v2 stringWithFormat:@"%p(%@)", a1, v3];
}

id ABLogStringForPeople(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend(objc_allocWithZone(MEMORY[0x1E696AD60]), "initWithString:", @"(\n");
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(a1);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        if (v5)
        {
          [v2 appendString:@"\n"];
        }

        if (v8)
        {
          v9 = ABPersonCopyCompositeName(v8);
          v10 = v9;
        }

        else
        {
          v9 = @"NULL";
        }

        [v2 appendString:v9];
        ++v7;
        v5 = 1;
      }

      while (v4 != v7);
      v4 = [a1 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  [v2 appendString:@"\n"]);
  return v2;
}

uint64_t ABLogErrorPtr(__CFString **a1)
{
  if (a1)
  {
    v1 = *a1;
  }

  else
  {
    v1 = @"NULL";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"error=%@", v1];
}

__CFString *ABLogStringForBool(int a1)
{
  if (a1)
  {
    return @"true";
  }

  else
  {
    return @"false";
  }
}

id ABLogStringForStringArray(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend(objc_allocWithZone(MEMORY[0x1E696AD60]), "initWithString:", @"(");
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(a1);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (v5)
        {
          [v2 appendString:{@", "}];
        }

        [v2 appendString:v8];
        ++v7;
        v5 = 1;
      }

      while (v4 != v7);
      v4 = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  [v2 appendString:@""]);
  return v2;
}

__CFString *ABLogStringForIntArrayPtr(void **a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    return @"NULL";
  }

  v2 = objc_msgSend(objc_allocWithZone(MEMORY[0x1E696AD60]), "initWithString:", @"(");
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *a1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    v7 = @"%i";
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [v2 appendFormat:v7, *(*(&v10 + 1) + 8 * i)];
        v7 = @", %i";
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v7 = @", %i";
    }

    while (v5);
  }

  [v2 appendString:@""]);
  return v2;
}

uint64_t ABLogDisplayInternalAlert(uint64_t result)
{
  if (__ABAllowInternalAlert == 1)
  {
    block[7] = v1;
    block[8] = v2;
    v3 = result;
    result = os_variant_has_internal_content();
    if (result)
    {
      CFRetain(v3);
      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __ABLogDisplayInternalAlert_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = v3;
      dispatch_async(global_queue, block);
      return sleep(1u);
    }
  }

  return result;
}

void __ABLogDisplayInternalAlert_block_invoke(uint64_t a1)
{
  v8 = 0;
  CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, @"AddressBook", *(a1 + 32), @"Radar", @"Dismiss", 0, &v8);
  if (!v8)
  {
    if (*(a1 + 32))
    {
      v2 = *(a1 + 32);
    }

    else
    {
      v2 = &stru_1F2FE2718;
    }

    v3 = [(__CFString *)v2 stringByAppendingString:@"\n\nPlease mention what you were doing at the time of the error."];
    v4 = [MEMORY[0x1E695DF70] array];
    [v4 addObject:{objc_msgSend(MEMORY[0x1E696AF60], "queryItemWithName:value:", @"Description", v3)}];
    [v4 addObject:{objc_msgSend(MEMORY[0x1E696AF60], "queryItemWithName:value:", @"Title", @"AddressBook error"}];
    [v4 addObject:{objc_msgSend(MEMORY[0x1E696AF60], "queryItemWithName:value:", @"Classification", @"Serious Bug"}];
    [v4 addObject:{objc_msgSend(MEMORY[0x1E696AF60], "queryItemWithName:value:", @"ComponentID", @"568785"}];
    [v4 addObject:{objc_msgSend(MEMORY[0x1E696AF60], "queryItemWithName:value:", @"ComponentName", @"PEP Contacts"}];
    [v4 addObject:{objc_msgSend(MEMORY[0x1E696AF60], "queryItemWithName:value:", @"ComponentVersion", @"1.0"}];
    [v4 addObject:{objc_msgSend(MEMORY[0x1E696AF60], "queryItemWithName:value:", @"AutoDiagnostics", @"phone"}];
    v5 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v5 setScheme:@"tap-to-radar"];
    [v5 setHost:@"new"];
    [v5 setQueryItems:v4];
    v6 = [v5 URL];
    [objc_msgSend(MEMORY[0x1E6963608] "defaultWorkspace")];
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    CFRelease(v7);
  }
}

void *ABLogSimulateCrashReport(uint64_t a1)
{
  if (ABLogSimulateCrashReport___CrashReportHandle || (v4 = dlopen([@"/System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport" fileSystemRepresentation], 1), (ABLogSimulateCrashReport___CrashReportHandle = v4) == 0))
  {
    result = ABLogSimulateCrashReport_ABSimulateCrash;
    if (!ABLogSimulateCrashReport_ABSimulateCrash)
    {
      return result;
    }
  }

  else
  {
    result = dlsym(v4, "SimulateCrash");
    ABLogSimulateCrashReport_ABSimulateCrash = result;
    if (!result)
    {
      return result;
    }
  }

  v5 = result;
  v3 = getpid();

  return v5(v3, 464366555, a1);
}

__CFString *_isMainThread()
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    return @"YES";
  }

  else
  {
    return @"NO";
  }
}

uint64_t ABRegulatoryLogDeleteContactsData(uint64_t a1)
{
  if ([objc_msgSend(MEMORY[0x1E6996648] "sharedInstance")])
  {
    [objc_msgSend(MEMORY[0x1E6996800] "sharedInstanceForAddressBook")];
  }

  result = _shouldRegulatoryLog(a1);
  if (result)
  {
    v3 = [MEMORY[0x1E6996800] sharedInstanceForAddressBook];

    return [v3 logContactsDataAccessEvent];
  }

  return result;
}

uint64_t ABRegulatoryLogModifyContactsData(uint64_t a1)
{
  result = _shouldRegulatoryLog(a1);
  if (result)
  {
    [objc_msgSend(MEMORY[0x1E6996800] "sharedInstanceForAddressBook")];
    v2 = [MEMORY[0x1E6996800] sharedInstanceForAddressBook];

    return [v2 logContactsDataAccessEvent];
  }

  return result;
}

uint64_t ABRegulatoryLogReadTransmitContactsData()
{
  v0 = [MEMORY[0x1E6996800] sharedInstanceForAddressBook];

  return [v0 readAndTransmittingContactsData];
}

id ABCreateStringFromAlternateBirthday(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if ([a1 objectForKeyedSubscript:@"calendarIdentifier"])
  {
    [v2 appendString:{objc_msgSend(a1, "objectForKeyedSubscript:", @"calendarIdentifier"}];
  }

  [v2 appendString:{@", "}];
  if ([a1 objectForKeyedSubscript:@"isLeapMonth"])
  {
    [v2 appendString:{objc_msgSend(objc_msgSend(a1, "objectForKeyedSubscript:", @"isLeapMonth", "stringValue")}];
  }

  [v2 appendString:{@", "}];
  if ([a1 objectForKeyedSubscript:@"era"])
  {
    [v2 appendString:{objc_msgSend(objc_msgSend(a1, "objectForKeyedSubscript:", @"era", "stringValue")}];
  }

  [v2 appendString:{@", "}];
  if ([a1 objectForKeyedSubscript:@"year"])
  {
    [v2 appendString:{objc_msgSend(objc_msgSend(a1, "objectForKeyedSubscript:", @"year", "stringValue")}];
  }

  [v2 appendString:{@", "}];
  if ([a1 objectForKeyedSubscript:@"month"])
  {
    [v2 appendString:{objc_msgSend(objc_msgSend(a1, "objectForKeyedSubscript:", @"month", "stringValue")}];
  }

  [v2 appendString:{@", "}];
  if ([a1 objectForKeyedSubscript:@"day"])
  {
    [v2 appendString:{objc_msgSend(objc_msgSend(a1, "objectForKeyedSubscript:", @"day", "stringValue")}];
  }

  return v2;
}

void *ABCreateAlternateBirthdayFromString(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:6];
  v3 = [a1 componentsSeparatedByString:{@", "}];
  if ([objc_msgSend(v3 objectAtIndexedSubscript:{0), "length"}])
  {
    [v2 setObject:objc_msgSend(v3 forKeyedSubscript:{"objectAtIndexedSubscript:", 0), @"calendarIdentifier"}];
  }

  if ([objc_msgSend(v3 objectAtIndexedSubscript:{1), "length"}])
  {
    [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", objc_msgSend(objc_msgSend(v3, "objectAtIndexedSubscript:", 1), "BOOLValue")), @"isLeapMonth"}];
  }

  if ([objc_msgSend(v3 objectAtIndexedSubscript:{2), "length"}])
  {
    [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", objc_msgSend(objc_msgSend(v3, "objectAtIndexedSubscript:", 2), "integerValue")), @"era"}];
  }

  if ([objc_msgSend(v3 objectAtIndexedSubscript:{3), "length"}])
  {
    [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", objc_msgSend(objc_msgSend(v3, "objectAtIndexedSubscript:", 3), "integerValue")), @"year"}];
  }

  if ([objc_msgSend(v3 objectAtIndexedSubscript:{4), "length"}])
  {
    [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", objc_msgSend(objc_msgSend(v3, "objectAtIndexedSubscript:", 4), "integerValue")), @"month"}];
  }

  if ([objc_msgSend(v3 objectAtIndexedSubscript:{5), "length"}])
  {
    [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", objc_msgSend(objc_msgSend(v3, "objectAtIndexedSubscript:", 5), "integerValue")), @"day"}];
  }

  return v2;
}

uint64_t ABValidateAlternateBirthday(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  result = [a1 objectForKeyedSubscript:@"calendarIdentifier"];
  if (result)
  {
    result = [a1 objectForKeyedSubscript:@"month"];
    if (result)
    {
      result = [a1 objectForKeyedSubscript:@"day"];
      if (result)
      {
        v3 = [a1 objectForKeyedSubscript:@"calendarIdentifier"];
        v4 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:v3];
        if (v4)
        {
          v5 = v4;
        }

        else
        {
          v6 = [v3 lowercaseString];
          v5 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:v6];
          result = v5 != 0;
          if (!v5)
          {
            return result;
          }
        }

        v7 = objc_alloc_init(MEMORY[0x1E695DF10]);
        [v7 setCalendar:v5];
        [v7 setMonth:{objc_msgSend(objc_msgSend(a1, "objectForKeyedSubscript:", @"month", "integerValue")}];
        [v7 setDay:{objc_msgSend(objc_msgSend(a1, "objectForKeyedSubscript:", @"day", "integerValue")}];
        if ([a1 objectForKeyedSubscript:@"isLeapMonth"])
        {
          [v7 setLeapMonth:{objc_msgSend(objc_msgSend(a1, "objectForKeyedSubscript:", @"isLeapMonth", "BOOLValue")}];
        }

        if ([a1 objectForKeyedSubscript:@"era"])
        {
          [v7 setEra:{objc_msgSend(objc_msgSend(a1, "objectForKeyedSubscript:", @"era", "integerValue")}];
        }

        if ([a1 objectForKeyedSubscript:@"year"])
        {
          [v7 setYear:{objc_msgSend(objc_msgSend(a1, "objectForKeyedSubscript:", @"year", "integerValue")}];
        }

        v8 = [v7 isValidDate];

        return v8;
      }
    }
  }

  return result;
}

uint64_t sKeyComparator_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [&unk_1F2FF49A8 indexOfObject:a2];
  v6 = [&unk_1F2FF49A8 indexOfObject:a3];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL && v6 == 0x7FFFFFFFFFFFFFFFLL)
  {

    return [a2 caseInsensitiveCompare:a3];
  }

  else
  {
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 1;
    }

    else
    {
      v8 = -1;
    }

    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = -1;
      if (v5 >= v6)
      {
        v9 = v6 < v5;
      }

      if (v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        return v9;
      }
    }

    return v8;
  }
}

__CFString *ABAccountNameForProperty(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E7CCD738[a1];
  }
}

uint64_t ABAccountCreate()
{
  if (ABLogAPIUsage())
  {
    v5 = _isMainThread();
    v0 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "ABRecordRef ABAccountCreate(void)", 83, v0, 0, v1, v2, v3, v5);
    CFRelease(v0);
  }

  return CPRecordCreate();
}

CFTypeRef ABAccountCopyInternalUUID(const void *a1)
{
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFStringRef ABAccountCopyInternalUUID(ABRecordRef)", 88, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  return ABRecordCopyValue(a1, 3);
}

BOOL ABAccountSetInternalUUID(const void *a1, const void *a2, CFErrorRef *a3)
{
  if (ABLogAPIUsage())
  {
    v11 = _isMainThread();
    v6 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABAccountSetInternalUUID(ABRecordRef, CFStringRef, CFErrorRef *)", 93, v6, 0, v7, v8, v9, v11);
    CFRelease(v6);
  }

  return ABRecordSetValue(a1, 3, a2, a3);
}

CFTypeRef ABAccountCopyIdentifier(const void *a1)
{
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFStringRef ABAccountCopyIdentifier(ABRecordRef)", 98, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  return ABRecordCopyValue(a1, 0);
}

BOOL ABAccountSetIdentifier(const void *a1, const void *a2, CFErrorRef *a3)
{
  if (ABLogAPIUsage())
  {
    v11 = _isMainThread();
    v6 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABAccountSetIdentifier(ABRecordRef, CFStringRef, CFErrorRef *)", 103, v6, 0, v7, v8, v9, v11);
    CFRelease(v6);
  }

  return ABRecordSetValue(a1, 0, a2, a3);
}

ABRecordRef ABAddressBookGetDefaultSourceForAccount(const void *a1, uint64_t a2)
{
  if (ABLogAPIUsage())
  {
    v4 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v4);
    v6 = ABLogAddressBook(a1);
    _ABLog2(6, "ABRecordRef ABAddressBookGetDefaultSourceForAccount(ABAddressBookRef, ABRecordRef)", 108, v5, @"%@", v7, v8, v9, v6);
    CFRelease(v5);
  }

  IntValue = ABRecordGetIntValue(a2, 2);
  if (IntValue < 1)
  {
    return 0;
  }

  return ABAddressBookGetSourceWithRecordID(a1, IntValue);
}

uint64_t ABAddressBookSetDefaultSourceForAccount(uint64_t a1, const void *a2, const void *a3, CFAllocatorRef *a4)
{
  if (ABLogAPIUsage())
  {
    v8 = _isMainThread();
    v9 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v8);
    v10 = ABLogAddressBook(a1);
    _ABLog2(6, "_Bool ABAddressBookSetDefaultSourceForAccount(ABAddressBookRef, ABRecordRef, ABRecordRef, CFErrorRef *)", 122, v9, @"%@", v11, v12, v13, v10);
    CFRelease(v9);
  }

  if (!a3 || (RecordID = ABRecordGetRecordID(a3), RecordID == -1))
  {
    if (a4)
    {
      *a4 = CFErrorCreate(0, @"ABAddressBookErrorDomain", 0, 0);
    }

    return 0;
  }

  else
  {

    return ABRecordSetIntValue(a2, 2, RecordID, a4);
  }
}

const void *ABAddressBookCopyAccountWithIdentifier(uint64_t a1, uint64_t a2)
{
  if (ABLogAPIUsage())
  {
    v4 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v4);
    v6 = ABLogAddressBook(a1);
    _ABLog2(6, "ABRecordRef ABAddressBookCopyAccountWithIdentifier(ABAddressBookRef, CFStringRef)", 146, v5, @"%@", v7, v8, v9, v6);
    CFRelease(v5);
  }

  if (!a2)
  {
    return 0;
  }

  v10 = CPRecordStoreCopyAllInstancesOfClassWhereWithBindBlock();
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
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

void __ABAddressBookCopyAccountWithIdentifier_block_invoke(uint64_t a1, uint64_t a2)
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

uint64_t ABAddressBookCopyAccountsWithUUIDs(uint64_t result, const __CFArray *a2)
{
  if (result)
  {
    return ABCDBContextCopyRecordsForUUIDsOfType(*(result + 16), a2, ABAccountClass);
  }

  return result;
}

uint64_t ABAddressBookCopyArrayOfAllAccounts(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogAddressBook(a1);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyArrayOfAllAccounts(ABAddressBookRef)", 178, v3, @"%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  return CPRecordStoreCopyAllInstancesOfClass();
}

uint64_t ABAddressBookCopyArrayOfAllSourcesInAccount(uint64_t a1, const void *a2)
{
  if (ABLogAPIUsage())
  {
    v4 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v4);
    v6 = ABLogAddressBook(a1);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyArrayOfAllSourcesInAccount(ABAddressBookRef, ABRecordRef)", 184, v5, @"%@", v7, v8, v9, v6);
    CFRelease(v5);
  }

  if (!a2 || ABRecordGetRecordID(a2) == -1)
  {
    return 0;
  }

  else
  {
    return CPRecordStoreCopyAllInstancesOfClassWhereWithBindBlock();
  }
}

uint64_t __ABAddressBookCopyArrayOfAllSourcesInAccount_block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 8))
    {
      return sqlite3_bind_int(*(a2 + 8), 1, *(result + 32));
    }
  }

  return result;
}

uint64_t ABAddressBookPrepareAccountForFamilyDelegate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && a2 && a3)
  {
    CPRecordStoreGetDatabase();
    CPSqliteDatabaseConnectionForReading();
    v3 = CPSqliteConnectionStatementForSQL();
    v4 = CPSqliteConnectionStatementForSQL();
    result = CPSqliteConnectionStatementForSQL();
    v5 = result;
    if (v3)
    {
      v6 = *(v3 + 8);
      if (v6)
      {
        v7 = _CPCreateUTF8StringFromCFString();
        v8 = MEMORY[0x1E69E9B38];
        sqlite3_bind_text(v6, 1, v7, -1, MEMORY[0x1E69E9B38]);
        v9 = *(v3 + 8);
        v10 = _CPCreateUTF8StringFromCFString();
        sqlite3_bind_text(v9, 2, v10, -1, v8);
        CPSqliteStatementPerform();
        result = CPSqliteStatementReset();
      }
    }

    if (v4)
    {
      v11 = *(v4 + 8);
      if (v11)
      {
        v12 = _CPCreateUTF8StringFromCFString();
        v13 = MEMORY[0x1E69E9B38];
        sqlite3_bind_text(v11, 1, v12, -1, MEMORY[0x1E69E9B38]);
        v14 = *(v4 + 8);
        v15 = _CPCreateUTF8StringFromCFString();
        sqlite3_bind_text(v14, 2, v15, -1, v13);
        CPSqliteStatementPerform();
        result = CPSqliteStatementReset();
      }
    }

    if (v5)
    {
      v16 = *(v5 + 8);
      if (v16)
      {
        v17 = _CPCreateUTF8StringFromCFString();
        v18 = MEMORY[0x1E69E9B38];
        sqlite3_bind_text(v16, 1, v17, -1, MEMORY[0x1E69E9B38]);
        v19 = *(v5 + 8);
        v20 = _CPCreateUTF8StringFromCFString();
        sqlite3_bind_text(v19, 2, v20, -1, v18);
        CPSqliteStatementPerform();

        return CPSqliteStatementReset();
      }
    }
  }

  return result;
}

uint64_t ABTCCRequestAccess()
{
  v0 = [MEMORY[0x1E6996648] sharedInstance];

  return [v0 requestAccessWithError:0];
}

uint64_t ABTCCRequestAccessWithCompletion(uint64_t a1)
{
  v2 = [MEMORY[0x1E6996648] sharedInstance];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __ABTCCRequestAccessWithCompletion_block_invoke;
  v4[3] = &unk_1E7CCD760;
  v4[4] = v2;
  v4[5] = a1;
  return [v2 requestAuthorization:1 completionHandler:v4];
}

uint64_t __ABTCCRequestAccessWithCompletion_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) isAccessGranted];
  v6 = *(v4 + 16);

  return v6(v4, v5, a3);
}

CFMutableSetRef ABCopyRecordIDsForOrphanedImages()
{
  v0 = _copyResultsForQueryWithRecordStore();
  v1 = _copyResultsForQueryWithRecordStore();
  v2 = _copyResultsForQueryWithRecordStore();
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  v5[0] = v0;
  v5[1] = Mutable;
  CFSetApplyFunction(v1, _subtractSetApplier, v5);
  CFSetApplyFunction(v2, _subtractSetApplier, v5);
  CFRelease(v0);
  CFRelease(v1);
  CFRelease(v2);
  return Mutable;
}

__CFSet *_copyResultsForQueryWithRecordStore()
{
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  CPRecordStoreGetDatabase();
  CPSqliteDatabaseConnectionForReading();
  v1 = CPSqliteConnectionStatementForSQL();
  if (v1)
  {
    v2 = v1;
    v3 = *(v1 + 8);
    if (v3)
    {
      while (sqlite3_step(v3) == 100)
      {
        v4 = sqlite3_column_int(*(v2 + 8), 0);
        CFSetAddValue(Mutable, v4);
        v3 = *(v2 + 8);
      }

      CPSqliteStatementReset();
    }
  }

  return Mutable;
}

void _subtractSetApplier(void *value, CFSetRef *a2)
{
  if (!CFSetContainsValue(*a2, value))
  {
    v4 = a2[1];

    CFSetAddValue(v4, value);
  }
}

void ABDatabaseIntegrityCheckWithAddressBookAndImageStore(const __CFString *a1, uint64_t a2)
{
  v4 = _copyResultsForQueryWithRecordStore();
  Count = CFSetGetCount(v4);
  if (Count >= 1)
  {
    v6 = Count;
    if (_performQuery())
    {
      ABDiagnosticsEnabled();
      _ABLog2(4, "void ABDatabaseIntegrityCheckWithAddressBookAndImageStore(ABAddressBookRef, CPRecordStoreRef)", 158, 0, @"deleted %ld orphaned people", v7, v8, v9, v6);
      [MEMORY[0x1E69968B8] logDatabaseResolution:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", 3)}];
    }
  }

  CFRelease(v4);
  v10 = _copyResultsForQueryWithRecordStore();
  v11 = CFSetGetCount(v10);
  if (v11 >= 1)
  {
    v12 = v11;
    if (_performQuery())
    {
      ABDiagnosticsEnabled();
      _ABLog2(4, "void ABDatabaseIntegrityCheckWithAddressBookAndImageStore(ABAddressBookRef, CPRecordStoreRef)", 166, 0, @"deleted %ld orphaned multi-values", v13, v14, v15, v12);
      [MEMORY[0x1E69968B8] logDatabaseResolution:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", 4)}];
    }
  }

  CFRelease(v10);
  v16 = _copyResultsForQueryWithRecordStore();
  v17 = CFSetGetCount(v16);
  if (v17 >= 1)
  {
    v18 = v17;
    if (_performQuery())
    {
      ABDiagnosticsEnabled();
      _ABLog2(4, "void ABDatabaseIntegrityCheckWithAddressBookAndImageStore(ABAddressBookRef, CPRecordStoreRef)", 174, 0, @"deleted %ld orphaned multi-value entries", v19, v20, v21, v18);
      [MEMORY[0x1E69968B8] logDatabaseResolution:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", 5)}];
    }
  }

  CFRelease(v16);
  v22 = _copyResultsForQueryWithRecordStore();
  v23 = CFSetGetCount(v22);
  if (v23 >= 1)
  {
    v24 = v23;
    if (_performQuery())
    {
      ABDiagnosticsEnabled();
      _ABLog2(4, "void ABDatabaseIntegrityCheckWithAddressBookAndImageStore(ABAddressBookRef, CPRecordStoreRef)", 182, 0, @"deleted %ld orphaned phone last fours", v25, v26, v27, v24);
      [MEMORY[0x1E69968B8] logDatabaseResolution:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", 6)}];
    }
  }

  CFRelease(v22);
  v28 = ABCopyRecordIDsForOrphanedImages();
  v29 = CFSetGetCount(v28);
  if (v29 >= 1)
  {
    v30 = v29;
    v31 = malloc_type_malloc(8 * v29, 0x80040B8603338uLL);
    CFSetGetValues(v28, v31);
    v32 = CFArrayCreate(*MEMORY[0x1E695E480], v31, v30, 0);
    v33 = ABCImageStoreRemoveImagesForRecordIds(a1, a2, v32, -1);
    CFRelease(v32);
    free(v31);
    if (v33)
    {
      v34 = CFSetGetCount(v28);
      ABDiagnosticsEnabled();
      _ABLog2(4, "void ABDatabaseIntegrityCheckWithAddressBookAndImageStore(ABAddressBookRef, CPRecordStoreRef)", 190, 0, @"deleted %ld orphaned images", v35, v36, v37, v34);
      [MEMORY[0x1E69968B8] logDatabaseResolution:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", 7)}];
    }
  }

  CFRelease(v28);
}

uint64_t ABDatabaseIntegrityResolutionRecorder(uint64_t a1)
{
  v1 = MEMORY[0x1E69968B8];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];

  return [v1 logDatabaseResolution:v2];
}

void ABDatabaseIntegrityCheckWithAddressBook(const __CFString *a1)
{
  ImageStore = ABCAddressBookGetImageStore(a1);

  ABDatabaseIntegrityCheckWithAddressBookAndImageStore(a1, ImageStore);
}

void ABDatabaseIntegrityCheck()
{
  v0 = ABAddressBookCreateWithOptions(0, 0);
  if (v0)
  {
    v1 = v0;
    ImageStore = ABCAddressBookGetImageStore(v0);
    ABDatabaseIntegrityCheckWithAddressBookAndImageStore(v1, ImageStore);

    CFRelease(v1);
  }
}

BOOL _performQuery()
{
  CPRecordStoreGetDatabase();
  CPSqliteDatabaseConnectionForReading();
  return CPSqliteConnectionPerformSQL() == 101;
}

uint64_t ABCAddRecord(uint64_t a1, ABRecordRef record, CFTypeRef *a3)
{
  result = 1;
  if (a1 && record)
  {
    if (ABRecordGetRecordID(record) != -1)
    {
      CPRecordStoreAddExistingRecord();
      return 1;
    }

    Class = CPRecordGetClass();
    if (Class == ABCPersonClass)
    {
      v9 = OUTLINED_FUNCTION_6();
      result = ABCPersonPrepareToAddToAddressBook(v9, v10, a3);
      if (result)
      {
        ABCAddressBookFlushPhoneCache(a1);
LABEL_8:
        CPRecordStoreAddRecord();
        return 1;
      }
    }

    else
    {
      if (Class != ABCGroupClass[0])
      {
        goto LABEL_8;
      }

      v7 = OUTLINED_FUNCTION_6();
      result = ABCGroupPrepareToAddToAddressBook(v7, v8, a3);
      if (result)
      {
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t ABCRemoveRecordAndOverridePolicy(uint64_t a1, const void *a2, char a3, const void **a4)
{
  result = 0;
  v42 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      if (CPRecordGetClass() != ABCSourceClass || (result = CPRecordGetID(), result))
      {
        Class = CPRecordGetClass();
        v10 = Class;
        if ((a3 & 1) != 0 || (Class != ABCPersonClass ? (v11 = Class == ABCGroupClass[0]) : (v11 = 1), !v11 || (Policy = ABRecordGetPolicy(a2)) == 0 || (result = ABPolicyShouldRemoveRecord(Policy, a1, a2, a4), result)))
        {
          if (v10 != ABCPersonClass)
          {
            if (v10 == ABCSourceClass)
            {
              v36 = OUTLINED_FUNCTION_12();
              _prepareSourceForDeletion(v36, v37);
            }

            else if (v10 == ABAccountClass)
            {
              v13 = OUTLINED_FUNCTION_12();
              v15 = ABAddressBookCopyArrayOfAllSourcesInAccount(v13, v14);
              v16 = OUTLINED_FUNCTION_13();
              v18 = [v17 countByEnumeratingWithState:v16 objects:? count:?];
              if (v18)
              {
                v19 = v18;
                v20 = *v40;
                do
                {
                  for (i = 0; i != v19; ++i)
                  {
                    if (*v40 != v20)
                    {
                      objc_enumerationMutation(v15);
                    }

                    _prepareSourceForDeletion(a1, *(v39 + 8 * i));
                    CPRecordStoreRemoveRecord();
                  }

                  v19 = [v15 countByEnumeratingWithState:v38 objects:v41 count:16];
                }

                while (v19);
              }
            }

LABEL_37:
            CPRecordStoreRemoveRecord();
            return 1;
          }

          RecordID = ABRecordGetRecordID(a2);
          *(a1 + 384) |= 0x22000u;
          v23 = OUTLINED_FUNCTION_12();
          ABCPersonClearAddressBookPhoneCacheForPerson(v23);
          ABCPersonRemoveImageData(a2);
          if (ABLogPersonDelete())
          {
            v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"will delete %@ recordID=%i, creating simulated crash report", ABRecordCopyCompositeName(a2), RecordID];
            ABLogSimulateCrashReport(v24);
            ABLogDisplayInternalAlert(v24);
          }

          if (RecordID == -1)
          {
            goto LABEL_37;
          }

          v25 = ABPersonCopySource(a2);
          v26 = kABSourceMeIdentifierProperty;
          if (ABRecordGetIntValue(v25, kABSourceMeIdentifierProperty) == RecordID)
          {
            ABRecordSetIntValue(v25, v26, -1, 0);
            ABCDBContextLogChangeForPerson(*(a1 + 16), 0, 0xAu);
          }

          else
          {
            v27 = OUTLINED_FUNCTION_12();
            if (!ABPersonIsLinkedToMe(v27, v28))
            {
              goto LABEL_31;
            }
          }

          *(a1 + 384) |= 0x40000u;
LABEL_31:
          CFRelease(v25);
          ABPersonUnlink(a2);
          CPRecordStoreGetDatabase();
          CPSqliteDatabaseConnectionForReading();
          SelectPrefixFromRecordDescriptor = CPRecordStoreCreateSelectPrefixFromRecordDescriptor();
          CFStringAppend(SelectPrefixFromRecordDescriptor, @" WHERE ROWID in (select group_id from ABGroupMembers where member_id = ?)");
          v30 = CPSqliteConnectionStatementForSQL();
          sqlite3_bind_int(*(v30 + 8), 1, RecordID);
          v31 = CPRecordStoreProcessStatement();
          CPSqliteStatementReset();
          CFRelease(SelectPrefixFromRecordDescriptor);
          if (v31)
          {
            Count = CFArrayGetCount(v31);
            if (Count >= 1)
            {
              v33 = Count;
              for (j = 0; j != v33; ++j)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v31, j);
                ABCGroupRemoveMember(ValueAtIndex, a2);
              }
            }

            CFRelease(v31);
          }

          goto LABEL_37;
        }
      }
    }
  }

  return result;
}

void _ABAddressBookDeleteAllRecordsWithStore(void *a1, uint64_t a2, char a3)
{
  if (ABLogAPIUsage())
  {
    v24 = _isMainThread();
    v7 = OUTLINED_FUNCTION_11(v24, v6, @"<< Main thread:%@ | ");
    ABLogAddressBook(a1);
    v8 = OUTLINED_FUNCTION_7();
    _ABLog2(v8, v9, 575, v7, v10, v11, v12, v13, v24);
    CFRelease(v7);
  }

  if (a1 && a2 && ((a3 & 1) != 0 || CPRecordGetID()) && CPRecordGetClass() == ABCSourceClass)
  {
    v14 = OUTLINED_FUNCTION_6();
    v16 = ABCCopyArrayOfAllPeopleInSource(v14, v15);
    if (v16)
    {
      v17 = v16;
      CFArrayGetCount(v16);
      OUTLINED_FUNCTION_1();
      v26.location = 0;
      CFArrayApplyFunction(v17, v26, v18, a1);
      CFRelease(v17);
    }

    v19 = OUTLINED_FUNCTION_6();
    v21 = ABCCopyArrayOfAllGroupsInSource(v19, v20);
    if (v21)
    {
      v22 = v21;
      CFArrayGetCount(v21);
      OUTLINED_FUNCTION_1();
      v27.location = 0;
      CFArrayApplyFunction(v22, v27, v23, a1);

      CFRelease(v22);
    }
  }
}

void ABCProcessAddedRecords(uint64_t a1)
{
  if (a1 && *(a1 + 16))
  {
    v2 = CPRecordStoreCopyAddedRecords();
    OUTLINED_FUNCTION_3();
    if (CPRecordStoreProcessAddedRecordsWithPolicyAndTransactionType() && v2)
    {
      v3 = *(a1 + 256);
      if (v3)
      {
        v7.length = CFArrayGetCount(v2);
        v7.location = 0;
        CFArrayAppendArray(v3, v2, v7);
      }

      else
      {
        v4 = *MEMORY[0x1E695E480];
        Count = CFArrayGetCount(v2);
        *(a1 + 256) = CFArrayCreateMutableCopy(v4, Count, v2);
      }
    }

    else if (!v2)
    {
      return;
    }

    CFRelease(v2);
  }
}

uint64_t ABCProcessAddedImages(uint64_t result)
{
  if (result)
  {
    v1 = result;
    ABCProcessAddedRecords(result);
    OUTLINED_FUNCTION_3();
    CPRecordStoreProcessDeletedRecordsWithPolicyAndTransactionType();
    OUTLINED_FUNCTION_3();
    CPRecordStoreProcessAddedRecordsWithPolicyAndTransactionType();

    return ABCInvalidateCachedImages(v1);
  }

  return result;
}

uint64_t ABCInvalidateCachedImages(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = *(result + 16);
    if (result)
    {
      CPRecordStoreInvalidateCachedInstancesOfClass();
      result = *(v1 + 24);
      if (result)
      {
        CPRecordStoreInvalidateCachedInstancesOfClass();

        return CPRecordStoreInvalidateCachedInstancesOfClass();
      }
    }
  }

  return result;
}

uint64_t ABCAddressBookSaveWithConflictPolicy(uint64_t a1, int a2, uint64_t a3)
{
  v150 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v5 = a1;
  v6 = *(a1 + 384);
  allocator = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v8 = CPRecordStoreCopyChangedRecords();
  v140 = v5;
  v133 = Mutable;
  HIDWORD(v134) = v6;
  if (v8)
  {
    v9 = v8;
    Count = CFArrayGetCount(v8);
    if (Count >= 1)
    {
      HIDWORD(v130) = a2;
      v131 = a3;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = kABGroupMembersProperty;
      v135 = v9;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v9, v12);
        v15 = CPRecordCopyChangedProperties();
        if (v15)
        {
          v16 = v15;
          v17 = *(v5 + 256);
          if (!v17 || (v151.length = CFArrayGetCount(*(v5 + 256)), v151.location = 0, !CFArrayContainsValue(v17, v151, ValueAtIndex)))
          {
            RecordType = ABRecordGetRecordType(ValueAtIndex);
            if (RecordType)
            {
              keya = v10;
              if (!v11)
              {
                v26 = OUTLINED_FUNCTION_0(RecordType, v19, v20, v21, v22, v23, v24, v25, v129, v130, v131, v133, v134, v135, v10, theDict, v140, allocator);
                v11 = CFDictionaryCreateMutable(v26, v27, v28, MEMORY[0x1E695E9E8]);
              }

              v29 = CFArrayGetCount(v16);
              v37 = OUTLINED_FUNCTION_0(v29, v30, v31, v32, v33, v34, v35, v36, v129, v130, v131, v133, v134, v135, keya, v11, v140, allocator);
              v40 = CFArrayCreateMutable(v37, v38, v39);
              if (v29 >= 1)
              {
                v41 = 0;
                v42 = 0;
                while (1)
                {
                  v43 = CFArrayGetValueAtIndex(v16, v41);
                  v44 = kABCAddedMembersAndSubgroupsProperty == v43 || kABCRemovedMembersAndSubgroupsProperty == v43;
                  if (!v44 && v13 != v43)
                  {
                    break;
                  }

                  v47 = 1;
                  v46 = v13;
                  if ((v42 & 1) == 0)
                  {
                    goto LABEL_22;
                  }

LABEL_23:
                  ++v41;
                  v42 = v47;
                  if (v29 == v41)
                  {
                    goto LABEL_24;
                  }
                }

                v46 = v43;
                v47 = v42;
LABEL_22:
                CFArrayAppendValue(v40, v46);
                goto LABEL_23;
              }

LABEL_24:
              RecordID = ABRecordGetRecordID(ValueAtIndex);
              v11 = theDict;
              CFDictionarySetValue(theDict, RecordID, v40);
              CFRelease(v40);
              v5 = v140;
              v9 = v135;
              v10 = key;
            }

            else
            {
              if (!v10)
              {
                v49 = OUTLINED_FUNCTION_0(RecordType, v19, v20, v21, v22, v23, v24, v25, v129, v130, v131, v133, v134, v135, key, theDict, v140, allocator);
                v10 = CFDictionaryCreateMutable(v49, v50, v51, MEMORY[0x1E695E9E8]);
              }

              v52 = ABRecordGetRecordID(ValueAtIndex);
              CFDictionarySetValue(v10, v52, v16);
            }
          }

          CFRelease(v16);
        }

        ++v12;
      }

      while (v12 != Count);
      Mutable = v133;
      if (v10)
      {
        CFDictionarySetValue(v133, @"ABChangeCallbackInfoUpdatedPeople", v10);
        CFRelease(v10);
      }

      a3 = v131;
      v6 = HIDWORD(v134);
      if (v11)
      {
        CFDictionarySetValue(v133, @"ABChangeCallbackInfoUpdatedGroups", v11);
        CFRelease(v11);
      }
    }

    CFRelease(v9);
  }

  if (_shouldClearbackgroundColors(v5))
  {
    _clearBackgroundColorsForUpdatedPeople(v5, Mutable);
  }

  v53 = CPRecordStoreCopyAddedRecords();
  v54 = v53;
  if (v53)
  {
    v55 = CFArrayGetCount(v53);
  }

  else
  {
    v55 = 0;
  }

  v56 = *(v5 + 256);
  if (v56)
  {
    v55 += CFArrayGetCount(v56);
  }

  if (v55 < 1)
  {
    v57 = 0;
    if (v54)
    {
LABEL_48:
      CFRelease(v54);
    }
  }

  else
  {
    v57 = CFArrayCreateMutable(allocator, v55, MEMORY[0x1E695E9C0]);
    if (v54)
    {
      v152.length = CFArrayGetCount(v54);
      v152.location = 0;
      CFArrayAppendArray(v57, v54, v152);
    }

    v58 = *(v5 + 256);
    if (v58)
    {
      v153.length = CFArrayGetCount(*(v5 + 256));
      v153.location = 0;
      CFArrayAppendArray(v57, v58, v153);
    }

    if (v54)
    {
      goto LABEL_48;
    }
  }

  if (v57)
  {
    v143 = CFArrayGetCount(v57);
  }

  else
  {
    v143 = 0;
  }

  v59 = CPRecordStoreCopyDeletedRecordIDsOfClass();
  if (v59)
  {
    v60 = v59;
    if ((v6 & 0x800000) == 0)
    {
      CFDictionarySetValue(Mutable, @"ABChangeCallbackInfoDeletedPeople", v59);
    }

    ABRegulatoryLogDeleteContactsData(v5);
    v61 = CFArrayGetCount(v60);
    CFRelease(v60);
  }

  else
  {
    v61 = 0;
  }

  v62 = CPRecordStoreCopyDeletedRecordIDsOfClass();
  if (v62)
  {
    v63 = v62;
    if ((v6 & 0x800000) == 0)
    {
      CFDictionarySetValue(Mutable, @"ABChangeCallbackInfoDeletedGroups", v62);
    }

    ABRegulatoryLogDeleteContactsData(v5);
    CFRelease(v63);
  }

  v64 = *(v5 + 384);
  v65 = ABAddressBookCopySaveTransactionIdentifier(v5);
  if ((v6 & 0x800000) == 0)
  {
    v66 = *(v5 + 144);
    if (v66)
    {
      if (CFArrayGetCount(v66) >= 1)
      {
        v67 = *(v5 + 384);
        if ((v67 & 0x80000) == 0)
        {
          OUTLINED_FUNCTION_2(v67);
        }
      }
    }

    pthread_mutex_lock(&stru_1ED646C70);
    if ((*(v5 + 386) & 8) == 0)
    {
      ++_darwinNotificationCancellationCount;
    }

    pthread_mutex_unlock(&stru_1ED646C70);
  }

  if (!*(v5 + 16))
  {
    v71 = 0;
    if ((v6 & 0x800000) != 0)
    {
      goto LABEL_156;
    }

LABEL_139:
    v122 = *(v5 + 144);
    if (v122)
    {
      if (CFArrayGetCount(v122) >= 1)
      {
        v123 = *(v5 + 384);
        if ((v123 & 0x80000) == 0)
        {
          OUTLINED_FUNCTION_2(v123);
        }
      }
    }

    pthread_mutex_lock(&stru_1ED646C70);
    if ((*(v5 + 386) & 8) == 0)
    {
      --_darwinNotificationCancellationCount;
    }

    pthread_mutex_unlock(&stru_1ED646C70);
    goto LABEL_156;
  }

  LODWORD(theDict) = v64;
  v68 = v5;
  v69 = [MEMORY[0x1E6996740] runningboardInhibitorWithExplanation:@"com.apple.AddressBook.ABCAddressBookSaveWithConflictPolicy"];
  [v69 start];
  v70 = v68[44];
  if (v70 == 0.0)
  {
    v68[44] = CFAbsoluteTimeGetCurrent();
  }

  _updateModificationDateForUpdatedAndAddedPeople(v68, Mutable, v57);
  _logUpdatesZeroingPhoneAndEmailForChangedPeople(v68, Mutable);
  _logUpdatesMutatingSharedPhotoPreference(v68, Mutable);
  CPRecordStoreLogChanges();
  v71 = CPRecordStoreProcessAddedRecordsOfClassWithPolicyAndTransactionType();
  SequenceNumber = ABAddressBookGetSequenceNumber(v68);
  v73 = ABOSLogGeneral();
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
  {
    v74 = *(v140 + 344);
    *buf = 67109890;
    *v145 = SequenceNumber + 1;
    *&v145[4] = 2048;
    *&v145[6] = v61;
    v146 = 2048;
    v147 = v143;
    v148 = 2114;
    v149 = v74;
    _os_log_impl(&dword_1B7EFB000, v73, OS_LOG_TYPE_DEFAULT, "AddressBook preparing save, sequence number = %d, deleted contact count = %ld, added contact count = %ld, change history id = %{public}@", buf, 0x26u);
  }

  if (v61 >= 1)
  {
    v75 = v65;
    v76 = a3;
    if (!*(v140 + 368) || ![*(v140 + 368) length])
    {
      [MEMORY[0x1E6996640] loggingIdentifierForCurrentProcess];
    }

    v77 = os_log_create("com.apple.contacts", "data-loss-triage");
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_8();
      _os_log_impl(&dword_1B7EFB000, v77, OS_LOG_TYPE_DEFAULT, "Deleting %lu people on behalf of client %{public}@", buf, 0x16u);
    }

    if (v61 >= 0xB && os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
    {
      OUTLINED_FUNCTION_8();
      _os_log_fault_impl(&dword_1B7EFB000, v77, OS_LOG_TYPE_FAULT, "Possible data loss detected: Deleting %lu people on behalf of client %{public}@", buf, 0x16u);
    }

    a3 = v76;
    v65 = v75;
  }

  OUTLINED_FUNCTION_4();
  if (v78 == 1)
  {
    if ((*(v140 + 386) & 0x10) != 0)
    {
      if (!CPRecordStoreGetCountOfInstancesOfClassWhere())
      {
        v79 = ABAddressBookCopyLocalSource(v140);
        if (v79)
        {
          v80 = v79;
          ABDiagnosticsEnabled();
          _ABLog2(4, "_Bool ABCAddressBookSaveWithConflictPolicy(ABCAddressBookRef, ABConflictPolicy, CFErrorRef *)", 1280, 0, @"Enabling the local source because no sources were enabled", v81, v82, v83, v129);
          ABRecordSetIntValue(v80, kABSourceEnabledProperty, 1, 0);
          CFRelease(v80);
        }
      }

      *(v140 + 384) &= ~0x100000u;
    }

    v71 = CPRecordStoreSaveWithPreAndPostCallbacksAndTransactionType();
    if (*(v140 + 24))
    {
      OUTLINED_FUNCTION_4();
      if (v84 == 1)
      {
        v71 = 1;
        if ((CPRecordStoreSaveWithCallbackAndTransactionType() & 1) == 0)
        {
          v85 = ABOSLogGeneral();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *v145 = 0;
            _os_log_error_impl(&dword_1B7EFB000, v85, OS_LOG_TYPE_ERROR, "AddressBook failed to save: CPRecordStoreSaveWithCallbackAndTransactionType returned error: %{public}@", buf, 0xCu);
          }

          v71 = 0;
        }
      }
    }

    if (v143 >= 1)
    {
      OUTLINED_FUNCTION_4();
      if (v86 == 1)
      {
        v132 = a3;
        v87 = CFArrayGetCount(v57);
        v95 = HIDWORD(v134);
        if (v87 >= 1)
        {
          v96 = v87;
          v97 = 0;
          v98 = 0;
          v99 = 0;
          keyb = @"ABChangeCallbackInfoInsertedPeople";
          do
          {
            v100 = CFArrayGetValueAtIndex(v57, v97);
            v101 = ABRecordGetRecordType(v100);
            if (v101)
            {
              if (v98)
              {
                v109 = v98;
              }

              else
              {
                v110 = OUTLINED_FUNCTION_0(v101, v102, v103, v104, v105, v106, v107, v108, v129, v130, v132, v133, v134, v135, keyb, theDict, v140, allocator);
                v109 = CFArrayCreateMutable(v110, v111, v112);
                v98 = v109;
              }
            }

            else if (v99)
            {
              v109 = v99;
            }

            else
            {
              v113 = OUTLINED_FUNCTION_0(v101, v102, v103, v104, v105, v106, v107, v108, v129, v130, v132, v133, v134, v135, keyb, theDict, v140, allocator);
              v109 = CFArrayCreateMutable(v113, v114, v115);
              v99 = v109;
            }

            v116 = ABRecordGetRecordID(v100);
            CFArrayAppendValue(v109, v116);
            ++v97;
          }

          while (v96 != v97);
          if (v99)
          {
            CFDictionarySetValue(v133, keyb, v99);
            CFRelease(v99);
          }

          if (v98)
          {
            CFDictionarySetValue(v133, @"ABChangeCallbackInfoInsertedGroups", v98);
            CFRelease(v98);
          }
        }

        if ((v95 & 0x800000) == 0 && +[ABPersonLinker isAutoLinkingEnabled])
        {
          [ABPersonLinker startAutoLinkingNewPeopleInAddressBook:v140 inProcess:0];
        }

        ABChangeHistoryUpdatePeakPersonCount(v140, v88, v89, v90, v91, v92, v93, v94, v129);
        v71 = 1;
      }
    }
  }

  CPRecordStoreLogChanges();
  [v69 stop];
  if (v71)
  {
    v5 = v140;
    Mutable = v133;
    v117 = *(v140 + 72);
    v118 = *(v140 + 256);
    if (v118)
    {
      CFRelease(v118);
      *(v140 + 256) = 0;
    }

    if (v70 == 0.0)
    {
      *(v140 + 352) = 0;
    }

    ABRegulatoryLogModifyContactsData(v140);
    if ((v134 & 0x80000000000000) != 0)
    {
      goto LABEL_146;
    }

    if (v117 && (*(v140 + 386) & 8) == 0)
    {
      ABPostDistributedNotification(@"ABDatabaseSavedDistributedNotification");
      pthread_mutex_lock(&stru_1ED646C30);
      if (!_MergedGlobals_207)
      {
        _MergedGlobals_207 = _createDefaultCoalescingTimerForDarwinNotification(@"__ABDataBaseChangedByOtherProcessNotification");
      }

      pthread_mutex_unlock(&stru_1ED646C30);
      [_MergedGlobals_207 handleEvent];
      if ((theDict & 0x40000) != 0)
      {
        ABPostDistributedNotification(@"ABAddressBookMeCardChangeDistributedNotification");
        pthread_mutex_lock(&stru_1ED646C30);
        if (!qword_1EBA656D8)
        {
          qword_1EBA656D8 = _createDefaultCoalescingTimerForDarwinNotification(@"com.apple.AddressBook.MeCardChanged");
        }

        pthread_mutex_unlock(&stru_1ED646C30);
        [qword_1EBA656D8 handleEvent];
      }
    }

    if ((*(v140 + 386) & 8) == 0)
    {
      _ABCPostDatabaseChangedNotification(0, 1);
    }

    v119 = *(v140 + 168);
    if (!v119 || (*(v140 + 386) & 8) != 0)
    {
LABEL_146:
      v71 = 1;
    }

    else
    {
      v120 = CFArrayGetCount(v119);
      if (v133)
      {
        Copy = CFDictionaryCreateCopy(allocator, v133);
      }

      else
      {
        Copy = 0;
      }

      if (v120 >= 1)
      {
        for (i = 0; i != v120; ++i)
        {
          v125 = CFArrayGetValueAtIndex(*(v140 + 176), i);
          v126 = CFArrayGetValueAtIndex(*(v140 + 168), i);
          v126(v140, Copy, v125);
        }
      }

      if (Copy)
      {
        CFRelease(Copy);
      }

      v71 = 1;
      Mutable = v133;
    }

    goto LABEL_156;
  }

  v5 = v140;
  Mutable = v133;
  if ((v134 & 0x80000000000000) == 0)
  {
    goto LABEL_139;
  }

LABEL_156:
  v127 = *(v5 + 360);
  if (v127)
  {
    CFRelease(v127);
    *(v5 + 360) = 0;
  }

  *(v5 + 384) &= ~0x800000u;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  if (v65)
  {
    CFRelease(v65);
  }

  return v71;
}