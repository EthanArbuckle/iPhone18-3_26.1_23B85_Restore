@interface AKAuthorizationTVServicePresenter
- (id)_filterDeprecatedType:(id)a3;
- (id)_stringForType:(int64_t)a3;
- (id)buildDidStartServerAuthorizationMessage;
- (id)buildDidTapNotificationMessage;
- (id)buildFetchAppIconMessage;
- (id)buildFetchAppIconReplyWithImageData:(id)a3 imageScale:(id)a4;
- (int64_t)_typeFromString:(id)a3;
- (int64_t)typeOfMessage:(id)a3;
@end

@implementation AKAuthorizationTVServicePresenter

- (int64_t)typeOfMessage:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [location[0] objectForKeyedSubscript:@"type"];
  v4 = [(AKAuthorizationTVServicePresenter *)v7 _typeFromString:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  return v4;
}

- (id)buildDidTapNotificationMessage
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"type";
  v3 = [(AKAuthorizationTVServicePresenter *)self _stringForType:?];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  MEMORY[0x1E69E5920](v3);
  *MEMORY[0x1E69E9840];

  return v4;
}

- (id)buildDidStartServerAuthorizationMessage
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"type";
  v3 = [(AKAuthorizationTVServicePresenter *)self _stringForType:2];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  MEMORY[0x1E69E5920](v3);
  *MEMORY[0x1E69E9840];

  return v4;
}

- (id)buildFetchAppIconMessage
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"type";
  v3 = [(AKAuthorizationTVServicePresenter *)self _stringForType:3];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  MEMORY[0x1E69E5920](v3);
  *MEMORY[0x1E69E9840];

  return v4;
}

- (id)buildFetchAppIconReplyWithImageData:(id)a3 imageScale:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v14 = @"type";
  v9 = [(AKAuthorizationTVServicePresenter *)v13 _stringForType:4];
  v15[0] = v9;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v10 = [v8 mutableCopy];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  if (location[0] && v11)
  {
    [v10 setObject:location[0] forKeyedSubscript:@"IconData"];
    [v10 setObject:v11 forKeyedSubscript:@"IconScale"];
  }

  v6 = [v10 copy];
  objc_storeStrong(v5, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v6;
}

- (int64_t)_typeFromString:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(AKAuthorizationTVServicePresenter *)v7 _filterDeprecatedType:location[0]];
  v4 = location[0];
  location[0] = v3;
  MEMORY[0x1E69E5920](v4);
  if ([location[0] isEqualToString:@"DidTapNotification"])
  {
    v8 = 1;
  }

  else if ([location[0] isEqualToString:@"DidStartServerAuthorization"])
  {
    v8 = 2;
  }

  else if ([location[0] isEqualToString:@"FetchAppIcon"])
  {
    v8 = 3;
  }

  else if ([location[0] isEqualToString:@"FetchAppIconReply"])
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong(location, 0);
  return v8;
}

- (id)_stringForType:(int64_t)a3
{
  switch(a3)
  {
    case 1:
      v4 = MEMORY[0x1E69E5928](@"DidTapNotification");
      break;
    case 2:
      v4 = MEMORY[0x1E69E5928](@"DidStartServerAuthorization");
      break;
    case 3:
      v4 = MEMORY[0x1E69E5928](@"FetchAppIcon");
      break;
    case 4:
      v4 = MEMORY[0x1E69E5928](@"FetchAppIconReply");
      break;
    default:
      v4 = MEMORY[0x1E69E5928](@"Unknown");
      break;
  }

  return v4;
}

- (id)_filterDeprecatedType:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] isEqualToString:@"StartProgressAnimation"])
  {
    v6 = MEMORY[0x1E69E5928](@"DidTapNotification");
  }

  else
  {
    v6 = MEMORY[0x1E69E5928](location[0]);
  }

  objc_storeStrong(location, 0);
  v3 = v6;

  return v3;
}

@end