@interface UNNotificationConnectionDetails
- (BOOL)isEqual:(id)equal;
- (UNNotificationConnectionDetails)initWithAuditToken:(id)token bundleIdentifier:(id)identifier internalTool:(BOOL)tool;
- (UNNotificationConnectionDetails)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNNotificationConnectionDetails

- (UNNotificationConnectionDetails)initWithAuditToken:(id)token bundleIdentifier:(id)identifier internalTool:(BOOL)tool
{
  tokenCopy = token;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = UNNotificationConnectionDetails;
  v10 = [(UNNotificationConnectionDetails *)&v16 init];
  if (v10)
  {
    v11 = [tokenCopy copy];
    auditToken = v10->_auditToken;
    v10->_auditToken = v11;

    v13 = [identifierCopy copy];
    bundleIdentifier = v10->_bundleIdentifier;
    v10->_bundleIdentifier = v13;

    v10->_internalTool = tool;
  }

  return v10;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  auditToken = [(UNNotificationConnectionDetails *)self auditToken];
  v5 = [builder appendObject:auditToken];

  bundleIdentifier = [(UNNotificationConnectionDetails *)self bundleIdentifier];
  v7 = [builder appendString:bundleIdentifier];

  v8 = [builder appendBool:{-[UNNotificationConnectionDetails isInternalTool](self, "isInternalTool")}];
  v9 = [builder hash];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  v6 = equalCopy;
  auditToken = [(UNNotificationConnectionDetails *)self auditToken];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __43__UNNotificationConnectionDetails_isEqual___block_invoke;
  v21[3] = &unk_1E7CFFAE0;
  v8 = v6;
  v22 = v8;
  v9 = [v5 appendObject:auditToken counterpart:v21];

  bundleIdentifier = [(UNNotificationConnectionDetails *)self bundleIdentifier];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __43__UNNotificationConnectionDetails_isEqual___block_invoke_2;
  v19[3] = &unk_1E7CFFB08;
  v11 = v8;
  v20 = v11;
  v12 = [v5 appendString:bundleIdentifier counterpart:v19];

  isInternalTool = [(UNNotificationConnectionDetails *)self isInternalTool];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __43__UNNotificationConnectionDetails_isEqual___block_invoke_3;
  v17[3] = &unk_1E7CFFB30;
  v18 = v11;
  v14 = v11;
  v15 = [v5 appendBool:isInternalTool counterpart:v17];
  LOBYTE(isInternalTool) = [v5 isEqual];

  return isInternalTool;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  auditToken = [(UNNotificationConnectionDetails *)self auditToken];
  [coderCopy encodeObject:auditToken forKey:@"auditToken"];

  bundleIdentifier = [(UNNotificationConnectionDetails *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  [coderCopy encodeBool:-[UNNotificationConnectionDetails isInternalTool](self forKey:{"isInternalTool"), @"internalTool"}];
}

- (UNNotificationConnectionDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"auditToken"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v7 = [coderCopy decodeBoolForKey:@"internalTool"];

  v8 = [(UNNotificationConnectionDetails *)self initWithAuditToken:v5 bundleIdentifier:v6 internalTool:v7];
  return v8;
}

@end