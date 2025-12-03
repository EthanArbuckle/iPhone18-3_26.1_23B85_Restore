@interface CRRecentContact(CloudRecentsExtensions)
- (ABRecordRef)person;
- (uint64_t)existingPerson;
- (uint64_t)matchedIdentifier;
- (uint64_t)property;
@end

@implementation CRRecentContact(CloudRecentsExtensions)

- (uint64_t)property
{
  kind = [self kind];
  v2 = MFABPropertyForRecentsKind(kind);

  return v2;
}

- (uint64_t)existingPerson
{
  v21 = *MEMORY[0x1E69E9840];
  _addressBookContext = [self _addressBookContext];
  if (!_addressBookContext)
  {
    currentThread = [MEMORY[0x1E696AF00] currentThread];
    threadDictionary = [currentThread threadDictionary];

    v5 = [threadDictionary objectForKeyedSubscript:@"MFMailMessageLibraryAddressBook"];

    if (v5)
    {
    }

    else
    {
      cf = 0;
      v5 = ABAddressBookCreateWithOptions(0, &cf);
      if (v5)
      {
        [threadDictionary setObject:v5 forKeyedSubscript:@"MFMailMessageLibraryAddressBook"];
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
        _addressBookContext = 0;
        goto LABEL_23;
      }
    }

    address = [self address];
    property = [self property];
    v18 = address;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    displayName = [self displayName];
    v11 = MFCopyClosestMatchingExistingPersonUsingAddressesAndDisplayName(v5, v9, property, displayName);

    if (v11)
    {
      _addressBookContext = objc_alloc_init(_MFCRRecentContactABContext);
      [(_MFCRRecentContactABContext *)_addressBookContext setExistingPerson:v11];
      v12 = ABRecordCopyValue(v11, property);
      v13 = v12;
      if (v12)
      {
        if (*MEMORY[0x1E698A548] == property)
        {
          FirstIndexOfValueWithCallback = ABMultiValueGetFirstIndexOfValueWithCallback();
        }

        else
        {
          FirstIndexOfValueWithCallback = ABMultiValueGetFirstIndexOfValue(v12, address);
        }

        if (FirstIndexOfValueWithCallback != -1)
        {
          [(_MFCRRecentContactABContext *)_addressBookContext setIdentifier:ABMultiValueGetIdentifierAtIndex(v13, FirstIndexOfValueWithCallback)];
        }

        CFRelease(v13);
      }

      [self _setAddressBookContext:_addressBookContext];
      CFRelease(v11);
    }

    else
    {
      _addressBookContext = 0;
    }
  }

LABEL_23:
  existingPerson = [(_MFCRRecentContactABContext *)_addressBookContext existingPerson];

  return existingPerson;
}

- (ABRecordRef)person
{
  _addressBookContext = [self _addressBookContext];
  interimPerson = [(_MFCRRecentContactABContext *)_addressBookContext interimPerson];
  if (interimPerson || (interimPerson = [self existingPerson]) != 0)
  {
    v4 = _addressBookContext;
  }

  else
  {
    kind = [self kind];
    v7 = [kind isEqualToString:*MEMORY[0x1E6998F60]];

    if (v7)
    {
      v8 = 0;
      displayName = [self displayName];
      v10 = 0;
      v11 = 0;
      v12 = 0;
    }

    else
    {
      displayName2 = [self displayName];
      ec_personNameComponents = [displayName2 ec_personNameComponents];

      namePrefix = [ec_personNameComponents namePrefix];
      givenName = [ec_personNameComponents givenName];
      middleName = [ec_personNameComponents middleName];
      familyName = [ec_personNameComponents familyName];
      nameSuffix = [ec_personNameComponents nameSuffix];

      displayName = givenName;
      v10 = middleName;
      v11 = familyName;
      v8 = namePrefix;
      v12 = nameSuffix;
    }

    interimPerson = ABPersonCreate();
    ABRecordSetValue(interimPerson, *MEMORY[0x1E698A580], v8, 0);
    ABRecordSetValue(interimPerson, *MEMORY[0x1E698A380], displayName, 0);
    ABRecordSetValue(interimPerson, *MEMORY[0x1E698A4B0], v10, 0);
    ABRecordSetValue(interimPerson, *MEMORY[0x1E698A478], v11, 0);
    ABRecordSetValue(interimPerson, *MEMORY[0x1E698A628], v12, 0);
    property = [self property];
    Mutable = ABMultiValueCreateMutable(1u);
    outIdentifier = -1431655766;
    address = [self address];
    ABMultiValueAddValueAndLabel(Mutable, address, *MEMORY[0x1E698A240], &outIdentifier);
    ABRecordSetValue(interimPerson, property, Mutable, 0);
    CFRelease(Mutable);
    v4 = objc_alloc_init(_MFCRRecentContactABContext);

    [(_MFCRRecentContactABContext *)v4 setInterimPerson:interimPerson];
    [(_MFCRRecentContactABContext *)v4 setIdentifier:outIdentifier];
    [self _setAddressBookContext:v4];
    CFRelease(interimPerson);
  }

  return interimPerson;
}

- (uint64_t)matchedIdentifier
{
  _addressBookContext = [self _addressBookContext];

  if (!_addressBookContext)
  {
    [self person];
  }

  _addressBookContext2 = [self _addressBookContext];
  identifier = [_addressBookContext2 identifier];

  return identifier;
}

@end