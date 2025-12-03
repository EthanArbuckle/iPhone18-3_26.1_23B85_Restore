@interface AKIDPUtility
+ (BOOL)dictionary:(id)dictionary containsKeys:(id)keys;
+ (BOOL)isMicrosoftRequestDictionary:(id)dictionary;
+ (id)convertError:(id)error;
+ (id)idpURLFromRequest:(id)request;
+ (id)microsoftLoginURLFromParameters:(id)parameters;
+ (id)parametersFromRequest:(id)request;
+ (id)parametersFromResponseURL:(id)l request:(id)request;
@end

@implementation AKIDPUtility

+ (id)convertError:(id)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  domain = [location[0] domain];
  v7 = getASWebAuthenticationSessionErrorDomain();
  v8 = 0;
  if ([domain isEqualToString:?])
  {
    v8 = [location[0] code] == 1;
  }

  MEMORY[0x277D82BD8](v7);
  *&v3 = MEMORY[0x277D82BD8](domain).n128_u64[0];
  if (v8)
  {
    v10 = [MEMORY[0x277CCA9B8] ak_errorWithCode:{-7003, v3}];
  }

  else
  {
    v10 = MEMORY[0x277D82BE0](location[0]);
  }

  objc_storeStrong(location, 0);
  v4 = v10;

  return v4;
}

+ (id)idpURLFromRequest:(id)request
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v13 = objc_alloc(MEMORY[0x277CCACA8]);
  hTTPBody = [location[0] HTTPBody];
  v31 = [v13 initWithData:? encoding:?];
  *&v3 = MEMORY[0x277D82BD8](hTTPBody).n128_u64[0];
  v15 = [location[0] URL];
  absoluteString = [v15 absoluteString];
  *&v4 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  v29 = [AKIDPUtility parametersFromRequest:location[0], v4];
  if ([AKIDPUtility isMicrosoftRequestDictionary:v29])
  {
    v11 = [v29 objectForKeyedSubscript:@"SAMLRequest"];
    stringByRemovingPercentEncoding = [v11 stringByRemovingPercentEncoding];
    MEMORY[0x277D82BD8](v11);
    v26 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:stringByRemovingPercentEncoding options:1];
    v25 = [v26 compressedDataUsingAlgorithm:3 error:0];
    v24 = [v25 base64EncodedStringWithOptions:0];
    v12 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:charsToEscape];
    invertedSet = [v12 invertedSet];
    v22 = [v29 objectForKeyedSubscript:{@"RelayState", MEMORY[0x277D82BD8](v12).n128_f64[0]}];
    v21 = [v24 stringByAddingPercentEncodingWithAllowedCharacters:invertedSet];
    if ([absoluteString containsString:@"?"])
    {
      v5 = MEMORY[0x277D82BE0](urlWithQueryParametersFormatString);
    }

    else
    {
      v5 = MEMORY[0x277D82BE0](urlWithoutQueryParametersFormatString);
    }

    v20 = v5;
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:v5, absoluteString, @"RelayState", v22, @"SAMLRequest", v21];
    v6 = objc_alloc(MEMORY[0x277CBEBC0]);
    v33 = [v6 initWithString:v19];
    v18 = 1;
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&invertedSet, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&stringByRemovingPercentEncoding, 0);
  }

  else
  {
    v10 = [absoluteString stringByAppendingString:@"?"];
    v17 = [v10 stringByAppendingString:v31];
    MEMORY[0x277D82BD8](v10);
    v7 = objc_alloc(MEMORY[0x277CBEBC0]);
    v16 = [v7 initWithString:v17];
    v33 = MEMORY[0x277D82BE0](v16);
    v18 = 1;
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v17, 0);
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(&absoluteString, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  v8 = v33;

  return v8;
}

+ (id)parametersFromResponseURL:(id)l request:(id)request
{
  v18[2] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v14 = 0;
  objc_storeStrong(&v14, request);
  mEMORY[0x277CF02F0] = [MEMORY[0x277CF02F0] sharedBag];
  acsURL = [mEMORY[0x277CF02F0] acsURL];
  v4 = MEMORY[0x277D82BD8](mEMORY[0x277CF02F0]).n128_u64[0];
  v11 = 0;
  v10 = 1;
  if (location[0])
  {
    query = [location[0] query];
    v11 = 1;
    v10 = 1;
    if (query)
    {
      v10 = 1;
      if (v14)
      {
        v10 = acsURL == 0;
      }
    }
  }

  if (v11)
  {
    v4 = MEMORY[0x277D82BD8](query).n128_u64[0];
  }

  if (v10)
  {
    v16 = 0;
  }

  else
  {
    v17[0] = *MEMORY[0x277CF0080];
    query2 = [location[0] query];
    v18[0] = query2;
    v17[1] = *MEMORY[0x277CF0088];
    v18[1] = acsURL;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    MEMORY[0x277D82BD8](query2);
  }

  objc_storeStrong(&acsURL, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v5 = v16;

  return v5;
}

+ (id)parametersFromRequest:(id)request
{
  v25 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  hTTPBody = [location[0] HTTPBody];
  v22 = [v10 initWithData:? encoding:?];
  v21 = [v22 componentsSeparatedByString:{@"&", MEMORY[0x277D82BD8](hTTPBody).n128_f64[0]}];
  v20 = objc_opt_new();
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v21);
  v13 = [obj countByEnumeratingWithState:__b objects:v24 count:16];
  if (v13)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v13;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(__b[1] + 8 * v8);
      v16 = 0;
      v17 = 0;
      v16 = [v19 rangeOfString:@"="];
      v17 = v3;
      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = [v19 substringToIndex:v16];
        v14 = [v19 substringFromIndex:v16 + v17];
        [v20 setObject:v14 forKey:v15];
        objc_storeStrong(&v14, 0);
        objc_storeStrong(&v15, 0);
      }

      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [obj countByEnumeratingWithState:__b objects:v24 count:16];
        if (!v9)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v5 = MEMORY[0x277D82BE0](v20);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)microsoftLoginURLFromParameters:(id)parameters
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, parameters);
  v10 = [location[0] objectForKeyedSubscript:@"SAMLRequest"];
  stringByRemovingPercentEncoding = [v10 stringByRemovingPercentEncoding];
  MEMORY[0x277D82BD8](v10);
  v3 = objc_alloc(MEMORY[0x277CBEA90]);
  v24 = [v3 initWithBase64EncodedString:stringByRemovingPercentEncoding options:1];
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v23 = [v4 initWithData:v24 encoding:4];
  v21 = [v23 rangeOfString:@"AssertionConsumerServiceURL="];
  v22 = v5;
  v20 = v21 + v5;
  v12 = v23;
  v11 = (v21 + v5);
  v6 = [v23 length];
  location[8] = v11;
  location[7] = (v6 - v20);
  location[9] = v11;
  location[10] = (v6 - v20);
  v17 = v11;
  v18 = v6 - v20;
  v19 = [v12 substringWithRange:{v11, v6 - v20}];
  v15 = [v19 rangeOfString:@""];
  v16 = v7;
  location[4] = 0;
  location[3] = v15;
  location[5] = 0;
  location[6] = v15;
  v14 = [v19 substringWithRange:{0, v15}];
  v8 = objc_alloc(MEMORY[0x277CBEBC0]);
  v13 = [v8 initWithString:v14];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&stringByRemovingPercentEncoding, 0);
  objc_storeStrong(location, 0);

  return v13;
}

+ (BOOL)dictionary:(id)dictionary containsKeys:(id)keys
{
  v21 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  v17 = 0;
  objc_storeStrong(&v17, keys);
  memset(__b, 0, sizeof(__b));
  v12 = MEMORY[0x277D82BE0](v17);
  v13 = [v12 countByEnumeratingWithState:__b objects:v20 count:16];
  if (v13)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v13;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(v12);
      }

      v16 = *(__b[1] + 8 * v9);
      v6 = [location[0] valueForKey:v16];
      *&v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
      if (!v6)
      {
        break;
      }

      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [v12 countByEnumeratingWithState:__b objects:v20 count:{16, v4}];
        if (!v10)
        {
          goto LABEL_9;
        }
      }
    }

    v19 = 0;
    v14 = 1;
  }

  else
  {
LABEL_9:
    v14 = 0;
  }

  MEMORY[0x277D82BD8](v12);
  if (!v14)
  {
    v19 = 1;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v19 & 1;
}

+ (BOOL)isMicrosoftRequestDictionary:(id)dictionary
{
  v7[2] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  v7[0] = @"RelayState";
  v7[1] = @"SAMLRequest";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [AKIDPUtility dictionary:location[0] containsKeys:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v4;
}

@end