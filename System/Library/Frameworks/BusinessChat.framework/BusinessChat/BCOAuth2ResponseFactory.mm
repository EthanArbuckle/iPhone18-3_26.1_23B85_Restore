@interface BCOAuth2ResponseFactory
+ (id)makeResponseObjectWithDictionary:(id)dictionary version:(int64_t)version;
+ (id)makeResponseObjectWithRedirectURI:(id)i;
@end

@implementation BCOAuth2ResponseFactory

+ (id)makeResponseObjectWithDictionary:(id)dictionary version:(int64_t)version
{
  v39 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  if (version < 2)
  {
    v6 = [BCNativeOAuth2Response alloc];
    v7 = dictionaryCopy;
    if (v6)
    {
      v36.receiver = v6;
      v36.super_class = BCNativeOAuth2Response;
      v6 = objc_msgSendSuper2(&v36, sel_init);
      if (v6)
      {
        v8 = LogCategory_Daemon();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [v7 description];
          *buf = 138412290;
          v38 = v9;
          _os_log_impl(&dword_236EA0000, v8, OS_LOG_TYPE_DEFAULT, "BCAuthenticationResponse: initWithDictionary %@", buf, 0xCu);
        }

        v10 = [v7 objectForKeyedSubscript:@"errors"];
        null = [MEMORY[0x277CBEB68] null];
        if (v10 == null)
        {
          v12 = 0;
        }

        else
        {
          v12 = [v7 objectForKeyedSubscript:@"errors"];
        }

        v13 = [v7 objectForKeyedSubscript:@"token"];
        null2 = [MEMORY[0x277CBEB68] null];
        if (v13 == null2)
        {
          v15 = 0;
        }

        else
        {
          v15 = [v7 objectForKeyedSubscript:@"token"];
        }

        v16 = [v7 objectForKeyedSubscript:@"status"];
        null3 = [MEMORY[0x277CBEB68] null];
        if (v16 == null3)
        {
          v18 = 0;
        }

        else
        {
          v18 = [v7 objectForKeyedSubscript:@"status"];
        }

        if (v12)
        {
          v30 = v18;
          v31 = v15;
          v19 = objc_opt_new();
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v20 = v12;
          v21 = [v20 countByEnumeratingWithState:&v32 objects:buf count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v33;
            do
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v33 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = [[BCError alloc] initWithDictionary:*(*(&v32 + 1) + 8 * i)];
                if (v25)
                {
                  [(NSArray *)v19 addObject:v25];
                }
              }

              v22 = [v20 countByEnumeratingWithState:&v32 objects:buf count:16];
            }

            while (v22);
          }

          errors = v6->_errors;
          v6->_errors = v19;

          v15 = v31;
          v18 = v30;
        }

        token = v6->_token;
        v6->_token = v15;

        v6->_status = NativeAuthStatusFromNSString(v18);
      }
    }
  }

  else
  {
    v6 = [[BCServerSideOAuth2Response alloc] _initWithDictionary:dictionaryCopy];
  }

  v28 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)makeResponseObjectWithRedirectURI:(id)i
{
  iCopy = i;
  v4 = [[BCServerSideOAuth2Response alloc] initWithRedirectURI:iCopy];

  return v4;
}

@end