@interface NSURLRequest
- (NSString)synchAnchorRepresentation;
@end

@implementation NSURLRequest

- (NSString)synchAnchorRepresentation
{
  v2 = [NSNumber numberWithUnsignedInteger:[(NSURLRequest *)self hash]];
  v3 = [v2 stringValue];

  return v3;
}

@end