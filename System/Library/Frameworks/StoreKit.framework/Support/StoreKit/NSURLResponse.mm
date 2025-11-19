@interface NSURLResponse
- (NSString)asset_cdnUUID;
- (int64_t)asset_statusCode;
@end

@implementation NSURLResponse

- (NSString)asset_cdnUUID
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(NSURLResponse *)self valueForHTTPHeaderField:@"CDNUUID"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)asset_statusCode
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return -1;
  }

  return [(NSURLResponse *)self statusCode];
}

@end