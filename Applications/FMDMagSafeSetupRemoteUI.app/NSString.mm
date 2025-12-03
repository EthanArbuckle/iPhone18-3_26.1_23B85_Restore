@interface NSString
+ (NSString)stringWithFourCC:(unsigned int)c;
+ (id)sanitizedHexString:(id)string;
@end

@implementation NSString

+ (NSString)stringWithFourCC:(unsigned int)c
{
  v6 = bswap32(c) >> 16;
  v5[1] = BYTE2(c);
  v5[0] = HIBYTE(c);
  v7 = 0;
  v3 = [NSString stringWithCString:v5 encoding:4];

  return v3;
}

+ (id)sanitizedHexString:(id)string
{
  stringCopy = string;
  v4 = [NSCharacterSet characterSetWithCharactersInString:@"01234567890ABCDEFabcdef"];
  invertedSet = [v4 invertedSet];

  v6 = [stringCopy componentsSeparatedByCharactersInSet:invertedSet];

  v7 = [v6 componentsJoinedByString:&stru_10003A130];

  return v7;
}

@end