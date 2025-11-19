@interface NSString(ShortDescription)
- (id)ad_shortDescription;
@end

@implementation NSString(ShortDescription)

- (id)ad_shortDescription
{
  if ([a1 length] < 9)
  {
    v2 = a1;
  }

  else
  {
    v2 = [a1 substringToIndex:8];
  }

  return v2;
}

@end