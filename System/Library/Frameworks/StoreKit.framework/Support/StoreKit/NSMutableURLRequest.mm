@interface NSMutableURLRequest
- (void)asset_setRangeOffset:(unint64_t)a3;
@end

@implementation NSMutableURLRequest

- (void)asset_setRangeOffset:(unint64_t)a3
{
  if (a3)
  {
    v5 = [NSNumber numberWithUnsignedLongLong:?];
    [NSURLProtocol setProperty:v5 forKey:@"AssetRequetPropertyRangeOffset" inRequest:self];

    v6 = [NSString stringWithFormat:@"bytes=%llu-", a3];
    [(NSMutableURLRequest *)self setValue:v6 forHTTPHeaderField:@"Range"];
  }

  else
  {
    [NSURLProtocol removePropertyForKey:@"AssetRequetPropertyRangeOffset" inRequest:self];

    [(NSMutableURLRequest *)self setValue:0 forHTTPHeaderField:@"Range"];
  }
}

@end