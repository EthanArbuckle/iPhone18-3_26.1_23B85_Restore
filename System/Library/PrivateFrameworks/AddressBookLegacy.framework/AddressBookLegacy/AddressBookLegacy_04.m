uint64_t ABCAddressBookBeginExclusiveRead(uint64_t result)
{
  if (result)
  {
    result = *(result + 16);
    if (result)
    {
      CPRecordStoreGetDatabase();
      v1 = CPSqliteDatabaseConnectionForWriting();

      return MEMORY[0x1EEDEC880](v1);
    }
  }

  return result;
}

uint64_t ABCAddressBookEndExclusiveRead(uint64_t result)
{
  if (result)
  {
    result = *(result + 16);
    if (result)
    {
      CPRecordStoreGetDatabase();
      CPSqliteDatabaseConnectionForWriting();

      return CPSqliteConnectionRollback();
    }
  }

  return result;
}

BOOL ABAddressBookIsCallbackRegistered(uint64_t a1, const void *a2, const void *a3, const void *a4)
{
  if (!a1)
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 80));
  if (a2 && (v8 = *(a1 + 144)) != 0 && ((Count = CFArrayGetCount(v8), a3) ? (v10 = a3) : (v10 = *MEMORY[0x1E695E738]), Count >= 1))
  {
    v11 = Count;
    v12 = 1;
    do
    {
      v13 = CFArrayGetValueAtIndex(*(a1 + 144), v12 - 1) == a2 && CFArrayGetValueAtIndex(*(a1 + 152), v12 - 1) == v10 && CFArrayGetValueAtIndex(*(a1 + 160), v12 - 1) == a4;
      if (v12 >= v11)
      {
        break;
      }

      ++v12;
    }

    while (!v13);
  }

  else
  {
    v13 = 0;
  }

  pthread_mutex_unlock((a1 + 80));
  return v13;
}

void ABAddressBookUnregisterExternalChangeCallback(ABAddressBookRef addressBook, ABExternalChangeCallback callback, void *context)
{
  if (ABLogAPIUsage())
  {
    v25 = _isMainThread();
    v7 = OUTLINED_FUNCTION_11(v25, v6, @"<< Main thread:%@ | ");
    ABLogAddressBook(addressBook);
    v8 = OUTLINED_FUNCTION_7();
    _ABLog2(v8, v9, 2091, v7, v10, v11, v12, v13, v25);
    CFRelease(v7);
  }

  if (addressBook)
  {
    pthread_mutex_lock((addressBook + 80));
    v14 = *(addressBook + 18);
    if (v14)
    {
      Count = CFArrayGetCount(v14);
      if (Count >= 1)
      {
        if (context)
        {
          v16 = context;
        }

        else
        {
          v16 = *MEMORY[0x1E695E738];
        }

        v17 = Count + 1;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(addressBook + 18), v17 - 2);
          if (CFArrayGetValueAtIndex(*(addressBook + 19), v17 - 2) == v16 && ValueAtIndex == callback)
          {
            break;
          }

          if (--v17 <= 1)
          {
            goto LABEL_17;
          }
        }

        v20 = CFArrayGetValueAtIndex(*(addressBook + 20), v17 - 2);
        releaseThreadHandle(v20);
        CFArrayRemoveValueAtIndex(*(addressBook + 18), v17 - 2);
        CFArrayRemoveValueAtIndex(*(addressBook + 19), v17 - 2);
        CFArrayRemoveValueAtIndex(*(addressBook + 20), v17 - 2);
      }

LABEL_17:
      if (!CFArrayGetCount(*(addressBook + 18)))
      {
        LocalCenter = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterRemoveObserver(LocalCenter, addressBook, @"ABCDataBaseChangedExternallyNotification", 0);
      }
    }

    pthread_mutex_unlock((addressBook + 80));
    if (ABLogAPIUsage())
    {

      _ABLog2(6, "void ABAddressBookUnregisterExternalChangeCallback(ABAddressBookRef, ABExternalChangeCallback, void *)", 2129, @">> ", 0, v22, v23, v24, v27);
    }
  }
}

void ABAddressBookRevert(ABAddressBookRef addressBook)
{
  if (ABLogAPIUsage())
  {
    v10 = _isMainThread();
    v3 = OUTLINED_FUNCTION_11(v10, v2, @"<< Main thread:%@ | ");
    ABLogAddressBook(addressBook);
    v4 = OUTLINED_FUNCTION_7();
    _ABLog2(v4, v5, 2240, v3, v6, v7, v8, v9, v10);
    CFRelease(v3);
  }

  if (*(addressBook + 2))
  {
    CPRecordStoreGetDatabase();
    if (CPSqliteDatabaseConnectionForWriting())
    {
      CPSqliteConnectionRollback();
    }

    CPRecordStoreRevert();
  }

  if (*(addressBook + 3))
  {
    CPRecordStoreGetDatabase();
    if (CPSqliteDatabaseConnectionForWriting())
    {
      CPSqliteConnectionRollback();
    }

    CPRecordStoreRevert();
  }

  ABCAddressBookFlushPhoneCache(addressBook);
  OUTLINED_FUNCTION_5();
}

uint64_t _prepareSourceForDeletion(uint64_t a1, ABRecordRef record)
{
  RecordID = ABRecordGetRecordID(record);
  if (RecordID == ABAddressBookGetIntegerProperty(a1))
  {
    ABAddressBookSetIntegerProperty(a1, @"MeSourceID", 0xFFFFFFFFLL, v4, v5, v6, v7, v8, v11);
  }

  v9 = OUTLINED_FUNCTION_6();
  result = _ABAddressBookDeleteAllRecordsWithStore(v9);
  *(a1 + 384) |= 0x100000u;
  return result;
}

CFArrayRef ABCGroupCopyArrayOfAllMembersWithSortOrdering(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  if (ABCRecordGetValue(a1) - 1 != a2)
  {
    CPRecordInitializeProperty();
    CPRecordUnloadProperty();
  }

  Value = ABCRecordGetValue(a1);
  if (!Value)
  {
    return 0;
  }

  return ABCMultiValueCopyValues(Value);
}

CFArrayRef ABCGroupCopyArrayFromProperty(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  Value = ABCRecordGetValue(a1);
  if (!Value)
  {
    return 0;
  }

  return ABCMultiValueCopyValues(Value);
}

uint64_t ABCGroupAddMemberOrSubgroup(const void *a1, const void *a2)
{
  if (ABRecordGetRecordID(a1) == -1)
  {
    goto LABEL_11;
  }

  if (ABRecordGetPolicy(a1))
  {
    ABCGetAddressBookForRecord();
    v4 = OUTLINED_FUNCTION_0_0();
    if (!ABPolicyShouldAddMember(v4, v5, a1, a2))
    {
      goto LABEL_11;
    }
  }

  v6 = ABGroupCopySource(a1);
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = v6;
  if (ABCRecordGetRecordType() == 257)
  {
    v8 = ABPersonCopySource(a2);
  }

  else
  {
    v8 = ABGroupCopySource(a2);
  }

  v9 = v8;
  if (v8)
  {
    CFRelease(v8);
  }

  CFRelease(v7);
  if (v7 == v9)
  {
    v13 = OUTLINED_FUNCTION_3_0();
    Value = ABCRecordGetValue(v13);
    Mutable = Value;
    if (Value || (Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0])) != 0)
    {
      Count = CFArrayGetCount(Mutable);
      v17 = OUTLINED_FUNCTION_5_0(Count);
      v11 = v17 != -1;
      if (v17 == -1)
      {
        CFArrayAppendValue(Mutable, a2);
        v18 = OUTLINED_FUNCTION_3_0();
        ABCRecordSetValue(v18, v19, Mutable);
      }

      if (!Value)
      {
        CFRelease(Mutable);
      }

      v20 = OUTLINED_FUNCTION_2_0();
      v21 = ABCRecordGetValue(v20);
      if (v21)
      {
        v22 = v21;
        v23 = CFArrayGetCount(v21);
        if ((OUTLINED_FUNCTION_4_0(v23) & 0x8000000000000000) == 0)
        {
          v24 = OUTLINED_FUNCTION_0_0();
          CFArrayRemoveValueAtIndex(v24, v25);
          v26 = OUTLINED_FUNCTION_2_0();
          ABCRecordSetValue(v26, v27, v22);
        }
      }
    }

    else
    {
      v11 = 0;
    }

    v10 = 1;
  }

  else
  {
LABEL_11:
    v10 = 0;
    v11 = 0;
  }

  return v10 & !v11;
}

uint64_t ABCGroupRemoveMemberAndReturnError(const void *a1, const void *a2)
{
  if (ABRecordGetPolicy(a1))
  {
    ABCGetAddressBookForRecord();
    v4 = OUTLINED_FUNCTION_0_0();
    if (!ABPolicyShouldRemoveMember(v4, v5, a1, a2))
    {
      v20 = 0;
      v11 = 0;
      return v20 & !v11;
    }
  }

  v6 = OUTLINED_FUNCTION_3_0();
  Value = ABCRecordGetValue(v6);
  Mutable = Value;
  if (Value || (Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0])) != 0)
  {
    Count = CFArrayGetCount(Mutable);
    v10 = OUTLINED_FUNCTION_5_0(Count);
    v11 = v10 != -1;
    if (v10 == -1)
    {
      CFArrayAppendValue(Mutable, a2);
      v22 = OUTLINED_FUNCTION_3_0();
      ABCRecordSetValue(v22, v23, Mutable);
      if (Value)
      {
        goto LABEL_7;
      }
    }

    else if (Value)
    {
LABEL_7:
      v12 = OUTLINED_FUNCTION_2_0();
      v13 = ABCRecordGetValue(v12);
      if (v13)
      {
        v14 = v13;
        v15 = CFArrayGetCount(v13);
        if ((OUTLINED_FUNCTION_4_0(v15) & 0x8000000000000000) == 0)
        {
          v16 = OUTLINED_FUNCTION_0_0();
          CFArrayRemoveValueAtIndex(v16, v17);
          v18 = OUTLINED_FUNCTION_2_0();
          ABCRecordSetValue(v18, v19, v14);
        }
      }

      goto LABEL_10;
    }

    CFRelease(Mutable);
    goto LABEL_7;
  }

  v11 = 0;
LABEL_10:
  v20 = 1;
  return v20 & !v11;
}

uint64_t ABCCopyArrayOfAllGroupsInSource(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (!a2 || ABCRecordGetUniqueId(a2) == -1)
    {

      return CPRecordStoreCopyAllInstancesOfClass();
    }

    else
    {
      return CPRecordStoreCopyAllInstancesOfClassWhereWithBindBlock();
    }
  }

  return result;
}

uint64_t ABCCopyArrayOfAllGroups(uint64_t result)
{
  if (result)
  {
    return CPRecordStoreCopyAllInstancesOfClass();
  }

  return result;
}

uint64_t ABCGetGroupCount(uint64_t a1, ABRecordRef record)
{
  CountOfInstancesOfClassWhere = a1;
  if (a1)
  {
    if (!record || (RecordID = ABRecordGetRecordID(record), RecordID == -1))
    {
      v4 = 0;
    }

    else
    {
      v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"StoreID = %i", RecordID);
    }

    CountOfInstancesOfClassWhere = CPRecordStoreGetCountOfInstancesOfClassWhere();
    if (v4)
    {
      CFRelease(v4);
    }
  }

  return CountOfInstancesOfClassWhere;
}

uint64_t loadMembersAndSubgroups(uint64_t result, int a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    result = ABCRecordGetValue(result);
    if (v4)
    {
      if (a2)
      {
        result = CPSqliteConnectionStatementForSQL();
        if (result)
        {
          v5 = result;
          Mutable = ABCMultiValueCreateMutable(2);
          if (Mutable)
          {
            v9 = Mutable;
            ABCGetAddressBookForRecord();
            v7 = *(v5 + 8);
            ID = CPRecordGetID();
            sqlite3_bind_int(v7, 1, ID);
            CPSqliteStatementSendResults();
            CPSqliteStatementReset();
            ABCRecordSetContents();
            CFRelease(v9);
          }

          return CPSqliteDatabaseReleaseSqliteStatement();
        }
      }
    }
  }

  return result;
}

const __CFArray *saveAddedMembersAndSubgroups(const __CFArray *result, int a2, uint64_t a3)
{
  if (result)
  {
    if (a2)
    {
      if (a3)
      {
        result = ABCRecordGetValue(result);
        if (result)
        {
          v3 = result;
          Count = CFArrayGetCount(result);
          v5 = CPSqliteConnectionStatementForSQL();
          if (v5)
          {
            v6 = v5;
            if (Count >= 1)
            {
              for (i = 0; i != Count; ++i)
              {
                CFArrayGetValueAtIndex(v3, i);
                CPRecordGetID();
                v8 = OUTLINED_FUNCTION_1_0();
                sqlite3_bind_int(v8, 1, v9);
                v10 = *(v6 + 8);
                v11 = ABCPersonClass != CPRecordGetClass();
                sqlite3_bind_int(v10, 2, v11);
                CPRecordGetID();
                v12 = OUTLINED_FUNCTION_1_0();
                sqlite3_bind_int(v12, 3, v13);
                CPSqliteStatementPerform();
                CPSqliteStatementReset();
              }
            }

            CPSqliteDatabaseReleaseSqliteStatement();
          }

          CPRecordUnloadProperty();
          CPRecordUnloadProperty();
          CPRecordUnloadProperty();

          return CPRecordUnloadProperty();
        }
      }
    }
  }

  return result;
}

const __CFArray *saveRemovedMembersAndSubgroups(const __CFArray *result, int a2, uint64_t a3)
{
  if (result)
  {
    if (a2)
    {
      if (a3)
      {
        result = ABCRecordGetValue(result);
        if (result)
        {
          v3 = result;
          Count = CFArrayGetCount(result);
          if (CPSqliteConnectionStatementForSQL())
          {
            if (Count >= 1)
            {
              for (i = 0; i != Count; ++i)
              {
                CFArrayGetValueAtIndex(v3, i);
                CPRecordGetID();
                v6 = OUTLINED_FUNCTION_1_0();
                sqlite3_bind_int(v6, 1, v7);
                CPRecordGetID();
                v8 = OUTLINED_FUNCTION_1_0();
                sqlite3_bind_int(v8, 2, v9);
                CPSqliteStatementPerform();
                CPSqliteStatementReset();
              }
            }

            CPSqliteDatabaseReleaseSqliteStatement();
          }

          CPRecordUnloadProperty();
          CPRecordUnloadProperty();
          CPRecordUnloadProperty();

          return CPRecordUnloadProperty();
        }
      }
    }
  }

  return result;
}

BOOL ABCImageStoreRemoveAvatarRecipeDataForRecord(uint64_t a1, _BOOL8 a2)
{
  v2 = a2;
  if (a2)
  {
    CPRecordStoreGetDatabase();
    v4 = CPSqliteDatabaseStatementForReading();
    ABRegulatoryLogReadContactsData(a1);
    if (v4 && (v5 = *(v4 + 8)) != 0)
    {
      ID = CPRecordGetID();
      sqlite3_bind_int(v5, 1, ID);
      do
      {
        CPSqliteStatementIntegerResult();
        OUTLINED_FUNCTION_0_1();
        if (!v8)
        {
          v2 = v7 == 101;
          goto LABEL_10;
        }

        CPRecordStoreRemoveRecordOfClassWithUID();
        OUTLINED_FUNCTION_0_1();
      }

      while (v8);
      v2 = 1;
LABEL_10:
      CPSqliteStatementReset();
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t ABCImageStoreRemoveImagesForRecord(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a2)
  {
    return 0;
  }

  CPRecordStoreGetDatabase();
  v6 = CPSqliteDatabaseStatementForReading();
  ABRegulatoryLogReadContactsData(a1);
  if (v6)
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      ID = CPRecordGetID();
      sqlite3_bind_int(v7, 1, ID);
      if (a4 != -1)
      {
        sqlite3_bind_int(*(v6 + 8), 2, a4);
      }

      do
      {
        CPSqliteStatementIntegerResult();
        OUTLINED_FUNCTION_0_1();
        if (!v10)
        {
          v7 = v9 == 101;
          goto LABEL_11;
        }

        CPRecordStoreRemoveRecordOfClassWithUID();
        OUTLINED_FUNCTION_0_1();
      }

      while (v10);
      v7 = 1;
LABEL_11:
      CPSqliteStatementReset();
    }
  }

  else
  {
    v7 = 0;
  }

  if (a4 == -1)
  {
    v12 = CPSqliteDatabaseStatementForReading();
    ABRegulatoryLogReadContactsData(a1);
    if (v12)
    {
      v13 = *(v12 + 8);
      if (v13)
      {
        v14 = CPRecordGetID();
        sqlite3_bind_int(v13, 1, v14);
        CPSqliteStatementIntegerResult();
        v7 = 0;
        CPSqliteStatementReset();
      }
    }
  }

  return v7;
}

_OWORD *ABCMultiValueCreate(int a1)
{
  if (!a1)
  {
    return 0;
  }

  pthread_once(&kABCMultiValueRegisterClass, ABCMultiValueRegisterClass);
  result = _CFRuntimeCreateInstance();
  if (result)
  {
    result[2] = 0u;
    result[3] = 0u;
    result[1] = 0u;
    *(result + 4) = a1;
  }

  return result;
}

CFArrayRef *ABCMultiValueCopyLabelAtIndex(CFArrayRef *result, CFIndex a2)
{
  if (result)
  {
    v3 = result;
    result = 0;
    if ((a2 & 0x8000000000000000) == 0)
    {
      if (v3[4])
      {
        if (CFArrayGetCount(v3[4]) <= a2)
        {
          return 0;
        }

        else
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v3[4], a2);
          result = 0;
          if (ValueAtIndex)
          {
            if (*MEMORY[0x1E695E738] != ValueAtIndex)
            {
              CFRetain(ValueAtIndex);
              return ValueAtIndex;
            }
          }
        }
      }
    }
  }

  return result;
}

const __CFArray *ABCMultiValueGetLabelAtIndex(const __CFArray *result, CFIndex a2)
{
  if (result)
  {
    v2 = result;
    result = *(result + 4);
    if (result)
    {
      if (CFArrayGetCount(result) <= a2)
      {
        return 0;
      }

      else
      {
        result = CFArrayGetValueAtIndex(*(v2 + 4), a2);
        if (*MEMORY[0x1E695E738] == result)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

CFArrayRef *ABCMultiValueCopyUUIDAtIndex(CFArrayRef *result, CFIndex a2)
{
  if (result)
  {
    v3 = result;
    result = 0;
    if ((a2 & 0x8000000000000000) == 0)
    {
      if (v3[6])
      {
        if (CFArrayGetCount(v3[6]) <= a2)
        {
          return 0;
        }

        else
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v3[6], a2);
          result = 0;
          if (ValueAtIndex)
          {
            if (*MEMORY[0x1E695E738] != ValueAtIndex)
            {
              CFRetain(ValueAtIndex);
              return ValueAtIndex;
            }
          }
        }
      }
    }
  }

  return result;
}

void *_copyMultivalue(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = ABCMultiValueCreate(*(a1 + 16));
  v4 = v2;
  if (v2)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v2 = OUTLINED_FUNCTION_0_2(v2, v3, v5);
      v4[5] = v2;
    }

    v6 = *(a1 + 24);
    if (v6)
    {
      v2 = OUTLINED_FUNCTION_0_2(v2, v3, v6);
      v4[3] = v2;
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      v2 = OUTLINED_FUNCTION_0_2(v2, v3, v7);
      v4[4] = v2;
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      v4[6] = OUTLINED_FUNCTION_0_2(v2, v3, v8);
    }

    v9 = *(a1 + 56);
    if (v9)
    {
      *(v4 + 14) = v9;
    }
  }

  return v4;
}

_OWORD *ABCMultiValueCreateMutable(int a1)
{
  if (!a1)
  {
    return 0;
  }

  result = ABCMultiValueCreate(a1);
  if (result)
  {
    *(result + 60) |= 1u;
  }

  return result;
}

void *ABCMultiValueCreateMutableCopy(void *result)
{
  if (result)
  {
    result = _copyMultivalue(result);
    if (result)
    {
      *(result + 60) |= 1u;
    }
  }

  return result;
}

__CFArray *ABCMultiValueAdd(CFMutableArrayRef *a1, void *value, const void *a3, const __CFString *a4, int *a5)
{
  if (!a1 || !value)
  {
    return 0;
  }

  v10 = a1[5];
  if (v10)
  {
    Count = CFArrayGetCount(v10);
  }

  else
  {
    Count = 0;
  }

  return ABCMultiValueInsertAndCreateIdentifier(a1, value, a3, Count, a4, a5, 1);
}

__CFArray *ABCMultiValueInsertAndCreateIdentifier(CFMutableArrayRef *a1, void *value, const void *a3, CFIndex idx, CFStringRef a5, int *a6, int a7)
{
  result = 0;
  if (a1)
  {
    if (value)
    {
      v15 = MEMORY[0x1E695E480];
      if (a1[5] || (result = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]), (a1[5] = result) != 0))
      {
        if (a1[4] || (result = CFArrayCreateMutable(*v15, 0, MEMORY[0x1E695E9C0]), (a1[4] = result) != 0))
        {
          if (a1[3] || (result = CFArrayCreateMutable(*v15, 0, 0), (a1[3] = result) != 0))
          {
            if (a1[6] || (result = CFArrayCreateMutable(*v15, 0, MEMORY[0x1E695E9C0]), (a1[6] = result) != 0))
            {
              if (!a6 || a7)
              {
                v17 = a1[5];
                if (v17 && (Count = CFArrayGetCount(v17), Count >= 1))
                {
                  v19 = Count;
                  v20 = 0;
                  v16 = 0;
                  do
                  {
                    IdentifierAtIndex = ABCMultiValueGetIdentifierAtIndex(a1, v20);
                    if (IdentifierAtIndex >= v16)
                    {
                      v16 = IdentifierAtIndex + 1;
                    }

                    ++v20;
                  }

                  while (v19 != v20);
                  if (!a6)
                  {
                    goto LABEL_22;
                  }
                }

                else
                {
                  v16 = 0;
                  if (!a6)
                  {
                    goto LABEL_22;
                  }
                }

                *a6 = v16;
              }

              else
              {
                v16 = *a6;
              }

LABEL_22:
              if (a5)
              {
                v22 = 0;
              }

              else
              {
                v23 = *v15;
                v22 = CFUUIDCreate(*v15);
                if (v22)
                {
                  a5 = CFUUIDCreateString(v23, v22);
                  CFRelease(v22);
                  v22 = a5;
                }

                else
                {
                  a5 = 0;
                }
              }

              CFArrayInsertValueAtIndex(a1[5], idx, value);
              if (a3)
              {
                v24 = a3;
              }

              else
              {
                v24 = *MEMORY[0x1E695E738];
              }

              CFArrayInsertValueAtIndex(a1[4], idx, v24);
              CFArrayInsertValueAtIndex(a1[3], idx, v16);
              CFArrayInsertValueAtIndex(a1[6], idx, a5);
              if (v22)
              {
                CFRelease(v22);
              }

              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t ABCMultiValueRemove(uint64_t result, CFIndex a2)
{
  if (result)
  {
    v2 = result;
    result = *(result + 40);
    if (result)
    {
      if (CFArrayGetCount(result) <= a2)
      {
        return 0;
      }

      else
      {
        if (*(v2 + 56) == CFArrayGetValueAtIndex(*(v2 + 24), a2))
        {
          *(v2 + 56) = 0;
        }

        CFArrayRemoveValueAtIndex(*(v2 + 24), a2);
        CFArrayRemoveValueAtIndex(*(v2 + 32), a2);
        CFArrayRemoveValueAtIndex(*(v2 + 40), a2);
        CFArrayRemoveValueAtIndex(*(v2 + 48), a2);
        return 1;
      }
    }
  }

  return result;
}

uint64_t ABCMultiValueSetPrimaryIdentifier(uint64_t result, int a2)
{
  if (result)
  {
    v3 = result;
    result = 0;
    if (a2)
    {
      v4 = *(v3 + 24);
      if (v4)
      {
        v5.length = CFArrayGetCount(*(v3 + 24));
        v5.location = 0;
        if (CFArrayGetFirstIndexOfValue(v4, v5, a2) == -1)
        {
          return 0;
        }

        else
        {
          *(v3 + 56) = a2;
          return 1;
        }
      }
    }
  }

  return result;
}

void ABCMultiValueShow(uint64_t a1)
{
  if (a1)
  {
    v2 = ABCSingleValueType(*(a1 + 16));
    v3 = ABCCallBacksForType(v2);
    v4 = *(a1 + 40);
    if (v4)
    {
      Count = CFArrayGetCount(v4);
      if (Count >= 1)
      {
        v6 = Count;
        v7 = 0;
        v8 = MEMORY[0x1E69E9848];
        do
        {
          v9 = ABCMultiValueCopyLabelAtIndex(a1, v7);
          v10 = ABCMultiValueCopyValueAtIndex(a1, v7);
          if (v9)
          {
            v11 = v9;
          }

          else
          {
            v11 = @"(NULL)";
          }

          CFShow(v11);
          fwrite(": ", 2uLL, 1uLL, *v8);
          (v3[2])(v10);
          fputc(10, *v8);
          if (v9)
          {
            CFRelease(v9);
          }

          v12 = v3[1];
          if (v12)
          {
            (v12)(v10);
          }

          ++v7;
        }

        while (v6 != v7);
      }
    }
  }
}

const __CFArray *ABCMultiValueBatchLoad(const __CFArray *result, int a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    result = CFArrayGetCount(result);
    if (result)
    {
      if (*(a3 + 16))
      {
        CFArrayGetValueAtIndex(v5, 0);
        CPRecordStoreGetDatabase();
        result = CPSqliteDatabaseConnectionForWriting();
        if (result)
        {
          v6 = result;
          v7 = *(CPRecordGetPropertyDescriptor() + 32);

          return ABCDBContextFetchMultiValuePropertyIntoRecords(v6, v5, a2, v7);
        }
      }
    }
  }

  return result;
}

void ABCMultiValueDestroy(void *a1)
{
  if (a1)
  {
    v2 = a1[4];
    if (v2)
    {
      CFRelease(v2);
      a1[4] = 0;
    }

    v3 = a1[3];
    if (v3)
    {
      CFRelease(v3);
      a1[3] = 0;
    }

    v4 = a1[5];
    if (v4)
    {
      CFRelease(v4);
      a1[5] = 0;
    }

    v5 = a1[6];
    if (v5)
    {
      CFRelease(v5);
      a1[6] = 0;
    }
  }
}

__CFString *ABCMultiValueCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (a1)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      Count = CFArrayGetCount(v3);
      CFStringAppendFormat(Mutable, 0, @"ABMultiValueRef %p with %ld value(s)\n", a1, Count);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          v6 = *(a1 + 32);
          if (v6)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
          }

          else
          {
            ValueAtIndex = @"<NULL>";
          }

          v8 = CFArrayGetValueAtIndex(*(a1 + 40), i);
          CFStringAppendFormat(Mutable, 0, @"    %ld: %@ (%p) - %@ (%p)\n", i, ValueAtIndex, ValueAtIndex, v8, v8);
        }
      }
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"ABMultiValueRef %p with %ld value(s)\n", a1, 0);
    }
  }

  return Mutable;
}

CFArrayRef ABCCopyArrayOfAllPeopleInSourceWithSortOrdering(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    return 0;
  }

  if (a2)
  {
    UniqueId = ABCRecordGetUniqueId(a2);
  }

  else
  {
    UniqueId = -1;
  }

  v5 = MEMORY[0x1E695E480];
  if ((UniqueId & a3) == 0xFFFFFFFF)
  {
    v9 = CPRecordStoreCopyAllInstancesOfClass();
    if (!v9)
    {
      return CFArrayCreate(*v5, 0, 0, 0);
    }

    return v9;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v7 = Mutable;
  if (UniqueId != -1)
  {
    CFStringAppend(Mutable, @"WHERE StoreID = ? ");
  }

  if (a3 == -2)
  {
    v8 = @" ORDER BY ROWID";
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_17;
    }

    v8 = @" ORDER BY LastSortLanguageIndex, LastSortSection, LastSort";
  }

  else
  {
    v8 = @" ORDER BY FirstSortLanguageIndex, FirstSortSection, FirstSort";
  }

  CFStringAppend(v7, v8);
LABEL_17:
  v9 = CPRecordStoreCopyAllInstancesOfClassWhereWithBindBlock();
  CFRelease(v7);
  if (!v9)
  {
    return CFArrayCreate(*v5, 0, 0, 0);
  }

  return v9;
}

uint64_t ABCCopyArrayOfPeopleAtOffsetIncludingOnlyPreferredNamePeople(uint64_t a1, int a2, int a3, int a4, int a5)
{
  if (!a1)
  {
    return 0;
  }

  SelectPrefixFromRecordDescriptor = CPRecordStoreCreateSelectPrefixFromRecordDescriptor();
  v11 = SelectPrefixFromRecordDescriptor;
  if (a5)
  {
    CFStringAppend(SelectPrefixFromRecordDescriptor, @" WHERE IsPreferredName = 1");
  }

  v12 = a2 ? @" ORDER BY LastSortLanguageIndex, LastSortSection, LastSort LIMIT ? OFFSET ?" : @" ORDER BY FirstSortLanguageIndex, FirstSortSection, FirstSort LIMIT ? OFFSET ?";
  CFStringAppend(v11, v12);
  CPRecordStoreGetDatabase();
  v13 = CPSqliteDatabaseStatementForReading();
  ABRegulatoryLogReadContactsData(a1);
  CFRelease(v11);
  if (!v13)
  {
    return 0;
  }

  v14 = *(v13 + 8);
  if (!v14)
  {
    return 0;
  }

  sqlite3_bind_int(v14, 1, a4);
  sqlite3_bind_int(*(v13 + 8), 2, a3 & ~(a3 >> 31));
  v15 = CPRecordStoreProcessStatement();
  CPSqliteStatementReset();
  return v15;
}

__CFArray *ABCCopyArrayOfKeyboardAutoCorrectionStrings(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogAddressBook(a1);
    _ABLog2(6, "CFArrayRef ABCCopyArrayOfKeyboardAutoCorrectionStrings(ABCAddressBookRef)", 1014, v3, @"%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  if (!a1)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    CPRecordStoreGetDatabase();
    v9 = CPSqliteDatabaseStatementForReading();
    ABRegulatoryLogReadContactsData(a1);
    if (v9)
    {
      v10 = *(v9 + 8);
      if (v10)
      {
        if (sqlite3_step(v10) == 100)
        {
          v11 = 0;
          while (1)
          {
            if (sqlite3_column_type(*(v9 + 8), v11) != 5)
            {
              v12 = sqlite3_column_text(*(v9 + 8), v11);
              if (v12)
              {
                v13 = OUTLINED_FUNCTION_0_3(v12);
                CFArrayAppendValue(Mutable, v13);
                CFRelease(v13);
              }
            }

            if (++v11 == 6)
            {
              v11 = 0;
              if (sqlite3_step(*(v9 + 8)) != 100)
              {
                break;
              }
            }
          }
        }

        CPSqliteStatementReset();
        CPSqliteDatabaseReleaseSqliteStatement();
      }
    }
  }

  return Mutable;
}

__CFArray *ABAddressBookCopyArrayOfAllNamePhoneticPairs(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogAddressBook(a1);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyArrayOfAllNamePhoneticPairs(ABCAddressBookRef)", 1057, v3, @"%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  if (!a1)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    CPRecordStoreGetDatabase();
    v9 = CPSqliteDatabaseStatementForReading();
    ABRegulatoryLogReadContactsData(a1);
    if (v9)
    {
      v10 = *(v9 + 8);
      if (v10)
      {
        if (sqlite3_step(v10) == 100)
        {
          v11 = 0;
          v12 = *MEMORY[0x1E695E738];
          while (1)
          {
            v13 = 2 * v11;
            if (sqlite3_column_type(*(v9 + 8), 2 * v11) != 5)
            {
              v14 = sqlite3_column_text(*(v9 + 8), 2 * v11);
              if (v14)
              {
                v15 = OUTLINED_FUNCTION_0_3(v14);
                CFArrayAppendValue(Mutable, v15);
                CFRelease(v15);
                if (sqlite3_column_type(*(v9 + 8), v13 | 1) == 5 || (v16 = sqlite3_column_text(*(v9 + 8), v13 | 1u)) == 0)
                {
                  CFArrayAppendValue(Mutable, v12);
                }

                else
                {
                  v17 = OUTLINED_FUNCTION_0_3(v16);
                  CFArrayAppendValue(Mutable, v17);
                  CFRelease(v17);
                }
              }
            }

            if (++v11 == 3)
            {
              for (i = 6; i != 9; ++i)
              {
                if (sqlite3_column_type(*(v9 + 8), i) != 5)
                {
                  v19 = sqlite3_column_text(*(v9 + 8), i);
                  if (v19)
                  {
                    v20 = OUTLINED_FUNCTION_0_3(v19);
                    CFArrayAppendValue(Mutable, v20);
                    CFRelease(v20);
                    CFArrayAppendValue(Mutable, v12);
                  }
                }
              }

              v11 = 0;
              if (sqlite3_step(*(v9 + 8)) != 100)
              {
                break;
              }
            }
          }
        }

        CPSqliteStatementReset();
        CPSqliteDatabaseReleaseSqliteStatement();
      }
    }
  }

  return Mutable;
}

uint64_t ABCGetPersonCount(uint64_t result)
{
  if (result)
  {
    return CPRecordStoreGetCountOfInstancesOfClassWhere();
  }

  return result;
}

uint64_t ABCPersonRemoveImageDataAndReturnError(const void *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a2 == -1)
  {
    CPRecordSetProperty();
  }

  if (!ABCPersonHasImageDataEntries(a1, 0))
  {
    return 1;
  }

  v4 = ABCGetAddressBookForRecord();
  if (v4)
  {
    v5 = v4;
    ImageStore = ABCAddressBookGetImageStore(v4);
    if (!ImageStore || !ABCImageStoreRemoveImagesForRecord(v5, ImageStore, a1, a2))
    {
      return 0;
    }
  }

  if (a2 == -1)
  {
    CPRecordSetProperty();
  }

  else
  {
    Property = CPRecordGetProperty();
    if (Property)
    {
      v8 = Property;
      Count = CFArrayGetCount(Property);
      if (Count >= 1)
      {
        v10 = Count;
        v11 = 0;
        v12 = 0;
        MutableCopy = 0;
        allocator = *MEMORY[0x1E695E480];
        do
        {
          CFArrayGetValueAtIndex(v8, v12);
          if (a2 == 2 && CPRecordGetClass() == ABCFullSizeImageClass || CPRecordGetClass() != ABCFullSizeImageClass && CPRecordGetProperty() == a2)
          {
            if (!MutableCopy)
            {
              MutableCopy = CFArrayCreateMutableCopy(allocator, 0, v8);
            }

            CFArrayRemoveValueAtIndex(MutableCopy, v11--);
          }

          ++v11;
          ++v12;
        }

        while (v10 != v12);
        if (MutableCopy)
        {
          CPRecordSetProperty();
          CFRelease(MutableCopy);
        }
      }
    }
  }

  CPRecordMarkChanged();
  v14 = 1;
  _updatePreferredImageForPerson(a1, 0, 1, 1);
  return v14;
}

uint64_t ABCPersonHasImageDataEntries(uint64_t result, int a2)
{
  if (result)
  {
    v3 = result;
    Property = CPRecordGetProperty();
    if (Property)
    {
      v5 = Property;
      Count = CFArrayGetCount(Property);
      v7 = Count;
      if ((a2 & 1) == 0 && Count)
      {
        return 1;
      }

      if (Count >= 1)
      {
        v8 = 0;
        while (1)
        {
          CFArrayGetValueAtIndex(v5, v8);
          CPRecordGetClass();
          OUTLINED_FUNCTION_3_1();
          v9 = CPRecordCopyProperty();
          if (v9)
          {
            break;
          }

          if (++v8 >= v7)
          {
            goto LABEL_9;
          }
        }

        CFRelease(v9);
        return 1;
      }
    }

LABEL_9:
    result = ABCGetAddressBookForRecord();
    if (result)
    {
      result = ABCAddressBookGetImageStore(result);
      if (result)
      {

        return ABCImageStoreHasImagesForRecord(result, v3, a2);
      }
    }
  }

  return result;
}

CFStringRef ABCPersonInvalidateImageData(const __CFString *a1)
{
  result = ABCAddressBookGetImageStore(a1);
  if (result)
  {
    CPRecordStoreInvalidateCachedInstancesOfClass();
    return CPRecordStoreInvalidateCachedInstancesOfClass();
  }

  return result;
}

CFStringRef ABCPersonInvalidateSpecificImageData(uint64_t a1)
{
  ABCRecordGetUniqueId(a1);
  v1 = ABCGetAddressBookForRecord();
  return ABCPersonInvalidateImageData(v1);
}

uint64_t ABCPersonSetImageDataDerivedFromFormatAndCropRectAndReturnError(const void *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = ABCGetAddressBookForRecord();
  v5 = v4;
  if (v4)
  {
    ImageStore = ABCAddressBookGetImageStore(v4);
  }

  else
  {
    ImageStore = 0;
  }

  if (a2 == 2)
  {
    ABCPersonRemoveImageDataAndReturnError(a1, 5);
  }

  Property = CPRecordGetProperty();
  if (Property && (v7 = Property, Count = CFArrayGetCount(Property), Count >= 1))
  {
    v9 = Count;
    v10 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v7, v10 - 1);
      if (a2 != 2 || (CPRecordGetClass(), OUTLINED_FUNCTION_3_1(), !v12))
      {
        CPRecordGetClass();
        OUTLINED_FUNCTION_3_1();
        if (v12 || CPRecordGetProperty() != a2)
        {
          ValueAtIndex = 0;
        }
      }

      if (v10 >= v9)
      {
        break;
      }

      ++v10;
    }

    while (!ValueAtIndex);
  }

  else
  {
    ValueAtIndex = 0;
  }

  if (ValueAtIndex)
  {
    v13 = ImageStore;
LABEL_25:
    if (!ValueAtIndex)
    {
      goto LABEL_29;
    }

    goto LABEL_37;
  }

  v13 = ImageStore;
  if (!ImageStore)
  {
    goto LABEL_25;
  }

  v14 = ABCImageStoreCopyImagesForRecordWithFormat(v5, ImageStore, a1, a2);
  if (!v14 || ((v15 = v14, CFArrayGetCount(v14) < 1) ? (v16 = 0) : (v16 = CFArrayGetValueAtIndex(v15, 0)), CFRelease(v15), !v16))
  {
LABEL_29:
    ID = CPRecordGetID();
    v18 = CPRecordCreate();
    if (ID != -1 && v13)
    {
      CPRecordStoreAddRecord();
    }

    if (a2 != 2)
    {
      CPRecordSetProperty();
    }

    CPRecordSetProperty();
    Mutable = ABCRecordCopyValue(a1, kABCImageProperty);
    if (!Mutable)
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    }

    CFArrayAppendValue(Mutable, v18);
    CPRecordSetProperty();
    CFRelease(Mutable);
    CFRelease(v18);
    if (v18)
    {
      goto LABEL_37;
    }

    return 0;
  }

LABEL_37:
  CPRecordGetClass();
  OUTLINED_FUNCTION_3_1();
  if (v12)
  {
    CPRecordSetProperty();
    CPRecordSetProperty();
  }

  CPRecordSetProperty();
  CPRecordSetProperty();
  CPRecordMarkChanged();
  CPRecordMarkPropertyChanged();
  if (a2 == 5)
  {
    return 1;
  }

  CPRecordSetProperty();
  v20 = 1;
  _updatePreferredImageForPerson(a1, 1, 1, 0);
  if (a2 == 2)
  {
    ABPersonResetImageTypeIfNeeded(a1);
  }

  return v20;
}

uint64_t ABCPersonCopyImageDataAndCropRect(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  v12 = ABCGetAddressBookForRecord();
  if (a1)
  {
    v13 = v12;
    Property = CPRecordGetProperty();
    v27 = a1;
    v28 = v13;
    if (Property)
    {
      v15 = Property;
      Count = CFArrayGetCount(Property);
      if (Count >= 1)
      {
        v17 = Count;
        v18 = 1;
        while (1)
        {
          CFArrayGetValueAtIndex(v15, v18 - 1);
          Class = CPRecordGetClass();
          if (a2 == 2 && Class == ABCFullSizeImageClass)
          {
            break;
          }

          if (Class == ABCThumbnailImageClass[0] && CPRecordGetProperty() == a2)
          {
            a1 = CPRecordCopyProperty();
            if (a3)
            {
              *a3 = 0;
            }

            if (a4)
            {
              *a4 = 0;
            }

            if (a5)
            {
              *a5 = 0;
            }

            if (!a6)
            {
              goto LABEL_29;
            }

            v21 = 0;
            goto LABEL_27;
          }

          a1 = 0;
LABEL_29:
          if (v18 < v17)
          {
            ++v18;
            if (!a1)
            {
              continue;
            }
          }

          goto LABEL_33;
        }

        a1 = CPRecordCopyProperty();
        if (a3)
        {
          *a3 = CPRecordGetProperty();
        }

        if (a4)
        {
          *a4 = CPRecordGetProperty();
        }

        if (a5)
        {
          *a5 = CPRecordGetProperty();
        }

        if (!a6)
        {
          goto LABEL_29;
        }

        v21 = CPRecordGetProperty();
LABEL_27:
        *a6 = v21;
        goto LABEL_29;
      }
    }

    a1 = 0;
LABEL_33:
    if (!a1 && v28)
    {
      ImageStore = ABCAddressBookGetImageStore(v28);
      if (ImageStore)
      {
        v23 = ABCImageStoreCopyImagesForRecordWithFormat(v28, ImageStore, v27, a2);
        if (v23)
        {
          v24 = v23;
          if (CFArrayGetCount(v23) >= 1 && CFArrayGetValueAtIndex(v24, 0))
          {
            if (CPRecordGetClass() == ABCFullSizeImageClass)
            {
              a1 = CPRecordCopyProperty();
              if (a3)
              {
                *a3 = CPRecordGetProperty();
              }

              if (a4)
              {
                *a4 = CPRecordGetProperty();
              }

              if (a5)
              {
                *a5 = CPRecordGetProperty();
              }

              if (!a6)
              {
                goto LABEL_59;
              }

              v25 = CPRecordGetProperty();
            }

            else
            {
              a1 = CPRecordCopyProperty();
              if (a3)
              {
                *a3 = 0;
              }

              if (a4)
              {
                *a4 = 0;
              }

              if (a5)
              {
                *a5 = 0;
              }

              if (!a6)
              {
                goto LABEL_59;
              }

              v25 = 0;
            }

            *a6 = v25;
          }

          else
          {
            a1 = 0;
          }

LABEL_59:
          CFRelease(v24);
          return a1;
        }
      }

      return 0;
    }
  }

  return a1;
}

uint64_t ABCPersonHasImageDataWithFormat(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = ABCGetAddressBookForRecord();
  if (!v4)
  {
    return 0;
  }

  ImageStore = ABCAddressBookGetImageStore(v4);
  if (!ImageStore)
  {
    return 0;
  }

  return ABCImageStoreHasImagesForRecordWithFormat(ImageStore, a1, a2, 1);
}

CFStringRef ABCPersonCopyAvatarRecipeData(const void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = ABCGetAddressBookForRecord();
  result = 0;
  if (a1 && v2)
  {
    Property = CPRecordGetProperty();
    if (Property)
    {
      v5 = Property;
      v6 = CFGetTypeID(Property);
      if (v6 == CFArrayGetTypeID() && CFArrayGetCount(v5) > 0)
      {
        CFRetain(v5);
LABEL_11:
        if (CFArrayGetCount(v5) < 1)
        {
          v8 = 0;
        }

        else
        {
          CFArrayGetValueAtIndex(v5, 0);
          v8 = CPRecordCopyProperty();
        }

LABEL_18:
        CFRelease(v5);
        return v8;
      }

      v7 = ABOSLogGeneral();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v10 = 134218240;
        v11 = CFGetTypeID(v5);
        v12 = 2048;
        TypeID = CFArrayGetTypeID();
        _os_log_error_impl(&dword_1B7EFB000, v7, OS_LOG_TYPE_ERROR, "AvatarRecipeData empty or non-array of type %lu (array is %lu)", &v10, 0x16u);
      }
    }

    result = ABCAddressBookGetImageStore(v2);
    if (!result)
    {
      return result;
    }

    v5 = ABCImageStoreCopyAvatarRecipeDataForRecord(v2);
    if (v5)
    {
      goto LABEL_11;
    }

    v5 = ABRecordCopyValue(a1, kABPersonInternalUUIDProperty);
    v9 = ABOSLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138543362;
      v11 = v5;
      _os_log_debug_impl(&dword_1B7EFB000, v9, OS_LOG_TYPE_DEBUG, "ABCPerson ABCPersonCopyAvatarRecipeData() fetched no instances of avatarRecipeData for contact identifier (%{public}@)", &v10, 0xCu);
    }

    v8 = 0;
    result = 0;
    if (v5)
    {
      goto LABEL_18;
    }
  }

  return result;
}

CFStringRef ABCPersonSetAvatarRecipeData(const void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = ABCGetAddressBookForRecord();
    result = 0;
    if (a1 && v3)
    {
      OUTLINED_FUNCTION_3_0();
      Property = CPRecordGetProperty();
      if (Property)
      {
        v6 = Property;
        if (CFArrayGetCount(Property) >= 1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
          CFRetain(ValueAtIndex);
LABEL_23:
          CPRecordSetProperty();
          CPRecordMarkChanged();
          OUTLINED_FUNCTION_3_0();
          CPRecordMarkPropertyChanged();
          CFRelease(ValueAtIndex);
          return 1;
        }
      }

      result = ABCAddressBookGetImageStore(v3);
      if (!result)
      {
        return result;
      }

      v8 = ABCImageStoreCopyAvatarRecipeDataForRecord(v3);
      if (v8)
      {
        v9 = v8;
        if (CFArrayGetCount(v8) > 0)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v9, 0);
          CFRetain(ValueAtIndex);
          CFRelease(v9);
          if (ValueAtIndex)
          {
LABEL_20:
            v13 = OUTLINED_FUNCTION_3_0();
            Mutable = ABCRecordCopyValue(v13, v14);
            if (!Mutable)
            {
              Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
            }

            CFArrayAppendValue(Mutable, ValueAtIndex);
            OUTLINED_FUNCTION_3_0();
            CPRecordSetProperty();
            CFRelease(Mutable);
            goto LABEL_23;
          }

LABEL_17:
          ValueAtIndex = CPRecordCreate();
          if (CPRecordGetID() != -1)
          {
            CPRecordStoreAddRecord();
          }

          CPRecordSetProperty();
          goto LABEL_20;
        }

        v12 = v9;
      }

      else
      {
        v10 = ABRecordCopyValue(a1, kABPersonInternalUUIDProperty);
        v11 = ABOSLogGeneral();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v16 = 138543362;
          v17 = v10;
          _os_log_error_impl(&dword_1B7EFB000, v11, OS_LOG_TYPE_ERROR, "ABCPerson ABCPersonSetAvatarRecipeData() fetched no instances of avatarRecipeData for contact identifier (%{public}@)", &v16, 0xCu);
          if (!v10)
          {
            goto LABEL_17;
          }
        }

        else if (!v10)
        {
          goto LABEL_17;
        }

        v12 = v10;
      }

      CFRelease(v12);
      goto LABEL_17;
    }
  }

  else
  {

    return ABCPersonClearAvatarRecipeData(a1);
  }

  return result;
}

BOOL ABCPersonClearAvatarRecipeData(uint64_t a1)
{
  v2 = ABCGetAddressBookForRecord();
  if (!a1)
  {
    return 0;
  }

  v3 = v2;
  if (!v2)
  {
    return 0;
  }

  ImageStore = ABCAddressBookGetImageStore(v2);
  if (!ImageStore)
  {
    return 0;
  }

  return ABCImageStoreRemoveAvatarRecipeDataForRecord(v3, ImageStore);
}

void ABCCopyPeopleAndIdentifiersMatchingName(uint64_t a1, __CFString *a2, int a3, int a4, const __CFArray **a5, const __CFArray **a6)
{
  if (a1 && a2)
  {
    if (a5)
    {
      _CopyPeopleAndMultiValuePropertiesMatchingNameWithCancellationCallback(*(a1 + 16), a2, a3, a4, a5, a6, 0, 0, 0);
    }
  }
}

void ABCCopyPeopleAndMultiValuePropertiesMatchingName(uint64_t a1, __CFString *a2, int a3, int a4, const __CFArray **a5, const __CFArray **a6, const __CFArray **a7)
{
  if (a1 && a2)
  {
    if (a5)
    {
      _CopyPeopleAndMultiValuePropertiesMatchingNameWithCancellationCallback(*(a1 + 16), a2, a3, a4, a5, a6, a7, 0, 0);
    }
  }
}

void ABCCopyPeopleAndIdentifiersMatchingNameWithCancellationCallback(uint64_t a1, __CFString *a2, int a3, int a4, const __CFArray **a5, const __CFArray **a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a2)
  {
    if (a5)
    {
      _CopyPeopleAndMultiValuePropertiesMatchingNameWithCancellationCallback(*(a1 + 16), a2, a3, a4, a5, a6, 0, a7, a8);
    }
  }
}

void ABCCopyPeopleAndMultiValuePropertiesMatchingNameWithCancellationCallback(uint64_t a1, __CFString *a2, int a3, int a4, const __CFArray **a5, const __CFArray **a6, const __CFArray **a7, uint64_t a8, uint64_t a9)
{
  if (a1 && a2)
  {
    if (a5)
    {
      _CopyPeopleAndMultiValuePropertiesMatchingNameWithCancellationCallback(*(a1 + 16), a2, a3, a4, a5, a6, a7, a8, a9);
    }
  }
}

CFIndex saveImage(CFIndex result)
{
  if (result)
  {
    v1 = result;
    v2 = ABCGetAddressBookForRecord();
    ABCAddressBookGetImageStore(v2);
    result = ABCRecordGetValue(v1);
    if (result)
    {
      v3 = result;
      result = CFArrayGetCount(result);
      if (result >= 1)
      {
        v4 = result;
        for (i = 0; i != v4; ++i)
        {
          CFArrayGetValueAtIndex(v3, i);
          CPRecordGetClass();
          if (CPRecordGetProperty() == -1)
          {
            CPRecordGetID();
            CPRecordSetProperty();
          }

          result = CPRecordGetID();
          if (result == -1)
          {
            result = CPRecordStoreAddRecord();
          }
        }
      }
    }
  }

  return result;
}

CFIndex saveAvatarRecipeData(CFIndex result)
{
  if (result)
  {
    v1 = result;
    v2 = ABCGetAddressBookForRecord();
    ABCAddressBookGetImageStore(v2);
    result = ABCRecordGetValue(v1);
    if (result)
    {
      v3 = result;
      result = CFArrayGetCount(result);
      if (result >= 1)
      {
        v4 = result;
        for (i = 0; i != v4; ++i)
        {
          CFArrayGetValueAtIndex(v3, i);
          if (CPRecordGetProperty() == -1)
          {
            CPRecordGetID();
            CPRecordSetProperty();
          }

          result = CPRecordGetID();
          if (result == -1)
          {
            result = CPRecordStoreAddRecord();
          }
        }
      }
    }
  }

  return result;
}

void _ABCSaveSingleStringValue(uint64_t a1, uint64_t a2, uint64_t a3, const __CFString *a4)
{
  if (a1)
  {
    if (a3)
    {
      v6 = *CPRecordGetClass();
      MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, @"UPDATE ");
      OUTLINED_FUNCTION_1_2(MutableCopy, v6);
      CFStringAppend(MutableCopy, @" SET ");
      if (MutableCopy)
      {
        v8 = *(CPRecordGetClass() + 64);
        v9 = v8 ? v8(a2) : 0;
        CFStringAppend(MutableCopy, v9);
        CFStringAppend(MutableCopy, @" = ? WHERE ROWID = ?;");
        v10 = CPSqliteConnectionStatementForSQL();
        CFRelease(MutableCopy);
        if (v10)
        {
          v11 = *(v10 + 8);
          if (v11)
          {
            ID = CPRecordGetID();
            sqlite3_bind_int(v11, 2, ID);
            if (a4)
            {
              usedBufLen = 0;
              Length = CFStringGetLength(a4);
              MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
              v15 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
              OUTLINED_FUNCTION_2_1();
              CFStringGetBytes(v16, v23, v17, v18, v19, v15, MaximumSizeForEncoding, &usedBufLen);
              v15[usedBufLen] = 0;
              OUTLINED_FUNCTION_0_4();
              sqlite3_bind_text(v20, 1, v15, -1, v21);
            }

            else
            {
              sqlite3_bind_null(*(v10 + 8), 1);
            }

            CPSqliteStatementPerform();
            CPSqliteStatementReset();
          }
        }
      }
    }
  }
}

uint64_t _ABCCreateSingleStringValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, @"SELECT ");
  if (!MutableCopy)
  {
    return 0;
  }

  v5 = MutableCopy;
  v6 = *CPRecordGetClass();
  v7 = *(CPRecordGetClass() + 64);
  v8 = v7 ? v7(a2) : 0;
  CFStringAppend(v5, v8);
  CFStringAppend(v5, @" FROM ");
  OUTLINED_FUNCTION_1_2(v5, v6);
  CFStringAppend(v5, @" WHERE ROWID = ?;");
  v9 = CPSqliteConnectionStatementForSQL();
  CFRelease(v5);
  if (!v9)
  {
    return 0;
  }

  v10 = *(v9 + 8);
  if (!v10)
  {
    return 0;
  }

  ID = CPRecordGetID();
  sqlite3_bind_int(v10, 1, ID);
  v12 = CPSqliteStatementCopyStringResult();
  CPSqliteStatementReset();
  return v12;
}

void _ABCSaveSingleString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Property = CPRecordGetProperty();

  _ABCSaveSingleStringValue(a1, a2, a3, Property);
}

void _ABCLoadSingleString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = _ABCCreateSingleStringValue(a1, a2, a3);
  if (v3)
  {
    v4 = v3;
    CPRecordInitializeProperty();

    CFRelease(v4);
  }
}

void _ABCMultiSaveStrings(uint64_t a1, CFArrayRef theArray, uint64_t a3)
{
  Count = CFArrayGetCount(theArray);
  v7 = *MEMORY[0x1E695E480];
  v8 = CFArrayGetCount(theArray);
  Mutable = CFArrayCreateMutable(v7, v8, 0);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      CFArrayGetValueAtIndex(theArray, i);
      Property = CPRecordGetProperty();
      CFArrayAppendValue(Mutable, Property);
    }
  }

  if (a1)
  {
    if (a3)
    {
      v12 = *CPRecordGetClass();
      MutableCopy = CFStringCreateMutableCopy(v7, 0, @"UPDATE ");
      OUTLINED_FUNCTION_1_2(MutableCopy, v12);
      CFStringAppend(MutableCopy, @" SET ");
      if (MutableCopy)
      {
        v14 = CFArrayGetCount(theArray);
        if (v14 >= 1)
        {
          for (j = 0; j != v14; ++j)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, j);
            v17 = *(CPRecordGetClass() + 64);
            if (v17)
            {
              v18 = v17(ValueAtIndex);
            }

            else
            {
              v18 = 0;
            }

            CFStringAppend(MutableCopy, v18);
            if (j >= v14 - 1)
            {
              v19 = @" = ? WHERE ROWID = ?;";
            }

            else
            {
              v19 = @" = ?,";
            }

            CFStringAppend(MutableCopy, v19);
          }
        }

        v20 = CPSqliteConnectionStatementForSQL();
        CFRelease(MutableCopy);
        if (v20)
        {
          v21 = *(v20 + 8);
          if (v21)
          {
            v22 = CFArrayGetCount(theArray);
            ID = CPRecordGetID();
            sqlite3_bind_int(v21, v22 + 1, ID);
            if (v14 >= 1)
            {
              for (k = 0; k != v14; ++k)
              {
                v25 = CFArrayGetValueAtIndex(Mutable, k);
                if (v25)
                {
                  usedBufLen = 0;
                  Length = CFStringGetLength(v25);
                  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
                  v28 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
                  OUTLINED_FUNCTION_2_1();
                  CFStringGetBytes(v29, v36, v30, v31, v32, v28, MaximumSizeForEncoding, &usedBufLen);
                  v28[usedBufLen] = 0;
                  OUTLINED_FUNCTION_0_4();
                  sqlite3_bind_text(v33, k + 1, v28, -1, v34);
                }

                else
                {
                  sqlite3_bind_null(*(v20 + 8), k + 1);
                }
              }
            }

            CPSqliteStatementPerform();
            CPSqliteStatementReset();
          }
        }
      }
    }
  }

  CFRelease(Mutable);
}

void _ABCSaveSingleData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Property = CPRecordGetProperty();
  if (a1)
  {
    if (a3)
    {
      v7 = Property;
      v8 = *CPRecordGetClass();
      MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, @"UPDATE ");
      OUTLINED_FUNCTION_1_2(MutableCopy, v8);
      CFStringAppend(MutableCopy, @" SET ");
      if (MutableCopy)
      {
        v10 = *(CPRecordGetClass() + 64);
        v11 = v10 ? v10(a2) : 0;
        CFStringAppend(MutableCopy, v11);
        CFStringAppend(MutableCopy, @" = ? WHERE ROWID = ?;");
        v12 = CPSqliteConnectionStatementForSQL();
        CFRelease(MutableCopy);
        if (v12)
        {
          v13 = *(v12 + 8);
          if (v13)
          {
            ID = CPRecordGetID();
            sqlite3_bind_int(v13, 2, ID);
            if (v7 && (Length = CFDataGetLength(v7), Length >= 1))
            {
              v16 = Length;
              BytePtr = CFDataGetBytePtr(v7);
              sqlite3_bind_blob(*(v12 + 8), 1, BytePtr, v16, 0);
            }

            else
            {
              sqlite3_bind_null(*(v12 + 8), 1);
            }

            CPSqliteStatementPerform();

            CPSqliteStatementReset();
          }
        }
      }
    }
  }
}

void _ABCLoadSingleData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a3)
    {
      v4 = *CPRecordGetClass();
      v5 = *MEMORY[0x1E695E480];
      MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, @"SELECT ");
      if (MutableCopy)
      {
        v7 = MutableCopy;
        v8 = *(CPRecordGetClass() + 64);
        v9 = v8 ? v8(a2) : 0;
        CFStringAppend(v7, v9);
        CFStringAppend(v7, @" FROM ");
        OUTLINED_FUNCTION_1_2(v7, v4);
        CFStringAppend(v7, @" WHERE ROWID = ?;");
        v10 = CPSqliteConnectionStatementForSQL();
        CFRelease(v7);
        if (v10)
        {
          v11 = *(v10 + 8);
          if (v11)
          {
            ID = CPRecordGetID();
            sqlite3_bind_int(v11, 1, ID);
            if (sqlite3_step(*(v10 + 8)) == 100 && (v13 = sqlite3_column_bytes(*(v10 + 8), 0), v14 = sqlite3_column_blob(*(v10 + 8), 0), v13) && v14)
            {
              v15 = CFDataCreate(v5, v14, v13);
              CPSqliteStatementReset();
              if (v15)
              {
                CPRecordInitializeProperty();

                CFRelease(v15);
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
  }
}

void _ABCMultiSaveDatas(uint64_t a1, CFArrayRef theArray, uint64_t a3)
{
  Count = CFArrayGetCount(theArray);
  v7 = *MEMORY[0x1E695E480];
  v8 = CFArrayGetCount(theArray);
  Mutable = CFArrayCreateMutable(v7, v8, 0);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      CFArrayGetValueAtIndex(theArray, i);
      Property = CPRecordGetProperty();
      CFArrayAppendValue(Mutable, Property);
    }
  }

  if (a1)
  {
    if (a3)
    {
      v12 = *CPRecordGetClass();
      MutableCopy = CFStringCreateMutableCopy(v7, 0, @"UPDATE ");
      OUTLINED_FUNCTION_1_2(MutableCopy, v12);
      CFStringAppend(MutableCopy, @" SET ");
      if (MutableCopy)
      {
        v14 = CFArrayGetCount(theArray);
        if (v14 >= 1)
        {
          for (j = 0; j != v14; ++j)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, j);
            v17 = *(CPRecordGetClass() + 64);
            if (v17)
            {
              v18 = v17(ValueAtIndex);
            }

            else
            {
              v18 = 0;
            }

            CFStringAppend(MutableCopy, v18);
            if (j >= v14 - 1)
            {
              v19 = @" = ? WHERE ROWID = ?;";
            }

            else
            {
              v19 = @" = ?,";
            }

            CFStringAppend(MutableCopy, v19);
          }
        }

        v20 = CPSqliteConnectionStatementForSQL();
        CFRelease(MutableCopy);
        if (v20)
        {
          v21 = *(v20 + 8);
          if (v21)
          {
            v22 = CFArrayGetCount(theArray);
            ID = CPRecordGetID();
            sqlite3_bind_int(v21, v22 + 1, ID);
            if (v14 >= 1)
            {
              for (k = 0; k != v14; ++k)
              {
                v25 = CFArrayGetValueAtIndex(Mutable, k);
                if (v25 && (v26 = v25, Length = CFDataGetLength(v25), Length >= 1))
                {
                  v28 = Length;
                  BytePtr = CFDataGetBytePtr(v26);
                  sqlite3_bind_blob(*(v20 + 8), k + 1, BytePtr, v28, 0);
                }

                else
                {
                  sqlite3_bind_null(*(v20 + 8), k + 1);
                }
              }
            }

            CPSqliteStatementPerform();
            CPSqliteStatementReset();
          }
        }
      }
    }
  }

  CFRelease(Mutable);
}

void loadSingleDateTime(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = _ABCCreateSingleStringValue(a1, a2, a3);
  if (v3)
  {
    v4 = v3;
    v5 = _ABCCreateDateFromCFString(v3);
    if (v5)
    {
      v6 = v5;
      CPRecordInitializeProperty();
      CFRelease(v6);
    }

    CFRelease(v4);
  }
}

void saveSingleDateTime(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Property = CPRecordGetProperty();
  v7 = _ABCCreateCFStringFromDate(Property);
  _ABCSaveSingleStringValue(a1, a2, a3, v7);
  if (v7)
  {

    CFRelease(v7);
  }
}

uint64_t ABCDBContextSaveMultiValue(uint64_t a1, const void *a2, int a3, const __CFArray *a4, int a5)
{
  ID = CPRecordGetID();
  v11 = CPSqliteConnectionStatementForSQL();
  if (v11)
  {
    v12 = OUTLINED_FUNCTION_4_1(v11);
    sqlite3_bind_int(v12, v13, ID);
    v14 = OUTLINED_FUNCTION_13_0();
    sqlite3_bind_int(v14, v15, a3);
    CPSqliteStatementPerform();
    CPSqliteStatementReset();
    CPSqliteDatabaseReleaseSqliteStatement();
    v16 = CPSqliteConnectionStatementForSQL();
    if (v16)
    {
      v17 = OUTLINED_FUNCTION_4_1(v16);
      sqlite3_bind_int(v17, v18, ID);
      v19 = OUTLINED_FUNCTION_13_0();
      sqlite3_bind_int(v19, v20, a3);
      CPSqliteStatementPerform();
      CPSqliteStatementReset();
      CPSqliteDatabaseReleaseSqliteStatement();
    }
  }

  if (a4)
  {
    v21 = *(a4 + 5);
    if (v21)
    {
      v105 = *(a4 + 6);
      theArray = *(a4 + 3);
      Count = CFArrayGetCount(v21);
      if (Count >= 1)
      {
        v103 = v21;
        v109 = a2;
        v22 = 0;
        v23 = 2 * ((a5 & 0xFFFFFEFF) != 2);
        v107 = a3;
        v108 = a5 & 0xFFFFFEFF;
        if ((a5 & 0xFFFFFEFF) == 7)
        {
          v23 = 4;
        }

        v97 = kABSourceMeIdentifierProperty;
        v98 = v23;
        v102 = a4;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v22);
          LabelAtIndex = ABCMultiValueGetLabelAtIndex(a4, v22);
          v26 = CFArrayGetValueAtIndex(v103, v22);
          CFArrayGetValueAtIndex(v105, v22);
          if (LabelAtIndex)
          {
            v27 = v109;
            Store = CPRecordGetStore();
            recordStoreContext(Store);
            v29 = OUTLINED_FUNCTION_11_0();
            v33 = rowidForStringInTable(v29, v30, @"SELECT ROWID FROM ABMultiValueLabel WHERE value = ?;", @"INSERT INTO ABMultiValueLabel VALUES (?);", v31, v32);
          }

          else
          {
            v33 = -1;
            v27 = v109;
          }

          AddressBook = ABRecordGetAddressBook();
          RecordID = ABRecordGetRecordID(v27);
          if (!AddressBook)
          {
            goto LABEL_24;
          }

          if (kABCPhoneProperty == a3)
          {
            v36 = 0x8000;
          }

          else
          {
            if (kABCEmailProperty != a3)
            {
              goto LABEL_19;
            }

            v36 = 0x10000;
          }

          *(AddressBook + 384) |= v36;
LABEL_19:
          v37 = ABPersonCopySource(v27);
          if (v37)
          {
            v38 = v37;
            if (RecordID != -1 && ABRecordGetIntValue(v37, v97) == RecordID)
            {
              *(AddressBook + 384) |= 0x40000u;
            }

            CFRelease(v38);
          }

LABEL_24:
          if (!a1)
          {
            return 0;
          }

          v39 = CPSqliteConnectionStatementForSQL();
          if (!v39)
          {
            return 0;
          }

          v40 = v39;
          v41 = *(v39 + 8);
          sqlite3_bind_int(v41, 1, RecordID);
          sqlite3_bind_int(v41, 2, a3);
          if (v33 < 0)
          {
            sqlite3_bind_null(v41, 3);
          }

          else
          {
            sqlite3_bind_int(v41, 3, v33);
          }

          sqlite3_bind_int(v41, 4, ValueAtIndex);
          theDict = v26;
          if (v108 == 5)
          {
            sqlite3_bind_null(v41, 5);
            LODWORD(v43) = 0;
            LODWORD(v44) = 0;
            goto LABEL_39;
          }

          v42 = ABCCopySQLiteStringValueForValueOfType(v26, v108);
          v43 = v42;
          v44 = v42 >> 32;
          if (v98 == 4)
          {
            if (v42)
            {
              BytePtr = CFDataGetBytePtr(v42);
              CFDataGetLength(v43);
              v50 = OUTLINED_FUNCTION_9_0();
              sqlite3_bind_blob(v50, v51, BytePtr, v52, 0);
              goto LABEL_39;
            }
          }

          else
          {
            if (v98 != 2)
            {
              v53 = OUTLINED_FUNCTION_9_0();
              sqlite3_bind_int(v53, v54, v43);
              goto LABEL_39;
            }

            if (v42)
            {
              _CPCreateUTF8StringFromCFString();
              OUTLINED_FUNCTION_0_4();
              v45 = OUTLINED_FUNCTION_9_0();
              sqlite3_bind_text(v45, v46, v47, -1, v48);
              goto LABEL_39;
            }
          }

          v55 = OUTLINED_FUNCTION_9_0();
          sqlite3_bind_null(v55, v56);
LABEL_39:
          _CPCreateUTF8StringFromCFString();
          OUTLINED_FUNCTION_0_4();
          sqlite3_bind_text(v41, 6, v57, -1, v58);
          v59 = CPSqliteStatementPerform();
          CPSqliteStatementReset();
          v60 = v59 == 101;
          if (v59 == 101)
          {
            Insert = CPSqliteConnectionRowidOfLastInsert();
          }

          else
          {
            Insert = 0;
          }

          if (v108 != 5)
          {
            v62 = v43 | (v44 << 32);
            if (v62)
            {
              v63 = ABCCallBacksForType(v108);
              if (v63)
              {
                v64 = v63[1];
                if (v64)
                {
                  (v64)(v62);
                }
              }
            }
          }

          a3 = v107;
          v65 = v59 == 101 && kABCPhoneProperty == v107;
          if (v65)
          {
            v67 = CPPhoneNumberCopyHomeCountryCode();
            if (!v67)
            {
              v66 = 0;
LABEL_60:
              v60 = 1;
              goto LABEL_61;
            }

            FourDigitsOfLocalNumber = _PNCopyLastFourDigitsOfLocalNumber();
            v66 = FourDigitsOfLocalNumber;
            if (!FourDigitsOfLocalNumber || CFStringGetLength(FourDigitsOfLocalNumber) < 1)
            {
              goto LABEL_60;
            }

            v69 = CPSqliteConnectionStatementForSQL();
            if (!v69)
            {
              v60 = 1;
LABEL_86:
              CFRelease(v66);
              goto LABEL_87;
            }

            v40 = v67;
            v70 = *(v69 + 8);
            v71 = OUTLINED_FUNCTION_10_0();
            sqlite3_bind_int(v71, v72, Insert);
            _CPCreateUTF8StringFromCFString();
            OUTLINED_FUNCTION_0_4();
            sqlite3_bind_text(v70, 2, v73, -1, v74);
            LODWORD(v70) = CPSqliteStatementPerform();
            CPSqliteStatementReset();
            v65 = v70 == 101;
            v67 = v40;
            v60 = v65;
          }

          else
          {
            v66 = 0;
            v67 = 0;
          }

LABEL_61:
          CPSqliteDatabaseReleaseSqliteConnection();
          if (v108 == 5 && v60)
          {
            v101 = v67;
            v75 = CFDictionaryGetCount(theDict);
            v76 = malloc_type_malloc(8 * v75, 0x6004044C4A2DFuLL);
            if (!v76)
            {
              v60 = 1;
              v67 = v101;
              if (!v66)
              {
                goto LABEL_87;
              }

              goto LABEL_86;
            }

            v77 = v76;
            v100 = v66;
            CFDictionaryGetKeysAndValues(theDict, v76, 0);
            v99 = v77;
            if (v75 < 1)
            {
              v60 = 1;
            }

            else
            {
              v78 = v77;
              v79 = 1;
              while (1)
              {
                v80 = *v78;
                Value = CFDictionaryGetValue(theDict, *v78);
                if (v80)
                {
                  v82 = CPRecordGetStore();
                  recordStoreContext(v82);
                  v83 = OUTLINED_FUNCTION_11_0();
                  v86 = rowidForStringInTable(v83, v84, @"SELECT ROWID FROM ABMultiValueEntryKey WHERE value = ?;", @"INSERT INTO ABMultiValueEntryKey VALUES(?);", v85, 0);
                }

                else
                {
                  v86 = -1;
                }

                v87 = CPSqliteConnectionStatementForSQL();
                if (!v87)
                {
                  break;
                }

                v88 = OUTLINED_FUNCTION_4_1(v87);
                sqlite3_bind_int(v88, v89, Insert);
                v90 = OUTLINED_FUNCTION_13_0();
                if (v86 < 0)
                {
                  sqlite3_bind_null(v90, v91);
                }

                else
                {
                  sqlite3_bind_int(v90, v91, v86);
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v92 = CFStringCreateByCombiningStrings(0, Value, @",");
                }

                else
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    __assert_rtn("ABCDBContextSaveMultiValueSubEntry", "ABCDBContext.m", 1458, "[(id)value isKindOfClass:[NSString class]]");
                  }

                  v92 = 0;
                }

                _CPCreateUTF8StringFromCFString();
                OUTLINED_FUNCTION_0_4();
                sqlite3_bind_text(v40, 3, v93, -1, v94);
                v95 = CPSqliteStatementPerform();
                CPSqliteStatementReset();
                if (v92)
                {
                  CFRelease(v92);
                }

                v60 = v95 == 101;
                if (v79 < v75)
                {
                  ++v79;
                  ++v78;
                  if (v95 == 101)
                  {
                    continue;
                  }
                }

                goto LABEL_84;
              }

              v60 = 0;
            }

LABEL_84:
            free(v99);
            a3 = v107;
            v66 = v100;
            v67 = v101;
          }

          if (v66)
          {
            goto LABEL_86;
          }

LABEL_87:
          a4 = v102;
          if (v67)
          {
            CFRelease(v67);
          }

          if (++v22 >= Count || !v60)
          {
            return v60;
          }
        }
      }
    }
  }

  return 1;
}

uint64_t ABCDBContextDeleteMultiValuesForRecord(uint64_t a1, int a2)
{
  result = CPSqliteConnectionStatementForSQL();
  if (result)
  {
    sqlite3_bind_int(*(result + 8), 1, a2);
    CPSqliteStatementPerform();
    CPSqliteStatementReset();
    CPSqliteDatabaseReleaseSqliteStatement();
    result = CPSqliteConnectionStatementForSQL();
    if (result)
    {
      sqlite3_bind_int(*(result + 8), 1, a2);
      CPSqliteStatementPerform();
      CPSqliteStatementReset();

      return CPSqliteDatabaseReleaseSqliteStatement();
    }
  }

  return result;
}

void appendSQLInitSingleValuePropertyString(__CFString *a1, CFStringRef appendedString, int a3)
{
  if (a1 && appendedString && a3)
  {
    CFStringAppend(a1, appendedString);
    CFStringAppend(a1, @" ");
    v6 = a3 - 1;
    if (a3 - 1) <= 6 && ((0x4Fu >> v6))
    {
      CFStringAppend(a1, off_1E7CCC4C0[v6]);
    }

    if (CFStringCompare(appendedString, @"UID", 0) == kCFCompareEqualTo)
    {

      CFStringAppend(a1, @" PRIMARY KEY");
    }
  }
}

CFMutableDictionaryRef ABCDBContextFetchMultiValueEntries(CFArrayRef theArray, uint64_t a2, int a3)
{
  result = 0;
  v36 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  if (!theArray || !a2)
  {
    return result;
  }

  if (CFArrayGetCount(theArray) < 1)
  {
    return 0;
  }

  v6 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppend(Mutable, @"SELECT UID, identifier, record_id, (SELECT value FROM ABMultiValueLabel WHERE ROWID = label), value, guid FROM ABMultiValue WHERE record_id ");
  if (CFArrayGetCount(theArray) == 1)
  {
    v8 = @"= ? ";
  }

  else
  {
    CFStringAppend(Mutable, @"IN (");
    if (CFArrayGetCount(theArray) < 1)
    {
      v8 = @" ");
    }

    else
    {
      v9 = 0;
      v8 = @" ");
      do
      {
        if (v9)
        {
          CFStringAppend(Mutable, @", ");
        }

        CFStringAppend(Mutable, @"?");
        ++v9;
      }

      while (v9 < CFArrayGetCount(theArray));
    }
  }

  CFStringAppend(Mutable, v8);
  CFStringAppend(Mutable, @"AND property+0 = ?;");
  v28[0] = 0;
  v28[1] = ABCDBContextCollectMultiValueUID;
  v28[2] = 0;
  v28[3] = 1;
  v28[4] = ABCDBContextCollectMultiValueIdentifier;
  v28[5] = 0;
  v28[6] = 2;
  v28[7] = ABCDBContextCollectMultiValueRecordID;
  v28[8] = 0;
  v28[9] = 0x200000003;
  v28[10] = ABCDBContextCollectMultiValueLabel;
  v28[11] = 0;
  v29 = 4;
  CFArrayGetValueAtIndex(theArray, 0);
  v10 = ABRecordTypeOfProperty() & 0xFFFFFEFF;
  v11 = v10 != 2;
  if (v10 == 7)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2 * v11;
  }

  v30 = v12;
  v31 = ABCDBContextCollectMultiValueValue;
  v32 = v11;
  v33 = 0x200000005;
  v34 = ABCDBContextCollectMultiValueUUID;
  v35 = 0;
  v13 = CPSqliteConnectionStatementForSQL();
  if (!v13)
  {
    v14 = 0;
LABEL_38:
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    return 0;
  }

  v14 = *(v13 + 8);
  if (!v14)
  {
    goto LABEL_38;
  }

  if (CFArrayGetCount(theArray) < 1)
  {
    v17 = 1;
  }

  else
  {
    v15 = 0;
    do
    {
      CFArrayGetValueAtIndex(theArray, v15);
      ID = CPRecordGetID();
      sqlite3_bind_int(v14, ++v15, ID);
    }

    while (CFArrayGetCount(theArray) > v15);
    v17 = v15 + 1;
  }

  sqlite3_bind_int(v14, v17, a3);
  Count = CFArrayGetCount(theArray);
  v14 = CFDictionaryCreateMutable(v6, Count, MEMORY[0x1E695E9D8], 0);
  if (CFArrayGetCount(theArray) >= 1)
  {
    v19 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v19);
      valuePtr = CPRecordGetID();
      v21 = CFNumberCreate(v6, kCFNumberSInt32Type, &valuePtr);
      CFDictionarySetValue(v14, v21, ValueAtIndex);
      if (v21)
      {
        CFRelease(v21);
      }

      ++v19;
    }

    while (v19 < CFArrayGetCount(theArray));
  }

  *&v25 = v14;
  DWORD2(v25) = a3;
  *&v26 = v28;
  DWORD2(v26) = 6;
  v22 = CFArrayGetCount(theArray);
  v27 = CFDictionaryCreateMutable(v6, v22, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v27)
  {
    goto LABEL_38;
  }

  v23 = CPSqliteStatementSendResults();
  if (v23 != 101)
  {
    syslog(3, "Error fetching multivalue entries: %d", v23);
  }

  CPSqliteStatementReset();
  CPSqliteDatabaseReleaseSqliteStatement();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v27;
}

uint64_t CollectMultiValueEntries(uint64_t a1, uint64_t a2)
{
  v3 = malloc_type_calloc(1uLL, 0x38uLL, 0x10E0040D1D23B1BuLL);
  if (v3)
  {
    v4 = v3;
    v3[3] = *(a2 + 8);
    CPSqliteStatementApplyValuesFromRecord();
    valuePtr = v4[12];
    v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    Value = CFDictionaryGetValue(*a2, v5);
    if (Value)
    {
      *v4 = Value;
      Mutable = CFDictionaryGetValue(*(a2 + 32), v5);
      if (!Mutable)
      {
        OUTLINED_FUNCTION_2_2();
        Mutable = CFArrayCreateMutable(v8, v9, v10);
        CFDictionarySetValue(*(a2 + 32), v5, Mutable);
        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }

      CFArrayAppendValue(Mutable, v4);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  return 0;
}

uint64_t ABCIteratePeopleMatchingStringWithCustomQueryPrefix(uint64_t a1, const __CFString *a2, const __CFString *a3, const void *a4, const void *a5, int a6, int a7, int a8, uint64_t a9, CFStringRef theString, uint64_t a11)
{
  if ((ABCFTSIsEnabled() & 1) == 0)
  {
    ABDiagnosticsEnabled();
    _ABLog2(3, "CFArrayRef ABCIteratePeopleMatchingStringWithCustomQueryPrefix(ABCDBContextRef, CFStringRef, CFStringRef, ABRecordRef, ABRecordRef, ABCPersonSortOrdering, _Bool, CPRecordStoreRowHandler, void *, CFStringRef, CFDictionaryRef)", 4128, 0, @"AB search used the disabled FTS index. Please open a radar to PEP Contacts (New Bugs) with simulated crash report.", v24, v25, v26, v63);
    ABLogSimulateCrashReport(@"AB search used the disabled FTS index. Please open a radar to PEP Contacts (New Bugs).");
    return 0;
  }

  v18 = ABTokenListCreate();
  v19 = recordStoreContext(a1);
  if (v19)
  {
    v19 = *v19;
  }

  SearchCollator = ABAddressBookGetSearchCollator(v19);
  v21 = recordStoreContext(a1);
  if (v21)
  {
    v21 = *v21;
  }

  WordTokenizer = ABAddressBookGetWordTokenizer(v21);
  if (!SearchCollator)
  {
LABEL_74:
    MutableCopy = 0;
    goto LABEL_75;
  }

  ABTokenListPopulateFromString(v18, WordTokenizer, 0, a2, 0, 1, 0);
  if (!v18)
  {
    return 0;
  }

  if (ABTokenListGetCount(v18) < 1)
  {
    v27 = 0;
    MutableCopy = 0;
LABEL_67:
    CFRelease(v18);
    goto LABEL_68;
  }

  v67 = a6;
  if (theString)
  {
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
  }

  else
  {
    MutableCopy = CPRecordStoreCreateColumnListWithAliasAndExtraColumns();
  }

  CFStringAppend(MutableCopy, @" FROM ABPersonSearchKey abs JOIN ABPerson abp ON abs.person_id = abp.ROWID WHERE");
  if (a1)
  {
    if (a4)
    {
      RecordID = ABRecordGetRecordID(a4);
      if (!a5)
      {
        goto LABEL_22;
      }
    }

    else
    {
      RecordID = -1;
      if (!a5)
      {
        goto LABEL_22;
      }
    }

    v29 = ABRecordGetRecordID(a5);
    if (v29 != -1)
    {
      v30 = v29;
      v31 = 0;
      v32 = @" abp.ROWID IN (select member_id FROM ABGroupMembers WHERE group_id = ? AND member_type = 0) AND";
      goto LABEL_26;
    }

LABEL_22:
    v30 = -1;
    v31 = 1;
    if (RecordID == -1)
    {
      if (!a3)
      {
        goto LABEL_27;
      }

      v32 = @" StoreID IN (SELECT abs.RowID FROM ABStore abs, ABAccount aba WHERE abs.AccountID = aba.ROWID AND aba.AccountIdentifier = ?) AND";
    }

    else
    {
      v32 = @" StoreID = ? AND";
    }

LABEL_26:
    CFStringAppend(MutableCopy, v32);
LABEL_27:
    CFStringAppend(MutableCopy, @" abp.ROWID IN ");
    v66 = a7;
    v65 = a3;
    if (a7)
    {
      CFStringAppend(MutableCopy, @"(SELECT rowid from ABPersonFullTextSearch WHERE ABPersonFullTextSearch MATCH '");
      if (ABTokenListGetCount(v18) >= 1)
      {
        v64 = RecordID;
        v33 = 0;
        do
        {
          if (v33)
          {
            CFStringAppend(MutableCopy, @" AND ");
          }

          CFStringAppend(MutableCopy, @"(");
          v34 = 0;
          while (1)
          {
            do
            {
              CFStringAppend(MutableCopy, gFTSearchNameOnlyProperties[v34]);
              CFStringAppend(MutableCopy, @":' || ? || '");
              ++v34;
            }

            while (!v34);
            if (v34 == 14)
            {
              break;
            }

            CFStringAppend(MutableCopy, @" OR ");
          }

          CFStringAppend(MutableCopy, @""));
          ++v33;
        }

        while (ABTokenListGetCount(v18) > v33);
        RecordID = v64;
      }

      v35 = @" '");
    }

    else
    {
      v35 = @"(SELECT rowid from ABPersonFullTextSearch WHERE ABPersonFullTextSearch MATCH ?) ";
    }

    CFStringAppend(MutableCopy, v35);
    if (v67)
    {
      v36 = @" ORDER BY LastSortLanguageIndex+0, LastSortSection, LastSort";
    }

    else
    {
      v36 = @" ORDER BY FirstSortLanguageIndex+0, FirstSortSection, FirstSort";
    }

    CFStringAppend(MutableCopy, v36);
    CFStringAppend(MutableCopy, @";");
    CPRecordStoreGetDatabase();
    v37 = CPSqliteDatabaseStatementForReading();
    v38 = recordStoreContext(a1);
    if (v38)
    {
      v38 = *v38;
    }

    ABRegulatoryLogReadContactsData(v38);
    CFRelease(MutableCopy);
    if (v37)
    {
      v27 = *(v37 + 8);
      if (!v27)
      {
LABEL_66:
        MutableCopy = 0;
        goto LABEL_67;
      }

      if (v31)
      {
        if (RecordID == -1)
        {
          if (!v65)
          {
            v42 = 1;
            goto LABEL_54;
          }

          _ABCCreateUTF8StringFromCFString(v65);
          OUTLINED_FUNCTION_0_4();
          v59 = OUTLINED_FUNCTION_10_0();
          sqlite3_bind_text(v59, v60, v61, -1, v62);
LABEL_53:
          v42 = 2;
LABEL_54:
          v43 = *(v37 + 8);
          if (v66)
          {
            if (ABTokenListGetCount(v18) >= 1)
            {
              v44 = 0;
              v45 = *MEMORY[0x1E695E4A8];
              do
              {
                Mutable = CFStringCreateMutable(v45, 0);
                TokenAtIndex = ABTokenListGetTokenAtIndex(v18, v44);
                CFStringAppend(Mutable, @"##&");
                CFStringAppend(Mutable, TokenAtIndex);
                CFStringAppend(Mutable, @"* ");
                v48 = 14;
                do
                {
                  _ABCCreateUTF8StringFromCFString(Mutable);
                  OUTLINED_FUNCTION_0_4();
                  sqlite3_bind_text(v43, v42++, v49, -1, v50);
                  --v48;
                }

                while (v48);
                CFRelease(Mutable);
                ++v44;
              }

              while (ABTokenListGetCount(v18) > v44);
            }
          }

          else
          {
            v51 = CFStringCreateMutable(*MEMORY[0x1E695E4A8], 0);
            Count = ABTokenListGetCount(v18);
            if (Count >= 1)
            {
              v53 = Count;
              for (i = 0; i != v53; ++i)
              {
                v55 = ABTokenListGetTokenAtIndex(v18, i);
                CFStringAppend(v51, @"##&");
                CFStringAppend(v51, v55);
                CFStringAppend(v51, @"* ");
              }
            }

            _ABCCreateUTF8StringFromCFString(v51);
            OUTLINED_FUNCTION_0_4();
            sqlite3_bind_text(v43, v42, v56, -1, v57);
            CFRelease(v51);
          }

          v27 = CPRecordStoreProcessStatementWithPropertyIndices();
          CPSqliteStatementReset();
          goto LABEL_66;
        }

        v39 = OUTLINED_FUNCTION_10_0();
        v41 = RecordID;
      }

      else
      {
        v39 = OUTLINED_FUNCTION_10_0();
        v41 = v30;
      }

      sqlite3_bind_int(v39, v40, v41);
      goto LABEL_53;
    }

    goto LABEL_74;
  }

LABEL_75:
  v27 = 0;
  if (v18)
  {
    goto LABEL_67;
  }

LABEL_68:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v27;
}

void _CopyPeopleAndMultiValuePropertiesMatchingNameWithCancellationCallback(uint64_t a1, __CFString *a2, int a3, int a4, const __CFArray **a5, const __CFArray **a6, const __CFArray **a7, uint64_t a8, uint64_t a9)
{
  v10 = a7;
  v12 = a5;
  v125 = 0;
  v126 = 0;
  v124 = 1;
  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  v16 = recordStoreContext(a1);
  if (v16)
  {
    v17 = *v16;
  }

  else
  {
    v17 = 0;
  }

  SearchCollator = ABAddressBookGetSearchCollator(v17);
  WordTokenizer = ABAddressBookGetWordTokenizer(v17);
  if (SearchCollator)
  {
    if (WordTokenizer)
    {
      v20 = ABCCreateArrayOfTokenizationsBySeparatingWordsInCompositeName(WordTokenizer, a2, 1);
      if (v20)
      {
        v21 = v20;
        if (CFArrayGetCount(v20) < 1)
        {
          v113 = v21;
          theArray = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          goto LABEL_86;
        }

        v123 = 0;
        ColumnListWithAliasAndExtraColumns = CPRecordStoreCreateColumnListWithAliasAndExtraColumns();
        v23 = a4;
        v24 = ColumnListWithAliasAndExtraColumns;
        v114 = v23;
        v25 = v23 < 0 || a6 == 0;
        v26 = !v25;
        if (v25)
        {
          v28 = @" FROM ABPersonSearchKey abs JOIN ABPerson abp ON abs.person_id = abp.ROWID WHERE";
        }

        else
        {
          if (v10)
          {
            v27 = @", identifier, abv.value, abv.label";
          }

          else
          {
            v27 = @", identifier";
          }

          CFStringAppend(ColumnListWithAliasAndExtraColumns, v27);
          v28 = @" FROM ABPersonSearchKey abs JOIN ABPerson abp ON abs.person_id = abp.ROWID JOIN ABMultiValue abv ON abp.ROWID = abv.record_id WHERE";
        }

        CFStringAppend(v24, v28);
        if (!a1)
        {
          v30 = v24;
          goto LABEL_126;
        }

        appendTokenizations(a2, v21, SearchCollator, v24, &v125, &v126, 0, 0);
        v30 = v24;
        if (v126 < 1)
        {
          v113 = v21;
          theArray = 0;
          v29 = 0;
          v31 = 0;
          a4 = v114;
LABEL_84:
          if (v123)
          {
            CFRelease(v123);
          }

LABEL_86:
          if (ABLogContactsSearch())
          {
            if (ABDiagnosticsEnabled())
            {
              ABPersonNameForProperty(a4);
              _ABLog2(6, "void _CopyPeopleAndMultiValuePropertiesMatchingNameWithCancellationCallback(ABCDBContextRef, CFStringRef, ABCPersonSortOrdering, ABCPropertyID, CFArrayRef *, CFArrayRef *, CFArrayRef *, ABCCancellationCallback, void *)", 4519, 0, @"Searching for %@ with property %i (%@):", v75, v76, v77, a2);
            }

            v112 = v30;
            v78 = theArray;
            if (v31 && CFArrayGetCount(v31) >= 1)
            {
              if (CFArrayGetCount(v31) >= 1)
              {
                v79 = 0;
                if (theArray)
                {
                  v80 = v29 == 0;
                }

                else
                {
                  v80 = 1;
                }

                v81 = !v80;
                do
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v31, v79);
                  v83 = ABPersonCopyCompositeName(ValueAtIndex);
                  v84 = ABDiagnosticsEnabled();
                  if (v81)
                  {
                    if (v84)
                    {
                      ABRecordGetRecordID(ValueAtIndex);
                      v85 = OUTLINED_FUNCTION_11_0();
                      CFArrayGetValueAtIndex(v85, v86);
                      CFArrayGetValueAtIndex(v29, v79);
                      v78 = theArray;
                      _ABLog2(6, "void _CopyPeopleAndMultiValuePropertiesMatchingNameWithCancellationCallback(ABCDBContextRef, CFStringRef, ABCPersonSortOrdering, ABCPropertyID, CFArrayRef *, CFArrayRef *, CFArrayRef *, ABCCancellationCallback, void *)", 4525, 0, @"%@ (%i) - %@ (%i)", v87, v88, v89, v83);
                    }

                    goto LABEL_110;
                  }

                  if (v29)
                  {
                    if (v84)
                    {
                      ABRecordGetRecordID(ValueAtIndex);
                      CFArrayGetValueAtIndex(v29, v79);
                      v90 = OUTLINED_FUNCTION_12_0();
                      v95 = 4527;
                      v96 = @"%@ (%i) - identifier %i";
LABEL_109:
                      _ABLog2(v90, v91, v95, 0, v96, v92, v93, v94, v105);
                    }
                  }

                  else if (v78)
                  {
                    if (v84)
                    {
                      ABRecordGetRecordID(ValueAtIndex);
                      v97 = OUTLINED_FUNCTION_11_0();
                      CFArrayGetValueAtIndex(v97, v98);
                      v90 = OUTLINED_FUNCTION_12_0();
                      v95 = 4529;
                      v96 = @"%@ (%i) - %@";
                      goto LABEL_109;
                    }
                  }

                  else if (v84)
                  {
                    v105 = v83;
                    ABRecordGetRecordID(ValueAtIndex);
                    v90 = 6;
                    v91 = "void _CopyPeopleAndMultiValuePropertiesMatchingNameWithCancellationCallback(ABCDBContextRef, CFStringRef, ABCPersonSortOrdering, ABCPropertyID, CFArrayRef *, CFArrayRef *, CFArrayRef *, ABCCancellationCallback, void *)";
                    v95 = 4531;
                    v96 = @"%@ (%i)";
                    goto LABEL_109;
                  }

LABEL_110:
                  if (v83)
                  {
                    CFRelease(v83);
                  }

                  ++v79;
                }

                while (v79 < CFArrayGetCount(v31));
              }
            }

            else if (ABDiagnosticsEnabled())
            {
              _ABLog2(6, "void _CopyPeopleAndMultiValuePropertiesMatchingNameWithCancellationCallback(ABCDBContextRef, CFStringRef, ABCPersonSortOrdering, ABCPropertyID, CFArrayRef *, CFArrayRef *, CFArrayRef *, ABCCancellationCallback, void *)", 4536, 0, @"No results found.", v99, v100, v101, v105);
            }

            v30 = v112;
            if (ABDiagnosticsEnabled())
            {
              _ABLog2(6, "void _CopyPeopleAndMultiValuePropertiesMatchingNameWithCancellationCallback(ABCDBContextRef, CFStringRef, ABCPersonSortOrdering, ABCPropertyID, CFArrayRef *, CFArrayRef *, CFArrayRef *, ABCCancellationCallback, void *)", 4538, 0, @"------", v102, v103, v104, v105);
            }
          }

          if (v12)
          {
            *v12 = v31;
          }

          else if (v31)
          {
            CFRelease(v31);
          }

          if (a6)
          {
            *a6 = v29;
          }

          v21 = v113;
          if (v10)
          {
            *v10 = theArray;
          }

          goto LABEL_126;
        }

        v121 = a8;
        v122 = a9;
        CPRecordStoreGetDatabase();
        v32 = CPSqliteDatabaseConnectionForWriting();
        if (a8)
        {
          v33 = v32 == 0;
        }

        else
        {
          v33 = 1;
        }

        v34 = !v33;
        v108 = v34;
        a4 = v114;
        if (!v33)
        {
          CPSqliteConnectionEnableProgressHandlerCallback();
        }

        if (v26)
        {
          CFStringAppend(v30, @" AND abv.property+0 = ?");
        }

        if (a3)
        {
          v35 = @" ORDER BY LastSortLanguageIndex+0, LastSortSection, LastSort";
        }

        else
        {
          v35 = @" ORDER BY FirstSortLanguageIndex+0, FirstSortSection, FirstSort";
        }

        CFStringAppend(v30, v35);
        if (a6)
        {
          CFStringAppend(v30, @", record_id, identifier");
        }

        CFStringAppend(v30, @";");
        v111 = v30;
        v36 = CPSqliteConnectionStatementForSQL();
        if (v36)
        {
          v37 = v36;
          if (*(v36 + 8))
          {
            bindTokenizations(v36, v125, &v124);
            v113 = v21;
            if (!a6)
            {
              v31 = CPRecordStoreProcessStatementWithPropertyIndices();
              CPSqliteStatementReset();
              theArray = 0;
              v29 = 0;
              v30 = v111;
LABEL_82:
              if (v108)
              {
                CPSqliteConnectionDisableProgressHandlerCallback();
              }

              goto LABEL_84;
            }

            v110 = v12;
            v38 = v124;
            sqlite3_bind_int(*(v37 + 8), v124, v114);
            v124 = v38 + 1;
            v118 = 0;
            v119 = 0;
            v120 = 0;
            v39 = *MEMORY[0x1E695E480];
            v40 = OUTLINED_FUNCTION_1_3();
            Mutable = CFArrayCreateMutable(v40, v41, v42);
            if (Mutable)
            {
              v29 = Mutable;
              v118 = Mutable;
              if (v10)
              {
                v44 = CFArrayCreateMutable(v39, 0, MEMORY[0x1E695E9C0]);
                if (!v44)
                {
                  goto LABEL_54;
                }

                v45 = v44;
                v119 = v44;
                v46 = OUTLINED_FUNCTION_1_3();
                v120 = CFArrayCreateMutable(v46, v47, v48);
                if (!v120)
                {
                  goto LABEL_54;
                }
              }

              else
              {
                v45 = 0;
                v119 = 0;
                v120 = 0;
              }

              theArray = v45;
              v31 = CPRecordStoreProcessStatementWithPropertyIndices();
              CPSqliteStatementReset();
              v30 = v111;
              if (v10)
              {
                CPRecordStoreGetDatabase();
                v49 = CPSqliteDatabaseStatementForReading();
                v50 = recordStoreContext(a1);
                if (v50)
                {
                  v50 = *v50;
                }

                ABRegulatoryLogReadContactsData(v50);
                v51 = OUTLINED_FUNCTION_1_3();
                v55 = CFDictionaryCreateMutable(v51, v52, v53, v54);
                if (v49)
                {
                  CPSqliteStatementSendResults();
                  CPSqliteStatementReset();
                  CPSqliteDatabaseReleaseSqliteStatement();
                }

                if (v55)
                {
                  v106 = v10;
                  Count = CFArrayGetCount(v31);
                  if (Count >= 1)
                  {
                    v57 = Count;
                    theDict = v55;
                    v58 = 0;
                    v59 = 0;
                    v60 = 0;
                    v107 = Count;
                    do
                    {
                      v61 = CFArrayGetValueAtIndex(v31, v58);
                      v69 = *(CPRecordGetPropertyDescriptor() + 32);
                      if ((v69 - 262) <= 0xFFFFFFFD)
                      {
                        v117 = CFArrayGetValueAtIndex(v29, v58);
                        v70 = CFArrayGetValueAtIndex(theArray, v58);
                        v71 = CFArrayGetValueAtIndex(v120, v58);
                        CFDictionaryGetValue(theDict, v71);
                        if (v61 == v60)
                        {
                          if (v59)
                          {
                            OUTLINED_FUNCTION_15(v59, v70, v63, v64, v65, &v117);
                          }
                        }

                        else
                        {
                          if (v59)
                          {
                            ABCRecordSetContents();
                            CFRelease(v59);
                          }

                          if (CPRecordGetCachedProperty())
                          {
                            v59 = 0;
                          }

                          else
                          {
                            v59 = ABCMultiValueCreateMutable(v69);
                            OUTLINED_FUNCTION_15(v59, v70, v72, v73, v74, &v117);
                          }
                        }

                        v57 = v107;
                        a4 = v114;
                      }

                      ++v58;
                      v60 = v61;
                    }

                    while (v57 != v58);
                    v55 = theDict;
                    if (v59)
                    {
                      ABMultiValueSetImmutable(v59, v62, v63, v64, v65, v66, v67, v68, v105);
                      ABCRecordSetContents();
                      CFRelease(v59);
                    }
                  }

                  CFRelease(v55);
                  v10 = v106;
                  v30 = v111;
                }
              }

              if (v120)
              {
                CFRelease(v120);
              }

              v12 = v110;
              goto LABEL_82;
            }
          }
        }

        else
        {
          CFShow(@"error");
        }

LABEL_54:
        v30 = v111;
LABEL_126:
        CFRelease(v21);
        if (v125)
        {
          releaseTokenizationSortKeys(v125);
        }

        if (v30)
        {
          CFRelease(v30);
        }
      }
    }
  }
}

uint64_t _PersonUIDWithValueForMultivalueProperty(uint64_t a1, int a2, const __CFString *a3, uint64_t a4)
{
  v26[6] = *MEMORY[0x1E69E9840];
  v25 = 0;
  v22 = 0u;
  v23 = 0u;
  usedBufLen = 0;
  CPRecordStoreGetDatabase();
  v8 = CPSqliteDatabaseStatementForReading();
  v9 = recordStoreContext(a1);
  if (v9)
  {
    v9 = *v9;
  }

  ABRegulatoryLogReadContactsData(v9);
  if (!v8 || !*(v8 + 8))
  {
    return 0;
  }

  sqlite3_bind_int(*(v8 + 8), 1, a2);
  Length = CFStringGetLength(a3);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v12 = OUTLINED_FUNCTION_7_0(MaximumSizeForEncoding);
  OUTLINED_FUNCTION_5_1();
  CFStringGetBytes(v13, v27, v14, v15, v16, v12, MaximumSizeForEncoding, &usedBufLen);
  v12[usedBufLen] = 0;
  OUTLINED_FUNCTION_0_4();
  v17 = OUTLINED_FUNCTION_13_0();
  sqlite3_bind_text(v17, v18, v12, -1, v19);
  v26[0] = 0;
  v26[1] = ABCDBContextFindMultivalueSetter;
  v26[2] = &v25;
  v26[3] = 1;
  v26[4] = ABCDBContextFindMultivalueSetter;
  v26[5] = a4;
  *&v23 = v26;
  DWORD2(v23) = 2;
  v24 = 0;
  CPSqliteStatementSendResults();
  CPSqliteStatementReset();
  CPSqliteDatabaseReleaseSqliteStatement();
  return v25;
}

uint64_t ABCDBContextDeleteLabel(uint64_t a1, const __CFString *a2)
{
  CPRecordStoreGetDatabase();
  result = CPSqliteDatabaseStatementForWriting();
  if (a1 && result)
  {
    if (*(result + 8))
    {
      usedBufLen = 0;
      Length = CFStringGetLength(a2);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v7 = OUTLINED_FUNCTION_7_0(MaximumSizeForEncoding);
      OUTLINED_FUNCTION_5_1();
      CFStringGetBytes(v8, v18, v9, v10, v11, v7, MaximumSizeForEncoding, &usedBufLen);
      v7[usedBufLen] = 0;
      OUTLINED_FUNCTION_0_4();
      sqlite3_bind_text(v12, 1, v7, -1, v13);
      CPSqliteStatementPerform();
      CPSqliteStatementReset();
      CPSqliteDatabaseReleaseSqliteStatement();
      v14 = recordStoreContext(a1);
      if (v14)
      {
        if (*v14)
        {
          *(*v14 + 384) |= 0x1C000u;
        }
      }
    }

    v15 = recordStoreContext(a1);
    if (v15)
    {
      v16 = *(v15 + 8);
      if (v16)
      {
        CFDictionaryRemoveValue(v16, a2);
      }
    }

    return CPRecordStoreInvalidateCachedInstancesOfClass();
  }

  return result;
}

void ABCDBContextMultiValueWillChange(const void *a1, int a2, uint64_t a3)
{
  if (!a1)
  {
    return;
  }

  ID = CPRecordGetID();
  if (ID == -1)
  {
    return;
  }

  v7 = ID;
  Store = CPRecordGetStore();
  if (!Store)
  {
    return;
  }

  CachedProperty = CPRecordGetCachedProperty();
  v9 = CachedProperty;
  if (CachedProperty)
  {
    Count = ABCMultiValueGetCount(CachedProperty);
    if (a3)
    {
LABEL_6:
      v11 = ABCMultiValueGetCount(a3);
      goto LABEL_9;
    }
  }

  else
  {
    Count = 0;
    if (a3)
    {
      goto LABEL_6;
    }
  }

  v11 = 0;
LABEL_9:
  if (Count >= 1)
  {
    v12 = 0;
    v13 = 0;
    v36 = a2;
    value = v7;
    v14 = kABPersonInternalUUIDProperty;
    do
    {
      IdentifierAtIndex = ABCMultiValueGetIdentifierAtIndex(v9, v12);
      if (v11 < 1)
      {
LABEL_15:
        if (!v13)
        {
          v13 = recordStoreContext(Store);
          if (!v13)
          {
            return;
          }
        }

        v17 = *(v13 + 24);
        if (!v17)
        {
          OUTLINED_FUNCTION_2_2();
          *(v13 + 24) = CFArrayCreateMutable(v18, v19, v20);
          OUTLINED_FUNCTION_2_2();
          *(v13 + 32) = CFArrayCreateMutable(v21, v22, v23);
          OUTLINED_FUNCTION_2_2();
          *(v13 + 40) = CFArrayCreateMutable(v24, v25, v26);
          v27 = OUTLINED_FUNCTION_3_2();
          v28 = MEMORY[0x1E695E9C0];
          *(v13 + 48) = CFArrayCreateMutable(v27, v29, MEMORY[0x1E695E9C0]);
          v30 = OUTLINED_FUNCTION_3_2();
          Mutable = CFArrayCreateMutable(v30, v31, v28);
          *(v13 + 56) = Mutable;
          v17 = *(v13 + 24);
          if (!v17 || !*(v13 + 32) || !*(v13 + 40) || !*(v13 + 48) || !Mutable)
          {
            return;
          }
        }

        CFArrayAppendValue(v17, value);
        CFArrayAppendValue(*(v13 + 32), v36);
        CFArrayAppendValue(*(v13 + 40), IdentifierAtIndex);
        v33 = ABRecordCopyValue(a1, v14);
        CFArrayAppendValue(*(v13 + 48), v33);
        CFRelease(v33);
        v34 = ABCMultiValueCopyUUIDAtIndex(v9, v12);
        CFArrayAppendValue(*(v13 + 56), v34);
        CFRelease(v34);
      }

      else
      {
        v16 = 0;
        while (IdentifierAtIndex != ABCMultiValueGetIdentifierAtIndex(a3, v16))
        {
          if (v11 == ++v16)
          {
            goto LABEL_15;
          }
        }
      }

      ++v12;
    }

    while (v12 != Count);
  }
}

void _appendToPersonChangeHistory(uint64_t a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v11 = recordStoreContext(a1);
    v12 = *(v11 + 64);
    if (v12 || (OUTLINED_FUNCTION_2_2(), *(v11 + 64) = CFArrayCreateMutable(v13, v14, v15), OUTLINED_FUNCTION_2_2(), *(v11 + 72) = CFArrayCreateMutable(v16, v17, v18), v19 = MEMORY[0x1E695E9C0], v20 = OUTLINED_FUNCTION_3_2(), *(v11 + 80) = CFArrayCreateMutable(v20, v21, v19), v22 = OUTLINED_FUNCTION_3_2(), *(v11 + 88) = CFArrayCreateMutable(v22, v23, v19), v24 = OUTLINED_FUNCTION_3_2(), Mutable = CFArrayCreateMutable(v24, v25, v19), *(v11 + 96) = Mutable, (v12 = *(v11 + 64)) != 0) && *(v11 + 72) && *(v11 + 80) && *(v11 + 88) && Mutable)
    {
      CFArrayAppendValue(v12, a3);
      CFArrayAppendValue(*(v11 + 72), a2);
      v27 = *(v11 + 80);
      v28 = *MEMORY[0x1E6996588];
      v29 = (*MEMORY[0x1E6996588] + 16);
      v30 = (*v29)(*MEMORY[0x1E6996588], a4);
      CFArrayAppendValue(v27, v30);
      v31 = *(v11 + 88);
      v32 = (*v29)(v28, a5);
      CFArrayAppendValue(v31, v32);
      v33 = *(v11 + 96);
      v34 = (*v29)(v28, a6);

      CFArrayAppendValue(v33, v34);
    }
  }
}

void ABCDBContextLogChangeForLinkingPersons(uint64_t a1, ABRecordRef record, const void *a3, uint64_t a4)
{
  RecordID = ABRecordGetRecordID(record);
  v9 = kABPersonInternalUUIDProperty;
  v10 = ABRecordCopyValue(record, kABPersonInternalUUIDProperty);
  v11 = ABRecordCopyValue(a3, v9);
  _appendToPersonChangeHistory(a1, 6u, RecordID, v10, v11, a4);
  CFRelease(v10);

  CFRelease(v11);
}

void ABCDBContextSaveCallback(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        v5 = Context;
        v45 = a2;
        LastSequenceNumber = CPRecordStoreGetLastSequenceNumber();
        if (v5[3] && ABChangeHistoryHasSyncAgentClient(a1))
        {
          v7 = CPSqliteConnectionStatementForSQL();
          if (v7)
          {
            v8 = v7;
            Count = CFArrayGetCount(v5[3]);
            if (Count >= 1)
            {
              for (i = 0; i != Count; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v5[3], i);
                v11 = CFArrayGetValueAtIndex(v5[4], i);
                v12 = CFArrayGetValueAtIndex(v5[5], i);
                v13 = CFArrayGetValueAtIndex(v5[6], i);
                v14 = CFArrayGetValueAtIndex(v5[7], i);
                sqlite3_bind_int(*(v8 + 8), 1, ValueAtIndex);
                sqlite3_bind_int(*(v8 + 8), 2, v11);
                sqlite3_bind_int(*(v8 + 8), 3, v12);
                sqlite3_bind_int(*(v8 + 8), 4, LastSequenceNumber + 1);
                v15 = *(v8 + 8);
                v16 = _ABCCreateUTF8StringFromCFString(v13);
                v17 = MEMORY[0x1E69E9B38];
                sqlite3_bind_text(v15, 5, v16, -1, MEMORY[0x1E69E9B38]);
                v18 = *(v8 + 8);
                v19 = _ABCCreateUTF8StringFromCFString(v14);
                sqlite3_bind_text(v18, 6, v19, -1, v17);
                if (CPSqliteStatementPerform() != 101)
                {
                  v20 = *MEMORY[0x1E69E9848];
                  v21 = sqlite3_errcode(*(v45 + 8));
                  v22 = sqlite3_errmsg(*(v45 + 8));
                  fprintf(v20, "Error %d performing multivalue delete log statement: %s\n", v21, v22);
                }

                CPSqliteStatementReset();
              }
            }
          }

          else
          {
            v23 = *MEMORY[0x1E69E9848];
            v24 = sqlite3_errcode(*(v45 + 8));
            v25 = sqlite3_errmsg(*(v45 + 8));
            fprintf(v23, "Error %d preparing multivalue delete log statement: %s\n", v24, v25);
          }
        }

        v26 = *(*v5 + 43);
        if (!v26)
        {
          v26 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
          if (!v26)
          {
            v26 = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
          }
        }

        ABChangeHistoryAssociateSequenceNumberWithClient(*(*v5 + 44), v45, LastSequenceNumber + 1, v26);
        v27 = v5[8];
        if (v27)
        {
          v28 = CFArrayGetCount(v27);
          if (v28 >= 1)
          {
            v29 = v28;
            for (j = 0; j != v29; ++j)
            {
              v31 = CFArrayGetValueAtIndex(v5[8], j);
              v32 = CFArrayGetValueAtIndex(v5[9], j);
              CFArrayGetValueAtIndex(v5[10], j);
              v33 = OUTLINED_FUNCTION_6_0();
              v35 = v34(v33);
              CFArrayGetValueAtIndex(v5[11], j);
              v36 = OUTLINED_FUNCTION_6_0();
              v38 = v37(v36);
              CFArrayGetValueAtIndex(v5[12], j);
              v39 = OUTLINED_FUNCTION_6_0();
              v41 = v40(v39);
              ABChangeHistoryInsertPersonChangeRecord(a1, v31, v32, LastSequenceNumber + 1, 0, 0, -1, -1, v35, v38, v41);
            }
          }
        }

        v42 = v5[3];
        if (v42)
        {
          CFRelease(v42);
          v5[3] = 0;
          CFRelease(v5[4]);
          v5[4] = 0;
          CFRelease(v5[5]);
          v5[5] = 0;
          CFRelease(v5[6]);
          v5[6] = 0;
          CFRelease(v5[7]);
          v5[7] = 0;
        }

        v43 = v5[8];
        if (v43)
        {
          CFRelease(v43);
          v5[8] = 0;
          CFRelease(v5[9]);
          v5[9] = 0;
          CFRelease(v5[10]);
          v5[10] = 0;
          CFRelease(v5[11]);
          v5[11] = 0;
          CFRelease(v5[12]);
          v5[12] = 0;
        }
      }
    }
  }
}

uint64_t *ABCDBContextPreCommitSaveCallback(uint64_t *result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = result;
      result = CPRecordStoreGetContext();
      if (result)
      {
        result = recordStoreContext(v2);
        if (result)
        {
          v3 = *result;
          if (*result)
          {
            if ((*(v3 + 385) & 0x7E0) != 0)
            {
              result = CPRecordStoreGetLastSequenceNumber();
              v4 = *(v3 + 384);
              if ((v4 & 0x4000) != 0)
              {
                result = OUTLINED_FUNCTION_8_0();
                v4 = *(v3 + 384) & 0xFFFFBFFF;
                *(v3 + 384) = v4;
                if ((v4 & 0x8000) == 0)
                {
LABEL_9:
                  if ((v4 & 0x10000) == 0)
                  {
                    goto LABEL_10;
                  }

                  goto LABEL_17;
                }
              }

              else if ((v4 & 0x8000) == 0)
              {
                goto LABEL_9;
              }

              result = OUTLINED_FUNCTION_8_0();
              v4 = *(v3 + 384) & 0xFFFF7FFF;
              *(v3 + 384) = v4;
              if ((v4 & 0x10000) == 0)
              {
LABEL_10:
                if ((v4 & 0x2000) == 0)
                {
                  goto LABEL_11;
                }

                goto LABEL_18;
              }

LABEL_17:
              result = OUTLINED_FUNCTION_8_0();
              v4 = *(v3 + 384) & 0xFFFEFFFF;
              *(v3 + 384) = v4;
              if ((v4 & 0x2000) == 0)
              {
LABEL_11:
                if ((v4 & 0x20000) == 0)
                {
                  goto LABEL_12;
                }

                goto LABEL_19;
              }

LABEL_18:
              result = OUTLINED_FUNCTION_8_0();
              v4 = *(v3 + 384) & 0xFFFFDFFF;
              *(v3 + 384) = v4;
              if ((v4 & 0x20000) == 0)
              {
LABEL_12:
                if ((v4 & 0x40000) == 0)
                {
                  return result;
                }

                goto LABEL_13;
              }

LABEL_19:
              result = OUTLINED_FUNCTION_8_0();
              v5 = *(v3 + 384) & 0xFFFDFFFF;
              *(v3 + 384) = v5;
              if ((v5 & 0x40000) == 0)
              {
                return result;
              }

LABEL_13:
              result = OUTLINED_FUNCTION_8_0();
              *(v3 + 384) &= ~0x40000u;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t ABCDBContextGetMultiValueDeletesInSourceFromSequenceNumberExcludingClientIdentifer(uint64_t a1, int a2, int a3, const char *a4, __CFArray **a5, __CFArray **a6, __CFArray **a7, CFMutableArrayRef *a8, CFMutableArrayRef *a9)
{
  v9 = 0xFFFFFFFFLL;
  if (a1 && a5 && a6 && a7 && CPRecordStoreGetDatabase())
  {
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    CFStringAppend(Mutable, @"SELECT ROWID, record_id, property_id, identifier, sequence_number");
    v49 = a8;
    if (a8)
    {
      v16 = a9 == 0;
    }

    else
    {
      v16 = 1;
    }

    v17 = !v16;
    if (!v16)
    {
      CFStringAppend(Mutable, @", record_uid, identifier_uid");
    }

    CFStringAppend(Mutable, @" FROM ABPersonMultiValueDeletes");
    v19 = a2 == -1 || a3 == -1 || a4 == 0;
    v20 = !v19;
    if (!v19)
    {
      CFStringAppend(Mutable, @" WHERE record_id IN (SELECT ROWID FROM ABPerson WHERE StoreID = ?) AND sequence_number > ? AND sequence_number NOT IN (SELECT sequence_number FROM ClientSequence WHERE client_identifier = ?)");
    }

    CFStringAppend(Mutable, @" ORDER BY ROWID ASC;");
    v21 = CPSqliteDatabaseStatementForReading();
    v22 = recordStoreContext(a1);
    if (v22)
    {
      v22 = *v22;
    }

    ABRegulatoryLogReadContactsData(v22);
    if (v21 && (v23 = *(v21 + 8)) != 0)
    {
      if (v20)
      {
        sqlite3_bind_int(v23, 1, a2);
        sqlite3_bind_int(*(v21 + 8), 2, a3);
        sqlite3_bind_text(*(v21 + 8), 3, a4, -1, 0);
      }

      v24 = OUTLINED_FUNCTION_1_3();
      *a5 = CFArrayCreateMutable(v24, v25, v26);
      v27 = OUTLINED_FUNCTION_1_3();
      *a6 = CFArrayCreateMutable(v27, v28, v29);
      v30 = OUTLINED_FUNCTION_1_3();
      *a7 = CFArrayCreateMutable(v30, v31, v32);
      if (v17)
      {
        v33 = MEMORY[0x1E695E9C0];
        v34 = OUTLINED_FUNCTION_3_2();
        *v49 = CFArrayCreateMutable(v34, v35, v33);
        v36 = OUTLINED_FUNCTION_3_2();
        *a9 = CFArrayCreateMutable(v36, v37, v33);
      }

      if (sqlite3_step(*(v21 + 8)) == 100)
      {
        do
        {
          v38 = *a5;
          v39 = sqlite3_column_int(*(v21 + 8), 1);
          CFArrayAppendValue(v38, v39);
          v40 = *a6;
          v41 = sqlite3_column_int(*(v21 + 8), 2);
          CFArrayAppendValue(v40, v41);
          v42 = *a7;
          v43 = sqlite3_column_int(*(v21 + 8), 3);
          CFArrayAppendValue(v42, v43);
          if (v17)
          {
            v44 = sqlite3_column_text(*(v21 + 8), 5);
            if (v44)
            {
              v45 = OUTLINED_FUNCTION_14(v44);
              CFArrayAppendValue(*v49, v45);
              CFRelease(v45);
            }

            v46 = sqlite3_column_text(*(v21 + 8), 6);
            if (v46)
            {
              v47 = OUTLINED_FUNCTION_14(v46);
              CFArrayAppendValue(*a9, v47);
              CFRelease(v47);
            }
          }

          v9 = sqlite3_column_int(*(v21 + 8), 4);
        }

        while (sqlite3_step(*(v21 + 8)) == 100);
      }

      else
      {
        v9 = 0xFFFFFFFFLL;
      }

      CPSqliteStatementReset();
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v9;
}

sqlite3_stmt *ABCDBContextDeleteMultiValueDeletesInSourceToSequenceNumber(sqlite3_stmt *result, int a2, int a3)
{
  if (result)
  {
    result = CPRecordStoreGetDatabase();
    if (result)
    {
      result = CPSqliteDatabaseStatementForWriting();
      if (result)
      {
        v5 = result;
        result = *(result + 1);
        if (result)
        {
          sqlite3_bind_int(result, 1, a3);
          if (a2 != -1)
          {
            sqlite3_bind_int(*(v5 + 1), 2, a2);
          }

          v6 = CPSqliteStatementPerform();
          CPSqliteStatementReset();
          return (v6 == 101);
        }
      }
    }
  }

  return result;
}

uint64_t ABCDBContextCreateABPersonTriggersAndIndicesAndDropFirst(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = ABCDBContextPerformSQLResultDone(a1, @"DROP INDEX IF EXISTS ABFirstSortIndex;");
    v5 = ABCDBContextPerformSQLResultDone(a1, @"CREATE INDEX IF NOT EXISTS ABFirstSortIndex on ABPerson(FirstSortLanguageIndex, FirstSortSection, FirstSort);");
    if (!v4)
    {
      return 0;
    }

    if (!v5)
    {
      return 0;
    }

    v6 = ABCDBContextPerformSQLResultDone(a1, @"DROP INDEX IF EXISTS ABLastSortIndex;");
    v7 = ABCDBContextPerformSQLResultDone(a1, @"CREATE INDEX IF NOT EXISTS ABLastSortIndex on ABPerson(LastSortLanguageIndex, LastSortSection, LastSort);");
    if (!v6)
    {
      return 0;
    }

    if (!v7)
    {
      return 0;
    }

    v8 = ABCDBContextPerformSQLResultDone(a1, @"DROP INDEX IF EXISTS ABFirstSortStoreIndex;");
    v9 = ABCDBContextPerformSQLResultDone(a1, @"DROP INDEX IF EXISTS ABFirstSortStore;");
    v10 = ABCDBContextPerformSQLResultDone(a1, @"CREATE INDEX IF NOT EXISTS ABFirstSortStoreIndex on ABPerson(StoreID, FirstSortLanguageIndex, FirstSortSection, FirstSort);");
    if (!v8)
    {
      return 0;
    }

    if (!v9)
    {
      return 0;
    }

    if (!v10)
    {
      return 0;
    }

    v11 = ABCDBContextPerformSQLResultDone(a1, @"DROP INDEX IF EXISTS ABLastSortStoreIndex;");
    v12 = ABCDBContextPerformSQLResultDone(a1, @"CREATE INDEX IF NOT EXISTS ABLastSortStoreIndex on ABPerson(StoreID, LastSortLanguageIndex, LastSortSection, LastSort);");
    if (!v11 || !v12)
    {
      return 0;
    }

    v13 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS DeletePersonLink;");
    v14 = v13 & ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS UpdatePersonLink;");
    v15 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS UpdatePersonLinkUponPersonUnlink;");
    v16 = v14 & v15 & ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS UpdatePersonUponLinkDeletion;");
    v17 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS UpdatePersonUponLinkInsertion;");
    v18 = v16 & v17 & ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS UpdatePersonUponLinkUpdate;");
  }

  else
  {
    if (!ABCDBContextPerformSQLResultDone(a1, @"CREATE INDEX IF NOT EXISTS ABFirstSortIndex on ABPerson(FirstSortLanguageIndex, FirstSortSection, FirstSort);") || !ABCDBContextPerformSQLResultDone(a1, @"CREATE INDEX IF NOT EXISTS ABLastSortIndex on ABPerson(LastSortLanguageIndex, LastSortSection, LastSort);") || !ABCDBContextPerformSQLResultDone(a1, @"CREATE INDEX IF NOT EXISTS ABFirstSortStoreIndex on ABPerson(StoreID, FirstSortLanguageIndex, FirstSortSection, FirstSort);") || !ABCDBContextPerformSQLResultDone(a1, @"CREATE INDEX IF NOT EXISTS ABLastSortStoreIndex on ABPerson(StoreID, LastSortLanguageIndex, LastSortSection, LastSort);"))
    {
      return 0;
    }

    v18 = 1;
  }

  v19 = ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS DeletePersonLink AFTER DELETE ON ABPerson BEGIN DELETE FROM ABPersonLink WHERE (ROWID = OLD.PersonLink AND (SELECT count() FROM ABPerson WHERE PersonLink = OLD.PersonLink) < 2); END;");
  if (!v18 || !v19 || !ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS UpdatePersonLink AFTER UPDATE OF PersonLink ON ABPerson BEGIN DELETE FROM ABPersonLink WHERE (ROWID = OLD.PersonLink AND (SELECT count() FROM ABPerson WHERE PersonLink = OLD.PersonLink) < 2); END;") || !ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS UpdatePersonLinkUponPersonUnlink AFTER UPDATE OF PersonLink ON ABPerson WHEN OLD.PersonLink != -1 AND NEW.PersonLink = -1 BEGIN UPDATE ABPersonLink SET PreferredNamePersonID = (SELECT ROWID FROM ABPerson abp WHERE abp.PersonLink = OLD.PersonLink ORDER BY abp.ROWID LIMIT 1) WHERE (ROWID = OLD.PersonLink AND PreferredNamePersonID = OLD.ROWID); END;") || !ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS UpdatePersonUponLinkDeletion AFTER DELETE ON ABPersonLink BEGIN     UPDATE ABPerson SET PersonLink = -1, IsPreferredName = 1 WHERE PersonLink = OLD.ROWID; END;") || !ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS UpdatePersonUponLinkInsertion AFTER INSERT ON ABPersonLink \nBEGIN \n    UPDATE ABPerson SET IsPreferredName = ab_update_value_from_trigger(ROWID = NEW.PreferredNamePersonID, 'IsPreferredName', ROWID) WHERE PersonLink = NEW.ROWID; \nEND; \n") || !ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS UpdatePersonUponLinkUpdate AFTER UPDATE ON ABPersonLink \nBEGIN \n    UPDATE ABPerson SET IsPreferredName = ab_update_value_from_trigger(ROWID = NEW.PreferredNamePersonID, 'IsPreferredName', ROWID) WHERE PersonLink = NEW.ROWID; \nEND; \n"))
  {
    return 0;
  }

  if (a2)
  {
    performSQLWithConnection();
    performSQLWithConnection();
    performSQLWithConnection();
  }

  if (!ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS NamePreferredPersonEditTrigger AFTER UPDATE OF Prefix, First, Middle, Last, Suffix, Organization, Kind ON ABPerson WHEN ((OLD.Prefix IS NOT NEW.Prefix) OR (OLD.First IS NOT NEW.First) OR (OLD.Middle IS NOT NEW.Middle) OR (OLD.Last IS NOT NEW.Last) OR (OLD.Suffix IS NOT NEW.Suffix) OR (OLD.Organization IS NOT NEW.Organization) OR (OLD.Kind IS NOT NEW.Kind)) BEGIN UPDATE ABPersonLink SET PreferredNamePersonID = OLD.ROWID WHERE (OLD.PersonLink = ROWID); END;") || !ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS NamePreferredPersonInsertTrigger AFTER INSERT ON ABPerson BEGIN UPDATE ABPersonLink SET PreferredNamePersonID = NEW.ROWID WHERE (ROWID = NEW.PersonLink AND PreferredNamePersonID = -1); END;") || !ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS NamePreferredPersonDeleteTrigger AFTER DELETE ON ABPerson BEGIN UPDATE ABPersonLink SET PreferredNamePersonID = (SELECT ROWID FROM ABPerson abp WHERE abp.PersonLink = OLD.PersonLink ORDER BY abp.ROWID LIMIT 1) WHERE (ROWID = OLD.PersonLink AND PreferredNamePersonID = OLD.ROWID); END;"))
  {
    return 0;
  }

  if (a2)
  {
    v20 = ABCDBContextPerformSQLResultDone(a1, @"DROP INDEX IF EXISTS ABPersonPersonLinkIndex;");
    v21 = ABCDBContextPerformSQLResultDone(a1, @"CREATE INDEX ABPersonPersonLinkIndex on ABPerson(PersonLink);");
    if (!v20)
    {
      return 0;
    }

    if (!v21)
    {
      return 0;
    }

    v22 = ABCDBContextPerformSQLResultDone(a1, @"DROP INDEX IF EXISTS ABPreferredFirstSortIndex;");
    v23 = ABCDBContextPerformSQLResultDone(a1, @"CREATE INDEX ABPreferredFirstSortIndex on ABPerson(IsPreferredName, FirstSortLanguageIndex, FirstSortSection, FirstSort);");
    if (!v22)
    {
      return 0;
    }

    if (!v23)
    {
      return 0;
    }

    v24 = ABCDBContextPerformSQLResultDone(a1, @"DROP INDEX IF EXISTS ABPreferredLastSortIndex;");
    v25 = ABCDBContextPerformSQLResultDone(a1, @"CREATE INDEX ABPreferredLastSortIndex on ABPerson(IsPreferredName, LastSortLanguageIndex, LastSortSection, LastSort);");
    if (!v24)
    {
      return 0;
    }

    if (!v25)
    {
      return 0;
    }

    v26 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS UpdatePersonLinkField;");
    v27 = ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS UpdatePersonLinkField AFTER UPDATE OF PersonLink ON ABPerson \nWHEN OLD.PersonLink != NEW.PersonLink \nBEGIN \n    UPDATE ABPerson \n    SET IsPreferredName = ab_update_value_from_trigger((NEW.PersonLink = -1 OR ROWID = (SELECT PreferredNamePersonID FROM ABPersonLink abl WHERE abl.ROWID = NEW.PersonLink)), 'IsPreferredName', ROWID) \n    WHERE ROWID = NEW.ROWID; \nEND; \n");
    if (!v26)
    {
      return 0;
    }

    if (!v27)
    {
      return 0;
    }

    v28 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS InitializePersonLinkField;");
    v29 = ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS InitializePersonLinkField AFTER INSERT ON ABPerson \nBEGIN \n    UPDATE ABPerson \n    SET IsPreferredName = ab_update_value_from_trigger((NEW.PersonLink = -1 OR ROWID = (SELECT PreferredNamePersonID FROM ABPersonLink abl WHERE abl.ROWID = NEW.PersonLink)), 'IsPreferredName', ROWID) \n    WHERE ROWID = NEW.ROWID; \nEND;\n ");
    if (!v28)
    {
      return 0;
    }

    if (!v29)
    {
      return 0;
    }

    v30 = ABCDBContextPerformSQLResultDone(a1, @"DROP TRIGGER IF EXISTS DeleteSearchKey;");
    v31 = ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS DeleteSearchKey AFTER DELETE ON ABPerson BEGIN DELETE FROM ABPersonSearchKey WHERE person_id = OLD.ROWID; END;");
    if (!v30)
    {
      return 0;
    }

    if (!v31)
    {
      return 0;
    }

    v32 = ABCDBContextPerformSQLResultDone(a1, @"DROP INDEX IF EXISTS ABPersonExternalUUIDIndex;");
    v33 = ABCDBContextPerformSQLResultDone(a1, @"CREATE INDEX ABPersonExternalUUIDIndex on ABPerson(ExternalUUID);");
    if (!v32 || !v33)
    {
      return 0;
    }

    v34 = ABCDBContextPerformSQLResultDone(a1, @"DROP INDEX IF EXISTS ABPersonExternalIdentifierIndex;");
  }

  else
  {
    if (!ABCDBContextPerformSQLResultDone(a1, @"CREATE INDEX ABPersonPersonLinkIndex on ABPerson(PersonLink);") || !ABCDBContextPerformSQLResultDone(a1, @"CREATE INDEX ABPreferredFirstSortIndex on ABPerson(IsPreferredName, FirstSortLanguageIndex, FirstSortSection, FirstSort);") || !ABCDBContextPerformSQLResultDone(a1, @"CREATE INDEX ABPreferredLastSortIndex on ABPerson(IsPreferredName, LastSortLanguageIndex, LastSortSection, LastSort);") || !ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS UpdatePersonLinkField AFTER UPDATE OF PersonLink ON ABPerson \nWHEN OLD.PersonLink != NEW.PersonLink \nBEGIN \n    UPDATE ABPerson \n    SET IsPreferredName = ab_update_value_from_trigger((NEW.PersonLink = -1 OR ROWID = (SELECT PreferredNamePersonID FROM ABPersonLink abl WHERE abl.ROWID = NEW.PersonLink)), 'IsPreferredName', ROWID) \n    WHERE ROWID = NEW.ROWID; \nEND; \n") || !ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS InitializePersonLinkField AFTER INSERT ON ABPerson \nBEGIN \n    UPDATE ABPerson \n    SET IsPreferredName = ab_update_value_from_trigger((NEW.PersonLink = -1 OR ROWID = (SELECT PreferredNamePersonID FROM ABPersonLink abl WHERE abl.ROWID = NEW.PersonLink)), 'IsPreferredName', ROWID) \n    WHERE ROWID = NEW.ROWID; \nEND;\n ") || !ABCDBContextPerformSQLResultDone(a1, @"CREATE TRIGGER IF NOT EXISTS DeleteSearchKey AFTER DELETE ON ABPerson BEGIN DELETE FROM ABPersonSearchKey WHERE person_id = OLD.ROWID; END;") || !ABCDBContextPerformSQLResultDone(a1, @"CREATE INDEX ABPersonExternalUUIDIndex on ABPerson(ExternalUUID);"))
    {
      return 0;
    }

    v34 = 1;
  }

  v35 = ABCDBContextPerformSQLResultDone(a1, @"CREATE INDEX ABPersonExternalIdentifierIndex on ABPerson(ExternalIdentifier);");
  if (!v34 || !v35)
  {
    return 0;
  }

  return _addLimitedAccessDeletionTriggers(a1, a2);
}

uint64_t performSQLWithConnection()
{
  result = CPSqliteConnectionStatementForSQL();
  if (result)
  {
    CPSqliteStatementPerform();

    return CPSqliteStatementReset();
  }

  return result;
}

void _migrateStoreAndAccountTables_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138543362;
  v2 = @"SELECT ProviderIdentifier, ProviderMetadata FROM ABStore_old;";
  _os_log_error_impl(&dword_1B7EFB000, log, OS_LOG_TYPE_ERROR, "Failed to prepare sqlite. sql: %{public}@.", &v1, 0xCu);
}

void ABCDBContextPerformSQLResultDone_cold_1(uint64_t a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 67240450;
  v3[1] = a2;
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&dword_1B7EFB000, log, OS_LOG_TYPE_ERROR, "Failed to execute sqlite. Result: %{public}d, sql: %{public}@.", v3, 0x12u);
}

uint64_t _createABDatabaseTriggersAndIndicesAndDropFirst_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9848];
  v2 = sqlite3_errmsg(*(a1 + 8));
  return fprintf(v1, "error initializing AB database (_createABDatabaseTriggersAndIndicesAndDropFirst): %s\n", v2);
}

void __getIntlUtilityClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getIntlUtilityClass(void)_block_invoke") description:{@"ABCDBContext.m", 67, @"Unable to find class %s", "IntlUtility"}];
  __break(1u);
}

void __getIntlUtilityClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *IntlPreferencesLibrary(void)") description:{@"ABCDBContext.m", 66, @"%s", *a1}];
  __break(1u);
}

void __ABCGetICUCollatorVersions_block_invoke_cold_1(int *a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_1B7EFB000, a2, OS_LOG_TYPE_ERROR, "Error opening root collator to retrieve version number, code=%d", v3, 8u);
}

void ABCreateSortKey_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B7EFB000, a2, OS_LOG_TYPE_ERROR, "Internal error from ucol_getSortKey for '%@'", &v2, 0xCu);
}

const void *ABCSourceCopyLocalSource(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = ABCDBContextRecordForUIDOfType(*(a1 + 16), 0, ABCSourceClass);
  if (!v2)
  {
    CPRecordStoreGetDatabase();
    CPSqliteDatabaseConnectionForWriting();
    if (CPSqliteConnectionStatementForSQL())
    {
      CPSqliteStatementPerform();
      CPSqliteStatementReset();
      CPSqliteDatabaseReleaseSqliteConnection();
      v3 = ABCDBContextRecordForUIDOfType(*(a1 + 16), 0, ABCSourceClass);
      if (!v3)
      {
        return v3;
      }

      goto LABEL_4;
    }

    return 0;
  }

  v3 = v2;
LABEL_4:
  CFRetain(v3);
  return v3;
}

uint64_t _ABCGetActualDefaultSource(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  CPRecordStoreGetDatabase();
  CPSqliteDatabaseConnectionForReading();
  v2 = CPSqliteConnectionIntegerForPropertyWithDefaultValue();
  if ((v2 & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = v2;
  v4 = *(a1 + 16);
  v5 = ABCSourceClass;

  return ABCDBContextRecordForUIDOfType(v4, v3, v5);
}

void ABAddressBookCopyArrayOfAllSourcesWithAccountIdentifier_cold_1(uint64_t a1, CFArrayRef *a2)
{
  values = ABCSourceCopyLocalSource(a1);
  if (values)
  {
    v3 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
    CFRelease(values);
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
}

void ABAddressBookSetMe_cold_1(__CFString **a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = ABLogErrorPtr(a1);
  _os_log_error_impl(&dword_1B7EFB000, a2, OS_LOG_TYPE_ERROR, "AddressBook could not set the Me card. %{public}@", &v3, 0xCu);
}

uint64_t _countProperty(uint64_t a1, int a2, ABRecordRef record)
{
  if (!a1)
  {
    return 0;
  }

  v5 = record ? ABRecordGetRecordID(record) : -1;
  CPRecordStoreGetDatabase();
  v6 = CPSqliteDatabaseStatementForReading();
  ABRegulatoryLogReadContactsData(a1);
  if (!v6)
  {
    return 0;
  }

  v7 = *(v6 + 8);
  if (!v7)
  {
    return 0;
  }

  sqlite3_bind_int(v7, 1, a2);
  if (v5 != -1)
  {
    sqlite3_bind_int(*(v6 + 8), 2, v5);
  }

  v8 = CPSqliteStatementIntegerResult();
  CPSqliteStatementReset();
  return v8;
}

uint64_t ABAddressBookGetPhoneNumberCountInSource(uint64_t a1, const void *a2)
{
  if (ABLogAPIUsage())
  {
    v16 = _isMainThread();
    v5 = OUTLINED_FUNCTION_3_2();
    CFStringCreateWithFormat(v5, v6, v7);
    v8 = OUTLINED_FUNCTION_4_2();
    ABLogAddressBook(v8);
    v9 = OUTLINED_FUNCTION_7();
    _ABLog2(v9, v10, 705, v2, v11, v12, v13, v14, v16);
    CFRelease(v2);
  }

  return _countProperty(a1, kABPersonPhoneProperty, a2);
}

uint64_t ABAddressBookGetPhoneNumberCount(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v14 = _isMainThread();
    v3 = OUTLINED_FUNCTION_3_2();
    CFStringCreateWithFormat(v3, v4, v5);
    v6 = OUTLINED_FUNCTION_3_3();
    ABLogAddressBook(v6);
    v7 = OUTLINED_FUNCTION_7();
    _ABLog2(v7, v8, 711, v1, v9, v10, v11, v12, v14);
    CFRelease(v1);
  }

  return _countProperty(a1, kABPersonPhoneProperty, 0);
}

CFMutableArrayRef ABAddressBookCopyArrayOfAllEmailAddresses(CFMutableArrayRef Mutable)
{
  if (ABLogAPIUsage())
  {
    v15 = _isMainThread();
    v3 = OUTLINED_FUNCTION_3_2();
    CFStringCreateWithFormat(v3, v4, v5);
    v6 = OUTLINED_FUNCTION_3_3();
    ABLogAddressBook(v6);
    v7 = OUTLINED_FUNCTION_7();
    _ABLog2(v7, v8, 741, v1, v9, v10, v11, v12, v15);
    CFRelease(v1);
  }

  if (Mutable)
  {
    CPRecordStoreGetDatabase();
    CPSqliteDatabaseStatementForReading();
    v13 = OUTLINED_FUNCTION_3_3();
    ABRegulatoryLogReadContactsData(v13);
    if (v1 && *(v1 + 8))
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      sqlite3_bind_int(*(v1 + 8), 1, kABPersonEmailProperty);
      OUTLINED_FUNCTION_5_2();
      CPSqliteStatementReset();
    }

    else
    {
      return 0;
    }
  }

  return Mutable;
}

void ABAddressBookMapPeopleMatchingString(uint64_t a1, const __CFString *a2, const __CFString *a3, const void *a4, const void *a5, int a6, int a7, uint64_t a8, uint64_t a9)
{
  if (ABLogAPIUsage())
  {
    v27 = _isMainThread();
    v17 = OUTLINED_FUNCTION_3_2();
    v20 = CFStringCreateWithFormat(v17, v18, v19);
    ABLogAddressBook(a1);
    v21 = OUTLINED_FUNCTION_7();
    _ABLog2(v21, v22, 1051, v20, v23, v24, v25, v26, v27);
    CFRelease(v20);
  }

  if (a1)
  {
    if (a2)
    {
      ABCIteratePeopleMatchingStringWithCallbacks(*(a1 + 16), a2, a3, a4, a5, a6, a7, a8, a9, 0);
    }
  }
}

CFMutableArrayRef ABAddressBookCopyArrayOfUIDsMatchingExternalUUID(CFMutableArrayRef Mutable)
{
  if (ABLogAPIUsage())
  {
    v22 = _isMainThread();
    v3 = OUTLINED_FUNCTION_3_2();
    CFStringCreateWithFormat(v3, v4, v5);
    v6 = OUTLINED_FUNCTION_4_2();
    ABLogAddressBook(v6);
    v7 = OUTLINED_FUNCTION_7();
    _ABLog2(v7, v8, 2013, v1, v9, v10, v11, v12, v22);
    CFRelease(v1);
  }

  if (Mutable)
  {
    CPRecordStoreGetDatabase();
    CPSqliteDatabaseStatementForReading();
    v13 = OUTLINED_FUNCTION_4_2();
    ABRegulatoryLogReadContactsData(v13);
    if (v1 && v1->info)
    {
      v14 = OUTLINED_FUNCTION_3_2();
      Mutable = CFArrayCreateMutable(v14, v15, 0);
      info = v1->info;
      _CPCreateUTF8StringFromCFString();
      OUTLINED_FUNCTION_0_6();
      OUTLINED_FUNCTION_6_1(info, v17, v18, v19, v20);
      CPSqliteStatementSendResults();
      CPSqliteStatementReset();
    }

    else
    {
      return 0;
    }
  }

  return Mutable;
}

CFMutableArrayRef ABAddressBookCopyArrayOfInternalUUIDsOfPeopleWithWallpaper(CFMutableArrayRef Mutable)
{
  if (ABLogAPIUsage())
  {
    v15 = _isMainThread();
    v3 = OUTLINED_FUNCTION_3_2();
    CFStringCreateWithFormat(v3, v4, v5);
    v6 = OUTLINED_FUNCTION_3_3();
    ABLogAddressBook(v6);
    v7 = OUTLINED_FUNCTION_7();
    _ABLog2(v7, v8, 2052, v1, v9, v10, v11, v12, v15);
    CFRelease(v1);
  }

  if (Mutable)
  {
    CPRecordStoreGetDatabase();
    CPSqliteDatabaseStatementForReading();
    v13 = OUTLINED_FUNCTION_3_3();
    ABRegulatoryLogReadContactsData(v13);
    if (v1 && v1->info)
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      OUTLINED_FUNCTION_5_2();
      CPSqliteStatementReset();
    }

    else
    {
      return 0;
    }
  }

  return Mutable;
}

const __CFString *ABAddressBookCopyRecordIDsOfPeopleWithAvatarRecipes(const __CFString *Mutable)
{
  if (ABLogAPIUsage())
  {
    v17 = _isMainThread();
    v3 = OUTLINED_FUNCTION_3_2();
    CFStringCreateWithFormat(v3, v4, v5);
    v6 = OUTLINED_FUNCTION_3_3();
    ABLogAddressBook(v6);
    v7 = OUTLINED_FUNCTION_7();
    _ABLog2(v7, v8, 2081, v1, v9, v10, v11, v12, v17);
    CFRelease(v1);
  }

  if (Mutable)
  {
    if (ABCAddressBookGetImageStore(Mutable) && (CPRecordStoreGetDatabase(), CPSqliteDatabaseStatementForReading(), v13 = OUTLINED_FUNCTION_3_3(), ABRegulatoryLogReadContactsData(v13), v1) && v1->info)
    {
      v14 = OUTLINED_FUNCTION_3_2();
      Mutable = CFArrayCreateMutable(v14, v15, 0);
      OUTLINED_FUNCTION_5_2();
      CPSqliteStatementReset();
    }

    else
    {
      return 0;
    }
  }

  return Mutable;
}

sqlite3_stmt *ABAddressBookCopyWallpaperMigrationDataForInternalUUID(uint64_t a1, uint64_t a2, CFDataRef *a3, CFDataRef *a4, CFDataRef *a5, CFStringRef *a6)
{
  if (!a1)
  {
    return 0;
  }

  v7 = 0;
  if (!a3 || !a4 || !a5 || !a6)
  {
    return v7;
  }

  CPRecordStoreGetDatabase();
  v12 = CPSqliteDatabaseStatementForReading();
  ABRegulatoryLogReadContactsData(a1);
  if (!v12)
  {
    return 0;
  }

  v7 = *(v12 + 8);
  if (v7)
  {
    _CPCreateUTF8StringFromCFString();
    OUTLINED_FUNCTION_0_6();
    OUTLINED_FUNCTION_6_1(v7, v13, v14, v15, v16);
    v17 = sqlite3_step(*(v12 + 8));
    v7 = (v17 == 100);
    if (v17 == 100)
    {
      *a3 = _copyDataRefForStatementColumn(*(v12 + 8), 0);
      *a4 = _copyDataRefForStatementColumn(*(v12 + 8), 1);
      *a5 = _copyDataRefForStatementColumn(*(v12 + 8), 2);
      v18 = sqlite3_column_text(*(v12 + 8), 3);
      if (v18)
      {
        *a6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v18, 0x8000100u);
      }
    }

    CPSqliteStatementReset();
  }

  return v7;
}

CFStringRef ABAddressBookCopyPersonInternalUUIDForUnifiedIdentifier(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (a1 && a2)
  {
    CPRecordStoreGetDatabase();
    CPSqliteDatabaseStatementForReading();
    v4 = OUTLINED_FUNCTION_4_2();
    ABRegulatoryLogReadContactsData(v4);
    if (v2)
    {
      v5 = *(v2 + 8);
      if (v5)
      {
        _CPCreateUTF8StringFromCFString();
        OUTLINED_FUNCTION_0_6();
        OUTLINED_FUNCTION_6_1(v5, v6, v7, v8, v9);
        if (sqlite3_step(*(v2 + 8)) == 100 && (v10 = sqlite3_column_text(*(v2 + 8), 0)) != 0)
        {
          v3 = OUTLINED_FUNCTION_7_1(v10);
          CPSqliteStatementReset();
          if (v3)
          {
            return v3;
          }
        }

        else
        {
          CPSqliteStatementReset();
        }
      }
    }

    CPRecordStoreGetDatabase();
    CPSqliteDatabaseStatementForReading();
    v11 = OUTLINED_FUNCTION_4_2();
    ABRegulatoryLogReadContactsData(v11);
    if (v2 && (v12 = *(v2 + 8)) != 0)
    {
      _CPCreateUTF8StringFromCFString();
      OUTLINED_FUNCTION_0_6();
      OUTLINED_FUNCTION_6_1(v12, v13, v14, v15, v16);
      if (sqlite3_step(*(v2 + 8)) == 100 && (v17 = sqlite3_column_text(*(v2 + 8), 0)) != 0)
      {
        v3 = OUTLINED_FUNCTION_7_1(v17);
      }

      else
      {
        v3 = 0;
      }

      CPSqliteStatementReset();
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t ABAddressBookFindPersonMatchingMultiValueUUID(uint64_t a1, uint64_t a2, int *a3, int *a4)
{
  if (ABLogAPIUsage())
  {
    v29 = _isMainThread();
    v7 = OUTLINED_FUNCTION_3_2();
    v10 = CFStringCreateWithFormat(v7, v8, v9, v29);
    v11 = ABLogAddressBook(a1);
    _ABLog2(6, "ABRecordRef ABAddressBookFindPersonMatchingMultiValueUUID(ABAddressBookRef, CFStringRef, ABPropertyID *, ABMultiValueIdentifier *)", 2199, v10, @"%@, multiValueUUID=%@", v12, v13, v14, v11);
    CFRelease(v10);
  }

  if (a1)
  {
    CPRecordStoreGetDatabase();
    v15 = CPSqliteDatabaseStatementForReading();
    ABRegulatoryLogReadContactsData(a1);
    if (v15)
    {
      v16 = *(v15 + 8);
      if (v16)
      {
        _CPCreateUTF8StringFromCFString();
        OUTLINED_FUNCTION_0_6();
        OUTLINED_FUNCTION_6_1(v16, v17, v18, v19, v20);
        if (sqlite3_step(*(v15 + 8)) == 100)
        {
          v21 = sqlite3_column_int(*(v15 + 8), 0);
          v22 = sqlite3_column_int(*(v15 + 8), 1);
          v23 = sqlite3_column_int(*(v15 + 8), 2);
          CPSqliteStatementReset();
          if (v21 == -1)
          {
            a1 = 0;
            if (!a3)
            {
LABEL_13:
              if (a4)
              {
                *a4 = v23;
              }

              goto LABEL_15;
            }
          }

          else
          {
            a1 = ABCDBContextRecordForUIDOfType(*(a1 + 16), v21, ABCPersonClass);
            if (!a3)
            {
              goto LABEL_13;
            }
          }

LABEL_12:
          *a3 = v22;
          goto LABEL_13;
        }

        CPSqliteStatementReset();
      }
    }

    a1 = 0;
    v23 = -1;
    v22 = -1;
    if (!a3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_15:
  if (ABLogAPIUsage())
  {
    _ABLog2(6, "ABRecordRef ABAddressBookFindPersonMatchingMultiValueUUID(ABAddressBookRef, CFStringRef, ABPropertyID *, ABMultiValueIdentifier *)", 2235, @">> ", 0, v24, v25, v26, v28);
  }

  return a1;
}

void __getNSPersonNameComponentsFormatterPreferencesClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getNSPersonNameComponentsFormatterPreferencesClass(void)_block_invoke") description:{@"ABPerson.m", 270, @"Unable to find class %s", "NSPersonNameComponentsFormatterPreferences"}];
  __break(1u);
}

void __getNSPersonNameComponentsFormatterPreferencesClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *IntlPreferencesLibrary(void)") description:{@"ABPerson.m", 269, @"%s", *a1}];
  __break(1u);
}

void ABAddressBookSetDefaultSource(uint64_t a1, const void *a2, int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (ABLogAPIUsage())
  {
    v6 = _isMainThread();
    v7 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v6);
    v8 = ABLogAddressBook(a1);
    _ABLog2(6, "void ABAddressBookSetDefaultSource(ABAddressBookRef, ABRecordRef, _Bool)", 208, v7, @"%@", v9, v10, v11, v8);
    CFRelease(v7);
  }

  if (a1 && (!a3 || !_ABCGetActualDefaultSource(a1)))
  {
    if (a2)
    {
      RecordID = ABRecordGetRecordID(a2);
      if ((ABRecordGetIntValue(a2, kABSourceTypeProperty) & 0x1000000) != 0)
      {
        return;
      }
    }

    else
    {
      RecordID = -1;
    }

    v13 = ABOSLogGeneral();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v15 = RecordID;
      v16 = 2112;
      v17 = ABLogBacktrace();
      _os_log_impl(&dword_1B7EFB000, v13, OS_LOG_TYPE_DEFAULT, "Setting default source to recordID %d, %@", buf, 0x12u);
    }

    CPRecordStoreGetDatabase();
    CPSqliteDatabaseConnectionForReading();
    CPSqliteConnectionSetIntegerForProperty();
  }
}

void ABAddressBookMoveRecordToSource(uint64_t a1, const void *a2, const void *a3, uint64_t a4, int a5, uint64_t a6)
{
  if (ABLogAPIUsage())
  {
    v11 = _isMainThread();
    v12 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v11);
    v13 = ABLogAddressBook(a1);
    _ABLog2(6, "_Bool ABAddressBookMoveRecordToSource(ABAddressBookRef, ABRecordRef, ABRecordRef, RecordTypeSpecificMoveWork, _Bool, CFErrorRef *)", 865, v12, @"%@", v14, v15, v16, v13);
    CFRelease(v12);
  }

  if (a2)
  {
    if (a3)
    {
      RecordID = ABRecordGetRecordID(a3);
      v18 = ABRecordGetRecordID(a2);
      RecordType = ABRecordGetRecordType(a2);
      Class = CPRecordGetClass();
      if (a1)
      {
        v21 = Class;
        CPRecordStoreGetDatabase();
        v22 = CPSqliteDatabaseConnectionForWriting();
        if (a4)
        {
          (*(a4 + 16))(a4, a1, v22, a2, a3, a6);
        }

        moveRecordForIDToSource(a1, v22, v18, RecordID, v21, a5, RecordType == 0);
        if (v22)
        {

          CPSqliteDatabaseReleaseSqliteConnection();
        }
      }
    }
  }
}

uint64_t ABAddressBookMoveAllRecordsInSourceToSource(uint64_t a1, const void *a2, const void *a3)
{
  if (ABLogAPIUsage())
  {
    v6 = _isMainThread();
    v7 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v6);
    v8 = ABLogAddressBook(a1);
    _ABLog2(6, "_Bool ABAddressBookMoveAllRecordsInSourceToSource(ABAddressBookRef, ABRecordRef, ABRecordRef, CFErrorRef *)", 913, v7, @"%@", v9, v10, v11, v8);
    CFRelease(v7);
  }

  v12 = ABRecordCopyValue(a2, kABSourceConstraintsPathProperty);
  v13 = ABRecordCopyValue(a3, kABSourceConstraintsPathProperty);
  if (ABRecordGetIntValue(a2, kABSourceTypeProperty) == 2 && v12)
  {
    CFRelease(v12);
    v12 = 0;
  }

  if (ABRecordGetIntValue(a3, kABSourceTypeProperty) == 2 && v13)
  {
    CFRelease(v13);
    v13 = 0;
  }

  if (v12 | v13)
  {
    if (v12)
    {
      CFRelease(v12);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    return 0;
  }

  else
  {
    ABRecordGetRecordID(a2);
    RecordID = ABRecordGetRecordID(a3);
    if (a1)
    {
      v15 = RecordID;
      CPRecordStoreGetDatabase();
      v16 = CPSqliteDatabaseConnectionForWriting();
      v17 = OUTLINED_FUNCTION_0_7();
      v20 = removeSyncImagesFromSource(v17, v18, v19);
      v21 = OUTLINED_FUNCTION_0_7();
      v25 = moveRecordsToSource(v21, v22, v23, v15, v24, 1);
      v26 = OUTLINED_FUNCTION_0_7();
      a1 = v25 & moveRecordsToSource(v26, v27, v28, v15, v29, 0) & v20;
      if (v16)
      {
        CPSqliteDatabaseReleaseSqliteConnection();
      }

      IntValue = ABRecordGetIntValue(a2, kABSourceMeIdentifierProperty);
      v31 = ABRecordGetIntValue(a3, kABSourceMeIdentifierProperty);
      if (v31 != -1)
      {
        IntValue = v31;
      }

      ABRecordSetIntValue(a2, kABSourceMeIdentifierProperty, -1, 0);
      ABRecordSetIntValue(a3, kABSourceMeIdentifierProperty, IntValue, 0);
    }
  }

  return a1;
}

void ABRemoveLimitedAccessIdentifiersForBundle_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_1B7EFB000, log, OS_LOG_TYPE_DEBUG, "ABRemoveLimitedAccessIdentifiersForBundle remove %@ %@", &v3, 0x16u);
}

void ABRemoveContactIdentifiersFromLimitedAccessForAllBundles_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1B7EFB000, a2, OS_LOG_TYPE_DEBUG, "ABRemoveContactIdentifiersFromLimitedAccessForAllBundles remove %@", &v2, 0xCu);
}

void ABLimitedAccessContactsCountForBundle_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B7EFB000, a2, OS_LOG_TYPE_ERROR, "ABLimitedAccessContactsCountForBundle unable to create statement (%@)", &v2, 0xCu);
}

void ABAddressCopyCountryCodeForCountryName_cold_1(const __CFDictionary *a1, const void **a2, uint64_t a3, __CFArray *a4)
{
  CFDictionaryGetKeysAndValues(a1, a2, 0);
  if (a3 >= 1)
  {
    v7 = a2;
    do
    {
      if (CFStringCompare(*v7, @"defaultKbdSettings", 0))
      {
        CFArrayAppendValue(a4, *v7);
      }

      ++v7;
      --a3;
    }

    while (a3);
  }

  free(a2);
}

void ABImageUtilsCopySyncImageForPerson_cold_5(void *a1, int a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 134218240;
  v6 = [a1 length];
  v7 = 1024;
  v8 = a2;
  _os_log_error_impl(&dword_1B7EFB000, a3, OS_LOG_TYPE_ERROR, "[Likeness Update] Scaling/compression failed to reduce image of size %lu to max size %u. Proceeding without sync image.", &v5, 0x12u);
}

void _performQueryToClearSequenceNumber_cold_1(uint64_t a1)
{
  sqlite3_errcode(*(a1 + 8));
  sqlite3_errmsg(*(a1 + 8));
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_5(&dword_1B7EFB000, MEMORY[0x1E69E9C10], v2, "Error %d with query to clear sequence number: %s\n", v3, v4, v5, v6, v7);
}

void ABChangeHistoryInsertPersonChangeRecord_cold_1(uint64_t a1)
{
  sqlite3_errcode(*(a1 + 8));
  sqlite3_errmsg(*(a1 + 8));
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_5(&dword_1B7EFB000, MEMORY[0x1E69E9C10], v2, "Error %d adding change log entry statement: %s\n", v3, v4, v5, v6, v7);
}

void ABChangeHistoryInsertPersonChangeRecord_cold_2(uint64_t a1)
{
  sqlite3_errcode(*(a1 + 8));
  sqlite3_errmsg(*(a1 + 8));
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_5(&dword_1B7EFB000, MEMORY[0x1E69E9C10], v2, "Error %d preparing person changes log statement: %s\n", v3, v4, v5, v6, v7);
}

uint64_t ABTokenListCreate()
{
  pthread_once(&kABTokenListRegisterClass, ABTokenListRegisterClass);
  Instance = _CFRuntimeCreateInstance();
  v1 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    if (_MergedGlobals_0 != -1)
    {
      dispatch_once(&_MergedGlobals_0, &__block_literal_global_13);
    }

    *(v1 + 40) = qword_1ED646D98;
  }

  return v1;
}

uint64_t ABAddressBookMergeRecordsInSourceIntoSource(const __CFString *a1, const void *a2, const void *a3)
{
  if (ABLogAPIUsage())
  {
    v6 = _isMainThread();
    v7 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v6);
    v8 = ABLogAddressBook(a1);
    _ABLog2(6, "_Bool ABAddressBookMergeRecordsInSourceIntoSource(ABAddressBookRef, ABRecordRef, ABRecordRef)", 28, v7, @"%@", v9, v10, v11, v8);
    CFRelease(v7);
  }

  if (!a1 || (ABSourceIsContentReadonly(a3) & 1) != 0)
  {
    return 0;
  }

  v13 = _mergeRecordsIntoSource(a1, a2, a3);
  v14 = kABSourceMeIdentifierProperty;
  IntValue = ABRecordGetIntValue(a2, kABSourceMeIdentifierProperty);
  v16 = ABRecordGetIntValue(a3, v14);
  if (v16 != -1)
  {
    IntValue = v16;
  }

  ABAddressBookRevert(a1);
  ABRecordSetIntValue(a2, v14, -1, 0);
  ABRecordSetIntValue(a3, v14, IntValue, 0);
  return v13;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x1EEDB7B38](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x1EEDBAE80](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}