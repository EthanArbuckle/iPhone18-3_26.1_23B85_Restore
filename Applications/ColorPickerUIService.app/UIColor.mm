@interface UIColor
+ (id)hexValuedColor:(id)color colorSpace:(__CFString *)space error:(id *)error;
@end

@implementation UIColor

+ (id)hexValuedColor:(id)color colorSpace:(__CFString *)space error:(id *)error
{
  colorCopy = color;
  if ([colorCopy hasPrefix:@"#"] && objc_msgSend(colorCopy, "length") >= 2)
  {
    v8 = [colorCopy substringFromIndex:1];

    colorCopy = v8;
  }

  v9 = [colorCopy length];
  if (v9 == 3)
  {
    spaceCopy2 = space;
    errorCopy2 = error;
    v10 = 1;
LABEL_8:
    v11 = 0;
    v12 = 0;
    v13 = 1;
    do
    {
      v14 = [colorCopy substringWithRange:{v11, v10}];
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
      if (kCGColorSpaceDisplayP3 == spaceCopy2)
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

    error = errorCopy2;
    if (errorCopy2)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  if ([colorCopy length] == 6)
  {
    spaceCopy2 = space;
    errorCopy2 = error;
    v10 = 2;
    goto LABEL_8;
  }

  if (error)
  {
LABEL_16:
    [NSError errorWithDomain:@"com.apple.diagnostics.invalidHexValue" code:-1 userInfo:0];
    *error = v19 = 0;
    goto LABEL_21;
  }

LABEL_18:
  v19 = 0;
LABEL_21:

  return v19;
}

@end