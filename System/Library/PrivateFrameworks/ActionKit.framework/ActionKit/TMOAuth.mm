@interface TMOAuth
+ (id)headerForURL:(id)a3 method:(id)a4 postParameters:(id)a5 nonce:(id)a6 consumerKey:(id)a7 consumerSecret:(id)a8 token:(id)a9 tokenSecret:(id)a10;
- (TMOAuth)initWithURL:(id)a3 method:(id)a4 postParameters:(id)a5 nonce:(id)a6 consumerKey:(id)a7 consumerSecret:(id)a8 token:(id)a9 tokenSecret:(id)a10;
@end

@implementation TMOAuth

- (TMOAuth)initWithURL:(id)a3 method:(id)a4 postParameters:(id)a5 nonce:(id)a6 consumerKey:(id)a7 consumerSecret:(id)a8 token:(id)a9 tokenSecret:(id)a10
{
  v77[5] = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v74.receiver = self;
  v74.super_class = TMOAuth;
  v24 = [(TMOAuth *)&v74 init];
  if (v24)
  {
    v67 = v23;
    v69 = v21;
    v25 = v20;
    v26 = objc_alloc(MEMORY[0x277CBEB38]);
    v76[0] = @"oauth_timestamp";
    v27 = [MEMORY[0x277CBEAA8] date];
    v28 = v19;
    v29 = MEMORY[0x277CCACA8];
    [v27 timeIntervalSince1970];
    [v29 stringWithFormat:@"%f", round(v30)];
    v31 = v68 = v22;
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

    v34 = [v16 query];
    v35 = type metadata for some(v34);

    v66 = v16;
    v36 = [v16 absoluteString];
    v37 = [v36 componentsSeparatedByString:@"?"];
    v38 = [v37 objectAtIndexedSubscript:0];

    v59 = v38;
    v60 = v35;
    v64 = v18;
    v65 = v17;
    v39 = generateBaseString(v38, v17, v33, v35, v18);
    v61 = v24;
    objc_storeStrong(&v24->_baseString, v39);
    v58 = v39;
    v40 = sign(v39, v69, v67);
    [v33 setObject:v40 forKeyedSubscript:@"oauth_signature"];

    v41 = [MEMORY[0x277CBEB18] array];
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
          [v41 addObject:v51];
        }

        v44 = [v42 countByEnumeratingWithState:&v70 objects:v75 count:16];
      }

      while (v44);
    }

    v52 = MEMORY[0x277CCACA8];
    v53 = [v41 componentsJoinedByString:{@", "}];
    v54 = [v52 stringWithFormat:@"OAuth %@", v53];
    v24 = v61;
    headerString = v61->_headerString;
    v61->_headerString = v54;

    v17 = v65;
    v16 = v66;
    v19 = v63;
    v18 = v64;
    v20 = v62;
    v22 = v68;
    v21 = v69;
    v23 = v67;
  }

  v56 = *MEMORY[0x277D85DE8];
  return v24;
}

+ (id)headerForURL:(id)a3 method:(id)a4 postParameters:(id)a5 nonce:(id)a6 consumerKey:(id)a7 consumerSecret:(id)a8 token:(id)a9 tokenSecret:(id)a10
{
  v16 = a10;
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = [[TMOAuth alloc] initWithURL:v23 method:v22 postParameters:v21 nonce:v20 consumerKey:v19 consumerSecret:v18 token:v17 tokenSecret:v16];

  v25 = [(TMOAuth *)v24 headerString];

  return v25;
}

@end