@interface NSString
@end

@implementation NSString

uint64_t __59__NSString_AAAFoundation__URLQueryValueAllowedCharacterSet__block_invoke()
{
  URLQueryValueAllowedCharacterSet__URLQueryValueAllowedCharacterSet = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-._~"];

  return MEMORY[0x1EEE66BB8]();
}

@end