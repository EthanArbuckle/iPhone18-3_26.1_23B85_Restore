@interface NSData
+ (id)oct_dataWithHexString:(id)string;
@end

@implementation NSData

+ (id)oct_dataWithHexString:(id)string
{
  stringCopy = string;
  __str[2] = 0;
  v5 = malloc_type_malloc([stringCopy length] >> 1, 0x2E6B2115uLL);
  if ([stringCopy length])
  {
    v6 = 0;
    v7 = v5;
    do
    {
      v8 = [stringCopy characterAtIndex:v6];
      v9 = [stringCopy characterAtIndex:v6 + 1];
      __str[0] = v8;
      __str[1] = v9;
      v12 = 0;
      *v7++ = strtoul(__str, &v12, 16);
      v6 += 2;
    }

    while (v6 < [stringCopy length]);
  }

  v10 = [self dataWithBytesNoCopy:v5 length:objc_msgSend(stringCopy freeWhenDone:{"length") >> 1, 1}];

  return v10;
}

@end