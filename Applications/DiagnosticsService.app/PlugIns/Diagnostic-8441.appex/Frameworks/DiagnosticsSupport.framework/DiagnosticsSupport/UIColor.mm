@interface UIColor
+ (UIColor)colorWithHexValue:(id)a3 error:(id *)a4;
@end

@implementation UIColor

+ (UIColor)colorWithHexValue:(id)a3 error:(id *)a4
{
  v5 = a3;
  if ([v5 hasPrefix:@"#"] && objc_msgSend(v5, "length") >= 2)
  {
    v6 = [v5 substringFromIndex:1];

    v5 = v6;
  }

  v7 = [v5 length];
  if (v7 == &dword_0 + 3)
  {
    v19 = a4;
    v8 = 1;
LABEL_8:
    v9 = 0;
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = [v5 substringWithRange:{v9, v8, v19}];
      v13 = v12;
      if (v7 == &dword_0 + 3)
      {
        v14 = [v12 stringByAppendingString:v12];

        v13 = v14;
      }

      v15 = [NSScanner scannerWithString:v13];
      v20 = 0;
      v11 &= [v15 scanHexInt:&v20];
      LODWORD(v16) = v20;
      v21[v10] = v16 / 255.0;

      ++v10;
      v9 += v8;
    }

    while (v10 != 3);
    if (v11)
    {
      v17 = [UIColor colorWithRed:v21[0] green:v21[1] blue:v21[2] alpha:1.0];
      goto LABEL_18;
    }

    a4 = v19;
    if (v19)
    {
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  if ([v5 length] == &dword_4 + 2)
  {
    v19 = a4;
    v8 = 2;
    goto LABEL_8;
  }

  if (a4)
  {
LABEL_15:
    [NSError errorWithDomain:@"com.apple.diagnostics.invalidHexValue" code:-1 userInfo:0];
    *a4 = v17 = 0;
    goto LABEL_18;
  }

LABEL_17:
  v17 = 0;
LABEL_18:

  return v17;
}

@end