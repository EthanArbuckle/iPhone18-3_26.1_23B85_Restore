@interface NSURLRequest(Social)
+ (id)sl_urlRequestWithToken:()Social forURLString:;
@end

@implementation NSURLRequest(Social)

+ (id)sl_urlRequestWithToken:()Social forURLString:
{
  v5 = MEMORY[0x1E696AD68];
  v6 = MEMORY[0x1E695DFF8];
  v7 = a3;
  v8 = [v6 URLWithString:a4];
  v9 = [v5 requestWithURL:v8];

  [v9 setCachePolicy:1];
  [v9 setHTTPMethod:@"GET"];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bearer %@", v7];

  [v9 setValue:v10 forHTTPHeaderField:@"Authorization"];

  return v9;
}

@end