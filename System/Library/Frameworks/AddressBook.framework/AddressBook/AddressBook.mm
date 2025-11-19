id sABSValueToABValueTransform_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v3 = [MEMORY[0x277CFBDE0] dateFromDayComponents:v2];
  }

  return v3;
}

id sABValueToABSValueTransform_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v3 = [MEMORY[0x277CFBDE0] dayComponentsFromDate:v2];
  }

  return v3;
}

Class initCNAssistantConversion()
{
  if (LoadContactsAssistantServices_loadPredicate != -1)
  {
    initCNAssistantConversion_cold_1();
  }

  result = objc_getClass("CNAssistantConversion");
  classCNAssistantConversion = result;
  getCNAssistantConversionClass = CNAssistantConversionFunction;
  return result;
}

void __LoadContactsAssistantServices_block_invoke()
{
  LoadContactsAssistantServices_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/ContactsAssistantServices.framework/ContactsAssistantServices", 1);
  if (!LoadContactsAssistantServices_frameworkLibrary && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __LoadContactsAssistantServices_block_invoke_cold_1();
  }
}

uint64_t ABSIsLogEnabled(uint64_t a1)
{
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"ABS%@LogEnabled", a1];
  v2 = [MEMORY[0x277CFBEE8] standardPreferences];
  v3 = [v2 userHasOptedInToPreference:v1];

  return v3;
}

uint64_t ABSIsAPILogEnabled()
{
  if (ABSIsAPILogEnabled_onceToken != -1)
  {
    ABSIsAPILogEnabled_cold_1();
  }

  return ABSIsAPILogEnabled_result;
}

uint64_t __ABSIsAPILogEnabled_block_invoke()
{
  result = ABSIsLogEnabled(@"API");
  ABSIsAPILogEnabled_result = result;
  return result;
}

uint64_t ABSRecordGetTypeID()
{
  if (gABRegisteredWithCF != -1)
  {
    ABSRecordGetTypeID_cold_1();
  }

  return kABCRecordTypeID;
}

uint64_t __ABSRecordGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  kABCRecordTypeID = result;
  return result;
}

CFTypeRef ABRecordCopyValue(ABRecordRef record, ABPropertyID property)
{
  v2 = *&property;
  v16 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v4 = +[ABSLog apiLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        v5 = "YES";
      }

      else
      {
        v5 = "NO";
      }

      v6 = [ABSPerson nameForProperty:v2];
      v10 = 136315650;
      v11 = v5;
      v12 = 2080;
      v13 = "CFTypeRef ABRecordCopyValue(ABRecordRef, ABPropertyID)";
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_236A49000, v4, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v10, 0x20u);
    }
  }

  v7 = [record copyValueForProperty:v2];
  if (ABSIsAPILogEnabled())
  {
    v8 = +[ABSLog apiLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "CFTypeRef ABRecordCopyValue(ABRecordRef, ABPropertyID)";
      _os_log_impl(&dword_236A49000, v8, OS_LOG_TYPE_DEFAULT, ">> %s", &v10, 0xCu);
    }
  }

  return v7;
}

BOOL ABRecordSetValue(ABRecordRef record, ABPropertyID property, CFTypeRef value, CFErrorRef *error)
{
  v6 = *&property;
  v20 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v8 = +[ABSLog apiLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [MEMORY[0x277CCACC8] isMainThread];
      v10 = "NO";
      if (v9)
      {
        v10 = "YES";
      }

      v14 = 136315650;
      v15 = v10;
      v16 = 2080;
      v17 = "_Bool ABRecordSetValue(ABRecordRef, ABPropertyID, CFTypeRef, CFErrorRef *)";
      v18 = 2112;
      v19 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v8, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v14, 0x20u);
    }
  }

  v11 = [record setValue:value forProperty:v6 withError:error];
  if (ABSIsAPILogEnabled())
  {
    v12 = +[ABSLog apiLog];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "_Bool ABRecordSetValue(ABRecordRef, ABPropertyID, CFTypeRef, CFErrorRef *)";
      _os_log_impl(&dword_236A49000, v12, OS_LOG_TYPE_DEFAULT, ">> %s", &v14, 0xCu);
    }
  }

  return v11;
}

BOOL ABRecordRemoveValue(ABRecordRef record, ABPropertyID property, CFErrorRef *error)
{
  v4 = *&property;
  v21 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v6 = +[ABSLog apiLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [MEMORY[0x277CCACC8] isMainThread];
      v8 = "NO";
      if (v7)
      {
        v8 = "YES";
      }

      *buf = 136315650;
      v16 = v8;
      v17 = 2080;
      v18 = "_Bool ABRecordRemoveValue(ABRecordRef, ABPropertyID, CFErrorRef *)";
      v19 = 2112;
      v20 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v6, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", buf, 0x20u);
    }
  }

  v14 = 0;
  v9 = [record removeProperty:v4 withError:&v14];
  v10 = v14;
  v11 = v10;
  if (error && (v9 & 1) == 0)
  {
    *error = v10;
  }

  if (ABSIsAPILogEnabled())
  {
    v12 = +[ABSLog apiLog];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "_Bool ABRecordRemoveValue(ABRecordRef, ABPropertyID, CFErrorRef *)";
      _os_log_impl(&dword_236A49000, v12, OS_LOG_TYPE_DEFAULT, ">> %s", buf, 0xCu);
    }
  }

  return v9;
}

CFStringRef ABRecordCopyCompositeName(ABRecordRef record)
{
  v15 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v2 = +[ABSLog apiLog];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [MEMORY[0x277CCACC8] isMainThread];
      v4 = "NO";
      if (v3)
      {
        v4 = "YES";
      }

      v9 = 136315650;
      v10 = v4;
      v11 = 2080;
      v12 = "CFStringRef ABRecordCopyCompositeName(ABRecordRef)";
      v13 = 2112;
      v14 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v2, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v9, 0x20u);
    }
  }

  v5 = [record compositeName];
  v6 = [v5 copy];

  if (ABSIsAPILogEnabled())
  {
    v7 = +[ABSLog apiLog];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "CFStringRef ABRecordCopyCompositeName(ABRecordRef)";
      _os_log_impl(&dword_236A49000, v7, OS_LOG_TYPE_DEFAULT, ">> %s", &v9, 0xCu);
    }
  }

  return v6;
}

ABRecordRef ABGroupCreate(void)
{
  v12 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v0 = +[ABSLog apiLog];
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v1 = [MEMORY[0x277CCACC8] isMainThread];
      v2 = "NO";
      if (v1)
      {
        v2 = "YES";
      }

      v6 = 136315650;
      v7 = v2;
      v8 = 2080;
      v9 = "ABRecordRef ABGroupCreate(void)";
      v10 = 2112;
      v11 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v0, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v6, 0x20u);
    }
  }

  ABSRecordGetTypeID();
  v3 = objc_alloc_init(ABSGroup);
  if (ABSIsAPILogEnabled())
  {
    v4 = +[ABSLog apiLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "ABRecordRef ABGroupCreate(void)";
      _os_log_impl(&dword_236A49000, v4, OS_LOG_TYPE_DEFAULT, ">> %s", &v6, 0xCu);
    }
  }

  return v3;
}

ABRecordRef ABGroupCreateInSource(ABRecordRef source)
{
  v14 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v2 = +[ABSLog apiLog];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [MEMORY[0x277CCACC8] isMainThread];
      v4 = "NO";
      if (v3)
      {
        v4 = "YES";
      }

      v8 = 136315650;
      v9 = v4;
      v10 = 2080;
      v11 = "ABRecordRef ABGroupCreateInSource(ABRecordRef)";
      v12 = 2112;
      v13 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v2, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v8, 0x20u);
    }
  }

  v5 = [[ABSGroup alloc] initWithSource:source];
  if (ABSIsAPILogEnabled())
  {
    v6 = +[ABSLog apiLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "ABRecordRef ABGroupCreateInSource(ABRecordRef)";
      _os_log_impl(&dword_236A49000, v6, OS_LOG_TYPE_DEFAULT, ">> %s", &v8, 0xCu);
    }
  }

  return v5;
}

ABRecordRef ABGroupCopySource(ABRecordRef group)
{
  v14 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v2 = +[ABSLog apiLog];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [MEMORY[0x277CCACC8] isMainThread];
      v4 = "NO";
      if (v3)
      {
        v4 = "YES";
      }

      v8 = 136315650;
      v9 = v4;
      v10 = 2080;
      v11 = "ABRecordRef ABGroupCopySource(ABRecordRef)";
      v12 = 2112;
      v13 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v2, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v8, 0x20u);
    }
  }

  v5 = [group source];
  if (ABSIsAPILogEnabled())
  {
    v6 = +[ABSLog apiLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "ABRecordRef ABGroupCopySource(ABRecordRef)";
      _os_log_impl(&dword_236A49000, v6, OS_LOG_TYPE_DEFAULT, ">> %s", &v8, 0xCu);
    }
  }

  return v5;
}

CFArrayRef ABGroupCopyArrayOfAllMembers(ABRecordRef group)
{
  v15 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v2 = +[ABSLog apiLog];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [MEMORY[0x277CCACC8] isMainThread];
      v4 = "NO";
      if (v3)
      {
        v4 = "YES";
      }

      v9 = 136315650;
      v10 = v4;
      v11 = 2080;
      v12 = "CFArrayRef ABGroupCopyArrayOfAllMembers(ABRecordRef)";
      v13 = 2112;
      v14 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v2, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v9, 0x20u);
    }
  }

  v5 = [group addressBook];
  v6 = [v5 peopleInGroup:group sortOrder:0xFFFFFFFFLL];
  if (ABSIsAPILogEnabled())
  {
    v7 = +[ABSLog apiLog];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "CFArrayRef ABGroupCopyArrayOfAllMembers(ABRecordRef)";
      _os_log_impl(&dword_236A49000, v7, OS_LOG_TYPE_DEFAULT, ">> %s", &v9, 0xCu);
    }
  }

  return v6;
}

CFArrayRef ABGroupCopyArrayOfAllMembersWithSortOrdering(ABRecordRef group, ABPersonSortOrdering sortOrdering)
{
  v2 = *&sortOrdering;
  v17 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v4 = +[ABSLog apiLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x277CCACC8] isMainThread];
      v6 = "NO";
      if (v5)
      {
        v6 = "YES";
      }

      v11 = 136315650;
      v12 = v6;
      v13 = 2080;
      v14 = "CFArrayRef ABGroupCopyArrayOfAllMembersWithSortOrdering(ABRecordRef, ABPersonSortOrdering)";
      v15 = 2112;
      v16 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v4, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v11, 0x20u);
    }
  }

  v7 = [group addressBook];
  v8 = [v7 peopleInGroup:group sortOrder:v2];
  if (ABSIsAPILogEnabled())
  {
    v9 = +[ABSLog apiLog];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "CFArrayRef ABGroupCopyArrayOfAllMembersWithSortOrdering(ABRecordRef, ABPersonSortOrdering)";
      _os_log_impl(&dword_236A49000, v9, OS_LOG_TYPE_DEFAULT, ">> %s", &v11, 0xCu);
    }
  }

  return v8;
}

BOOL ABGroupAddMember(ABRecordRef group, ABRecordRef person, CFErrorRef *error)
{
  v22 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v6 = +[ABSLog apiLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [MEMORY[0x277CCACC8] isMainThread];
      v8 = "NO";
      if (v7)
      {
        v8 = "YES";
      }

      *buf = 136315650;
      v17 = v8;
      v18 = 2080;
      v19 = "_Bool ABGroupAddMember(ABRecordRef, ABRecordRef, CFErrorRef *)";
      v20 = 2112;
      v21 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v6, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", buf, 0x20u);
    }
  }

  v9 = [group addressBook];
  v15 = 0;
  v10 = [v9 addMember:person toGroup:group error:&v15];
  v11 = v15;
  v12 = v11;
  if ((v10 & 1) == 0 && error && v11)
  {
    *error = v11;
  }

  if (ABSIsAPILogEnabled())
  {
    v13 = +[ABSLog apiLog];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "_Bool ABGroupAddMember(ABRecordRef, ABRecordRef, CFErrorRef *)";
      _os_log_impl(&dword_236A49000, v13, OS_LOG_TYPE_DEFAULT, ">> %s", buf, 0xCu);
    }
  }

  return v10;
}

BOOL ABGroupRemoveMember(ABRecordRef group, ABRecordRef member, CFErrorRef *error)
{
  v22 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v6 = +[ABSLog apiLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [MEMORY[0x277CCACC8] isMainThread];
      v8 = "NO";
      if (v7)
      {
        v8 = "YES";
      }

      *buf = 136315650;
      v17 = v8;
      v18 = 2080;
      v19 = "_Bool ABGroupRemoveMember(ABRecordRef, ABRecordRef, CFErrorRef *)";
      v20 = 2112;
      v21 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v6, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", buf, 0x20u);
    }
  }

  v9 = [group addressBook];
  v15 = 0;
  v10 = [v9 removeMember:member fromGroup:group error:&v15];
  v11 = v15;
  v12 = v11;
  if ((v10 & 1) == 0 && error && v11)
  {
    *error = v11;
  }

  if (ABSIsAPILogEnabled())
  {
    v13 = +[ABSLog apiLog];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "_Bool ABGroupRemoveMember(ABRecordRef, ABRecordRef, CFErrorRef *)";
      _os_log_impl(&dword_236A49000, v13, OS_LOG_TYPE_DEFAULT, ">> %s", buf, 0xCu);
    }
  }

  return v10;
}

ABRecordRef ABAddressBookGetGroupWithRecordID(ABAddressBookRef addressBook, ABRecordID recordID)
{
  v2 = *&recordID;
  v16 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v4 = +[ABSLog apiLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x277CCACC8] isMainThread];
      v6 = "NO";
      if (v5)
      {
        v6 = "YES";
      }

      v10 = 136315650;
      v11 = v6;
      v12 = 2080;
      v13 = "ABRecordRef ABAddressBookGetGroupWithRecordID(ABAddressBookRef, ABRecordID)";
      v14 = 2112;
      v15 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v4, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v10, 0x20u);
    }
  }

  v7 = [addressBook groupWithRecordID:v2];
  if (ABSIsAPILogEnabled())
  {
    v8 = +[ABSLog apiLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "ABRecordRef ABAddressBookGetGroupWithRecordID(ABAddressBookRef, ABRecordID)";
      _os_log_impl(&dword_236A49000, v8, OS_LOG_TYPE_DEFAULT, ">> %s", &v10, 0xCu);
    }
  }

  return v7;
}

CFIndex ABAddressBookGetGroupCount(ABAddressBookRef addressBook)
{
  v14 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v2 = +[ABSLog apiLog];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [MEMORY[0x277CCACC8] isMainThread];
      v4 = "NO";
      if (v3)
      {
        v4 = "YES";
      }

      v8 = 136315650;
      v9 = v4;
      v10 = 2080;
      v11 = "CFIndex ABAddressBookGetGroupCount(ABAddressBookRef)";
      v12 = 2112;
      v13 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v2, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v8, 0x20u);
    }
  }

  v5 = [addressBook groupCount];
  if (ABSIsAPILogEnabled())
  {
    v6 = +[ABSLog apiLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "CFIndex ABAddressBookGetGroupCount(ABAddressBookRef)";
      _os_log_impl(&dword_236A49000, v6, OS_LOG_TYPE_DEFAULT, ">> %s", &v8, 0xCu);
    }
  }

  return v5;
}

CFArrayRef ABAddressBookCopyArrayOfAllGroups(ABAddressBookRef addressBook)
{
  v15 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v2 = +[ABSLog apiLog];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [MEMORY[0x277CCACC8] isMainThread];
      v4 = "NO";
      if (v3)
      {
        v4 = "YES";
      }

      v9 = 136315650;
      v10 = v4;
      v11 = 2080;
      v12 = "CFArrayRef ABAddressBookCopyArrayOfAllGroups(ABAddressBookRef)";
      v13 = 2112;
      v14 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v2, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v9, 0x20u);
    }
  }

  v5 = [addressBook allGroups];
  v6 = [v5 copy];

  if (ABSIsAPILogEnabled())
  {
    v7 = +[ABSLog apiLog];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "CFArrayRef ABAddressBookCopyArrayOfAllGroups(ABAddressBookRef)";
      _os_log_impl(&dword_236A49000, v7, OS_LOG_TYPE_DEFAULT, ">> %s", &v9, 0xCu);
    }
  }

  return v6;
}

CFArrayRef ABAddressBookCopyArrayOfAllGroupsInSource(ABAddressBookRef addressBook, ABRecordRef source)
{
  v16 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v4 = +[ABSLog apiLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x277CCACC8] isMainThread];
      v6 = "NO";
      if (v5)
      {
        v6 = "YES";
      }

      v10 = 136315650;
      v11 = v6;
      v12 = 2080;
      v13 = "CFArrayRef ABAddressBookCopyArrayOfAllGroupsInSource(ABAddressBookRef, ABRecordRef)";
      v14 = 2112;
      v15 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v4, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v10, 0x20u);
    }
  }

  v7 = [addressBook groupsInSource:source];
  if (ABSIsAPILogEnabled())
  {
    v8 = +[ABSLog apiLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "CFArrayRef ABAddressBookCopyArrayOfAllGroupsInSource(ABAddressBookRef, ABRecordRef)";
      _os_log_impl(&dword_236A49000, v8, OS_LOG_TYPE_DEFAULT, ">> %s", &v10, 0xCu);
    }
  }

  return v7;
}

uint64_t ABSAddressBookGetTypeID()
{
  if (gABRegisteredWithCF_0 != -1)
  {
    ABSAddressBookGetTypeID_cold_1();
  }

  return kABCAddressBookTypeID;
}

uint64_t __ABSAddressBookGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  kABCAddressBookTypeID = result;
  return result;
}

ABAddressBookRef ABAddressBookCreateWithOptions(CFDictionaryRef options, CFErrorRef *error)
{
  v21 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v4 = +[ABSLog apiLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x277CCACC8] isMainThread];
      v6 = "NO";
      if (v5)
      {
        v6 = "YES";
      }

      *buf = 136315650;
      v16 = v6;
      v17 = 2080;
      v18 = "ABAddressBookRef ABAddressBookCreateWithOptions(CFDictionaryRef, CFErrorRef *)";
      v19 = 2112;
      v20 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v4, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", buf, 0x20u);
    }
  }

  if (gABRegisteredWithCF_0 != -1)
  {
    ABAddressBookCreateWithOptions_cold_1();
  }

  v14 = 0;
  v7 = [[ABSAddressBook alloc] initWithOptions:options error:&v14];
  v8 = v14;
  v9 = v8;
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = error == 0;
  }

  if (!v10 && v8 != 0)
  {
    *error = v8;
  }

  if (ABSIsAPILogEnabled())
  {
    v12 = +[ABSLog apiLog];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "ABAddressBookRef ABAddressBookCreateWithOptions(CFDictionaryRef, CFErrorRef *)";
      _os_log_impl(&dword_236A49000, v12, OS_LOG_TYPE_DEFAULT, ">> %s", buf, 0xCu);
    }
  }

  return v7;
}

ABSAddressBook *ABAddressBookCreateWithOptionsAndPolicy(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v6 = +[ABSLog apiLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [MEMORY[0x277CCACC8] isMainThread];
      v8 = "NO";
      if (v7)
      {
        v8 = "YES";
      }

      *buf = 136315650;
      v16 = v8;
      v17 = 2080;
      v18 = "ABAddressBookRef ABAddressBookCreateWithOptionsAndPolicy(CFDictionaryRef, ABCreatePolicy, CFErrorRef *)";
      v19 = 2112;
      v20 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v6, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", buf, 0x20u);
    }
  }

  if (gABRegisteredWithCF_0 != -1)
  {
    ABAddressBookCreateWithOptions_cold_1();
  }

  v14 = 0;
  v9 = [[ABSAddressBook alloc] initWithOptions:a1 policy:a2 error:&v14];
  v10 = v14;
  v11 = v10;
  if (a3 && !v9)
  {
    *a3 = v10;
  }

  if (ABSIsAPILogEnabled())
  {
    v12 = +[ABSLog apiLog];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "ABAddressBookRef ABAddressBookCreateWithOptionsAndPolicy(CFDictionaryRef, ABCreatePolicy, CFErrorRef *)";
      _os_log_impl(&dword_236A49000, v12, OS_LOG_TYPE_DEFAULT, ">> %s", buf, 0xCu);
    }
  }

  return v9;
}

ABAddressBookRef ABAddressBookCreate(void)
{
  v12 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v0 = +[ABSLog apiLog];
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v1 = [MEMORY[0x277CCACC8] isMainThread];
      v2 = "NO";
      if (v1)
      {
        v2 = "YES";
      }

      v6 = 136315650;
      v7 = v2;
      v8 = 2080;
      v9 = "ABAddressBookRef ABAddressBookCreate(void)";
      v10 = 2112;
      v11 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v0, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v6, 0x20u);
    }
  }

  if (gABRegisteredWithCF_0 != -1)
  {
    ABAddressBookCreateWithOptions_cold_1();
  }

  v3 = objc_alloc_init(ABSAddressBook);
  if (ABSIsAPILogEnabled())
  {
    v4 = +[ABSLog apiLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "ABAddressBookRef ABAddressBookCreate(void)";
      _os_log_impl(&dword_236A49000, v4, OS_LOG_TYPE_DEFAULT, ">> %s", &v6, 0xCu);
    }
  }

  return v3;
}

void ABAddressBookRequestAccessWithCompletion(ABAddressBookRef addressBook, ABAddressBookRequestAccessCompletionHandler completion)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = completion;
  if (ABSIsAPILogEnabled())
  {
    v3 = +[ABSLog apiLog];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [MEMORY[0x277CCACC8] isMainThread];
      v5 = "NO";
      if (v4)
      {
        v5 = "YES";
      }

      v7 = 136315650;
      v8 = v5;
      v9 = 2080;
      v10 = "void ABAddressBookRequestAccessWithCompletion(ABAddressBookRef, __strong ABAddressBookRequestAccessCompletionHandler)";
      v11 = 2112;
      v12 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v3, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v7, 0x20u);
    }
  }

  [ABSAddressBook requestAccessWithCompletion:v2];
  if (ABSIsAPILogEnabled())
  {
    v6 = +[ABSLog apiLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "void ABAddressBookRequestAccessWithCompletion(ABAddressBookRef, __strong ABAddressBookRequestAccessCompletionHandler)";
      _os_log_impl(&dword_236A49000, v6, OS_LOG_TYPE_DEFAULT, ">> %s", &v7, 0xCu);
    }
  }
}

BOOL ABAddressBookSave(ABAddressBookRef addressBook, CFErrorRef *error)
{
  v21 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v4 = +[ABSLog apiLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x277CCACC8] isMainThread];
      v6 = "NO";
      if (v5)
      {
        v6 = "YES";
      }

      *buf = 136315650;
      v16 = v6;
      v17 = 2080;
      v18 = "_Bool ABAddressBookSave(ABAddressBookRef, CFErrorRef *)";
      v19 = 2112;
      v20 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v4, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", buf, 0x20u);
    }
  }

  v7 = +[ABSLog log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    ABAddressBookSave_cold_1(v7);
  }

  v14 = 0;
  v8 = [addressBook save:&v14];
  v9 = v14;
  v10 = v9;
  if ((v8 & 1) == 0 && error && v9)
  {
    *error = v9;
  }

  v11 = +[ABSLog log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    ABAddressBookSave_cold_2(v8, v11);
  }

  if (ABSIsAPILogEnabled())
  {
    v12 = +[ABSLog apiLog];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "_Bool ABAddressBookSave(ABAddressBookRef, CFErrorRef *)";
      _os_log_impl(&dword_236A49000, v12, OS_LOG_TYPE_DEFAULT, ">> %s", buf, 0xCu);
    }
  }

  return v8;
}

BOOL ABAddressBookAddRecord(ABAddressBookRef addressBook, ABRecordRef record, CFErrorRef *error)
{
  v21 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v6 = +[ABSLog apiLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [MEMORY[0x277CCACC8] isMainThread];
      v8 = "NO";
      if (v7)
      {
        v8 = "YES";
      }

      *buf = 136315650;
      v16 = v8;
      v17 = 2080;
      v18 = "_Bool ABAddressBookAddRecord(ABAddressBookRef, ABRecordRef, CFErrorRef *)";
      v19 = 2112;
      v20 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v6, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", buf, 0x20u);
    }
  }

  v14 = 0;
  v9 = [addressBook addRecord:record error:&v14];
  v10 = v14;
  v11 = v10;
  if (error && (v9 & 1) == 0)
  {
    *error = v10;
  }

  if (ABSIsAPILogEnabled())
  {
    v12 = +[ABSLog apiLog];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "_Bool ABAddressBookAddRecord(ABAddressBookRef, ABRecordRef, CFErrorRef *)";
      _os_log_impl(&dword_236A49000, v12, OS_LOG_TYPE_DEFAULT, ">> %s", buf, 0xCu);
    }
  }

  return v9;
}

BOOL ABAddressBookRemoveRecord(ABAddressBookRef addressBook, ABRecordRef record, CFErrorRef *error)
{
  v21 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v6 = +[ABSLog apiLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [MEMORY[0x277CCACC8] isMainThread];
      v8 = "NO";
      if (v7)
      {
        v8 = "YES";
      }

      *buf = 136315650;
      v16 = v8;
      v17 = 2080;
      v18 = "_Bool ABAddressBookRemoveRecord(ABAddressBookRef, ABRecordRef, CFErrorRef *)";
      v19 = 2112;
      v20 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v6, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", buf, 0x20u);
    }
  }

  v14 = 0;
  v9 = [addressBook removeRecord:record error:&v14];
  v10 = v14;
  v11 = v10;
  if (error && (v9 & 1) == 0)
  {
    *error = v10;
  }

  if (ABSIsAPILogEnabled())
  {
    v12 = +[ABSLog apiLog];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "_Bool ABAddressBookRemoveRecord(ABAddressBookRef, ABRecordRef, CFErrorRef *)";
      _os_log_impl(&dword_236A49000, v12, OS_LOG_TYPE_DEFAULT, ">> %s", buf, 0xCu);
    }
  }

  return v9;
}

CFStringRef ABAddressBookCopyLocalizedLabel(CFStringRef label)
{
  v14 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v2 = +[ABSLog apiLog];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [MEMORY[0x277CCACC8] isMainThread];
      v4 = "NO";
      if (v3)
      {
        v4 = "YES";
      }

      v8 = 136315650;
      v9 = v4;
      v10 = 2080;
      v11 = "CFStringRef ABAddressBookCopyLocalizedLabel(CFStringRef)";
      v12 = 2112;
      v13 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v2, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v8, 0x20u);
    }
  }

  v5 = [ABSAddressBook localizedLabelForLabel:label];
  if (ABSIsAPILogEnabled())
  {
    v6 = +[ABSLog apiLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "CFStringRef ABAddressBookCopyLocalizedLabel(CFStringRef)";
      _os_log_impl(&dword_236A49000, v6, OS_LOG_TYPE_DEFAULT, ">> %s", &v8, 0xCu);
    }
  }

  return v5;
}

void ABAddressBookRegisterExternalChangeCallback(ABAddressBookRef addressBook, ABExternalChangeCallback callback, void *context)
{
  v16 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v6 = +[ABSLog apiLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [MEMORY[0x277CCACC8] isMainThread];
      v8 = "NO";
      if (v7)
      {
        v8 = "YES";
      }

      v10 = 136315650;
      v11 = v8;
      v12 = 2080;
      v13 = "void ABAddressBookRegisterExternalChangeCallback(ABAddressBookRef, ABExternalChangeCallback, void *)";
      v14 = 2112;
      v15 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v6, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v10, 0x20u);
    }
  }

  [addressBook registerExternalChangeCallback:callback context:context];
  if (ABSIsAPILogEnabled())
  {
    v9 = +[ABSLog apiLog];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "void ABAddressBookRegisterExternalChangeCallback(ABAddressBookRef, ABExternalChangeCallback, void *)";
      _os_log_impl(&dword_236A49000, v9, OS_LOG_TYPE_DEFAULT, ">> %s", &v10, 0xCu);
    }
  }
}

void ABAddressBookUnregisterExternalChangeCallback(ABAddressBookRef addressBook, ABExternalChangeCallback callback, void *context)
{
  v16 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v6 = +[ABSLog apiLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [MEMORY[0x277CCACC8] isMainThread];
      v8 = "NO";
      if (v7)
      {
        v8 = "YES";
      }

      v10 = 136315650;
      v11 = v8;
      v12 = 2080;
      v13 = "void ABAddressBookUnregisterExternalChangeCallback(ABAddressBookRef, ABExternalChangeCallback, void *)";
      v14 = 2112;
      v15 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v6, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v10, 0x20u);
    }
  }

  [addressBook unregisterExternalChangeCallback:callback context:context];
  if (ABSIsAPILogEnabled())
  {
    v9 = +[ABSLog apiLog];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "void ABAddressBookUnregisterExternalChangeCallback(ABAddressBookRef, ABExternalChangeCallback, void *)";
      _os_log_impl(&dword_236A49000, v9, OS_LOG_TYPE_DEFAULT, ">> %s", &v10, 0xCu);
    }
  }
}

void ABAddressBookRevert(ABAddressBookRef addressBook)
{
  v12 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v2 = +[ABSLog apiLog];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [MEMORY[0x277CCACC8] isMainThread];
      v4 = "NO";
      if (v3)
      {
        v4 = "YES";
      }

      v6 = 136315650;
      v7 = v4;
      v8 = 2080;
      v9 = "void ABAddressBookRevert(ABAddressBookRef)";
      v10 = 2112;
      v11 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v2, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v6, 0x20u);
    }
  }

  [addressBook revert];
  if (ABSIsAPILogEnabled())
  {
    v5 = +[ABSLog apiLog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "void ABAddressBookRevert(ABAddressBookRef)";
      _os_log_impl(&dword_236A49000, v5, OS_LOG_TYPE_DEFAULT, ">> %s", &v6, 0xCu);
    }
  }
}

uint64_t ABAddressBookForceNullDatabaseForAccessDeniedSetEnabled(CFPropertyListRef value)
{
  CFPreferencesSetAppValue(@"ABForceNullDatabaseForAccessDenied", value, @".GlobalPreferences");
  v1 = *MEMORY[0x277CBF040];
  v2 = *MEMORY[0x277CBF010];

  return CFPreferencesSynchronize(@".GlobalPreferences", v1, v2);
}

uint64_t ABValidateAlternateBirthday(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 objectForKeyedSubscript:@"calendarIdentifier"];
    if (v2)
    {
      v3 = v2;
      v4 = [v1 objectForKeyedSubscript:@"month"];
      if (!v4)
      {
        v9 = 0;
LABEL_20:

        goto LABEL_21;
      }

      v5 = v4;
      v6 = [v1 objectForKeyedSubscript:@"day"];

      if (v6)
      {
        v7 = [v1 objectForKeyedSubscript:@"calendarIdentifier"];
        v8 = [objc_alloc(MEMORY[0x277CBEA80]) initWithCalendarIdentifier:v7];

        if (v8)
        {

          goto LABEL_10;
        }

        v10 = [v7 lowercaseString];

        v11 = [objc_alloc(MEMORY[0x277CBEA80]) initWithCalendarIdentifier:v10];
        if (v11)
        {
LABEL_10:
          v12 = MEMORY[0x277CBEA80];
          v13 = [v1 objectForKeyedSubscript:@"calendarIdentifier"];
          v3 = [v12 calendarWithIdentifier:v13];

          if (v3)
          {
            v14 = objc_alloc_init(MEMORY[0x277CBEAB8]);
            [v14 setCalendar:v3];
            v15 = [v1 objectForKeyedSubscript:@"month"];
            [v14 setMonth:{objc_msgSend(v15, "integerValue")}];

            v16 = [v1 objectForKeyedSubscript:@"day"];
            [v14 setDay:{objc_msgSend(v16, "integerValue")}];

            v17 = [v1 objectForKeyedSubscript:@"isLeapMonth"];

            if (v17)
            {
              v18 = [v1 objectForKeyedSubscript:@"isLeapMonth"];
              [v14 setLeapMonth:{objc_msgSend(v18, "BOOLValue")}];
            }

            v19 = [v1 objectForKeyedSubscript:@"era"];

            if (v19)
            {
              v20 = [v1 objectForKeyedSubscript:@"era"];
              [v14 setEra:{objc_msgSend(v20, "integerValue")}];
            }

            v21 = [v1 objectForKeyedSubscript:@"year"];

            if (v21)
            {
              v22 = [v1 objectForKeyedSubscript:@"year"];
              [v14 setYear:{objc_msgSend(v22, "integerValue")}];
            }

            v9 = [v14 isValidDate];
          }

          else
          {
            v9 = 1;
          }

          goto LABEL_20;
        }
      }
    }

    v9 = 0;
LABEL_21:

    return v9;
  }

  return 1;
}

uint64_t __CNGuardOSLog_block_invoke()
{
  CNGuardOSLog_cn_once_object_0 = os_log_create("com.apple.contacts", "api");

  return MEMORY[0x2821F96F8]();
}

uint64_t ABSPeoplePickerPrefs()
{
  result = ABSPeoplePickerPrefs__peoplePickerPrefs;
  if (!ABSPeoplePickerPrefs__peoplePickerPrefs)
  {
    if (ABSPeoplePickerPrefs___once_peoplePickerPrefs != -1)
    {
      ABSPeoplePickerPrefs_cold_1();
    }

    return ABSPeoplePickerPrefs__peoplePickerPrefs;
  }

  return result;
}

uint64_t __ABSPeoplePickerPrefs_block_invoke()
{
  result = CPCopySharedResourcesPreferencesDomainForDomain();
  ABSPeoplePickerPrefs__peoplePickerPrefs = result;
  return result;
}

void sub_236A59994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t ABSMultiValueGetTypeID()
{
  if (gABMultiValueRegisteredWithCF != -1)
  {
    ABSMultiValueGetTypeID_cold_1();
  }

  return kABCMultiValueTypeID;
}

uint64_t __ABSMultiValueGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  kABCMultiValueTypeID = result;
  return result;
}

ABPropertyType ABMultiValueGetPropertyType(ABMultiValueRef multiValue)
{
  v14 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v2 = +[ABSLog apiLog];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [MEMORY[0x277CCACC8] isMainThread];
      v4 = "NO";
      if (v3)
      {
        v4 = "YES";
      }

      v8 = 136315650;
      v9 = v4;
      v10 = 2080;
      v11 = "ABPropertyType ABMultiValueGetPropertyType(ABMultiValueRef)";
      v12 = 2112;
      v13 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v2, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v8, 0x20u);
    }
  }

  v5 = [multiValue propertyType];
  if (ABSIsAPILogEnabled())
  {
    v6 = +[ABSLog apiLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "ABPropertyType ABMultiValueGetPropertyType(ABMultiValueRef)";
      _os_log_impl(&dword_236A49000, v6, OS_LOG_TYPE_DEFAULT, ">> %s", &v8, 0xCu);
    }
  }

  return v5;
}

CFIndex ABMultiValueGetCount(ABMultiValueRef multiValue)
{
  v15 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v2 = +[ABSLog apiLog];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [MEMORY[0x277CCACC8] isMainThread];
      v4 = "NO";
      if (v3)
      {
        v4 = "YES";
      }

      v9 = 136315650;
      v10 = v4;
      v11 = 2080;
      v12 = "CFIndex ABMultiValueGetCount(ABMultiValueRef)";
      v13 = 2112;
      v14 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v2, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v9, 0x20u);
    }
  }

  v5 = [multiValue values];
  v6 = [v5 count];

  if (ABSIsAPILogEnabled())
  {
    v7 = +[ABSLog apiLog];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "CFIndex ABMultiValueGetCount(ABMultiValueRef)";
      _os_log_impl(&dword_236A49000, v7, OS_LOG_TYPE_DEFAULT, ">> %s", &v9, 0xCu);
    }
  }

  return v6;
}

CFTypeRef ABMultiValueCopyValueAtIndex(ABMultiValueRef multiValue, CFIndex index)
{
  v16 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v4 = +[ABSLog apiLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x277CCACC8] isMainThread];
      v6 = "NO";
      if (v5)
      {
        v6 = "YES";
      }

      v10 = 136315650;
      v11 = v6;
      v12 = 2080;
      v13 = "CFTypeRef ABMultiValueCopyValueAtIndex(ABMultiValueRef, CFIndex)";
      v14 = 2112;
      v15 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v4, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v10, 0x20u);
    }
  }

  v7 = [multiValue copyValueAtIndex:index];
  if (ABSIsAPILogEnabled())
  {
    v8 = +[ABSLog apiLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "CFTypeRef ABMultiValueCopyValueAtIndex(ABMultiValueRef, CFIndex)";
      _os_log_impl(&dword_236A49000, v8, OS_LOG_TYPE_DEFAULT, ">> %s", &v10, 0xCu);
    }
  }

  return v7;
}

CFArrayRef ABMultiValueCopyArrayOfAllValues(ABMultiValueRef multiValue)
{
  v15 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v2 = +[ABSLog apiLog];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [MEMORY[0x277CCACC8] isMainThread];
      v4 = "NO";
      if (v3)
      {
        v4 = "YES";
      }

      v9 = 136315650;
      v10 = v4;
      v11 = 2080;
      v12 = "CFArrayRef ABMultiValueCopyArrayOfAllValues(ABMultiValueRef)";
      v13 = 2112;
      v14 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v2, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v9, 0x20u);
    }
  }

  v5 = [multiValue allValues];
  if ([v5 count])
  {
    v6 = [v5 copy];
  }

  else
  {
    v6 = 0;
  }

  if (ABSIsAPILogEnabled())
  {
    v7 = +[ABSLog apiLog];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "CFArrayRef ABMultiValueCopyArrayOfAllValues(ABMultiValueRef)";
      _os_log_impl(&dword_236A49000, v7, OS_LOG_TYPE_DEFAULT, ">> %s", &v9, 0xCu);
    }
  }

  return v6;
}

CFStringRef ABMultiValueCopyLabelAtIndex(ABMultiValueRef multiValue, CFIndex index)
{
  v16 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v4 = +[ABSLog apiLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x277CCACC8] isMainThread];
      v6 = "NO";
      if (v5)
      {
        v6 = "YES";
      }

      v10 = 136315650;
      v11 = v6;
      v12 = 2080;
      v13 = "CFStringRef ABMultiValueCopyLabelAtIndex(ABMultiValueRef, CFIndex)";
      v14 = 2112;
      v15 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v4, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v10, 0x20u);
    }
  }

  v7 = [multiValue labelAtIndex:index];
  if (ABSIsAPILogEnabled())
  {
    v8 = +[ABSLog apiLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "CFStringRef ABMultiValueCopyLabelAtIndex(ABMultiValueRef, CFIndex)";
      _os_log_impl(&dword_236A49000, v8, OS_LOG_TYPE_DEFAULT, ">> %s", &v10, 0xCu);
    }
  }

  return v7;
}

CFIndex ABMultiValueGetIndexForIdentifier(ABMultiValueRef multiValue, ABMultiValueIdentifier identifier)
{
  v2 = *&identifier;
  v16 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v4 = +[ABSLog apiLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x277CCACC8] isMainThread];
      v6 = "NO";
      if (v5)
      {
        v6 = "YES";
      }

      v10 = 136315650;
      v11 = v6;
      v12 = 2080;
      v13 = "CFIndex ABMultiValueGetIndexForIdentifier(ABMultiValueRef, ABMultiValueIdentifier)";
      v14 = 2112;
      v15 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v4, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v10, 0x20u);
    }
  }

  v7 = [multiValue indexForIdentifier:v2];
  if (ABSIsAPILogEnabled())
  {
    v8 = +[ABSLog apiLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "CFIndex ABMultiValueGetIndexForIdentifier(ABMultiValueRef, ABMultiValueIdentifier)";
      _os_log_impl(&dword_236A49000, v8, OS_LOG_TYPE_DEFAULT, ">> %s", &v10, 0xCu);
    }
  }

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  else
  {
    return v7;
  }
}

ABMultiValueIdentifier ABMultiValueGetIdentifierAtIndex(ABMultiValueRef multiValue, CFIndex index)
{
  v16 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v4 = +[ABSLog apiLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x277CCACC8] isMainThread];
      v6 = "NO";
      if (v5)
      {
        v6 = "YES";
      }

      v10 = 136315650;
      v11 = v6;
      v12 = 2080;
      v13 = "ABMultiValueIdentifier ABMultiValueGetIdentifierAtIndex(ABMultiValueRef, CFIndex)";
      v14 = 2112;
      v15 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v4, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v10, 0x20u);
    }
  }

  v7 = [multiValue identifierAtIndex:index];
  if (ABSIsAPILogEnabled())
  {
    v8 = +[ABSLog apiLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "ABMultiValueIdentifier ABMultiValueGetIdentifierAtIndex(ABMultiValueRef, CFIndex)";
      _os_log_impl(&dword_236A49000, v8, OS_LOG_TYPE_DEFAULT, ">> %s", &v10, 0xCu);
    }
  }

  return v7;
}

CFIndex ABMultiValueGetFirstIndexOfValue(ABMultiValueRef multiValue, CFTypeRef value)
{
  v16 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v4 = +[ABSLog apiLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x277CCACC8] isMainThread];
      v6 = "NO";
      if (v5)
      {
        v6 = "YES";
      }

      v10 = 136315650;
      v11 = v6;
      v12 = 2080;
      v13 = "CFIndex ABMultiValueGetFirstIndexOfValue(ABMultiValueRef, CFTypeRef)";
      v14 = 2112;
      v15 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v4, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v10, 0x20u);
    }
  }

  v7 = [multiValue indexOfValue:value];
  if (ABSIsAPILogEnabled())
  {
    v8 = +[ABSLog apiLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "CFIndex ABMultiValueGetFirstIndexOfValue(ABMultiValueRef, CFTypeRef)";
      _os_log_impl(&dword_236A49000, v8, OS_LOG_TYPE_DEFAULT, ">> %s", &v10, 0xCu);
    }
  }

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  else
  {
    return v7;
  }
}

ABMutableMultiValueRef ABMultiValueCreateMutable(ABPropertyType type)
{
  v1 = *&type;
  if (gABMultiValueRegisteredWithCF != -1)
  {
    ABSMultiValueGetTypeID_cold_1();
  }

  v2 = [ABSMultiValue alloc];

  return [(ABSMultiValue *)v2 initWithPropertyType:v1 mutable:1 values:0];
}

ABMutableMultiValueRef ABMultiValueCreateMutableCopy(ABMultiValueRef multiValue)
{
  v14 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v2 = +[ABSLog apiLog];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [MEMORY[0x277CCACC8] isMainThread];
      v4 = "NO";
      if (v3)
      {
        v4 = "YES";
      }

      v8 = 136315650;
      v9 = v4;
      v10 = 2080;
      v11 = "ABMutableMultiValueRef ABMultiValueCreateMutableCopy(ABMultiValueRef)";
      v12 = 2112;
      v13 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v2, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v8, 0x20u);
    }
  }

  if (gABMultiValueRegisteredWithCF != -1)
  {
    ABMultiValueCreateMutableCopy_cold_1();
  }

  v5 = [multiValue mutableCopy];
  if (ABSIsAPILogEnabled())
  {
    v6 = +[ABSLog apiLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "ABMutableMultiValueRef ABMultiValueCreateMutableCopy(ABMultiValueRef)";
      _os_log_impl(&dword_236A49000, v6, OS_LOG_TYPE_DEFAULT, ">> %s", &v8, 0xCu);
    }
  }

  return v5;
}

BOOL ABMultiValueAddValueAndLabel(ABMutableMultiValueRef multiValue, CFTypeRef value, CFStringRef label, ABMultiValueIdentifier *outIdentifier)
{
  v20 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v8 = +[ABSLog apiLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [MEMORY[0x277CCACC8] isMainThread];
      v10 = "NO";
      if (v9)
      {
        v10 = "YES";
      }

      v14 = 136315650;
      v15 = v10;
      v16 = 2080;
      v17 = "_Bool ABMultiValueAddValueAndLabel(ABMutableMultiValueRef, CFTypeRef, CFStringRef, ABMultiValueIdentifier *)";
      v18 = 2112;
      v19 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v8, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v14, 0x20u);
    }
  }

  v11 = [multiValue addValue:value label:label outIdentifier:outIdentifier];
  if (ABSIsAPILogEnabled())
  {
    v12 = +[ABSLog apiLog];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "_Bool ABMultiValueAddValueAndLabel(ABMutableMultiValueRef, CFTypeRef, CFStringRef, ABMultiValueIdentifier *)";
      _os_log_impl(&dword_236A49000, v12, OS_LOG_TYPE_DEFAULT, ">> %s", &v14, 0xCu);
    }
  }

  return v11;
}

BOOL ABMultiValueInsertValueAndLabelAtIndex(ABMutableMultiValueRef multiValue, CFTypeRef value, CFStringRef label, CFIndex index, ABMultiValueIdentifier *outIdentifier)
{
  v22 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v10 = +[ABSLog apiLog];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CCACC8] isMainThread];
      v12 = "NO";
      if (v11)
      {
        v12 = "YES";
      }

      v16 = 136315650;
      v17 = v12;
      v18 = 2080;
      v19 = "_Bool ABMultiValueInsertValueAndLabelAtIndex(ABMutableMultiValueRef, CFTypeRef, CFStringRef, CFIndex, ABMultiValueIdentifier *)";
      v20 = 2112;
      v21 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v10, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v16, 0x20u);
    }
  }

  v13 = [multiValue insertValue:value label:label atIndex:index outIdentifier:outIdentifier];
  if (ABSIsAPILogEnabled())
  {
    v14 = +[ABSLog apiLog];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315138;
      v17 = "_Bool ABMultiValueInsertValueAndLabelAtIndex(ABMutableMultiValueRef, CFTypeRef, CFStringRef, CFIndex, ABMultiValueIdentifier *)";
      _os_log_impl(&dword_236A49000, v14, OS_LOG_TYPE_DEFAULT, ">> %s", &v16, 0xCu);
    }
  }

  return v13;
}

BOOL ABMultiValueRemoveValueAndLabelAtIndex(ABMutableMultiValueRef multiValue, CFIndex index)
{
  v16 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v4 = +[ABSLog apiLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x277CCACC8] isMainThread];
      v6 = "NO";
      if (v5)
      {
        v6 = "YES";
      }

      v10 = 136315650;
      v11 = v6;
      v12 = 2080;
      v13 = "_Bool ABMultiValueRemoveValueAndLabelAtIndex(ABMutableMultiValueRef, CFIndex)";
      v14 = 2112;
      v15 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v4, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v10, 0x20u);
    }
  }

  v7 = [multiValue removeValueAtIndex:index];
  if (ABSIsAPILogEnabled())
  {
    v8 = +[ABSLog apiLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "_Bool ABMultiValueRemoveValueAndLabelAtIndex(ABMutableMultiValueRef, CFIndex)";
      _os_log_impl(&dword_236A49000, v8, OS_LOG_TYPE_DEFAULT, ">> %s", &v10, 0xCu);
    }
  }

  return v7;
}

BOOL ABMultiValueReplaceValueAtIndex(ABMutableMultiValueRef multiValue, CFTypeRef value, CFIndex index)
{
  v18 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v6 = +[ABSLog apiLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [MEMORY[0x277CCACC8] isMainThread];
      v8 = "NO";
      if (v7)
      {
        v8 = "YES";
      }

      v12 = 136315650;
      v13 = v8;
      v14 = 2080;
      v15 = "_Bool ABMultiValueReplaceValueAtIndex(ABMutableMultiValueRef, CFTypeRef, CFIndex)";
      v16 = 2112;
      v17 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v6, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v12, 0x20u);
    }
  }

  v9 = [multiValue replaceValue:value atIndex:index];
  if (ABSIsAPILogEnabled())
  {
    v10 = +[ABSLog apiLog];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "_Bool ABMultiValueReplaceValueAtIndex(ABMutableMultiValueRef, CFTypeRef, CFIndex)";
      _os_log_impl(&dword_236A49000, v10, OS_LOG_TYPE_DEFAULT, ">> %s", &v12, 0xCu);
    }
  }

  return v9;
}

BOOL ABMultiValueReplaceLabelAtIndex(ABMutableMultiValueRef multiValue, CFStringRef label, CFIndex index)
{
  v18 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v6 = +[ABSLog apiLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [MEMORY[0x277CCACC8] isMainThread];
      v8 = "NO";
      if (v7)
      {
        v8 = "YES";
      }

      v12 = 136315650;
      v13 = v8;
      v14 = 2080;
      v15 = "_Bool ABMultiValueReplaceLabelAtIndex(ABMutableMultiValueRef, CFStringRef, CFIndex)";
      v16 = 2112;
      v17 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v6, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v12, 0x20u);
    }
  }

  v9 = [multiValue replaceLabel:label atIndex:index];
  if (ABSIsAPILogEnabled())
  {
    v10 = +[ABSLog apiLog];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "_Bool ABMultiValueReplaceLabelAtIndex(ABMutableMultiValueRef, CFStringRef, CFIndex)";
      _os_log_impl(&dword_236A49000, v10, OS_LOG_TYPE_DEFAULT, ">> %s", &v12, 0xCu);
    }
  }

  return v9;
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

uint64_t ABImageUtilsCopyImageSourceAndGetSizeFromData(const __CFData *a1, CGImageSource **a2, int *a3, int *a4)
{
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

  v7 = CGImageSourceCreateWithData(a1, 0);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = CGImageSourceCopyPropertiesAtIndex(v7, 0, 0);
  v10 = v9 != 0;
  if (!v9)
  {
    goto LABEL_28;
  }

  v11 = v9;
  valuePtr = 0;
  Value = CFDictionaryGetValue(v9, *MEMORY[0x277CD3410]);
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    v13 = valuePtr > 4;
  }

  else
  {
    v13 = 0;
  }

  v14 = CFDictionaryGetValue(v11, *MEMORY[0x277CD3450]);
  if (v14 && CFNumberGetValue(v14, kCFNumberIntType, &valuePtr))
  {
    if (v13)
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

  v15 = CFDictionaryGetValue(v11, *MEMORY[0x277CD3448]);
  if (v15 && CFNumberGetValue(v15, kCFNumberIntType, &valuePtr))
  {
    if (v13)
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

  CFRelease(v11);
  if (a2)
  {
    *a2 = v8;
    return 1;
  }

  else
  {
LABEL_28:
    CFRelease(v8);
  }

  return v10;
}

double ABImageUtilsCenteredSquareForRect(double result, double a2, double a3, double a4)
{
  if (a3 > a4)
  {
    return result + (a3 - a4) * 0.5;
  }

  return result;
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

CGImageRef ABImageUtilsCreateImageFromImageSourceWithSizeCropRectMaxSize(CGImageSource *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  keys[3] = *MEMORY[0x277D85DE8];
  if (!a1 || !CGImageSourceGetCount(a1))
  {
    return 0;
  }

  v28 = a5;
  v18 = *MEMORY[0x277CD3568];
  keys[0] = *MEMORY[0x277CD3578];
  keys[1] = v18;
  keys[2] = *MEMORY[0x277CD3660];
  v19 = fmin(a6 / a8, a7 / a9);
  values[0] = *MEMORY[0x277CBED28];
  values[1] = values[0];
  valuePtr = vcvtpd_s64_f64(fmax(a3, a2) / v19);
  v20 = *MEMORY[0x277CBECE8];
  cf = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
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
            v28 = *MEMORY[0x277CBECE8];
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
  keys[2] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 0;
  }

  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
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
      v11 = *MEMORY[0x277CD2F28];
      keys[0] = *MEMORY[0x277CD2F30];
      keys[1] = v11;
      values[0] = v10;
      values[1] = v10;
      v12 = CFDictionaryCreate(v6, keys, values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
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

uint64_t ABPersonImageFormatGetPixelWidth(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return 320;
  }
}

uint64_t ABPersonImageFormatGetPixelHeight(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return 320;
  }
}

BOOL ABPersonImageFormatIsLessThanOrEqualToPixelSize(int a1, int a2, int a3)
{
  if (a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 320;
  }

  return v3 <= a2 && v3 <= a3;
}

__CFData *ABSCreateThumbnailDataAndCropRectFromImageData(const __CFData *a1, double *a2)
{
  cf = 0;
  v26 = 0;
  if (!ABImageUtilsCopyImageSourceAndGetSizeFromData(a1, &cf, &v26 + 1, &v26))
  {
    goto LABEL_18;
  }

  v4 = v26;
  v3 = HIDWORD(v26);
  v5 = SHIDWORD(v26);
  v6 = v26;
  if (SHIDWORD(v26) <= v26)
  {
    v8 = 0.0;
    v9 = SHIDWORD(v26);
    v10 = v26;
    v7 = 0.0;
    if (v6 > v5)
    {
      v11 = (v6 - v5) * 0.5;
      v7 = v11 + 0.0;
      if (v11 >= 0.0)
      {
        v9 = SHIDWORD(v26);
        v10 = SHIDWORD(v26);
      }

      else
      {
        v12 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
        v13 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
        v14 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
        v15 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
        v16 = [MEMORY[0x277CCABB0] numberWithInt:v26];
        NSLog(&cfstr_ThumbnailCropR.isa, v12, v13, v14, v15, v16);

        v9 = v5;
        v10 = v5;
        v7 = 0.0;
      }
    }
  }

  else
  {
    v7 = 0.0;
    v8 = (v5 - v6) * 0.5 + 0.0;
    v9 = v26;
    v10 = v26;
  }

  v17 = v3 > 319;
  v18 = v4 > 319;
  v19 = v17 && v18 ? 320.0 : v9;
  v20 = v17 && v18 ? 320.0 : v10;
  ImageFromImageSourceWithSizeCropRectMaxSize = ABImageUtilsCreateImageFromImageSourceWithSizeCropRectMaxSize(cf, v5, v6, v8, v7, v9, v10, v19, v20);
  if (ImageFromImageSourceWithSizeCropRectMaxSize)
  {
    v22 = ImageFromImageSourceWithSizeCropRectMaxSize;
    ScaledImageData = ABImageUtilsCreateScaledImageData(ImageFromImageSourceWithSizeCropRectMaxSize, 8u, @"public.jpeg", 0, v19, v20, 1.0);
    if (a2)
    {
      *a2 = v8;
      a2[1] = v7;
      a2[2] = v9;
      a2[3] = v10;
    }

    CFRelease(v22);
  }

  else
  {
LABEL_18:
    ScaledImageData = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return ScaledImageData;
}

CFDictionaryRef __initializeThumbnailProperties()
{
  keys[2] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD3568];
  keys[0] = *MEMORY[0x277CD3578];
  keys[1] = v0;
  values[0] = *MEMORY[0x277CBED28];
  values[1] = values[0];
  result = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 2, 0, 0);
  __thumbnailProperties = result;
  return result;
}

id _createDictionaryFromFile(void *a1)
{
  v1 = MEMORY[0x277CCA8D8];
  v2 = a1;
  v3 = [v1 bundleWithIdentifier:@"com.apple.AddressBook"];
  v4 = [v3 URLForResource:v2 withExtension:0];

  v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v4];

  return v5;
}

id socialProfileURLForServiceAndUsername(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (socialProfileURLForServiceAndUsername_onceToken != -1)
  {
    socialProfileURLForServiceAndUsername_cold_1();
  }

  v5 = socialProfileURLForServiceAndUsername_formats;
  if (!v3 || !socialProfileURLForServiceAndUsername_formats)
  {
LABEL_9:
    v6 = [v5 objectForKeyedSubscript:@"UnknownServiceURLFormat"];
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v6 = [socialProfileURLForServiceAndUsername_formats objectForKeyedSubscript:v3];
  if (!v6)
  {
    v5 = socialProfileURLForServiceAndUsername_formats;
    goto LABEL_9;
  }

  if (v4)
  {
LABEL_7:
    v7 = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
    v8 = [v4 stringByAddingPercentEncodingWithAllowedCharacters:v7];

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:v6, v8];

    goto LABEL_11;
  }

LABEL_10:
  v9 = 0;
LABEL_11:

  return v9;
}

uint64_t __socialProfileURLForServiceAndUsername_block_invoke()
{
  socialProfileURLForServiceAndUsername_formats = _createDictionaryFromFile(@"SocialServicesURLFormats.plist");

  return MEMORY[0x2821F96F8]();
}

id socialProfileFromURL(void *a1, void *a2, void *a3, void *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v32 = a4;
  v28 = v8;
  if (socialProfileFromURL_onceToken != -1)
  {
    socialProfileFromURL_cold_1();
  }

  v27 = v9;
  v31 = [MEMORY[0x277CBEB38] dictionary];
  [socialProfileFromURL_servicesDict allKeys];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v42 = 0u;
  v10 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v10)
  {
    v11 = v10;
    v30 = *v40;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v40 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v39 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v38 = 0;
        v15 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v13 options:1 error:&v38];
        v16 = v38;
        v17 = [v7 length];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __socialProfileFromURL_block_invoke_2;
        v33[3] = &unk_278A04E30;
        v18 = v7;
        v19 = v7;
        v34 = v19;
        v35 = v31;
        v36 = v32;
        v37 = v13;
        v20 = v19;
        v7 = v18;
        [v15 enumerateMatchesInString:v20 options:0 range:0 usingBlock:{v17, v33}];

        objc_autoreleasePoolPop(v14);
      }

      v11 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v11);
  }

  v21 = [v31 objectForKey:@"url"];

  if (v21)
  {
    v23 = v27;
    v22 = v28;
    goto LABEL_25;
  }

  v24 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v7];
  v25 = [v24 scheme];

  v22 = v28;
  if (v25)
  {
    [v31 setObject:v7 forKey:@"url"];
    v23 = v27;
    if (v27 || (_socialProfileUsernameFromURL(v7), (v23 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      [v31 setObject:v23 forKey:@"username"];
    }

    if (!v28)
    {
      v22 = _socialProfileServiceFromURL(v7);
      if (!v22)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    if (!v7 || !v28)
    {
      v23 = v27;
      goto LABEL_24;
    }

    v23 = v7;

    v7 = socialProfileURLForServiceAndUsername(v28, v23);

    [v31 setObject:v7 forKey:@"url"];
    [v31 setObject:v23 forKey:@"username"];
  }

  [v31 setObject:v22 forKey:@"service"];
LABEL_24:

LABEL_25:

  return v31;
}

uint64_t __socialProfileFromURL_block_invoke()
{
  socialProfileFromURL_servicesDict = _createDictionaryFromFile(@"SocialServicesURLRegexes.plist");

  return MEMORY[0x2821F96F8]();
}

void __socialProfileFromURL_block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  if ([v10 numberOfRanges] >= 3)
  {
    v3 = *(a1 + 32);
    v4 = [v10 rangeAtIndex:2];
    v6 = [v3 substringWithRange:{v4, v5}];
    v7 = [v6 stringByRemovingPercentEncoding];

    [*(a1 + 40) setObject:v7 forKey:@"username"];
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    [*(a1 + 40) setObject:v8 forKey:@"identifier"];
  }

  v9 = [socialProfileFromURL_servicesDict objectForKey:*(a1 + 56)];
  [*(a1 + 40) setObject:v9 forKey:@"service"];
  [*(a1 + 40) setObject:*(a1 + 32) forKey:@"url"];
}

id _socialProfileUsernameFromURL(uint64_t a1)
{
  v1 = [MEMORY[0x277CBEBC0] URLWithString:a1];
  v2 = [v1 scheme];
  v3 = [v2 lowercaseString];
  if (([v3 isEqualToString:@"x-apple"] & 1) == 0)
  {

    v5 = 0;
    goto LABEL_5;
  }

  v4 = [v1 resourceSpecifier];

  if (v4)
  {
    v2 = [v1 resourceSpecifier];
    v5 = [v2 stringByRemovingPercentEncoding];
LABEL_5:

    goto LABEL_6;
  }

  v5 = 0;
LABEL_6:

  return v5;
}

id _socialProfileServiceFromURL(uint64_t a1)
{
  v3 = [MEMORY[0x277CBEBC0] URLWithString:a1];
  v4 = [v3 scheme];
  v5 = [v4 lowercaseString];
  v6 = [v5 isEqualToString:@"http"];
  if ((v6 & 1) != 0 || ([v3 scheme], v1 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v1, "lowercaseString"), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "isEqualToString:", @"https")))
  {
    v7 = [v3 host];

    if ((v6 & 1) == 0)
    {
    }

    if (!v7)
    {
      v4 = 0;
      goto LABEL_11;
    }

    v4 = [v3 host];
    if (![v4 hasPrefix:@"www."])
    {
      goto LABEL_11;
    }

    v8 = [v4 substringFromIndex:4];
  }

  else
  {

    v8 = 0;
  }

  v4 = v8;
LABEL_11:

  return v4;
}

id completedSocialProfileFromSocialProfile(void *a1)
{
  v1 = [a1 mutableCopy];
  v2 = [v1 objectForKeyedSubscript:@"url"];
  v3 = [v1 objectForKeyedSubscript:@"service"];
  v4 = [v1 objectForKeyedSubscript:@"username"];
  v5 = [v1 objectForKeyedSubscript:@"identifier"];
  v6 = v5;
  if (!v2)
  {
    if (v3)
    {
      v10 = (v4 | v5) == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      goto LABEL_26;
    }

    if (v4)
    {
      v11 = v4;
    }

    else
    {
      v11 = v5;
    }

    v9 = socialProfileURLForServiceAndUsername(v3, v11);
    if (v9)
    {
      [v1 setObject:v9 forKeyedSubscript:@"url"];
    }

    goto LABEL_25;
  }

  if (v3)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    goto LABEL_26;
  }

  v8 = socialProfileFromURL(v2, 0, 0, 0);
  v9 = v8;
  if (!v3)
  {
    v12 = [v8 objectForKeyedSubscript:@"service"];
    if (v12)
    {
      [v1 setObject:v12 forKeyedSubscript:@"service"];
    }

    if (v4)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (!v4)
  {
LABEL_22:
    v13 = [v9 objectForKeyedSubscript:@"username"];
    if (v13)
    {
      [v1 setObject:v13 forKeyedSubscript:@"username"];
    }
  }

LABEL_25:

LABEL_26:

  return v1;
}

ABRecordRef ABAddressBookCopyDefaultSource(ABAddressBookRef addressBook)
{
  v14 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v2 = +[ABSLog apiLog];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [MEMORY[0x277CCACC8] isMainThread];
      v4 = "NO";
      if (v3)
      {
        v4 = "YES";
      }

      v8 = 136315650;
      v9 = v4;
      v10 = 2080;
      v11 = "ABRecordRef ABAddressBookCopyDefaultSource(ABAddressBookRef)";
      v12 = 2112;
      v13 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v2, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v8, 0x20u);
    }
  }

  v5 = [addressBook defaultSource];
  if (ABSIsAPILogEnabled())
  {
    v6 = +[ABSLog apiLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "ABRecordRef ABAddressBookCopyDefaultSource(ABAddressBookRef)";
      _os_log_impl(&dword_236A49000, v6, OS_LOG_TYPE_DEFAULT, ">> %s", &v8, 0xCu);
    }
  }

  return v5;
}

ABRecordRef ABAddressBookGetSourceWithRecordID(ABAddressBookRef addressBook, ABRecordID sourceID)
{
  v2 = *&sourceID;
  v16 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v4 = +[ABSLog apiLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x277CCACC8] isMainThread];
      v6 = "NO";
      if (v5)
      {
        v6 = "YES";
      }

      v10 = 136315650;
      v11 = v6;
      v12 = 2080;
      v13 = "ABRecordRef ABAddressBookGetSourceWithRecordID(ABAddressBookRef, ABRecordID)";
      v14 = 2112;
      v15 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v4, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v10, 0x20u);
    }
  }

  v7 = [addressBook sourceWithRecordID:v2];
  if (ABSIsAPILogEnabled())
  {
    v8 = +[ABSLog apiLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "ABRecordRef ABAddressBookGetSourceWithRecordID(ABAddressBookRef, ABRecordID)";
      _os_log_impl(&dword_236A49000, v8, OS_LOG_TYPE_DEFAULT, ">> %s", &v10, 0xCu);
    }
  }

  return v7;
}

CFArrayRef ABAddressBookCopyArrayOfAllSources(ABAddressBookRef addressBook)
{
  v15 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v2 = +[ABSLog apiLog];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [MEMORY[0x277CCACC8] isMainThread];
      v4 = "NO";
      if (v3)
      {
        v4 = "YES";
      }

      v9 = 136315650;
      v10 = v4;
      v11 = 2080;
      v12 = "CFArrayRef ABAddressBookCopyArrayOfAllSources(ABAddressBookRef)";
      v13 = 2112;
      v14 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v2, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v9, 0x20u);
    }
  }

  v5 = [addressBook allSources];
  v6 = [v5 copy];

  if (ABSIsAPILogEnabled())
  {
    v7 = +[ABSLog apiLog];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "CFArrayRef ABAddressBookCopyArrayOfAllSources(ABAddressBookRef)";
      _os_log_impl(&dword_236A49000, v7, OS_LOG_TYPE_DEFAULT, ">> %s", &v9, 0xCu);
    }
  }

  return v6;
}

uint64_t ABSourceCreate()
{
  v14 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v0 = +[ABSLog apiLog];
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v1 = [MEMORY[0x277CCACC8] isMainThread];
      v2 = "NO";
      if (v1)
      {
        v2 = "YES";
      }

      v8 = 136315650;
      v9 = v2;
      v10 = 2080;
      v11 = "ABRecordRef ABSourceCreate(void)";
      v12 = 2112;
      v13 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v0, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v8, 0x20u);
    }
  }

  v3 = [ABSSource alloc];
  v4 = objc_alloc_init(MEMORY[0x277CBDB48]);
  v5 = [(ABSSource *)v3 initWithMutableContainer:v4];

  if (ABSIsAPILogEnabled())
  {
    v6 = +[ABSLog apiLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "ABRecordRef ABSourceCreate(void)";
      _os_log_impl(&dword_236A49000, v6, OS_LOG_TYPE_DEFAULT, ">> %s", &v8, 0xCu);
    }
  }

  return v5;
}

uint64_t ABAddressBookCopyLocalSource(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v2 = +[ABSLog apiLog];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [MEMORY[0x277CCACC8] isMainThread];
      v4 = "NO";
      if (v3)
      {
        v4 = "YES";
      }

      v8 = 136315650;
      v9 = v4;
      v10 = 2080;
      v11 = "ABRecordRef ABAddressBookCopyLocalSource(ABAddressBookRef)";
      v12 = 2112;
      v13 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v2, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v8, 0x20u);
    }
  }

  v5 = [a1 localSource];
  if (ABSIsAPILogEnabled())
  {
    v6 = +[ABSLog apiLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "ABRecordRef ABAddressBookCopyLocalSource(ABAddressBookRef)";
      _os_log_impl(&dword_236A49000, v6, OS_LOG_TYPE_DEFAULT, ">> %s", &v8, 0xCu);
    }
  }

  return v5;
}

ABRecordRef ABPersonCreate(void)
{
  v12 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v0 = +[ABSLog apiLog];
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v1 = [MEMORY[0x277CCACC8] isMainThread];
      v2 = "NO";
      if (v1)
      {
        v2 = "YES";
      }

      v6 = 136315650;
      v7 = v2;
      v8 = 2080;
      v9 = "ABRecordRef ABPersonCreate(void)";
      v10 = 2112;
      v11 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v0, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v6, 0x20u);
    }
  }

  ABSRecordGetTypeID();
  v3 = objc_alloc_init(ABSPerson);
  if (ABSIsAPILogEnabled())
  {
    v4 = +[ABSLog apiLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "ABRecordRef ABPersonCreate(void)";
      _os_log_impl(&dword_236A49000, v4, OS_LOG_TYPE_DEFAULT, ">> %s", &v6, 0xCu);
    }
  }

  return v3;
}

ABRecordRef ABPersonCreateInSource(ABRecordRef source)
{
  v2 = [ABSPerson alloc];

  return [(ABSPerson *)v2 initWithSource:source];
}

ABRecordRef ABPersonCopySource(ABRecordRef person)
{
  v14 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v2 = +[ABSLog apiLog];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [MEMORY[0x277CCACC8] isMainThread];
      v4 = "NO";
      if (v3)
      {
        v4 = "YES";
      }

      v8 = 136315650;
      v9 = v4;
      v10 = 2080;
      v11 = "ABRecordRef ABPersonCopySource(ABRecordRef)";
      v12 = 2112;
      v13 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v2, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v8, 0x20u);
    }
  }

  v5 = [person source];
  if (ABSIsAPILogEnabled())
  {
    v6 = +[ABSLog apiLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "ABRecordRef ABPersonCopySource(ABRecordRef)";
      _os_log_impl(&dword_236A49000, v6, OS_LOG_TYPE_DEFAULT, ">> %s", &v8, 0xCu);
    }
  }

  return v5;
}

CFArrayRef ABPersonCopyArrayOfAllLinkedPeople(ABRecordRef person)
{
  v14 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v2 = +[ABSLog apiLog];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [MEMORY[0x277CCACC8] isMainThread];
      v4 = "NO";
      if (v3)
      {
        v4 = "YES";
      }

      v8 = 136315650;
      v9 = v4;
      v10 = 2080;
      v11 = "CFArrayRef ABPersonCopyArrayOfAllLinkedPeople(ABRecordRef)";
      v12 = 2112;
      v13 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v2, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v8, 0x20u);
    }
  }

  v5 = [person linkedPeople];
  if (ABSIsAPILogEnabled())
  {
    v6 = +[ABSLog apiLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "CFArrayRef ABPersonCopyArrayOfAllLinkedPeople(ABRecordRef)";
      _os_log_impl(&dword_236A49000, v6, OS_LOG_TYPE_DEFAULT, ">> %s", &v8, 0xCu);
    }
  }

  return v5;
}

uint64_t ABPersonLinkPerson(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 addressBook];
  v6 = [v5 linkPerson:v4 toPerson:v3];

  return v6;
}

uint64_t ABPersonUnlink(void *a1)
{
  v1 = a1;
  v2 = [v1 addressBook];
  v3 = [v2 unlinkPerson:v1];

  return v3;
}

ABPropertyType ABPersonGetTypeOfProperty(ABPropertyID property)
{
  v1 = *&property;
  v14 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v2 = +[ABSLog apiLog];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [MEMORY[0x277CCACC8] isMainThread];
      v4 = "NO";
      if (v3)
      {
        v4 = "YES";
      }

      v8 = 136315650;
      v9 = v4;
      v10 = 2080;
      v11 = "ABPropertyType ABPersonGetTypeOfProperty(ABPropertyID)";
      v12 = 2112;
      v13 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v2, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v8, 0x20u);
    }
  }

  v5 = [ABSPerson typeForProperty:v1];
  if (ABSIsAPILogEnabled())
  {
    v6 = +[ABSLog apiLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "ABPropertyType ABPersonGetTypeOfProperty(ABPropertyID)";
      _os_log_impl(&dword_236A49000, v6, OS_LOG_TYPE_DEFAULT, ">> %s", &v8, 0xCu);
    }
  }

  return v5;
}

CFStringRef ABPersonCopyLocalizedPropertyName(ABPropertyID property)
{
  v1 = *&property;
  v14 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v2 = +[ABSLog apiLog];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [MEMORY[0x277CCACC8] isMainThread];
      v4 = "NO";
      if (v3)
      {
        v4 = "YES";
      }

      v8 = 136315650;
      v9 = v4;
      v10 = 2080;
      v11 = "CFStringRef ABPersonCopyLocalizedPropertyName(ABPropertyID)";
      v12 = 2112;
      v13 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v2, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v8, 0x20u);
    }
  }

  v5 = [ABSPerson localizedNameForProperty:v1];
  if (ABSIsAPILogEnabled())
  {
    v6 = +[ABSLog apiLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "CFStringRef ABPersonCopyLocalizedPropertyName(ABPropertyID)";
      _os_log_impl(&dword_236A49000, v6, OS_LOG_TYPE_DEFAULT, ">> %s", &v8, 0xCu);
    }
  }

  return v5;
}

ABPersonCompositeNameFormat ABPersonGetCompositeNameFormat(void)
{
  v12 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v0 = +[ABSLog apiLog];
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v1 = [MEMORY[0x277CCACC8] isMainThread];
      v2 = "NO";
      if (v1)
      {
        v2 = "YES";
      }

      v6 = 136315650;
      v7 = v2;
      v8 = 2080;
      v9 = "ABPersonCompositeNameFormat ABPersonGetCompositeNameFormat(void)";
      v10 = 2112;
      v11 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v0, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v6, 0x20u);
    }
  }

  v3 = +[ABSPerson compositeNameFormat];
  if (ABSIsAPILogEnabled())
  {
    v4 = +[ABSLog apiLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "ABPersonCompositeNameFormat ABPersonGetCompositeNameFormat(void)";
      _os_log_impl(&dword_236A49000, v4, OS_LOG_TYPE_DEFAULT, ">> %s", &v6, 0xCu);
    }
  }

  return v3;
}

ABPersonCompositeNameFormat ABPersonGetCompositeNameFormatForRecord(ABRecordRef record)
{
  v15 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v2 = +[ABSLog apiLog];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [MEMORY[0x277CCACC8] isMainThread];
      v4 = "NO";
      if (v3)
      {
        v4 = "YES";
      }

      *buf = 136315650;
      v10 = v4;
      v11 = 2080;
      v12 = "ABPersonCompositeNameFormat ABPersonGetCompositeNameFormatForRecord(ABRecordRef)";
      v13 = 2112;
      v14 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v2, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", buf, 0x20u);
    }
  }

  v5 = record;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 compositeNameFormat];
  }

  else
  {
    v6 = +[ABSPerson compositeNameFormat];
    if (v5)
    {
      NSLog(&cfstr_WarningUnexpec.isa, v5);
    }
  }

  if (ABSIsAPILogEnabled())
  {
    v7 = +[ABSLog apiLog];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "ABPersonCompositeNameFormat ABPersonGetCompositeNameFormatForRecord(ABRecordRef)";
      _os_log_impl(&dword_236A49000, v7, OS_LOG_TYPE_DEFAULT, ">> %s", buf, 0xCu);
    }
  }

  return v6;
}

CFStringRef ABPersonCopyCompositeNameDelimiterForRecord(ABRecordRef record)
{
  v15 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v2 = +[ABSLog apiLog];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [MEMORY[0x277CCACC8] isMainThread];
      v4 = "NO";
      if (v3)
      {
        v4 = "YES";
      }

      *buf = 136315650;
      v10 = v4;
      v11 = 2080;
      v12 = "CFStringRef ABPersonCopyCompositeNameDelimiterForRecord(ABRecordRef)";
      v13 = 2112;
      v14 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v2, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", buf, 0x20u);
    }
  }

  v5 = record;
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    NSLog(&cfstr_WarningUnexpec_0.isa, v5);
    v6 = &stru_2849A7F60;
  }

  else
  {
    v6 = [ABSPerson copyCompositeNameDelimiterForPerson:v5];
    if (ABSIsAPILogEnabled())
    {
      v7 = +[ABSLog apiLog];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v10 = "CFStringRef ABPersonCopyCompositeNameDelimiterForRecord(ABRecordRef)";
        _os_log_impl(&dword_236A49000, v7, OS_LOG_TYPE_DEFAULT, ">> %s", buf, 0xCu);
      }
    }
  }

  return v6;
}

BOOL ABPersonSetImageData(ABRecordRef person, CFDataRef imageData, CFErrorRef *error)
{
  v21 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v6 = +[ABSLog apiLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [MEMORY[0x277CCACC8] isMainThread];
      v8 = "NO";
      if (v7)
      {
        v8 = "YES";
      }

      *buf = 136315650;
      v16 = v8;
      v17 = 2080;
      v18 = "_Bool ABPersonSetImageData(ABRecordRef, CFDataRef, CFErrorRef *)";
      v19 = 2112;
      v20 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v6, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", buf, 0x20u);
    }
  }

  v14 = 0;
  v9 = [person setImageData:imageData withError:&v14];
  v10 = v14;
  v11 = v10;
  if (error && (v9 & 1) == 0)
  {
    *error = v10;
  }

  if (ABSIsAPILogEnabled())
  {
    v12 = +[ABSLog apiLog];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "_Bool ABPersonSetImageData(ABRecordRef, CFDataRef, CFErrorRef *)";
      _os_log_impl(&dword_236A49000, v12, OS_LOG_TYPE_DEFAULT, ">> %s", buf, 0xCu);
    }
  }

  return v9;
}

CFDataRef ABPersonCopyImageData(ABRecordRef person)
{
  v14 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v2 = +[ABSLog apiLog];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [MEMORY[0x277CCACC8] isMainThread];
      v4 = "NO";
      if (v3)
      {
        v4 = "YES";
      }

      v8 = 136315650;
      v9 = v4;
      v10 = 2080;
      v11 = "CFDataRef ABPersonCopyImageData(ABRecordRef)";
      v12 = 2112;
      v13 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v2, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v8, 0x20u);
    }
  }

  v5 = [person copyImageData];
  if (ABSIsAPILogEnabled())
  {
    v6 = +[ABSLog apiLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "CFDataRef ABPersonCopyImageData(ABRecordRef)";
      _os_log_impl(&dword_236A49000, v6, OS_LOG_TYPE_DEFAULT, ">> %s", &v8, 0xCu);
    }
  }

  return v5;
}

CFDataRef ABPersonCopyImageDataWithFormat(ABRecordRef person, ABPersonImageFormat format)
{
  v2 = *&format;
  v16 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v4 = +[ABSLog apiLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x277CCACC8] isMainThread];
      v6 = "NO";
      if (v5)
      {
        v6 = "YES";
      }

      v10 = 136315650;
      v11 = v6;
      v12 = 2080;
      v13 = "CFDataRef ABPersonCopyImageDataWithFormat(ABRecordRef, ABPersonImageFormat)";
      v14 = 2112;
      v15 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v4, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v10, 0x20u);
    }
  }

  v7 = [person copyImageDataWithFormat:v2];
  if (ABSIsAPILogEnabled())
  {
    v8 = +[ABSLog apiLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "CFDataRef ABPersonCopyImageDataWithFormat(ABRecordRef, ABPersonImageFormat)";
      _os_log_impl(&dword_236A49000, v8, OS_LOG_TYPE_DEFAULT, ">> %s", &v10, 0xCu);
    }
  }

  return v7;
}

BOOL ABPersonHasImageData(ABRecordRef person)
{
  v14 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v2 = +[ABSLog apiLog];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [MEMORY[0x277CCACC8] isMainThread];
      v4 = "NO";
      if (v3)
      {
        v4 = "YES";
      }

      v8 = 136315650;
      v9 = v4;
      v10 = 2080;
      v11 = "_Bool ABPersonHasImageData(ABRecordRef)";
      v12 = 2112;
      v13 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v2, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v8, 0x20u);
    }
  }

  v5 = [person hasImageData];
  if (ABSIsAPILogEnabled())
  {
    v6 = +[ABSLog apiLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "_Bool ABPersonHasImageData(ABRecordRef)";
      _os_log_impl(&dword_236A49000, v6, OS_LOG_TYPE_DEFAULT, ">> %s", &v8, 0xCu);
    }
  }

  return v5;
}

BOOL ABPersonRemoveImageData(ABRecordRef person, CFErrorRef *error)
{
  v19 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v4 = +[ABSLog apiLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x277CCACC8] isMainThread];
      v6 = "NO";
      if (v5)
      {
        v6 = "YES";
      }

      *buf = 136315650;
      v14 = v6;
      v15 = 2080;
      v16 = "_Bool ABPersonRemoveImageData(ABRecordRef, CFErrorRef *)";
      v17 = 2112;
      v18 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v4, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", buf, 0x20u);
    }
  }

  v12 = 0;
  v7 = [person removeImageDataWithError:&v12];
  v8 = v12;
  v9 = v8;
  if (error && (v7 & 1) == 0)
  {
    *error = v8;
  }

  if (ABSIsAPILogEnabled())
  {
    v10 = +[ABSLog apiLog];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "_Bool ABPersonRemoveImageData(ABRecordRef, CFErrorRef *)";
      _os_log_impl(&dword_236A49000, v10, OS_LOG_TYPE_DEFAULT, ">> %s", buf, 0xCu);
    }
  }

  return v7;
}

CFComparisonResult ABPersonComparePeopleByName(ABRecordRef person1, ABRecordRef person2, ABPersonSortOrdering ordering)
{
  v3 = *&ordering;
  v18 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v6 = +[ABSLog apiLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [MEMORY[0x277CCACC8] isMainThread];
      v8 = "NO";
      if (v7)
      {
        v8 = "YES";
      }

      v12 = 136315650;
      v13 = v8;
      v14 = 2080;
      v15 = "CFComparisonResult ABPersonComparePeopleByName(ABRecordRef, ABRecordRef, ABPersonSortOrdering)";
      v16 = 2112;
      v17 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v6, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v12, 0x20u);
    }
  }

  v9 = [person1 comparePersonByName:person2 sortOrdering:v3];
  if (ABSIsAPILogEnabled())
  {
    v10 = +[ABSLog apiLog];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "CFComparisonResult ABPersonComparePeopleByName(ABRecordRef, ABRecordRef, ABPersonSortOrdering)";
      _os_log_impl(&dword_236A49000, v10, OS_LOG_TYPE_DEFAULT, ">> %s", &v12, 0xCu);
    }
  }

  return v9;
}

CFIndex ABAddressBookGetPersonCount(ABAddressBookRef addressBook)
{
  v14 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v2 = +[ABSLog apiLog];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [MEMORY[0x277CCACC8] isMainThread];
      v4 = "NO";
      if (v3)
      {
        v4 = "YES";
      }

      v8 = 136315650;
      v9 = v4;
      v10 = 2080;
      v11 = "CFIndex ABAddressBookGetPersonCount(ABAddressBookRef)";
      v12 = 2112;
      v13 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v2, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v8, 0x20u);
    }
  }

  v5 = [addressBook personCount];
  if (ABSIsAPILogEnabled())
  {
    v6 = +[ABSLog apiLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "CFIndex ABAddressBookGetPersonCount(ABAddressBookRef)";
      _os_log_impl(&dword_236A49000, v6, OS_LOG_TYPE_DEFAULT, ">> %s", &v8, 0xCu);
    }
  }

  return v5;
}

ABRecordRef ABAddressBookGetPersonWithRecordID(ABAddressBookRef addressBook, ABRecordID recordID)
{
  v2 = *&recordID;
  v16 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v4 = +[ABSLog apiLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x277CCACC8] isMainThread];
      v6 = "NO";
      if (v5)
      {
        v6 = "YES";
      }

      v10 = 136315650;
      v11 = v6;
      v12 = 2080;
      v13 = "ABRecordRef ABAddressBookGetPersonWithRecordID(ABAddressBookRef, ABRecordID)";
      v14 = 2112;
      v15 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v4, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v10, 0x20u);
    }
  }

  v7 = [addressBook personWithRecordID:v2];
  if (ABSIsAPILogEnabled())
  {
    v8 = +[ABSLog apiLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "ABRecordRef ABAddressBookGetPersonWithRecordID(ABAddressBookRef, ABRecordID)";
      _os_log_impl(&dword_236A49000, v8, OS_LOG_TYPE_DEFAULT, ">> %s", &v10, 0xCu);
    }
  }

  return v7;
}

CFArrayRef ABAddressBookCopyArrayOfAllPeople(ABAddressBookRef addressBook)
{
  v15 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v2 = +[ABSLog apiLog];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [MEMORY[0x277CCACC8] isMainThread];
      v4 = "NO";
      if (v3)
      {
        v4 = "YES";
      }

      v9 = 136315650;
      v10 = v4;
      v11 = 2080;
      v12 = "CFArrayRef ABAddressBookCopyArrayOfAllPeople(ABAddressBookRef)";
      v13 = 2112;
      v14 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v2, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v9, 0x20u);
    }
  }

  v5 = [addressBook allPeople];
  v6 = [v5 copy];

  if (ABSIsAPILogEnabled())
  {
    v7 = +[ABSLog apiLog];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "CFArrayRef ABAddressBookCopyArrayOfAllPeople(ABAddressBookRef)";
      _os_log_impl(&dword_236A49000, v7, OS_LOG_TYPE_DEFAULT, ">> %s", &v9, 0xCu);
    }
  }

  return v6;
}

CFArrayRef ABAddressBookCopyArrayOfAllPeopleInSource(ABAddressBookRef addressBook, ABRecordRef source)
{
  v16 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v4 = +[ABSLog apiLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x277CCACC8] isMainThread];
      v6 = "NO";
      if (v5)
      {
        v6 = "YES";
      }

      v10 = 136315650;
      v11 = v6;
      v12 = 2080;
      v13 = "CFArrayRef ABAddressBookCopyArrayOfAllPeopleInSource(ABAddressBookRef, ABRecordRef)";
      v14 = 2112;
      v15 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v4, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v10, 0x20u);
    }
  }

  v7 = [addressBook peopleInSource:source sortOrder:0xFFFFFFFFLL];
  if (ABSIsAPILogEnabled())
  {
    v8 = +[ABSLog apiLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "CFArrayRef ABAddressBookCopyArrayOfAllPeopleInSource(ABAddressBookRef, ABRecordRef)";
      _os_log_impl(&dword_236A49000, v8, OS_LOG_TYPE_DEFAULT, ">> %s", &v10, 0xCu);
    }
  }

  return v7;
}

CFArrayRef ABAddressBookCopyArrayOfAllPeopleInSourceWithSortOrdering(ABAddressBookRef addressBook, ABRecordRef source, ABPersonSortOrdering sortOrdering)
{
  v3 = *&sortOrdering;
  v18 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v6 = +[ABSLog apiLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [MEMORY[0x277CCACC8] isMainThread];
      v8 = "NO";
      if (v7)
      {
        v8 = "YES";
      }

      v12 = 136315650;
      v13 = v8;
      v14 = 2080;
      v15 = "CFArrayRef ABAddressBookCopyArrayOfAllPeopleInSourceWithSortOrdering(ABAddressBookRef, ABRecordRef, ABPersonSortOrdering)";
      v16 = 2112;
      v17 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v6, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v12, 0x20u);
    }
  }

  v9 = [addressBook peopleInSource:source sortOrder:v3];
  if (ABSIsAPILogEnabled())
  {
    v10 = +[ABSLog apiLog];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "CFArrayRef ABAddressBookCopyArrayOfAllPeopleInSourceWithSortOrdering(ABAddressBookRef, ABRecordRef, ABPersonSortOrdering)";
      _os_log_impl(&dword_236A49000, v10, OS_LOG_TYPE_DEFAULT, ">> %s", &v12, 0xCu);
    }
  }

  return v9;
}

CFArrayRef ABAddressBookCopyPeopleWithName(ABAddressBookRef addressBook, CFStringRef name)
{
  v17 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v4 = +[ABSLog apiLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x277CCACC8] isMainThread];
      v6 = "NO";
      if (v5)
      {
        v6 = "YES";
      }

      v11 = 136315650;
      v12 = v6;
      v13 = 2080;
      v14 = "CFArrayRef ABAddressBookCopyPeopleWithName(ABAddressBookRef, CFStringRef)";
      v15 = 2112;
      v16 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v4, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v11, 0x20u);
    }
  }

  v7 = [addressBook peopleMatchingNameString:name];
  v8 = [v7 copy];

  if (ABSIsAPILogEnabled())
  {
    v9 = +[ABSLog apiLog];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "CFArrayRef ABAddressBookCopyPeopleWithName(ABAddressBookRef, CFStringRef)";
      _os_log_impl(&dword_236A49000, v9, OS_LOG_TYPE_DEFAULT, ">> %s", &v11, 0xCu);
    }
  }

  return v8;
}

CFArrayRef ABPersonCreatePeopleInSourceWithVCardRepresentation(ABRecordRef source, CFDataRef vCardData)
{
  v16 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v4 = +[ABSLog apiLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x277CCACC8] isMainThread];
      v6 = "NO";
      if (v5)
      {
        v6 = "YES";
      }

      v10 = 136315650;
      v11 = v6;
      v12 = 2080;
      v13 = "CFArrayRef ABPersonCreatePeopleInSourceWithVCardRepresentation(ABRecordRef, CFDataRef)";
      v14 = 2112;
      v15 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v4, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v10, 0x20u);
    }
  }

  v7 = [ABSPerson createPeopleInSource:source withVCardRepresentation:vCardData];
  if (ABSIsAPILogEnabled())
  {
    v8 = +[ABSLog apiLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "CFArrayRef ABPersonCreatePeopleInSourceWithVCardRepresentation(ABRecordRef, CFDataRef)";
      _os_log_impl(&dword_236A49000, v8, OS_LOG_TYPE_DEFAULT, ">> %s", &v10, 0xCu);
    }
  }

  return v7;
}

CFDataRef ABPersonCreateVCardRepresentationWithPeople(CFArrayRef people)
{
  v14 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v2 = +[ABSLog apiLog];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [MEMORY[0x277CCACC8] isMainThread];
      v4 = "NO";
      if (v3)
      {
        v4 = "YES";
      }

      v8 = 136315650;
      v9 = v4;
      v10 = 2080;
      v11 = "CFDataRef ABPersonCreateVCardRepresentationWithPeople(CFArrayRef)";
      v12 = 2112;
      v13 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v2, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v8, 0x20u);
    }
  }

  v5 = [ABSPerson vCardRepresentationForPeople:people];
  if (ABSIsAPILogEnabled())
  {
    v6 = +[ABSLog apiLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "CFDataRef ABPersonCreateVCardRepresentationWithPeople(CFArrayRef)";
      _os_log_impl(&dword_236A49000, v6, OS_LOG_TYPE_DEFAULT, ">> %s", &v8, 0xCu);
    }
  }

  return v5;
}

ABPersonSortOrdering ABPersonGetSortOrdering(void)
{
  v12 = *MEMORY[0x277D85DE8];
  if (ABSIsAPILogEnabled())
  {
    v0 = +[ABSLog apiLog];
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v1 = [MEMORY[0x277CCACC8] isMainThread];
      v2 = "NO";
      if (v1)
      {
        v2 = "YES";
      }

      v6 = 136315650;
      v7 = v2;
      v8 = 2080;
      v9 = "ABPersonSortOrdering ABPersonGetSortOrdering(void)";
      v10 = 2112;
      v11 = &stru_2849A7F60;
      _os_log_impl(&dword_236A49000, v0, OS_LOG_TYPE_DEFAULT, "<< Main thread:%s %s %@", &v6, 0x20u);
    }
  }

  v3 = +[ABSPerson sortOrdering];
  if (ABSIsAPILogEnabled())
  {
    v4 = +[ABSLog apiLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "ABPersonSortOrdering ABPersonGetSortOrdering(void)";
      _os_log_impl(&dword_236A49000, v4, OS_LOG_TYPE_DEFAULT, ">> %s", &v6, 0xCu);
    }
  }

  return v3;
}

void *ABAddressBookFindPersonMatchingURL(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v5 = [a1 findPersonMatchingURL:a2];
  [v5 getIdentifier:a3 label:0 forMultiValueMatchingValue:a2 property:22];

  return v5;
}

void *ABAddressBookFindPersonMatchingEmailAddress(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v5 = [a1 findPersonMatchingEmailAddress:a2];
  [v5 getIdentifier:a3 label:0 forMultiValueMatchingValue:a2 property:4];

  return v5;
}

void *ABAddressBookFindPersonMatchingPhoneNumberWithCountry(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v9 = [a1 findPersonMatchingPhoneNumber:a2 country:a3];
  if (a4 | a5)
  {
    v16 = 0;
    v10 = [MEMORY[0x277CBDB70] fullyQualifiedStringForStringValue:a2 countryCode:a3];
    v15 = 0;
    v11 = [v9 getIdentifier:&v16 label:&v15 forMultiValueMatchingValue:v10 property:3];
    v12 = v15;
    v13 = v12;
    if (v11)
    {
      if (a5)
      {
        *a5 = v12;
      }

      if (a4)
      {
        *a4 = v16;
      }
    }
  }

  return v9;
}

uint64_t ABAddressBookCopyPersonMatchingInternalUUID(void *a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 0;
  }

  v7[0] = a2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v4 = [a1 peopleWithCNIdentifiers:v3];
  v5 = [v4 firstObject];

  return v5;
}

uint64_t ABPersonCopyShortName(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 shortName];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __LoadContactsAssistantServices_block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&dword_236A49000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/ContactsAssistantServices.framework/ContactsAssistantServices (%d)", v1, 8u);
}

void ABAddressBookSave_cold_2(char a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:a1 & 1];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_236A49000, a2, OS_LOG_TYPE_DEBUG, "Did save AddressBook with result %@", &v4, 0xCu);
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x282111610](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}