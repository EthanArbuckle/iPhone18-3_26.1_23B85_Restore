@interface NSMutableURLRequest
- (void)asset_setRangeOffset:(unint64_t)offset;
@end

@implementation NSMutableURLRequest

- (void)asset_setRangeOffset:(unint64_t)offset
{
  if (offset)
  {
    v5 = [NSNumber numberWithUnsignedLongLong:?];
    [NSURLProtocol setProperty:v5 forKey:@"AssetRequetPropertyRangeOffset" inRequest:self];

    offset = [NSString stringWithFormat:@"bytes=%llu-", offset];
    [(NSMutableURLRequest *)self setValue:offset forHTTPHeaderField:@"Range"];
  }

  else
  {
    [NSURLProtocol removePropertyForKey:@"AssetRequetPropertyRangeOffset" inRequest:self];

    [(NSMutableURLRequest *)self setValue:0 forHTTPHeaderField:@"Range"];
  }
}

@end