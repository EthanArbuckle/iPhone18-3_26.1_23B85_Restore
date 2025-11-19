@interface BCOAuth2Request
- (id)_initWithDictionary:(id)a3 URLProvider:(id)a4;
- (id)debugDescription;
@end

@implementation BCOAuth2Request

- (id)_initWithDictionary:(id)a3 URLProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"businessIdentifier"];
  v9 = [MEMORY[0x277CBEB68] null];
  v10 = v9;
  if (v8 == v9)
  {
  }

  else
  {
    v11 = [v6 objectForKeyedSubscript:@"businessIdentifier"];

    if (v11)
    {
      v16.receiver = self;
      v16.super_class = BCOAuth2Request;
      v12 = [(BCOAuth2Request *)&v16 init];
      p_isa = &v12->super.isa;
      if (v12)
      {
        objc_storeStrong(&v12->_businessIdentifier, v11);
        objc_storeStrong(p_isa + 2, a4);
      }

      self = p_isa;
      v14 = self;
      goto LABEL_10;
    }
  }

  v11 = LogCategory_Daemon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_236EA0000, v11, OS_LOG_TYPE_ERROR, "Unable to create BCAuthenticationRequest: missing 'business identifier' in payload", buf, 2u);
  }

  v14 = 0;
LABEL_10:

  return v14;
}

- (id)debugDescription
{
  v2 = self;
  if (self)
  {
    v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
    v4 = [v2 oauth2];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v3 appendObject:v6 withName:@"Request Type"];

    v8 = [v2 businessIdentifier];
    v9 = [v3 appendObject:v8 withName:@"BusinessIdentifer"];

    v2 = [v3 build];
  }

  return v2;
}

@end