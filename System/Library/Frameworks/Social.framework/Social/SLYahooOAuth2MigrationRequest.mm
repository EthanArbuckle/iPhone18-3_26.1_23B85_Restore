@interface SLYahooOAuth2MigrationRequest
+ (id)urlRequestForOAuthTokenFromLoginToken:(id)token clientID:(id)d clientSecret:(id)secret src:(id)src;
@end

@implementation SLYahooOAuth2MigrationRequest

+ (id)urlRequestForOAuthTokenFromLoginToken:(id)token clientID:(id)d clientSecret:(id)secret src:(id)src
{
  v9 = MEMORY[0x1E695DFF8];
  srcCopy = src;
  secretCopy = secret;
  dCopy = d;
  tokenCopy = token;
  v14 = [v9 URLWithString:@"https://api.login.yahoo.com/oauth2/exchange_token"];
  v15 = [MEMORY[0x1E696AD68] requestWithURL:v14];
  uRLQueryAllowedCharacterSet = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
  v17 = [tokenCopy stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];

  v18 = MEMORY[0x1E696AEC0];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v21 = [v18 stringWithFormat:@"legacytokentype=tokenlogin&legacysrc=%@&client_id=%@&client_secret=%@&oauth_timestamp=%u&legacytoken=%@", srcCopy, dCopy, secretCopy, v20, v17];

  v22 = [v21 dataUsingEncoding:4];
  [v15 setHTTPBody:v22];

  [v15 setCachePolicy:1];
  [v15 setHTTPMethod:@"POST"];
  [v15 setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];

  return v15;
}

@end