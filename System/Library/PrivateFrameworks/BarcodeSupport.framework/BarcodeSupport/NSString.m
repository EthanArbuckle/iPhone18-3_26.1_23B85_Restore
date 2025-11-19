@interface NSString
@end

@implementation NSString

uint64_t __49__NSString_BCSNSStringExtras___bcs_trimmedString__block_invoke()
{
  v0 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v1 = [v0 mutableCopy];
  v2 = _bcs_trimmedString_whitespaceCharacterSet;
  _bcs_trimmedString_whitespaceCharacterSet = v1;

  v3 = _bcs_trimmedString_whitespaceCharacterSet;

  return [v3 addCharactersInString:@"﻿"];
}

uint64_t __56__NSString_BCSNSStringExtras___bcs_urlEncodedQueryValue__block_invoke()
{
  v0 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
  v1 = [v0 mutableCopy];
  v2 = _bcs_urlEncodedQueryValue_queryValueAllowedCharacters;
  _bcs_urlEncodedQueryValue_queryValueAllowedCharacters = v1;

  v3 = _bcs_urlEncodedQueryValue_queryValueAllowedCharacters;

  return [v3 removeCharactersInString:@"+=&"];
}

@end