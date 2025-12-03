@interface NSString(BAUtilities)
- (__CFString)_baassets_stringByRemovingLastIdentifierComponent;
- (id)_baassets_validUTI;
- (id)_baassets_validUTIWithWildcard;
@end

@implementation NSString(BAUtilities)

- (__CFString)_baassets_stringByRemovingLastIdentifierComponent
{
  v2 = [self rangeOfString:@"." options:4];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = &stru_2849DA010;
  }

  else
  {
    v3 = [self substringToIndex:v2];
  }

  return v3;
}

- (id)_baassets_validUTI
{
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-."];
  invertedSet = [v2 invertedSet];

  v4 = [self stringByTrimmingCharactersInSet:invertedSet];

  return v4;
}

- (id)_baassets_validUTIWithWildcard
{
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-.*"];
  invertedSet = [v2 invertedSet];

  v4 = [self stringByTrimmingCharactersInSet:invertedSet];

  return v4;
}

@end