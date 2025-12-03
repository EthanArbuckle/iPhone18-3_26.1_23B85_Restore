@interface INUIExtensionRequestInfo
- (INUIExtensionRequestInfo)initWithCoder:(id)coder;
- (INUIExtensionRequestInfo)initWithInteraction:(id)interaction;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INUIExtensionRequestInfo

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc(objc_opt_class());
  interaction = [(INUIExtensionRequestInfo *)self interaction];
  v7 = [interaction copyWithZone:zone];
  v8 = [v5 initWithInteraction:v7];

  [v8 setRequiresUserConsent:{-[INUIExtensionRequestInfo requiresUserConsent](self, "requiresUserConsent")}];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  interaction = [(INUIExtensionRequestInfo *)self interaction];
  [coderCopy encodeObject:interaction forKey:@"interaction"];

  [coderCopy encodeBool:-[INUIExtensionRequestInfo requiresUserConsent](self forKey:{"requiresUserConsent"), @"requiresUserConsent"}];
}

- (INUIExtensionRequestInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interaction"];
  v6 = [(INUIExtensionRequestInfo *)self initWithInteraction:v5];

  if (v6)
  {
    -[INUIExtensionRequestInfo setRequiresUserConsent:](v6, "setRequiresUserConsent:", [coderCopy decodeBoolForKey:@"requiresUserConsent"]);
  }

  return v6;
}

- (INUIExtensionRequestInfo)initWithInteraction:(id)interaction
{
  interactionCopy = interaction;
  v9.receiver = self;
  v9.super_class = INUIExtensionRequestInfo;
  v6 = [(INUIExtensionRequestInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_interaction, interaction);
    v7->_requiresUserConsent = 1;
  }

  return v7;
}

@end