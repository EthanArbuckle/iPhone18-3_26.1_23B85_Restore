@interface SLYahooWebOAuth2TokenRequest
+ (id)_urlRequestForParams:(id)a3 clientID:(id)a4 secret:(id)a5 tokenURL:(id)a6;
+ (id)urlRequestForClientID:(id)a3 secret:(id)a4 redirectURI:(id)a5 authCode:(id)a6 tokenURL:(id)a7;
+ (id)urlRequestForClientID:(id)a3 secret:(id)a4 refreshToken:(id)a5 tokenURL:(id)a6;
@end

@implementation SLYahooWebOAuth2TokenRequest

+ (id)urlRequestForClientID:(id)a3 secret:(id)a4 redirectURI:(id)a5 authCode:(id)a6 tokenURL:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = objc_opt_new();
  [v17 setObject:v13 forKeyedSubscript:@"code"];

  [v17 setObject:@"authorization_code" forKeyedSubscript:@"grant_type"];
  [v17 setObject:v14 forKeyedSubscript:@"redirect_uri"];

  v18 = [a1 _urlRequestForParams:v17 clientID:v16 secret:v15 tokenURL:v12];

  return v18;
}

+ (id)urlRequestForClientID:(id)a3 secret:(id)a4 refreshToken:(id)a5 tokenURL:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_opt_new();
  [v14 setObject:v11 forKeyedSubscript:@"refresh_token"];

  [v14 setObject:@"refresh_token" forKeyedSubscript:@"grant_type"];
  v15 = objc_alloc_init(SLYahooWebClient);
  v16 = [(SLYahooWebClient *)v15 clientRedirect];
  [v14 setObject:v16 forKeyedSubscript:@"redirect_uri"];

  v17 = [a1 _urlRequestForParams:v14 clientID:v13 secret:v12 tokenURL:v10];

  return v17;
}

+ (id)_urlRequestForParams:(id)a3 clientID:(id)a4 secret:(id)a5 tokenURL:(id)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v36 = a4;
  v35 = a5;
  v34 = a6;
  v39 = v9;
  v40 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [v9 allKeys];
  v10 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v42;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v41 + 1) + 8 * i);
        v15 = [v39 objectForKeyedSubscript:v14];
        v16 = MEMORY[0x1E696AEC0];
        v17 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
        v18 = [v14 stringByAddingPercentEncodingWithAllowedCharacters:v17];
        v19 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
        v20 = [v15 stringByAddingPercentEncodingWithAllowedCharacters:v19];
        v21 = [v16 stringWithFormat:@"%@=%@", v18, v20];

        [v40 addObject:v21];
      }

      v11 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v11);
  }

  obja = [v40 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
  v22 = [obja componentsJoinedByString:@"&"];
  v23 = MEMORY[0x1E696AD68];
  v24 = [MEMORY[0x1E695DFF8] URLWithString:v34];
  v25 = [v23 requestWithURL:v24];

  v26 = [v22 dataUsingEncoding:4];
  [v25 setHTTPBody:v26];

  [v25 setCachePolicy:1];
  [v25 setHTTPMethod:@"POST"];
  v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", v36, v35];
  v28 = objc_alloc(MEMORY[0x1E696AEC0]);
  v29 = [v27 dataUsingEncoding:4];
  v30 = [v29 base64EncodedDataWithOptions:0];
  v31 = [v28 initWithData:v30 encoding:4];

  v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Basic %@", v31];

  [v25 setValue:v32 forHTTPHeaderField:@"Authorization"];
  [v25 setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];

  return v25;
}

@end