@interface ABSPublicABCNCompatibility
+ (BOOL)overwritePublicABPerson:(void *)person withContact:(id)contact;
+ (BOOL)updateNewPublicABPerson:(void *)person withSavedContact:(id)contact inAddressBook:(void *)book;
+ (id)contactFromPublicABPerson:(void *)person keysToFetch:(id)fetch mutable:(BOOL)mutable;
+ (id)contactPropertyKeyFromPublicABPropertyID:(int)d;
+ (id)createAddressBookForConversion;
+ (id)labeledValueFromPublicMultiValueIdentifier:(int)identifier contact:(id)contact key:(id)key contactStore:(id)store;
+ (int)publicABPropertyIDFromContactPropertyKey:(id)key;
+ (void)publicABPersonFromContact:(id)contact contactStore:(id)store publicAddressBook:(const void *)book;
@end

@implementation ABSPublicABCNCompatibility

+ (BOOL)updateNewPublicABPerson:(void *)person withSavedContact:(id)contact inAddressBook:(void *)book
{
  contactCopy = contact;
  hasBeenPersisted = [contactCopy hasBeenPersisted];
  if (hasBeenPersisted)
  {
    personCopy = person;
    [personCopy replaceRecordStorageWithCNObject:contactCopy];
    if (ABAddressBookGetAuthorizationStatus() == kABAuthorizationStatusAuthorized)
    {
      bookCopy = book;
      contacts = [bookCopy contacts];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __85__ABSPublicABCNCompatibility_updateNewPublicABPerson_withSavedContact_inAddressBook___block_invoke;
      v15[3] = &unk_278A04E08;
      v12 = personCopy;
      v16 = v12;
      v13 = [contacts cnImplFetched:contactCopy creationBlock:v15];

      [v12 setAddressBook:bookCopy];
    }
  }

  return hasBeenPersisted;
}

+ (BOOL)overwritePublicABPerson:(void *)person withContact:(id)contact
{
  contactCopy = contact;
  personCopy = person;
  keyVector = [contactCopy keyVector];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__ABSPublicABCNCompatibility_overwritePublicABPerson_withContact___block_invoke;
  v11[3] = &unk_278A048A0;
  v12 = personCopy;
  v13 = contactCopy;
  v8 = contactCopy;
  v9 = personCopy;
  [keyVector enumeratePropertiesUsingBlock:v11];

  return 1;
}

uint64_t __66__ABSPublicABCNCompatibility_overwritePublicABPerson_withContact___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [MEMORY[0x277CBDA20] identifierDescription];
  if (v3 != v10)
  {
    v4 = [MEMORY[0x277CBDA20] iOSLegacyIdentifierDescription];

    if (v4 == v10)
    {
      goto LABEL_6;
    }

    v3 = [*(a1 + 32) cnImpl];
    v5 = [v10 key];
    v6 = [v3 isKeyAvailable:v5];

    if (v6)
    {
      v7 = [v10 CNValueForContact:*(a1 + 40)];
      v8 = [v10 valueWithResetIdentifiers:v7];

      [v10 setCNValue:v8 onContact:v3];
    }
  }

LABEL_6:

  return MEMORY[0x2821F96F8]();
}

+ (id)contactFromPublicABPerson:(void *)person keysToFetch:(id)fetch mutable:(BOOL)mutable
{
  mutableCopy = mutable;
  personCopy = person;
  fetchCopy = fetch;
  if (([personCopy completeCNImplIfNeededWithKeysToFetch:fetchCopy] & 1) == 0)
  {
    NSLog(&cfstr_ErrorWeCanTCon.isa);
  }

  cnImpl = [personCopy cnImpl];
  v10 = [cnImpl copyWithPropertyKeys:fetchCopy];

  if (mutableCopy)
  {
    v11 = [v10 mutableCopy];

    v10 = v11;
  }

  return v10;
}

+ (id)contactPropertyKeyFromPublicABPropertyID:(int)d
{
  v3 = *&d;
  contactPropertiesByABSPropertyID = [MEMORY[0x277CBDA20] contactPropertiesByABSPropertyID];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v6 = [contactPropertiesByABSPropertyID objectForKeyedSubscript:v5];
  v7 = [v6 key];

  return v7;
}

+ (int)publicABPropertyIDFromContactPropertyKey:(id)key
{
  keyCopy = key;
  contactPropertiesByKey = [MEMORY[0x277CBDA20] contactPropertiesByKey];
  v5 = [contactPropertiesByKey objectForKeyedSubscript:keyCopy];

  v8 = -1;
  if (([v5 absPropertyID:&v8] & 1) == 0)
  {
    NSLog(&cfstr_UnableToConver.isa, keyCopy);
  }

  v6 = v8;

  return v6;
}

+ (void)publicABPersonFromContact:(id)contact contactStore:(id)store publicAddressBook:(const void *)book
{
  contactCopy = contact;
  storeCopy = store;
  if (book && *book)
  {
    v10 = *book;
  }

  else
  {
    createAddressBookForConversion = [self createAddressBookForConversion];
    v10 = createAddressBookForConversion;
    if (book)
    {
      v10 = createAddressBookForConversion;
      *book = v10;
    }
  }

  if (![contactCopy hasBeenPersisted] || (objc_msgSend(contactCopy, "isUnified") & 1) != 0 || ABAddressBookGetAuthorizationStatus() != kABAuthorizationStatusAuthorized || (objc_msgSend(v10, "personWithRecordID:", objc_msgSend(contactCopy, "iOSLegacyIdentifier")), (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v13 = [ABSPerson alloc];
    v14 = [contactCopy mutableCopy];
    v12 = [(ABSPerson *)v13 initWithMutableContact:v14];
  }

  v15 = v12;
  v16 = v15;
  if (v15)
  {
    v17 = CFAutorelease(v15);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)labeledValueFromPublicMultiValueIdentifier:(int)identifier contact:(id)contact key:(id)key contactStore:(id)store
{
  v8 = MEMORY[0x277CBDA20];
  keyCopy = key;
  contactCopy = contact;
  contactPropertiesByKey = [v8 contactPropertiesByKey];
  v12 = [contactPropertiesByKey objectForKeyedSubscript:keyCopy];

  v13 = [v12 CNValueForContact:contactCopy];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __98__ABSPublicABCNCompatibility_labeledValueFromPublicMultiValueIdentifier_contact_key_contactStore___block_invoke;
  v17[3] = &__block_descriptor_36_e31_B32__0__CNLabeledValue_8Q16_B24l;
  identifierCopy = identifier;
  v14 = [v13 indexesOfObjectsPassingTest:v17];
  if ([v14 count] == 1)
  {
    v15 = [v13 objectAtIndexedSubscript:{objc_msgSend(v14, "firstIndex")}];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)createAddressBookForConversion
{
  v2 = [[ABSAddressBook alloc] initWithOptions:0 error:0];

  return v2;
}

@end