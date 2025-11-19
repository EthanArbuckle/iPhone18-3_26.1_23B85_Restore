@interface NSString
+ (NSString)stringWithFourCC:(unsigned int)a3;
+ (id)sanitizedHexString:(id)a3;
@end

@implementation NSString

+ (NSString)stringWithFourCC:(unsigned int)a3
{
  v6 = bswap32(a3) >> 16;
  v5[1] = BYTE2(a3);
  v5[0] = HIBYTE(a3);
  v7 = 0;
  v3 = [NSString stringWithCString:v5 encoding:4];

  return v3;
}

+ (id)sanitizedHexString:(id)a3
{
  v3 = a3;
  v4 = [NSCharacterSet characterSetWithCharactersInString:@"01234567890ABCDEFabcdef"];
  v5 = [v4 invertedSet];

  v6 = [v3 componentsSeparatedByCharactersInSet:v5];

  v7 = [v6 componentsJoinedByString:&stru_10003A130];

  return v7;
}

@end