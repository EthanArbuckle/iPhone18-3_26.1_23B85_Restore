@interface NSString(BAUtilities)
- (__CFString)_baassets_stringByRemovingLastIdentifierComponent;
- (id)_baassets_validUTI;
- (id)_baassets_validUTIWithWildcard;
@end

@implementation NSString(BAUtilities)

- (__CFString)_baassets_stringByRemovingLastIdentifierComponent
{
  v2 = [a1 rangeOfString:@"." options:4];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = &stru_2849DA010;
  }

  else
  {
    v3 = [a1 substringToIndex:v2];
  }

  return v3;
}

- (id)_baassets_validUTI
{
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-."];
  v3 = [v2 invertedSet];

  v4 = [a1 stringByTrimmingCharactersInSet:v3];

  return v4;
}

- (id)_baassets_validUTIWithWildcard
{
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-.*"];
  v3 = [v2 invertedSet];

  v4 = [a1 stringByTrimmingCharactersInSet:v3];

  return v4;
}

@end