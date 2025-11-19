@interface UNNotificationConnectionDetails
- (BOOL)isEqual:(id)a3;
- (UNNotificationConnectionDetails)initWithAuditToken:(id)a3 bundleIdentifier:(id)a4 internalTool:(BOOL)a5;
- (UNNotificationConnectionDetails)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNNotificationConnectionDetails

- (UNNotificationConnectionDetails)initWithAuditToken:(id)a3 bundleIdentifier:(id)a4 internalTool:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = UNNotificationConnectionDetails;
  v10 = [(UNNotificationConnectionDetails *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    auditToken = v10->_auditToken;
    v10->_auditToken = v11;

    v13 = [v9 copy];
    bundleIdentifier = v10->_bundleIdentifier;
    v10->_bundleIdentifier = v13;

    v10->_internalTool = a5;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(UNNotificationConnectionDetails *)self auditToken];
  v5 = [v3 appendObject:v4];

  v6 = [(UNNotificationConnectionDetails *)self bundleIdentifier];
  v7 = [v3 appendString:v6];

  v8 = [v3 appendBool:{-[UNNotificationConnectionDetails isInternalTool](self, "isInternalTool")}];
  v9 = [v3 hash];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = v4;
  v7 = [(UNNotificationConnectionDetails *)self auditToken];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __43__UNNotificationConnectionDetails_isEqual___block_invoke;
  v21[3] = &unk_1E7CFFAE0;
  v8 = v6;
  v22 = v8;
  v9 = [v5 appendObject:v7 counterpart:v21];

  v10 = [(UNNotificationConnectionDetails *)self bundleIdentifier];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __43__UNNotificationConnectionDetails_isEqual___block_invoke_2;
  v19[3] = &unk_1E7CFFB08;
  v11 = v8;
  v20 = v11;
  v12 = [v5 appendString:v10 counterpart:v19];

  v13 = [(UNNotificationConnectionDetails *)self isInternalTool];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __43__UNNotificationConnectionDetails_isEqual___block_invoke_3;
  v17[3] = &unk_1E7CFFB30;
  v18 = v11;
  v14 = v11;
  v15 = [v5 appendBool:v13 counterpart:v17];
  LOBYTE(v13) = [v5 isEqual];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(UNNotificationConnectionDetails *)self auditToken];
  [v6 encodeObject:v4 forKey:@"auditToken"];

  v5 = [(UNNotificationConnectionDetails *)self bundleIdentifier];
  [v6 encodeObject:v5 forKey:@"bundleIdentifier"];

  [v6 encodeBool:-[UNNotificationConnectionDetails isInternalTool](self forKey:{"isInternalTool"), @"internalTool"}];
}

- (UNNotificationConnectionDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"auditToken"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v7 = [v4 decodeBoolForKey:@"internalTool"];

  v8 = [(UNNotificationConnectionDetails *)self initWithAuditToken:v5 bundleIdentifier:v6 internalTool:v7];
  return v8;
}

@end