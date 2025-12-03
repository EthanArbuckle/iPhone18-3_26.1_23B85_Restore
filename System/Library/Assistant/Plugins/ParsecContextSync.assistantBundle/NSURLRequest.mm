@interface NSURLRequest
- (NSString)synchAnchorRepresentation;
@end

@implementation NSURLRequest

- (NSString)synchAnchorRepresentation
{
  v2 = [NSNumber numberWithUnsignedInteger:[(NSURLRequest *)self hash]];
  stringValue = [v2 stringValue];

  return stringValue;
}

@end