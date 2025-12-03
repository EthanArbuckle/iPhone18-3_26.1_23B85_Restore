@interface NSURLRequest(AuthKit)
- (uint64_t)ak_usesHTTPSScheme;
@end

@implementation NSURLRequest(AuthKit)

- (uint64_t)ak_usesHTTPSScheme
{
  v9 = 0;
  v2 = [self URL];
  scheme = [v2 scheme];
  v7 = 0;
  v5 = 0;
  v4 = 0;
  if (scheme)
  {
    v8 = [self URL];
    v7 = 1;
    scheme2 = [v8 scheme];
    v5 = 1;
    v4 = [scheme2 caseInsensitiveCompare:@"https"] == 0;
  }

  if (v5)
  {
    MEMORY[0x1E69E5920](scheme2);
  }

  if (v7)
  {
    MEMORY[0x1E69E5920](v8);
  }

  MEMORY[0x1E69E5920](scheme);
  MEMORY[0x1E69E5920](v2);
  if (v4)
  {
    v9 = 1;
  }

  return v9 & 1;
}

@end