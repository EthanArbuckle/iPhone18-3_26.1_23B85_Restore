@interface ASCWebAuthenticationExtensionsClientInputs
- (ASCWebAuthenticationExtensionsClientInputs)initWithAppID:(id)d isGoogleLegacyAppIDSupport:(BOOL)support;
- (ASCWebAuthenticationExtensionsClientInputs)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCWebAuthenticationExtensionsClientInputs

- (ASCWebAuthenticationExtensionsClientInputs)initWithAppID:(id)d isGoogleLegacyAppIDSupport:(BOOL)support
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = ASCWebAuthenticationExtensionsClientInputs;
  v8 = [(ASCWebAuthenticationExtensionsClientInputs *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_appID, d);
    v9->_isGoogleLegacyAppIDSupport = support;
    v10 = v9;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  appID = [(ASCWebAuthenticationExtensionsClientInputs *)self appID];
  v6 = [v4 initWithAppID:appID isGoogleLegacyAppIDSupport:{-[ASCWebAuthenticationExtensionsClientInputs isGoogleLegacyAppIDSupport](self, "isGoogleLegacyAppIDSupport")}];

  return v6;
}

- (ASCWebAuthenticationExtensionsClientInputs)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appID"];
  v6 = [coderCopy decodeBoolForKey:@"isGoogleLegacyAppIDSupport"];

  v7 = [(ASCWebAuthenticationExtensionsClientInputs *)self initWithAppID:v5 isGoogleLegacyAppIDSupport:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  appID = [(ASCWebAuthenticationExtensionsClientInputs *)self appID];
  [coderCopy encodeObject:appID forKey:@"appID"];

  [coderCopy encodeBool:-[ASCWebAuthenticationExtensionsClientInputs isGoogleLegacyAppIDSupport](self forKey:{"isGoogleLegacyAppIDSupport"), @"isGoogleLegacyAppIDSupport"}];
}

@end