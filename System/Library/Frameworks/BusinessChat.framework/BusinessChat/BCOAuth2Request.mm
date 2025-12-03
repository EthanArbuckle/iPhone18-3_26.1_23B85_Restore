@interface BCOAuth2Request
- (id)_initWithDictionary:(id)dictionary URLProvider:(id)provider;
- (id)debugDescription;
@end

@implementation BCOAuth2Request

- (id)_initWithDictionary:(id)dictionary URLProvider:(id)provider
{
  dictionaryCopy = dictionary;
  providerCopy = provider;
  v8 = [dictionaryCopy objectForKeyedSubscript:@"businessIdentifier"];
  null = [MEMORY[0x277CBEB68] null];
  v10 = null;
  if (v8 == null)
  {
  }

  else
  {
    v11 = [dictionaryCopy objectForKeyedSubscript:@"businessIdentifier"];

    if (v11)
    {
      v16.receiver = self;
      v16.super_class = BCOAuth2Request;
      v12 = [(BCOAuth2Request *)&v16 init];
      p_isa = &v12->super.isa;
      if (v12)
      {
        objc_storeStrong(&v12->_businessIdentifier, v11);
        objc_storeStrong(p_isa + 2, provider);
      }

      self = p_isa;
      selfCopy = self;
      goto LABEL_10;
    }
  }

  v11 = LogCategory_Daemon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_236EA0000, v11, OS_LOG_TYPE_ERROR, "Unable to create BCAuthenticationRequest: missing 'business identifier' in payload", buf, 2u);
  }

  selfCopy = 0;
LABEL_10:

  return selfCopy;
}

- (id)debugDescription
{
  selfCopy = self;
  if (self)
  {
    v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
    oauth2 = [selfCopy oauth2];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v3 appendObject:v6 withName:@"Request Type"];

    businessIdentifier = [selfCopy businessIdentifier];
    v9 = [v3 appendObject:businessIdentifier withName:@"BusinessIdentifer"];

    selfCopy = [v3 build];
  }

  return selfCopy;
}

@end