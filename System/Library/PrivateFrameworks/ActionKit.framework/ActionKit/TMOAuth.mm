@interface TMOAuth
+ (id)headerForURL:(id)l method:(id)method postParameters:(id)parameters nonce:(id)nonce consumerKey:(id)key consumerSecret:(id)secret token:(id)token tokenSecret:(id)self0;
- (TMOAuth)initWithURL:(id)l method:(id)method postParameters:(id)parameters nonce:(id)nonce consumerKey:(id)key consumerSecret:(id)secret token:(id)token tokenSecret:(id)self0;
@end

@implementation TMOAuth

- (TMOAuth)initWithURL:(id)l method:(id)method postParameters:(id)parameters nonce:(id)nonce consumerKey:(id)key consumerSecret:(id)secret token:(id)token tokenSecret:(id)self0
{
  v77[5] = *MEMORY[0x277D85DE8];
  lCopy = l;
  methodCopy = method;
  parametersCopy = parameters;
  nonceCopy = nonce;
  keyCopy = key;
  secretCopy = secret;
  tokenCopy = token;
  tokenSecretCopy = tokenSecret;
  v74.receiver = self;
  v74.super_class = TMOAuth;
  v24 = [(TMOAuth *)&v74 init];
  if (v24)
  {
    v67 = tokenSecretCopy;
    v69 = secretCopy;
    v25 = keyCopy;
    v26 = objc_alloc(MEMORY[0x277CBEB38]);
    v76[0] = @"oauth_timestamp";
    date = [MEMORY[0x277CBEAA8] date];
    v28 = nonceCopy;
    v29 = MEMORY[0x277CCACA8];
    [date timeIntervalSince1970];
    [v29 stringWithFormat:@"%f", round(v30)];
    v31 = v68 = tokenCopy;
    v76[1] = @"oauth_nonce";
    v76[2] = @"oauth_version";
    v77[2] = @"1.0";
    v77[3] = @"HMAC-SHA1";
    v77[0] = v31;
    v77[1] = v28;
    v62 = v25;
    v63 = v28;
    v76[3] = @"oauth_signature_method";
    v76[4] = @"oauth_consumer_key";
    v77[4] = v25;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:5];
    v33 = [v26 initWithDictionary:v32];

    if (v68 && [v68 length])
    {
      [v33 setObject:v68 forKeyedSubscript:@"oauth_token"];
    }

    query = [lCopy query];
    v35 = type metadata for some(query);

    v66 = lCopy;
    absoluteString = [lCopy absoluteString];
    v37 = [absoluteString componentsSeparatedByString:@"?"];
    v38 = [v37 objectAtIndexedSubscript:0];

    v59 = v38;
    v60 = v35;
    v64 = parametersCopy;
    v65 = methodCopy;
    v39 = generateBaseString(v38, methodCopy, v33, v35, parametersCopy);
    v61 = v24;
    objc_storeStrong(&v24->_baseString, v39);
    v58 = v39;
    v40 = sign(v39, v69, v67);
    [v33 setObject:v40 forKeyedSubscript:@"oauth_signature"];

    array = [MEMORY[0x277CBEB18] array];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v42 = v33;
    v43 = [v42 countByEnumeratingWithState:&v70 objects:v75 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v71;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v71 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v70 + 1) + 8 * i);
          v48 = MEMORY[0x277CCACA8];
          v49 = [v42 objectForKeyedSubscript:v47];
          v50 = TMURLEncode(v49);
          v51 = [v48 stringWithFormat:@"%@=%@", v47, v50, v58, v59, v60];
          [array addObject:v51];
        }

        v44 = [v42 countByEnumeratingWithState:&v70 objects:v75 count:16];
      }

      while (v44);
    }

    v52 = MEMORY[0x277CCACA8];
    v53 = [array componentsJoinedByString:{@", "}];
    v54 = [v52 stringWithFormat:@"OAuth %@", v53];
    v24 = v61;
    headerString = v61->_headerString;
    v61->_headerString = v54;

    methodCopy = v65;
    lCopy = v66;
    nonceCopy = v63;
    parametersCopy = v64;
    keyCopy = v62;
    tokenCopy = v68;
    secretCopy = v69;
    tokenSecretCopy = v67;
  }

  v56 = *MEMORY[0x277D85DE8];
  return v24;
}

+ (id)headerForURL:(id)l method:(id)method postParameters:(id)parameters nonce:(id)nonce consumerKey:(id)key consumerSecret:(id)secret token:(id)token tokenSecret:(id)self0
{
  tokenSecretCopy = tokenSecret;
  tokenCopy = token;
  secretCopy = secret;
  keyCopy = key;
  nonceCopy = nonce;
  parametersCopy = parameters;
  methodCopy = method;
  lCopy = l;
  v24 = [[TMOAuth alloc] initWithURL:lCopy method:methodCopy postParameters:parametersCopy nonce:nonceCopy consumerKey:keyCopy consumerSecret:secretCopy token:tokenCopy tokenSecret:tokenSecretCopy];

  headerString = [(TMOAuth *)v24 headerString];

  return headerString;
}

@end