@interface UIColor
+ (UIColor)colorWithHexValue:(id)value error:(id *)error;
@end

@implementation UIColor

+ (UIColor)colorWithHexValue:(id)value error:(id *)error
{
  valueCopy = value;
  if ([valueCopy hasPrefix:@"#"] && objc_msgSend(valueCopy, "length") >= 2)
  {
    v6 = [valueCopy substringFromIndex:1];

    valueCopy = v6;
  }

  v7 = [valueCopy length];
  if (v7 == &dword_0 + 3)
  {
    errorCopy2 = error;
    v8 = 1;
LABEL_8:
    v9 = 0;
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = [valueCopy substringWithRange:{v9, v8, errorCopy2}];
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

    error = errorCopy2;
    if (errorCopy2)
    {
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  if ([valueCopy length] == &dword_4 + 2)
  {
    errorCopy2 = error;
    v8 = 2;
    goto LABEL_8;
  }

  if (error)
  {
LABEL_15:
    [NSError errorWithDomain:@"com.apple.diagnostics.invalidHexValue" code:-1 userInfo:0];
    *error = v17 = 0;
    goto LABEL_18;
  }

LABEL_17:
  v17 = 0;
LABEL_18:

  return v17;
}

@end