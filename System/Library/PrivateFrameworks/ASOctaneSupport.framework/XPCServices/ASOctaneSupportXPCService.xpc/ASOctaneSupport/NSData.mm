@interface NSData
+ (id)oct_dataWithHexString:(id)a3;
@end

@implementation NSData

+ (id)oct_dataWithHexString:(id)a3
{
  v4 = a3;
  __str[2] = 0;
  v5 = malloc_type_malloc([v4 length] >> 1, 0x2E6B2115uLL);
  if ([v4 length])
  {
    v6 = 0;
    v7 = v5;
    do
    {
      v8 = [v4 characterAtIndex:v6];
      v9 = [v4 characterAtIndex:v6 + 1];
      __str[0] = v8;
      __str[1] = v9;
      v12 = 0;
      *v7++ = strtoul(__str, &v12, 16);
      v6 += 2;
    }

    while (v6 < [v4 length]);
  }

  v10 = [a1 dataWithBytesNoCopy:v5 length:objc_msgSend(v4 freeWhenDone:{"length") >> 1, 1}];

  return v10;
}

@end