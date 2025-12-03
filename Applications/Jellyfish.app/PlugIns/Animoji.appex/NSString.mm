@interface NSString
- (id)URLEncodedString_ch;
@end

@implementation NSString

- (id)URLEncodedString_ch
{
  v3 = +[NSMutableString string];
  uTF8String = [(NSString *)self UTF8String];
  v5 = strlen(uTF8String);
  if (v5 >= 1)
  {
    for (i = v5 & 0x7FFFFFFF; i; --i)
    {
      v8 = *uTF8String++;
      v7 = v8;
      if (v8 > 57)
      {
        if (v7 == 58)
        {
          v9 = v3;
          v10 = @"%3A";
          goto LABEL_13;
        }

        if (v7 != 95 && v7 != 126)
        {
          goto LABEL_10;
        }
      }

      else if ((v7 - 45) >= 2)
      {
        if (v7 == 32)
        {
          v9 = v3;
          v10 = @"%20";
LABEL_13:
          [v9 appendString:v10];
          continue;
        }

LABEL_10:
        if ((v7 & 0xFFFFFFDF) - 65 >= 0x1A && v7 != 61 && (v7 - 48) > 9)
        {
          [v3 appendFormat:@"%%%02X", v7];
          continue;
        }
      }

      [v3 appendFormat:@"%c", v7];
    }
  }

  return v3;
}

@end