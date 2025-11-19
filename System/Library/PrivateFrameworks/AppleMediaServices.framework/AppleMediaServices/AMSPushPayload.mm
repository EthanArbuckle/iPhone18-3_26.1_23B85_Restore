@interface AMSPushPayload
+ (id)actionTypeFromPayload:(id)a3;
- (ACAccount)account;
- (ACAccount)iCloudAccount;
- (ACAccountType)accountType;
- (AMSPushPayload)initWithPayload:(id)a3;
- (BOOL)isAccountTypeActive;
- (NSDictionary)aps;
- (NSDictionary)flags;
- (NSNumber)accountIdentifier;
- (NSString)URLString;
- (NSString)actionType;
- (NSString)clientIdentifier;
- (id)objectForKeyedSubscript:(id)a3;
- (int64_t)alertType;
- (int64_t)priority;
@end

@implementation AMSPushPayload

- (AMSPushPayload)initWithPayload:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v34.receiver = self;
  v34.super_class = AMSPushPayload;
  v6 = [(AMSPushPayload *)&v34 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_payload, a3);
    v8 = dispatch_queue_create("com.apple.AppleMediaServices.notification", 0);
    internalQueue = v7->_internalQueue;
    v7->_internalQueue = v8;

    v10 = AMSGenerateLogCorrelationKey();
    logKey = v7->_logKey;
    v7->_logKey = v10;

    v12 = [v5 objectForKeyedSubscript:@"10"];
    objc_opt_class();
    v13 = 0;
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    v14 = [v5 objectForKeyedSubscript:@"aps"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = 0;
LABEL_21:

LABEL_22:
      goto LABEL_23;
    }

    v15 = v14;

    if (!v15 || ![v13 containsString:@"gzip"])
    {
      goto LABEL_22;
    }

    v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v15 options:0];
    v16 = [v14 ams_decompressedData];
    if (!v16)
    {
LABEL_20:

      goto LABEL_21;
    }

    v33 = 0;
    v17 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v16 options:0 error:&v33];
    v18 = v33;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v17;

      v20 = v19 == 0;
      if (!v18 && v19)
      {
LABEL_19:
        v27 = [v5 mutableCopy];
        [v27 setObject:v19 forKeyedSubscript:@"aps"];
        v28 = [v27 copy];
        payload = v7->_payload;
        v7->_payload = v28;

        goto LABEL_20;
      }
    }

    else
    {

      v19 = 0;
      v20 = 1;
    }

    v31 = v20;
    v32 = v18;
    v21 = +[AMSLogConfig sharedConfig];
    if (!v21)
    {
      v21 = +[AMSLogConfig sharedConfig];
    }

    v22 = [v21 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = v19;
      v24 = objc_opt_class();
      v25 = AMSLogKey();
      *buf = 138543874;
      v36 = v24;
      v19 = v23;
      v37 = 2114;
      v38 = v25;
      v26 = v25;
      v39 = 2114;
      v40 = v32;
      _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to deserialize APS. %{public}@", buf, 0x20u);
    }

    if (v31)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_23:

  return v7;
}

- (ACAccount)account
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__59;
  v10 = __Block_byref_object_dispose__59;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25__AMSPushPayload_account__block_invoke;
  v5[3] = &unk_1E73B82D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = [v7[5] copy];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __25__AMSPushPayload_account__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  if (v3)
  {
    v4 = *(*(a1 + 40) + 8);
    *(v4 + 40) = v3;
  }

  else
  {
    v5 = [v2 accountIdentifier];
    if (v5)
    {
      v12 = v5;
      v6 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
      v7 = [v6 ams_iTunesAccountWithDSID:v12];
      v8 = [v7 copy];
      v9 = *(a1 + 32);
      v10 = *(v9 + 8);
      *(v9 + 8) = v8;

      objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 8));
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

- (ACAccount)iCloudAccount
{
  v3 = [(AMSPushPayload *)self accountType];
  v4 = [v3 identifier];
  v5 = *MEMORY[0x1E6959930];

  if (v4 == v5)
  {
    v12 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    v7 = [v6 ams_activeiCloudAccount];

    v8 = [v7 ams_DSID];
    v9 = [(AMSPushPayload *)self account];
    v10 = [v9 ams_DSID];
    v11 = [v8 isEqual:v10];

    if (v11)
    {
      v12 = v7;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (NSNumber)accountIdentifier
{
  v2 = [(AMSPushPayload *)self payload];
  v3 = [v2 objectForKeyedSubscript:@"0"];

  if (objc_opt_respondsToSelector())
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v3, "longLongValue")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (ACAccountType)accountType
{
  v3 = objc_alloc(MEMORY[0x1E6959A50]);
  v4 = [v3 initWithIdentifier:*MEMORY[0x1E6959930] description:&stru_1F071BA78];
  v5 = [(AMSPushPayload *)self payload];
  v6 = [v5 objectForKeyedSubscript:@"12"];
  v7 = [v6 integerValue];

  if (v7 == 1)
  {
    v8 = objc_alloc(MEMORY[0x1E6959A50]);
    v9 = [v8 initWithIdentifier:*MEMORY[0x1E69597F8] description:&stru_1F071BA78];

    v4 = v9;
  }

  return v4;
}

- (NSString)actionType
{
  v3 = objc_opt_class();
  v4 = [(AMSPushPayload *)self payload];
  v5 = [v3 actionTypeFromPayload:v4];

  return v5;
}

- (int64_t)alertType
{
  v3 = [(AMSPushPayload *)self payload];
  v4 = [v3 objectForKeyedSubscript:@"7"];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = [(AMSPushPayload *)self payload];
  v7 = [v6 objectForKeyedSubscript:@"7"];
  v8 = [v7 integerValue];

  if (v8)
  {
    return 2 * (v8 == 1);
  }

  else
  {
    return 1;
  }
}

- (NSDictionary)aps
{
  v2 = [(AMSPushPayload *)self payload];
  v3 = [v2 objectForKeyedSubscript:@"aps"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)clientIdentifier
{
  v2 = [(AMSPushPayload *)self payload];
  v3 = [v2 objectForKeyedSubscript:@"2"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDictionary)flags
{
  v2 = [(AMSPushPayload *)self payload];
  v3 = [v2 objectForKeyedSubscript:@"20"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isAccountTypeActive
{
  v3 = [(AMSPushPayload *)self accountType];
  v4 = [v3 identifier];
  v5 = v4;
  if (v4 == *MEMORY[0x1E6959930])
  {
    v6 = [(AMSPushPayload *)self account];
    v7 = [v6 isActive];

    if (v7)
    {
      return 1;
    }
  }

  else
  {
  }

  v9 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v10 = [v9 ams_activeiCloudAccount];

  v11 = [v10 ams_DSID];
  v12 = [(AMSPushPayload *)self account];
  v13 = [v12 ams_DSID];
  v14 = [v11 isEqual:v13];

  return v14;
}

- (int64_t)priority
{
  v2 = [(AMSPushPayload *)self payload];
  v3 = [v2 objectForKeyedSubscript:@"11"];

  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)URLString
{
  v2 = [(AMSPushPayload *)self payload];
  v3 = [v2 objectForKeyedSubscript:@"3"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)objectForKeyedSubscript:(id)a3
{
  v4 = a3;
  v5 = [(AMSPushPayload *)self payload];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

+ (id)actionTypeFromPayload:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a3 objectForKeyedSubscript:@"1"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = &unk_1F07799B8;
  if (v5)
  {
    v6 = v5;
  }

  v7 = [v3 stringWithFormat:@"%@", v6];

  return v7;
}

@end