@interface SLYahooLoginTokenRequest
+ (id)urlRequestForLoginTokenFromUsername:(id)username password:(id)password src:(id)src;
@end

@implementation SLYahooLoginTokenRequest

+ (id)urlRequestForLoginTokenFromUsername:(id)username password:(id)password src:(id)src
{
  v5 = MEMORY[0x1E695DFF8];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://login.yahoo.com/config/pwtoken_get?login=%@&passwd=%@&src=%@", username, password, src];
  v7 = [v5 URLWithString:v6];

  v8 = [MEMORY[0x1E696AD68] requestWithURL:v7];
  [v8 setCachePolicy:1];
  [v8 setHTTPMethod:@"GET"];

  return v8;
}

@end