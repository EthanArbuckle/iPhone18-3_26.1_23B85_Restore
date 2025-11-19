@interface ABSPublicABCNCompatibility
+ (BOOL)overwritePublicABPerson:(void *)a3 withContact:(id)a4;
+ (BOOL)updateNewPublicABPerson:(void *)a3 withSavedContact:(id)a4 inAddressBook:(void *)a5;
+ (id)contactFromPublicABPerson:(void *)a3 keysToFetch:(id)a4 mutable:(BOOL)a5;
+ (id)contactPropertyKeyFromPublicABPropertyID:(int)a3;
+ (id)createAddressBookForConversion;
+ (id)labeledValueFromPublicMultiValueIdentifier:(int)a3 contact:(id)a4 key:(id)a5 contactStore:(id)a6;
+ (int)publicABPropertyIDFromContactPropertyKey:(id)a3;
+ (void)publicABPersonFromContact:(id)a3 contactStore:(id)a4 publicAddressBook:(const void *)a5;
@end

@implementation ABSPublicABCNCompatibility

+ (BOOL)updateNewPublicABPerson:(void *)a3 withSavedContact:(id)a4 inAddressBook:(void *)a5
{
  v7 = a4;
  v8 = [v7 hasBeenPersisted];
  if (v8)
  {
    v9 = a3;
    [v9 replaceRecordStorageWithCNObject:v7];
    if (ABAddressBookGetAuthorizationStatus() == kABAuthorizationStatusAuthorized)
    {
      v10 = a5;
      v11 = [v10 contacts];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __85__ABSPublicABCNCompatibility_updateNewPublicABPerson_withSavedContact_inAddressBook___block_invoke;
      v15[3] = &unk_278A04E08;
      v12 = v9;
      v16 = v12;
      v13 = [v11 cnImplFetched:v7 creationBlock:v15];

      [v12 setAddressBook:v10];
    }
  }

  return v8;
}

+ (BOOL)overwritePublicABPerson:(void *)a3 withContact:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 keyVector];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__ABSPublicABCNCompatibility_overwritePublicABPerson_withContact___block_invoke;
  v11[3] = &unk_278A048A0;
  v12 = v6;
  v13 = v5;
  v8 = v5;
  v9 = v6;
  [v7 enumeratePropertiesUsingBlock:v11];

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

+ (id)contactFromPublicABPerson:(void *)a3 keysToFetch:(id)a4 mutable:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  if (([v7 completeCNImplIfNeededWithKeysToFetch:v8] & 1) == 0)
  {
    NSLog(&cfstr_ErrorWeCanTCon.isa);
  }

  v9 = [v7 cnImpl];
  v10 = [v9 copyWithPropertyKeys:v8];

  if (v5)
  {
    v11 = [v10 mutableCopy];

    v10 = v11;
  }

  return v10;
}

+ (id)contactPropertyKeyFromPublicABPropertyID:(int)a3
{
  v3 = *&a3;
  v4 = [MEMORY[0x277CBDA20] contactPropertiesByABSPropertyID];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 key];

  return v7;
}

+ (int)publicABPropertyIDFromContactPropertyKey:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBDA20] contactPropertiesByKey];
  v5 = [v4 objectForKeyedSubscript:v3];

  v8 = -1;
  if (([v5 absPropertyID:&v8] & 1) == 0)
  {
    NSLog(&cfstr_UnableToConver.isa, v3);
  }

  v6 = v8;

  return v6;
}

+ (void)publicABPersonFromContact:(id)a3 contactStore:(id)a4 publicAddressBook:(const void *)a5
{
  v8 = a3;
  v9 = a4;
  if (a5 && *a5)
  {
    v10 = *a5;
  }

  else
  {
    v11 = [a1 createAddressBookForConversion];
    v10 = v11;
    if (a5)
    {
      v10 = v11;
      *a5 = v10;
    }
  }

  if (![v8 hasBeenPersisted] || (objc_msgSend(v8, "isUnified") & 1) != 0 || ABAddressBookGetAuthorizationStatus() != kABAuthorizationStatusAuthorized || (objc_msgSend(v10, "personWithRecordID:", objc_msgSend(v8, "iOSLegacyIdentifier")), (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v13 = [ABSPerson alloc];
    v14 = [v8 mutableCopy];
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

+ (id)labeledValueFromPublicMultiValueIdentifier:(int)a3 contact:(id)a4 key:(id)a5 contactStore:(id)a6
{
  v8 = MEMORY[0x277CBDA20];
  v9 = a5;
  v10 = a4;
  v11 = [v8 contactPropertiesByKey];
  v12 = [v11 objectForKeyedSubscript:v9];

  v13 = [v12 CNValueForContact:v10];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __98__ABSPublicABCNCompatibility_labeledValueFromPublicMultiValueIdentifier_contact_key_contactStore___block_invoke;
  v17[3] = &__block_descriptor_36_e31_B32__0__CNLabeledValue_8Q16_B24l;
  v18 = a3;
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