@interface CNPrivateAccessEntry
+ (id)log;
- (BOOL)isEqual:(id)a3;
- (BOOL)isExpired;
- (BOOL)isForClientWithBundleIdentifier:(id)a3;
- (CNPrivateAccessEntry)initWithBundleIdentifier:(id)a3 privateAccessTipDismissedByUser:(BOOL)a4;
- (CNPrivateAccessEntry)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setLastAccessTimeToNow;
@end

@implementation CNPrivateAccessEntry

- (BOOL)isExpired
{
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 timeProvider];
  [v4 timestamp];
  LOBYTE(self) = v5 - self->_lastAccessTimestamp > 2592000.0;

  return self;
}

- (void)setLastAccessTimeToNow
{
  v5 = [MEMORY[0x1E69966E8] currentEnvironment];
  v3 = [v5 timeProvider];
  [v3 timestamp];
  self->_lastAccessTimestamp = v4;
}

- (BOOL)isForClientWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CNPrivateAccessEntry *)self bundleIdentifier];
  v6 = [v5 isEqualToString:v4];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = v4;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (v7)
    {
      v8 = [(CNPrivateAccessEntry *)self bundleIdentifier];
      v9 = [(CNPrivateAccessEntry *)v7 bundleIdentifier];
      v10 = [v8 isEqualToString:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v2 = [(CNPrivateAccessEntry *)self bundleIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (CNPrivateAccessEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CNPrivateAccessEntry;
  v5 = [(CNPrivateAccessEntry *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"kPrivateAccessEntryBundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    [v4 decodeDoubleForKey:@"kPrivateAccessEntryTimeStamp"];
    v5->_lastAccessTimestamp = v8;
    v5->_isPrivateAccessTipDismissedByUser = [v4 decodeBoolForKey:@"kPrivateAccessEntryPrivateAccessTipDismissedByUser"];
    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(CNPrivateAccessEntry *)self bundleIdentifier];
  [v5 encodeObject:v4 forKey:@"kPrivateAccessEntryBundleIdentifier"];

  [(CNPrivateAccessEntry *)self lastAccessTimestamp];
  [v5 encodeDouble:@"kPrivateAccessEntryTimeStamp" forKey:?];
  [v5 encodeBool:-[CNPrivateAccessEntry isPrivateAccessTipDismissedByUser](self forKey:{"isPrivateAccessTipDismissedByUser"), @"kPrivateAccessEntryPrivateAccessTipDismissedByUser"}];
}

- (CNPrivateAccessEntry)initWithBundleIdentifier:(id)a3 privateAccessTipDismissedByUser:(BOOL)a4
{
  v7 = a3;
  v15.receiver = self;
  v15.super_class = CNPrivateAccessEntry;
  v8 = [(CNPrivateAccessEntry *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_bundleIdentifier, a3);
    v10 = [MEMORY[0x1E69966E8] currentEnvironment];
    v11 = [v10 timeProvider];
    [v11 timestamp];
    v9->_lastAccessTimestamp = v12;

    v9->_isPrivateAccessTipDismissedByUser = a4;
    v13 = v9;
  }

  return v9;
}

+ (id)log
{
  if (log_cn_once_token_1_22206 != -1)
  {
    dispatch_once(&log_cn_once_token_1_22206, &__block_literal_global_22207);
  }

  v3 = log_cn_once_object_1_22208;

  return v3;
}

uint64_t __27__CNPrivateAccessEntry_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "PrivateAccess");
  v1 = log_cn_once_object_1_22208;
  log_cn_once_object_1_22208 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end