@interface SLYahooWebClient
- (NSString)clientSecret;
- (SLYahooWebClient)initWithCoder:(id)coder;
@end

@implementation SLYahooWebClient

- (SLYahooWebClient)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SLYahooWebClient;
  return [(SLYahooWebClient *)&v4 init];
}

- (NSString)clientSecret
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = [@"1ff1e68bef:b72224e516b1480b95f14f8e6:b44" length];
  MEMORY[0x1EEE9AC00]();
  v4 = v10 - v3;
  uTF8String = [@"1ff1e68bef:b72224e516b1480b95f14f8e6:b44" UTF8String];
  if (v2 < 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = v2 & 0x7FFFFFFF;
    do
    {
      v4[v6] = *(uTF8String + v6) - ((v6 + 1) & 1);
      ++v6;
    }

    while (v7 != v6);
  }

  v4[v7] = 0;
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];

  return v8;
}

@end