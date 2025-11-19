@interface SLYahooLoginTokenRequest
+ (id)urlRequestForLoginTokenFromUsername:(id)a3 password:(id)a4 src:(id)a5;
@end

@implementation SLYahooLoginTokenRequest

+ (id)urlRequestForLoginTokenFromUsername:(id)a3 password:(id)a4 src:(id)a5
{
  v5 = MEMORY[0x1E695DFF8];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://login.yahoo.com/config/pwtoken_get?login=%@&passwd=%@&src=%@", a3, a4, a5];
  v7 = [v5 URLWithString:v6];

  v8 = [MEMORY[0x1E696AD68] requestWithURL:v7];
  [v8 setCachePolicy:1];
  [v8 setHTTPMethod:@"GET"];

  return v8;
}

@end