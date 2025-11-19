@interface SLYahooOAuth2MigrationRequest
+ (id)urlRequestForOAuthTokenFromLoginToken:(id)a3 clientID:(id)a4 clientSecret:(id)a5 src:(id)a6;
@end

@implementation SLYahooOAuth2MigrationRequest

+ (id)urlRequestForOAuthTokenFromLoginToken:(id)a3 clientID:(id)a4 clientSecret:(id)a5 src:(id)a6
{
  v9 = MEMORY[0x1E695DFF8];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v9 URLWithString:@"https://api.login.yahoo.com/oauth2/exchange_token"];
  v15 = [MEMORY[0x1E696AD68] requestWithURL:v14];
  v16 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
  v17 = [v13 stringByAddingPercentEncodingWithAllowedCharacters:v16];

  v18 = MEMORY[0x1E696AEC0];
  v19 = [MEMORY[0x1E695DF00] date];
  [v19 timeIntervalSince1970];
  v21 = [v18 stringWithFormat:@"legacytokentype=tokenlogin&legacysrc=%@&client_id=%@&client_secret=%@&oauth_timestamp=%u&legacytoken=%@", v10, v12, v11, v20, v17];

  v22 = [v21 dataUsingEncoding:4];
  [v15 setHTTPBody:v22];

  [v15 setCachePolicy:1];
  [v15 setHTTPMethod:@"POST"];
  [v15 setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];

  return v15;
}

@end