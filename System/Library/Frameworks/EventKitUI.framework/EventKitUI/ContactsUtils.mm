@interface ContactsUtils
+ (id)contactForAddress:(id)a3 fullName:(id)a4 firstName:(id)a5 lastName:(id)a6;
+ (id)contactForAddress:(id)a3 fullName:(id)a4 firstName:(id)a5 lastName:(id)a6 keysToFetch:(id)a7;
+ (id)contactForContact:(id)a3 keysToFetch:(id)a4;
+ (id)defaultContactKeysToFetch;
@end

@implementation ContactsUtils

+ (id)defaultContactKeysToFetch
{
  if (defaultContactKeysToFetch_onceToken != -1)
  {
    +[ContactsUtils defaultContactKeysToFetch];
  }

  v3 = defaultContactKeysToFetch_keysToFetch;

  return v3;
}

void __42__ContactsUtils_defaultContactKeysToFetch__block_invoke()
{
  v5[3] = *MEMORY[0x1E69E9840];
  v0 = [EKWeakLinkClass() descriptorForRequiredKeys];
  v1 = [EKWeakLinkClass() descriptorForRequiredKeys];
  v5[1] = v1;
  v2 = [EKWeakLinkClass() descriptorForRequiredKeys];
  v5[2] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];
  v4 = defaultContactKeysToFetch_keysToFetch;
  defaultContactKeysToFetch_keysToFetch = v3;
}

+ (id)contactForContact:(id)a3 keysToFetch:(id)a4
{
  v5 = a3;
  v6 = a4;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  v7 = v5;
  v8 = v6;
  CalendarFoundationPerformBlockOnSharedContactStore();
  if ([v13[5] count])
  {
    v9 = [v13[5] objectAtIndexedSubscript:0];
  }

  else
  {
    v9 = v7;
  }

  v10 = v9;

  _Block_object_dispose(&v12, 8);

  return v10;
}

void __47__ContactsUtils_contactForContact_keysToFetch___block_invoke(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = EKWeakLinkClass();
  v5 = [*(a1 + 32) identifier];
  v11[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v7 = [v4 predicateForContactsWithIdentifiers:v6];

  v8 = [v3 unifiedContactsMatchingPredicate:v7 keysToFetch:*(a1 + 40) error:0];

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

+ (id)contactForAddress:(id)a3 fullName:(id)a4 firstName:(id)a5 lastName:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = +[ContactsUtils defaultContactKeysToFetch];
  v15 = [a1 contactForAddress:v13 fullName:v12 firstName:v11 lastName:v10 keysToFetch:v14];

  return v15;
}

+ (id)contactForAddress:(id)a3 fullName:(id)a4 firstName:(id)a5 lastName:(id)a6 keysToFetch:(id)a7
{
  v41[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__4;
  v38 = __Block_byref_object_dispose__4;
  v39 = 0;
  v33 = MEMORY[0x1E69E9820];
  v16 = v11;
  v17 = v15;
  v18 = v12;
  v19 = v13;
  CalendarFoundationPerformBlockOnSharedContactStore();
  if ([v35[5] count])
  {
    v20 = [v35[5] objectAtIndexedSubscript:0];
    goto LABEL_16;
  }

  EKWeakLinkClass();
  v21 = objc_opt_new();
  v20 = v21;
  if (v19 && v14)
  {
    [v21 setGivenName:v19];
    [v20 setFamilyName:v14];
    goto LABEL_11;
  }

  v22 = [MEMORY[0x1E6993018] personNameComponentsFromString:v18];
  v23 = [v22 givenName];
  if (v23)
  {
  }

  else
  {
    v24 = [v22 familyName];
    v25 = v24 == 0;

    if (v25)
    {
      [v20 setNickname:v18];
      goto LABEL_10;
    }
  }

  v26 = [v22 givenName];
  [v20 setGivenName:v26];

  v27 = [v22 familyName];
  [v20 setFamilyName:v27];

LABEL_10:
LABEL_11:
  if (v16)
  {
    if ([v16 cal_isPhoneNumber])
    {
      v28 = EKWeakLinkClass();
      v29 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v16];
      v30 = [v28 labeledValueWithLabel:0 value:v29];
      v41[0] = v30;
      v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
      [v20 setPhoneNumbers:v31];
    }

    else
    {
      v29 = [EKWeakLinkClass() labeledValueWithLabel:0 value:v16];
      v40 = v29;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
      [v20 setEmailAddresses:v30];
    }
  }

LABEL_16:

  _Block_object_dispose(&v34, 8);

  return v20;
}

void __75__ContactsUtils_contactForAddress_fullName_firstName_lastName_keysToFetch___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  if ([*(a1 + 32) cal_isPhoneNumber])
  {
    v3 = EKWeakLinkClass();
    v4 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:*(a1 + 32)];
    v5 = [v3 predicateForContactsMatchingPhoneNumber:v4];

    if (!v5)
    {
      goto LABEL_8;
    }

LABEL_6:
    v6 = [v15 unifiedContactsMatchingPredicate:v5 keysToFetch:*(a1 + 40) error:0];
    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    goto LABEL_8;
  }

  if (!*(a1 + 32))
  {
    v5 = 0;
    goto LABEL_8;
  }

  v5 = [EKWeakLinkClass() predicateForContactsMatchingEmailAddress:*(a1 + 32)];
  if (v5)
  {
    goto LABEL_6;
  }

LABEL_8:
  if (![*(*(*(a1 + 64) + 8) + 40) count] && !*(*(*(a1 + 64) + 8) + 40) && (*(a1 + 48) || *(a1 + 56)))
  {
    v9 = EKWeakLinkClass();
    v10 = *(a1 + 48);
    if (!v10)
    {
      v10 = *(a1 + 56);
    }

    v11 = [v9 predicateForContactsMatchingName:v10];

    v12 = [v15 unifiedContactsMatchingPredicate:v11 keysToFetch:*(a1 + 40) error:0];
    v13 = *(*(a1 + 64) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v5 = v11;
  }
}

@end