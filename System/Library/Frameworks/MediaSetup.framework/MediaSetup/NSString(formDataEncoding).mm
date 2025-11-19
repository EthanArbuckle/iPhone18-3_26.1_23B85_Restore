@interface NSString(formDataEncoding)
- (id)formDecodedString;
- (id)formEncodedString;
@end

@implementation NSString(formDataEncoding)

- (id)formEncodedString
{
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-._* "];
  v3 = [a1 stringByAddingPercentEncodingWithAllowedCharacters:v2];
  v4 = [v3 stringByReplacingOccurrencesOfString:@" " withString:@"+"];

  return v4;
}

- (id)formDecodedString
{
  v1 = [a1 stringByReplacingOccurrencesOfString:@"+" withString:@"%20"];
  v2 = [v1 stringByRemovingPercentEncoding];

  return v2;
}

@end