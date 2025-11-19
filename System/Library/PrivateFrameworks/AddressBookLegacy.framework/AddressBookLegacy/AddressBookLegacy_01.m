void ABCPersonClearAddressBookPhoneCacheForPerson_apply(const void *a1, CFDictionaryRef theDict, uint64_t a3)
{
  if (theDict)
  {
    v4 = *(a3 + 24);
    v5 = *(a3 + 8);
    Count = CFDictionaryGetCount(theDict);
    if (Count >= 1)
    {
      v7 = Count;
      v8 = 8 * Count;
      v9 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
      v10 = malloc_type_malloc(v8, 0x80040B8603338uLL);
      CFDictionaryGetKeysAndValues(theDict, v9, v10);
      v11 = 0;
      while (1)
      {
        v12 = v10[v11];
        if (v12)
        {
          v13 = v9[v11];
          v14 = CFGetTypeID(v10[v11]);
          if (v14 == CFNumberGetTypeID())
          {
            valuePtr = -1;
            if (CFNumberGetValue(v12, kCFNumberIntType, &valuePtr) && (valuePtr == v4 || valuePtr == -1))
            {
              goto LABEL_13;
            }
          }

          else if (v14 == CFArrayGetTypeID())
          {
            if (!CFArrayGetCount(v12) || (v19.length = CFArrayGetCount(v12), v19.location = 0, CFArrayContainsValue(v12, v19, v4)))
            {
LABEL_13:
              v15 = *(v5 + 48);
              if (v15)
              {
                Value = CFDictionaryGetValue(v15, a1);
                if (Value)
                {
                  CFDictionaryRemoveValue(Value, v13);
                }
              }

              CFDictionaryRemoveValue(theDict, v13);
            }
          }
        }

        if (v7 == ++v11)
        {
          free(v9);
          free(v10);
          return;
        }
      }
    }
  }
}

ABMutableMultiValueRef ABCPersonCreateSocialProfileValueFillMissingData(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  MutableCopy = ABMultiValueCreateMutableCopy(a1);
  Count = ABMultiValueGetCount(a1);
  if (Count >= 1)
  {
    v3 = 0;
    allocator = *MEMORY[0x1E695E480];
    do
    {
      v4 = ABMultiValueCopyValueAtIndex(a1, v3);
      v5 = CFDictionaryGetCount(v4);
      v6 = CFDictionaryCreateMutableCopy(allocator, v5, v4);
      Value = CFDictionaryGetValue(v6, @"url");
      v8 = CFDictionaryGetValue(v6, @"service");
      v9 = CFDictionaryGetValue(v6, @"username");
      v10 = CFDictionaryGetValue(v6, @"identifier");
      if (Value)
      {
        v11 = socialProfileFromURL(Value, 0, 0, 0, 0, 0, 0);
        v12 = v11;
        if (!v8)
        {
          v13 = CFDictionaryGetValue(v11, @"service");
          if (v13)
          {
            CFDictionarySetValue(v6, @"service", v13);
          }
        }

        if (v9)
        {
          goto LABEL_19;
        }

        v14 = CFDictionaryGetValue(v12, @"username");
        if (!v14)
        {
          goto LABEL_19;
        }

        v15 = v14;
        v16 = v6;
        v17 = @"username";
      }

      else
      {
        if (!v8 || !(v9 | v10))
        {
          goto LABEL_19;
        }

        v18 = (v9 ? v9 : v10);
        v19 = socialProfileURLForServiceAndUsername(v8, v18);
        if (!v19)
        {
          goto LABEL_19;
        }

        v15 = v19;
        v16 = v6;
        v17 = @"url";
      }

      CFDictionarySetValue(v16, v17, v15);
LABEL_19:
      ABMultiValueReplaceValueAtIndex(MutableCopy, v6, v3);
      CFRelease(v4);
      CFRelease(v6);
      ++v3;
    }

    while (Count != v3);
  }

  return MutableCopy;
}

CFComparisonResult ABCPersonCompareNameOfPeople(uint64_t a1, uint64_t a2, int a3)
{
  if (a1 == a2)
  {
    return 0;
  }

  v6 = &kABCFirstSortLanguageIndexSortProperty;
  if (a3)
  {
    v6 = &kABCLastSortLanguageIndexSortProperty;
  }

  v7 = *v6;
  IntValue = ABRecordGetIntValue(a1, v7);
  v9 = ABRecordGetIntValue(a2, v7);
  if (IntValue == v9)
  {
    v10 = &kABCFirstSortSectionProperty;
    if (a3)
    {
      v10 = &kABCLastSortSectionProperty;
    }

    result = ABCPersonCompareSortKeyProperties(*v10, a1, a2);
    if (result == kCFCompareEqualTo)
    {
      v12 = &kABCFirstSortProperty;
      if (a3)
      {
        v12 = &kABCLastSortProperty;
      }

      v13 = *v12;

      return ABCPersonCompareSortKeyProperties(v13, a1, a2);
    }
  }

  else if (IntValue < v9)
  {
    return -1;
  }

  else
  {
    return 1;
  }

  return result;
}

CFComparisonResult ABCPersonCompareSortKeyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = ABCRecordCopyValue(a2, a1);
  v6 = ABCRecordCopyValue(a3, a1);
  v7 = v6;
  if (v5 != v6)
  {
    if (!v5)
    {
      v8 = kCFCompareGreaterThan;
      goto LABEL_10;
    }

    if (v6)
    {
      v8 = CFStringCompare(v5, v6, 0);
    }

    else
    {
      v8 = kCFCompareLessThan;
    }

    goto LABEL_9;
  }

  v8 = kCFCompareEqualTo;
  if (v5)
  {
LABEL_9:
    CFRelease(v5);
  }

LABEL_10:
  if (v7)
  {
    CFRelease(v7);
  }

  return v8;
}

void _updatePreferredImageForPerson(const void *a1, int a2, int a3, int a4)
{
  v8 = ABCGetAddressBookForRecord();
  if (!v8)
  {
    return;
  }

  v9 = v8;
  if (!a2 || (v10 = a1, !ABPersonHasImageData(a1)))
  {
    v11 = ABPersonCopyArrayOfAllLinkedPeople(a1);
    if (!v11)
    {
      v18 = 0;
      v10 = 0;
      goto LABEL_17;
    }

    v12 = v11;
    Count = CFArrayGetCount(v11);
    if (Count < 1)
    {
LABEL_11:
      v10 = 0;
    }

    else
    {
      v14 = Count;
      v15 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v12, v15);
        v10 = ValueAtIndex;
        if (((a2 & 1) != 0 || ValueAtIndex != a1) && ABPersonHasImageData(ValueAtIndex))
        {
          break;
        }

        if (v14 == ++v15)
        {
          goto LABEL_11;
        }
      }
    }

    CFRelease(v12);
  }

  if (v10)
  {
    RecordID = ABRecordGetRecordID(v10);
    v18 = 1;
    goto LABEL_18;
  }

  v18 = 0;
LABEL_17:
  RecordID = -1;
LABEL_18:
  IntValue = ABRecordGetIntValue(a1, kABPersonLinkProperty);
  CPRecordStoreGetDatabase();
  v20 = CPSqliteDatabaseStatementForReading();
  ABRegulatoryLogReadContactsData(v9);
  if (v20)
  {
    v21 = *(v20 + 8);
    if (v21)
    {
      sqlite3_bind_int(v21, 1, RecordID);
      sqlite3_bind_int(*(v20 + 8), 2, IntValue);
      CPSqliteStatementPerform();
      CPSqliteStatementReset();
    }
  }

  if ((v18 & a4) == 1)
  {
    ABCDBContextLogChangeForPerson(*(v9 + 16), v10, 9u);
  }

  if (a3)
  {
    v22 = ABPersonCopyLinkUUID(a1);
    if (v22)
    {
      v23 = v22;
      ABCDBContextLogChangeForUnifiedPerson(*(v9 + 16), v22, 4u);

      CFRelease(v23);
    }
  }
}

uint64_t _clientThumbnailImageInvalidationCallbackWrapper(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  Property = CPRecordGetProperty();
  v5 = CPRecordGetProperty();
  v6 = v3(Property, v5, *(a2 + 8));
  if (v6)
  {
    CPRecordInvalidateRecord();
  }

  return v6;
}

uint64_t _clientFullSizeImageInvalidationCallbackWrapper(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  Property = CPRecordGetProperty();
  v5 = v3(Property, 2, *(a2 + 8));
  if (v5)
  {
    CPRecordInvalidateRecord();
  }

  return v5;
}

BOOL _invalidatePersonImageDataPredicate(int a1, int a2, _DWORD *a3)
{
  if (*a3 != a1)
  {
    return 0;
  }

  v3 = a3[1];
  return v3 == -1 || v3 == a2;
}

uint64_t _invalidatePeopleImageDataPredicate(int a1, int a2, uint64_t a3)
{
  result = CFSetContainsValue(*a3, a1);
  if (result)
  {
    v6 = *(a3 + 8);
    return v6 == -1 || v6 == a2;
  }

  return result;
}

const __CFString *ABCPersonInvalidateAllImageData(uint64_t a1)
{
  ABCRecordGetUniqueId(a1);
  result = ABCGetAddressBookForRecord();
  if (result)
  {
    return ABCPersonInvalidateImageData(result);
  }

  return result;
}

uint64_t ABCPersonGetDerivedFromFormatFromImageWithFormat(uint64_t a1, int a2)
{
  result = 2;
  if (a1 && a2 != 2)
  {
    v5 = ABCGetAddressBookForRecord();
    v6 = v5;
    if (v5)
    {
      ImageStore = ABCAddressBookGetImageStore(v5);
    }

    else
    {
      ImageStore = 0;
    }

    Property = CPRecordGetProperty();
    if (Property && (v8 = Property, Count = CFArrayGetCount(Property), Count >= 1))
    {
      v10 = Count;
      v11 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v8, v11);
        if (CPRecordGetClass() != ABCFullSizeImageClass && CPRecordGetProperty() == a2)
        {
          break;
        }

        if (v10 == ++v11)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      ValueAtIndex = 0;
    }

    if (!ValueAtIndex && ImageStore)
    {
      v13 = ABCImageStoreCopyImagesForRecordWithFormat(v6, ImageStore, a1, a2);
      if (!v13)
      {
        return 2;
      }

      v14 = v13;
      if (CFArrayGetCount(v13) < 1)
      {
        ValueAtIndex = 0;
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v14, 0);
      }

      CFRelease(v14);
    }

    if (ValueAtIndex)
    {
      return CPRecordGetProperty();
    }

    return 2;
  }

  return result;
}

uint64_t ABCFindPersonMatchingPhoneNumberWithCountryAndHint(uint64_t a1, uint64_t a2, void *a3, int *a4, void *a5)
{
  if (ABPhoneUtilitiesIgnoreMatchingForLostMode())
  {
    return 0;
  }

  v25 = -1;
  SanitizedPhoneNumber = ABPersonGetSanitizedPhoneNumber(a2);
  if (!a1)
  {
    return a1;
  }

  v11 = SanitizedPhoneNumber;
  v12 = a3;
  if (!a3)
  {
    v12 = CPPhoneNumberCopyHomeCountryCode();
  }

  v13 = *(a1 + 40);
  if (v13 && (v14 = CFDictionaryGetValue(v13, v12)) != 0 && (v15 = v14, CFDictionaryContainsKey(v14, v11)))
  {
    v16 = _intValueForSanitiziedPhoneNumberInDictionary(v11, v15);
    if (a5)
    {
      v17 = *(a1 + 48);
      if (v17 && (Value = CFDictionaryGetValue(v17, v12)) != 0)
      {
        v19 = _stringValueForSanitizedPhoneNumberInDictionary(v11, Value);
        v20 = v19;
        if (v19)
        {
          CFRetain(v19);
        }
      }

      else
      {
        v20 = 0;
      }

      *a5 = v20;
    }

    if (a4)
    {
      v23 = *(a1 + 56);
      if (v23 && (v24 = CFDictionaryGetValue(v23, v12)) != 0)
      {
        v21 = _intValueForSanitiziedPhoneNumberInDictionary(v11, v24);
        v25 = v21;
      }

      else
      {
        v21 = -1;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v16 = _PersonUIDForPhoneNumber(*(a1 + 16), v11, v12, &v25);
    _setIntValueForSanitizedPhoneNumberInDictionary(v16, v11, v12, (a1 + 40));
    if (a5)
    {
      *a5 = 0;
    }

    if ((v25 & 0x80000000) == 0)
    {
      _setIntValueForSanitizedPhoneNumberInDictionary(v25, v11, v12, (a1 + 56));
    }

    if (a4)
    {
      v21 = v25;
LABEL_20:
      *a4 = v21;
    }
  }

  if (v16 != -1)
  {
    a1 = ABCDBContextRecordForUIDOfType(*(a1 + 16), v16, ABCPersonClass);
    if (!a5)
    {
      goto LABEL_27;
    }

LABEL_25:
    if (*MEMORY[0x1E695E738] == *a5)
    {
      *a5 = 0;
    }

    goto LABEL_27;
  }

  a1 = 0;
  if (a5)
  {
    goto LABEL_25;
  }

LABEL_27:
  if (v12 != a3 && v12)
  {
    CFRelease(v12);
  }

  return a1;
}

uint64_t _intValueForSanitiziedPhoneNumberInDictionary(void *key, CFDictionaryRef theDict)
{
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  Value = CFDictionaryGetValue(theDict, key);
  if (Value)
  {
    v4 = Value;
    v5 = CFGetTypeID(Value);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v4, kCFNumberIntType, &valuePtr);
      return valuePtr;
    }

    else
    {
      v6 = CFGetTypeID(v4);
      if (v6 == CFArrayGetTypeID() && CFArrayGetCount(v4) >= 1)
      {
        return CFArrayGetValueAtIndex(v4, 0);
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  return v2;
}

void _setValueForSanitizedPhoneNumberInDictionary(const void *a1, const void *a2, void *key, CFMutableDictionaryRef *a4)
{
  Mutable = *a4;
  if (!*a4)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *a4 = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, key);
  if (!Value)
  {
    Value = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(*a4, key, Value);
    CFRelease(Value);
  }

  CFDictionarySetValue(Value, a2, a1);
}

void _setIntValueForSanitizedPhoneNumberInDictionary(int a1, const void *a2, void *a3, CFMutableDictionaryRef *a4)
{
  valuePtr = a1;
  v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  _setValueForSanitizedPhoneNumberInDictionary(v7, a2, a3, a4);
  CFRelease(v7);
}

const void *_stringValueForSanitizedPhoneNumberInDictionary(void *key, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, key);
  v3 = Value;
  if (!Value)
  {
    return v3;
  }

  v4 = CFGetTypeID(Value);
  if (v4 == CFStringGetTypeID())
  {
    return v3;
  }

  v5 = CFGetTypeID(v3);
  if (v5 != CFArrayGetTypeID() || CFArrayGetCount(v3) < 1)
  {
    return 0;
  }

  return CFArrayGetValueAtIndex(v3, 0);
}

const void *_arrayValueForSanitizedPhoneNumberInDictionary(void *key, CFDictionaryRef theDict)
{
  result = CFDictionaryGetValue(theDict, key);
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFArrayGetTypeID())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFArrayRef ABCCopyArrayOfUIDsMatchingPhoneNumberWithCountryAndHint(uint64_t a1, uint64_t a2, void *a3, const __CFArray **a4)
{
  if (ABPhoneUtilitiesIgnoreMatchingForLostMode())
  {
    return 0;
  }

  theArray = 0;
  cf = 0;
  SanitizedPhoneNumber = ABPersonGetSanitizedPhoneNumber(a2);
  if (!a1)
  {
    return 0;
  }

  v10 = SanitizedPhoneNumber;
  if (a4)
  {
    *a4 = 0;
  }

  v11 = a3;
  if (!a3)
  {
    v11 = CPPhoneNumberCopyHomeCountryCode();
  }

  v12 = *(a1 + 40);
  if (!v12)
  {
    goto LABEL_21;
  }

  Value = CFDictionaryGetValue(v12, v11);
  if (!Value)
  {
    goto LABEL_21;
  }

  v14 = Value;
  if (!CFDictionaryContainsKey(Value, v10))
  {
    goto LABEL_21;
  }

  v15 = _arrayValueForSanitizedPhoneNumberInDictionary(v10, v14);
  if (v15)
  {
    Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], v15);
  }

  else
  {
    Copy = 0;
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    v17 = CFDictionaryGetValue(v16, v11);
    if (a4)
    {
      if (v17)
      {
        v18 = _arrayValueForSanitizedPhoneNumberInDictionary(v10, v17);
        if (v18)
        {
          v18 = CFArrayCreateCopy(*MEMORY[0x1E695E480], v18);
        }

        *a4 = v18;
      }
    }
  }

  if (!Copy)
  {
LABEL_21:
    Copy = _CopyPersonUIDsForPhoneNumber(*(a1 + 16), v10, v11, &cf, &theArray);
    _setValueForSanitizedPhoneNumberInDictionary(Copy, v10, v11, (a1 + 40));
    _setValueForSanitizedPhoneNumberInDictionary(cf, v10, v11, (a1 + 56));
    _setValueForSanitizedPhoneNumberInDictionary(theArray, v10, v11, (a1 + 48));
    v19 = theArray;
    if (theArray)
    {
      if (a4)
      {
        *a4 = CFArrayCreateCopy(*MEMORY[0x1E695E480], theArray);
        v19 = theArray;
      }

      CFRelease(v19);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (v11 != a3 && v11)
  {
    CFRelease(v11);
  }

  return Copy;
}

void ABCFindUIDsMatchingPhoneNumbers(uint64_t a1, _DWORD *a2, _DWORD *a3, void *a4, int a5)
{
  if (a1)
  {
    if ((a5 & 0x80000000) == 0)
    {
      _FindUIDsMatchingPhoneNumbers(*(a1 + 16), a2, a3, a4, a5);
    }
  }
}

uint64_t ABCFindPersonWithValueForMultivalueProperty(uint64_t a1, int a2, const __CFString *a3, uint64_t a4)
{
  if (ABPhoneUtilitiesIgnoreMatchingForLostMode())
  {
    return 0;
  }

  v8 = _PersonUIDWithValueForMultivalueProperty(*(a1 + 16), a2, a3, a4);
  if ((v8 & 0x80000000) != 0)
  {
    return 0;
  }

  v9 = v8;
  v10 = *(a1 + 16);
  v11 = ABCPersonClass;

  return ABCDBContextRecordForUIDOfType(v10, v9, v11);
}

void ABCPersonDelete(int a1, const void *a2, uint64_t a3)
{
  ABCDBContextDeleteMultiValuesForRecord(a3, a1);
  if (ABCFTSIsEnabled())
  {

    ABCDBContextDeleteSearchIndexEntryForRecord(a3, a2);
  }
}

__CFArray *_copySortKeysForStringAndTransformedStringIfNotNull(__CFStringTokenizer *a1, const __CFString *cf, const __CFString *a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  if (!cf)
  {
    return 0;
  }

  v12 = CFGetTypeID(cf);
  if (v12 != CFStringGetTypeID())
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, cf);
  _appendTokenizedWordsToArray(Mutable, cf);
  if (a3)
  {
    v14 = _copyTransformedString(cf, a3);
    if (v14)
    {
      v15 = v14;
      CFArrayAppendValue(Mutable, v14);
      _appendTokenizedWordsToArray(Mutable, v15);
      CFRelease(v15);
    }
  }

  v16 = ABCopySortKeysForStrings(a1, Mutable, a4, a5, a6);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v16;
}

__CFArray *_copyExtraSortKeysForOrganizationIfNotNull(__CFStringTokenizer *a1, const __CFString *a2, const __CFString *a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v10 = ABCreateSortKeysMutableArray();
  v11 = _copyTransformedString(a2, a3);
  v12 = ABCreateSortKey(a2, a4, a5, 0);
  if (v12)
  {
    CFArrayAppendValue(v10, v12);
  }

  if (v11)
  {
    if (v11 != a2)
    {
      v13 = ABCreateSortKey(a2, a4, a5, 0);
      if (v13)
      {
        CFArrayAppendValue(v10, v13);
      }
    }

    CFRelease(v11);
  }

  v14 = ABCCreateArrayBySeparatingWordsInPropertyString(a1, a2);
  if (v14)
  {
    v15 = v14;
    Count = CFArrayGetCount(v14);
    if (Count >= 1)
    {
      v17 = Count;
      for (i = 0; i != v17; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v15, i);
        v20 = ABCreateSortKey(ValueAtIndex, a4, a5, 0);
        if (v20)
        {
          CFArrayAppendValue(v10, v20);
        }

        v21 = _copyTransformedString(ValueAtIndex, a3);
        if (v21)
        {
          v22 = v21;
          if (v21 != ValueAtIndex)
          {
            v23 = ABCreateSortKey(v21, a4, a5, 0);
            if (v23)
            {
              CFArrayAppendValue(v10, v23);
            }
          }

          CFRelease(v22);
        }
      }
    }

    CFRelease(v15);
  }

  return v10;
}

__CFString *_copyTransformedString(CFStringRef theString, const __CFString *a2)
{
  if (a2)
  {
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
    v5 = MutableCopy;
    if (MutableCopy)
    {
      if (!CFStringTransform(MutableCopy, 0, a2, 0))
      {
        CFRelease(v5);
        return 0;
      }
    }

    return v5;
  }

  else
  {

    return CFRetain(theString);
  }
}

void _appendSearchKeys(__CFArray *a1, CFArrayRef theArray)
{
  if (a1 && theArray && CFArrayGetCount(theArray) >= 1)
  {
    v4.length = CFArrayGetCount(theArray);
    v4.location = 0;

    CFArrayAppendArray(a1, theArray, v4);
  }
}

const __CFArray *ABPersonCopyFirstNamePartForSorting(const void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v22 = *MEMORY[0x1E69E9840];
  memset(v21, 0, sizeof(v21));
  v20 = 0u;
  if (a2 == 1)
  {
    v9 = v21;
    *&v20 = a8;
    *(&v20 + 1) = a7;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v9 = &v20;
  }

  v11 = &v21[v10 - 1];
  if (a9 == 1)
  {
    v12 = a6;
  }

  else
  {
    v12 = a4;
  }

  if (a9 == 1)
  {
    v13 = a5;
  }

  else
  {
    v13 = a3;
  }

  if (a9 == 1)
  {
    v14 = a4;
  }

  else
  {
    v14 = a6;
  }

  *v9 = v12;
  if (a9 == 1)
  {
    v15 = a3;
  }

  else
  {
    v15 = a5;
  }

  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  if (a2 != 1)
  {
    v16 = &v21[v10 - 1];
    *(v16 + 4) = a8;
    *(v16 + 5) = a7;
  }

  v17 = 0;
  do
  {
    v18 = *(&v21[-1] + v17);
    if (v17 > 4)
    {
      break;
    }

    ++v17;
  }

  while (!v18);
  if (v18)
  {
    CFRetain(v18);
    return v18;
  }

  else
  {

    return ABCCopyFallbackStringFromRecord(a1);
  }
}

const __CFArray *ABCCopyFallbackStringFromRecord(const void *a1)
{
  result = ABRecordCopyValue(a1, kABCPersonDisplayNameProperty);
  if (!result)
  {
    Value = ABCRecordGetValue(a1);
    if (!Value || (result = CFStringCreateCopy(0, Value)) == 0)
    {
      v4 = ABCRecordGetValue(a1);
      if (!v4 || (v5 = v4, ABCMultiValueGetCount(v4) < 1) || (result = ABCMultiValueCopyValueAtIndex(v5, 0)) == 0)
      {
        result = ABCRecordGetValue(a1);
        if (result)
        {
          v6 = result;
          if (ABCMultiValueGetCount(result) < 1)
          {
            return 0;
          }

          else
          {

            return ABCMultiValueCopyValueAtIndex(v6, 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t ABCPersonNameOrderPieces(int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t *a12)
{
  v20 = a11;
  v21 = a12;
  if (ABLogAPIUsage())
  {
    v42 = _isMainThread();
    v22 = a8;
    v23 = a2;
    v24 = a4;
    v25 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFIndex ABCPersonNameOrderPieces(ABPersonCompositeNameFormat, ABCPersonSortOrdering, int, void *, void *, void *, void *, void *, void *, void *, void **, CFIndex *)", 3280, v25, 0, v26, v27, v28, v42);
    v29 = v25;
    a4 = v24;
    a2 = v23;
    a8 = v22;
    v21 = a12;
    v20 = a11;
    CFRelease(v29);
  }

  *v21 = -1;
  if (a3 == 1 && a4)
  {
    *v20 = a4;
LABEL_6:
    *v21 = 0;
    return 1;
  }

  if (a1)
  {
    v31 = a8;
  }

  else
  {
    v31 = a6;
  }

  if (a1)
  {
    v32 = a6;
  }

  else
  {
    v32 = a7;
  }

  if (a1)
  {
    v33 = a7;
  }

  else
  {
    v33 = a8;
  }

  if (a5)
  {
    *v20 = a5;
    v34 = 1;
    if (v31)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v34 = 0;
    if (v31)
    {
LABEL_19:
      v20[v34] = v31;
      v35 = v34 + 1;
      if (!a2 && v31 == a6 || (v36 = 0, v37 = -1, a2 == 1) && v31 == a8)
      {
        *v21 = v34;
        v36 = 1;
        v37 = v34;
      }

      if (v32)
      {
        goto LABEL_25;
      }

LABEL_31:
      v38 = v35;
      goto LABEL_37;
    }
  }

  v36 = 0;
  v37 = -1;
  v35 = v34;
  v34 = -1;
  if (!v32)
  {
    goto LABEL_31;
  }

LABEL_25:
  v20[v35] = v32;
  v38 = v35 + 1;
  if (v32 != a7)
  {
    if (!a2 && v32 == a6 || (v32 == a8 ? (v39 = a2 == 1) : (v39 = 0), v39 || v37 == -1))
    {
      *v21 = v35;
      v36 = 1;
      v37 = v35;
    }
  }

LABEL_37:
  if (!v33)
  {
    result = v38;
    goto LABEL_46;
  }

  v20[v38] = v33;
  result = v38 + 1;
  if (v33 == a7)
  {
    v40 = 1;
  }

  else
  {
    v40 = v36;
  }

  if (v40)
  {
LABEL_46:
    if (!v31 || v37 != -1)
    {
LABEL_49:
      if (!a9)
      {
        goto LABEL_57;
      }

LABEL_50:
      v20[result++] = a9;
      return result;
    }

LABEL_48:
    *v21 = v34;
    v36 = 1;
    goto LABEL_49;
  }

  if (!a2 && v33 == a6 || (v33 == a8 ? (v41 = a2 == 1) : (v41 = 0), v41 || v37 == -1))
  {
    v34 = v38;
    goto LABEL_48;
  }

  v36 = 0;
  if (a9)
  {
    goto LABEL_50;
  }

LABEL_57:
  if (!result)
  {
    if (a4)
    {
      *v20 = a4;
      if (v36)
      {
        return 1;
      }

      goto LABEL_6;
    }

    if (a10)
    {
      *v20 = a10;
      if (v36)
      {
        return 1;
      }

      goto LABEL_6;
    }

    return 0;
  }

  return result;
}

CFArrayRef ABCPersonCopyNamePieces(const void *a1, int a2, uint64_t *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (ABLogAPIUsage())
  {
    v20 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFArrayRef ABCPersonCopyNamePieces(ABCRecordRef, ABCPersonSortOrdering, CFIndex *)", 3381, v5, 0, v6, v7, v8, v20);
    CFRelease(v5);
  }

  v23 = 0u;
  v24 = 0u;
  *values = 0u;
  CompositeNameFormatForRecord = ABPersonGetCompositeNameFormatForRecord(a1);
  Value = ABCRecordGetValue(a1);
  v11 = _nonEmptyNamePiece(a1, kABCOrganizationProperty);
  v12 = _nonEmptyNamePiece(a1, kABCPrefixProperty);
  v13 = _nonEmptyNamePiece(a1, kABCFirstNameProperty);
  v14 = _nonEmptyNamePiece(a1, kABCMiddleNameProperty);
  v15 = _nonEmptyNamePiece(a1, kABCLastNameProperty);
  v16 = _nonEmptyNamePiece(a1, kABCSuffixProperty);
  v17 = _nonEmptyNamePiece(a1, kABCCompositeNameFallbackProperty);
  v18 = ABCPersonNameOrderPieces(CompositeNameFormatForRecord, a2, Value, v11, v12, v13, v14, v15, v16, v17, values, a3);
  if (v18 < 1)
  {
    return 0;
  }

  else
  {
    return CFArrayCreate(*MEMORY[0x1E695E480], values, v18, MEMORY[0x1E695E9C0]);
  }
}

const __CFString *_nonEmptyNamePiece(uint64_t a1, ABPropertyID property)
{
  if ((ABPersonGetTypeOfProperty(property) & 0x101) != 1)
  {
    return 0;
  }

  result = ABCRecordGetValue(a1);
  if (result)
  {
    v4 = result;
    if (CFStringGetLength(result))
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ABCPersonInvalidateSyntheticProperties()
{
  CPRecordSetProperty();
  CPRecordUnloadProperty();
  CPRecordUnloadProperty();
  CPRecordUnloadProperty();
  CPRecordUnloadProperty();
  CPRecordUnloadProperty();
  CPRecordUnloadProperty();
  CPRecordUnloadProperty();
  CPRecordUnloadProperty();

  return CPRecordUnloadProperty();
}

void loadSyntheticNameProperty(const void *a1, uint64_t a2, uint64_t a3)
{
  if (CPRecordGetProperty())
  {
    v80 = 0;
    v81 = 0;
    v78 = -1;
    v79 = -1;
    v6 = ABCGetAddressBookForRecord();
    WordTokenizer = ABAddressBookGetWordTokenizer(v6);
    SortCollator = ABAddressBookGetSortCollator(v6);
    SearchCollator = ABAddressBookGetSearchCollator(v6);
    v10 = 0;
    v75 = SortCollator;
    if (SortCollator)
    {
      v11 = SearchCollator;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      if (SearchCollator)
      {
        Property = CPRecordGetProperty();
        ShouldUseExtraTokenizations = ABAddressBookShouldUseExtraTokenizations(v6);
        v70 = ABAddressBookCopySectionNameTransform(v6);
        v17 = ABAddressBookCopySearchTransform(v6);
        v83[0] = MEMORY[0x1E69E9820];
        v83[1] = 0x40000000;
        v84 = __ABCCreateSyntheticNameValues_block_invoke;
        v85 = &__block_descriptor_tmp_435;
        v86 = a1;
        v18 = __ABCCreateSyntheticNameValues_block_invoke(v83, kABCFirstNameProperty);
        v49 = (v84)(v83, kABCLastNameProperty, "kABCLastNameProperty");
        v73 = (v84)(v83, kABCFirstNamePhoneticProperty, "kABCFirstNamePhoneticProperty");
        v50 = (v84)(v83, kABCLastNamePhoneticProperty, "kABCLastNamePhoneticProperty");
        v48 = (v84)(v83, kABCOrganizationProperty, "kABCOrganizationProperty");
        v77 = (v84)(v83, kABCOrganizationPhoneticProperty, "kABCOrganizationPhoneticProperty");
        v71 = (v84)(v83, kABCNicknameProperty, "kABCNicknameProperty");
        v63 = (v84)(v83, kABCMiddleNameProperty, "kABCMiddleNameProperty");
        v67 = (v84)(v83, kABCJobTitleProperty, "kABCJobTitleProperty");
        v65 = (v84)(v83, kABCPersonDisplayNameProperty, "kABCPersonDisplayNameProperty");
        v59 = (v84)(v83, kABCPrefixProperty, "kABCPrefixProperty");
        v57 = (v84)(v83, kABCSuffixProperty, "kABCSuffixProperty");
        v69 = v18;
        v56 = _copySortKeysForStringAndTransformedStringIfNotNull(WordTokenizer, v18, v17, ShouldUseExtraTokenizations, v11, 0);
        v55 = _copySortKeysForStringAndTransformedStringIfNotNull(WordTokenizer, v49, v17, ShouldUseExtraTokenizations, v11, 0);
        v54 = _copySortKeysForStringAndTransformedStringIfNotNull(WordTokenizer, v73, v17, ShouldUseExtraTokenizations, v11, 0);
        v53 = _copySortKeysForStringAndTransformedStringIfNotNull(WordTokenizer, v50, v17, ShouldUseExtraTokenizations, v11, 0);
        v61 = _copySortKeysForStringAndTransformedStringIfNotNull(WordTokenizer, v48, v17, ShouldUseExtraTokenizations, v11, 0);
        v62 = _copySortKeysForStringAndTransformedStringIfNotNull(WordTokenizer, v77, v17, ShouldUseExtraTokenizations, v11, 0);
        v72 = _copySortKeysForStringAndTransformedStringIfNotNull(WordTokenizer, v71, v17, 0, v11, 0);
        v52 = _copySortKeysForStringAndTransformedStringIfNotNull(WordTokenizer, v63, v17, 0, v11, 0);
        v60 = _copySortKeysForStringAndTransformedStringIfNotNull(WordTokenizer, v59, v17, ShouldUseExtraTokenizations, v11, 0);
        v58 = _copySortKeysForStringAndTransformedStringIfNotNull(WordTokenizer, v57, v17, ShouldUseExtraTokenizations, v11, 0);
        v64 = _copySortKeysForStringAndTransformedStringIfNotNull(WordTokenizer, v67, v17, 0, v11, 0);
        v51 = _copySortKeysForStringAndTransformedStringIfNotNull(WordTokenizer, v65, v17, 0, v11, 0);
        v68 = _copyExtraSortKeysForOrganizationIfNotNull(WordTokenizer, v48, v17, v11, 0);
        v66 = _copyExtraSortKeysForOrganizationIfNotNull(WordTokenizer, v77, v17, v11, 0);
        CreateSectionSortKeys(v6, a1, Property, v18, v73, v49, v50, v48, v77, &v81, &v79, 0, v75, v70);
        CreateSectionSortKeys(v6, a1, Property, v18, v73, v49, v50, v48, v77, &v80, &v78, 1, v75, v70);
        if (v18 || v49 || v73 || v50 || v48 || v77)
        {
          v82 = 0;
          v21 = ABCCreateSortKeysForString(WordTokenizer, v18, 0, v75, 2);
          theArray = ABCCreateSortKeysForString(WordTokenizer, v49, 0, v75, 2);
          cf = ABCCreateSortKeysForString(WordTokenizer, v73, 0, v75, 2);
          v46 = ABCCreateSortKeysForString(WordTokenizer, v50, 0, v75, 2);
          v22 = ABCCreateSortKeysForString(WordTokenizer, v48, 0, v75, 2);
          v23 = ABCCreateSortKeysForString(WordTokenizer, v77, 0, v75, 2);
          v24 = *MEMORY[0x1E695E480];
          Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
          v10 = Mutable;
          v45 = v22;
          v76 = v23;
          if (Property)
          {
            if (v22 | v23)
            {
              ABCMergeSortKeysIntoString(Mutable, v23, v77, &v82);
              ABCMergeSortKeysIntoString(v10, v22, v48, &v82);
              v26 = theArray;
            }

            else
            {
              ABCMergeSortKeysIntoString(Mutable, cf, v73, &v82);
              ABCMergeSortKeysIntoString(v10, v46, v50, &v82);
              ABCMergeSortKeysIntoString(v10, v21, v69, &v82);
              v26 = theArray;
              ABCMergeSortKeysIntoString(v10, theArray, v49, &v82);
            }

            v27 = v17;
          }

          else
          {
            v27 = v17;
            v26 = theArray;
            if (v21 || theArray || cf || v46 || v48 || v76)
            {
              ABCMergeSortKeysIntoString(Mutable, cf, v73, &v82);
              ABCMergeSortKeysIntoString(v10, v46, v50, &v82);
              ABCMergeSortKeysIntoString(v10, v21, v69, &v82);
              ABCMergeSortKeysIntoString(v10, theArray, v49, &v82);
              ABCMergeSortKeysIntoString(v10, v76, v77, &v82);
              ABCMergeSortKeysIntoString(v10, v45, v48, &v82);
            }
          }

          if (CFStringGetLength(v10) <= 0)
          {
            CFRelease(v10);
            v10 = 0;
          }

          v31 = CFStringCreateMutable(v24, 0);
          v12 = v31;
          v82 = 0;
          if (Property)
          {
            if (v45 | v76)
            {
              ABCMergeSortKeysIntoString(v31, v76, v77, &v82);
              v32 = v12;
              v33 = v45;
              v34 = v48;
            }

            else
            {
              ABCMergeSortKeysIntoString(v31, v46, v50, &v82);
              ABCMergeSortKeysIntoString(v12, cf, v73, &v82);
              ABCMergeSortKeysIntoString(v12, v26, v49, &v82);
              v32 = v12;
              v33 = v21;
              v34 = v69;
            }

            ABCMergeSortKeysIntoString(v32, v33, v34, &v82);
          }

          else if (v21 || v26 || cf || v46 || v48 || v76)
          {
            ABCMergeSortKeysIntoString(v31, v46, v50, &v82);
            ABCMergeSortKeysIntoString(v12, cf, v73, &v82);
            ABCMergeSortKeysIntoString(v12, v26, v49, &v82);
            ABCMergeSortKeysIntoString(v12, v21, v69, &v82);
            ABCMergeSortKeysIntoString(v12, v76, v77, &v82);
            ABCMergeSortKeysIntoString(v12, v45, v48, &v82);
          }

          if (CFStringGetLength(v12) <= 0)
          {
            CFRelease(v12);
            v12 = 0;
          }

          if (v21)
          {
            CFRelease(v21);
          }

          if (v26)
          {
            CFRelease(v26);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (v46)
          {
            CFRelease(v46);
          }

          if (v45)
          {
            CFRelease(v45);
          }

          if (v76)
          {
            CFRelease(v76);
          }

          v35 = CFArrayCreateMutable(0, 0, 0);
          if (v35)
          {
            v36 = v35;
            _appendSearchKeys(v35, v60);
            _appendSearchKeys(v36, v54);
            _appendSearchKeys(v36, v53);
            _appendSearchKeys(v36, v56);
            _appendSearchKeys(v36, v52);
            _appendSearchKeys(v36, v55);
            _appendSearchKeys(v36, v58);
            _appendSearchKeys(v36, v72);
            _appendSearchKeys(v36, v64);
            v28 = v61;
            if (ShouldUseExtraTokenizations)
            {
              _appendSearchKeys(v36, v61);
              _appendSearchKeys(v36, v62);
            }

            _appendSearchKeys(v36, v68);
            _appendSearchKeys(v36, v66);
            v14 = ABCopySortKeyForSortKeys(v36);
            CFRelease(v36);
          }

          else
          {
            v14 = 0;
            v28 = v61;
          }

          v13 = 0;
          goto LABEL_78;
        }

        v13 = ABCCopyFallbackStringFromRecord(a1);
        if (v13)
        {
          v10 = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
          v19 = ABCCreateSortKeysForString(WordTokenizer, v13, 0, v75, 2);
          ABCMergeSortKeysIntoString(v10, v19, 0, 0);
          v20 = v10 != 0;
          if (v10)
          {
            CFRetain(v10);
            CFRetain(v10);
          }

          CFRetain(v13);
        }

        else
        {
          v10 = 0;
          v20 = 0;
          v19 = 0;
        }

        v27 = v17;
        v28 = v61;
        v29 = CFArrayCreateMutable(0, 0, 0);
        _appendSearchKeys(v29, v72);
        _appendSearchKeys(v29, v64);
        if (CFArrayGetCount(v29) < 1)
        {
          if (!v19)
          {
            v14 = 0;
            if (!v13)
            {
              goto LABEL_35;
            }

            goto LABEL_34;
          }

          v30 = v19;
        }

        else
        {
          v30 = v29;
        }

        v14 = ABCopySortKeyForSortKeys(v30);
        if (!v13)
        {
LABEL_35:
          if (v20)
          {
            CFRelease(v10);
          }

          if (v19)
          {
            CFRelease(v19);
          }

          if (v29)
          {
            CFRelease(v29);
          }

          v12 = v10;
LABEL_78:
          v37 = CFArrayCreateMutable(0, 0, 0);
          if (v37)
          {
            v38 = v37;
            v39 = v28;
            v40 = v62;
            v41 = v66;
            v42 = v68;
            if (!Property)
            {
              _appendSearchKeys(v37, v54);
              _appendSearchKeys(v38, v53);
              _appendSearchKeys(v38, v56);
              _appendSearchKeys(v38, v52);
              _appendSearchKeys(v38, v55);
              v39 = v72;
              v40 = v51;
              v41 = v58;
              v42 = v60;
            }

            _appendSearchKeys(v38, v39);
            _appendSearchKeys(v38, v40);
            _appendSearchKeys(v38, v42);
            _appendSearchKeys(v38, v41);
            v15 = ABCopySortKeyForSortKeys(v38);
            CFRelease(v38);
            v28 = v61;
          }

          else
          {
            v15 = 0;
          }

          if (v70)
          {
            CFRelease(v70);
          }

          if (v27)
          {
            CFRelease(v27);
          }

          if (v56)
          {
            CFRelease(v56);
          }

          if (v55)
          {
            CFRelease(v55);
          }

          if (v54)
          {
            CFRelease(v54);
          }

          if (v53)
          {
            CFRelease(v53);
          }

          if (v28)
          {
            CFRelease(v28);
          }

          if (v62)
          {
            CFRelease(v62);
          }

          if (v72)
          {
            CFRelease(v72);
          }

          if (v52)
          {
            CFRelease(v52);
          }

          if (v64)
          {
            CFRelease(v64);
          }

          if (v51)
          {
            CFRelease(v51);
          }

          if (v68)
          {
            CFRelease(v68);
          }

          if (v66)
          {
            CFRelease(v66);
          }

          if (v60)
          {
            CFRelease(v60);
          }

          if (v58)
          {
            CFRelease(v58);
          }

          goto LABEL_115;
        }

LABEL_34:
        CFRelease(v13);
        goto LABEL_35;
      }
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
    }

LABEL_115:
    CPRecordInitializeProperty();
    CPRecordSetProperty();
    CPRecordSetProperty();
    CPRecordSetProperty();
    CPRecordSetProperty();
    CPRecordSetProperty();
    v43 = v81;
    CPRecordSetProperty();
    CPRecordSetProperty();
    CPRecordSetProperty();
    CPRecordSetProperty();
    if (v10)
    {
      CFRelease(v10);
      v43 = v81;
    }

    if (v43)
    {
      CFRelease(v43);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (v80)
    {
      CFRelease(v80);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    return;
  }

  _ABCLoadSingleString(a1, a2, a3);
}

CFStringRef __ABCCreateSyntheticNameValues_block_invoke(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  Property = CPRecordGetProperty();
  v5 = Property;
  if (Property)
  {
    v6 = CFGetTypeID(Property);
    if (v6 != CFStringGetTypeID())
    {
      v7 = CFGetTypeID(v5);
      v5 = CFCopyTypeIDDescription(v7);
      v8 = ABOSLogDatabase();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        CStringPtr = CFStringGetCStringPtr(v5, 0x8000100u);
        RecordID = ABRecordGetRecordID(*(a1 + 32));
        v12[0] = 67109634;
        v12[1] = a2;
        v13 = 2080;
        v14 = CStringPtr;
        v15 = 1024;
        v16 = RecordID;
        _os_log_fault_impl(&dword_1B7EFB000, v8, OS_LOG_TYPE_FAULT, "Property %d expected to be CFString but got %s, record %d", v12, 0x18u);
        if (!v5)
        {
          return v5;
        }

        goto LABEL_5;
      }

      if (v5)
      {
LABEL_5:
        CFRelease(v5);
        return 0;
      }
    }
  }

  return v5;
}

void CreateSectionSortKeys(uint64_t a1, const void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, CFStringRef *a10, _DWORD *a11, int a12, void *a13, const __CFString *a14)
{
  v15 = a10;
  v16 = a11;
  NamePartForSorting = ABPersonCopyFirstNamePartForSorting(a2, a3, a4, a5, a6, a7, a8, a9, a12);
  if (!NamePartForSorting)
  {
    goto LABEL_42;
  }

  v18 = NamePartForSorting;
  if (CFStringGetLength(NamePartForSorting) <= 0)
  {
    v22 = v18;
LABEL_41:
    CFRelease(v22);
    goto LABEL_42;
  }

  v19 = a13;
  if (a14)
  {
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v18);
    if (CFStringTransform(MutableCopy, 0, a14, 0))
    {
      v21 = v18;
      v18 = MutableCopy;
    }

    else
    {
      v21 = MutableCopy;
      if (!MutableCopy)
      {
        goto LABEL_9;
      }
    }

    CFRelease(v21);
  }

LABEL_9:
  v23 = ABCreateDataSortKey(v18, a13, 0);
  CFRelease(v18);
  value = v23;
  if (!v23)
  {
LABEL_42:
    *v16 = 0x7FFFFFFF;
    *v15 = 0;
    return;
  }

  v53 = 0;
  theArray = 0;
  v24 = ABAddressBookCopySectionHeaderDictionaries(a1, &theArray, &v53, a13);
  if (!v24)
  {
    goto LABEL_40;
  }

  v25 = v24;
  Count = CFArrayGetCount(v24);
  if (Count < 1)
  {
    CFRelease(v25);
    CFRelease(theArray);
    CFRelease(v53);
LABEL_40:
    v22 = v23;
    goto LABEL_41;
  }

  v26 = 0;
  alloc = *MEMORY[0x1E695E480];
  while (1)
  {
    v27 = v25;
    ValueAtIndex = CFArrayGetValueAtIndex(v25, v26);
    v29 = CFArrayGetValueAtIndex(theArray, v26);
    v30 = CFArrayGetValueAtIndex(v53, v26);
    v31 = CFArrayGetCount(v29);
    v55.location = 0;
    v55.length = v31;
    v32 = CFArrayBSearchValues(v30, v55, value, ABCompareDataSortKeys, 0);
    if (v32 < v31)
    {
      v33 = CFArrayGetValueAtIndex(v30, v32);
      if (v32)
      {
        v25 = v27;
        if (v32 >= 1)
        {
          v46 = v32 - (ABCompareDataSortKeys(v33, value) == 1);
          goto LABEL_45;
        }
      }

      else
      {
        v25 = v27;
        if ((ABCompareDataSortKeys(value, v33) & 0x8000000000000000) == 0)
        {
          v46 = 0;
          goto LABEL_45;
        }
      }

      goto LABEL_37;
    }

    v34 = CFDictionaryGetValue(ValueAtIndex, @"FirstCharacterAfterLanguage");
    if (!v34)
    {
      break;
    }

    v35 = ABCreateDataSortKey(v34, v19, 0);
    v36 = ABCompareDataSortKeys(value, v35);
    v37 = v31 - 1;
    v38 = v36 == -1;
    if (v36 == -1)
    {
      v46 = v31 - 1;
    }

    else
    {
      v46 = v32;
    }

    if (!v35)
    {
      goto LABEL_36;
    }

    v39 = v36;
    CFRelease(v35);
    v40 = v39 == -1;
    v19 = a13;
    v25 = v27;
    if (v40)
    {
      goto LABEL_44;
    }

LABEL_37:
    if (++v26 >= Count)
    {
      CFRelease(v25);
      CFRelease(theArray);
      CFRelease(v53);
      CFRelease(value);
      v16 = a11;
      v15 = a10;
      goto LABEL_42;
    }
  }

  v41 = CFDictionaryGetValue(ValueAtIndex, @"LastCharacter");
  v42 = ABCreateDataSortKey(v41, v19, 0);
  v43 = ABCreateUpperBoundingDataSortKey(v42);
  v44 = ABCompareDataSortKeys(value, v43);
  v37 = v31 - 1;
  v38 = v44 < 1;
  if (v44 >= 1)
  {
    v46 = v32;
  }

  else
  {
    v46 = v31 - 1;
  }

  if (v43)
  {
    CFRelease(v43);
  }

  if (!v42)
  {
LABEL_36:
    v25 = v27;
    v19 = a13;
    if (v38)
    {
      goto LABEL_45;
    }

    goto LABEL_37;
  }

  CFRelease(v42);
  v45 = v44 < 1;
  v19 = a13;
  v25 = v27;
  if (!v45)
  {
    goto LABEL_37;
  }

LABEL_44:
  v46 = v37;
LABEL_45:
  v47 = CFArrayGetValueAtIndex(v30, v46);
  BytePtr = CFDataGetBytePtr(v47);
  *a11 = v26;
  v49 = strlen(BytePtr);
  *a10 = CFStringCreateWithBytes(alloc, BytePtr, v49, 0x201u, 0);
  CFRelease(v25);
  CFRelease(theArray);
  CFRelease(v53);
  CFRelease(value);
}

uint64_t saveSearchKey()
{
  Property = CPRecordGetProperty();
  v1 = CPRecordGetProperty();
  result = CPSqliteConnectionStatementForSQL();
  if (result)
  {
    v3 = result;
    v4 = *(result + 8);
    if (v4)
    {
      ID = CPRecordGetID();
      sqlite3_bind_int(v4, 1, ID);
      v6 = *(v3 + 8);
      if (Property)
      {
        BytePtr = CFDataGetBytePtr(Property);
        Length = CFDataGetLength(Property);
        sqlite3_bind_blob(v6, 2, BytePtr, Length, 0);
      }

      else
      {
        sqlite3_bind_null(*(v3 + 8), 2);
      }

      v9 = *(v3 + 8);
      if (v1)
      {
        v10 = CFDataGetBytePtr(v1);
        v11 = CFDataGetLength(v1);
        sqlite3_bind_blob(v9, 3, v10, v11, 0);
      }

      else
      {
        sqlite3_bind_null(*(v3 + 8), 3);
      }

      CPSqliteStatementPerform();

      return CPSqliteStatementReset();
    }
  }

  return result;
}

void loadAlternateBirthday(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = _ABCCreateSingleStringValue(a1, a2, a3);
  if (v3)
  {
    v4 = v3;
    v5 = ABCreateAlternateBirthdayFromString(v3);
    if (v5)
    {
      v6 = v5;
      CPRecordInitializeProperty();
      CFRelease(v6);
    }

    CFRelease(v4);
  }
}

void saveAlternateBirthday(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Property = CPRecordGetProperty();
  v7 = ABCreateStringFromAlternateBirthday(Property);
  _ABCSaveSingleStringValue(a1, a2, a3, v7);
  if (v7)
  {

    CFRelease(v7);
  }
}

uint64_t _prepareForSave()
{
  if (CPRecordGetProperty())
  {
    CPRecordGetID();
    CPRecordSetProperty();
  }

  return CPRecordGetProperty();
}

void _didSave(const void *a1, uint64_t a2, const __CFDictionary *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (ABCFTSIsEnabled())
  {
    if (CPRecordIsPendingAdd())
    {
      ABCDContextCreateSearchIndexEntryForPerson(a2, a1);

      ABCDContextUpdateSearchIndexForPerson(a2, a1);
    }

    else if (a3)
    {
      Count = CFDictionaryGetCount(a3);
      v7 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
      CFDictionaryGetKeysAndValues(a3, v7, 0);
      v8 = CFArrayCreate(0, v7, Count, 0);
      ABCDContextUpdateSearchIndexForPersonAndProperties(a2, a1, v8);
      free(v7);

      CFRelease(v8);
    }

    else
    {
      v9 = ABRecordCopyValue(a1, kABPersonInternalUUIDProperty);
      v10 = ABOSLogGeneral();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = 138543362;
        v12 = v9;
        _os_log_impl(&dword_1B7EFB000, v10, OS_LOG_TYPE_INFO, "ABCPerson _didSave() has no changes for contact identifier (%{public}@) to update the search index with", &v11, 0xCu);
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }
  }
}

void _appendTokenizedWordsToArray(__CFArray *a1, const __CFString *a2)
{
  if (a1)
  {
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], a2, @"-");
    if (ArrayBySeparatingStrings)
    {
      v4 = ArrayBySeparatingStrings;
      if (CFArrayGetCount(ArrayBySeparatingStrings) >= 2)
      {
        v6.length = CFArrayGetCount(v4);
        v6.location = 0;
        CFArrayAppendArray(a1, v4, v6);
      }

      CFRelease(v4);
    }
  }
}

CFStringRef OUTLINED_FUNCTION_0_3(char *cStr)
{

  return CFStringCreateWithCString(v1, cStr, 0x8000100u);
}

uint64_t OUTLINED_FUNCTION_1_1(const void *a1, int a2)
{

  return ABCPersonSetImageDataDerivedFromFormatAndCropRectAndReturnError(a1, a2);
}

uint64_t _findFacebookStoreRowHandler(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = sqlite3_column_text(*(a1 + 8), 0);
  if (v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithCString:v5 encoding:4];
    if ([v6 length])
    {
      v7 = ABAccountCachedTypeForAccountIdentifier(v6);
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v11 = [v4 displayTypeForAccountWithIdentifier:v6];
        v9 = [v11 identifier];
      }

      if ([ABFacebookMigrator isAccountTypeFacebook:v9])
      {
        v12 = *(a1 + 8);
        v10 = 1;
        *a2 = sqlite3_column_int(v12, 1);
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
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t ABCRecordSetIntValueAndReturnError(const void *a1, uint64_t a2, int a3, CFAllocatorRef *a4)
{
  valuePtr = a3;
  v7 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = ABCRecordSetValueAndReturnError(a1, a2, v7, a4);
  CFRelease(v8);
  return v9;
}

uint64_t ABCRecordCopyCompositeName(uint64_t a1)
{
  Class = CPRecordGetClass();
  if (Class == ABCPersonClass)
  {

    return ABCPersonCopyCompositeName(a1);
  }

  else if (Class == ABCGroupClass[0])
  {

    return ABCGroupCopyCompositeName(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t ABCRecordNameForProperty(uint64_t a1, uint64_t a2)
{
  v3 = *(CPRecordGetClass() + 64);
  if (!v3)
  {
    return 0;
  }

  return v3(a2);
}

void loadGUIDProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (CPRecordGetID() == -1)
  {
    v6 = *MEMORY[0x1E695E480];
    v7 = CFUUIDCreate(*MEMORY[0x1E695E480]);
    if (!v7)
    {
      return;
    }

    v8 = v7;
    v9 = CFUUIDCreateString(v6, v7);
    CFRelease(v8);
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v9 = _ABCCreateSingleStringValue(a1, a2, a3);
    if (!v9)
    {
      return;
    }
  }

  CPRecordInitializeProperty();

  CFRelease(v9);
}

void loadLinkUUIDProperty(uint64_t a1)
{
  IntValue = ABRecordGetIntValue(a1, kABPersonLinkProperty);
  if (IntValue != -1)
  {
    v2 = IntValue;
    v3 = CPSqliteConnectionStatementForSQL();
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        sqlite3_bind_int(v4, 1, v2);
        v5 = CPSqliteStatementCopyStringResult();
        CPRecordInitializeProperty();
        CPSqliteStatementReset();

        CFRelease(v5);
      }
    }
  }
}

UInt8 *_ABCCreateUTF8StringFromCFString(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  usedBufLen = 0;
  v4 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  v7.location = 0;
  v7.length = Length;
  CFStringGetBytes(a1, v7, 0x8000100u, 0, 0, v4, MaximumSizeForEncoding, &usedBufLen);
  v4[usedBufLen] = 0;
  return v4;
}

CFDateRef _ABCCreateDateFromCFString(const __CFString *a1)
{
  at = 0.0;
  v1 = _ABCCreateUTF8StringFromCFString(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (sscanf(v1, "%lf", &at) == 1)
  {
    v3 = CFDateCreate(*MEMORY[0x1E695E480], at);
  }

  else
  {
    v3 = 0;
  }

  free(v2);
  return v3;
}

CFStringRef _ABCCreateCFStringFromDate(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  cStr = 0;
  v1 = MEMORY[0x1B8CB5340]();
  asprintf(&cStr, "%lf", v1);
  if (!cStr)
  {
    return 0;
  }

  v2 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
  free(cStr);
  return v2;
}

void OUTLINED_FUNCTION_1_2(__CFString *a1, const char *a2)
{

  CFStringAppendCString(a1, a2, 0x8000100u);
}

uint64_t (**ABCCallBacksForType(int a1))()
{
  if ((a1 & 0x100) != 0)
  {
    return &ABCMultiValueTypeCallBacks;
  }

  v1 = a1 - 1;
  if (a1 - 1) < 5 && ((0x1Bu >> v1))
  {
    return *(&off_1E7CCC3E0 + v1);
  }

  printf("Can't return type callbacks for %d\n", a1);
  return &ABUnknownTypeCallbacks;
}

__CFDictionary *ABCCopyDictionaryWithTypes(const __CFDictionary *a1, int a2, int a3)
{
  if (!a1)
  {
    return 0;
  }

  if (a2 == 1)
  {
    v6 = MEMORY[0x1E695E9D8];
  }

  else
  {
    v6 = 0;
  }

  if (a3 == 1)
  {
    v7 = MEMORY[0x1E695E9E8];
  }

  else
  {
    v7 = 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, v6, v7);
  Count = CFDictionaryGetCount(a1);
  if (Count)
  {
    v10 = Count;
    v11 = ABCCallBacksForType(a2);
    v12 = ABCCallBacksForType(a3);
    v13 = malloc_type_malloc(8 * v10, 0x80040B8603338uLL);
    v14 = malloc_type_malloc(8 * v10, 0x80040B8603338uLL);
    v15 = v14;
    if (v13 && v14)
    {
      CFDictionaryGetKeysAndValues(a1, v13, v14);
      if (v10 >= 1)
      {
        v16 = v13;
        v17 = v15;
        while (1)
        {
          v18 = (*v11)(*v16);
          v19 = (*v12)(*v17);
          v20 = v19;
          if (v18 && v19 != 0)
          {
            break;
          }

          if (v18)
          {
            goto LABEL_23;
          }

          if (v19)
          {
            goto LABEL_20;
          }

LABEL_21:
          ++v17;
          ++v16;
          if (!--v10)
          {
            goto LABEL_27;
          }
        }

        CFDictionarySetValue(Mutable, v18, v19);
LABEL_23:
        CFRelease(v18);
        if (!v20)
        {
          goto LABEL_21;
        }

LABEL_20:
        CFRelease(v20);
        goto LABEL_21;
      }
    }

    else if (!v13)
    {
      goto LABEL_28;
    }

LABEL_27:
    free(v13);
LABEL_28:
    if (v15)
    {
      free(v15);
    }
  }

  return Mutable;
}

uint64_t ABCDBContextUpdateSortDataVersions()
{
  result = CPRecordStoreGetDatabase();
  if (result)
  {
    CPSqliteDatabaseConnectionForWriting();
    ABCDBContextUpdateSortDataVersionsWithConnection();

    return CPSqliteDatabaseReleaseSqliteConnection();
  }

  return result;
}

void ABCDBContextUpdateSortDataVersionsWithConnection()
{
  v1 = 0;
  v0 = ABCCopyUserLanguage();
  ABCGetICUCollatorVersions(&v1 + 1, &v1);
  CPSqliteConnectionSetValueForProperty();
  ABCGetICUVersion();
  CPSqliteConnectionSetIntegerForProperty();
  CPSqliteConnectionSetIntegerForProperty();
  CPSqliteConnectionSetIntegerForProperty();
  CPSqliteConnectionSetIntegerForProperty();
  CPSqliteConnectionRemoveProperty();
  CPSqliteConnectionRemoveProperty();
  CFRelease(v0);
}

uint64_t _migrateStoreAndAccountTables(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 <= 45)
  {
    v5 = ABCDBContextPerformSQLResultDone(a2, @"CREATE TABLE ABAccount (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, AccountIdentifier TEXT, Flags INTEGER, DefaultSourceID INTEGER, guid TEXT NOT NULL DEFAULT (ab_generate_guid()), UNIQUE(guid));");
    v6 = v5 & _renameTable(a2, @"ABStore", @"ABStore_old");
    v7 = v6 & ABCDBContextCreateABCSourceTables(a2, 0);
    ABCDBContextPerformSQLResultDone(a2, @"INSERT OR IGNORE INTO ABAccount (AccountIdentifier) SELECT DISTINCT AccountIdentifier FROM ABStore_old WHERE AccountIdentifier IS NOT NULL;");
    v8 = @"INSERT OR IGNORE INTO ABStore (ROWID, Name, Type, ConstraintsPath, ExternalModificationTag, ExternalSyncTag, StoreInternalIdentifier, AccountID, Enabled, SyncData, MeIdentifier) SELECT abs.ROWID, abs.Name, abs.Type, abs.ConstraintsPath, abs.ExternalModificationTag, abs.ExternalSyncTag, abs.StoreInternalIdentifier, IFNULL(aba.ROWID, -1), abs.Enabled, abs.SyncData, abs.MeIdentifier FROM ABStore_old abs LEFT OUTER JOIN ABAccount aba ON abs.AccountIdentifier = aba.AccountIdentifier;";
    v9 = @"INSERT OR IGNORE INTO ABStore (ROWID, Name, Type, ConstraintsPath, ExternalModificationTag, ExternalSyncTag, StoreInternalIdentifier, AccountID, Enabled, SyncData) SELECT abs.ROWID, abs.Name, abs.Type, abs.ConstraintsPath, abs.ExternalModificationTag, abs.ExternalSyncTag, abs.StoreInternalIdentifier, IFNULL(aba.ROWID, -1), abs.Enabled, abs.SyncData FROM ABStore_old abs LEFT OUTER JOIN ABAccount aba ON abs.AccountIdentifier = aba.AccountIdentifier;";
    v10 = @"INSERT OR IGNORE INTO ABStore (ROWID, Name, Type, ConstraintsPath, ExternalModificationTag, ExternalSyncTag, StoreInternalIdentifier, AccountID, Enabled) SELECT abs.ROWID, abs.Name, abs.Type, abs.ConstraintsPath, abs.ExternalModificationTag, abs.ExternalSyncTag, abs.StoreInternalIdentifier, IFNULL(aba.ROWID, -1), abs.Enabled FROM ABStore_old abs LEFT OUTER JOIN ABAccount aba ON abs.AccountIdentifier = aba.AccountIdentifier;";
    v11 = @"INSERT OR IGNORE INTO ABStore (ROWID, Name, Type, ConstraintsPath, ExternalModificationTag, StoreInternalIdentifier, AccountID) SELECT abs.ROWID, abs.Name, abs.Type, abs.ConstraintsPath, abs.ExternalModificationTag, abs.StoreInternalIdentifier, IFNULL(aba.ROWID, -1) FROM ABStore_old abs LEFT OUTER JOIN ABAccount aba ON abs.AccountIdentifier = aba.AccountIdentifier;";
    if (a3 > 13)
    {
      v11 = @"INSERT OR IGNORE INTO ABStore (ROWID, Name, Type, ConstraintsPath, ExternalModificationTag, StoreInternalIdentifier, AccountID, Enabled) SELECT abs.ROWID, abs.Name, abs.Type, abs.ConstraintsPath, abs.ExternalModificationTag, abs.StoreInternalIdentifier, IFNULL(aba.ROWID, -1), abs.Enabled FROM ABStore_old abs LEFT OUTER JOIN ABAccount aba ON abs.AccountIdentifier = aba.AccountIdentifier;";
    }

    if (a3 != 34)
    {
      v10 = v11;
    }

    if (a3 <= 34)
    {
      v9 = v10;
    }

    if (a3 <= 37)
    {
      v8 = v9;
    }

    if (a3 == 7)
    {
      v12 = @"INSERT OR IGNORE INTO ABStore (ROWID, Name, Type, ConstraintsPath, ExternalModificationTag, StoreInternalIdentifier, AccountID) SELECT abs.ROWID, abs.Name, abs.Type, abs.ConstraintsPath, abs.ExternalModificationTag, abs.StoreInternalIdentifier, IFNULL(aba.ROWID, -1) FROM ABStore_old abs LEFT OUTER JOIN ABAccount aba ON abs.StoreInternalIdentifier = aba.AccountIdentifier;";
    }

    else
    {
      v12 = v8;
    }

    v13 = ABCDBContextPerformSQLResultDone(a2, v12);
    v14 = v13 & ABCDBContextCreateDefaultABSource();
    v15 = v7 & v14 & ABCDBContextPerformSQLResultDone(a2, @"UPDATE ABPerson SET StoreID = 0 WHERE StoreID = -1;");
    v16 = v15 & ABCDBContextPerformSQLResultDone(a2, @"UPDATE ABGroup SET StoreID = 0 WHERE StoreID = -1;");
    if (a3 <= 24)
    {
      v16 &= ABCDBContextPerformSQLResultDone(a2, @"update ABStore SET Type = Type - 1208 WHERE Type >= 1209;");
    }

    LODWORD(v17) = v16 & _dropTable(a2, @"ABStore_old");
    return v17 & ABCDBContextPerformSQLResultDone(a2, @"DELETE from ABAccount WHERE AccountIdentifier IS NULL;");
  }

  v18 = _renameTable(a2, @"ABStore", @"ABStore_old");
  v19 = v18 & _renameTable(a2, @"ABAccount", @"ABAccount_old");
  ABCSourceTables = ABCDBContextCreateABCSourceTables(a2, 0);
  v21 = v19 & ABCSourceTables & ABCDBContextPerformSQLResultDone(a2, @"CREATE TABLE ABAccount (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, AccountIdentifier TEXT, Flags INTEGER, DefaultSourceID INTEGER, guid TEXT NOT NULL DEFAULT (ab_generate_guid()), UNIQUE(guid));");
  if (a3 <= 0x38)
  {
    v22 = ABCDBContextPerformSQLResultDone(a2, @"INSERT OR IGNORE INTO ABStore (ROWID, Name, ExternalIdentifier, Type, ConstraintsPath, ExternalModificationTag, ExternalSyncTag, StoreInternalIdentifier, AccountID, Enabled, SyncData, MeIdentifier, Capabilities, guid) SELECT ROWID, Name, ExternalIdentifier, Type, ConstraintsPath, ExternalModificationTag, ExternalSyncTag, StoreInternalIdentifier, AccountID, Enabled, SyncData, MeIdentifier, Capabilities, (ab_generate_guid()) FROM ABStore_old;");
    v23 = @"INSERT OR IGNORE INTO ABAccount (ROWID, AccountIdentifier, Flags, DefaultSourceID, guid) SELECT ROWID, AccountIdentifier, Flags, DefaultSourceID, (ab_generate_guid()) FROM ABAccount_old;";
    goto LABEL_32;
  }

  if (a3 <= 0x3C)
  {
    v22 = ABCDBContextPerformSQLResultDone(a2, @"INSERT OR IGNORE INTO ABStore (ROWID, Name, ExternalIdentifier, Type, ConstraintsPath, ExternalModificationTag, ExternalSyncTag, StoreInternalIdentifier, AccountID, Enabled, SyncData, MeIdentifier, Capabilities, guid) SELECT ROWID, Name, ExternalIdentifier, Type, ConstraintsPath, ExternalModificationTag, ExternalSyncTag, StoreInternalIdentifier, AccountID, Enabled, SyncData, MeIdentifier, Capabilities, ab_repair_guid(guid) FROM ABStore_old;");
    v23 = @"INSERT OR IGNORE INTO ABAccount (ROWID, AccountIdentifier, Flags, DefaultSourceID, guid) SELECT ROWID, AccountIdentifier, Flags, DefaultSourceID, ab_repair_guid(guid) FROM ABAccount_old;";
    goto LABEL_32;
  }

  if (a3 > 0x4C)
  {
    if (a3 <= 0x67)
    {
      v25 = _CPCreateUTF8StringFromCFString();
      if (v25)
      {
        v26 = v25;
        if (CPSqlitePreparedStatement())
        {
          free(v26);
          goto LABEL_26;
        }

        v27 = ABOSLogGeneral();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          _migrateStoreAndAccountTables_cold_1(v27);
        }

        free(v26);
      }

      v24 = @"INSERT OR IGNORE INTO ABStore (ROWID, Name, ExternalIdentifier, Type, ConstraintsPath, ExternalModificationTag, ExternalSyncTag, StoreInternalIdentifier, AccountID, Enabled, SyncData, MeIdentifier, Capabilities, guid, LastSyncDate) SELECT ROWID, Name, ExternalIdentifier, Type, ConstraintsPath, ExternalModificationTag, ExternalSyncTag, StoreInternalIdentifier, AccountID, Enabled, SyncData, MeIdentifier, Capabilities, guid, LastSyncDate FROM ABStore_old;";
      goto LABEL_31;
    }

LABEL_26:
    v24 = @"INSERT OR IGNORE INTO ABStore (ROWID, Name, ExternalIdentifier, Type, ConstraintsPath, ExternalModificationTag, ExternalSyncTag, StoreInternalIdentifier, AccountID, Enabled, SyncData, MeIdentifier, Capabilities, guid, LastSyncDate, ProviderIdentifier, ProviderMetadata) SELECT ROWID, Name, ExternalIdentifier, Type, ConstraintsPath, ExternalModificationTag, ExternalSyncTag, StoreInternalIdentifier, AccountID, Enabled, SyncData, MeIdentifier, Capabilities, guid, LastSyncDate, ProviderIdentifier, ProviderMetadata FROM ABStore_old;";
    goto LABEL_31;
  }

  v24 = @"INSERT OR IGNORE INTO ABStore (ROWID, Name, ExternalIdentifier, Type, ConstraintsPath, ExternalModificationTag, ExternalSyncTag, StoreInternalIdentifier, AccountID, Enabled, SyncData, MeIdentifier, Capabilities, guid) SELECT ROWID, Name, ExternalIdentifier, Type, ConstraintsPath, ExternalModificationTag, ExternalSyncTag, StoreInternalIdentifier, AccountID, Enabled, SyncData, MeIdentifier, Capabilities, guid FROM ABStore_old;";
LABEL_31:
  v22 = ABCDBContextPerformSQLResultDone(a2, v24);
  v23 = @"INSERT OR IGNORE INTO ABAccount (ROWID, AccountIdentifier, Flags, DefaultSourceID, guid) SELECT ROWID, AccountIdentifier, Flags, DefaultSourceID, guid FROM ABAccount_old;";
LABEL_32:
  v28 = v22 & ABCDBContextPerformSQLResultDone(a2, v23);
  v29 = v21 & v28 & _dropTable(a2, @"ABStore_old");
  v17 = v29 & _dropTable(a2, @"ABAccount_old");
  if (a3 <= 0x5B)
  {
    return v17 & ABCDBContextPerformSQLResultDone(a2, @"DELETE from ABAccount WHERE AccountIdentifier IS NULL;");
  }

  return v17;
}

uint64_t _renameTable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = CFStringCreateWithFormat(0, 0, @"alter table %@ rename to %@;", a2, a3);
  if (ABCDBContextPerformSQLResultDone(a1, v6))
  {
    return 1;
  }

  if (_dropTable(a1, a3))
  {
    if (ABCDBContextPerformSQLResultDone(a1, v6))
    {
      return 1;
    }
  }

  else
  {
    ABDiagnosticsEnabled();
    _ABLog2(3, "_Bool _renameTable(CPSqliteConnection *, CFStringRef, CFStringRef)", 430, 0, @"Failed to drop table %@ after failed rename attempt.", v8, v9, v10, a3);
  }

  ABDiagnosticsEnabled();
  _ABLog2(3, "_Bool _renameTable(CPSqliteConnection *, CFStringRef, CFStringRef)", 435, 0, @"Failed to rename table %@ to %@.", v11, v12, v13, a2);
  return 0;
}

BOOL ABCDBContextPerformSQLResultDone(uint64_t a1, uint64_t a2)
{
  v3 = CPSqliteConnectionPerformSQL();
  if (v3 != 101)
  {
    v4 = ABOSLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      ABCDBContextPerformSQLResultDone_cold_1(a2, v3, v4);
    }
  }

  return v3 == 101;
}

BOOL _dropTable(uint64_t a1, uint64_t a2)
{
  v4 = CFStringCreateWithFormat(0, 0, @"drop table IF EXISTS %@", a2);
  v5 = ABCDBContextPerformSQLResultDone(a1, v4);
  if (!v5)
  {
    ABDiagnosticsEnabled();
    _ABLog2(3, "_Bool _dropTable(CPSqliteConnection *, CFStringRef)", 413, 0, @"Failed to drop table %@.", v6, v7, v8, a2);
  }

  return v5;
}

uint64_t _migrateGroupTables(uint64_t a1, uint64_t a2, int a3)
{
  v5 = _renameTable(a2, @"ABGroup", @"ABGroup_old");
  v6 = _renameTable(a2, @"ABGroupChanges", @"ABGroupChanges_old");
  v7 = ABCDBContextPerformSQLResultDone(a2, @"CREATE TABLE ABGroup (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, Name TEXT, ExternalIdentifier TEXT, StoreID INTEGER, ExternalModificationTag TEXT, ExternalRepresentation BLOB, ExternalUUID TEXT, guid TEXT NOT NULL DEFAULT (ab_generate_guid()), UNIQUE(guid));");
  v8 = ABCDBContextPerformSQLResultDone(a2, @"CREATE TABLE ABGroupChanges (record INTEGER, type INTEGER, sequence_number INTEGER, ExternalIdentifier TEXT, StoreID INTEGER, guid TEXT);");
  v9 = @"INSERT INTO ABGroup (ROWID, Name, ExternalIdentifier, StoreID, ExternalModificationTag, ExternalRepresentation, ExternalUUID, guid) SELECT ROWID, Name, ExternalIdentifier, StoreID, ExternalModificationTag, ExternalRepresentation, ExternalUUID, ab_repair_guid(guid) FROM ABGroup_old;";
  v10 = @"INSERT INTO ABGroupChanges (record, type, sequence_number, ExternalIdentifier, StoreID) SELECT record, type, -1, ExternalIdentifier, StoreID FROM ABGroupChanges_old;";
  v11 = @"INSERT INTO ABGroupChanges (record, type, sequence_number, ExternalIdentifier, StoreID) SELECT ROWID, type, -1, ExternalIdentifier, StoreID FROM ABGroupChanges_old;";
  if (a3 > 38)
  {
    v11 = @"INSERT INTO ABGroupChanges (record, type, sequence_number, ExternalIdentifier, StoreID) SELECT record, type, -1, ExternalIdentifier, StoreID FROM ABGroupChanges_old;";
  }

  v12 = @"INSERT OR IGNORE INTO ABGroup (ROWID, Name, ExternalIdentifier, StoreID) SELECT ROWID, Name, ExternalIdentifier, StoreID FROM ABGroup_old;";
  if (a3 > 38)
  {
    v12 = @"INSERT INTO ABGroup (ROWID, Name, ExternalIdentifier, StoreID, ExternalModificationTag, ExternalRepresentation, ExternalUUID) SELECT ROWID, Name, ExternalIdentifier, StoreID, ExternalModificationTag, ExternalRepresentation, ExternalUUID FROM ABGroup_old;";
  }

  if (a3 <= 56)
  {
    v10 = v11;
    v9 = v12;
  }

  if (a3 <= 63)
  {
    v13 = v10;
  }

  else
  {
    v13 = @"INSERT INTO ABGroupChanges (record, type, sequence_number, ExternalIdentifier, StoreID, guid) SELECT record, type, sequence_number, ExternalIdentifier, StoreID, guid FROM ABGroupChanges_old;";
  }

  if (a3 <= 63)
  {
    v14 = v9;
  }

  else
  {
    v14 = @"INSERT INTO ABGroup (ROWID, Name, ExternalIdentifier, StoreID, ExternalModificationTag, ExternalRepresentation, ExternalUUID, guid) SELECT ROWID, Name, ExternalIdentifier, StoreID, ExternalModificationTag, ExternalRepresentation, ExternalUUID, ab_repair_guid(guid) FROM ABGroup_old;";
  }

  v15 = ABCDBContextPerformSQLResultDone(a2, v13);
  v16 = v15 & ABCDBContextPerformSQLResultDone(a2, v14);
  v17 = v5 & v6 & (v7 && v8) & v16 & _dropTable(a2, @"ABGroup_old");
  v18 = _dropTable(a2, @"ABGroupChanges_old");
  return v17 & v18 & _dropTable(a2, @"ABGroupBasicChanges");
}

uint64_t _migrationMigrateDatabase(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  if (a3 <= 0xB && ((1 << a3) & 0xB00) != 0)
  {
    LimitedAccessTable = _migrateStoreAndAccountTables(a1, a2, a3);
    if (ABDiagnosticsEnabled())
    {
      v8 = ABLogStringForBool(LimitedAccessTable);
      _ABLog2(7, "CPSqliteMigrationContinuation _migrationMigrateDatabase(CPSqliteDatabase *, CPSqliteConnection *, int, void *)", 1031, 0, @"success=%@", v9, v10, v11, v8);
    }

    if (LimitedAccessTable)
    {
      v12 = _recreatePersonTables(a2, a3);
      LimitedAccessTable = v12;
      if (a3 == 11)
      {
        v12 = ABCDBContextPerformSQLResultDone(a2, @"DELETE FROM ABPersonSearchKey WHERE person_id NOT IN (SELECT ROWID FROM ABPerson);");
        if ((LimitedAccessTable & v12 & 1) == 0)
        {
          goto LABEL_65;
        }
      }

      else if (!v12)
      {
        goto LABEL_139;
      }

      v31 = _migrateGroupTables(v12, a2, a3);
      goto LABEL_21;
    }

    goto LABEL_139;
  }

  if (a3 <= 6)
  {
    v13 = _renameTable(a2, @"ABPerson", @"ABPerson_old");
    v14 = v13 & _renameTable(a2, @"ABGroup", @"ABGroup_old");
    v15 = _renameTable(a2, @"ABGroupChanges", @"ABGroupChanges_old");
    v16 = v14 & v15 & _renameTable(a2, @"ABPersonChanges", @"ABPersonChanges_old");
    v17 = v16 & _renameTable(a2, @"ABMultiValue", @"ABMultiValue_old");
    if (a3 == 6)
    {
      v17 &= _renameTable(a2, @"ABStore", @"ABStore_old");
    }

    ABDatabaseTables = _createABDatabaseTables(a2, a3, a3 != 6, 0);
    ABDatabaseTriggersAndIndicesAndDropFirst = 0;
    if (v17 && ABDatabaseTables)
    {
      ABDatabaseTriggersAndIndicesAndDropFirst = _createABDatabaseTriggersAndIndicesAndDropFirst(a2, 1);
    }

    v20 = ABDatabaseTriggersAndIndicesAndDropFirst & ABCDBContextPerformSQLResultDone(a2, @"INSERT INTO ABGroup (ROWID, Name, ExternalIdentifier, StoreID) SELECT ROWID, Name, NULL, 0 FROM ABGroup_old;");
    v21 = ABCDBContextPerformSQLResultDone(a2, @"INSERT INTO ABPerson (ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, Birthday, JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID) SELECT ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, ab_normalize_date(Birthday), JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, 0 FROM ABPerson_old;");
    v22 = v20 & v21 & ABCDBContextPerformSQLResultDone(a2, @"INSERT INTO ABGroupChanges (record, type, ExternalIdentifier, StoreID) SELECT ROWID, type, NULL, 0 FROM ABGroupChanges_old;");
    v23 = v22 & ABCDBContextPerformSQLResultDone(a2, @"INSERT INTO ABPersonChanges (record, type, ExternalIdentifier, StoreID) SELECT ROWID, type, NULL, 0 FROM ABPersonChanges_old;");
    if (a3 == 6)
    {
      v24 = ABCDBContextPerformSQLResultDone(a2, @"INSERT INTO ABStore (ROWID, Name, Type, ConstraintsPath, ExternalModificationTag, StoreInternalIdentifier, AccountID) SELECT ROWID, Name, Type, ConstraintsPath, ExternalModificationTag, StoreInternalIdentifier, NULL FROM ABStore_old;");
      v25 = v24 & ABCDBContextPerformSQLResultDone(a2, @"UPDATE ABPerson SET StoreID = 0 WHERE StoreID = -1;");
      v23 &= v25 & ABCDBContextPerformSQLResultDone(a2, @"UPDATE ABGroup SET StoreID = 0 WHERE StoreID = -1;");
    }

    v26 = ABCDBContextPerformSQLResultDone(a2, @"INSERT INTO ABMultiValue (UID, record_id, property, identifier, label, value) SELECT UID, record_id, property, identifier, label, value FROM ABMultiValue_old;");
    v27 = v26 & _dropTable(a2, @"ABPerson_old");
    v28 = v27 & _dropTable(a2, @"ABGroup_old");
    v29 = v23 & v28 & _dropTable(a2, @"ABPersonChanges_old");
    v30 = _dropTable(a2, @"ABGroupChanges_old");
    LimitedAccessTable = v29 & v30 & _dropTable(a2, @"ABMultiValue_old");
    if (a3 == 6)
    {
      LimitedAccessTable &= _dropTable(a2, @"ABStore_old");
    }

    goto LABEL_22;
  }

  if (a3 == 14)
  {
    v57 = *MEMORY[0x1E695E480];
    v58 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"SELECT count() FROM ABStore WHERE Type != %i and Type != %i and Type != %i and Type != %i and Type != %i;", 0, 1209, 16778425, 1210, 16778427);
    CPSqliteConnectionStatementForSQL();
    CFRelease(v58);
    LODWORD(v58) = CPSqliteStatementIntegerResult();
    CPSqliteStatementReset();
    if (v58)
    {
      goto LABEL_65;
    }

    v104 = 1;
    v59 = CFStringCreateWithFormat(v57, 0, @"SELECT count() FROM ABPerson WHERE Kind > %i;");
    CPSqliteConnectionStatementForSQL();
    CFRelease(v59);
    LODWORD(v59) = CPSqliteStatementIntegerResult();
    v60 = CPSqliteStatementReset();
    if (v59)
    {
      goto LABEL_65;
    }

    v61 = _migrateStoreAndAccountTables(v60, a2, 14);
    if (!v61 || !_migrateGroupTables(v61, a2, 14))
    {
      goto LABEL_65;
    }

    v31 = _recreatePersonTables(a2, 14);
LABEL_21:
    LimitedAccessTable = v31;
    goto LABEL_22;
  }

  LimitedAccessTable = _migrateStoreAndAccountTables(a1, a2, a3);
  v62 = ABDiagnosticsEnabled();
  if (v62)
  {
    v63 = ABLogStringForBool(LimitedAccessTable);
    _ABLog2(7, "CPSqliteMigrationContinuation _migrationMigrateDatabase(CPSqliteDatabase *, CPSqliteConnection *, int, void *)", 1120, 0, @"success=%@", v64, v65, v66, v63);
  }

  if (LimitedAccessTable)
  {
    LimitedAccessTable = _migrateGroupTables(v62, a2, a3);
    if (ABDiagnosticsEnabled())
    {
      v67 = ABLogStringForBool(LimitedAccessTable);
      _ABLog2(7, "CPSqliteMigrationContinuation _migrationMigrateDatabase(CPSqliteDatabase *, CPSqliteConnection *, int, void *)", 1124, 0, @"success=%@", v68, v69, v70, v67);
      if ((LimitedAccessTable & 1) == 0)
      {
LABEL_65:
        LimitedAccessTable = 0;
        goto LABEL_139;
      }
    }

    else if (!LimitedAccessTable)
    {
      goto LABEL_139;
    }

    LimitedAccessTable = _recreatePersonTables(a2, a3);
    if (ABDiagnosticsEnabled())
    {
      v85 = ABLogStringForBool(LimitedAccessTable);
      _ABLog2(7, "CPSqliteMigrationContinuation _migrationMigrateDatabase(CPSqliteDatabase *, CPSqliteConnection *, int, void *)", 1129, 0, @"success=%@", v86, v87, v88, v85);
    }

LABEL_22:
    if (a3 <= 60 && LimitedAccessTable)
    {
      v32 = _renameTable(a2, @"ABMultiValue", @"ABMultiValue_old");
      MultiValueTables = ABCDBContextCreateMultiValueTables(a2);
      MultiValueTriggersAndIndicesAndDropFirst = 0;
      if (v32 && MultiValueTables)
      {
        MultiValueTriggersAndIndicesAndDropFirst = ABCDBContextCreateMultiValueTriggersAndIndicesAndDropFirst(a2, 1);
      }

      v35 = ABCDBContextPerformSQLResultDone(a2, @"INSERT INTO ABMultiValue (UID, record_id, property, identifier, label, value) SELECT UID, record_id, property, identifier, label, value FROM ABMultiValue_old;");
      v36 = _dropTable(a2, @"ABMultiValue_old");
      LimitedAccessTable = 0;
      if (!MultiValueTriggersAndIndicesAndDropFirst || !v35 || !v36)
      {
        goto LABEL_139;
      }
    }

    else if (!LimitedAccessTable)
    {
      goto LABEL_139;
    }

    if (ABDiagnosticsEnabled())
    {
      v37 = ABLogStringForBool(1);
      _ABLog2(7, "CPSqliteMigrationContinuation _migrationMigrateDatabase(CPSqliteDatabase *, CPSqliteConnection *, int, void *)", 1146, 0, @"success=%@", v38, v39, v40, v37);
    }

    v41 = _dropTable(a2, @"ABStoreChanges");
    LimitedAccessTable = v41;
    if (a3 <= 32 && v41)
    {
      LimitedAccessTable = ABCDBContextPerformSQLResultDone(a2, @"UPDATE ABMultiValue SET identifier = -1 WHERE identifier = 0 AND Property = 16;");
    }

    if (a3 <= 47 && LimitedAccessTable)
    {
      Mutable = CFArrayCreateMutable(0, 0, 0);
      v104 = 4;
      v43 = CFStringCreateWithFormat(0, 0, @"SELECT ROWID, ExternalIdentifier from ABStore where Type = %d OR Type = %d");
      v44 = CPSqliteConnectionStatementForSQL();
      CFRelease(v43);
      if (v44)
      {
        v45 = CPSqliteStatementSendResults();
        LimitedAccessTable = v45 == 101;
        CPSqliteStatementReset();
        CPSqliteDatabaseReleaseSqliteStatement();
        if (CFArrayGetCount(Mutable))
        {
          MutableCopy = CFStringCreateMutableCopy(0, 0, @"(");
          if (CFArrayGetCount(Mutable) >= 2)
          {
            v47 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v47);
              CFStringAppendFormat(MutableCopy, 0, @"%ld, ", ValueAtIndex);
              ++v47;
            }

            while (CFArrayGetCount(Mutable) - 1 > v47);
          }

          Count = CFArrayGetCount(Mutable);
          v50 = CFArrayGetValueAtIndex(Mutable, Count - 1);
          CFStringAppendFormat(MutableCopy, 0, @"%ld"), v50);
          v51 = CFStringCreateWithFormat(0, 0, @"SELECT ROWID, ExternalIdentifier from ABPerson where StoreID in %@", MutableCopy);
          CPSqliteConnectionStatementForSQL();
          CFRelease(v51);
          v52 = CPSqliteStatementSendResults();
          CPSqliteStatementReset();
          CPSqliteDatabaseReleaseSqliteStatement();
          v104 = MutableCopy;
          v53 = CFStringCreateWithFormat(0, 0, @"SELECT ROWID, ExternalIdentifier from ABGroup where StoreID in %@");
          CPSqliteConnectionStatementForSQL();
          CFRelease(v53);
          v54 = CPSqliteStatementSendResults();
          LimitedAccessTable = v52 == 101 && v54 == 101 && v45 == 101;
          CPSqliteStatementReset();
          CPSqliteDatabaseReleaseSqliteStatement();
          CFRelease(MutableCopy);
        }
      }

      else
      {
        LimitedAccessTable = 1;
      }

      CFRelease(Mutable);
    }

    if (a3 <= 51 && LimitedAccessTable)
    {
      if (CPSqliteConnectionStatementForSQL() && (v71 = CPSqliteStatementIntegerResult(), CPSqliteStatementReset(), v71))
      {
        v72 = ABCDBContextPerformSQLResultDone(a2, @"UPDATE ABStore set ROWID = (SELECT MAX(ROWID)+1 from ABStore) where ROWID = 0;");
        v73 = v72 & ABCDBContextPerformSQLResultDone(a2, @"UPDATE ABStore set StoreInternalIdentifier = NULL where ROWID = (SELECT MAX(ROWID) from ABStore);");
        v74 = ABCDBContextPerformSQLResultDone(a2, @"UPDATE ABGroup set StoreID = (SELECT MAX(ROWID) from ABStore) where StoreID = 0;");
        LimitedAccessTable = v73 & v74 & ABCDBContextPerformSQLResultDone(a2, @"UPDATE ABPerson set StoreID = (SELECT MAX(ROWID) from ABStore) where StoreID = 0;");
        if (CPSqliteConnectionStatementForSQL())
        {
          v75 = CPSqliteStatementIntegerResult();
          CPSqliteStatementReset();
          if (!v75)
          {
            LimitedAccessTable &= ABCDBContextPerformSQLResultDone(a2, @"UPDATE _SqliteDatabaseProperties set value = (SELECT MAX(ROWID) from ABStore) where key = 'MeSourceID';");
          }
        }

        v76 = CPSqliteConnectionStatementForSQL();
        CFRelease(@"INSERT INTO ABStore (ROWID, Type, Enabled , StoreInternalIdentifier) VALUES('0', '0', '0', 'local');");
        if (v76)
        {
          if (CPSqliteStatementPerform() != 101)
          {
            LimitedAccessTable = 0;
          }

          CPSqliteStatementReset();
        }
      }

      else
      {
        LimitedAccessTable = 1;
      }
    }

    if (a3 < 63 && LimitedAccessTable)
    {
      LimitedAccessTable = _dropTable(a2, @"ABRecent");
    }

    if (a3 <= 63 && LimitedAccessTable)
    {
      ABChangeHistoryCreateTables(a2, 0);
      v77 = _dropTable(a2, @"ABPersonMultiValueDeletes");
      LimitedAccessTable = v77 & ABCDBContextCreateMultiValueTables(a2);
    }

    else
    {
      v78 = LimitedAccessTable ^ 1;
      if (a3 > 78)
      {
        v78 = 1;
      }

      if ((v78 & 1) == 0)
      {
        LimitedAccessTable = ABChangeHistoryMigrateAddingSaveTimestamp();
      }
    }

    if (a3 <= 67 && LimitedAccessTable)
    {
      LimitedAccessTable = [ABFacebookMigrator removeFacebookSensitiveInformation:a2];
    }

    if (a3 <= 69 && LimitedAccessTable)
    {
      v79 = CPSqliteConnectionStatementForSQL();
      if (v79 && (v80 = v79, (v81 = *(v79 + 8)) != 0))
      {
        sqlite3_bind_blob(v81, 1, @"Hiragana-Katakana", 8, 0);
        sqlite3_bind_blob(*(v80 + 8), 2, @"Hiragana-Katakana", 8, 0);
        sqlite3_bind_blob(*(v80 + 8), 3, @"Hiragana-Katakana", 8, 0);
        sqlite3_bind_blob(*(v80 + 8), 4, @"Hiragana-Katakana", 8, 0);
        LimitedAccessTable = CPSqliteStatementPerform() == 101;
        CPSqliteStatementReset();
      }

      else
      {
        LimitedAccessTable = 0;
      }

      *a4 |= 4u;
    }

    if (a3 <= 77 && LimitedAccessTable)
    {
      LimitedAccessTable = [ABDowntimeWhitelistMigrator moveDowntimeWhitelistFromUnknownProperties:a2];
    }

    if (a3 <= 83 && LimitedAccessTable)
    {
      LimitedAccessTable = ABCDBContextCreateMultiValueTriggersAndIndicesAndDropFirst(a2, 0);
    }

    if (a3 <= 95 && LimitedAccessTable)
    {
      LimitedAccessTable = _createLimitedAccessTable(a2);
LABEL_123:
      if (a3 < 101 && LimitedAccessTable)
      {
        v96 = ABCDBContextPerformSQLResultDone(a2, @"CREATE TRIGGER IF NOT EXISTS RemoveDeletedContactsFromLimited AFTER DELETE ON ABPerson \nBEGIN \n    DELETE FROM LimitedAccess \n    WHERE Old.guid = guid    ; \nEND; \n");
        LimitedAccessTable = v96 & ABCDBContextPerformSQLResultDone(a2, @"CREATE TRIGGER IF NOT EXISTS UpdateLinkedContactsInLimited AFTER DELETE ON ABPersonLink \nBEGIN \n    INSERT OR IGNORE INTO LimitedAccess (BundleId, guid, SequenceNumber, IsActive) \n        SELECT la.BundleId, abp.guid, la.SequenceNumber, la.IsActive FROM LimitedAccess la, ABPerson abp \n        WHERE la.guid = OLD.guid AND abp.PersonLink = OLD.ROWID; \n    DELETE FROM LimitedAccess WHERE guid = OLD.guid; \nEND; \n");
      }

      if (a3 <= 101 && LimitedAccessTable)
      {
        CPSqliteConnectionSetIntegerForProperty();
      }

      if (a3 > 105)
      {
        v97 = 1;
      }

      else
      {
        v97 = LimitedAccessTable ^ 1;
      }

      if ((v97 & 1) == 0)
      {
        CPSqliteConnectionSetIntegerForProperty();
      }

      if (a3 > 106)
      {
        v98 = 1;
      }

      else
      {
        v98 = LimitedAccessTable ^ 1;
      }

      if ((v98 & 1) == 0)
      {
        LimitedAccessTable = 1;
        CPSqliteConnectionSetIntegerForProperty();
      }

      goto LABEL_139;
    }

    v82 = LimitedAccessTable ^ 1;
    if (a3 > 97)
    {
      v82 = 1;
    }

    if (v82)
    {
      goto LABEL_123;
    }

    if (CPSqliteConnectionStatementForSQL())
    {
      v83 = CPSqliteStatementIntegerResult();
      CPSqliteStatementReset();
      if (v83 >= 1)
      {
        if (_renameTable(a2, @"LimitedAccess", @"LimitedAccess_old"))
        {
          v84 = 1;
          goto LABEL_121;
        }

        ABDiagnosticsEnabled();
        _ABLog2(3, "_Bool _migrateLimitedAccessTable(CPSqliteConnection *)", 976, 0, @"Failed to migrate LimitedAccess table", v89, v90, v91, v104);
      }
    }

    v84 = 0;
LABEL_121:
    v92 = ABCDBContextPerformSQLResultDone(a2, @"DROP INDEX IF EXISTS ABLimitedAccessBundleIndex;");
    v93 = v92 & ABCDBContextPerformSQLResultDone(a2, @"DROP INDEX IF EXISTS ABLimitedAccessGUIDIndex;");
    v94 = _dropTable(a2, @"LimitedAccess");
    LimitedAccessTable = v93 & v94 & _createLimitedAccessTable(a2);
    if (v84)
    {
      v95 = ABCDBContextPerformSQLResultDone(a2, @"INSERT INTO LimitedAccess (BundleID, guid, SequenceNumber, IsActive) SELECT BundleID, guid, ROWID, 1 FROM LimitedAccess_old;");
      LimitedAccessTable &= v95 & _dropTable(a2, @"LimitedAccess_old");
    }

    goto LABEL_123;
  }

LABEL_139:
  *a4 = ((a3 - 25) < 4) | (2 * ((a3 - 22) < 0xA)) | (8 * ((a3 - 57) < 0xF)) | *a4 & 0xF4;
  if (ABDiagnosticsEnabled())
  {
    v99 = ABLogStringForBool(LimitedAccessTable);
    _ABLog2(7, "CPSqliteMigrationContinuation _migrationMigrateDatabase(CPSqliteDatabase *, CPSqliteConnection *, int, void *)", 1227, 0, @"success=%@", v100, v101, v102, v99);
  }

  return LimitedAccessTable ^ 1u;
}

uint64_t _recreatePersonTables(uint64_t a1, int a2)
{
  v4 = _renameTable(a1, @"ABPerson", @"ABPerson_old");
  v5 = v4 & _renameTable(a1, @"ABPersonChanges", @"ABPersonChanges_old");
  if (a2 >= 22)
  {
    v5 &= _renameTable(a1, @"ABPersonLink", @"ABPersonLink_old");
  }

  v6 = a2 - 11;
  if ((a2 - 11) > 0x18)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v5 & _renameTable(a1, @"ABPersonSearchKey", @"ABPersonSearchKey_old") & 1) == 0)
  {
LABEL_5:
    ABDiagnosticsEnabled();
    _ABLog2(3, "_Bool _recreatePersonTables(CPSqliteConnection *, int)", 456, 0, @"Failed to rename tables before recreate!", v7, v8, v9, v59);
    return 0;
  }

  PersonTables = _createPersonTables(a1);
  SectionListTablesAndDropTablesWithTriggers = PersonTables & ABCDBContextCreateABPersonTriggersAndIndicesAndDropFirst(a1, 1);
  if (ABDiagnosticsEnabled())
  {
    v14 = ABLogStringForBool(SectionListTablesAndDropTablesWithTriggers);
    _ABLog2(7, "_Bool _recreatePersonTables(CPSqliteConnection *, int)", 463, 0, @"result=%@", v15, v16, v17, v14);
  }

  v18 = SectionListTablesAndDropTablesWithTriggers ^ 1;
  if (a2 != 44)
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0)
  {
    v74 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS create_index_entry;");
    v73 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS delete_index_entry;");
    v72 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS update_index_First;");
    v71 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS update_index_Last;");
    v70 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS update_index_Middle;");
    v69 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS update_index_FirstPhonetic;");
    v68 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS update_index_MiddlePhonetic;");
    v67 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS update_index_LastPhonetic;");
    v66 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS update_index_Organization;");
    v65 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS update_index_Department;");
    v64 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS update_index_Note;");
    v63 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS update_index_JobTitle;");
    v62 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS update_index_Nickname;");
    v61 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS update_index_Prefix;");
    v60 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS update_index_Suffix;");
    v19 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS update_index_DisplayName;");
    v20 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS search_index_ABMultiValueEntry_insert;");
    v21 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS search_index_ABMultiValueEntry_update;");
    v22 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS search_index_ABMultiValue_insert;");
    v23 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS search_index_ABMultiValue_update;");
    v24 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS search_index_ABMultiValue_delete;");
    SectionListTablesAndDropTablesWithTriggers = 0;
    if (!v74 || !v73 || !v72 || !v71 || !v70 || !v69 || !v68 || !v67 || !v66 || !v65 || !v64 || !v63 || !v62 || !v61 || !v60 || !v19 || !v20 || !v21 || !v22 || !v23 || !v24)
    {
      goto LABEL_76;
    }

LABEL_36:
    SectionListTablesAndDropTablesWithTriggers = ABCDBContextCreateSectionListTablesAndDropTablesWithTriggers(a1, 1);
    if (ABDiagnosticsEnabled())
    {
      v25 = ABLogStringForBool(SectionListTablesAndDropTablesWithTriggers);
      _ABLog2(7, "_Bool _recreatePersonTables(CPSqliteConnection *, int)", 470, 0, @"result=%@", v26, v27, v28, v25);
    }

    if (!SectionListTablesAndDropTablesWithTriggers)
    {
      goto LABEL_76;
    }

    SectionListTablesAndDropTablesWithTriggers = ABCDBContextCreateSectionListTriggersAndIndicesAndDropFirst(a1, 1);
    if (ABDiagnosticsEnabled())
    {
      v29 = ABLogStringForBool(SectionListTablesAndDropTablesWithTriggers);
      _ABLog2(7, "_Bool _recreatePersonTables(CPSqliteConnection *, int)", 473, 0, @"result=%@", v30, v31, v32, v29);
    }

    if (SectionListTablesAndDropTablesWithTriggers)
    {
      if (a2 > 59)
      {
        v33 = @"INSERT INTO ABPersonLink (ROWID, PreferredImagePersonID, PreferredNamePersonID, guid) SELECT ROWID, PreferredImagePersonID, PreferredNamePersonID, ab_repair_guid(guid) FROM ABPersonLink_old;";
LABEL_50:
        SectionListTablesAndDropTablesWithTriggers = ABCDBContextPerformSQLResultDone(a1, v33);
        goto LABEL_51;
      }

      if (a2 > 56)
      {
        v33 = @"INSERT INTO ABPersonLink (ROWID, PreferredImagePersonID, PreferredNamePersonID, guid) SELECT ROWID, -1, -1, ab_repair_guid(guid) FROM ABPersonLink_old;";
        goto LABEL_50;
      }

      if ((a2 - 22) < 4)
      {
        v33 = @"INSERT INTO ABPersonLink (ROWID, PreferredImagePersonID, PreferredNamePersonID) SELECT ROWID, NULL, NULL FROM ABPersonLink_old;";
        goto LABEL_50;
      }

      if (a2 >= 26)
      {
        v33 = @"INSERT INTO ABPersonLink (ROWID, PreferredImagePersonID, PreferredNamePersonID) SELECT ROWID, PreferredImagePersonID, PreferredNamePersonID FROM ABPersonLink_old;";
        goto LABEL_50;
      }

      SectionListTablesAndDropTablesWithTriggers = 1;
    }

LABEL_51:
    if (ABDiagnosticsEnabled())
    {
      v34 = ABLogStringForBool(SectionListTablesAndDropTablesWithTriggers);
      _ABLog2(7, "_Bool _recreatePersonTables(CPSqliteConnection *, int)", 494, 0, @"result=%@", v35, v36, v37, v34);
    }

    if (!SectionListTablesAndDropTablesWithTriggers)
    {
      goto LABEL_76;
    }

    if (a2 > 96)
    {
      v38 = @"INSERT INTO ABPerson (ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, Birthday, JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink, ImageURI, guid, PhonemeData, AlternateBirthday, MapsData, FirstPronunciation, MiddlePronunciation, LastPronunciation, OrganizationPhonetic, OrganizationPronunciation, PreviousFamilyName, PreferredLikenessSource, PreferredPersonaIdentifier, PreferredChannel, DowntimeWhitelist, ImageType, ImageHash, MemojiMetadata, Wallpaper, DisplayFlags, WatchWallpaperImageData, WallpaperMetadata, ImageBackgroundColorsData, SensitiveContentConfiguration, WallpaperURI, ImageSyncFailedTime, WallpaperSyncFailedTime) SELECT ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, ab_normalize_date(Birthday), JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink, ImageURI, ab_repair_guid(guid), PhonemeData, AlternateBirthday, MapsData , FirstPronunciation, MiddlePronunciation, LastPronunciation, OrganizationPhonetic, OrganizationPronunciation, PreviousFamilyName, PreferredLikenessSource, PreferredPersonaIdentifier, PreferredChannel, DowntimeWhitelist, ImageType, ImageHash, MemojiMetadata, Wallpaper, DisplayFlags, WatchWallpaperImageData, WallpaperMetadata, ImageBackgroundColorsData, SensitiveContentConfiguration, WallpaperURI, ImageSyncFailedTime, WallpaperSyncFailedTime FROM ABPerson_old;";
LABEL_73:
      SectionListTablesAndDropTablesWithTriggers = ABCDBContextPerformSQLResultDone(a1, v38);
LABEL_74:
      v39 = @"INSERT INTO ABPersonChanges (record, type, sequence_number, Image, ExternalIdentifier, StoreID, PersonLink, guid, Changes, LinkToPersonUUID, PersonLinkUUID)SELECT record, type, sequence_number, Image, ExternalIdentifier, StoreID, PersonLink, guid, Changes, LinkToPersonUUID, PersonLinkUUID FROM ABPersonChanges_old;";
LABEL_75:
      SectionListTablesAndDropTablesWithTriggers &= ABCDBContextPerformSQLResultDone(a1, v39);
      goto LABEL_76;
    }

    if (a2 > 93)
    {
      v38 = @"INSERT INTO ABPerson (ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, Birthday, JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink, ImageURI, guid, PhonemeData, AlternateBirthday, MapsData, FirstPronunciation, MiddlePronunciation, LastPronunciation, OrganizationPhonetic, OrganizationPronunciation, PreviousFamilyName, PreferredLikenessSource, PreferredPersonaIdentifier, PreferredChannel, DowntimeWhitelist, ImageType, ImageHash, MemojiMetadata, Wallpaper, DisplayFlags, WatchWallpaperImageData, WallpaperMetadata, ImageBackgroundColorsData, SensitiveContentConfiguration, WallpaperURI) SELECT ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, ab_normalize_date(Birthday), JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink, ImageURI, ab_repair_guid(guid), PhonemeData, AlternateBirthday, MapsData , FirstPronunciation, MiddlePronunciation, LastPronunciation, OrganizationPhonetic, OrganizationPronunciation, PreviousFamilyName, PreferredLikenessSource, PreferredPersonaIdentifier, PreferredChannel, DowntimeWhitelist, ImageType, ImageHash, MemojiMetadata, Wallpaper, DisplayFlags, WatchWallpaperImageData, WallpaperMetadata, ImageBackgroundColorsData, SensitiveContentConfiguration, WallpaperURI FROM ABPerson_old;";
      goto LABEL_73;
    }

    if (a2 == 93)
    {
      v38 = @"INSERT INTO ABPerson (ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, Birthday, JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink, ImageURI, guid, PhonemeData, AlternateBirthday, MapsData, FirstPronunciation, MiddlePronunciation, LastPronunciation, OrganizationPhonetic, OrganizationPronunciation, PreviousFamilyName, PreferredLikenessSource, PreferredPersonaIdentifier, PreferredChannel, DowntimeWhitelist, ImageType, ImageHash, MemojiMetadata, Wallpaper, DisplayFlags, WatchWallpaperImageData, WallpaperMetadata, ImageBackgroundColorsData, SensitiveContentConfiguration) SELECT ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, ab_normalize_date(Birthday), JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink, ImageURI, ab_repair_guid(guid), PhonemeData, AlternateBirthday, MapsData , FirstPronunciation, MiddlePronunciation, LastPronunciation, OrganizationPhonetic, OrganizationPronunciation, PreviousFamilyName, PreferredLikenessSource, PreferredPersonaIdentifier, PreferredChannel, DowntimeWhitelist, ImageType, ImageHash, MemojiMetadata, Wallpaper, DisplayFlags, WatchWallpaperImageData, WallpaperMetadata, ImageBackgroundColorsData, SensitiveContentConfiguration FROM ABPerson_old;";
      goto LABEL_73;
    }

    if (a2 > 90)
    {
      v38 = @"INSERT INTO ABPerson (ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, Birthday, JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink, ImageURI, guid, PhonemeData, AlternateBirthday, MapsData, FirstPronunciation, MiddlePronunciation, LastPronunciation, OrganizationPhonetic, OrganizationPronunciation, PreviousFamilyName, PreferredLikenessSource, PreferredPersonaIdentifier, PreferredChannel, DowntimeWhitelist, ImageType, ImageHash, MemojiMetadata, Wallpaper, DisplayFlags, WatchWallpaperImageData, WallpaperMetadata, ImageBackgroundColorsData) SELECT ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, ab_normalize_date(Birthday), JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink, ImageURI, ab_repair_guid(guid), PhonemeData, AlternateBirthday, MapsData , FirstPronunciation, MiddlePronunciation, LastPronunciation, OrganizationPhonetic, OrganizationPronunciation, PreviousFamilyName, PreferredLikenessSource, PreferredPersonaIdentifier, PreferredChannel, DowntimeWhitelist, ImageType, ImageHash, MemojiMetadata, Wallpaper, DisplayFlags, WatchWallpaperImageData, WallpaperMetadata, ImageBackgroundColorsData FROM ABPerson_old;";
      goto LABEL_73;
    }

    if (a2 == 90)
    {
      v38 = @"INSERT INTO ABPerson (ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, Birthday, JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink, ImageURI, guid, PhonemeData, AlternateBirthday, MapsData, FirstPronunciation, MiddlePronunciation, LastPronunciation, OrganizationPhonetic, OrganizationPronunciation, PreviousFamilyName, PreferredLikenessSource, PreferredPersonaIdentifier, PreferredChannel, DowntimeWhitelist, ImageType, ImageHash, MemojiMetadata, Wallpaper, DisplayFlags, WatchWallpaperImageData, WallpaperMetadata) SELECT ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, ab_normalize_date(Birthday), JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink, ImageURI, ab_repair_guid(guid), PhonemeData, AlternateBirthday, MapsData , FirstPronunciation, MiddlePronunciation, LastPronunciation, OrganizationPhonetic, OrganizationPronunciation, PreviousFamilyName, PreferredLikenessSource, PreferredPersonaIdentifier, PreferredChannel, DowntimeWhitelist, ImageType, ImageHash, MemojiMetadata, Wallpaper, DisplayFlags, WatchWallpaperImageData, WallpaperMetadata FROM ABPerson_old;";
      goto LABEL_73;
    }

    if (a2 > 88)
    {
      v38 = @"INSERT INTO ABPerson (ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, Birthday, JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink, ImageURI, guid, PhonemeData, AlternateBirthday, MapsData, FirstPronunciation, MiddlePronunciation, LastPronunciation, OrganizationPhonetic, OrganizationPronunciation, PreviousFamilyName, PreferredLikenessSource, PreferredPersonaIdentifier, PreferredChannel, DowntimeWhitelist, ImageType, ImageHash, MemojiMetadata, Wallpaper, DisplayFlags, WatchWallpaperImageData) SELECT ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, ab_normalize_date(Birthday), JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink, ImageURI, ab_repair_guid(guid), PhonemeData, AlternateBirthday, MapsData , FirstPronunciation, MiddlePronunciation, LastPronunciation, OrganizationPhonetic, OrganizationPronunciation, PreviousFamilyName, PreferredLikenessSource, PreferredPersonaIdentifier, PreferredChannel, DowntimeWhitelist, ImageType, ImageHash, MemojiMetadata, Wallpaper, DisplayFlags, WatchWallpaperImageData FROM ABPerson_old;";
      goto LABEL_73;
    }

    if (a2 == 88)
    {
      v38 = @"INSERT INTO ABPerson (ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, Birthday, JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink, ImageURI, guid, PhonemeData, AlternateBirthday, MapsData, FirstPronunciation, MiddlePronunciation, LastPronunciation, OrganizationPhonetic, OrganizationPronunciation, PreviousFamilyName, PreferredLikenessSource, PreferredPersonaIdentifier, PreferredChannel, DowntimeWhitelist, ImageType, ImageHash, MemojiMetadata, Wallpaper, DisplayFlags) SELECT ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, ab_normalize_date(Birthday), JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink, ImageURI, ab_repair_guid(guid), PhonemeData, AlternateBirthday, MapsData , FirstPronunciation, MiddlePronunciation, LastPronunciation, OrganizationPhonetic, OrganizationPronunciation, PreviousFamilyName, PreferredLikenessSource, PreferredPersonaIdentifier, PreferredChannel, DowntimeWhitelist, ImageType, ImageHash, MemojiMetadata, Wallpaper, DisplayFlags FROM ABPerson_old;";
      goto LABEL_73;
    }

    if (a2 > 86)
    {
      v38 = @"INSERT INTO ABPerson (ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, Birthday, JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink, ImageURI, guid, PhonemeData, AlternateBirthday, MapsData, FirstPronunciation, MiddlePronunciation, LastPronunciation, OrganizationPhonetic, OrganizationPronunciation, PreviousFamilyName, PreferredLikenessSource, PreferredPersonaIdentifier, PreferredChannel, DowntimeWhitelist, ImageType, ImageHash, MemojiMetadata, Wallpaper) SELECT ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, ab_normalize_date(Birthday), JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink, ImageURI, ab_repair_guid(guid), PhonemeData, AlternateBirthday, MapsData , FirstPronunciation, MiddlePronunciation, LastPronunciation, OrganizationPhonetic, OrganizationPronunciation, PreviousFamilyName, PreferredLikenessSource, PreferredPersonaIdentifier, PreferredChannel, DowntimeWhitelist, ImageType, ImageHash, MemojiMetadata, Wallpaper FROM ABPerson_old;";
      goto LABEL_73;
    }

    if (a2 > 80)
    {
      v38 = @"INSERT INTO ABPerson (ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, Birthday, JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink, ImageURI, guid, PhonemeData, AlternateBirthday, MapsData, FirstPronunciation, MiddlePronunciation, LastPronunciation, OrganizationPhonetic, OrganizationPronunciation, PreviousFamilyName, PreferredLikenessSource, PreferredPersonaIdentifier, PreferredChannel, DowntimeWhitelist, ImageType, ImageHash, MemojiMetadata) SELECT ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, ab_normalize_date(Birthday), JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink, ImageURI, ab_repair_guid(guid), PhonemeData, AlternateBirthday, MapsData , FirstPronunciation, MiddlePronunciation, LastPronunciation, OrganizationPhonetic, OrganizationPronunciation, PreviousFamilyName, PreferredLikenessSource, PreferredPersonaIdentifier, PreferredChannel, DowntimeWhitelist, ImageType, ImageHash, MemojiMetadata FROM ABPerson_old;";
      goto LABEL_73;
    }

    if (a2 > 73)
    {
      SectionListTablesAndDropTablesWithTriggers = ABCDBContextPerformSQLResultDone(a1, @"INSERT INTO ABPerson (ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, Birthday, JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink, ImageURI, guid, PhonemeData, AlternateBirthday, MapsData, FirstPronunciation, MiddlePronunciation, LastPronunciation, OrganizationPhonetic, OrganizationPronunciation, PreviousFamilyName, PreferredLikenessSource, PreferredPersonaIdentifier, PreferredChannel, DowntimeWhitelist, ImageType, ImageHash) SELECT ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, ab_normalize_date(Birthday), JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink, ImageURI, ab_repair_guid(guid), PhonemeData, AlternateBirthday, MapsData , FirstPronunciation, MiddlePronunciation, LastPronunciation, OrganizationPhonetic, OrganizationPronunciation, PreviousFamilyName, PreferredLikenessSource, PreferredPersonaIdentifier, PreferredChannel, DowntimeWhitelist, ImageType, ImageHash FROM ABPerson_old;");
      if (a2 > 0x4F)
      {
        goto LABEL_74;
      }

LABEL_88:
      v39 = @"INSERT INTO ABPersonChanges (record, type, sequence_number, Image, ExternalIdentifier, StoreID, PersonLink, guid)SELECT record, type, sequence_number, Image, ExternalIdentifier, StoreID, PersonLink, guid FROM ABPersonChanges_old;";
      goto LABEL_75;
    }

    if (a2 == 73)
    {
      v54 = @"INSERT INTO ABPerson (ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, Birthday, JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink, ImageURI, guid, PhonemeData, AlternateBirthday, MapsData, FirstPronunciation, MiddlePronunciation, LastPronunciation, OrganizationPhonetic, OrganizationPronunciation, PreviousFamilyName, PreferredLikenessSource, PreferredPersonaIdentifier, PreferredChannel, DowntimeWhitelist) SELECT ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, ab_normalize_date(Birthday), JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink, ImageURI, ab_repair_guid(guid), PhonemeData, AlternateBirthday, MapsData , FirstPronunciation, MiddlePronunciation, LastPronunciation, OrganizationPhonetic, OrganizationPronunciation, PreviousFamilyName, PreferredLikenessSource, PreferredPersonaIdentifier, PreferredChannel, DowntimeWhitelist FROM ABPerson_old;";
LABEL_87:
      SectionListTablesAndDropTablesWithTriggers = ABCDBContextPerformSQLResultDone(a1, v54);
      goto LABEL_88;
    }

    if (a2 > 70)
    {
      v54 = @"INSERT INTO ABPerson (ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, Birthday, JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink, ImageURI, guid, PhonemeData, AlternateBirthday, MapsData, FirstPronunciation, MiddlePronunciation, LastPronunciation, OrganizationPhonetic, OrganizationPronunciation, PreviousFamilyName, PreferredLikenessSource, PreferredPersonaIdentifier, PreferredChannel) SELECT ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, ab_normalize_date(Birthday), JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink, ImageURI, ab_repair_guid(guid), PhonemeData, AlternateBirthday, MapsData , FirstPronunciation, MiddlePronunciation, LastPronunciation, OrganizationPhonetic, OrganizationPronunciation, PreviousFamilyName, PreferredLikenessSource, PreferredPersonaIdentifier, PreferredChannel FROM ABPerson_old;";
      goto LABEL_87;
    }

    if (a2 > 64)
    {
      SectionListTablesAndDropTablesWithTriggers = ABCDBContextPerformSQLResultDone(a1, @"INSERT INTO ABPerson (ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, Birthday, JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink, ImageURI, guid, PhonemeData, AlternateBirthday, MapsData, FirstPronunciation, MiddlePronunciation, LastPronunciation, OrganizationPhonetic, OrganizationPronunciation, PreviousFamilyName, PreferredLikenessSource, PreferredPersonaIdentifier) SELECT ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, ab_normalize_date(Birthday), JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink, ImageURI, ab_repair_guid(guid), PhonemeData, AlternateBirthday, MapsData , FirstPronunciation, MiddlePronunciation, LastPronunciation, OrganizationPhonetic, OrganizationPronunciation, PreviousFamilyName, PreferredLikenessSource, PreferredPersonaIdentifier FROM ABPerson_old;");
      if (a2 > 0x42)
      {
        goto LABEL_88;
      }

LABEL_94:
      v39 = @"INSERT INTO ABPersonChanges (record, type, sequence_number, Image, ExternalIdentifier, StoreID, PersonLink, guid) SELECT record, type, sequence_number, Image, ExternalIdentifier, StoreID, -1, guid FROM ABPersonChanges_old;";
      goto LABEL_75;
    }

    if (a2 <= 58)
    {
      if (a2 <= 55)
      {
        if (a2 <= 53)
        {
          if (a2 <= 49)
          {
            if (a2 <= 22)
            {
              if (a2 <= 10)
              {
                SectionListTablesAndDropTablesWithTriggers = ABCDBContextPerformSQLResultDone(a1, @"INSERT INTO ABPerson (ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, Birthday, JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier) SELECT ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, ab_normalize_date(Birthday), JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier FROM ABPerson_old;");
                if (a2 < 9)
                {
                  v39 = @"INSERT INTO ABPersonChanges (record, type, sequence_number, ExternalIdentifier, StoreID) SELECT record, type, -1, ExternalIdentifier, StoreID FROM ABPersonChanges_old;";
                  goto LABEL_75;
                }

                goto LABEL_102;
              }

              if (a2 <= 19)
              {
                v57 = @"INSERT INTO ABPerson (ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, Birthday, JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex) SELECT ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, ab_normalize_date(Birthday), JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex FROM ABPerson_old;";
              }

              else
              {
                v57 = @"INSERT INTO ABPerson (ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, Birthday, JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex) SELECT ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, ab_normalize_date(Birthday), JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex FROM ABPerson_old;";
              }

              v58 = ABCDBContextPerformSQLResultDone(a1, v57);
              SectionListTablesAndDropTablesWithTriggers = v58 & ABCDBContextPerformSQLResultDone(a1, @"INSERT INTO ABPersonChanges (record, type, sequence_number, Image, ExternalIdentifier, StoreID) SELECT record, type, -1, Image, ExternalIdentifier, StoreID FROM ABPersonChanges_old;");
            }

            else
            {
              v56 = ABCDBContextPerformSQLResultDone(a1, @"INSERT INTO ABPerson (ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, Birthday, JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink) SELECT ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, ab_normalize_date(Birthday), JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink FROM ABPerson_old;");
              SectionListTablesAndDropTablesWithTriggers = v56 & ABCDBContextPerformSQLResultDone(a1, @"INSERT INTO ABPersonChanges (record, type, sequence_number, Image, ExternalIdentifier, StoreID) SELECT record, type, -1, Image, ExternalIdentifier, StoreID FROM ABPersonChanges_old;");
              if (v6 > 0x18)
              {
                goto LABEL_76;
              }
            }

            v39 = @"INSERT INTO ABPersonSearchKey (person_id, SearchKey, NameOnlySearchKey) SELECT person_id, value, NULL FROM ABPersonSearchKey_old;";
            goto LABEL_75;
          }

          v55 = @"INSERT INTO ABPerson (ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, Birthday, JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink, ImageURI, guid) SELECT ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, ab_normalize_date(Birthday), JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink, ImageURI, ab_repair_guid(guid) FROM ABPerson_old;";
        }

        else
        {
          v55 = @"INSERT INTO ABPerson (ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, Birthday, JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink, ImageURI, guid, PhonemeData, AlternateBirthday) SELECT ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, ab_normalize_date(Birthday), JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink, ImageURI, ab_repair_guid(guid), PhonemeData, AlternateBirthday FROM ABPerson_old;";
        }
      }

      else
      {
        v55 = @"INSERT INTO ABPerson (ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, Birthday, JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink, ImageURI, guid, PhonemeData, AlternateBirthday, MapsData) SELECT ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, ab_normalize_date(Birthday), JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink, ImageURI, ab_repair_guid(guid), PhonemeData, AlternateBirthday, MapsData FROM ABPerson_old;";
      }

      SectionListTablesAndDropTablesWithTriggers = ABCDBContextPerformSQLResultDone(a1, v55);
    }

    else
    {
      SectionListTablesAndDropTablesWithTriggers = ABCDBContextPerformSQLResultDone(a1, @"INSERT INTO ABPerson (ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, Birthday, JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink, ImageURI, guid, PhonemeData, AlternateBirthday, MapsData, FirstPronunciation, MiddlePronunciation, LastPronunciation, OrganizationPhonetic, OrganizationPronunciation, PreviousFamilyName) SELECT ROWID, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, Department, Note, Kind, ab_normalize_date(Birthday), JobTitle, Nickname, Prefix, Suffix, FirstSort, LastSort, CreationDate, ModificationDate, CompositeNameFallback, StoreID, ExternalIdentifier, ExternalModificationTag, ExternalUUID, ExternalRepresentation, FirstSortSection, LastSortSection, FirstSortLanguageIndex, LastSortLanguageIndex, PersonLink, ImageURI, ab_repair_guid(guid), PhonemeData, AlternateBirthday, MapsData , FirstPronunciation, MiddlePronunciation, LastPronunciation, OrganizationPhonetic, OrganizationPronunciation, PreviousFamilyName FROM ABPerson_old;");
      if (a2 > 0x3F)
      {
        goto LABEL_94;
      }
    }

LABEL_102:
    v39 = @"INSERT INTO ABPersonChanges (record, type, sequence_number, Image, ExternalIdentifier, StoreID) SELECT record, type, -1, Image, ExternalIdentifier, StoreID FROM ABPersonChanges_old;";
    goto LABEL_75;
  }

  if (SectionListTablesAndDropTablesWithTriggers)
  {
    goto LABEL_36;
  }

LABEL_76:
  v40 = SectionListTablesAndDropTablesWithTriggers & ABCDBContextCreateSearchTablesAndDropFirst(a1, 0);
  v41 = _dropTable(a1, @"ABPerson_old");
  v42 = v41 & _dropTable(a1, @"ABPersonChanges_old");
  v43 = _dropTable(a1, @"ABPersonLink_old");
  v44 = v42 & v43 & _dropTable(a1, @"ABPersonSearchKey_old");
  v45 = v44 & _dropTable(a1, @"ABPersonBasicChanges");
  if ((v45 & 1) == 0)
  {
    ABDiagnosticsEnabled();
    v46 = ABLogStringForBool(0);
    _ABLog2(3, "_Bool _recreatePersonTables(CPSqliteConnection *, int)", 602, 0, @"_recreatePersonTables dropTablesResult=%@", v47, v48, v49, v46);
  }

  v10 = v40 & v45;
  if (ABDiagnosticsEnabled())
  {
    v50 = ABLogStringForBool(v10);
    _ABLog2(7, "_Bool _recreatePersonTables(CPSqliteConnection *, int)", 607, 0, @"_recreatePersonTables result=%@", v51, v52, v53, v50);
  }

  return v10;
}

uint64_t _createABDatabaseTables(uint64_t a1, int a2, int a3, int a4)
{
  ABCSourceTables = ABCDBContextCreateABCSourceTables(a1, a3);
  v8 = ABCSourceTables & _createPersonTables(a1);
  v9 = ABCDBContextPerformSQLResultDone(a1, @"CREATE TABLE ABGroup (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, Name TEXT, ExternalIdentifier TEXT, StoreID INTEGER, ExternalModificationTag TEXT, ExternalRepresentation BLOB, ExternalUUID TEXT, guid TEXT NOT NULL DEFAULT (ab_generate_guid()), UNIQUE(guid));");
  v10 = v9 & ABCDBContextPerformSQLResultDone(a1, @"CREATE TABLE ABGroupChanges (record INTEGER, type INTEGER, sequence_number INTEGER, ExternalIdentifier TEXT, StoreID INTEGER, guid TEXT);");
  v11 = ABCDBContextPerformSQLResultDone(a1, @"CREATE TABLE ABAccount (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, AccountIdentifier TEXT, Flags INTEGER, DefaultSourceID INTEGER, guid TEXT NOT NULL DEFAULT (ab_generate_guid()), UNIQUE(guid));") & v8 & v10;
  if (a4)
  {
    LOBYTE(v11) = v11 & _createLimitedAccessTable(a1);
  }

  if (a1)
  {
    if (ABCDBContextPerformSQLResultDone(a1, @"CREATE TABLE IF NOT EXISTS ABGroupMembers (UID INTEGER PRIMARY KEY, group_id INTEGER, member_type INTEGER, member_id INTEGER, UNIQUE(group_id, member_type, member_id));"))
    {
      if (ABCDBContextCreateMultiValueTables(a1))
      {
        if (ABCDBContextCreateSectionListTablesAndDropTablesWithTriggers(a1, a2 != -1))
        {
          if (ABCDBContextCreateSearchTablesAndDropFirst(a1, a2 != -1))
          {
            ABChangeHistoryCreateTables(a1, a2 != -1);
            if (v11)
            {
              return 1;
            }
          }
        }
      }
    }

    v13 = *MEMORY[0x1E69E9848];
    v14 = sqlite3_errmsg(*(a1 + 8));
  }

  else
  {
    v13 = *MEMORY[0x1E69E9848];
    v14 = "no connection";
  }

  fprintf(v13, "error initializing AB database (_createABDatabaseTables): %s\n", v14);
  return 0;
}

uint64_t _createABDatabaseTriggersAndIndicesAndDropFirst(uint64_t a1, int a2)
{
  if (a1 && ABCDBContextCreateABPersonTriggersAndIndicesAndDropFirst(a1, a2) && ABCDBContextCreateMultiValueTriggersAndIndicesAndDropFirst(a1, a2) && ABCDBContextCreateSectionListTriggersAndIndicesAndDropFirst(a1, a2))
  {
    return 1;
  }

  _createABDatabaseTriggersAndIndicesAndDropFirst_cold_1(a1);
  return 0;
}

uint64_t ABCDBContextCreateMultiValueTables(uint64_t a1)
{
  v2 = ABCDBContextPerformSQLResultDone(a1, @"CREATE TABLE IF NOT EXISTS ABMultiValue (UID INTEGER PRIMARY KEY, record_id INTEGER, property INTEGER, identifier INTEGER, label INTEGER, value TEXT, guid TEXT NOT NULL DEFAULT (ab_generate_guid()), UNIQUE(guid));");
  v3 = v2 & ABCDBContextPerformSQLResultDone(a1, @"CREATE TABLE IF NOT EXISTS ABMultiValueLabel (value TEXT, UNIQUE(value));");
  v4 = ABCDBContextPerformSQLResultDone(a1, @"CREATE TABLE IF NOT EXISTS ABMultiValueEntry (parent_id INTEGER, key INTEGER, value TEXT, UNIQUE(parent_id, key));");
  v5 = v3 & v4 & ABCDBContextPerformSQLResultDone(a1, @"CREATE TABLE IF NOT EXISTS ABMultiValueEntryKey (value TEXT, UNIQUE(value));");
  v6 = ABCDBContextPerformSQLResultDone(a1, @"CREATE TABLE IF NOT EXISTS ABPhoneLastFour (multivalue_id INTEGER PRIMARY KEY, value TEXT);");
  v7 = v5 & v6 & ABCDBContextPerformSQLResultDone(a1, @"CREATE TABLE IF NOT EXISTS ABPersonMultiValueDeletes (record_id INTEGER, property_id INTEGER, identifier INTEGER, sequence_number INTEGER, record_uid TEXT, identifier_uid TEXT);");
  if ((v7 & 1) == 0)
  {
    fwrite("***ABCDBContextCreateMultiValueTables failed\n", 0x2DuLL, 1uLL, *MEMORY[0x1E69E9848]);
  }

  return v7;
}

uint64_t ABCDBContextCreateMultiValueTriggersAndIndicesAndDropFirst(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = ABCDBContextPerformSQLResultDone(a1, @"DROP INDEX IF EXISTS ABMultiValueRecordIDIndex;");
    v4 = v3 & ABCDBContextPerformSQLResultDone(a1, @"DROP INDEX IF EXISTS ABMultiValueLabelIndex;");
    v5 = ABCDBContextPerformSQLResultDone(a1, @"DROP INDEX IF EXISTS ABMultiValuePropertyValueIndex;");
    v6 = v4 & v5 & ABCDBContextPerformSQLResultDone(a1, @"DROP INDEX IF EXISTS ABMultiValueGUIDIndex;");
    v7 = v6 & ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS delete_phone_last_four;");
  }

  else
  {
    v7 = 1;
  }

  v8 = v7 & ABCDBContextPerformSQLResultDone(a1, @"CREATE INDEX IF NOT EXISTS ABMultiValueRecordIDIndex on ABMultiValue(record_id);");
  v9 = ABCDBContextPerformSQLResultDone(a1, @"CREATE INDEX IF NOT EXISTS ABMultiValueLabelIndex ON ABMultiValue(label);");
  v10 = v8 & v9 & ABCDBContextPerformSQLResultDone(a1, @"CREATE INDEX IF NOT EXISTS ABMultiValueGUIDIndex ON ABMultiValue(guid);");
  v11 = ABCDBContextPerformSQLResultDone(a1, @"CREATE INDEX IF NOT EXISTS ABMultiValuePropertyValueIndex ON ABMultiValue(property, value COLLATE NOCASE);");
  v12 = v11 & ABCDBContextPerformSQLResultDone(a1, @"CREATE INDEX IF NOT EXISTS ABMultiValueEntryKeyIndex ON ABMultiValueEntry(key);");
  v13 = v10 & v12 & ABCDBContextPerformSQLResultDone(a1, @"CREATE INDEX IF NOT EXISTS ABMultiValueEntryParentIndex ON ABMultiValueEntry(parent_id);");
  v14 = ABCDBContextPerformSQLResultDone(a1, @"CREATE INDEX IF NOT EXISTS ABPhoneLastFourIndex ON ABPhoneLastFour(value);");
  v15 = v13 & v14 & ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS delete_phone_last_four AFTER DELETE ON ABMultiValue\nBEGIN\nDELETE FROM ABPhoneLastFour WHERE multivalue_id = OLD.UID;\nEND;\n");
  if ((v15 & 1) == 0)
  {
    fwrite("***ABCDBContextCreateMultiValueTriggersAndIndicesAndDropFirst failed\n", 0x45uLL, 1uLL, *MEMORY[0x1E69E9848]);
  }

  return v15;
}

uint64_t _createLimitedAccessTable(uint64_t a1)
{
  v2 = ABCDBContextPerformSQLResultDone(a1, @"CREATE TABLE LimitedAccess (BundleID TEXT NOT NULL, guid TEXT NOT NULL, SequenceNumber INTEGER, IsActive INTEGER, PRIMARY KEY (BundleID, guid));");
  v3 = v2 & ABCDBContextPerformSQLResultDone(a1, @"CREATE INDEX IF NOT EXISTS ABLimitedAccessBundleIndex ON LimitedAccess(BundleID);");
  v4 = ABCDBContextPerformSQLResultDone(a1, @"CREATE INDEX IF NOT EXISTS ABLimitedAccessGUIDIndex ON LimitedAccess(guid);");
  v5 = v3 & v4 & ABCDBContextPerformSQLResultDone(a1, @"CREATE INDEX IF NOT EXISTS ABLimitedAccessSequenceNumber ON LimitedAccess(SequenceNumber);");
  return v5 & ABCDBContextPerformSQLResultDone(a1, @"CREATE INDEX IF NOT EXISTS ABLimitedAccesssActiveIndex ON LimitedAccess(IsActive);");
}

uint64_t _addLimitedAccessDeletionTriggers(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS RemoveDeletedContactsFromLimited;");
    v4 = v3 & ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS UpdateLinkedContactsInLimited;");
  }

  else
  {
    v4 = 1;
  }

  v5 = v4 & ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS RemoveDeletedContactsFromLimited AFTER DELETE ON ABPerson \nBEGIN \n    DELETE FROM LimitedAccess \n    WHERE Old.guid = guid    ; \nEND; \n");
  return v5 & ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS UpdateLinkedContactsInLimited AFTER DELETE ON ABPersonLink \nBEGIN \n    INSERT OR IGNORE INTO LimitedAccess (BundleId, guid, SequenceNumber, IsActive) \n        SELECT la.BundleId, abp.guid, la.SequenceNumber, la.IsActive FROM LimitedAccess la, ABPerson abp \n        WHERE la.guid = OLD.guid AND abp.PersonLink = OLD.ROWID; \n    DELETE FROM LimitedAccess WHERE guid = OLD.guid; \nEND; \n");
}

void _configureABDatabase(uint64_t a1, uint64_t a2)
{
  if (_createABDatabaseTables(a2, -1, 1, 1))
  {
    _createABDatabaseTriggersAndIndicesAndDropFirst(a2, 0);
  }

  ABCDBContextUpdateSortDataVersionsWithConnection();
}

uint64_t _databaseCorrupted(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  ABDiagnosticsEnabled();
  _ABLog2(3, "_Bool _databaseCorrupted(CPSqliteDatabase *)", 310, 0, @"database may be corrupted [%p]", v2, v3, v4, a1);
  ppDb = 0;
  if (a1)
  {
    v5 = *(a1 + 8);
    if (v5 && (v6 = *(v5 + 8)) != 0)
    {
      v7 = 0;
      ppDb = *(v5 + 8);
    }

    else
    {
      if (!*a1)
      {
        return 0;
      }

      MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(*a1);
      v9 = malloc_type_calloc(MaximumSizeOfFileSystemRepresentation + 1, 1uLL, 0x100004077774924uLL);
      CFStringGetFileSystemRepresentation(*a1, v9, MaximumSizeOfFileSystemRepresentation);
      sqlite3_open_v2(v9, &ppDb, 1, 0);
      free(v9);
      v6 = ppDb;
      if (!ppDb)
      {
        return 0;
      }

      v7 = 1;
    }

    v31 = 0;
    sqlite3_file_control(v6, 0, 7, &v31);
    if (v31)
    {
      v10 = v31[6];
      memset(buffer, 0, 512);
      v11 = getpid();
      if (proc_pidfdinfo(v11, v10, 2, buffer, 1200) == 1200)
      {
        ABDiagnosticsEnabled();
        v15 = "new";
        if (v7)
        {
          v15 = "current";
        }

        _ABLog2(3, "void _logDatabaseHeader(CPSqliteDatabase *)", 293, 0, @"Corrupt database %s connection fd %d is opened to %s", v12, v13, v14, v15);
      }

      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      Mutable = CFDataCreateMutable(0, 0);
      CFDataSetLength(v28[3], 0x2000);
      v16 = v31;
      v17 = *(*v31 + 16);
      MutableBytePtr = CFDataGetMutableBytePtr(v28[3]);
      Length = CFDataGetLength(v28[3]);
      v17(v16, MutableBytePtr, Length, 0);
      ABDiagnosticsEnabled();
      _ABLog2(3, "void _logDatabaseHeader(CPSqliteDatabase *)", 300, 0, @"Corrupt database header:", v20, v21, v22, v25);
      v23 = v28[3];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = ___logDatabaseHeader_block_invoke;
      v26[3] = &unk_1E7CCC410;
      v26[4] = &v27;
      ABLogAppendDataToLogFile(3, v23, v26);
      _Block_object_dispose(&v27, 8);
    }

    if (v7)
    {
      sqlite3_close(ppDb);
    }
  }

  return 0;
}

void sub_1B7F15538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _databaseDeleted_0(uint64_t *a1, int a2)
{
  ABDiagnosticsEnabled();
  _ABLog2(4, "void _databaseDeleted(CPSqliteDatabase *, CPSqliteDatabaseDeleteReason)", 316, 0, @"database was deleted (%@) with reason %d", v4, v5, v6, *a1);
  if (!ABCImageStoreCreateWithAddressBookPath(*a1))
  {
    goto LABEL_6;
  }

  CPRecordStoreGetDatabase();
  v7 = MEMORY[0x1B8CB62E0]();
  ABDiagnosticsEnabled();
  v11 = @"not deleted";
  if (v7)
  {
    v11 = @"deleted";
  }

  _ABLog2(4, "void _databaseDeleted(CPSqliteDatabase *, CPSqliteDatabaseDeleteReason)", 325, 0, @"image database was %@ (%@) ", v8, v9, v10, v11);
  if (v7)
  {
    v12 = 2;
  }

  else
  {
LABEL_6:
    v12 = 0;
  }

  result = ABDatabaseIntegrityResolutionRecorder(v12);
  if (!a2)
  {
    v14 = ABAddressBookCreateWithOptions(0, 0);
    v15 = ABCImageStoreCreateWithAddressBook(v14);
    if (ABCImageStoreGetCountOfImagesWithFormat(v15, 0xFFFFFFFFLL) >= 1)
    {
      ABDiagnosticsEnabled();
      _ABLog2(4, "void _databaseDeleted(CPSqliteDatabase *, CPSqliteDatabaseDeleteReason)", 339, 0, @"image database still has orphans", v16, v17, v18, v19);
    }

    return ABLogDisplayInternalAlert(@"The main database was corrupt. Please attach sysdiagnose, AB logs and /tmp/AddressBook*");
  }

  return result;
}

__CFString *ABCDBContextCreateStringForIndexingForStringProperty(uint64_t a1, int a2, int a3)
{
  if (kABPersonPhoneProperty != a3)
  {
    v16 = CPSqliteConnectionStatementForSQL();
    sqlite3_bind_int(*(v16 + 8), 1, a2);
    sqlite3_bind_int(*(v16 + 8), 2, a3);
    Mutable = CPSqliteStatementCopyStringResult();
LABEL_17:
    CPSqliteStatementReset();
    return Mutable;
  }

  active = CPPhoneNumberCopyActiveCountryCode();
  if (active)
  {
    v6 = active;
    v7 = CPSqliteConnectionStatementForSQL();
    sqlite3_bind_int(*(v7 + 8), 1, a2);
    sqlite3_bind_int(*(v7 + 8), 2, a3);
    v8 = CPSqliteStatementCopyStringResult();
    if (v8)
    {
      v9 = v8;
      Mutable = 0;
      v11 = *MEMORY[0x1E695E480];
      do
      {
        if (!Mutable)
        {
          Mutable = CFStringCreateMutable(v11, 0);
        }

        CFStringAppend(Mutable, v9);
        v12 = _PNCopyIndexStringsForAddressBookSearch();
        if (v12)
        {
          v13 = v12;
          v14 = CFStringCreateByCombiningStrings(0, v12, @" ");
          if (v14)
          {
            v15 = v14;
            CFStringAppend(Mutable, @" ");
            CFStringAppend(Mutable, v15);
            CFStringAppend(Mutable, @" ");
            CFRelease(v15);
          }

          CFRelease(v13);
        }

        CFRelease(v9);
        v9 = CPSqliteStatementCopyStringResult();
      }

      while (v9);
    }

    else
    {
      Mutable = 0;
    }

    CFRelease(v6);
    goto LABEL_17;
  }

  return 0;
}

uint64_t ABCDBContextCreateStringForIndexingForDictionaryProperty(uint64_t a1, int a2, int a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (kABPersonAddressProperty == a3)
  {
    v5 = &v22;
  }

  else if (kABPersonSocialProfileProperty == a3)
  {
    v5 = &v21;
  }

  else
  {
    if (kABPersonInstantMessageProperty != a3)
    {
      return 0;
    }

    v5 = &v20;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (!Mutable)
  {
    return 0;
  }

  v7 = Mutable;
  CFStringAppend(Mutable, @"SELECT group_concat(mve.value, ' ') FROM ABMultiValue mv, ABMultiValueEntry mve, ABMultiValueEntryKey mvek WHERE mv.record_id = ? AND mve.parent_id = mv.UID AND mv.property = ? AND mvek.rowid = mve.key AND(");
  if (*v5)
  {
    v8 = 0;
    do
    {
      if (v8)
      {
        CFStringAppend(v7, @"OR ");
      }

      CFStringAppend(v7, @"mvek.value = ? ");
    }

    while (*&v5[8 * v8++ + 8]);
  }

  CFStringAppend(v7, @";"));
  v10 = CPSqliteConnectionStatementForSQL();
  if (v10)
  {
    v11 = v10;
    sqlite3_bind_int(*(v10 + 8), 1, a2);
    sqlite3_bind_int(*(v11 + 8), 2, a3);
    v12 = *v5;
    if (*v5)
    {
      v13 = (v5 + 8);
      v14 = 3;
      do
      {
        v15 = *(v11 + 8);
        v16 = _ABCCreateUTF8StringFromCFString(v12);
        sqlite3_bind_text(v15, v14, v16, -1, MEMORY[0x1E69E9B38]);
        v17 = *v13++;
        v12 = v17;
        ++v14;
      }

      while (v17);
    }

    v18 = CPSqliteStatementCopyStringResult();
    CPSqliteStatementReset();
  }

  else
  {
    v18 = 0;
  }

  CFRelease(v7);
  return v18;
}

__CFString *ABCDBContextCopyStringForIndexingForProperty(uint64_t a1, int a2, ABPropertyID property)
{
  TypeOfProperty = ABPersonGetTypeOfProperty(property);
  if (TypeOfProperty == 261)
  {

    return ABCDBContextCreateStringForIndexingForDictionaryProperty(a1, a2, property);
  }

  else if (TypeOfProperty == 257)
  {

    return ABCDBContextCreateStringForIndexingForStringProperty(a1, a2, property);
  }

  else
  {
    return 0;
  }
}

void ABCDContextCreateSearchIndexEntryForPerson(uint64_t a1, const void *a2)
{
  v4 = _ABCCreateUTF8StringFromCFString(@"INSERT OR REPLACE INTO ABPersonFullTextSearch(rowid) VALUES( ?)");
  if (v4)
  {
    v5 = v4;
    ppStmt = 0;
    if (!sqlite3_prepare(*(a1 + 8), v4, -1, &ppStmt, 0))
    {
      v6 = ppStmt;
      RecordID = ABRecordGetRecordID(a2);
      sqlite3_bind_int(v6, 1, RecordID);
      sqlite3_step(ppStmt);
      sqlite3_finalize(ppStmt);
    }

    free(v5);
  }

  v8 = _ABCCreateUTF8StringFromCFString(@"INSERT OR REPLACE INTO ABPersonSmartDialerFullTextSearch(rowid) VALUES( ?)");
  if (v8)
  {
    v9 = v8;
    ppStmt = 0;
    if (!sqlite3_prepare(*(a1 + 8), v8, -1, &ppStmt, 0))
    {
      v10 = ppStmt;
      v11 = ABRecordGetRecordID(a2);
      sqlite3_bind_int(v10, 1, v11);
      sqlite3_step(ppStmt);
      sqlite3_finalize(ppStmt);
    }

    free(v9);
  }
}

void ABCDContextUpdateSearchIndexForPerson(uint64_t a1, const void *a2)
{
  ArrayOfAllFTSPropertyIDs = _ABPersonGetArrayOfAllFTSPropertyIDs();

  ABCDContextUpdateSearchIndexForPersonAndProperties(a1, a2, ArrayOfAllFTSPropertyIDs);
}

void ABCDContextUpdateSearchIndexForPersonAndProperties(uint64_t a1, const void *a2, const __CFArray *a3)
{
  ArrayOfAllFTSPropertyIDs = _ABPersonGetArrayOfAllFTSPropertyIDs();
  theArray = CFArrayCreateMutable(0, 0, 0);
  v5 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v61 = CFArrayCreateMutable(0, 0, 0);
  v62 = CFArrayCreateMutable(0, 0, v5);
  Count = CFArrayGetCount(a3);
  if (Count >= 1)
  {
    v7 = Count;
    v8 = 0;
    v9 = 0;
    value = *MEMORY[0x1E695E738];
    while (1)
    {
      v10 = CFArrayGetCount(ArrayOfAllFTSPropertyIDs);
      ValueAtIndex = CFArrayGetValueAtIndex(a3, v9);
      v69.location = 0;
      v69.length = v10;
      if (CFArrayContainsValue(ArrayOfAllFTSPropertyIDs, v69, ValueAtIndex))
      {
        v12 = v8;
        v13 = CFArrayGetValueAtIndex(a3, v9);
        v14 = v13;
        v19 = kABPersonFirstNameProperty == v13 || kABPersonLastNameProperty == v13 || kABPersonMiddleNameProperty == v13 || kABPersonPrefixProperty == v13 || kABPersonSuffixProperty == v13;
        CFArrayAppendValue(theArray, v13);
        StringForIndexingForProperty = ABPersonCreateStringForIndexingForProperty(a2, v14);
        v21 = StringForIndexingForProperty;
        if (StringForIndexingForProperty && CFStringGetLength(StringForIndexingForProperty) >= 1)
        {
          v22 = Mutable;
          v23 = v21;
        }

        else
        {
          v22 = Mutable;
          v23 = value;
        }

        CFArrayAppendValue(v22, v23);
        v8 = v19 | v12;
        v24 = ABCSmartDialerPersonNameForProperty(v14);
        if (v24)
        {
          v25 = v24;
          if (CFStringGetLength(v24))
          {
            if (!CFEqual(v25, @"UNKNOWN_PROPERTY"))
            {
              CFArrayAppendValue(v61, v25);
              if (v21 && CFStringGetLength(v21) >= 1)
              {
                CFArrayAppendValue(v62, v21);
              }

              else
              {
                CFArrayAppendValue(v62, value);
                if (!v21)
                {
                  goto LABEL_28;
                }
              }

LABEL_27:
              CFRelease(v21);
              goto LABEL_28;
            }
          }
        }

        if (v21)
        {
          goto LABEL_27;
        }
      }

LABEL_28:
      if (v7 == ++v9)
      {
        goto LABEL_36;
      }
    }
  }

  LOBYTE(v8) = 0;
LABEL_36:
  RecordID = ABRecordGetRecordID(a2);
  v27 = v61;
  if (theArray)
  {
    if (CFArrayGetCount(theArray))
    {
      v28 = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
      if (v28)
      {
        v29 = v28;
        CFStringAppend(v28, @"UPDATE ABPersonFullTextSearch SET ");
        if (CFArrayGetCount(theArray) >= 1)
        {
          v30 = 0;
          do
          {
            v31 = CFArrayGetValueAtIndex(theArray, v30);
            v32 = ABCPersonNameForProperty(v31);
            if (v30)
            {
              CFStringAppend(v29, @", ");
            }

            CFStringAppend(v29, v32);
            CFStringAppend(v29, @" = ? ");
            ++v30;
          }

          while (v30 < CFArrayGetCount(theArray));
        }

        if (v8)
        {
          CFStringAppend(v29, @", SupplementalCompositeNameTerms = ? ");
        }

        CFStringAppend(v29, @"WHERE rowid = ?");
        v33 = CPSqliteConnectionStatementForSQL();
        if (!v33)
        {
          goto LABEL_61;
        }

        v34 = v33;
        if (CFArrayGetCount(Mutable) < 1)
        {
          v40 = 1;
          if ((v8 & 1) == 0)
          {
LABEL_60:
            sqlite3_bind_int(*(v34 + 8), v40, RecordID);
            CPSqliteStatementPerform();
            CPSqliteStatementReset();
LABEL_61:
            CFRelease(v29);
            goto LABEL_62;
          }
        }

        else
        {
          v64 = v8;
          v35 = 0;
          v36 = *MEMORY[0x1E695E738];
          do
          {
            v37 = CFArrayGetValueAtIndex(Mutable, v35);
            v38 = *(v34 + 8);
            if (v37 == v36)
            {
              sqlite3_bind_null(*(v34 + 8), v35 + 1);
            }

            else
            {
              v39 = _ABCCreateUTF8StringFromCFString(v37);
              sqlite3_bind_text(v38, v35 + 1, v39, -1, MEMORY[0x1E69E9B38]);
            }

            ++v35;
          }

          while (v35 < CFArrayGetCount(Mutable));
          v40 = v35 + 1;
          if ((v64 & 1) == 0)
          {
            goto LABEL_60;
          }
        }

        SupplementalStringForIndexingForCompositeName = ABPersonCreateSupplementalStringForIndexingForCompositeName(a2);
        v42 = *(v34 + 8);
        if (SupplementalStringForIndexingForCompositeName)
        {
          v43 = SupplementalStringForIndexingForCompositeName;
          v44 = _ABCCreateUTF8StringFromCFString(SupplementalStringForIndexingForCompositeName);
          sqlite3_bind_text(v42, v40, v44, -1, MEMORY[0x1E69E9B38]);
          CFRelease(v43);
        }

        else
        {
          sqlite3_bind_null(*(v34 + 8), v40);
        }

        ++v40;
        goto LABEL_60;
      }
    }
  }

LABEL_62:
  if (v61)
  {
    if (CFArrayGetCount(v61))
    {
      v45 = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
      if (v45)
      {
        v46 = v45;
        CFStringAppend(v45, @"UPDATE ABPersonSmartDialerFullTextSearch SET ");
        if (CFArrayGetCount(v61) >= 1)
        {
          v47 = 0;
          do
          {
            v48 = CFArrayGetValueAtIndex(v61, v47);
            if (v47)
            {
              CFStringAppend(v46, @", ");
            }

            CFStringAppend(v46, v48);
            CFStringAppend(v46, @" = ? ");
            ++v47;
          }

          while (v47 < CFArrayGetCount(v61));
        }

        CFStringAppend(v46, @"WHERE rowid = ?");
        v49 = CPSqliteConnectionStatementForSQL();
        if (v49)
        {
          v50 = v49;
          if (CFArrayGetCount(v62) < 1)
          {
            v60 = 1;
          }

          else
          {
            v51 = 0;
            v52 = *MEMORY[0x1E695E738];
            v53 = v62;
            do
            {
              v54 = CFArrayGetValueAtIndex(v53, v51);
              if (v54 == v52)
              {
                sqlite3_bind_null(*(v50 + 8), v51 + 1);
              }

              else
              {
                v55 = v54;
                if (CFArrayGetValueAtIndex(v27, v51) == @"PhoneLastFourDigits")
                {
                  SmartDialerLastFourDigitsStringForIndexing = ABPersonCreateSmartDialerLastFourDigitsStringForIndexing(a2);
                }

                else
                {
                  SmartDialerLastFourDigitsStringForIndexing = ABPersonCreateSmartDialerStringForIndexingFromCFString(v55);
                }

                v57 = SmartDialerLastFourDigitsStringForIndexing;
                v58 = *(v50 + 8);
                if (SmartDialerLastFourDigitsStringForIndexing)
                {
                  v59 = _ABCCreateUTF8StringFromCFString(SmartDialerLastFourDigitsStringForIndexing);
                  sqlite3_bind_text(v58, v51 + 1, v59, -1, MEMORY[0x1E69E9B38]);
                  CFRelease(v57);
                }

                else
                {
                  sqlite3_bind_null(*(v50 + 8), v51 + 1);
                }

                v27 = v61;
              }

              ++v51;
              v53 = v62;
            }

            while (v51 < CFArrayGetCount(v62));
            v60 = v51 + 1;
          }

          sqlite3_bind_int(*(v50 + 8), v60, RecordID);
          CPSqliteStatementPerform();
          CPSqliteStatementReset();
        }

        CFRelease(v46);
      }
    }

    CFRelease(v27);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void ABCDBContextDeleteSearchIndexEntryForRecord(uint64_t a1, ABRecordRef record)
{
  RecordID = ABRecordGetRecordID(record);
  _DeleteEntryFromTableForRecordId(a1, RecordID, @"ABPersonFullTextSearch");

  _DeleteEntryFromTableForRecordId(a1, RecordID, @"ABPersonSmartDialerFullTextSearch");
}

void _DeleteEntryFromTableForRecordId(uint64_t a1, int a2, uint64_t a3)
{
  v4 = CFStringCreateWithFormat(0, 0, @"DELETE FROM %@ WHERE rowid = ?", a3);
  v5 = CPSqliteConnectionStatementForSQL();
  if (v5)
  {
    sqlite3_bind_int(*(v5 + 8), 1, a2);
    CPSqliteStatementPerform();
    CPSqliteStatementReset();
  }

  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t ABCDBContextCreateSearchTablesAndDropFirst(uint64_t a1, int a2)
{
  if (!ABCFTSIsEnabled())
  {
    return 1;
  }

  if (a2)
  {
    v4 = _dropTable(a1, @"ABPersonFullTextSearch");
    v5 = v4 & _dropTable(a1, @"ABPersonSmartDialerFullTextSearch");
  }

  else
  {
    v5 = 1;
  }

  v7 = ABCCopyUserLanguage();
  v8 = ABAddressBookCopyCollatorType(0, 1);
  v9 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v11 = Mutable;
  if (v8)
  {
    CFStringAppendFormat(Mutable, 0, @"collator=%@", v8);
  }

  v12 = CFStringCreateWithFormat(v9, 0, @"CREATE VIRTUAL TABLE IF NOT EXISTS ABPersonFullTextSearch USING fts4(tokenize=ab_cf_tokenizer language=%@ %@, First, Last, Middle, FirstPhonetic, MiddlePhonetic, LastPhonetic, Organization, OrganizationPhonetic, Department, Note, Birthday, JobTitle, Nickname, Prefix, Suffix, DisplayName, Phone, Email, Address, SocialProfile, URL, RelatedNames, IM, Date, SupplementalCompositeNameTerms);", v7, v11);
  v13 = v5 & ABCDBContextPerformSQLResultDone(a1, v12);
  v14 = CFStringCreateWithFormat(v9, 0, @"CREATE VIRTUAL TABLE IF NOT EXISTS ABPersonSmartDialerFullTextSearch USING fts4(tokenize=ab_cf_tokenizer language=en %@, FirstEncoding, MiddleEncoding, LastEncoding, OrganizationEncoding, NicknameEncoding, PhoneLastFourDigits);", v11);
  v6 = v13 & ABCDBContextPerformSQLResultDone(a1, v14);
  CFRelease(v14);
  CFRelease(v12);
  CFRelease(v7);
  CFRelease(v11);
  if (v8)
  {
    CFRelease(v8);
  }

  return v6;
}

uint64_t ABCDBContextCollectMultiValueLabel(uint64_t a1, int a2, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *(a1 + 24) = cf;
  return 1;
}

uint64_t ABCSQLiteTypeForType(int a1)
{
  if ((a1 & 0xFFFFFEFF) == 7)
  {
    return 4;
  }

  else
  {
    return 2 * ((a1 & 0xFFFFFEFF) != 2);
  }
}

uint64_t ABCDBContextCollectMultiValueValue(uint64_t a1, uint64_t a2, CFTypeRef cf)
{
  if (a2 == 1 && cf)
  {
    CFRetain(cf);
  }

  *(a1 + 32) = cf;
  return 1;
}

uint64_t ABCDBContextCollectMultiValueUUID(uint64_t a1, int a2, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *(a1 + 40) = cf;
  return 1;
}

uint64_t ABCDBContextFetchMultiValuePropertyIntoRecord(uint64_t a1, void *a2, int a3, int a4)
{
  values = a2;
  v7 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
  MultiValuePropertyIntoRecords = ABCDBContextFetchMultiValuePropertyIntoRecords(a1, v7, a3, a4);
  if (v7)
  {
    CFRelease(v7);
  }

  return MultiValuePropertyIntoRecords;
}

uint64_t ABCDBContextFetchMultiValuePropertyIntoRecords(uint64_t a1, CFArrayRef theArray, int a3, int a4)
{
  if (!a1 || CFArrayGetCount(theArray) < 1)
  {
    goto LABEL_9;
  }

  v8 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(theArray, v8);
    if (CPRecordGetID() != -1)
    {
      break;
    }

    if (++v8 >= CFArrayGetCount(theArray))
    {
      goto LABEL_9;
    }
  }

  if (!a4)
  {
    fprintf(*MEMORY[0x1E69E9848], "%s: invalid property type for %d\n", "ABCDBContextFetchMultiValuePropertyIntoRecords", a3);
LABEL_9:
    Identifier = 1;
    return Identifier & 1;
  }

  theDict = ABCDBContextFetchMultiValueEntries(theArray, a1, a3);
  if (!theDict)
  {
    goto LABEL_9;
  }

  Count = CFArrayGetCount(theArray);
  Mutable = CFSetCreateMutable(0, Count, 0);
  if (CFArrayGetCount(theArray) >= 1)
  {
    v13 = 0;
    allocator = *MEMORY[0x1E695E480];
    Identifier = 1;
    v45 = Mutable;
    while (1)
    {
      CFArrayGetValueAtIndex(theArray, v13);
      LODWORD(value) = CPRecordGetID();
      if (!CFSetContainsValue(Mutable, value))
      {
        CFSetAddValue(Mutable, value);
        if (value != -1)
        {
          v14 = CFNumberCreate(allocator, kCFNumberSInt32Type, &value);
          v15 = CFDictionaryGetValue(theDict, v14);
          if (v14)
          {
            CFRelease(v14);
          }

          v16 = ABCMultiValueCreateMutable(a4);
          if (v16)
          {
            v24 = v16;
            if (v15)
            {
              v49 = CFArrayGetCount(v15);
              if (((v49 > 0) & Identifier) == 1)
              {
                v25 = 1;
                v48 = v15;
                while (1)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v15, v25 - 1);
                  v27 = ValueAtIndex;
                  v28 = *(v24 + 16);
                  if (v28 == 260)
                  {
                    v36 = _ABCCreateDateFromCFString(ValueAtIndex[4]);
                    v37 = v27[3];
                    v38 = ABCMultiValueGetCount(v24);
                    Identifier = ABCMultiValueInsertAndCreateIdentifier(v24, v36, v37, v38, v27[5], v27 + 4, 0);
                    if (v36)
                    {
                      v39 = ABCCallBacksForType(*(v24 + 16) & 0xFFFFFEFF);
                      if (v39)
                      {
                        v40 = v39[1];
                        v15 = v48;
                        if (v40)
                        {
                          (v40)(v36);
                        }

                        goto LABEL_38;
                      }
                    }
                  }

                  else if (v28 == 261)
                  {
                    v29 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                    v30 = *(v27 + 2);
                    v31 = CPSqliteConnectionStatementForSQL();
                    if (v31)
                    {
                      v32 = *(v31 + 8);
                      if (v32)
                      {
                        sqlite3_bind_int(v32, 1, v30);
                        v33 = CPSqliteStatementSendResults();
                        if (v33 != 101)
                        {
                          syslog(3, "Error fetching multivalue sub entries: %d", v33);
                        }

                        CPSqliteStatementReset();
                        CPSqliteDatabaseReleaseSqliteStatement();
                      }
                    }

                    v34 = v27[3];
                    v35 = ABCMultiValueGetCount(v24);
                    Identifier = ABCMultiValueInsertAndCreateIdentifier(v24, v29, v34, v35, v27[5], v27 + 4, 0);
                    CFRelease(v29);
                  }

                  else
                  {
                    v42 = ValueAtIndex[3];
                    v41 = ValueAtIndex[4];
                    v43 = ABCMultiValueGetCount(v24);
                    Identifier = ABCMultiValueInsertAndCreateIdentifier(v24, v41, v42, v43, v27[5], v27 + 4, 0);
                  }

                  v15 = v48;
LABEL_38:
                  if (v25 < v49)
                  {
                    ++v25;
                    if (Identifier)
                    {
                      continue;
                    }
                  }

                  break;
                }
              }
            }

            ABMultiValueSetImmutable(v24, v17, v18, v19, v20, v21, v22, v23, v44);
            ABCRecordSetContents();
            CFRelease(v24);
          }

          Mutable = v45;
          if (v15)
          {
            v51.length = CFArrayGetCount(v15);
            v51.location = 0;
            CFArrayApplyFunction(v15, v51, freeEntriesStruct, 0);
          }
        }
      }

      if (++v13 >= CFArrayGetCount(theArray))
      {
        goto LABEL_44;
      }
    }
  }

  Identifier = 1;
LABEL_44:
  CFRelease(theDict);
  CFRelease(Mutable);
  return Identifier & 1;
}

void freeEntriesStruct(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      CFRelease(v2);
    }

    if (a1[4])
    {
      v3 = ABRecordTypeOfProperty();
      v4 = ABCCallBacksForType(v3 & 0xFFFFFEFF);
      if (v4)
      {
        v5 = v4[1];
        if (v5)
        {
          (v5)(a1[4]);
        }
      }
    }

    v6 = a1[5];
    if (v6)
    {
      CFRelease(v6);
    }

    free(a1);
  }
}

uint64_t ABCDBContextCopyRecordsForUUIDsOfType(uint64_t a1, CFArrayRef theArray, __int128 *a3)
{
  if (!theArray || CFArrayGetCount(theArray) < 1)
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppend(Mutable, @"guid IN (");
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v8 = 0;
    do
    {
      if (v8)
      {
        CFStringAppend(Mutable, @", ");
      }

      CFStringAppend(Mutable, @"?");
      ++v8;
    }

    while (Count != v8);
  }

  CFStringAppend(Mutable, @""));
  if (ABCPersonClass != a3)
  {
    v9 = 0;
    if (Mutable)
    {
      goto LABEL_10;
    }

LABEL_22:
    v11 = 0;
    if (!v9)
    {
      return v11;
    }

LABEL_23:
    CFRelease(v9);
    return v11;
  }

  CFStringAppend(Mutable, CFSTR(" OR PersonLink in (select abpl.rowid from ABPersonLink abpl where abpl.guid in ("));
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      if (i)
      {
        CFStringAppend(Mutable, @", ");
      }

      CFStringAppend(Mutable, @"?");
    }
  }

  CFStringAppend(Mutable, @")"));
  v13 = CFArrayGetCount(theArray);
  v9 = CFArrayCreateMutable(0, 2 * v13, MEMORY[0x1E695E9C0]);
  v15.length = CFArrayGetCount(theArray);
  v15.location = 0;
  CFArrayAppendArray(v9, theArray, v15);
  v16.length = CFArrayGetCount(theArray);
  v16.location = 0;
  CFArrayAppendArray(v9, theArray, v16);
  if (!Mutable)
  {
    goto LABEL_22;
  }

LABEL_10:
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = theArray;
  }

  v11 = ABCCopyArrayOfAllInstancesOfClassInSourceMatchingPredicate(a1, a3, 0, Mutable, v10);
  CFRelease(Mutable);
  if (v9)
  {
    goto LABEL_23;
  }

  return v11;
}

uint64_t ABCCopyArrayOfAllInstancesOfClassInSourceMatchingPredicate(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, const void *a5)
{
  v14 = a5;
  values = a4;
  if (a4 && a5)
  {
    v8 = *MEMORY[0x1E695E480];
    v9 = MEMORY[0x1E695E9C0];
    v10 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
    v11 = CFArrayCreate(v8, &v14, 1, v9);
    v12 = ABCCopyArrayOfAllInstancesOfClassInSourceMatchingPredicates(a1, a2, a3, v10, v11);
    if (v10)
    {
      CFRelease(v10);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    return v12;
  }

  else
  {

    return ABCCopyArrayOfAllInstancesOfClassInSourceMatchingPredicates(a1, a2, a3, 0, 0);
  }
}

CFStringRef ABCCopySQLiteStringValueForValueOfType(uint64_t a1, int a2)
{
  v3 = a2 & 0xFFFFFEFF;
  if ((a2 & 0xFFFFFEFF) > 7)
  {
    return a1;
  }

  if (((1 << a2) & 0xEE) != 0)
  {
    v4 = ABCCallBacksForType(v3);
    if (v4)
    {
      v5 = *v4;
      if (*v4)
      {

        return (v5)(a1);
      }
    }

    return a1;
  }

  if (v3 != 4)
  {
    return a1;
  }

  return _ABCCreateCFStringFromDate(a1);
}

CFDateRef ABCCopyValueOfTypeForSQLiteValue(const __CFString *a1, int a2)
{
  v3 = a2 & 0xFFFFFEFF;
  if ((a2 & 0xFFFFFEFF) > 7)
  {
    return a1;
  }

  if (((1 << a2) & 0xEE) != 0)
  {
    v4 = ABCCallBacksForType(v3);
    if (v4)
    {
      v5 = *v4;
      if (*v4)
      {

        return (v5)(a1);
      }
    }

    return a1;
  }

  if (v3 != 4)
  {
    return a1;
  }

  return _ABCCreateDateFromCFString(a1);
}

BOOL _runPhoneQueryWithContextForNumber(uint64_t a1)
{
  CPRecordStoreGetDatabase();
  v2 = CPSqliteDatabaseStatementForReading();
  v3 = recordStoreContext(a1);
  if (v3)
  {
    v3 = *v3;
  }

  ABRegulatoryLogReadContactsData(v3);
  if (!v2)
  {
    return 0;
  }

  if (!*(v2 + 8))
  {
    return 0;
  }

  FourDigitsOfLocalNumber = _PNCopyLastFourDigitsOfLocalNumber();
  if (!FourDigitsOfLocalNumber)
  {
    return 0;
  }

  v5 = FourDigitsOfLocalNumber;
  Length = CFStringGetLength(FourDigitsOfLocalNumber);
  v7 = Length > 0;
  if (Length >= 1)
  {
    v8 = *(v2 + 8);
    v9 = _ABCCreateUTF8StringFromCFString(v5);
    sqlite3_bind_text(v8, 1, v9, -1, MEMORY[0x1E69E9B38]);
    CPSqliteStatementProcessPhoneQuery();
    CPSqliteStatementReset();
  }

  CFRelease(v5);
  return v7;
}

BOOL phoneQueryRowHandler(uint64_t a1, int a2, const char *a3, char a4, uint64_t a5)
{
  if (a2)
  {
    v7 = *(a5 + 16) == 0;
    v8 = 3;
    goto LABEL_3;
  }

  v21 = *(a5 + 48);
  if (!a3 || !v21)
  {
    v7 = 0;
    v8 = 1;
    if (!v21)
    {
      goto LABEL_3;
    }

LABEL_23:
    if (a4)
    {
      return v7;
    }

    goto LABEL_3;
  }

  v22 = strlen(*(a5 + 48));
  v23 = strncmp(v21, a3, v22);
  v7 = 0;
  if (v23)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (v23)
  {
    goto LABEL_23;
  }

LABEL_3:
  v9 = *(a5 + 40);
  if (v8 >= v9)
  {
    if (v8 > v9)
    {
      v10 = *(a5 + 16);
      if (v10)
      {
        CFArrayRemoveAllValues(*v10);
      }

      v11 = *(a5 + 24);
      if (v11)
      {
        CFArrayRemoveAllValues(*v11);
      }

      v12 = *(a5 + 32);
      if (v12)
      {
        CFArrayRemoveAllValues(*v12);
      }

      *(a5 + 40) = v8;
    }

    v13 = *(a5 + 16);
    if (v13)
    {
      v14 = *v13;
      v15 = sqlite3_column_int(*(a1 + 8), 1);
      CFArrayAppendValue(v14, v15);
      v16 = *(a5 + 24);
      if (v16)
      {
        v17 = *v16;
        v18 = sqlite3_column_int(*(a1 + 8), 2);
        CFArrayAppendValue(v17, v18);
      }
    }

    else
    {
      *a5 = sqlite3_column_int(*(a1 + 8), 1);
      *(a5 + 4) = sqlite3_column_int(*(a1 + 8), 2);
    }

    if (*(a5 + 32) || *(a5 + 8))
    {
      v24 = sqlite3_column_text(*(a1 + 8), 3);
      if (v24)
      {
        v25 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v24, 0x8000100u);
        v26 = *(a5 + 8);
        if (v26)
        {
          if (*v26)
          {
            CFRelease(*v26);
            v26 = *(a5 + 8);
          }

          *v26 = v25;
        }

        else
        {
          CFArrayAppendValue(**(a5 + 32), v25);
          CFRelease(v25);
        }
      }

      else
      {
        v27 = *(a5 + 32);
        if (v27 && *(a5 + 16))
        {
          CFArrayAppendValue(*v27, *MEMORY[0x1E695E738]);
        }
      }
    }
  }

  return v7;
}

CFMutableArrayRef _CopyPersonUIDsForPhoneNumber(uint64_t a1, uint64_t a2, uint64_t a3, CFMutableArrayRef *a4, CFMutableArrayRef *a5)
{
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  if (a4)
  {
    *a4 = CFArrayCreateMutable(v8, 0, 0);
  }

  if (a5)
  {
    *a5 = CFArrayCreateMutable(v8, 0, MEMORY[0x1E695E9C0]);
  }

  _runPhoneQueryWithContextForNumber(a1);
  return Mutable;
}

uint64_t _PersonUIDForPhoneNumber(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  _runPhoneQueryWithContextForNumber(a1);
  if (a4)
  {
    *a4 = -1;
  }

  return 0xFFFFFFFFLL;
}

uint64_t ABPhoneNumberGetLastFour(const char *a1)
{
  v2 = strlen(a1);
  if (v2 <= 4)
  {
    return a1;
  }

  else
  {
    return &a1[v2 - 4];
  }
}

void _FindUIDsMatchingPhoneNumbers(uint64_t a1, _DWORD *a2, _DWORD *a3, void *a4, int a5)
{
  LODWORD(v5) = a5;
  v10 = CPPhoneNumberCopyHomeCountryCode();
  v11 = malloc_type_malloc(8 * v5, 0x10040436913F5uLL);
  v12 = malloc_type_malloc(v5 << 6, 0x105004024FC7E8CuLL);
  v40 = v12;
  if (v5 <= 0)
  {
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, @"SELECT value, record_id, identifier FROM ABMultiValue WHERE ");
  }

  else
  {
    v13 = v12;
    v34 = a1;
    v35 = v5;
    v14 = v5;
    v38 = *(MEMORY[0x1E69986A8] + 16);
    v39 = *MEMORY[0x1E69986A8];
    v36 = *(MEMORY[0x1E69986A8] + 48);
    v37 = *(MEMORY[0x1E69986A8] + 32);
    v5 = v5;
    v15 = v11;
    do
    {
      *v13 = v39;
      v13[1] = v38;
      v13[2] = v37;
      v13[3] = v36;
      if (*a4)
      {
        *v15 = CPPhoneNumberCopyNormalized();
        decomposePhoneNumber();
      }

      else
      {
        *v15 = 0;
      }

      *a2++ = -1;
      *a3++ = -1;
      ++v15;
      ++a4;
      v13 += 4;
      --v5;
    }

    while (v5);
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, @"SELECT value, record_id, identifier FROM ABMultiValue WHERE ");
    v17 = 0;
    v18 = 0;
    do
    {
      while (1)
      {
        v19 = v11[v17];
        if (!v19)
        {
          break;
        }

        v20 = strlen(v11[v17]);
        v21 = (v19 + v20 - 4);
        if (v20 <= 4)
        {
          v21 = v11[v17];
        }

        if (!*v21)
        {
          break;
        }

        if (v18)
        {
          v22 = @"OR ";
        }

        else
        {
          v22 = CFSTR("UID IN (SELECT multivalue_id FROM ABPhoneLastFour WHERE ");
        }

        CFStringAppend(MutableCopy, v22);
        CFStringAppend(MutableCopy, @"value = ? ");
        v18 = 1;
        if (v14 - 1 == v17++)
        {
          goto LABEL_21;
        }
      }

      ++v17;
    }

    while (v14 != v17);
    if ((v18 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_21:
    CFStringAppend(MutableCopy, @";"));
LABEL_22:
    a1 = v34;
    LODWORD(v5) = v35;
  }

  CPRecordStoreGetDatabase();
  v24 = CPSqliteDatabaseStatementForReading();
  v25 = recordStoreContext(a1);
  if (v25)
  {
    v25 = *v25;
  }

  ABRegulatoryLogReadContactsData(v25);
  CFRelease(MutableCopy);
  if (v24 && *(v24 + 8))
  {
    if (v5 >= 1)
    {
      v26 = v5;
      v27 = 1;
      v28 = v11;
      do
      {
        if (*v28)
        {
          v29 = strlen(*v28);
          v30 = v29 <= 4 ? *v28 : &(*v28)[v29 - 4];
          if (*v30)
          {
            sqlite3_bind_text(*(v24 + 8), v27++, v30, -1, 0);
          }
        }

        ++v28;
        --v26;
      }

      while (v26);
    }

    CPSqliteStatementSendResults();
    CPSqliteStatementReset();
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v5 >= 1)
  {
    v31 = v5;
    v32 = v11;
    do
    {
      v33 = *v32++;
      free(v33);
      --v31;
    }

    while (v31);
  }

  free(v11);
  free(v40);
}

uint64_t ABDBContextBatchPhoneCallback(uint64_t a1, uint64_t a2)
{
  sqlite3_column_text(*(a1 + 8), 0);
  v4 = CPPhoneNumberCopyNormalized();
  if (v4)
  {
    v5 = v4;
    decomposePhoneNumber();
    v6 = *(a2 + 32);
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = 0;
      while (*(*a2 + 4 * v8) != -1 || !decomposedPhoneNumbersEqual())
      {
        ++v8;
        v7 += 64;
        if (v8 >= v6)
        {
          goto LABEL_9;
        }
      }

      *(*a2 + 4 * v8) = sqlite3_column_int(*(a1 + 8), 1);
      *(*(a2 + 8) + 4 * v8) = sqlite3_column_int(*(a1 + 8), 2);
    }

LABEL_9:
    free(v5);
  }

  return 0;
}

uint64_t _iteratePeopleWithCallbacksRowHandler(uint64_t a1, void *a2)
{
  sqlite3_column_int64(*(a1 + 8), 0);
  RecordIDForRowid = CPRecordStoreGetRecordIDForRowid();
  if (!(*a2[1])(RecordIDForRowid, *a2))
  {
    return 1;
  }

  CPSqliteStatementApplyValuesFromRecord();
  return (*(a2[1] + 48))(*a2) ^ 1;
}

uint64_t ABRecordStoreColumnTypeForPropertyType(int a1)
{
  v1 = a1 - 1;
  if ((a1 - 1) >= 7 || ((0x5Fu >> v1) & 1) == 0)
  {
    abort();
  }

  return dword_1B7F76FC0[v1];
}

uint64_t (*_setterForType(int a1))()
{
  if ((a1 - 1) < 5)
  {
    return off_1F2FE1B48[a1 - 1];
  }

  syslog(3, "ignoring column with type %d", a1);
  return 0;
}

void appendTokenizations(void *a1, const __CFArray *MutableCopy, uint64_t a3, __CFString *a4, __CFArray **a5, void *a6, int a7, int a8)
{
  values = a1;
  v14 = *MEMORY[0x1E695E480];
  theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  Count = CFArrayGetCount(MutableCopy);
  if (Count < 1)
  {
    goto LABEL_7;
  }

  v16 = Count;
  v17 = 1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, v17 - 1);
    v44.length = CFArrayGetCount(ValueAtIndex);
    v44.location = 0;
    v19 = CFArrayContainsValue(ValueAtIndex, v44, a1);
    if (v17 >= v16)
    {
      break;
    }

    ++v17;
  }

  while (!v19);
  if (v19)
  {
    v20 = 0;
  }

  else
  {
LABEL_7:
    MutableCopy = CFArrayCreateMutableCopy(v14, 0, MutableCopy);
    v20 = 1;
    v21 = CFArrayCreate(v14, &values, 1, MEMORY[0x1E695E9C0]);
    CFArrayAppendValue(MutableCopy, v21);
    CFRelease(v21);
  }

  v39 = CFArrayGetCount(MutableCopy);
  if (v39 >= 1)
  {
    v34 = v20;
    v37 = 0;
    v22 = 0;
    v23 = 0;
    if (a8)
    {
      v24 = @"abs.NameOnlySearchKey";
    }

    else
    {
      v24 = @"abs.SearchKey";
    }

    if (a7)
    {
      v25 = @", 1)");
    }

    else
    {
      v25 = @", 0)");
    }

    v38 = MutableCopy;
    do
    {
      v26 = CFArrayGetValueAtIndex(MutableCopy, v22);
      if (v23 >= 1)
      {
        CFStringAppend(a4, @" OR");
      }

      v27 = CFArrayGetCount(v26);
      if (v27 < 1)
      {
        v23 = 0;
        MutableCopy = v38;
      }

      else
      {
        v28 = v27;
        v40 = v22;
        v29 = malloc_type_malloc(8 * v27, 0x10040436913F5uLL);
        v30 = 0;
        v23 = 0;
        do
        {
          v31 = CFArrayGetValueAtIndex(v26, v30);
          if (CFStringGetLength(v31) >= 1)
          {
            v43 = 0;
            v32 = ABCreateSortKey(v31, a3, 0, &v43);
            if (v43 < 1)
            {
              free(v32);
            }

            else
            {
              v29[v23++] = v32;
            }
          }

          ++v30;
        }

        while (v28 != v30);
        if (v23 < 1)
        {
          MutableCopy = v38;
          if (v29)
          {
            free(v29);
          }

          v22 = v40;
        }

        else
        {
          CFArrayAppendValue(theArray, v23);
          CFArrayAppendValue(theArray, v29);
          CFStringAppend(a4, @" (");
          MutableCopy = v38;
          if ((v37 & 1) == 0)
          {
            CFStringAppend(a4, @" (");
          }

          v33 = 0;
          v22 = v40;
          do
          {
            ++*a6;
            if (v33)
            {
              CFStringAppend(a4, @" AND");
            }

            CFStringAppend(a4, CFSTR(" (1 == has_sort_key_prefix("));
            CFStringAppend(a4, v24);
            CFStringAppend(a4, @", ?");
            CFStringAppend(a4, v25);
            ++v33;
          }

          while (v23 != v33);
          CFStringAppend(a4, @""));
          v37 = 1;
        }
      }

      ++v22;
    }

    while (v22 != v39);
    v20 = v34;
    if (v37)
    {
      CFStringAppend(a4, @""));
    }
  }

  if (v20)
  {
    CFRelease(MutableCopy);
  }

  *a5 = theArray;
}

uint64_t bindTokenizations(uint64_t a1, CFArrayRef theArray, int *a3)
{
  result = CFArrayGetCount(theArray);
  if (result >= 2)
  {
    v7 = 0;
    v14 = result / 2;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, 2 * v7);
      result = CFArrayGetValueAtIndex(theArray, (2 * (v7 & 0x3FFFFFFFFFFFFFFFLL)) | 1);
      v9 = *a3;
      if (ValueAtIndex >= 1)
      {
        v10 = result;
        v11 = ValueAtIndex & 0x7FFFFFFF;
        do
        {
          v12 = *v10++;
          v13 = strlen(v12);
          result = sqlite3_bind_blob(*(a1 + 8), v9++, v12, v13, 0);
          --v11;
        }

        while (v11);
        v9 = *a3;
      }

      *a3 = v9 + ValueAtIndex;
      ++v7;
    }

    while (v7 != v14);
  }

  return result;
}

void releaseTokenizationSortKeys(const __CFArray *a1)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 2)
    {
      v3 = 0;
      v4 = Count / 2;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, 2 * v3);
        v6 = CFArrayGetValueAtIndex(a1, (2 * (v3 & 0x3FFFFFFFFFFFFFFFLL)) | 1);
        if (v6)
        {
          v7 = v6;
          if (ValueAtIndex >= 1)
          {
            v8 = v6;
            do
            {
              v9 = *v8++;
              free(v9);
              --ValueAtIndex;
            }

            while (ValueAtIndex);
          }

          free(v7);
        }

        ++v3;
      }

      while (v3 != v4);
    }

    CFRelease(a1);
  }
}

void ABCIteratePeopleMatchingStringWithCallbacks(uint64_t a1, const __CFString *a2, const __CFString *a3, const void *a4, const void *a5, int a6, int a7, uint64_t a8, uint64_t a9, char a10)
{
  keys[8] = *MEMORY[0x1E69E9840];
  v22[0] = a9;
  v22[1] = a8;
  v22[2] = ABCPersonClass;
  Columns = 0;
  v24 = 0;
  v25 = a1;
  if (*(a8 + 56) && *(a8 + 64) >= 1 && *(CPRecordStoreGetDatabase() + 8))
  {
    CPSqliteConnectionEnableProgressHandlerCallback();
  }

  if (a10)
  {
    v17 = 0;
    theString = 0;
  }

  else
  {
    keys[0] = kABPersonFirstNameProperty;
    keys[1] = kABPersonLastNameProperty;
    keys[2] = kABPersonMiddleNameProperty;
    keys[3] = kABPersonOrganizationProperty;
    keys[4] = kABPersonKindProperty;
    keys[5] = kABPersonPrefixProperty;
    keys[6] = kABPersonSuffixProperty;
    keys[7] = kABPersonCompositeNameFallbackProperty;
    *values = xmmword_1B7F76F80;
    v27 = unk_1B7F76F90;
    v28 = xmmword_1B7F76FA0;
    v29 = unk_1B7F76FB0;
    v17 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 8, 0, 0);
    theString = @"SELECT ROWID, First, Last, Middle, Organization, Kind, Prefix, Suffix, CompositeNameFallback ";
  }

  Columns = CPRecordStoreCreateReadColumns();
  Prefix = ABCIteratePeopleMatchingStringWithCustomQueryPrefix(a1, a2, a3, a4, a5, a6, a7, _iteratePeopleWithCallbacksRowHandler, v22, theString, v17);
  if (Prefix)
  {
    v20 = Prefix;
    if (CFArrayGetCount(Prefix))
    {
      ABCIteratePeopleMatchingStringWithCallbacks_cold_1();
    }

    CFRelease(v20);
  }

  if ((a10 & 1) == 0)
  {
    CFRelease(theString);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (*(a8 + 56) && *(CPRecordStoreGetDatabase() + 8))
  {
    CPSqliteConnectionDisableProgressHandlerCallback();
  }

  free(Columns);
}

uint64_t _iteratePeopleProgressHandlerCallback(uint64_t a1, void *a2)
{
  if (a2 && (v2 = a2[1]) != 0 && (v3 = *(v2 + 56)) != 0)
  {
    return v3(*a2);
  }

  else
  {
    return 0;
  }
}

uint64_t ABCDBContextCopyPeopleAndIdentifiersMatchingName(uint64_t a1, __CFArray **a2)
{
  v4 = *a2;
  v5 = sqlite3_column_count(*(a1 + 8));
  v6 = v5 - 1;
  if (a2[1])
  {
    v7 = v5;
    v8 = sqlite3_column_int(*(a1 + 8), v6);
    CFArrayAppendValue(a2[2], v8);
    v9 = sqlite3_column_text(*(a1 + 8), v7 - 2);
    if (v9)
    {
      v10 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v9, 0x8000100u);
    }

    else
    {
      v10 = &stru_1F2FE2718;
    }

    CFArrayAppendValue(a2[1], v10);
    CFRelease(v10);
    v6 = v7 - 3;
  }

  v11 = sqlite3_column_int(*(a1 + 8), v6);
  CFArrayAppendValue(v4, v11);
  return 2;
}

void ABCDBContextCopyArrayOfPhoneNumbersLabelAndPeopleInRange(uint64_t a1, int a2, int a3, void *a4, void *a5, void *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  ColumnListWithAliasAndExtraColumns = CPRecordStoreCreateColumnListWithAliasAndExtraColumns();
  CFStringAppend(ColumnListWithAliasAndExtraColumns, @", abv.value, abl.value from ABPerson abp JOIN ABMultiValue abv ON abp.ROWID = abv.record_id LEFT OUTER JOIN ABMultiValueLabel abl ON abv.label = abl.ROWID WHERE abv.property = ? LIMIT ? OFFSET ?;");
  CFDictionaryGetCount(0);
  CPRecordStoreGetDatabase();
  v13 = CPSqliteDatabaseStatementForReading();
  v14 = recordStoreContext(a1);
  if (v14)
  {
    v14 = *v14;
  }

  ABRegulatoryLogReadContactsData(v14);
  CFRelease(ColumnListWithAliasAndExtraColumns);
  if (v13 && (v15 = *(v13 + 8)) != 0)
  {
    sqlite3_bind_int(v15, 1, kABPersonPhoneProperty);
    sqlite3_bind_int(*(v13 + 8), 2, a3);
    sqlite3_bind_int(*(v13 + 8), 3, a2);
    v16 = CPRecordStoreProcessStatementWithPropertyIndices();
    CPSqliteStatementReset();
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    if (CFArrayGetCount(v16) < 1)
    {
      CFRelease(v16);
    }

    else
    {
      *a6 = v16;
      *a4 = 0;
      *a5 = 0;
    }
  }
}

uint64_t phoneNumbersAndLabelRowHandler(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 8))
  {
    *(a2 + 8) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  if (!*(a2 + 16))
  {
    *(a2 + 16) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v4 = sqlite3_column_text(*(a1 + 8), *a2);
  v5 = CFStringCreateWithCString(0, v4, 0x8000100u);
  CFArrayAppendValue(*(a2 + 8), v5);
  CFRelease(v5);
  v6 = sqlite3_column_text(*(a1 + 8), *a2 + 1);
  if (v6)
  {
    v7 = CFStringCreateWithCString(0, v6, 0x8000100u);
    CFArrayAppendValue(*(a2 + 16), v7);
    CFRelease(v7);
  }

  else
  {
    CFArrayAppendValue(*(a2 + 16), *MEMORY[0x1E695E738]);
  }

  return 2;
}

uint64_t ABCDBContextFindMultivalueSetter(uint64_t a1, _DWORD *a2, int a3)
{
  if (a2)
  {
    *a2 = a3;
  }

  return 1;
}

CFMutableArrayRef ABCDBContextCopyAllLabelsForProperty(uint64_t a1, uint64_t a2)
{
  CPRecordStoreGetDatabase();
  v4 = MEMORY[0x1E695E480];
  if (a2 == -1)
  {
    v5 = @"SELECT value FROM ABMultiValueLabel;";
  }

  else
  {
    v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"select mvl.value from ABMultiValueLabel mvl where ROWID in (select distinct label from ABMultiValue WHERE property = %i);", a2);
  }

  v6 = CPSqliteDatabaseStatementForReading();
  v7 = recordStoreContext(a1);
  if (v7)
  {
    v7 = *v7;
  }

  ABRegulatoryLogReadContactsData(v7);
  if (a2 != -1)
  {
    CFRelease(v5);
  }

  if (!v6)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(*v4, 0, MEMORY[0x1E695E9C0]);
  CPSqliteStatementSendResults();
  CPSqliteStatementReset();
  CPSqliteDatabaseReleaseSqliteStatement();
  return Mutable;
}

uint64_t addStringToArray(uint64_t a1, __CFArray *a2)
{
  v3 = sqlite3_column_text(*(a1 + 8), 0);
  v4 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v3, 0x8000100u);
  CFArrayAppendValue(a2, v4);
  CFRelease(v4);
  return 0;
}

uint64_t _clearCachedMultivalues()
{
  v0 = ABCPersonClass;
  if (*(ABCPersonClass + 18) >= 1)
  {
    v1 = 0;
    v2 = 32;
    do
    {
      if (*(*(v0 + 10) + v2 + 1))
      {
        CPRecordUnloadProperty();
        v0 = ABCPersonClass;
      }

      ++v1;
      v2 += 40;
    }

    while (v1 < *(v0 + 18));
  }

  return 0;
}

void ABCDBContextLogChangeForPerson(uint64_t a1, ABRecordRef record, unsigned int a3)
{
  if (record)
  {
    RecordID = ABRecordGetRecordID(record);
    v7 = ABRecordCopyValue(record, kABPersonInternalUUIDProperty);
    _appendToPersonChangeHistory(a1, a3, RecordID, v7, 0, 0);
    if (v7)
    {

      CFRelease(v7);
    }
  }

  else
  {

    _appendToPersonChangeHistory(a1, a3, -1, 0, 0, 0);
  }
}

uint64_t ABCCopyArrayOfAllInstancesOfClassInSourceMatchingPredicates(uint64_t a1, uint64_t a2, uint64_t a3, const __CFArray *a4, const __CFArray *a5)
{
  if (a3)
  {
    UniqueId = ABCRecordGetUniqueId(a3);
  }

  else
  {
    UniqueId = -1;
  }

  CPRecordStoreGetDatabase();
  SelectPrefix = CPRecordStoreCreateSelectPrefix();
  v10 = SelectPrefix;
  if (UniqueId == -1)
  {
    if (!a4 || !a5)
    {
      goto LABEL_17;
    }

    v11 = @" WHERE ";
  }

  else
  {
    CFStringAppend(SelectPrefix, @" WHERE ");
    CFStringAppend(v10, @"StoreID == ? ");
    if (!a4 || !a5)
    {
      goto LABEL_17;
    }

    v11 = @" AND ";
  }

  CFStringAppend(v10, v11);
  Count = CFArrayGetCount(a4);
  if (Count != CFArrayGetCount(a5))
  {
    ABCCopyArrayOfAllInstancesOfClassInSourceMatchingPredicates_cold_1();
  }

  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a4, i);
      CFStringAppend(v10, ValueAtIndex);
      if (i < Count - 1)
      {
        CFStringAppend(v10, @" AND ");
      }
    }
  }

LABEL_17:
  CFStringAppend(v10, @";");
  v15 = CPSqliteDatabaseStatementForReading();
  v16 = recordStoreContext(a1);
  if (v16)
  {
    v16 = *v16;
  }

  ABRegulatoryLogReadContactsData(v16);
  if (v15)
  {
    v17 = *(v15 + 8);
    if (v17)
    {
      if (UniqueId == -1)
      {
        v18 = 1;
        if (!a4)
        {
LABEL_37:
          v19 = CPRecordStoreProcessStatementWithPropertyIndices();
          CPSqliteStatementReset();
          goto LABEL_38;
        }
      }

      else
      {
        sqlite3_bind_int(v17, 1, UniqueId);
        v18 = 2;
        if (!a4)
        {
          goto LABEL_37;
        }
      }

      if (a5)
      {
        v20 = CFArrayGetCount(a5);
        if (v20 >= 1)
        {
          v21 = v20;
          v22 = 0;
          v35 = v20;
          do
          {
            v23 = CFArrayGetValueAtIndex(a5, v22);
            v24 = CFGetTypeID(v23);
            if (v24 == CFArrayGetTypeID())
            {
              v25 = a5;
              v26 = CFArrayGetCount(v23);
              if (v26 >= 1)
              {
                v27 = v26;
                for (j = 0; j != v27; ++j)
                {
                  v29 = *(v15 + 8);
                  v30 = CFArrayGetValueAtIndex(v23, j);
                  v31 = _ABCCreateUTF8StringFromCFString(v30);
                  sqlite3_bind_text(v29, v18 + j, v31, -1, MEMORY[0x1E69E9B38]);
                }

                v18 += j;
                v21 = v35;
              }

              a5 = v25;
            }

            else
            {
              v32 = *(v15 + 8);
              v33 = _ABCCreateUTF8StringFromCFString(v23);
              sqlite3_bind_text(v32, v18++, v33, -1, MEMORY[0x1E69E9B38]);
            }

            ++v22;
          }

          while (v22 != v21);
        }
      }

      goto LABEL_37;
    }
  }

  fwrite("AB: Could not compile statement for query (ABCCopyArrayOfAllInstancesOfClassInSourceMatchingPredicates):\n", 0x69uLL, 1uLL, *MEMORY[0x1E69E9848]);
  CFShow(v10);
  v19 = 0;
LABEL_38:
  CFRelease(v10);
  return v19;
}

uint64_t ABCCopyArrayOfAllInstancesOfClassInSourceWithExternalIdentifiers(uint64_t a1, uint64_t a2, uint64_t a3, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  v9 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"ExternalIdentifier IN "];
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      if (i)
      {
        v11 = @", ?";
      }

      else
      {
        v11 = CFSTR("(?");
      }

      [v9 appendString:v11];
    }
  }

  [v9 appendString:@""]);
  v12 = ABCCopyArrayOfAllInstancesOfClassInSourceMatchingPredicate(a1, a2, a3, v9, theArray);

  return v12;
}

uint64_t ABCCopyArrayOfAllInstancesOfClassInSourceWithExternalUUIDs(uint64_t a1, uint64_t a2, uint64_t a3, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  v9 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"ExternalUUID IN "];
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      if (i)
      {
        v11 = @", ?";
      }

      else
      {
        v11 = CFSTR("(?");
      }

      [v9 appendString:v11];
    }
  }

  [v9 appendString:@""]);
  v12 = ABCCopyArrayOfAllInstancesOfClassInSourceMatchingPredicate(a1, a2, a3, v9, theArray);

  return v12;
}

uint64_t _ABCCopyArrayOfAllInstancesOfClassInAccountWithSortOrdering(uint64_t a1, uint64_t a2, const __CFString *a3, int a4)
{
  CPRecordStoreGetDatabase();
  SelectPrefix = CPRecordStoreCreateSelectPrefix();
  v8 = SelectPrefix;
  if (a3)
  {
    CFStringAppend(SelectPrefix, @" WHERE");
    CFStringAppend(v8, @" outerPerson.StoreID in (select abs.ROWID from ABStore abs, ABAccount aba where abs.AccountID = aba.ROWID AND aba.AccountIdentifier = ?)");
  }

  if (a4)
  {
    v9 = @" ORDER BY LastSortLanguageIndex, LastSortSection, LastSort";
  }

  else
  {
    v9 = @" ORDER BY FirstSortLanguageIndex, FirstSortSection, FirstSort";
  }

  CFStringAppend(v8, v9);
  CFStringAppend(v8, @";");
  v10 = CPSqliteDatabaseStatementForReading();
  v11 = recordStoreContext(a1);
  if (v11)
  {
    v11 = *v11;
  }

  ABRegulatoryLogReadContactsData(v11);
  CFRelease(v8);
  if (!v10)
  {
    return 0;
  }

  v12 = *(v10 + 8);
  if (!v12)
  {
    return 0;
  }

  if (a3)
  {
    v13 = _ABCCreateUTF8StringFromCFString(a3);
    sqlite3_bind_text(v12, 1, v13, -1, MEMORY[0x1E69E9B38]);
  }

  v14 = CPRecordStoreProcessStatementWithPropertyIndices();
  CPSqliteStatementReset();
  return v14;
}

void ABClearAllInstancesOfClassInSourceWithExternalIdentifier(uint64_t a1, const char **a2, uint64_t a3)
{
  if (a3)
  {
    UniqueId = ABCRecordGetUniqueId(a3);
  }

  else
  {
    UniqueId = -1;
  }

  CPRecordStoreGetDatabase();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Mutable)
  {
    v6 = Mutable;
    CFStringAppend(Mutable, @"UPDATE ");
    CFStringAppendCString(v6, *a2, 0x8000100u);
    CFStringAppend(v6, @" SET ");
    CFStringAppendCString(v6, "ExternalIdentifier", 0x8000100u);
    CFStringAppend(v6, @" = NULL");
    if (UniqueId != -1)
    {
      CFStringAppend(v6, @" WHERE ");
      CFStringAppend(v6, @"StoreID == ? ");
    }

    CFStringAppend(v6, @";");
    v7 = CPSqliteDatabaseStatementForWriting();
    if (v7)
    {
      if (UniqueId != -1)
      {
        sqlite3_bind_int(*(v7 + 8), 1, UniqueId);
      }

      CPSqliteStatementPerform();
      CPSqliteStatementReset();
    }

    CFRelease(v6);
  }
}

BOOL ABCDBHasIndexes()
{
  CPRecordStoreGetDatabase();
  CPSqliteDatabaseConnectionForReading();
  v24 = CPSqliteConnectionPerformSQL();
  v23 = CPSqliteConnectionPerformSQL();
  v0 = CPSqliteConnectionPerformSQL();
  v1 = CPSqliteConnectionPerformSQL();
  v2 = CPSqliteConnectionPerformSQL();
  v3 = CPSqliteConnectionPerformSQL();
  v4 = CPSqliteConnectionPerformSQL();
  v5 = CPSqliteConnectionPerformSQL();
  v6 = CPSqliteConnectionPerformSQL();
  v7 = CPSqliteConnectionPerformSQL();
  v8 = CPSqliteConnectionPerformSQL();
  v9 = CPSqliteConnectionPerformSQL();
  v21 = v24 != 1 && v23 != 1 && v0 != 1 && v1 != 1 && v2 != 1 && v3 != 1 && v4 != 1 && v5 != 1 && v6 != 1 && v7 != 1 && v8 != 1 && v9 != 1;
  CPSqliteDatabaseReleaseSqliteConnection();
  return v21;
}

void ABSqliteGenerateUUID(sqlite3_context *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  if (v3)
  {
    v4 = v3;
    v5 = CFUUIDCreateString(v2, v3);
    if (v5)
    {
      v6 = v5;
      Length = CFStringGetLength(v5);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      usedBufLen = 0;
      v9 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
      v12.location = 0;
      v12.length = Length;
      CFStringGetBytes(v6, v12, 0x8000100u, 0, 0, v9, MaximumSizeForEncoding, &usedBufLen);
      v9[usedBufLen] = 0;
      sqlite3_result_text(a1, v9, -1, MEMORY[0x1E69E9B38]);
      CFRelease(v6);
      CFRelease(v4);
      return;
    }

    CFRelease(v4);
  }

  sqlite3_result_null(a1);
}

void ABSqliteRepairUUID(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 == 1 && (v5 = sqlite3_value_text(*a3)) != 0 && *v5 && !strnstr(v5, "CNSuggestedContactStore", 0x17uLL))
  {
    v6 = *a3;

    sqlite3_result_value(a1, v6);
  }

  else
  {

    ABSqliteGenerateUUID(a1);
  }
}

void ABSqliteKatakanaExclusively(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 == 1 && (v4 = sqlite3_value_text(*a3)) != 0 && (v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v4, 0x8000100u)) != 0)
  {
    v6 = v5;
    v7 = ABKatakanaCharacterSet();
    v8 = ABContentsExclusivelyInCharacterSet(v6, v7) != 0;
    sqlite3_result_int(a1, v8);

    CFRelease(v6);
  }

  else
  {

    sqlite3_result_int(a1, 0);
  }
}

void ABSqliteNormalizeDate(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  if (ABSqliteNormalizeDate_onceToken != -1)
  {
    ABSqliteNormalizeDate_cold_1();
  }

  v5 = sqlite3_value_text(*a3);
  if (v5)
  {
    if (*v5)
    {
      v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v5, 0x8000100u);
      if (v6)
      {
        v7 = v6;
        v8 = _ABCCreateDateFromCFString(v6);
        if (v8)
        {
          v9 = v8;
          v19 = 0;
          v20 = &v19;
          v21 = 0x3052000000;
          v22 = __Block_byref_object_copy_;
          v10 = getIntlUtilityClass_softClass;
          v23 = __Block_byref_object_dispose_;
          v24 = getIntlUtilityClass_softClass;
          if (!getIntlUtilityClass_softClass)
          {
            v18[0] = MEMORY[0x1E69E9820];
            v18[1] = 3221225472;
            v18[2] = __getIntlUtilityClass_block_invoke;
            v18[3] = &unk_1E7CCC410;
            v18[4] = &v19;
            __getIntlUtilityClass_block_invoke(v18);
            v10 = v20[5];
          }

          _Block_object_dispose(&v19, 8);
          v11 = ABSqliteNormalizeDate_s_gmtGregorian;
          v12 = [ABSqliteNormalizeDate_s_gmtGregorian components:254 fromDate:v9];
          if ([v10 isYearlessDate:v12 forCalendar:v11] & 1) != 0 || (v13 = objc_msgSend(ABSqliteNormalizeDate_s_gmtJapanese, "components:fromDate:", 254, v9), (objc_msgSend(v10, "isYearlessDate:forCalendar:", v13, ABSqliteNormalizeDate_s_gmtJapanese)) || (v14 = objc_msgSend(ABSqliteNormalizeDate_s_gmtBuddhist, "components:fromDate:", 254, v9), objc_msgSend(v10, "isYearlessDate:forCalendar:", v14, ABSqliteNormalizeDate_s_gmtBuddhist)))
          {
            [v10 setYearlessYear:v12 forCalendar:ABSqliteNormalizeDate_s_gmtGregorian];
          }

          v15 = _ABCCreateCFStringFromDate([ABSqliteNormalizeDate_s_gmtGregorian dateFromComponents:v12]);
          if (v15)
          {
            v16 = v15;
            v17 = _ABCCreateUTF8StringFromCFString(v15);
            sqlite3_result_text(a1, v17, -1, MEMORY[0x1E69E9B38]);
            CFRelease(v16);
          }

          CFRelease(v9);
        }

        CFRelease(v7);
      }
    }
  }
}

void sub_1B7F19664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __ABSqliteNormalizeDate_block_invoke()
{
  v0 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  v1 = objc_alloc(MEMORY[0x1E695DEE8]);
  ABSqliteNormalizeDate_s_gmtGregorian = [v1 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  [ABSqliteNormalizeDate_s_gmtGregorian setTimeZone:v0];
  v2 = objc_alloc(MEMORY[0x1E695DEE8]);
  ABSqliteNormalizeDate_s_gmtJapanese = [v2 initWithCalendarIdentifier:*MEMORY[0x1E695D898]];
  [ABSqliteNormalizeDate_s_gmtJapanese setTimeZone:v0];
  v3 = objc_alloc(MEMORY[0x1E695DEE8]);
  v4 = [v3 initWithCalendarIdentifier:*MEMORY[0x1E695D820]];
  ABSqliteNormalizeDate_s_gmtBuddhist = v4;

  return [v4 setTimeZone:v0];
}

void ABSqliteTransformString(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if ((a2 - 3) > 1)
  {
    goto LABEL_19;
  }

  MutableCopy = sqlite3_value_text(*a3);
  v7 = sqlite3_value_int(a3[1]) != 0;
  if (MutableCopy)
  {
    v8 = CFStringCreateWithCString(0, MutableCopy, 0x8000100u);
    if (v8)
    {
      v9 = v8;
      MutableCopy = CFStringCreateMutableCopy(0, 0, v8);
      CFRelease(v9);
    }

    else
    {
      MutableCopy = 0;
    }
  }

  if (a2 != 3)
  {
    v11 = sqlite3_value_blob(a3[3]);
LABEL_10:
    v12 = v11;
    if (MutableCopy && v11)
    {
      CFStringTransform(MutableCopy, 0, v11, v7);
      CFRelease(v12);
LABEL_16:
      v13 = _ABCCreateUTF8StringFromCFString(MutableCopy);
      sqlite3_result_text(a1, v13, -1, MEMORY[0x1E69E9B38]);

      CFRelease(MutableCopy);
      return;
    }

    if (v11)
    {
      CFRelease(v11);
    }

    goto LABEL_15;
  }

  v10 = sqlite3_value_text(a3[2]);
  if (v10)
  {
    v11 = CFStringCreateWithCString(0, v10, 0x8000100u);
    goto LABEL_10;
  }

LABEL_15:
  if (MutableCopy)
  {
    goto LABEL_16;
  }

LABEL_19:

  sqlite3_result_null(a1);
}

void ABSqliteIsStoreAllowed(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 == 4)
  {
    v5 = sqlite3_value_blob(a3[3]);
    if (v5 && ((v6 = v5, ([v5 deviceHasManagementRestrictions] & 1) != 0) || objc_msgSend(v6, "hasContactProviderRestrictions")))
    {
      if (sqlite3_value_type(*a3) == 5)
      {
        v7 = sqlite3_value_int(a3[1]);
        if (v7 == 7)
        {
          v8 = [v6 canAccessProviderContainerWithIdentifier:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", sqlite3_value_text(a3[2]))}];
        }

        else
        {
          if (v7)
          {
            v9 = 0;
            goto LABEL_16;
          }

          v8 = [v6 canReadFromLocalAccount];
        }
      }

      else
      {
        v8 = [v6 canReadFromAccountWithIdentifier:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", sqlite3_value_text(*a3))}];
      }

      v9 = v8;
    }

    else
    {
      v9 = 1;
    }

LABEL_16:

    sqlite3_result_int(a1, v9);
    return;
  }

  sqlite3_result_null(a1);
}

_BYTE *ABSqliteSelectPreferredContact_Step(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  result = sqlite3_aggregate_context(a1, 8);
  if (a2 == 4)
  {
    v6 = result;
    if (result)
    {
      if ((result[4] & 1) == 0)
      {
        v7 = sqlite3_value_int(*a3);
        v8 = sqlite3_value_int(a3[1]);
        v9 = sqlite3_value_int(a3[2]);
        result = [sqlite3_value_blob(a3[3]) containsIndex:v8];
        if (result)
        {
          if (v9)
          {
            v6[4] = 1;
LABEL_7:
            *v6 = v7;
            return result;
          }

          if (!*v6 || v7 < *v6)
          {
            goto LABEL_7;
          }
        }
      }
    }
  }

  return result;
}

void ABSqliteSelectPreferredContact_Final(sqlite3_context *a1)
{
  v2 = sqlite3_aggregate_context(a1, 8);
  if (v2 && (v3 = *v2) != 0)
  {

    sqlite3_result_int(a1, v3);
  }

  else
  {

    sqlite3_result_null(a1);
  }
}

uint64_t _createPersonTables(uint64_t a1)
{
  v2 = ABCDBContextPerformSQLResultDone(a1, @"CREATE TABLE ABPerson (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, First TEXT, Last TEXT, Middle TEXT, FirstPhonetic TEXT, MiddlePhonetic TEXT, LastPhonetic TEXT, Organization TEXT, Department TEXT, Note TEXT, Kind INTEGER, Birthday TEXT, JobTitle TEXT, Nickname TEXT, Prefix TEXT, Suffix TEXT, FirstSort TEXT, LastSort TEXT, CreationDate INTEGER, ModificationDate INTEGER, CompositeNameFallback TEXT, ExternalIdentifier TEXT, ExternalModificationTag TEXT, ExternalUUID TEXT, StoreID INTEGER, DisplayName TEXT, ExternalRepresentation BLOB, FirstSortSection TEXT, LastSortSection TEXT, FirstSortLanguageIndex INTEGER DEFAULT 2147483647, LastSortLanguageIndex INTEGER DEFAULT 2147483647, PersonLink INTEGER DEFAULT -1, ImageURI TEXT, IsPreferredName INTEGER DEFAULT 1, guid TEXT NOT NULL DEFAULT (ab_generate_guid()), PhonemeData TEXT, AlternateBirthday TEXT, MapsData TEXT, FirstPronunciation TEXT, MiddlePronunciation TEXT, LastPronunciation TEXT, OrganizationPhonetic TEXT, OrganizationPronunciation TEXT, PreviousFamilyName TEXT, PreferredLikenessSource TEXT, PreferredPersonaIdentifier TEXT, PreferredChannel TEXT, DowntimeWhitelist TEXT, ImageType TEXT, ImageHash BLOB, MemojiMetadata BLOB, Wallpaper BLOB, DisplayFlags INTEGER, WatchWallpaperImageData BLOB, WallpaperMetadata BLOB, ImageBackgroundColorsData BLOB, SensitiveContentConfiguration BLOB, WallpaperURI TEXT, ImageSyncFailedTime TEXT, WallpaperSyncFailedTime TEXT, UNIQUE(guid));");
  v3 = v2 & ABCDBContextPerformSQLResultDone(a1, @"CREATE TABLE ABPersonChanges (record INTEGER, type INTEGER, sequence_number INTEGER, Image INTEGER, ExternalIdentifier TEXT, StoreID INTEGER, PersonLink INTEGER, guid TEXT, Changes INTEGER, LinkToPersonUUID TEXT, PersonLinkUUID TEXT);");
  v4 = ABCDBContextPerformSQLResultDone(a1, @"CREATE TABLE ABPersonLink (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, PreferredImagePersonID INTEGER DEFAULT -1, PreferredNamePersonID INTEGER DEFAULT -1, guid TEXT NOT NULL DEFAULT (ab_generate_guid()), UNIQUE(guid));");
  return v3 & v4 & ABCDBContextPerformSQLResultDone(a1, @"CREATE TABLE IF NOT EXISTS ABPersonSearchKey (person_id INTEGER, SearchKey BLOB, NameOnlySearchKey BLOB, UNIQUE(person_id));");
}

uint64_t ABCDBContextCreateSectionListTablesAndDropTablesWithTriggers(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = ABCDBContextPerformSQLResultDone(a1, @"DROP TABLE IF EXISTS sorting_first_section_list");
    v4 = ABCDBContextPerformSQLResultDone(a1, @"DROP TABLE IF EXISTS FirstSortSectionCount;");
    if (!ABCDBContextPerformSQLResultDone(a1, @"CREATE TABLE IF NOT EXISTS FirstSortSectionCount(LanguageIndex, Section TEXT, StoreID, number, UNIQUE(LanguageIndex, Section, StoreID));"))
    {
      goto LABEL_18;
    }

    if (!v3)
    {
      goto LABEL_18;
    }

    if (!v4)
    {
      goto LABEL_18;
    }

    v5 = ABCDBContextPerformSQLResultDone(a1, @"DROP TABLE IF EXISTS sorting_last_section_list");
    v6 = ABCDBContextPerformSQLResultDone(a1, @"DROP TABLE IF EXISTS LastSortSectionCount;");
    v7 = ABCDBContextPerformSQLResultDone(a1, @"CREATE TABLE IF NOT EXISTS LastSortSectionCount(LanguageIndex, Section TEXT, StoreID, number, UNIQUE(LanguageIndex, Section, StoreID));");
    if (!v5)
    {
      goto LABEL_18;
    }

    if (!v6)
    {
      goto LABEL_18;
    }

    if (!v7)
    {
      goto LABEL_18;
    }

    v8 = ABCDBContextPerformSQLResultDone(a1, @"DROP TABLE IF EXISTS FirstSortSectionCountTotal;");
    v9 = ABCDBContextPerformSQLResultDone(a1, @"CREATE TABLE IF NOT EXISTS FirstSortSectionCountTotal(LanguageIndex, Section TEXT, Type INT, number, UNIQUE(LanguageIndex, Section, Type));");
    if (!v8 || !v9)
    {
      goto LABEL_18;
    }

    v10 = ABCDBContextPerformSQLResultDone(a1, @"DROP TABLE IF EXISTS LastSortSectionCountTotal;");
  }

  else
  {
    if (!ABCDBContextPerformSQLResultDone(a1, @"CREATE TABLE IF NOT EXISTS FirstSortSectionCount(LanguageIndex, Section TEXT, StoreID, number, UNIQUE(LanguageIndex, Section, StoreID));") || !ABCDBContextPerformSQLResultDone(a1, @"CREATE TABLE IF NOT EXISTS LastSortSectionCount(LanguageIndex, Section TEXT, StoreID, number, UNIQUE(LanguageIndex, Section, StoreID));") || !ABCDBContextPerformSQLResultDone(a1, @"CREATE TABLE IF NOT EXISTS FirstSortSectionCountTotal(LanguageIndex, Section TEXT, Type INT, number, UNIQUE(LanguageIndex, Section, Type));"))
    {
      goto LABEL_18;
    }

    v10 = 1;
  }

  v11 = ABCDBContextPerformSQLResultDone(a1, @"CREATE TABLE IF NOT EXISTS LastSortSectionCountTotal(LanguageIndex, Section TEXT, Type INT, number, UNIQUE(LanguageIndex, Section, Type));");
  if (v10 && v11)
  {
    return 1;
  }

LABEL_18:
  syslog(3, "Error creating section tables");
  return 0;
}

BOOL ABCDBContextCreateSectionListTriggersAndIndicesAndDropFirst(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS sorting_first_prefix_trigger;");
    v4 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS FirstSortSectionInsert;");
    v5 = ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS FirstSortSectionInsert AFTER INSERT ON ABPerson BEGIN INSERT OR REPLACE INTO FirstSortSectionCount VALUES(NEW.FirstSortLanguageIndex, IFNULL(NEW.FirstSortSection, ''), NEW.StoreID, 1 + IFNULL((SELECT number from FirstSortSectionCount WHERE LanguageIndex = NEW.FirstSortLanguageIndex AND Section = IFNULL(NEW.FirstSortSection, '') AND StoreID = NEW.StoreID), 0)); END;");
    result = 0;
    if (v5 && v3 && v4)
    {
      v7 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS update_first_prefix_trigger;");
      v8 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS FirstSortSectionUpdate;");
      v9 = ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS FirstSortSectionUpdate AFTER UPDATE ON ABPerson BEGIN INSERT OR REPLACE INTO FirstSortSectionCount VALUES(OLD.FirstSortLanguageIndex, IFNULL(OLD.FirstSortSection, ''), OLD.StoreID, (SELECT number from FirstSortSectionCount WHERE LanguageIndex = OLD.FirstSortLanguageIndex AND Section = IFNULL(OLD.FirstSortSection, '') AND StoreID = OLD.StoreID) - 1); DELETE FROM FirstSortSectionCount WHERE LanguageIndex = OLD.FirstSortLanguageIndex AND Section = IFNULL(OLD.FirstSortSection, '') AND StoreID = OLD.StoreID AND number = 0; INSERT OR REPLACE INTO FirstSortSectionCount VALUES(NEW.FirstSortLanguageIndex, IFNULL(NEW.FirstSortSection, ''), NEW.StoreID, 1 + IFNULL((SELECT number from FirstSortSectionCount WHERE LanguageIndex = NEW.FirstSortLanguageIndex AND Section = IFNULL(NEW.FirstSortSection, '') AND StoreID = NEW.StoreID), 0)); END;");
      result = 0;
      if (v7 && v8 && v9)
      {
        v10 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS delete_first_prefix_trigger;");
        v11 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS FirstSortSectionDelete;");
        v12 = ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS FirstSortSectionDelete AFTER DELETE ON ABPerson BEGIN INSERT OR REPLACE INTO FirstSortSectionCount VALUES(OLD.FirstSortLanguageIndex, IFNULL(OLD.FirstSortSection, ''), OLD.StoreID, (SELECT number from FirstSortSectionCount WHERE LanguageIndex = OLD.FirstSortLanguageIndex AND Section = IFNULL(OLD.FirstSortSection, '') AND StoreID = OLD.StoreID) - 1); DELETE FROM FirstSortSectionCount WHERE LanguageIndex = OLD.FirstSortLanguageIndex AND Section = IFNULL(OLD.FirstSortSection, '') AND StoreID = OLD.StoreID AND number = 0; END;");
        result = 0;
        if (v10 && v11 && v12)
        {
          v13 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS sorting_last_prefix_trigger;");
          v14 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS LastSortSectionInsert;");
          v15 = ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS LastSortSectionInsert AFTER INSERT ON ABPerson BEGIN INSERT OR REPLACE INTO LastSortSectionCount VALUES(NEW.LastSortLanguageIndex, IFNULL(NEW.LastSortSection, ''), NEW.StoreID, 1 + IFNULL((SELECT number from LastSortSectionCount WHERE LanguageIndex = NEW.LastSortLanguageIndex AND Section = IFNULL(NEW.LastSortSection, '') AND StoreID = NEW.StoreID), 0)); END;");
          result = 0;
          if (v13 && v14 && v15)
          {
            v16 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS update_last_prefix_trigger;");
            v17 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS LastSortSectionUpdate;");
            v18 = ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS LastSortSectionUpdate AFTER UPDATE ON ABPerson BEGIN INSERT OR REPLACE INTO LastSortSectionCount VALUES(OLD.LastSortLanguageIndex, IFNULL(OLD.LastSortSection, ''), OLD.StoreID, (SELECT number from LastSortSectionCount WHERE LanguageIndex = OLD.LastSortLanguageIndex AND Section = IFNULL(OLD.LastSortSection, '') AND StoreID = OLD.StoreID) - 1); DELETE FROM LastSortSectionCount WHERE LanguageIndex = OLD.LastSortLanguageIndex AND Section = IFNULL(OLD.LastSortSection, '') AND StoreID = OLD.StoreID AND number = 0; INSERT OR REPLACE INTO LastSortSectionCount VALUES(NEW.LastSortLanguageIndex, IFNULL(NEW.LastSortSection, ''), NEW.StoreID, 1 + IFNULL((SELECT number from LastSortSectionCount WHERE LanguageIndex = NEW.LastSortLanguageIndex AND Section = IFNULL(NEW.LastSortSection, '') AND StoreID = NEW.StoreID), 0)); END;");
            result = 0;
            if (v16 && v17 && v18)
            {
              v19 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS delete_last_prefix_trigger;");
              v20 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS LastSortSectionDelete;");
              v21 = ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS LastSortSectionDelete AFTER DELETE ON ABPerson BEGIN INSERT OR REPLACE INTO LastSortSectionCount VALUES(OLD.LastSortLanguageIndex, IFNULL(OLD.LastSortSection, ''), OLD.StoreID, (SELECT number from LastSortSectionCount WHERE LanguageIndex = OLD.LastSortLanguageIndex AND Section = IFNULL(OLD.LastSortSection, '') AND StoreID = OLD.StoreID) - 1); DELETE FROM LastSortSectionCount WHERE LanguageIndex = OLD.LastSortLanguageIndex AND Section = IFNULL(OLD.LastSortSection, '') AND StoreID = OLD.StoreID AND number = 0; END;");
              result = 0;
              if (v19 && v20 && v21)
              {
                v22 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS FirstSortSectionTotalDelete;");
                v23 = ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS FirstSortSectionTotalDelete AFTER DELETE ON ABPerson \nWHEN OLD.IsPreferredName=1 \nBEGIN \n    INSERT OR REPLACE INTO FirstSortSectionCountTotal \n    VALUES( \n        OLD.FirstSortLanguageIndex, \n        IFNULL(OLD.FirstSortSection, ''), \n        0, \n        (SELECT number FROM FirstSortSectionCountTotal WHERE LanguageIndex = OLD.FirstSortLanguageIndex AND Section = IFNULL(OLD.FirstSortSection, '') AND Type = 0) - 1 \n   ); \n    \n    DELETE FROM FirstSortSectionCountTotal \n    WHERE LanguageIndex = OLD.FirstSortLanguageIndex AND \n        Section = IFNULL(OLD.FirstSortSection, '') AND \n        Type = 0 AND \n        number <= 0; \nEND; \n");
                result = 0;
                if (v22 && v23)
                {
                  v24 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS LastSortSectionTotalDelete;");
                  v25 = ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS LastSortSectionTotalDelete AFTER DELETE ON ABPerson \nWHEN OLD.IsPreferredName=1 \nBEGIN \n    INSERT OR REPLACE INTO LastSortSectionCountTotal \n    VALUES( \n        OLD.LastSortLanguageIndex, \n        IFNULL(OLD.LastSortSection, ''), \n        0, \n        (SELECT number FROM LastSortSectionCountTotal WHERE LanguageIndex = OLD.LastSortLanguageIndex AND Section = IFNULL(OLD.LastSortSection, '') AND Type = 0) - 1 \n   ); \n    \n    DELETE FROM LastSortSectionCountTotal \n    WHERE LanguageIndex = OLD.LastSortLanguageIndex AND \n        Section = IFNULL(OLD.LastSortSection, '') AND \n        Type = 0 AND \n        number <= 0; \nEND; \n");
                  result = 0;
                  if (v24 && v25)
                  {
                    v26 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS FirstSortSectionTotalInsert;");
                    v27 = ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS FirstSortSectionTotalInsert AFTER INSERT ON ABPerson \nWHEN NEW.IsPreferredName=1 \nBEGIN \n    INSERT OR REPLACE INTO FirstSortSectionCountTotal \n    VALUES( \n        NEW.FirstSortLanguageIndex, \n        IFNULL(NEW.FirstSortSection, ''), \n        0, \n        1 + IFNULL((SELECT number from FirstSortSectionCountTotal WHERE LanguageIndex = NEW.FirstSortLanguageIndex AND Section = IFNULL(NEW.FirstSortSection, '') AND Type = 0), 0) \n   ); \nEND; \n");
                    result = 0;
                    if (v26 && v27)
                    {
                      v28 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS LastSortSectionTotalInsert;");
                      v29 = ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS LastSortSectionTotalInsert AFTER INSERT ON ABPerson \nWHEN NEW.IsPreferredName=1 \nBEGIN \n    INSERT OR REPLACE INTO LastSortSectionCountTotal \n    VALUES( \n        NEW.LastSortLanguageIndex, \n        IFNULL(NEW.LastSortSection, ''), \n        0, \n        1 + IFNULL((SELECT number from LastSortSectionCountTotal WHERE LanguageIndex = NEW.LastSortLanguageIndex AND Section = IFNULL(NEW.LastSortSection, '') AND Type = 0), 0) \n   ); \nEND; \n");
                      result = 0;
                      if (v28 && v29)
                      {
                        v30 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS FirstSortSectionTotalUpdateIfWasPreferred;");
                        v31 = ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS FirstSortSectionTotalUpdateIfWasPreferred AFTER UPDATE ON ABPerson \nWHEN OLD.IsPreferredName=1 \nBEGIN \n    INSERT OR REPLACE INTO FirstSortSectionCountTotal \n    VALUES( \n        OLD.FirstSortLanguageIndex, \n        IFNULL(OLD.FirstSortSection, ''), \n        0, \n        (SELECT number FROM FirstSortSectionCountTotal WHERE LanguageIndex = OLD.FirstSortLanguageIndex AND Section = IFNULL(OLD.FirstSortSection, '') AND Type = 0) - 1 \n   ); \n    \n    DELETE FROM FirstSortSectionCountTotal \n    WHERE LanguageIndex = OLD.FirstSortLanguageIndex AND \n        Section = IFNULL(OLD.FirstSortSection, '') AND \n        Type = 0 AND \n        number = 0; \nEND; \n");
                        result = 0;
                        if (v30 && v31)
                        {
                          v32 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS FirstSortSectionTotalUpdateIfIsPreferred;");
                          v33 = ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS FirstSortSectionTotalUpdateIfIsPreferred AFTER UPDATE ON ABPerson \nWHEN NEW.IsPreferredName=1 \nBEGIN \n    INSERT OR REPLACE INTO FirstSortSectionCountTotal \n    VALUES( \n        NEW.FirstSortLanguageIndex, \n        IFNULL(NEW.FirstSortSection, ''), \n        0, \n        1 + IFNULL((SELECT number from FirstSortSectionCountTotal WHERE LanguageIndex = NEW.FirstSortLanguageIndex AND Section = IFNULL(NEW.FirstSortSection, '') AND Type = 0), 0) \n   ); \nEND; \n");
                          result = 0;
                          if (v32 && v33)
                          {
                            v34 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS LastSortSectionTotalUpdateIfWasPreferred;");
                            v35 = ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS LastSortSectionTotalUpdateIfWasPreferred AFTER UPDATE ON ABPerson \nWHEN OLD.IsPreferredName=1 \nBEGIN \n    INSERT OR REPLACE INTO LastSortSectionCountTotal \n    VALUES( \n        OLD.LastSortLanguageIndex, \n        IFNULL(OLD.LastSortSection, ''), \n        0, \n        (SELECT number FROM LastSortSectionCountTotal WHERE LanguageIndex = OLD.LastSortLanguageIndex AND Section = IFNULL(OLD.LastSortSection, '') AND Type = 0) - 1 \n   ); \n    \n    DELETE FROM LastSortSectionCountTotal \n    WHERE LanguageIndex = OLD.LastSortLanguageIndex AND \n        Section = IFNULL(OLD.LastSortSection, '') AND \n        Type = 0 AND \n        number = 0; \nEND; \n");
                            result = 0;
                            if (v34 && v35)
                            {
                              v36 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS LastSortSectionTotalUpdateIfIsPreferred;");
                              return v36 & ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS LastSortSectionTotalUpdateIfIsPreferred AFTER UPDATE ON ABPerson \nWHEN NEW.IsPreferredName=1 \nBEGIN \n    INSERT OR REPLACE INTO LastSortSectionCountTotal \n    VALUES( \n        NEW.LastSortLanguageIndex, \n        IFNULL(NEW.LastSortSection, ''), \n        0, \n        1 + IFNULL((SELECT number from LastSortSectionCountTotal WHERE LanguageIndex = NEW.LastSortLanguageIndex AND Section = IFNULL(NEW.LastSortSection, '') AND Type = 0), 0) \n   ); \nEND; \n");
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    result = ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS FirstSortSectionInsert AFTER INSERT ON ABPerson BEGIN INSERT OR REPLACE INTO FirstSortSectionCount VALUES(NEW.FirstSortLanguageIndex, IFNULL(NEW.FirstSortSection, ''), NEW.StoreID, 1 + IFNULL((SELECT number from FirstSortSectionCount WHERE LanguageIndex = NEW.FirstSortLanguageIndex AND Section = IFNULL(NEW.FirstSortSection, '') AND StoreID = NEW.StoreID), 0)); END;");
    if (!result)
    {
      return result;
    }

    if (ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS FirstSortSectionUpdate AFTER UPDATE ON ABPerson BEGIN INSERT OR REPLACE INTO FirstSortSectionCount VALUES(OLD.FirstSortLanguageIndex, IFNULL(OLD.FirstSortSection, ''), OLD.StoreID, (SELECT number from FirstSortSectionCount WHERE LanguageIndex = OLD.FirstSortLanguageIndex AND Section = IFNULL(OLD.FirstSortSection, '') AND StoreID = OLD.StoreID) - 1); DELETE FROM FirstSortSectionCount WHERE LanguageIndex = OLD.FirstSortLanguageIndex AND Section = IFNULL(OLD.FirstSortSection, '') AND StoreID = OLD.StoreID AND number = 0; INSERT OR REPLACE INTO FirstSortSectionCount VALUES(NEW.FirstSortLanguageIndex, IFNULL(NEW.FirstSortSection, ''), NEW.StoreID, 1 + IFNULL((SELECT number from FirstSortSectionCount WHERE LanguageIndex = NEW.FirstSortLanguageIndex AND Section = IFNULL(NEW.FirstSortSection, '') AND StoreID = NEW.StoreID), 0)); END;"))
    {
      result = ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS FirstSortSectionDelete AFTER DELETE ON ABPerson BEGIN INSERT OR REPLACE INTO FirstSortSectionCount VALUES(OLD.FirstSortLanguageIndex, IFNULL(OLD.FirstSortSection, ''), OLD.StoreID, (SELECT number from FirstSortSectionCount WHERE LanguageIndex = OLD.FirstSortLanguageIndex AND Section = IFNULL(OLD.FirstSortSection, '') AND StoreID = OLD.StoreID) - 1); DELETE FROM FirstSortSectionCount WHERE LanguageIndex = OLD.FirstSortLanguageIndex AND Section = IFNULL(OLD.FirstSortSection, '') AND StoreID = OLD.StoreID AND number = 0; END;");
      if (!result)
      {
        return result;
      }

      if (ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS LastSortSectionInsert AFTER INSERT ON ABPerson BEGIN INSERT OR REPLACE INTO LastSortSectionCount VALUES(NEW.LastSortLanguageIndex, IFNULL(NEW.LastSortSection, ''), NEW.StoreID, 1 + IFNULL((SELECT number from LastSortSectionCount WHERE LanguageIndex = NEW.LastSortLanguageIndex AND Section = IFNULL(NEW.LastSortSection, '') AND StoreID = NEW.StoreID), 0)); END;"))
      {
        result = ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS LastSortSectionUpdate AFTER UPDATE ON ABPerson BEGIN INSERT OR REPLACE INTO LastSortSectionCount VALUES(OLD.LastSortLanguageIndex, IFNULL(OLD.LastSortSection, ''), OLD.StoreID, (SELECT number from LastSortSectionCount WHERE LanguageIndex = OLD.LastSortLanguageIndex AND Section = IFNULL(OLD.LastSortSection, '') AND StoreID = OLD.StoreID) - 1); DELETE FROM LastSortSectionCount WHERE LanguageIndex = OLD.LastSortLanguageIndex AND Section = IFNULL(OLD.LastSortSection, '') AND StoreID = OLD.StoreID AND number = 0; INSERT OR REPLACE INTO LastSortSectionCount VALUES(NEW.LastSortLanguageIndex, IFNULL(NEW.LastSortSection, ''), NEW.StoreID, 1 + IFNULL((SELECT number from LastSortSectionCount WHERE LanguageIndex = NEW.LastSortLanguageIndex AND Section = IFNULL(NEW.LastSortSection, '') AND StoreID = NEW.StoreID), 0)); END;");
        if (!result)
        {
          return result;
        }

        if (ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS LastSortSectionDelete AFTER DELETE ON ABPerson BEGIN INSERT OR REPLACE INTO LastSortSectionCount VALUES(OLD.LastSortLanguageIndex, IFNULL(OLD.LastSortSection, ''), OLD.StoreID, (SELECT number from LastSortSectionCount WHERE LanguageIndex = OLD.LastSortLanguageIndex AND Section = IFNULL(OLD.LastSortSection, '') AND StoreID = OLD.StoreID) - 1); DELETE FROM LastSortSectionCount WHERE LanguageIndex = OLD.LastSortLanguageIndex AND Section = IFNULL(OLD.LastSortSection, '') AND StoreID = OLD.StoreID AND number = 0; END;"))
        {
          result = ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS FirstSortSectionTotalDelete AFTER DELETE ON ABPerson \nWHEN OLD.IsPreferredName=1 \nBEGIN \n    INSERT OR REPLACE INTO FirstSortSectionCountTotal \n    VALUES( \n        OLD.FirstSortLanguageIndex, \n        IFNULL(OLD.FirstSortSection, ''), \n        0, \n        (SELECT number FROM FirstSortSectionCountTotal WHERE LanguageIndex = OLD.FirstSortLanguageIndex AND Section = IFNULL(OLD.FirstSortSection, '') AND Type = 0) - 1 \n   ); \n    \n    DELETE FROM FirstSortSectionCountTotal \n    WHERE LanguageIndex = OLD.FirstSortLanguageIndex AND \n        Section = IFNULL(OLD.FirstSortSection, '') AND \n        Type = 0 AND \n        number <= 0; \nEND; \n");
          if (!result)
          {
            return result;
          }

          if (ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS LastSortSectionTotalDelete AFTER DELETE ON ABPerson \nWHEN OLD.IsPreferredName=1 \nBEGIN \n    INSERT OR REPLACE INTO LastSortSectionCountTotal \n    VALUES( \n        OLD.LastSortLanguageIndex, \n        IFNULL(OLD.LastSortSection, ''), \n        0, \n        (SELECT number FROM LastSortSectionCountTotal WHERE LanguageIndex = OLD.LastSortLanguageIndex AND Section = IFNULL(OLD.LastSortSection, '') AND Type = 0) - 1 \n   ); \n    \n    DELETE FROM LastSortSectionCountTotal \n    WHERE LanguageIndex = OLD.LastSortLanguageIndex AND \n        Section = IFNULL(OLD.LastSortSection, '') AND \n        Type = 0 AND \n        number <= 0; \nEND; \n"))
          {
            result = ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS FirstSortSectionTotalInsert AFTER INSERT ON ABPerson \nWHEN NEW.IsPreferredName=1 \nBEGIN \n    INSERT OR REPLACE INTO FirstSortSectionCountTotal \n    VALUES( \n        NEW.FirstSortLanguageIndex, \n        IFNULL(NEW.FirstSortSection, ''), \n        0, \n        1 + IFNULL((SELECT number from FirstSortSectionCountTotal WHERE LanguageIndex = NEW.FirstSortLanguageIndex AND Section = IFNULL(NEW.FirstSortSection, '') AND Type = 0), 0) \n   ); \nEND; \n");
            if (!result)
            {
              return result;
            }

            if (ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS LastSortSectionTotalInsert AFTER INSERT ON ABPerson \nWHEN NEW.IsPreferredName=1 \nBEGIN \n    INSERT OR REPLACE INTO LastSortSectionCountTotal \n    VALUES( \n        NEW.LastSortLanguageIndex, \n        IFNULL(NEW.LastSortSection, ''), \n        0, \n        1 + IFNULL((SELECT number from LastSortSectionCountTotal WHERE LanguageIndex = NEW.LastSortLanguageIndex AND Section = IFNULL(NEW.LastSortSection, '') AND Type = 0), 0) \n   ); \nEND; \n"))
            {
              result = ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS FirstSortSectionTotalUpdateIfWasPreferred AFTER UPDATE ON ABPerson \nWHEN OLD.IsPreferredName=1 \nBEGIN \n    INSERT OR REPLACE INTO FirstSortSectionCountTotal \n    VALUES( \n        OLD.FirstSortLanguageIndex, \n        IFNULL(OLD.FirstSortSection, ''), \n        0, \n        (SELECT number FROM FirstSortSectionCountTotal WHERE LanguageIndex = OLD.FirstSortLanguageIndex AND Section = IFNULL(OLD.FirstSortSection, '') AND Type = 0) - 1 \n   ); \n    \n    DELETE FROM FirstSortSectionCountTotal \n    WHERE LanguageIndex = OLD.FirstSortLanguageIndex AND \n        Section = IFNULL(OLD.FirstSortSection, '') AND \n        Type = 0 AND \n        number = 0; \nEND; \n");
              if (!result)
              {
                return result;
              }

              if (ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS FirstSortSectionTotalUpdateIfIsPreferred AFTER UPDATE ON ABPerson \nWHEN NEW.IsPreferredName=1 \nBEGIN \n    INSERT OR REPLACE INTO FirstSortSectionCountTotal \n    VALUES( \n        NEW.FirstSortLanguageIndex, \n        IFNULL(NEW.FirstSortSection, ''), \n        0, \n        1 + IFNULL((SELECT number from FirstSortSectionCountTotal WHERE LanguageIndex = NEW.FirstSortLanguageIndex AND Section = IFNULL(NEW.FirstSortSection, '') AND Type = 0), 0) \n   ); \nEND; \n") && ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS LastSortSectionTotalUpdateIfWasPreferred AFTER UPDATE ON ABPerson \nWHEN OLD.IsPreferredName=1 \nBEGIN \n    INSERT OR REPLACE INTO LastSortSectionCountTotal \n    VALUES( \n        OLD.LastSortLanguageIndex, \n        IFNULL(OLD.LastSortSection, ''), \n        0, \n        (SELECT number FROM LastSortSectionCountTotal WHERE LanguageIndex = OLD.LastSortLanguageIndex AND Section = IFNULL(OLD.LastSortSection, '') AND Type = 0) - 1 \n   ); \n    \n    DELETE FROM LastSortSectionCountTotal \n    WHERE LanguageIndex = OLD.LastSortLanguageIndex AND \n        Section = IFNULL(OLD.LastSortSection, '') AND \n        Type = 0 AND \n        number = 0; \nEND; \n"))
              {
                v36 = 1;
                return v36 & ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS LastSortSectionTotalUpdateIfIsPreferred AFTER UPDATE ON ABPerson \nWHEN NEW.IsPreferredName=1 \nBEGIN \n    INSERT OR REPLACE INTO LastSortSectionCountTotal \n    VALUES( \n        NEW.LastSortLanguageIndex, \n        IFNULL(NEW.LastSortSection, ''), \n        0, \n        1 + IFNULL((SELECT number from LastSortSectionCountTotal WHERE LanguageIndex = NEW.LastSortLanguageIndex AND Section = IFNULL(NEW.LastSortSection, '') AND Type = 0), 0) \n   ); \nEND; \n");
              }
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t trimStoreURLs(uint64_t a1, __CFArray **a2)
{
  v3 = *a2;
  v4 = sqlite3_column_int(*(a1 + 8), 0);
  CFArrayAppendValue(v3, v4);
  v5 = sqlite3_column_text(*(a1 + 8), 1);
  if (v5)
  {
    v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v5, 0x8000100u);
    if (v6)
    {
      v7 = v6;
      if (CFStringGetLength(v6))
      {
        v8 = CFURLCreateWithString(0, v7, 0);
        if (v8)
        {
          v9 = v8;
          v10 = CFURLCopyPath(v8);
          if (v10)
          {
            v11 = v10;
            v12 = CPSqliteConnectionStatementForSQL();
            if (v12)
            {
              v13 = v12;
              v14 = *(v12 + 8);
              v15 = _ABCCreateUTF8StringFromCFString(v11);
              sqlite3_bind_text(v14, 1, v15, -1, MEMORY[0x1E69E9B38]);
              sqlite3_bind_int(*(v13 + 8), 2, v4);
              CPSqliteStatementPerform();
              CPSqliteStatementReset();
            }

            CFRelease(v11);
          }

          CFRelease(v9);
        }
      }

      CFRelease(v7);
    }
  }

  return 0;
}

uint64_t trimMemberURLs(uint64_t a1)
{
  v2 = sqlite3_column_int(*(a1 + 8), 0);
  v3 = sqlite3_column_text(*(a1 + 8), 1);
  if (v3)
  {
    v4 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v3, 0x8000100u);
    if (v4)
    {
      v5 = v4;
      if (CFStringGetLength(v4))
      {
        v6 = CFURLCreateWithString(0, v5, 0);
        v7 = CFURLCopyPath(v6);
        if (v7)
        {
          v8 = v7;
          v9 = CPSqliteConnectionStatementForSQL();
          if (v9)
          {
            v10 = v9;
            v11 = *(v9 + 8);
            v12 = _ABCCreateUTF8StringFromCFString(v8);
            sqlite3_bind_text(v11, 1, v12, -1, MEMORY[0x1E69E9B38]);
            sqlite3_bind_int(*(v10 + 8), 2, v2);
            CPSqliteStatementPerform();
            CPSqliteStatementReset();
          }

          CFRelease(v8);
        }

        CFRelease(v6);
      }

      CFRelease(v5);
    }
  }

  return 0;
}

uint64_t _abSqliteTraceCallback(int a1, uint64_t a2, sqlite3_stmt *pStmt, char *__big)
{
  v4 = __big;
  if (a1 == 2)
  {
    v7 = *__big;
    if (*__big >= 0x989681uLL && ABDiagnosticsEnabled())
    {
      _ABLog2(6, "int _abSqliteTraceCallback(unsigned int, void *, void *, void *)", 373, 0, @"sqlite profile: %llu ms, %s", v8, v9, v10, v7 / 0xF4240);
    }
  }

  else if (a1 == 1)
  {
    if (__big && *__big == 45 && __big[1] == 45)
    {
      v6 = 0;
    }

    else
    {
      if (!pStmt)
      {
        return 0;
      }

      v4 = sqlite3_expanded_sql(pStmt);
      if (!v4)
      {
        goto LABEL_18;
      }

      v6 = 1;
    }

    if (!strcasestr(v4, "-- TRIGGER") && ABDiagnosticsEnabled())
    {
      _ABLog2(6, "int _abSqliteTraceCallback(unsigned int, void *, void *, void *)", 363, 0, @"sqlite trace [%p]: %s", v11, v12, v13, a2);
      if ((v6 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_18;
    }

    if (v6)
    {
LABEL_18:
      sqlite3_free(v4);
    }
  }

  return 0;
}

void ABCDBUpdatePersonValueFromTrigger(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 == 3)
  {
    v5 = sqlite3_user_data(a1);
    v6 = *a3;
    sqlite3_value_text(a3[1]);
    v7 = sqlite3_value_int(a3[2]);
    v8 = CPRecordIndexOfPropertyNamed();
    if ((v8 & 0x80000000) == 0 && v8 < *(ABCPersonClass + 18) && *(*(ABCPersonClass + 10) + 40 * v8 + 8) == 1 && sqlite3_value_type(v6) == 1 && MEMORY[0x1B8CB5FB0](v5[2], ABCPersonClass, v7))
    {
      sqlite3_value_int(v6);
      CPRecordInitializeProperty();
    }

    sqlite3_result_value(a1, v6);
  }

  else
  {

    sqlite3_result_null(a1);
  }
}

const void *rowidForStringInTable(const __CFString *key, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary **a5, _BYTE *a6)
{
  if (a6)
  {
    *a6 = 0;
  }

  if (a5)
  {
    Mutable = *a5;
    if (*a5 || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0), (*a5 = Mutable) != 0))
    {
      if (CFDictionaryContainsKey(Mutable, key))
      {
        return CFDictionaryGetValue(Mutable, key);
      }

      v11 = 1;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
    Mutable = 0;
  }

  v12 = CPSqliteConnectionStatementForSQL();
  usedBufLen = 0;
  if (v12)
  {
    v13 = v12;
    Length = CFStringGetLength(key);
    v15 = v11;
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v17 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
    v26.location = 0;
    v26.length = Length;
    CFStringGetBytes(key, v26, 0x8000100u, 0, 0, v17, MaximumSizeForEncoding, &usedBufLen);
    v17[usedBufLen] = 0;
    sqlite3_bind_text(*(v13 + 8), 1, v17, -1, MEMORY[0x1E69E9B38]);
    CPSqliteStatementIntegerResult();
    CPSqliteStatementReset();
    v11 = v15;
  }

  else
  {
    fwrite("SQL error\n", 0xAuLL, 1uLL, *MEMORY[0x1E69E9848]);
  }

  v18 = CPSqliteConnectionStatementForSQL();
  if (!v18)
  {
    Insert = 0xFFFFFFFFLL;
    if (!a6)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v19 = v18;
  v20 = CFStringGetLength(key);
  v21 = CFStringGetMaximumSizeForEncoding(v20, 0x8000100u);
  v22 = malloc_type_malloc(v21 + 1, 0x100004077774924uLL);
  v27.location = 0;
  v27.length = v20;
  CFStringGetBytes(key, v27, 0x8000100u, 0, 0, v22, v21, &usedBufLen);
  v22[usedBufLen] = 0;
  sqlite3_bind_text(*(v19 + 8), 1, v22, -1, MEMORY[0x1E69E9B38]);
  CPSqliteStatementPerform();
  CPSqliteStatementReset();
  Insert = CPSqliteConnectionRowidOfLastInsert();
  if (a6)
  {
LABEL_16:
    *a6 = 1;
  }

LABEL_17:
  if (Insert >= 0)
  {
    v23 = v11;
  }

  else
  {
    v23 = 0;
  }

  if (v23 == 1)
  {
    CFDictionarySetValue(Mutable, key, Insert);
  }

  return Insert;
}

uint64_t AddEntryToDictionary(uint64_t a1, __CFDictionary *a2)
{
  v4 = sqlite3_column_text(*(a1 + 8), 0);
  if (v4)
  {
    v5 = *MEMORY[0x1E695E480];
    v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v4, 0x8000100u);
    v7 = sqlite3_column_text(*(a1 + 8), 1);
    if (v7)
    {
      v8 = CFStringCreateWithCString(v5, v7, 0x8000100u);
    }

    else
    {
      v8 = &stru_1F2FE2718;
    }

    v9 = [(__CFString *)v6 isEqualToString:@"bundleIdentifiers"];
    v10 = v8;
    if (v9)
    {
      v10 = [(__CFString *)v8 componentsSeparatedByString:@", "];
    }

    CFDictionarySetValue(a2, v6, v10);
    CFRelease(v6);
    CFRelease(v8);
  }

  return 0;
}

uint64_t _setInt(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1[1] + 8);
  if (v3)
  {
    return v3(a2, a3, *a1);
  }

  else
  {
    return 1;
  }
}

uint64_t _setRawString(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1[1] + 32);
  if (v3)
  {
    return v3(a2, a3, *a1);
  }

  else
  {
    return 1;
  }
}

uint64_t _setRawData(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1[1] + 40);
  if (v4)
  {
    return v4(a2, a3, a4, *a1);
  }

  else
  {
    return 1;
  }
}

uint64_t addLabelToDictionary(uint64_t a1, __CFDictionary *a2)
{
  v4 = sqlite3_column_int(*(a1 + 8), 0);
  v5 = sqlite3_column_text(*(a1 + 8), 1);
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v5, 0x8000100u);
  CFDictionarySetValue(a2, v4, v6);
  CFRelease(v6);
  return 0;
}

Class __getIntlUtilityClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!IntlPreferencesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __IntlPreferencesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7CCC4A8;
    v5 = 0;
    IntlPreferencesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!IntlPreferencesLibraryCore_frameworkLibrary)
  {
    __getIntlUtilityClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("IntlUtility");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getIntlUtilityClass_block_invoke_cold_1();
  }

  getIntlUtilityClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __IntlPreferencesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  IntlPreferencesLibraryCore_frameworkLibrary = result;
  return result;
}

CFStringRef OUTLINED_FUNCTION_14(char *cStr)
{

  return CFStringCreateWithCString(0, cStr, 0x8000100u);
}

__CFArray *OUTLINED_FUNCTION_15(CFMutableArrayRef *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{

  return ABCMultiValueInsertAndCreateIdentifier(a1, a2, v6, 0, 0, a6, 0);
}

uint64_t ABCCreateCollatorWithPreferredLocale(uint64_t a1, int a2, CFTypeRef cf)
{
  v15 = 0;
  if (cf && (v5 = CFRetain(cf)) != 0 || (v5 = ABAddressBookCopyCollatorType(a1, a2)) != 0)
  {
    v6 = v5;
    if (CFStringGetLength(v5))
    {
      goto LABEL_7;
    }

    CFRelease(v6);
  }

  v6 = ABCCopyUserLanguage();
LABEL_7:
  CStringPtr = CFStringGetCStringPtr(v6, 0x600u);
  v8 = CStringPtr;
  if (!CStringPtr)
  {
    Length = CFStringGetLength(v6);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x600u);
    usedBufLen = 0;
    v8 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
    v16.location = 0;
    v16.length = Length;
    CFStringGetBytes(v6, v16, 0x600u, 0, 0, v8, MaximumSizeForEncoding, &usedBufLen);
    v8[usedBufLen] = 0;
  }

  v11 = ucol_open();
  if (v15 >= 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  ucol_setAttribute();
  CFRelease(v6);
  if (!CStringPtr)
  {
    free(v8);
  }

  return v12;
}

uint64_t ABCReleaseCollator(uint64_t result)
{
  if (result)
  {
    return ucol_close();
  }

  return result;
}

const char *ABCreateSortKey(CFStringRef theString, uint64_t a2, uint64_t a3, int64_t *a4)
{
  v21[500] = *MEMORY[0x1E69E9840];
  if (theString)
  {
    Length = CFStringGetLength(theString);
  }

  else
  {
    Length = 0;
  }

  v8 = a2;
  if (!a2)
  {
    v8 = ABCCreateCollatorWithPreferredLocale(0, 0, 0);
  }

  if (Length < 1)
  {
    v16 = 0;
    v12 = 1;
    goto LABEL_23;
  }

  CharactersPtr = CFStringGetCharactersPtr(theString);
  v10 = CharactersPtr;
  if (!CharactersPtr)
  {
    v10 = malloc_type_malloc(2 * Length, 0x1000040BDFB0063uLL);
    v22.location = 0;
    v22.length = Length;
    CFStringGetCharacters(theString, v22, v10);
  }

  ucol_setStrength();
  SortKey = ucol_getSortKey();
  v12 = SortKey == 0;
  if (!SortKey)
  {
    v17 = ABOSLogGeneral();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      ABCreateSortKey_cold_1(theString, v17);
    }

    v16 = 0;
    goto LABEL_21;
  }

  v13 = SortKey;
  v14 = SortKey;
  v15 = malloc_type_calloc(SortKey, 1uLL, 0x100004077774924uLL);
  v16 = v15;
  if (v13 < 0xFA1)
  {
    memcpy(v15, v21, v14);
    if (!a4)
    {
      goto LABEL_21;
    }

LABEL_18:
    v18 = strlen(v16);
    v19 = v13 - 1;
    if (v18 < v19)
    {
      v19 = v18;
    }

    *a4 = v19;
    goto LABEL_21;
  }

  v13 = ucol_getSortKey();
  if (a4)
  {
    goto LABEL_18;
  }

LABEL_21:
  if (!CharactersPtr)
  {
    free(v10);
  }

LABEL_23:
  if (a4 && v12)
  {
    *a4 = 0;
  }

  if (v8 != a2 && v8)
  {
    ucol_close();
  }

  return v16;
}

uint64_t ABCreateUpperBoundingSortKey(const char *a1)
{
  strlen(a1);
  ucol_getBound();
  return 0;
}

const char *ABCreateDataSortKey(const __CFString *a1, uint64_t a2, uint64_t a3)
{
  length = 0;
  result = ABCreateSortKey(a1, a2, a3, &length);
  if (result)
  {
    return CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], result, length, *MEMORY[0x1E695E488]);
  }

  return result;
}

const char *ABCreateUpperBoundingDataSortKey(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  result = ABCreateUpperBoundingSortKey(BytePtr);
  if (result)
  {
    v3 = result;
    v4 = strlen(result);
    v5 = *MEMORY[0x1E695E488];
    v6 = *MEMORY[0x1E695E480];

    return CFDataCreateWithBytesNoCopy(v6, v3, v4, v5);
  }

  return result;
}

__CFArray *ABCCreateSortKeysForString(__CFStringTokenizer *a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v7 = _copyComponentsForString(a1, a2, a3, a5);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  Count = CFArrayGetCount(v7);
  if (Count < 1)
  {
    Mutable = 0;
  }

  else
  {
    v10 = Count;
    Mutable = 0;
    for (i = 0; i != v10; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v8, i);
      if (ValueAtIndex)
      {
        v14 = ValueAtIndex;
        if (CFStringGetLength(ValueAtIndex) >= 1)
        {
          v18 = 0;
          v15 = ABCreateSortKey(v14, a4, a5, &v18);
          if (v15)
          {
            v16 = v15;
            if (v18 < 1)
            {
              free(v15);
            }

            else
            {
              if (!Mutable)
              {
                Mutable = CFArrayCreateMutable(0, 0, &ABCreateSortKeysMutableArray_callbacks);
              }

              CFArrayAppendValue(Mutable, v16);
            }
          }
        }
      }
    }
  }

  CFRelease(v8);
  return Mutable;
}

CFArrayRef _copyComponentsForString(__CFStringTokenizer *a1, CFStringRef theString, uint64_t a3, int a4)
{
  if (a4 != 2)
  {
    v8 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v10 = ABCCreateArrayBySeparatingWordsInCompositeNameStringWithAllPossibleDecompositions(a1, theString, a3, 1);
    v11 = v10;
    if (a3)
    {
      v12 = ABCCreateArrayBySeparatingWordsInCompositeNameStringWithAllPossibleDecompositions(a1, theString, 0, 1);
      v13 = v12;
      if (v11)
      {
        Count = CFArrayGetCount(v11);
        MutableCopy = CFArrayCreateMutableCopy(v8, Count, v11);
        v16 = CFArrayGetCount(MutableCopy);
        if (v13)
        {
          v17 = v16;
          v18 = CFArrayGetCount(v13);
          if (v18 >= 1)
          {
            v19 = v18;
            for (i = 0; i != v19; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v13, i);
              v27.location = 0;
              v27.length = v17;
              if (!CFArrayContainsValue(MutableCopy, v27, ValueAtIndex))
              {
                CFArrayAppendValue(MutableCopy, ValueAtIndex);
              }
            }
          }

          CFRelease(v13);
        }

        CFRelease(v11);
        if (!MutableCopy)
        {
          return Mutable;
        }

        goto LABEL_19;
      }

      MutableCopy = v12;
      if (v12)
      {
LABEL_19:
        v22 = CFArrayGetCount(MutableCopy);
        if (v22 >= 1)
        {
          v23 = v22;
          for (j = 0; j != v23; ++j)
          {
            v25 = CFArrayGetValueAtIndex(MutableCopy, j);
            v28.length = CFArrayGetCount(v25);
            v28.location = 0;
            CFArrayAppendArray(Mutable, v25, v28);
          }
        }

        CFRelease(MutableCopy);
      }
    }

    else
    {
      MutableCopy = v10;
      if (v10)
      {
        goto LABEL_19;
      }
    }

    return Mutable;
  }

  return ABCCreateArrayBySeparatingWordsInCompositeNameStringWithAllPossibleDecompositions(a1, theString, a3, 0);
}

void _freeSortKey(int a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

void ABCMergeSortKeysIntoString(__CFString *a1, CFArrayRef theArray, uint64_t a3, void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v7 = Count;
      v8 = 0;
      contentsDeallocator = *MEMORY[0x1E695E498];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
        if (ValueAtIndex)
        {
          v10 = ValueAtIndex;
          if (CFStringGetLength(a1) < 1)
          {
            v17 = strlen(v10);
            v18 = CFStringCreateWithBytesNoCopy(0, v10, v17, 0x201u, 0, contentsDeallocator);
            if (v18)
            {
              v19 = v18;
              CFStringAppend(a1, v18);
              CFRelease(v19);
            }

            if (a4 && !*a4)
            {
              *a4 = a3;
            }

            goto LABEL_24;
          }

          Length = CFStringGetLength(a1);
          MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x201u);
          v13 = strlen(v10);
          usedBufLen = 0;
          if (MaximumSizeForEncoding < 200)
          {
            v15 = 0;
            v16 = v28;
          }

          else
          {
            v14 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x3F04B017uLL);
            v15 = v14;
            if (v14)
            {
              v16 = v14;
            }

            else
            {
              v16 = v28;
            }

            if (!v14)
            {
              MaximumSizeForEncoding = 199;
            }
          }

          v30.location = 0;
          v30.length = Length;
          CFStringGetBytes(a1, v30, 0x201u, 0, 0, v16, MaximumSizeForEncoding + 1, &usedBufLen);
          v16[usedBufLen] = 0;
          v20 = malloc_type_malloc(2 * (usedBufLen + v13), 0x100004077774924uLL);
          if (ucol_mergeSortkeys() < 1)
          {
            free(v20);
            if (!v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v21 = strlen(v20);
            v22 = CFStringCreateWithBytesNoCopy(0, v20, v21, 0x201u, 0, 0);
            if (v22)
            {
              v23 = v22;
              CFStringReplaceAll(a1, v22);
              CFRelease(v23);
            }

            if (!v15)
            {
              goto LABEL_24;
            }
          }

          free(v15);
        }

LABEL_24:
        ++v8;
      }

      while (v7 != v8);
    }
  }
}

CFDataRef ABCopySortKeyForSortKeys(const __CFArray *a1)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v3 = Count;
  v4 = 0;
  for (i = 0; i != v3; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
    v4 += strlen(ValueAtIndex) + 1;
  }

  v7 = malloc_type_calloc(1uLL, v4, 0x58AEAB33uLL);
  v8 = malloc_type_calloc(1uLL, v4, 0x29915744uLL);
  v9 = CFArrayGetValueAtIndex(a1, 0);
  v10 = strlen(v9);
  memmove(v7, v9, v10);
  memmove(v8, v9, v10);
  if (v3 != 1)
  {
    for (j = 1; j != v3; ++j)
    {
      v12 = CFArrayGetValueAtIndex(a1, j);
      strlen(v12);
      v13 = ucol_mergeSortkeys();
      memmove(v8, v7, v13);
    }

    v4 = v13;
  }

  v14 = CFDataCreateWithBytesNoCopy(0, v7, v4, *MEMORY[0x1E695E488]);
  free(v8);
  return v14;
}

__CFArray *ABCopySortKeysForStrings(__CFStringTokenizer *a1, const __CFArray *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  Mutable = CFArrayCreateMutable(0, 0, &ABCreateSortKeysMutableArray_callbacks);
  Count = CFArrayGetCount(a2);
  if (Count >= 1)
  {
    v10 = Count;
    for (i = 0; i != v10; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
      v13 = _copyComponentsForString(a1, ValueAtIndex, a3, a5);
      if (v13)
      {
        v14 = v13;
        v15 = CFArrayGetCount(v13);
        if (v15 >= 1)
        {
          v16 = v15;
          for (j = 0; j != v16; ++j)
          {
            v18 = CFArrayGetValueAtIndex(v14, j);
            if (CFStringGetLength(v18) >= 1)
            {
              v23 = 0;
              v19 = ABCreateSortKey(v18, a4, a5, &v23);
              if (v23 < 1)
              {
                free(v19);
              }

              else
              {
                CFArrayAppendValue(Mutable, v19);
              }
            }
          }
        }

        CFRelease(v14);
      }
    }
  }

  return Mutable;
}

uint64_t ABCompareDataSortKeys(const __CFData *a1, const __CFData *a2)
{
  BytePtr = CFDataGetBytePtr(a1);
  v4 = CFDataGetBytePtr(a2);

  return ABCompareSortKeys(BytePtr, v4);
}

uint64_t ABCompareSortKeys(char *a1, char *__s)
{
  if (a1)
  {
    result = -1;
  }

  else
  {
    result = __s != 0;
  }

  if (a1 && __s)
  {
    v5 = strchr(__s, 1) - __s;
    v6 = strchr(a1, 1) - a1;
    if (v6 >= v5)
    {
      v6 = v5;
    }

    v7 = strncmp(a1, __s, v6);
    if (v7 >= 0)
    {
      return v7 != 0;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

uint64_t ABCompareStringsUsingICUSortKey(const __CFString *a1, const __CFString *a2, uint64_t a3)
{
  v5 = ABCreateSortKey(a1, a3, 2, 0);
  v6 = ABCreateSortKey(a2, a3, 2, 0);
  v7 = ABCompareSortKeys(v5, v6);
  free(v5);
  free(v6);
  return v7;
}

CFArrayRef ABCCreateArrayBySeparatingWordsInCompositeNameStringWithAllPossibleDecompositions(__CFStringTokenizer *a1, CFStringRef theString, uint64_t a3, int a4)
{
  Length = CFStringGetLength(theString);
  if (a1)
  {
    v16.location = 0;
    v16.length = Length;
    CFStringTokenizerSetString(a1, theString, v16);
    v8 = a1;
    goto LABEL_10;
  }

  v9 = CFLocaleCopyPreferredLanguages();
  if (v9)
  {
    v10 = v9;
    if (CFArrayGetCount(v9))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v10, 0);
      v12 = CFLocaleCreate(0, ValueAtIndex);
      CFRelease(v10);
      if (v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
      CFRelease(v10);
    }
  }

  v12 = CFLocaleCopyCurrent();
LABEL_9:
  v17.location = 0;
  v17.length = Length;
  v8 = CFStringTokenizerCreate(*MEMORY[0x1E695E480], theString, v17, 0, v12);
  CFRelease(v12);
  if (!v8)
  {
    return 0;
  }

LABEL_10:
  if (a4)
  {
    PossibleNamePartsArrayWithStringAsCompositeName = _CFStringTokenizerCreatePossibleNamePartsArrayWithStringAsCompositeName();
  }

  else
  {
    PossibleNamePartsArrayWithStringAsCompositeName = _CFStringTokenizerCreateNamePartsArrayWithStringAsCompositeName();
  }

  v14 = PossibleNamePartsArrayWithStringAsCompositeName;
  if (PossibleNamePartsArrayWithStringAsCompositeName)
  {
    if (!a1)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, 0);
    if (!a1)
    {
LABEL_17:
      CFRelease(v8);
    }
  }

  return v14;
}

__CFArray *ABCCreateArrayBySeparatingWordsInPropertyString(__CFStringTokenizer *a1, const __CFString *a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  Length = CFStringGetLength(a2);
  if (a1)
  {
    v11.length = Length;
    v11.location = 0;
    CFStringTokenizerSetString(a1, a2, v11);
    while (CFStringTokenizerAdvanceToNextToken(a1))
    {
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(a1);
      if (CurrentTokenRange.length >= 1)
      {
        v8 = CFStringCreateWithSubstring(v4, a2, CurrentTokenRange);
        if (v8)
        {
          v9 = v8;
          CFArrayAppendValue(Mutable, v8);
          CFRelease(v9);
        }
      }
    }
  }

  return Mutable;
}

__CFString *ABCreateASCIINumericStringFromString(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Length >= 1)
  {
    v4 = 0;
    chars = 0;
    do
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(a1, v4);
      chars = CharacterAtIndex;
      NumericValue = u_getNumericValue(CharacterAtIndex);
      if (NumericValue <= 9.0)
      {
        v7 = ceil(NumericValue);
        if (NumericValue >= 0.0 && NumericValue == v7)
        {
          chars = NumericValue + 48;
        }
      }

      CFStringAppendCharacters(Mutable, &chars, 1);
      ++v4;
    }

    while (Length != v4);
  }

  return Mutable;
}

__CFString *ABCStoreNameForProperty(int a1)
{
  if (kABCSourceNameProperty == a1)
  {
    return @"Name";
  }

  if (kABCSourceExternalIdentifierProperty == a1)
  {
    return @"ExternalIdentifier";
  }

  if (kABCSourceTypeProperty == a1)
  {
    return @"Type";
  }

  if (kABCSourceConstraintsPathProperty == a1)
  {
    return @"ConstraintsPath";
  }

  if (kABCSourceExternalModificationTagProperty == a1)
  {
    return @"ExternalModificationTag";
  }

  if (kABCSourceExternalSyncTagProperty == a1)
  {
    return @"ExternalSyncTag";
  }

  if (kABCSourceAccountIDProperty == a1)
  {
    return @"AccountID";
  }

  if (kABCSourcePolicyProperty == a1)
  {
    return @"Policy";
  }

  if (kABCSourceEnabledProperty == a1)
  {
    return @"Enabled";
  }

  if (kABCSourceSyncDataProperty == a1)
  {
    return @"SyncData";
  }

  if (kABCSourceMeIdentifierProperty == a1)
  {
    return @"MeIdentifier";
  }

  if (kABCSourceCapabilitiesProperty == a1)
  {
    return @"Capabilities";
  }

  if (kABCSourceInternalUUIDProperty == a1)
  {
    return @"guid";
  }

  if (kABCSourceLastSyncDateProperty == a1)
  {
    return @"LastSyncDate";
  }

  if (kABCSourceProviderIdentifierProperty == a1)
  {
    return @"ProviderIdentifier";
  }

  if (kABCSourceProviderMetadataProperty == a1)
  {
    return @"ProviderMetadata";
  }

  return 0;
}

BOOL ABCDBContextCreateDefaultABSource()
{
  CPSqliteConnectionStatementForSQL();
  v0 = CPSqliteStatementPerform();
  CPSqliteStatementReset();
  return v0 == 101;
}

BOOL ABCDBContextCreateABCSourceTables(uint64_t a1, int a2)
{
  if (CPSqliteConnectionStatementForSQL())
  {
    v3 = CPSqliteStatementPerform();
    CPSqliteStatementReset();
    CFRelease(@"CREATE TABLE ABStore (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, Name TEXT, ExternalIdentifier TEXT, Type INTEGER, ConstraintsPath TEXT, ExternalModificationTag TEXT, ExternalSyncTag TEXT, StoreInternalIdentifier TEXT, AccountID INTEGER DEFAULT -1,Enabled INTEGER DEFAULT 1, SyncData BLOB, MeIdentifier INTEGER DEFAULT -1, Capabilities INTEGER DEFAULT 0, guid TEXT NOT NULL DEFAULT (ab_generate_guid()), LastSyncDate TEXT, ProviderIdentifier TEXT, ProviderMetadata BLOB, UNIQUE(StoreInternalIdentifier), UNIQUE(guid));");
    if (v3 == 101 && a2 != 0)
    {
      ABCDBContextCreateDefaultABSource();
      v3 = 101;
    }
  }

  else
  {
    CFRelease(@"CREATE TABLE ABStore (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, Name TEXT, ExternalIdentifier TEXT, Type INTEGER, ConstraintsPath TEXT, ExternalModificationTag TEXT, ExternalSyncTag TEXT, StoreInternalIdentifier TEXT, AccountID INTEGER DEFAULT -1,Enabled INTEGER DEFAULT 1, SyncData BLOB, MeIdentifier INTEGER DEFAULT -1, Capabilities INTEGER DEFAULT 0, guid TEXT NOT NULL DEFAULT (ab_generate_guid()), LastSyncDate TEXT, ProviderIdentifier TEXT, ProviderMetadata BLOB, UNIQUE(StoreInternalIdentifier), UNIQUE(guid));");
    v3 = 1;
  }

  return v3 == 101;
}

uint64_t ABCSourceCreateNewSourceAndReturnError()
{
  ABCInitializeLibrary();
  v0 = CPRecordCreate();
  CPRecordInitializeProperty();
  CPRecordInitializeProperty();
  return v0;
}

uint64_t ABCSourceCopyRecordsForUUIDs(uint64_t result, const __CFArray *a2)
{
  if (result)
  {
    return ABCDBContextCopyRecordsForUUIDsOfType(*(result + 16), a2, ABCSourceClass);
  }

  return result;
}

uint64_t ABCSourceCopyArrayOfAllSourcesIncludingDisabledSources(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (a2)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = @"Enabled = ?";
    v4 = @"1";
  }

  return ABCCopyArrayOfAllInstancesOfClassInSourceMatchingPredicate(v2, ABCSourceClass, 0, v3, v4);
}

CFArrayRef ABAddressBookCopyArrayOfAllSourcesWithAccountIdentifier(uint64_t a1, uint64_t a2)
{
  if (ABLogAPIUsage())
  {
    v4 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v4);
    v6 = ABLogAddressBook(a1);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyArrayOfAllSourcesWithAccountIdentifier(ABCAddressBookRef, CFStringRef)", 275, v5, @"%@", v7, v8, v9, v6);
    CFRelease(v5);
  }

  if (a2)
  {
    return CPRecordStoreCopyAllInstancesOfClassWithAliasAndFilter();
  }

  ABAddressBookCopyArrayOfAllSourcesWithAccountIdentifier_cold_1(a1, &v11);
  return v11;
}

void __ABAddressBookCopyArrayOfAllSourcesWithAccountIdentifier_block_invoke(uint64_t a1, uint64_t a2)
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

uint64_t ABCPersonCopyArrayOfPeopleWithExternalIdentifierInSource(const void *a1, uint64_t a2)
{
  v4 = ABCGetAddressBookForRecord();
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 16);
  if (!v5)
  {
    return 0;
  }

  v6 = ABCPersonClass;

  return ABCCopyArrayOfAllInstancesOfClassInSourceWithExternalIdentifier(v5, v6, a2, a1);
}

uint64_t ABCGroupCopyArrayOfGroupsWithExternalIdentifierInSource(const void *a1, uint64_t a2)
{
  v4 = ABCGetAddressBookForRecord();
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 16);
  if (!v5)
  {
    return 0;
  }

  v6 = ABCGroupClass[0];

  return ABCCopyArrayOfAllInstancesOfClassInSourceWithExternalIdentifier(v5, v6, a2, a1);
}

uint64_t ABCGroupCopyArrayOfGroupsWithExternalIdentifiersInSource(const __CFArray *a1, uint64_t a2)
{
  v4 = ABCGetAddressBookForRecord();
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 16);
  if (!v5)
  {
    return 0;
  }

  v6 = ABCGroupClass[0];

  return ABCCopyArrayOfAllInstancesOfClassInSourceWithExternalIdentifiers(v5, v6, a2, a1);
}

uint64_t ABSourceGetPolicy(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "ABPolicyRef ABSourceGetPolicy(ABRecordRef)", 336, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  return ABCSourceGetPolicy(a1);
}

const void *ABCSourceGetPolicy(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  Property = CPRecordGetProperty();
  if (!Property)
  {
    v3 = ABRecordCopyValue(a1, kABSourceConstraintsPathProperty);
    if (v3)
    {
      v4 = v3;
      Property = ABPolicyCreateFromDictionaryAtPath(v3);
      CFRelease(v4);
      if (Property)
      {
        goto LABEL_17;
      }
    }

    if (ABSourceIsContactProvider(a1) && (AddressBook = ABRecordGetAddressBook()) != 0 && ABAddressBookIgnoresContactProviderRestrictions(AddressBook) && (ABPolicyCreatePermissive(), v6) || ((ABSourceIsContentReadonlyInCapabilityRestrictions(a1) & 1) != 0 || ABSourceIsGuardianRestricted(a1) && (v7 = ABRecordGetAddressBook()) != 0 && !ABAddressBookIgnoresGuardianRestrictions(v7)) && (ABPolicyCreateReadOnly(), v6))
    {
      Property = v6;
LABEL_17:
      CPRecordInitializeProperty();
      CFRelease(Property);
      return Property;
    }

    ABPolicyCreatePermissive();
    Property = v8;
    if (v8)
    {
      goto LABEL_17;
    }
  }

  return Property;
}

uint64_t ABAddressBookCopyArrayOfAllPeopleInAccountWithSortOrderingShowingPersonLinks(void *a1, const __CFString *a2, int a3, int a4)
{
  if (ABLogAPIUsage())
  {
    v8 = _isMainThread();
    v9 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v8);
    v10 = ABLogAddressBook(a1);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyArrayOfAllPeopleInAccountWithSortOrderingShowingPersonLinks(ABAddressBookRef, CFStringRef, ABPersonSortOrdering, _Bool)", 342, v9, @"%@", v11, v12, v13, v10);
    CFRelease(v9);
  }

  if (a4)
  {
    if (a2)
    {
      v14 = ABAddressBookCopyArrayOfAllSourcesWithAccountIdentifier(a1, a2);
      v15 = ABAddressBookCopyArrayOfPreferredNamePeopleForGroupsAndSourcesWithSortOrdering(a1, 0, v14, a3);
      if (v14)
      {
        CFRelease(v14);
      }

      return v15;
    }

    else
    {

      return ABAddressBookCopyArrayOfAllPreferredNamePeopleWithSortOrdering(a1, a3);
    }
  }

  else
  {
    v17 = a1[2];
    v18 = ABCPersonClass;

    return ABCCopyArrayOfAllInstancesOfClassInAccountWithSortOrdering(v17, v18, a2, a3);
  }
}

uint64_t ABAddressBookCopyArrayOfAllPeopleInAccountWithSortOrdering(void *a1, const __CFString *a2, int a3)
{
  if (ABLogAPIUsage())
  {
    v6 = _isMainThread();
    v7 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v6);
    v8 = ABLogAddressBook(a1);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyArrayOfAllPeopleInAccountWithSortOrdering(ABAddressBookRef, CFStringRef, ABPersonSortOrdering)", 368, v7, @"%@", v9, v10, v11, v8);
    CFRelease(v7);
  }

  return ABAddressBookCopyArrayOfAllPeopleInAccountWithSortOrderingShowingPersonLinks(a1, a2, a3, 0);
}

void ABAddressBookSetValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (ABLogAPIUsage())
  {
    v10 = _isMainThread();
    v11 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v10);
    v12 = ABLogAddressBook(a1);
    _ABLog2(6, "void ABAddressBookSetValue(ABAddressBookRef, CFStringRef, CFStringRef)", 111, v11, @"%@, key=%@, value=%@", v13, v14, v15, v12);
    CFRelease(v11);
  }

  if (a1 && *(a1 + 16))
  {
    CPRecordStoreSetValueForProperty();
  }

  if (ABLogAPIUsage())
  {

    _ABLog2(6, "void ABAddressBookSetValue(ABAddressBookRef, CFStringRef, CFStringRef)", 118, @">> ", 0, v16, v17, v18, a9);
  }
}

uint64_t ABAddressBookCopyValue(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogAddressBook(a1);
    _ABLog2(6, "CFStringRef ABAddressBookCopyValue(ABAddressBookRef, CFStringRef)", 123, v3, @"%@, key=%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  if (a1 && *(a1 + 16))
  {
    v8 = CPRecordStoreCopyValueForProperty();
  }

  else
  {
    v8 = 0;
  }

  if (ABLogAPIUsage())
  {
    _ABLog2(6, "CFStringRef ABAddressBookCopyValue(ABAddressBookRef, CFStringRef)", 131, @">> ", @"value=%@", v9, v10, v11, v8);
  }

  return v8;
}

uint64_t _CallStackSymbolsIncludeFrameworkWithName(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(a1);
        }

        v6 |= [*(*(&v10 + 1) + 8 * i) rangeOfString:objc_msgSend(MEMORY[0x1E696AEC0] options:{"stringWithFormat:", @"^[ 0-9]*%@ .*$", a2), 1024}] != 0x7FFFFFFFFFFFFFFFLL;
      }

      v5 = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void _VerifyDirectDatabaseAccessEntitlementPresence()
{
  if (_VerifyDirectDatabaseAccessEntitlementPresence_onceToken != -1)
  {
    _VerifyDirectDatabaseAccessEntitlementPresence_cold_1();
  }
}

uint64_t ABAddressBookDirectoryOnlyKeepFamilyDatabasesWithDSIDs(void *a1)
{
  v59 = *MEMORY[0x1E69E9840];
  v2 = ABCAddressBookCopyDBDirectory();
  v3 = [v2 stringByAppendingString:@"Family/"];
  CFRelease(v2);
  v4 = open([v3 fileSystemRepresentation], 32);
  if (v4 == -1)
  {
    ABDiagnosticsEnabled();
    __error();
    _ABLog2(3, "void ABUnregisterAndPrepareToDeleteDelegateDatabasesExcludingAltDSIDs(CFArrayRef)", 274, 0, @"error opening Family directory lock at path %@, errno %d", v5, v6, v7, v3);
  }

  v8 = [v3 stringByAppendingPathComponent:@"family.plist"];
  v9 = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:{v8), "mutableCopy"}];
  if (v9)
  {
    v10 = v9;
    v44 = v4;
    v11 = [objc_msgSend(v9 objectForKeyedSubscript:{@"Mappings", "mutableCopy"}];
    v12 = [MEMORY[0x1E695DF90] dictionary];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v13 = [a1 countByEnumeratingWithState:&v46 objects:v57 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v47;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v47 != v15)
          {
            objc_enumerationMutation(a1);
          }

          v17 = *(*(&v46 + 1) + 8 * i);
          v18 = [v11 objectForKey:v17];
          if (v18)
          {
            [v12 setObject:v18 forKey:v17];
          }
        }

        v14 = [a1 countByEnumeratingWithState:&v46 objects:v57 count:16];
      }

      while (v14);
    }

    v19 = [v11 count];
    if (v19 != [v12 count])
    {
      [v10 setObject:v12 forKeyedSubscript:@"Mappings"];
      v20 = [MEMORY[0x1E696AE40] dataWithPropertyList:v10 format:200 options:0 error:0];
      if (v20)
      {
        [v20 writeToFile:v8 atomically:0];
      }
    }

    v21 = [objc_msgSend(v12 "allValues")];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __ABUnregisterAndPrepareToDeleteDelegateDatabasesExcludingAltDSIDs_block_invoke;
    v45[3] = &unk_1E7CCC918;
    v45[4] = v3;
    v22 = [v21 _cn_map:v45];
    v23 = ABCAddressBookCopyDBDirectory();
    v24 = [v23 stringByAppendingString:@"Family/"];
    CFRelease(v23);
    v54 = 0;
    v25 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
    if (!v25)
    {
      ABDiagnosticsEnabled();
      _ABLog2(3, "void ABPrepareForDeletionOrDeleteAllDelegateDatabasesExcludingPaths(CFArrayRef)", 256, 0, @"error fetching family directory contents %@:", v26, v27, v28, v54);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v29 = [v25 countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v51;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v51 != v31)
          {
            objc_enumerationMutation(v25);
          }

          v33 = [v24 stringByAppendingPathComponent:*(*(&v50 + 1) + 8 * j)];
          if (([v22 containsObject:v33] & 1) == 0)
          {
            v55 = 0;
            if (!ABCAddressBookIsDirectoryMarkedForDeletion(v33, &v55))
            {
              ABCAddressBookMarkDirectoryForDeletion(v33);
              continue;
            }

            if (v55 == 1)
            {
              v56 = 0;
              v34 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
              ABDiagnosticsEnabled();
              if (v34)
              {
                _ABLog2(5, "void ABAddressBookDeleteDatabaseAtPath(CFStringRef)", 231, 0, @"ABAddressBookDeleteDatabaseAtURL deleted database directory at URL: %@.", v35, v36, v37, v33);
                continue;
              }

              v43 = v33;
              v38 = 3;
              v39 = "void ABAddressBookDeleteDatabaseAtPath(CFStringRef)";
              v40 = 229;
              v41 = @"could not delete database at path:%@ :%@";
            }

            else
            {
              if (!ABDiagnosticsEnabled())
              {
                continue;
              }

              v38 = 6;
              v39 = "void ABAddressBookPrepareDirectoryForDeletionOrDeleteIfPossibleAtPath(CFStringRef)";
              v40 = 244;
              v41 = @"Database already marked for deletion but not yet eligible for unlink. Delete will not occur until this call is repeated on a subsequent system reboot.";
            }

            _ABLog2(v38, v39, v40, 0, v41, v35, v36, v37, v43);
          }
        }

        v30 = [v25 countByEnumeratingWithState:&v50 objects:v58 count:16];
      }

      while (v30);
    }

    v4 = v44;
  }

  return close(v4);
}

ABAddressBookRef ABAddressBookCreate(void)
{
  if (ABLogAPIUsage())
  {
    v11 = _isMainThread();
    v0 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "ABAddressBookRef ABAddressBookCreate(void)", 476, v0, 0, v1, v2, v3, v11);
    CFRelease(v0);
  }

  v4 = !ABLinkedOnOrAfter() && !ABAddressBookForceNullDatabaseForAccessDeniedIsEnabled();
  v5 = ABAddressBookCreateWithOptionsAndPolicy(0, v4, 0);
  if (ABLogAPIUsage())
  {
    v6 = ABLogAddressBook(v5);
    _ABLog2(6, "ABAddressBookRef ABAddressBookCreate(void)", 484, @">> ", @"%@", v7, v8, v9, v6);
  }

  return v5;
}

BOOL ABAddressBookForceNullDatabaseForAccessDeniedIsEnabled()
{
  if (ABLogAPIUsage())
  {
    v10 = _isMainThread();
    v0 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABAddressBookForceNullDatabaseForAccessDeniedIsEnabled(void)", 1563, v0, 0, v1, v2, v3, v10);
    CFRelease(v0);
  }

  CFPreferencesSynchronize(@".GlobalPreferences", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ABForceNullDatabaseForAccessDenied", @".GlobalPreferences", 0);
  if (ABLogAPIUsage())
  {
    v5 = ABLogStringForBool(AppBooleanValue != 0);
    _ABLog2(6, "_Bool ABAddressBookForceNullDatabaseForAccessDeniedIsEnabled(void)", 1569, @">> ", @"override=%@", v6, v7, v8, v5);
  }

  return AppBooleanValue != 0;
}

CFTypeRef ABAddressBookCopyDatabaseDirectory(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogAddressBook(a1);
    _ABLog2(6, "CFStringRef ABAddressBookCopyDatabaseDirectory(ABAddressBookRef)", 490, v3, @"%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  v8 = ABCAddressBookCopyAddressBookDBDirectory(a1);
  if (ABLogAPIUsage())
  {
    _ABLog2(6, "CFStringRef ABAddressBookCopyDatabaseDirectory(ABAddressBookRef)", 494, @">> ", @"databaseDirectory=%@", v9, v10, v11, v8);
  }

  return v8;
}

void ABAddressBookSetIsBackgroundProcess(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (ABLogAPIUsage())
  {
    v10 = _isMainThread();
    v11 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v10);
    v12 = ABLogAddressBook(a1);
    _ABLog2(6, "void ABAddressBookSetIsBackgroundProcess(ABAddressBookRef, _Bool)", 500, v11, @"%@", v13, v14, v15, v12);
    CFRelease(v11);
  }

  CPRecordStoreGetDatabase();
  CPSqliteDatabaseSetShouldYieldWhenRequested();
  CPSqliteDatabaseSetShouldRequestUnlock();
  if (ABLogAPIUsage())
  {

    _ABLog2(6, "void ABAddressBookSetIsBackgroundProcess(ABAddressBookRef, _Bool)", 507, @">> ", 0, v16, v17, v18, a9);
  }
}

void ABAddressBookRegisterYieldBlock(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (ABLogAPIUsage())
  {
    v11 = _isMainThread();
    v12 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v11);
    v13 = ABLogAddressBook(a1);
    _ABLog2(6, "void ABAddressBookRegisterYieldBlock(ABAddressBookRef, void (^)(void))", 512, v12, @"%@", v14, v15, v16, v13);
    CFRelease(v12);
  }

  pthread_mutex_lock((a1 + 280));
  v17 = *(a1 + 272);
  if (a2)
  {
    v18 = _Block_copy(a2);
  }

  else
  {
    v18 = 0;
  }

  *(a1 + 272) = v18;
  if (v17)
  {
    _Block_release(v17);
  }

  pthread_mutex_unlock((a1 + 280));
  if (ABLogAPIUsage())
  {

    _ABLog2(6, "void ABAddressBookRegisterYieldBlock(ABAddressBookRef, void (^)(void))", 527, @">> ", 0, v19, v20, v21, a9);
  }
}

CFStringRef ABAddressBookSetSaveTransactionIdentifier(CFStringRef result, CFStringRef theString)
{
  if (result)
  {
    v3 = result;
    info = result[11].info;
    if (info)
    {
      CFRelease(info);
    }

    result = 0;
    if (theString)
    {
      result = CFStringCreateCopy(0, theString);
    }

    v3[11].info = result;
  }

  return result;
}

CFStringRef ABAddressBookCopySaveTransactionIdentifier(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 360)) != 0)
  {
    return CFStringCreateCopy(0, v1);
  }

  else
  {
    return 0;
  }
}

uint64_t ABAddressBookSetIgnoresGuardianRestrictions(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = 0x200000;
    }

    else
    {
      v2 = 0;
    }

    *(result + 384) = *(result + 384) & 0xFFDFFFFF | v2;
  }

  return result;
}

uint64_t ABAddressBookSetIgnoresContactProviderRestrictions(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = 0x1000000;
    }

    else
    {
      v2 = 0;
    }

    *(result + 384) = *(result + 384) & 0xFEFFFFFF | v2;
  }

  return result;
}

uint64_t ABAddressBookSetShouldFaultOnPossibleDataLoss(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = 0x2000000;
    }

    else
    {
      v2 = 0;
    }

    *(result + 384) = *(result + 384) & 0xFDFFFFFF | v2;
  }

  return result;
}

CFStringRef ABAddressBookSetClientLoggingIdentifier(CFStringRef result, CFStringRef theString)
{
  if (result)
  {
    v3 = result;
    data = result[11].data;
    if (data)
    {
      CFRelease(data);
    }

    result = 0;
    if (theString)
    {
      result = CFStringCreateCopy(0, theString);
    }

    v3[11].data = result;
  }

  return result;
}

uint64_t ABAddressBookSetSuppressChangeNotifications(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = 0x800000;
    }

    else
    {
      v2 = 0;
    }

    *(result + 384) = *(result + 384) & 0xFF7FFFFF | v2;
  }

  return result;
}

uint64_t ABAddressBookSetUsedByContacts(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = 0x400000;
    }

    else
    {
      v2 = 0;
    }

    *(result + 384) = *(result + 384) & 0xFFBFFFFF | v2;
  }

  return result;
}

BOOL ABAddressBookSave(ABAddressBookRef addressBook, CFErrorRef *error)
{
  if (ABLogAPIUsage())
  {
    v4 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v4);
    v6 = ABLogAddressBook(addressBook);
    _ABLog2(6, "_Bool ABAddressBookSave(ABAddressBookRef, CFErrorRef *)", 662, v5, @"%@", v7, v8, v9, v6);
    CFRelease(v5);
  }

  if (ABAddressBookIsAccessPermitted(error))
  {
    v10 = ABCSave(addressBook);
  }

  else
  {
    v10 = 0;
  }

  if (ABLogAPIUsage())
  {
    v11 = ABLogStringForBool(v10);
    _ABLog2(6, "_Bool ABAddressBookSave(ABAddressBookRef, CFErrorRef *)", 669, @">> ", @"result=%@", v12, v13, v14, v11);
  }

  return v10;
}

BOOL ABAddressBookIsAccessPermitted(CFErrorRef *a1)
{
  v2 = ABTCCIsAccessGranted();
  v3 = v2;
  if (a1 && !v2)
  {
    *a1 = CFErrorCreate(0, @"ABAddressBookErrorDomain", 1, 0);
  }

  return v3 != 0;
}

BOOL ABAddressBookHasUnsavedChanges(ABAddressBookRef addressBook)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogAddressBook(addressBook);
    _ABLog2(6, "_Bool ABAddressBookHasUnsavedChanges(ABAddressBookRef)", 675, v3, @"%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  if (addressBook)
  {
    LODWORD(addressBook) = CPRecordStoreHasUnsavedChanges();
  }

  if (ABLogAPIUsage())
  {
    v8 = ABLogStringForBool(addressBook);
    _ABLog2(6, "_Bool ABAddressBookHasUnsavedChanges(ABAddressBookRef)", 683, @">> ", @"result=%@", v9, v10, v11, v8);
  }

  return addressBook;
}

BOOL ABAddressBookAddRecord(ABAddressBookRef addressBook, ABRecordRef record, CFErrorRef *error)
{
  if (ABLogAPIUsage())
  {
    v6 = _isMainThread();
    v7 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v6);
    v8 = ABLogAddressBook(addressBook);
    _ABLog2(6, "_Bool ABAddressBookAddRecord(ABAddressBookRef, ABRecordRef, CFErrorRef *)", 689, v7, @"%@", v9, v10, v11, v8);
    CFRelease(v7);
  }

  if (ABAddressBookIsAccessPermitted(error))
  {
    v12 = ABCAddRecord(addressBook, record, error);
  }

  else
  {
    v12 = 0;
  }

  if (ABLogAPIUsage())
  {
    v13 = ABLogStringForBool(v12);
    _ABLog2(6, "_Bool ABAddressBookAddRecord(ABAddressBookRef, ABRecordRef, CFErrorRef *)", 696, @">> ", @"result=%@", v14, v15, v16, v13);
  }

  return v12;
}

BOOL ABAddressBookRemoveRecord(ABAddressBookRef addressBook, ABRecordRef record, CFErrorRef *error)
{
  if (ABLogAPIUsage())
  {
    v6 = _isMainThread();
    v7 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v6);
    v8 = ABLogAddressBook(addressBook);
    _ABLog2(6, "_Bool ABAddressBookRemoveRecord(ABAddressBookRef, ABRecordRef, CFErrorRef *)", 702, v7, @"%@", v9, v10, v11, v8);
    CFRelease(v7);
  }

  if (ABAddressBookIsAccessPermitted(error))
  {
    v12 = ABCRemoveRecord(addressBook, record, error);
  }

  else
  {
    v12 = 0;
  }

  if (ABLogAPIUsage())
  {
    v13 = ABLogStringForBool(v12);
    _ABLog2(6, "_Bool ABAddressBookRemoveRecord(ABAddressBookRef, ABRecordRef, CFErrorRef *)", 709, @">> ", @"result=%@", v14, v15, v16, v13);
  }

  return v12;
}

void ABAddressBookSetUniqueIdentifierToNULL(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (ABLogAPIUsage())
  {
    v10 = _isMainThread();
    v11 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v10);
    v12 = ABLogAddressBook(a1);
    _ABLog2(6, "void ABAddressBookSetUniqueIdentifierToNULL(ABAddressBookRef)", 734, v11, @"%@", v13, v14, v15, v12);
    CFRelease(v11);
  }

  v16 = *(a1 + 64);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 64) = 0;
  }

  if (ABLogAPIUsage())
  {

    _ABLog2(6, "void ABAddressBookSetUniqueIdentifierToNULL(ABAddressBookRef)", 742, @">> ", 0, v17, v18, v19, a9);
  }
}

CFURLRef ABAddressBookCopyBundleURL()
{
  v0 = _ABBundle();

  return CFBundleCopyBundleURL(v0);
}

CFStringRef ABAddressBookCopyLocalizedLabel(CFStringRef label)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    _ABLog2(6, "CFStringRef ABAddressBookCopyLocalizedLabel(CFStringRef)", 766, v3, @"label=%@", v4, v5, v6, label);
    CFRelease(v3);
  }

  v7 = ABAddressBookCopyLocalizedLabelAllowingAbbreviations(label, 1);
  if (ABLogAPIUsage())
  {
    _ABLog2(6, "CFStringRef ABAddressBookCopyLocalizedLabel(CFStringRef)", 770, @">> ", @"localizedLabel=%@", v8, v9, v10, v7);
  }

  return v7;
}

const __CFString *ABAddressBookCopyLocalizedLabelAllowingAbbreviations(const __CFString *a1, int a2)
{
  if (ABLogAPIUsage())
  {
    v4 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v4);
    ABLogStringForBool(a2);
    _ABLog2(6, "CFStringRef ABAddressBookCopyLocalizedLabelAllowingAbbreviations(CFStringRef, _Bool)", 776, v5, @"label=%@, allowAbbrevations=%@", v6, v7, v8, a1);
    CFRelease(v5);
  }

  v9 = _ABBundle();
  if (!a2)
  {
    v12 = CFBundleCopyLocalizedString(v9, a1, a1, @"NonAbbreviated");
    goto LABEL_8;
  }

  v10 = CFBundleCopyLocalizedString(v9, a1, @"notFound", @"Localized");
  if (CFStringCompare(v10, @"notFound", 0))
  {
    goto LABEL_9;
  }

  CFRelease(v10);
  v11 = [MEMORY[0x1E69967B8] localizedStringForPostalAddressString:a1 returningNilIfNotFound:0];
  if (v11)
  {
    v12 = CFRetain(v11);
LABEL_8:
    v10 = v12;
LABEL_9:
    if (v10)
    {
      goto LABEL_11;
    }
  }

  v10 = CFRetain(&stru_1F2FE2718);
LABEL_11:
  if (ABLogAPIUsage())
  {
    _ABLog2(6, "CFStringRef ABAddressBookCopyLocalizedLabelAllowingAbbreviations(CFStringRef, _Bool)", 795, @">> ", @"localizedLabel=%@", v13, v14, v15, v10);
  }

  return v10;
}

void *ABAddressBookCopyLocalizedStringsForLanguageArray(void *a1)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogStringForStringArray(a1);
    _ABLog2(6, "CFDictionaryRef ABAddressBookCopyLocalizedStringsForLanguageArray(CFArrayRef)", 801, v3, @"languageArray=%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  if (a1)
  {
    v8 = _ABBundle();
    v9 = CFBundleCopyBundleLocalizations(v8);
    if (v9 && (v10 = v9, v11 = CFBundleCopyLocalizationsForPreferences(v9, a1), CFRelease(v10), v11))
    {
      if (CFArrayGetCount(v11) < 1)
      {
        a1 = 0;
      }

      else
      {
        CFArrayGetValueAtIndex(v11, 0);
        a1 = CFBundleCopyLocalizedStringTableForLocalization();
      }

      CFRelease(v11);
    }

    else
    {
      a1 = 0;
    }
  }

  if (ABDiagnosticsEnabled())
  {
    v12 = ABLogStringForDictionary(a1);
    _ABLog2(7, "CFDictionaryRef ABAddressBookCopyLocalizedStringsForLanguageArray(CFArrayRef)", 824, 0, @"dictionary={\n%@\n}", v13, v14, v15, v12);
  }

  if (ABLogAPIUsage())
  {
    v16 = [a1 count];
    _ABLog2(6, "CFDictionaryRef ABAddressBookCopyLocalizedStringsForLanguageArray(CFArrayRef)", 825, @">> ", @"localized strings count = %ld", v17, v18, v19, v16);
  }

  return a1;
}

void ABAddressBookBeginExclusiveRead(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (ABLogAPIUsage())
  {
    v10 = _isMainThread();
    v11 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v10);
    v12 = ABLogAddressBook(a1);
    _ABLog2(6, "void ABAddressBookBeginExclusiveRead(ABAddressBookRef)", 833, v11, @"%@", v13, v14, v15, v12);
    CFRelease(v11);
  }

  ABCAddressBookBeginExclusiveRead(a1);
  if (ABLogAPIUsage())
  {

    _ABLog2(6, "void ABAddressBookBeginExclusiveRead(ABAddressBookRef)", 835, @">> ", 0, v16, v17, v18, a9);
  }
}

void ABAddressBookEndExclusiveRead(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (ABLogAPIUsage())
  {
    v10 = _isMainThread();
    v11 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v10);
    v12 = ABLogAddressBook(a1);
    _ABLog2(6, "void ABAddressBookEndExclusiveRead(ABAddressBookRef)", 840, v11, @"%@", v13, v14, v15, v12);
    CFRelease(v11);
  }

  ABCAddressBookEndExclusiveRead(a1);
  if (ABLogAPIUsage())
  {

    _ABLog2(6, "void ABAddressBookEndExclusiveRead(ABAddressBookRef)", 842, @">> ", 0, v16, v17, v18, a9);
  }
}

void ABAddressBookProcessAddedRecords(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (ABLogAPIUsage())
  {
    v10 = _isMainThread();
    v11 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v10);
    v12 = ABLogAddressBook(a1);
    _ABLog2(6, "void ABAddressBookProcessAddedRecords(ABAddressBookRef)", 847, v11, @"%@", v13, v14, v15, v12);
    CFRelease(v11);
  }

  ABCProcessAddedRecords(a1);
  if (ABLogAPIUsage())
  {

    _ABLog2(6, "void ABAddressBookProcessAddedRecords(ABAddressBookRef)", 849, @">> ", 0, v16, v17, v18, a9);
  }
}

void ABProcessAddedImages(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (ABLogAPIUsage())
  {
    v10 = _isMainThread();
    v11 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v10);
    v12 = ABLogAddressBook(a1);
    _ABLog2(6, "void ABProcessAddedImages(ABAddressBookRef)", 856, v11, @"%@", v13, v14, v15, v12);
    CFRelease(v11);
  }

  ABCProcessAddedImages(a1);
  if (ABLogAPIUsage())
  {

    _ABLog2(6, "void ABProcessAddedImages(ABAddressBookRef)", 858, @">> ", 0, v16, v17, v18, a9);
  }
}

void ABInvalidateCachedImages(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (ABLogAPIUsage())
  {
    v10 = _isMainThread();
    v11 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v10);
    v12 = ABLogAddressBook(a1);
    _ABLog2(6, "void ABInvalidateCachedImages(ABAddressBookRef)", 865, v11, @"%@", v13, v14, v15, v12);
    CFRelease(v11);
  }

  ABCInvalidateCachedImages(a1);
  if (ABLogAPIUsage())
  {

    _ABLog2(6, "void ABInvalidateCachedImages(ABAddressBookRef)", 867, @">> ", 0, v16, v17, v18, a9);
  }
}

uint64_t ABAddressBookFlushStatementCache(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogAddressBook(a1);
    _ABLog2(6, "void ABAddressBookFlushStatementCache(ABAddressBookRef)", 879, v3, @"%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  result = *(a1 + 16);
  if (result)
  {
    CPRecordStoreGetDatabase();
    result = CPSqliteDatabaseConnectionForWriting();
    if (result)
    {

      return MEMORY[0x1EEDEC8B8]();
    }
  }

  return result;
}

uint64_t ABAddressBookSaveWithConflictPolicy(uint64_t a1, int a2, CFErrorRef *a3)
{
  if (ABLogAPIUsage())
  {
    v6 = _isMainThread();
    v7 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v6);
    v8 = ABLogAddressBook(a1);
    _ABLog2(6, "_Bool ABAddressBookSaveWithConflictPolicy(ABAddressBookRef, ABConflictPolicy, CFErrorRef *)", 894, v7, @"%@, policy=%i, error=%p", v9, v10, v11, v8);
    CFRelease(v7);
  }

  if (ABAddressBookIsAccessPermitted(a3))
  {
    v12 = ABCAddressBookSaveWithConflictPolicy(a1, a2, a3);
  }

  else
  {
    v12 = 0;
  }

  if (ABLogAPIUsage())
  {
    v13 = ABLogStringForBool(v12);
    _ABLog2(6, "_Bool ABAddressBookSaveWithConflictPolicy(ABAddressBookRef, ABConflictPolicy, CFErrorRef *)", 901, @">> ", @"result=%@", v14, v15, v16, v13);
  }

  return v12;
}

CFMutableArrayRef ABAddressBookCopyAllLabels(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogAddressBook(a1);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyAllLabels(ABAddressBookRef)", 907, v3, @"%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  v8 = ABAddressBookCopyAllLabelsForProperty(a1, 0xFFFFFFFFLL);
  if (ABLogAPIUsage())
  {
    v9 = ABLogStringForStringArray(v8);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyAllLabels(ABAddressBookRef)", 909, @">> ", @"labels=%@", v10, v11, v12, v9);
  }

  return v8;
}

CFMutableArrayRef ABAddressBookCopyAllLabelsForProperty(uint64_t a1, uint64_t a2)
{
  if (ABLogAPIUsage())
  {
    v4 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v4);
    v6 = ABLogAddressBook(a1);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyAllLabelsForProperty(ABAddressBookRef, ABPropertyID)", 915, v5, @"%@, property=%i", v7, v8, v9, v6);
    CFRelease(v5);
  }

  v10 = ABCCopyAllLabelsForProperty(a1, a2);
  if (ABLogAPIUsage())
  {
    v11 = ABLogStringForStringArray(v10);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyAllLabelsForProperty(ABAddressBookRef, ABPropertyID)", 917, @">> ", @"labels=%@", v12, v13, v14, v11);
  }

  return v10;
}

void ABAddressBookDeleteLabel(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (ABLogAPIUsage())
  {
    v11 = _isMainThread();
    v12 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v11);
    v13 = ABLogAddressBook(a1);
    _ABLog2(6, "void ABAddressBookDeleteLabel(ABAddressBookRef, CFStringRef)", 923, v12, @"%@, label=%@", v14, v15, v16, v13);
    CFRelease(v12);
  }

  ABCDeleteLabel(a1, a2);
  if (ABLogAPIUsage())
  {

    _ABLog2(6, "void ABAddressBookDeleteLabel(ABAddressBookRef, CFStringRef)", 925, @">> ", 0, v17, v18, v19, a9);
  }
}

void ABAddressBookSetIntegerProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (ABLogAPIUsage())
  {
    v10 = _isMainThread();
    v11 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v10);
    v12 = ABLogAddressBook(a1);
    _ABLog2(6, "void ABAddressBookSetIntegerProperty(ABAddressBookRef, CFStringRef, int)", 942, v11, @"%@, key=%@, value=%i", v13, v14, v15, v12);
    CFRelease(v11);
  }

  CPRecordStoreGetDatabase();
  CPSqliteDatabaseConnectionForReading();
  CPSqliteConnectionSetIntegerForProperty();
  if (ABLogAPIUsage())
  {

    _ABLog2(6, "void ABAddressBookSetIntegerProperty(ABAddressBookRef, CFStringRef, int)", 948, @">> ", 0, v16, v17, v18, a9);
  }
}

uint64_t ABAddressBookCopyValueForProperty(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogAddressBook(a1);
    _ABLog2(6, "CFStringRef ABAddressBookCopyValueForProperty(ABAddressBookRef, CFStringRef)", 953, v3, @"%@, key=%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  CPRecordStoreGetDatabase();
  CPSqliteDatabaseConnectionForReading();
  v8 = CPSqliteConnectionCopyValueForProperty();
  if (ABLogAPIUsage())
  {
    v12 = @"nil";
    if (v8)
    {
      v12 = v8;
    }

    _ABLog2(6, "CFStringRef ABAddressBookCopyValueForProperty(ABAddressBookRef, CFStringRef)", 959, @">> ", @"value=%@", v9, v10, v11, v12);
  }

  return v8;
}

void ABAddressBookSetValueForProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (ABLogAPIUsage())
  {
    v10 = _isMainThread();
    v11 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v10);
    v12 = ABLogAddressBook(a1);
    _ABLog2(6, "void ABAddressBookSetValueForProperty(ABAddressBookRef, CFStringRef, CFStringRef)", 965, v11, @"%@, key=%@, value=%@", v13, v14, v15, v12);
    CFRelease(v11);
  }

  CPRecordStoreGetDatabase();
  CPSqliteDatabaseConnectionForReading();
  CPSqliteConnectionSetValueForProperty();
  if (ABLogAPIUsage())
  {

    _ABLog2(6, "void ABAddressBookSetValueForProperty(ABAddressBookRef, CFStringRef, CFStringRef)", 971, @">> ", 0, v16, v17, v18, a9);
  }
}

uint64_t ABAddressBookGetNextSequenceNumber(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogAddressBook(a1);
    _ABLog2(6, "int ABAddressBookGetNextSequenceNumber(ABAddressBookRef)", 988, v3, @"%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  v8 = ABAddressBookGetSequenceNumber(a1) + 1;
  if (ABLogAPIUsage())
  {
    _ABLog2(6, "int ABAddressBookGetNextSequenceNumber(ABAddressBookRef)", 990, @">> ", @"nextSequenceNumber=%i", v9, v10, v11, v8);
  }

  return v8;
}

uint64_t ABAddressBookGetImagesSequenceNumber(const __CFString *a1)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogAddressBook(a1);
    _ABLog2(6, "int ABAddressBookGetImagesSequenceNumber(ABAddressBookRef)", 996, v3, @"%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  ABCAddressBookGetImageStore(a1);
  SequenceNumber = CPRecordStoreGetSequenceNumber();
  if (ABLogAPIUsage())
  {
    _ABLog2(6, "int ABAddressBookGetImagesSequenceNumber(ABAddressBookRef)", 1001, @">> ", @"sequenceNumber=%i", v9, v10, v11, SequenceNumber);
  }

  return SequenceNumber;
}

__CFDictionary *ABAddressBookCopyChangesSinceSequenceNumber(uint64_t a1, int a2)
{
  if (ABLogAPIUsage())
  {
    v4 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v4);
    v6 = ABLogAddressBook(a1);
    _ABLog2(6, "CFDictionaryRef ABAddressBookCopyChangesSinceSequenceNumber(ABAddressBookRef, int)", 1014, v5, @"%@, sequenceNumber=%i", v7, v8, v9, v6);
    CFRelease(v5);
  }

  v10 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  valuePtr = ABAddressBookGetIntegerProperty(a1);
  if (valuePtr > a2)
  {
    v12 = CFNumberCreate(v10, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(Mutable, @"ABChangesToLabels", v12);
    CFRelease(v12);
  }

  valuePtr = ABAddressBookGetIntegerProperty(a1);
  if (valuePtr > a2)
  {
    v13 = CFNumberCreate(v10, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(Mutable, @"ABChangesToPhoneLabels", v13);
    CFRelease(v13);
  }

  valuePtr = ABAddressBookGetIntegerProperty(a1);
  if (valuePtr > a2)
  {
    v14 = CFNumberCreate(v10, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(Mutable, @"ABChangesToEmailLabels", v14);
    CFRelease(v14);
  }

  valuePtr = ABAddressBookGetIntegerProperty(a1);
  if (valuePtr > a2)
  {
    v15 = CFNumberCreate(v10, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(Mutable, @"ABChangesToNames", v15);
    CFRelease(v15);
  }

  valuePtr = ABAddressBookGetIntegerProperty(a1);
  if (valuePtr > a2)
  {
    v16 = CFNumberCreate(v10, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(Mutable, @"ABChangesToBirthdays", v16);
    CFRelease(v16);
  }

  valuePtr = ABAddressBookGetIntegerProperty(a1);
  if (valuePtr > a2)
  {
    v17 = CFNumberCreate(v10, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(Mutable, @"ABChangesToMeCards", v17);
    CFRelease(v17);
  }

  if (ABLogAPIUsage())
  {
    v18 = ABLogStringForDictionary(Mutable);
    _ABLog2(6, "CFDictionaryRef ABAddressBookCopyChangesSinceSequenceNumber(ABAddressBookRef, int)", 1060, @">> ", @"changes={\n%@\n}", v19, v20, v21, v18);
  }

  return Mutable;
}

uint64_t ABAddressBookForceResetSortData(uint64_t a1)
{
  CPRecordStoreGetDatabase();
  result = CPSqliteDatabaseConnectionForReading();
  if (result)
  {
    v3 = [MEMORY[0x1E695DF00] date];
    v4 = v3;
    if (ABAddressBookForceResetSortData_lastForceResetAttempt)
    {
      result = [v3 timeIntervalSinceDate:?];
      if (v5 < 600.0)
      {
        return result;
      }

      v6 = ABAddressBookForceResetSortData_lastForceResetAttempt;
    }

    else
    {
      v6 = 0;
    }

    ABAddressBookForceResetSortData_lastForceResetAttempt = v4;
    CPSqliteConnectionSetIntegerForProperty();

    return ABCStartSortDataReset(a1);
  }

  return result;
}

void ABAddressBookResetSortDataInProcessIfNeeded()
{
  v0 = ABCAddressBookCopyDBDirectory();
  v1 = ABCCreateAddressBookWithDatabaseDirectoryAndForceInProcessMigrationInProcessLinkingAndResetSortKeys(v0, 0, 0, 0);
  CFRelease(v0);
  if (v1)
  {
    if ((ABCIsSortDataValid(v1, 0) & 1) == 0)
    {
      ABCResetSortData(v1, 100);
    }

    CFRelease(v1);
  }
}

BOOL ABAddressBookSetMeCard(const void *a1)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogStringForPerson(a1);
    _ABLog2(6, "_Bool ABAddressBookSetMeCard(ABRecordRef)", 1197, v3, @"me=%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  v8 = ABCGetAddressBookForRecord();
  v9 = ABAddressBookSetMe(v8, a1);
  if (ABLogAPIUsage())
  {
    v10 = ABLogStringForBool(v9);
    _ABLog2(6, "_Bool ABAddressBookSetMeCard(ABRecordRef)", 1202, @">> ", @"result=%@", v11, v12, v13, v10);
  }

  return v9;
}