@interface AMSFamilyMember
- (AMSFamilyMember)initWithDictionaryRepresentation:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation AMSFamilyMember

- (AMSFamilyMember)initWithDictionaryRepresentation:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"ITunesPreferredDsid"];
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
        v8 = [v4 objectForKeyedSubscript:@"askToBuy"];
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
        v13 = [v4 objectForKeyedSubscript:@"firstName"];
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

        v16 = [v4 objectForKeyedSubscript:@"ICloudDsid"];
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

        v19 = [v4 objectForKeyedSubscript:@"accountName"];
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
        v22 = [v4 objectForKeyedSubscript:@"ITunesPreferredAccountName"];
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

        v25 = [v4 objectForKeyedSubscript:@"lastName"];
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

        v28 = [v4 objectForKeyedSubscript:@"sharingPurchases"];
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
      v12 = self;
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

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v33 = v4;
    _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "AMSFamilyMember: Received an invalid server response for AMSFamilyMember. serverResponse = %@", buf, 0xCu);
  }

  v6 = 0;
  v12 = 0;
LABEL_33:

  return v12;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSFamilyMember isAskToBuyEnabled](self, "isAskToBuyEnabled")}];
  [v3 setObject:v4 forKeyedSubscript:@"askToBuy"];

  v5 = [(AMSFamilyMember *)self iTunesDSID];
  [v3 setObject:v5 forKeyedSubscript:@"ITunesPreferredDsid"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSFamilyMember isSharingPurchases](self, "isSharingPurchases")}];
  [v3 setObject:v6 forKeyedSubscript:@"sharingPurchases"];

  v7 = [(AMSFamilyMember *)self firstName];
  [v3 ams_setNullableObject:v7 forKey:@"firstName"];

  v8 = [(AMSFamilyMember *)self iCloudDSID];
  [v3 ams_setNullableObject:v8 forKey:@"ICloudDsid"];

  v9 = [(AMSFamilyMember *)self iCloudUsername];
  [v3 ams_setNullableObject:v9 forKey:@"accountName"];

  v10 = [(AMSFamilyMember *)self iTunesUsername];
  [v3 ams_setNullableObject:v10 forKey:@"ITunesPreferredAccountName"];

  v11 = [(AMSFamilyMember *)self lastName];
  [v3 ams_setNullableObject:v11 forKey:@"lastName"];

  v12 = [v3 copy];

  return v12;
}

- (id)description
{
  v16[9] = *MEMORY[0x1E69E9840];
  v15[0] = @"firstName";
  v3 = [(AMSFamilyMember *)self firstName];
  v16[0] = v3;
  v15[1] = @"iCloudDSID";
  v4 = [(AMSFamilyMember *)self iCloudDSID];
  v16[1] = v4;
  v15[2] = @"iCloudUsername";
  v5 = [(AMSFamilyMember *)self iCloudUsername];
  v16[2] = v5;
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
  v7 = [(AMSFamilyMember *)self iTunesDSID];
  v16[4] = v7;
  v15[5] = @"iTunesUsername";
  v8 = [(AMSFamilyMember *)self iTunesUsername];
  v16[5] = v8;
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
  v11 = [(AMSFamilyMember *)self lastName];
  v16[8] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:9];
  v13 = [self ams_generateDescriptionWithSubObjects:v12];

  return v13;
}

@end