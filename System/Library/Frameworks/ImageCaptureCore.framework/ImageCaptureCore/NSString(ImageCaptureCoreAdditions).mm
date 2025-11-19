@interface NSString(ImageCaptureCoreAdditions)
+ (id)stringFromOSType:()ImageCaptureCoreAdditions;
- (id)asciiString;
@end

@implementation NSString(ImageCaptureCoreAdditions)

+ (id)stringFromOSType:()ImageCaptureCoreAdditions
{
  if (a3)
  {
    v6 = bswap32(a3);
    v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v6 length:4];
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v3 encoding:30];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)asciiString
{
  v2 = [MEMORY[0x1E696AB08] characterSetWithRange:{0, 128}];
  v3 = [v2 invertedSet];
  v4 = [a1 componentsSeparatedByCharactersInSet:v3];
  v5 = [v4 componentsJoinedByString:@" "];

  if ([v5 length])
  {
    if ([v5 length] < 0x13)
    {
      goto LABEL_6;
    }

    v6 = [v5 substringWithRange:{0, 18}];
    v7 = [v6 stringByAppendingString:@".."];

    v5 = v6;
  }

  else
  {
    v7 = @"{empty}";
  }

  v5 = v7;
LABEL_6:

  return v5;
}

@end