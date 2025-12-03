@interface ASDRepairOptions
- (ASDRepairOptions)initWithBundleID:(id)d;
- (ASDRepairOptions)initWithBundleID:(id)d accountIdentifier:(id)identifier claimStyle:(int64_t)style;
- (ASDRepairOptions)initWithBundlePath:(id)path;
- (ASDRepairOptions)initWithCoder:(id)coder;
- (id)copyUserInfoDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDRepairOptions

- (ASDRepairOptions)initWithBundleID:(id)d
{
  v14 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v11.receiver = self;
  v11.super_class = ASDRepairOptions;
  v6 = [(ASDRepairOptions *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleID, d);
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = dCopy;
      _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_INFO, "(RepairService) Created repair options with bundleID: %@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

- (ASDRepairOptions)initWithBundlePath:(id)path
{
  v14 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = ASDRepairOptions;
  v6 = [(ASDRepairOptions *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundlePath, path);
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = pathCopy;
      _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_INFO, "(RepairService) Created repair options with path: %@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

- (ASDRepairOptions)initWithBundleID:(id)d accountIdentifier:(id)identifier claimStyle:(int64_t)style
{
  dCopy = d;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = ASDRepairOptions;
  v11 = [(ASDRepairOptions *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_accountDSID, identifier);
    objc_storeStrong(&v12->_bundleID, d);
    v12->_claimStyle = style;
  }

  return v12;
}

- (id)copyUserInfoDictionary
{
  if (!self)
  {
    return 0;
  }

  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  bundleID = [self bundleID];
  [v2 setObject:bundleID forKeyedSubscript:@"bundleID"];

  bundlePath = [self bundlePath];
  [v2 setObject:bundlePath forKeyedSubscript:@"bundlePath"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(self, "exitReason")}];
  [v2 setObject:v5 forKeyedSubscript:@"exitReason"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isBackground")}];
  [v2 setObject:v6 forKeyedSubscript:@"isBackground"];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(self, "fairplayStatus")}];
  [v2 setObject:v7 forKeyedSubscript:@"status"];

  if (os_variant_has_internal_content())
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "forceRevoke")}];
    [v2 setObject:v8 forKeyedSubscript:@"forceRevoke"];

    v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "forceUpsell")}];
    [v2 setObject:v9 forKeyedSubscript:@"forceUpsell"];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ASDRepairOptions allocWithZone:](ASDRepairOptions init];
  v6 = [(NSNumber *)self->_accountDSID copyWithZone:zone];
  accountDSID = v5->_accountDSID;
  v5->_accountDSID = v6;

  v8 = [(NSString *)self->_bundleID copyWithZone:zone];
  bundleID = v5->_bundleID;
  v5->_bundleID = v8;

  v10 = [(NSString *)self->_bundlePath copyWithZone:zone];
  bundlePath = v5->_bundlePath;
  v5->_bundlePath = v10;

  v5->_claimStyle = self->_claimStyle;
  v5->_exitReason = self->_exitReason;
  v5->_fairplayStatus = self->_fairplayStatus;
  v5->_isBackground = self->_isBackground;
  v12 = [(NSDictionary *)self->_relaunchOptions copyWithZone:zone];
  relaunchOptions = v5->_relaunchOptions;
  v5->_relaunchOptions = v12;

  if (os_variant_has_internal_content())
  {
    v5->_forceRevoke = self->_forceRevoke;
    v5->_forceUpsell = self->_forceUpsell;
  }

  return v5;
}

- (ASDRepairOptions)initWithCoder:(id)coder
{
  v23[9] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = ASDRepairOptions;
  v5 = [(ASDRepairOptions *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountDSID"];
    accountDSID = v5->_accountDSID;
    v5->_accountDSID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundlePath"];
    bundlePath = v5->_bundlePath;
    v5->_bundlePath = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"claimStyle"];
    v5->_claimStyle = [v12 integerValue];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"exitReason"];
    v5->_exitReason = [v13 unsignedIntegerValue];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fairplayStatus"];
    v5->_fairplayStatus = [v14 unsignedIntValue];

    v5->_isBackground = [coderCopy decodeBoolForKey:@"isBackground"];
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
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"relaunchOptions"];
    relaunchOptions = v5->_relaunchOptions;
    v5->_relaunchOptions = v18;

    if (os_variant_has_internal_content())
    {
      v5->_forceRevoke = [coderCopy decodeBoolForKey:@"forceRevoke"];
      v5->_forceUpsell = [coderCopy decodeBoolForKey:@"forceUpsell"];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accountDSID = [(ASDRepairOptions *)self accountDSID];
  [coderCopy encodeObject:accountDSID forKey:@"accountDSID"];

  bundleID = [(ASDRepairOptions *)self bundleID];
  [coderCopy encodeObject:bundleID forKey:@"bundleID"];

  bundlePath = [(ASDRepairOptions *)self bundlePath];
  [coderCopy encodeObject:bundlePath forKey:@"bundlePath"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[ASDRepairOptions claimStyle](self, "claimStyle")}];
  [coderCopy encodeObject:v7 forKey:@"claimStyle"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[ASDRepairOptions exitReason](self, "exitReason")}];
  [coderCopy encodeObject:v8 forKey:@"exitReason"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ASDRepairOptions fairplayStatus](self, "fairplayStatus")}];
  [coderCopy encodeObject:v9 forKey:@"fairplayStatus"];

  [coderCopy encodeBool:-[ASDRepairOptions isBackground](self forKey:{"isBackground"), @"isBackground"}];
  relaunchOptions = [(ASDRepairOptions *)self relaunchOptions];
  [coderCopy encodeObject:relaunchOptions forKey:@"relaunchOptions"];

  if (os_variant_has_internal_content())
  {
    [coderCopy encodeBool:-[ASDRepairOptions forceRevoke](self forKey:{"forceRevoke"), @"forceRevoke"}];
    [coderCopy encodeBool:-[ASDRepairOptions forceUpsell](self forKey:{"forceUpsell"), @"forceUpsell"}];
  }
}

@end