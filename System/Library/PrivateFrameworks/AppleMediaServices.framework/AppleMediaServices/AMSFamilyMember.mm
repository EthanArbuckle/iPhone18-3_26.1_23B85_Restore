@interface AMSFamilyMember
- (AMSFamilyMember)initWithDictionaryRepresentation:(id)representation;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation AMSFamilyMember

- (AMSFamilyMember)initWithDictionaryRepresentation:(id)representation
{
  v34 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v5 = [representationCopy objectForKeyedSubscript:@"ITunesPreferredDsid"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;

    if (v6)
    {
      v31.receiver = self;
      v31.super_class = AMSFamilyMember;
      v7 = [(AMSFamilyMember *)&v31 init];
      if (v7)
      {
        v8 = [representationCopy objectForKeyedSubscript:@"askToBuy"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
        }

        else
        {
          v9 = 0;
        }

        v7->_askToBuyEnabled = [v9 BOOLValue];
        v13 = [representationCopy objectForKeyedSubscript:@"firstName"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        firstName = v7->_firstName;
        v7->_firstName = v14;

        v16 = [representationCopy objectForKeyedSubscript:@"ICloudDsid"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        iCloudDSID = v7->_iCloudDSID;
        v7->_iCloudDSID = v17;

        v19 = [representationCopy objectForKeyedSubscript:@"accountName"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        iCloudUsername = v7->_iCloudUsername;
        v7->_iCloudUsername = v20;

        objc_storeStrong(&v7->_iTunesDSID, v5);
        v22 = [representationCopy objectForKeyedSubscript:@"ITunesPreferredAccountName"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        iTunesUsername = v7->_iTunesUsername;
        v7->_iTunesUsername = v23;

        v25 = [representationCopy objectForKeyedSubscript:@"lastName"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }

        lastName = v7->_lastName;
        v7->_lastName = v26;

        v28 = [representationCopy objectForKeyedSubscript:@"sharingPurchases"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = v28;
        }

        else
        {
          v29 = 0;
        }

        v7->_sharingPurchases = [v29 BOOLValue];
      }

      self = v7;
      selfCopy = self;
      goto LABEL_33;
    }
  }

  else
  {
  }

  v10 = +[AMSLogConfig sharedConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v33 = representationCopy;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "AMSFamilyMember: Received an invalid server response for AMSFamilyMember. serverResponse = %@", buf, 0xCu);
  }

  v6 = 0;
  selfCopy = 0;
LABEL_33:

  return selfCopy;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSFamilyMember isAskToBuyEnabled](self, "isAskToBuyEnabled")}];
  [v3 setObject:v4 forKeyedSubscript:@"askToBuy"];

  iTunesDSID = [(AMSFamilyMember *)self iTunesDSID];
  [v3 setObject:iTunesDSID forKeyedSubscript:@"ITunesPreferredDsid"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSFamilyMember isSharingPurchases](self, "isSharingPurchases")}];
  [v3 setObject:v6 forKeyedSubscript:@"sharingPurchases"];

  firstName = [(AMSFamilyMember *)self firstName];
  [v3 ams_setNullableObject:firstName forKey:@"firstName"];

  iCloudDSID = [(AMSFamilyMember *)self iCloudDSID];
  [v3 ams_setNullableObject:iCloudDSID forKey:@"ICloudDsid"];

  iCloudUsername = [(AMSFamilyMember *)self iCloudUsername];
  [v3 ams_setNullableObject:iCloudUsername forKey:@"accountName"];

  iTunesUsername = [(AMSFamilyMember *)self iTunesUsername];
  [v3 ams_setNullableObject:iTunesUsername forKey:@"ITunesPreferredAccountName"];

  lastName = [(AMSFamilyMember *)self lastName];
  [v3 ams_setNullableObject:lastName forKey:@"lastName"];

  v12 = [v3 copy];

  return v12;
}

- (id)description
{
  v16[9] = *MEMORY[0x1E69E9840];
  v15[0] = @"firstName";
  firstName = [(AMSFamilyMember *)self firstName];
  v16[0] = firstName;
  v15[1] = @"iCloudDSID";
  iCloudDSID = [(AMSFamilyMember *)self iCloudDSID];
  v16[1] = iCloudDSID;
  v15[2] = @"iCloudUsername";
  iCloudUsername = [(AMSFamilyMember *)self iCloudUsername];
  v16[2] = iCloudUsername;
  v15[3] = @"isCurrentSignedInUser";
  if ([(AMSFamilyMember *)self isCurrentSignedInUser])
  {
    v6 = @"true";
  }

  else
  {
    v6 = @"false";
  }

  v16[3] = v6;
  v15[4] = @"iTunesDSID";
  iTunesDSID = [(AMSFamilyMember *)self iTunesDSID];
  v16[4] = iTunesDSID;
  v15[5] = @"iTunesUsername";
  iTunesUsername = [(AMSFamilyMember *)self iTunesUsername];
  v16[5] = iTunesUsername;
  v15[6] = @"isAskToBuyEnabled";
  if ([(AMSFamilyMember *)self isAskToBuyEnabled])
  {
    v9 = @"true";
  }

  else
  {
    v9 = @"false";
  }

  v16[6] = v9;
  v15[7] = @"isSharingPurchases";
  if ([(AMSFamilyMember *)self isSharingPurchases])
  {
    v10 = @"true";
  }

  else
  {
    v10 = @"false";
  }

  v16[7] = v10;
  v15[8] = @"lastName";
  lastName = [(AMSFamilyMember *)self lastName];
  v16[8] = lastName;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:9];
  v13 = [self ams_generateDescriptionWithSubObjects:v12];

  return v13;
}

@end