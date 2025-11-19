@interface UIColor
+ (id)hexValuedColor:(id)a3 colorSpace:(__CFString *)a4 error:(id *)a5;
@end

@implementation UIColor

+ (id)hexValuedColor:(id)a3 colorSpace:(__CFString *)a4 error:(id *)a5
{
  v7 = a3;
  if ([v7 hasPrefix:@"#"] && objc_msgSend(v7, "length") >= 2)
  {
    v8 = [v7 substringFromIndex:1];

    v7 = v8;
  }

  v9 = [v7 length];
  if (v9 == 3)
  {
    v21 = a4;
    v22 = a5;
    v10 = 1;
LABEL_8:
    v11 = 0;
    v12 = 0;
    v13 = 1;
    do
    {
      v14 = [v7 substringWithRange:{v11, v10}];
      v15 = v14;
      if (v9 == 3)
      {
        v16 = [v14 stringByAppendingString:v14];

        v15 = v16;
      }

      v17 = [NSScanner scannerWithString:v15];
      v23 = 0;
      v13 &= [v17 scanHexInt:&v23];
      LODWORD(v18) = v23;
      *(&v24 + v12) = v18 / 255.0;

      v12 += 8;
      v11 += v10;
    }

    while (v12 != 24);
    if (v13)
    {
      if (kCGColorSpaceDisplayP3 == v21)
      {
        [UIColor colorWithDisplayP3Red:v24 green:v25 blue:v26 alpha:1.0];
      }

      else
      {
        [UIColor colorWithRed:v24 green:v25 blue:v26 alpha:1.0];
      }
      v19 = ;
      goto LABEL_21;
    }

    a5 = v22;
    if (v22)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  if ([v7 length] == 6)
  {
    v21 = a4;
    v22 = a5;
    v10 = 2;
    goto LABEL_8;
  }

  if (a5)
  {
LABEL_16:
    [NSError errorWithDomain:@"com.apple.diagnostics.invalidHexValue" code:-1 userInfo:0];
    *a5 = v19 = 0;
    goto LABEL_21;
  }

LABEL_18:
  v19 = 0;
LABEL_21:

  return v19;
}

@end