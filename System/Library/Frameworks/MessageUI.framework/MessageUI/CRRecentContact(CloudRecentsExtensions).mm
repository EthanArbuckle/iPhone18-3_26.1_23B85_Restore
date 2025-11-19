@interface CRRecentContact(CloudRecentsExtensions)
- (ABRecordRef)person;
- (uint64_t)existingPerson;
- (uint64_t)matchedIdentifier;
- (uint64_t)property;
@end

@implementation CRRecentContact(CloudRecentsExtensions)

- (uint64_t)property
{
  v1 = [a1 kind];
  v2 = MFABPropertyForRecentsKind(v1);

  return v2;
}

- (uint64_t)existingPerson
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [a1 _addressBookContext];
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AF00] currentThread];
    v4 = [v3 threadDictionary];

    v5 = [v4 objectForKeyedSubscript:@"MFMailMessageLibraryAddressBook"];

    if (v5)
    {
    }

    else
    {
      cf = 0;
      v5 = ABAddressBookCreateWithOptions(0, &cf);
      if (v5)
      {
        [v4 setObject:v5 forKeyedSubscript:@"MFMailMessageLibraryAddressBook"];
        CFRelease(v5);
      }

      else
      {
        v6 = MFLogGeneral();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v20 = cf;
          _os_log_impl(&dword_1BE819000, v6, OS_LOG_TYPE_DEFAULT, "#Warning %@", buf, 0xCu);
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (!v5)
      {
        v2 = 0;
        goto LABEL_23;
      }
    }

    v7 = [a1 address];
    v8 = [a1 property];
    v18 = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    v10 = [a1 displayName];
    v11 = MFCopyClosestMatchingExistingPersonUsingAddressesAndDisplayName(v5, v9, v8, v10);

    if (v11)
    {
      v2 = objc_alloc_init(_MFCRRecentContactABContext);
      [(_MFCRRecentContactABContext *)v2 setExistingPerson:v11];
      v12 = ABRecordCopyValue(v11, v8);
      v13 = v12;
      if (v12)
      {
        if (*MEMORY[0x1E698A548] == v8)
        {
          FirstIndexOfValueWithCallback = ABMultiValueGetFirstIndexOfValueWithCallback();
        }

        else
        {
          FirstIndexOfValueWithCallback = ABMultiValueGetFirstIndexOfValue(v12, v7);
        }

        if (FirstIndexOfValueWithCallback != -1)
        {
          [(_MFCRRecentContactABContext *)v2 setIdentifier:ABMultiValueGetIdentifierAtIndex(v13, FirstIndexOfValueWithCallback)];
        }

        CFRelease(v13);
      }

      [a1 _setAddressBookContext:v2];
      CFRelease(v11);
    }

    else
    {
      v2 = 0;
    }
  }

LABEL_23:
  v15 = [(_MFCRRecentContactABContext *)v2 existingPerson];

  return v15;
}

- (ABRecordRef)person
{
  v2 = [a1 _addressBookContext];
  v3 = [(_MFCRRecentContactABContext *)v2 interimPerson];
  if (v3 || (v3 = [a1 existingPerson]) != 0)
  {
    v4 = v2;
  }

  else
  {
    v6 = [a1 kind];
    v7 = [v6 isEqualToString:*MEMORY[0x1E6998F60]];

    if (v7)
    {
      v8 = 0;
      v9 = [a1 displayName];
      v10 = 0;
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v13 = [a1 displayName];
      v14 = [v13 ec_personNameComponents];

      v15 = [v14 namePrefix];
      v16 = [v14 givenName];
      v17 = [v14 middleName];
      v18 = [v14 familyName];
      v22 = [v14 nameSuffix];

      v9 = v16;
      v10 = v17;
      v11 = v18;
      v8 = v15;
      v12 = v22;
    }

    v3 = ABPersonCreate();
    ABRecordSetValue(v3, *MEMORY[0x1E698A580], v8, 0);
    ABRecordSetValue(v3, *MEMORY[0x1E698A380], v9, 0);
    ABRecordSetValue(v3, *MEMORY[0x1E698A4B0], v10, 0);
    ABRecordSetValue(v3, *MEMORY[0x1E698A478], v11, 0);
    ABRecordSetValue(v3, *MEMORY[0x1E698A628], v12, 0);
    v19 = [a1 property];
    Mutable = ABMultiValueCreateMutable(1u);
    outIdentifier = -1431655766;
    v21 = [a1 address];
    ABMultiValueAddValueAndLabel(Mutable, v21, *MEMORY[0x1E698A240], &outIdentifier);
    ABRecordSetValue(v3, v19, Mutable, 0);
    CFRelease(Mutable);
    v4 = objc_alloc_init(_MFCRRecentContactABContext);

    [(_MFCRRecentContactABContext *)v4 setInterimPerson:v3];
    [(_MFCRRecentContactABContext *)v4 setIdentifier:outIdentifier];
    [a1 _setAddressBookContext:v4];
    CFRelease(v3);
  }

  return v3;
}

- (uint64_t)matchedIdentifier
{
  v2 = [a1 _addressBookContext];

  if (!v2)
  {
    [a1 person];
  }

  v3 = [a1 _addressBookContext];
  v4 = [v3 identifier];

  return v4;
}

@end