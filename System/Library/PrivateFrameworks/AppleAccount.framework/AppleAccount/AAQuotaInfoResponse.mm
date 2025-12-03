@interface AAQuotaInfoResponse
- (AAQuotaInfoResponse)initWithHTTPResponse:(id)response data:(id)data;
- (BOOL)hasMaxTier;
- (NSString)displayLabel;
- (NSURL)manageStorageURL;
- (void)_initFromResponseDict;
- (void)updateAccount:(id)account completion:(id)completion;
@end

@implementation AAQuotaInfoResponse

- (AAQuotaInfoResponse)initWithHTTPResponse:(id)response data:(id)data
{
  v8.receiver = self;
  v8.super_class = AAQuotaInfoResponse;
  v4 = [(AAResponse *)&v8 initWithHTTPResponse:response data:data];
  v5 = v4;
  if (v4)
  {
    if ([(NSHTTPURLResponse *)v4->super._httpResponse statusCode]== 200)
    {
      [(AAQuotaInfoResponse *)v5 _initFromResponseDict];
    }

    else
    {
      v6 = _AALogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [AAQuotaInfoResponse initWithHTTPResponse:v6 data:?];
      }
    }
  }

  return v5;
}

- (void)_initFromResponseDict
{
  v8 = [(NSDictionary *)self->super._responseDictionary objectForKeyedSubscript:@"storage_data"];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v8 objectForKeyedSubscript:@"quota_info_in_bytes"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&self->_quotaInfo, v3);
      }

      v4 = [v8 objectForKeyedSubscript:@"storage_info_in_bytes"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&self->_storageInfo, v4);
      }
    }
  }

  v5 = [(NSDictionary *)self->super._responseDictionary objectForKeyedSubscript:@"storage_usage_by_media"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_usage, v5);
  }

  v6 = [(NSDictionary *)self->super._responseDictionary objectForKeyedSubscript:@"entry_points"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_endPoints, v6);
  }

  v7 = [(NSDictionary *)self->super._responseDictionary objectForKeyedSubscript:@"storage_meter_label"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_storageMeterLabel, v7);
  }
}

- (NSURL)manageStorageURL
{
  v2 = [(NSDictionary *)self->_endPoints objectForKeyedSubscript:@"quota.manage_storage_url"];
  uRLQueryAllowedCharacterSet = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
  v4 = [v2 stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];

  v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];

  return v5;
}

- (BOOL)hasMaxTier
{
  v2 = [(NSDictionary *)self->super._responseDictionary objectForKeyedSubscript:@"quota_status"];
  v3 = [v2 objectForKeyedSubscript:@"have_max_quota_tier"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (NSString)displayLabel
{
  v2 = [(NSDictionary *)self->_storageMeterLabel objectForKeyedSubscript:@"display_label"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v3 = [v4 localizedStringForKey:@"SERVICE_TYPE_ICLOUD" value:0 table:@"Localizable"];
  }

  return v3;
}

- (void)updateAccount:(id)account completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  completionCopy = completion;
  aa_lastKnownQuota = [accountCopy aa_lastKnownQuota];
  totalStorageInBytes = [(AAQuotaInfoResponse *)self totalStorageInBytes];
  if (totalStorageInBytes && ([aa_lastKnownQuota isEqualToNumber:totalStorageInBytes] & 1) == 0)
  {
    [accountCopy aa_setLastKnownQuota:totalStorageInBytes];
    v10 = _AALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v16 = accountCopy;
      v17 = 2112;
      v18 = aa_lastKnownQuota;
      v19 = 2112;
      v20 = totalStorageInBytes;
      _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "Quota for %@ changed from %@ to %@; updating last known quota", buf, 0x20u);
    }

    accountStore = [accountCopy accountStore];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __48__AAQuotaInfoResponse_updateAccount_completion___block_invoke;
    v13[3] = &unk_1E7C9ABB8;
    v14 = completionCopy;
    [accountStore saveVerifiedAccount:accountCopy withCompletionHandler:v13];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __48__AAQuotaInfoResponse_updateAccount_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Updated account quota information with success: %@, error: %@", &v10, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initWithHTTPResponse:(id *)a1 data:(NSObject *)a2 .cold.1(id *a1, NSObject *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [*a1 statusCode];
  v5 = *a1;
  v7 = 134218242;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_ERROR, "AAQuotaInfoResponse has non-200 status code: %zd for response: %@", &v7, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

@end