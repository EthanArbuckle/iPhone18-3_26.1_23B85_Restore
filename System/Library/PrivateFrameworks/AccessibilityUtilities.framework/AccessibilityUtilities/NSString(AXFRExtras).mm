@interface NSString(AXFRExtras)
- (id)stringByTrimmingEmptySpaceEdges;
@end

@implementation NSString(AXFRExtras)

- (id)stringByTrimmingEmptySpaceEdges
{
  if ([self length])
  {
    v2 = [self mutableCopy];
    CFStringTrimWhitespace(v2);
    selfCopy = [(__CFString *)v2 copy];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end