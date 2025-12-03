@interface CNPrivateAccessEntry
+ (id)log;
- (BOOL)isEqual:(id)equal;
- (BOOL)isExpired;
- (BOOL)isForClientWithBundleIdentifier:(id)identifier;
- (CNPrivateAccessEntry)initWithBundleIdentifier:(id)identifier privateAccessTipDismissedByUser:(BOOL)user;
- (CNPrivateAccessEntry)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setLastAccessTimeToNow;
@end

@implementation CNPrivateAccessEntry

- (BOOL)isExpired
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  timeProvider = [currentEnvironment timeProvider];
  [timeProvider timestamp];
  LOBYTE(self) = v5 - self->_lastAccessTimestamp > 2592000.0;

  return self;
}

- (void)setLastAccessTimeToNow
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  timeProvider = [currentEnvironment timeProvider];
  [timeProvider timestamp];
  self->_lastAccessTimestamp = v4;
}

- (BOOL)isForClientWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  bundleIdentifier = [(CNPrivateAccessEntry *)self bundleIdentifier];
  v6 = [bundleIdentifier isEqualToString:identifierCopy];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = equalCopy;
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
      bundleIdentifier = [(CNPrivateAccessEntry *)self bundleIdentifier];
      bundleIdentifier2 = [(CNPrivateAccessEntry *)v7 bundleIdentifier];
      v10 = [bundleIdentifier isEqualToString:bundleIdentifier2];
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
  bundleIdentifier = [(CNPrivateAccessEntry *)self bundleIdentifier];
  v3 = [bundleIdentifier hash];

  return v3;
}

- (CNPrivateAccessEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CNPrivateAccessEntry;
  v5 = [(CNPrivateAccessEntry *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"kPrivateAccessEntryBundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    [coderCopy decodeDoubleForKey:@"kPrivateAccessEntryTimeStamp"];
    v5->_lastAccessTimestamp = v8;
    v5->_isPrivateAccessTipDismissedByUser = [coderCopy decodeBoolForKey:@"kPrivateAccessEntryPrivateAccessTipDismissedByUser"];
    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleIdentifier = [(CNPrivateAccessEntry *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"kPrivateAccessEntryBundleIdentifier"];

  [(CNPrivateAccessEntry *)self lastAccessTimestamp];
  [coderCopy encodeDouble:@"kPrivateAccessEntryTimeStamp" forKey:?];
  [coderCopy encodeBool:-[CNPrivateAccessEntry isPrivateAccessTipDismissedByUser](self forKey:{"isPrivateAccessTipDismissedByUser"), @"kPrivateAccessEntryPrivateAccessTipDismissedByUser"}];
}

- (CNPrivateAccessEntry)initWithBundleIdentifier:(id)identifier privateAccessTipDismissedByUser:(BOOL)user
{
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = CNPrivateAccessEntry;
  v8 = [(CNPrivateAccessEntry *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_bundleIdentifier, identifier);
    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    timeProvider = [currentEnvironment timeProvider];
    [timeProvider timestamp];
    v9->_lastAccessTimestamp = v12;

    v9->_isPrivateAccessTipDismissedByUser = user;
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