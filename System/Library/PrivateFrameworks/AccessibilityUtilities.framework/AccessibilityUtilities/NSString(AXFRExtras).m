@interface NSString(AXFRExtras)
- (id)stringByTrimmingEmptySpaceEdges;
@end

@implementation NSString(AXFRExtras)

- (id)stringByTrimmingEmptySpaceEdges
{
  if ([a1 length])
  {
    v2 = [a1 mutableCopy];
    CFStringTrimWhitespace(v2);
    v3 = [(__CFString *)v2 copy];
  }

  else
  {
    v3 = a1;
  }

  return v3;
}

@end