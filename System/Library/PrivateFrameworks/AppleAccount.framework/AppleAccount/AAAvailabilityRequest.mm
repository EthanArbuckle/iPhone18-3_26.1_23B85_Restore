@interface AAAvailabilityRequest
- (AAAvailabilityRequest)initWithAccount:(id)a3;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AAAvailabilityRequest

- (AAAvailabilityRequest)initWithAccount:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AAAvailabilityRequest;
  v6 = [(AAAvailabilityRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
  }

  return v7;
}

- (id)urlString
{
  v3 = [(ACAccount *)self->_account dataclassProperties];
  v4 = [v3 objectForKey:*MEMORY[0x1E6959AD0]];
  v5 = [v4 objectForKey:@"url"];

  if (v5)
  {
    v6 = [(ACAccount *)self->_account aa_personID];

    if (v6)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = [(ACAccount *)self->_account aa_personID];
      v9 = [v7 stringWithFormat:@"%@/%@/sharedstreams/status?feature=photos", v5, v8];

      goto LABEL_8;
    }
  }

  else
  {
    v10 = _AALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "Error! AAAvailabilityRequest could not find a base URL.", buf, 2u);
    }
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (id)urlRequest
{
  v14 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = AAAvailabilityRequest;
  v3 = [(AARequest *)&v11 urlRequest];
  v4 = [v3 mutableCopy];

  v5 = [(AAAvailabilityRequest *)self urlString];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFF8] URLWithString:v5];
    [v4 setURL:v6];

    [v4 setHTTPMethod:@"GET"];
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 URL];
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Sending GET to %@", buf, 0xCu);
    }

    [v4 aa_addBasicAuthorizationHeaderWithAccount:self->_account preferUsingPassword:0];
    [v4 addValue:@"dHUDegar6MCO" forHTTPHeaderField:@"x-apple-mme-sharedstreams-version"];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v4;
}

@end