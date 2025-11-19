@interface NSURLRequest
- (unint64_t)asset_rangeOffset;
@end

@implementation NSURLRequest

- (unint64_t)asset_rangeOffset
{
  v2 = [NSURLProtocol propertyForKey:@"AssetRequetPropertyRangeOffset" inRequest:self];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

@end