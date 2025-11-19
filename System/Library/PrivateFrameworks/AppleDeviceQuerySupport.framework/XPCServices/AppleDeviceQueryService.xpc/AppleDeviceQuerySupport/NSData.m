@interface NSData
+ (id)dataFromHexString:(id)a3;
@end

@implementation NSData

+ (id)dataFromHexString:(id)a3
{
  v3 = a3;
  v19[1] = 0;
  v17 = 0;
  if ([v3 length] && (v4 = objc_msgSend(v3, "length"), v4 == (objc_msgSend(v3, "length") & 0xFFFFFFFFFFFFFFFELL)))
  {
    v5 = objc_alloc_init(NSMutableData);
    v6 = [v3 length];
    if (v6 >= 2)
    {
      v7 = 0;
      v8 = v6 >> 1;
      while (2)
      {
        __str = [v3 characterAtIndex:2 * v7];
        v9 = 1;
        v19[0] = [v3 characterAtIndex:(2 * v7) | 1];
        p_str = &__str;
        do
        {
          v11 = *p_str;
          v12 = *p_str;
          v13 = v11 >= 48 && v12 - 58 >= 7;
          if (!v13 || (v12 <= 0x66 ? (v14 = v12 - 71 > 0x19) : (v14 = 0), !v14))
          {

            goto LABEL_20;
          }

          v15 = v9;
          v9 = 0;
          p_str = v19;
        }

        while ((v15 & 1) != 0);
        v17 = strtol(&__str, 0, 16);
        [v5 appendBytes:&v17 length:1];
        if (++v7 != v8)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
LABEL_20:
    v5 = 0;
  }

  return v5;
}

@end