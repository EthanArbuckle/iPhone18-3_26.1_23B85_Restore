@interface ASDRepairOptions
- (ASDRepairOptions)initWithBundleID:(id)a3;
- (ASDRepairOptions)initWithBundleID:(id)a3 accountIdentifier:(id)a4 claimStyle:(int64_t)a5;
- (ASDRepairOptions)initWithBundlePath:(id)a3;
- (ASDRepairOptions)initWithCoder:(id)a3;
- (id)copyUserInfoDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDRepairOptions

- (ASDRepairOptions)initWithBundleID:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ASDRepairOptions;
  v6 = [(ASDRepairOptions *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleID, a3);
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_INFO, "(RepairService) Created repair options with bundleID: %@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

- (ASDRepairOptions)initWithBundlePath:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ASDRepairOptions;
  v6 = [(ASDRepairOptions *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundlePath, a3);
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_INFO, "(RepairService) Created repair options with path: %@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

- (ASDRepairOptions)initWithBundleID:(id)a3 accountIdentifier:(id)a4 claimStyle:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = ASDRepairOptions;
  v11 = [(ASDRepairOptions *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_accountDSID, a4);
    objc_storeStrong(&v12->_bundleID, a3);
    v12->_claimStyle = a5;
  }

  return v12;
}

- (id)copyUserInfoDictionary
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [a1 bundleID];
  [v2 setObject:v3 forKeyedSubscript:@"bundleID"];

  v4 = [a1 bundlePath];
  [v2 setObject:v4 forKeyedSubscript:@"bundlePath"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a1, "exitReason")}];
  [v2 setObject:v5 forKeyedSubscript:@"exitReason"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "isBackground")}];
  [v2 setObject:v6 forKeyedSubscript:@"isBackground"];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a1, "fairplayStatus")}];
  [v2 setObject:v7 forKeyedSubscript:@"status"];

  if (os_variant_has_internal_content())
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "forceRevoke")}];
    [v2 setObject:v8 forKeyedSubscript:@"forceRevoke"];

    v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "forceUpsell")}];
    [v2 setObject:v9 forKeyedSubscript:@"forceUpsell"];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ASDRepairOptions allocWithZone:](ASDRepairOptions init];
  v6 = [(NSNumber *)self->_accountDSID copyWithZone:a3];
  accountDSID = v5->_accountDSID;
  v5->_accountDSID = v6;

  v8 = [(NSString *)self->_bundleID copyWithZone:a3];
  bundleID = v5->_bundleID;
  v5->_bundleID = v8;

  v10 = [(NSString *)self->_bundlePath copyWithZone:a3];
  bundlePath = v5->_bundlePath;
  v5->_bundlePath = v10;

  v5->_claimStyle = self->_claimStyle;
  v5->_exitReason = self->_exitReason;
  v5->_fairplayStatus = self->_fairplayStatus;
  v5->_isBackground = self->_isBackground;
  v12 = [(NSDictionary *)self->_relaunchOptions copyWithZone:a3];
  relaunchOptions = v5->_relaunchOptions;
  v5->_relaunchOptions = v12;

  if (os_variant_has_internal_content())
  {
    v5->_forceRevoke = self->_forceRevoke;
    v5->_forceUpsell = self->_forceUpsell;
  }

  return v5;
}

- (ASDRepairOptions)initWithCoder:(id)a3
{
  v23[9] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = ASDRepairOptions;
  v5 = [(ASDRepairOptions *)&v22 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountDSID"];
    accountDSID = v5->_accountDSID;
    v5->_accountDSID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundlePath"];
    bundlePath = v5->_bundlePath;
    v5->_bundlePath = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"claimStyle"];
    v5->_claimStyle = [v12 integerValue];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"exitReason"];
    v5->_exitReason = [v13 unsignedIntegerValue];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fairplayStatus"];
    v5->_fairplayStatus = [v14 unsignedIntValue];

    v5->_isBackground = [v4 decodeBoolForKey:@"isBackground"];
    v15 = MEMORY[0x1E695DFD8];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v23[2] = objc_opt_class();
    v23[3] = objc_opt_class();
    v23[4] = objc_opt_class();
    v23[5] = objc_opt_class();
    v23[6] = objc_opt_class();
    v23[7] = objc_opt_class();
    v23[8] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:9];
    v17 = [v15 setWithArray:v16];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"relaunchOptions"];
    relaunchOptions = v5->_relaunchOptions;
    v5->_relaunchOptions = v18;

    if (os_variant_has_internal_content())
    {
      v5->_forceRevoke = [v4 decodeBoolForKey:@"forceRevoke"];
      v5->_forceUpsell = [v4 decodeBoolForKey:@"forceUpsell"];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  v4 = [(ASDRepairOptions *)self accountDSID];
  [v11 encodeObject:v4 forKey:@"accountDSID"];

  v5 = [(ASDRepairOptions *)self bundleID];
  [v11 encodeObject:v5 forKey:@"bundleID"];

  v6 = [(ASDRepairOptions *)self bundlePath];
  [v11 encodeObject:v6 forKey:@"bundlePath"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[ASDRepairOptions claimStyle](self, "claimStyle")}];
  [v11 encodeObject:v7 forKey:@"claimStyle"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[ASDRepairOptions exitReason](self, "exitReason")}];
  [v11 encodeObject:v8 forKey:@"exitReason"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ASDRepairOptions fairplayStatus](self, "fairplayStatus")}];
  [v11 encodeObject:v9 forKey:@"fairplayStatus"];

  [v11 encodeBool:-[ASDRepairOptions isBackground](self forKey:{"isBackground"), @"isBackground"}];
  v10 = [(ASDRepairOptions *)self relaunchOptions];
  [v11 encodeObject:v10 forKey:@"relaunchOptions"];

  if (os_variant_has_internal_content())
  {
    [v11 encodeBool:-[ASDRepairOptions forceRevoke](self forKey:{"forceRevoke"), @"forceRevoke"}];
    [v11 encodeBool:-[ASDRepairOptions forceUpsell](self forKey:{"forceUpsell"), @"forceUpsell"}];
  }
}

@end