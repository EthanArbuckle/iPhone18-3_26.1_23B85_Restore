@interface INUIExtensionRequestInfo
- (INUIExtensionRequestInfo)initWithCoder:(id)a3;
- (INUIExtensionRequestInfo)initWithInteraction:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INUIExtensionRequestInfo

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(INUIExtensionRequestInfo *)self interaction];
  v7 = [v6 copyWithZone:a3];
  v8 = [v5 initWithInteraction:v7];

  [v8 setRequiresUserConsent:{-[INUIExtensionRequestInfo requiresUserConsent](self, "requiresUserConsent")}];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(INUIExtensionRequestInfo *)self interaction];
  [v5 encodeObject:v4 forKey:@"interaction"];

  [v5 encodeBool:-[INUIExtensionRequestInfo requiresUserConsent](self forKey:{"requiresUserConsent"), @"requiresUserConsent"}];
}

- (INUIExtensionRequestInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"interaction"];
  v6 = [(INUIExtensionRequestInfo *)self initWithInteraction:v5];

  if (v6)
  {
    -[INUIExtensionRequestInfo setRequiresUserConsent:](v6, "setRequiresUserConsent:", [v4 decodeBoolForKey:@"requiresUserConsent"]);
  }

  return v6;
}

- (INUIExtensionRequestInfo)initWithInteraction:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = INUIExtensionRequestInfo;
  v6 = [(INUIExtensionRequestInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_interaction, a3);
    v7->_requiresUserConsent = 1;
  }

  return v7;
}

@end