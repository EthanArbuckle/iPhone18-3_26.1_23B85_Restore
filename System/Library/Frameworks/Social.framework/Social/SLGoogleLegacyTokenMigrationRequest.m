@interface SLGoogleLegacyTokenMigrationRequest
+ (id)urlRequestForAuthCodeFromAuthToken:(id)a3 clientID:(id)a4 scope:(id)a5;
+ (id)urlRequestForAuthTokenFromLegacyClientToken:(id)a3 username:(id)a4 password:(id)a5;
@end

@implementation SLGoogleLegacyTokenMigrationRequest

+ (id)urlRequestForAuthTokenFromLegacyClientToken:(id)a3 username:(id)a4 password:(id)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v37[0] = @"accountType";
  v37[1] = @"Email";
  v38 = @"HOSTED_OR_GOOGLE";
  v39 = a4;
  v28 = a5;
  v29 = v39;
  v37[2] = @"Passwd";
  v37[3] = @"service";
  v40 = v28;
  v41 = @"lso";
  v37[4] = @"source";
  v37[5] = @"clientidtoken";
  v42 = @"AppleBootstrap";
  v43 = v7;
  v30 = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:v37 count:6];
  v9 = MEMORY[0x1E696AD68];
  v10 = [MEMORY[0x1E695DFF8] URLWithString:@"https://accounts.google.com/accounts/ClientLogin"];
  v27 = [v9 requestWithURL:v10];

  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = v8;
  obj = [v8 allKeys];
  v13 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v33;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v32 + 1) + 8 * i);
        v18 = [v12 objectForKeyedSubscript:v17];
        v19 = MEMORY[0x1E696AEC0];
        v20 = [v17 stringByAddingPercentEscapesUsingEncoding:4];
        v21 = [v18 stringByAddingPercentEscapesUsingEncoding:4];
        v22 = [v19 stringWithFormat:@"%@=%@", v20, v21];

        [v11 addObject:v22];
      }

      v14 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v14);
  }

  v23 = [v11 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
  v24 = [v23 componentsJoinedByString:@"&"];
  v25 = [v24 dataUsingEncoding:4];
  [v27 setHTTPBody:v25];

  [v27 setCachePolicy:1];
  [v27 setHTTPMethod:@"POST"];
  [v27 setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];

  return v27;
}

+ (id)urlRequestForAuthCodeFromAuthToken:(id)a3 clientID:(id)a4 scope:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [a5 componentsJoinedByString:@" "];
  v10 = [v9 stringByAddingPercentEscapesUsingEncoding:4];

  v11 = [v7 stringByAddingPercentEscapesUsingEncoding:4];

  v12 = MEMORY[0x1E695DFF8];
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@?scope=%@&client_id=%@", @"https://accounts.google.com/o/oauth2/programmatic_auth", v10, v11];
  v14 = [v12 URLWithString:v13];

  v15 = [objc_alloc(MEMORY[0x1E696AD68]) initWithURL:v14];
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"GoogleLogin auth=%@", v8];

  [v15 setValue:v16 forHTTPHeaderField:@"Authorization"];

  return v15;
}

@end