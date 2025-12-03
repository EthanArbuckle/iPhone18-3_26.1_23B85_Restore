@interface AMSFamilyInfoLookupResult
+ (id)_familyMembersFromDictionaryRepresentation:(id)representation;
- (AMSFamilyInfoLookupResult)initWithDictionaryRepresentation:(id)representation cached:(BOOL)cached;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation AMSFamilyInfoLookupResult

- (AMSFamilyInfoLookupResult)initWithDictionaryRepresentation:(id)representation cached:(BOOL)cached
{
  representationCopy = representation;
  v18.receiver = self;
  v18.super_class = AMSFamilyInfoLookupResult;
  v7 = [(AMSFamilyInfoLookupResult *)&v18 init];
  v8 = v7;
  if (v7)
  {
    v7->_cached = cached;
    v9 = [representationCopy valueForKeyPath:@"family.ICloudHohDsid"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = &unk_1F0779550;
    }

    objc_storeStrong(&v8->_headOfHouseholdICloudDSID, v11);

    v12 = [representationCopy valueForKeyPath:@"family.hohSharingPayment"];
    if (objc_opt_respondsToSelector())
    {
      v13 = [representationCopy valueForKeyPath:@"family.hohSharingPayment"];
      v8->_headOfHouseholdSharingPayment = [v13 BOOLValue];
    }

    else
    {
      v8->_headOfHouseholdSharingPayment = 0;
    }

    v14 = [AMSFamilyInfoLookupResult _familyMembersFromDictionaryRepresentation:representationCopy];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v8->_familyMembers, v16);
  }

  return v8;
}

- (NSDictionary)dictionaryRepresentation
{
  v13[1] = *MEMORY[0x1E69E9840];
  familyMembers = [(AMSFamilyInfoLookupResult *)self familyMembers];
  v4 = [familyMembers ams_mapWithTransform:&__block_literal_global_54];

  v12 = @"family";
  v11[0] = v4;
  v10[0] = @"members";
  v10[1] = @"hohSharingPayment";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSFamilyInfoLookupResult isHeadOfHouseholdSharingPayment](self, "isHeadOfHouseholdSharingPayment")}];
  v11[1] = v5;
  v10[2] = @"ICloudHohDsid";
  headOfHouseholdICloudDSID = [(AMSFamilyInfoLookupResult *)self headOfHouseholdICloudDSID];
  v11[2] = headOfHouseholdICloudDSID;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v13[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  return v8;
}

- (id)description
{
  v11[4] = *MEMORY[0x1E69E9840];
  v10[0] = @"isCached";
  if ([(AMSFamilyInfoLookupResult *)self isCached])
  {
    v3 = @"true";
  }

  else
  {
    v3 = @"false";
  }

  v11[0] = v3;
  v10[1] = @"hohSharingPayment";
  if ([(AMSFamilyInfoLookupResult *)self isHeadOfHouseholdSharingPayment])
  {
    v4 = @"true";
  }

  else
  {
    v4 = @"false";
  }

  v11[1] = v4;
  v10[2] = @"ICloudHohDsid";
  headOfHouseholdICloudDSID = [(AMSFamilyInfoLookupResult *)self headOfHouseholdICloudDSID];
  v11[2] = headOfHouseholdICloudDSID;
  v10[3] = @"familyMembers";
  familyMembers = [(AMSFamilyInfoLookupResult *)self familyMembers];
  v11[3] = familyMembers;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];
  v8 = [self ams_generateDescriptionWithSubObjects:v7];

  return v8;
}

+ (id)_familyMembersFromDictionaryRepresentation:(id)representation
{
  v3 = [representation valueForKeyPath:@"family.members"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 ams_mapWithTransform:&__block_literal_global_40];
  v6 = [v5 ams_filterUsingTest:&__block_literal_global_45_0];

  ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  ams_activeiCloudAccount = [ams_sharedAccountStore ams_activeiCloudAccount];
  ams_DSID = [ams_activeiCloudAccount ams_DSID];

  ams_sharedAccountStore2 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  ams_activeiTunesAccount = [ams_sharedAccountStore2 ams_activeiTunesAccount];
  ams_DSID2 = [ams_activeiTunesAccount ams_DSID];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __72__AMSFamilyInfoLookupResult__familyMembersFromDictionaryRepresentation___block_invoke_3;
  v20[3] = &unk_1E73B7868;
  v13 = ams_DSID;
  v21 = v13;
  v14 = ams_DSID2;
  v22 = v14;
  v15 = [v6 ams_firstObjectPassingTest:v20];
  if (!v15)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __72__AMSFamilyInfoLookupResult__familyMembersFromDictionaryRepresentation___block_invoke_4;
    v18[3] = &unk_1E73B7890;
    v19 = v14;
    v15 = [v6 ams_firstObjectPassingTest:v18];
  }

  [v15 setCurrentSignedInUser:1];
  v16 = [v6 sortedArrayUsingComparator:&__block_literal_global_50];

  return v16;
}

id __72__AMSFamilyInfoLookupResult__familyMembersFromDictionaryRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [[AMSFamilyMember alloc] initWithDictionaryRepresentation:v2];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = [MEMORY[0x1E695DFB0] null];
    }

    v6 = v5;
  }

  else
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  return v6;
}

BOOL __72__AMSFamilyInfoLookupResult__familyMembersFromDictionaryRepresentation___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DFB0];
  v3 = a2;
  v4 = [v2 null];

  return v4 != v3;
}

uint64_t __72__AMSFamilyInfoLookupResult__familyMembersFromDictionaryRepresentation___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v5 = [v3 iCloudDSID];
    if ([v5 isEqualToNumber:*(a1 + 32)] && *(a1 + 40))
    {
      v6 = [v4 iTunesDSID];
      v7 = [v6 isEqualToNumber:*(a1 + 40)];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __72__AMSFamilyInfoLookupResult__familyMembersFromDictionaryRepresentation___block_invoke_4(uint64_t a1, void *a2)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  v3 = [a2 iTunesDSID];
  v4 = [v3 isEqualToNumber:*(a1 + 32)];

  return v4;
}

uint64_t __72__AMSFamilyInfoLookupResult__familyMembersFromDictionaryRepresentation___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 firstName];
  if (v6)
  {
  }

  else
  {
    v7 = [v5 firstName];

    if (!v7)
    {
      goto LABEL_11;
    }
  }

  if (([v4 isCurrentSignedInUser] & 1) != 0 || (objc_msgSend(v5, "firstName"), v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v7 = -1;
  }

  else if (([v5 isCurrentSignedInUser] & 1) != 0 || (objc_msgSend(v4, "firstName"), v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v7 = 1;
  }

  else
  {
    v10 = [v4 firstName];
    v11 = [v5 firstName];
    v7 = [v10 localizedCaseInsensitiveCompare:v11];
  }

LABEL_11:

  return v7;
}

@end