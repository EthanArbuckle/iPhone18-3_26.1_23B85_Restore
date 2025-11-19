@interface NSString
- (BOOL)isValidCityAbbreviation;
@end

@implementation NSString

- (BOOL)isValidCityAbbreviation
{
  if (![(NSString *)self length]|| [(NSString *)self length]> 3)
  {
    return 0;
  }

  return [(NSString *)self containsOnlyValidCityAbbreviationCharacters];
}

@end