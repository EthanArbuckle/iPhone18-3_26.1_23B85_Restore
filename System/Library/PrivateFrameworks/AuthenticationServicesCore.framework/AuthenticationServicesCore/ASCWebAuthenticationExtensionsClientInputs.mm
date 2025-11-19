@interface ASCWebAuthenticationExtensionsClientInputs
- (ASCWebAuthenticationExtensionsClientInputs)initWithAppID:(id)a3 isGoogleLegacyAppIDSupport:(BOOL)a4;
- (ASCWebAuthenticationExtensionsClientInputs)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCWebAuthenticationExtensionsClientInputs

- (ASCWebAuthenticationExtensionsClientInputs)initWithAppID:(id)a3 isGoogleLegacyAppIDSupport:(BOOL)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = ASCWebAuthenticationExtensionsClientInputs;
  v8 = [(ASCWebAuthenticationExtensionsClientInputs *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_appID, a3);
    v9->_isGoogleLegacyAppIDSupport = a4;
    v10 = v9;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(ASCWebAuthenticationExtensionsClientInputs *)self appID];
  v6 = [v4 initWithAppID:v5 isGoogleLegacyAppIDSupport:{-[ASCWebAuthenticationExtensionsClientInputs isGoogleLegacyAppIDSupport](self, "isGoogleLegacyAppIDSupport")}];

  return v6;
}

- (ASCWebAuthenticationExtensionsClientInputs)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appID"];
  v6 = [v4 decodeBoolForKey:@"isGoogleLegacyAppIDSupport"];

  v7 = [(ASCWebAuthenticationExtensionsClientInputs *)self initWithAppID:v5 isGoogleLegacyAppIDSupport:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(ASCWebAuthenticationExtensionsClientInputs *)self appID];
  [v5 encodeObject:v4 forKey:@"appID"];

  [v5 encodeBool:-[ASCWebAuthenticationExtensionsClientInputs isGoogleLegacyAppIDSupport](self forKey:{"isGoogleLegacyAppIDSupport"), @"isGoogleLegacyAppIDSupport"}];
}

@end