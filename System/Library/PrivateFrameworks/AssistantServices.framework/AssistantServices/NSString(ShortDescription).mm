@interface NSString(ShortDescription)
- (id)ad_shortDescription;
@end

@implementation NSString(ShortDescription)

- (id)ad_shortDescription
{
  if ([self length] < 9)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [self substringToIndex:8];
  }

  return selfCopy;
}

@end