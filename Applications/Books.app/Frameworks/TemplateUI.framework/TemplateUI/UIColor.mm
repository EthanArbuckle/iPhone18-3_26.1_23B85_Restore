@interface UIColor
+ (double)tui_colorComponentFrom:(id)a3 start:(unint64_t)a4 length:(unint64_t)a5;
+ (id)tui_colorWithHexString:(id)a3;
@end

@implementation UIColor

+ (id)tui_colorWithHexString:(id)a3
{
  v4 = [a3 stringByReplacingOccurrencesOfString:@"#" withString:&stru_264550];
  v5 = [v4 uppercaseString];

  v6 = [v5 length];
  v7 = 0;
  if (v6 > 5)
  {
    if (v6 != (&dword_4 + 2))
    {
      if (v6 != &dword_8)
      {
        goto LABEL_13;
      }

      [a1 tui_colorComponentFrom:v5 start:0 length:2];
      v9 = v18;
      [a1 tui_colorComponentFrom:v5 start:2 length:2];
      v11 = v19;
      [a1 tui_colorComponentFrom:v5 start:4 length:2];
      v13 = v20;
      v14 = a1;
      v15 = v5;
      v16 = 6;
      v17 = 2;
      goto LABEL_8;
    }

    [a1 tui_colorComponentFrom:v5 start:0 length:2];
    v9 = v29;
    [a1 tui_colorComponentFrom:v5 start:2 length:2];
    v11 = v30;
    v25 = a1;
    v26 = v5;
    v27 = 4;
    v28 = 2;
LABEL_11:
    [v25 tui_colorComponentFrom:v26 start:v27 length:v28];
    v13 = v31;
    v22 = 1.0;
    goto LABEL_12;
  }

  if (v6 == (&dword_0 + 3))
  {
    [a1 tui_colorComponentFrom:v5 start:0 length:1];
    v9 = v23;
    [a1 tui_colorComponentFrom:v5 start:1 length:1];
    v11 = v24;
    v25 = a1;
    v26 = v5;
    v27 = 2;
    v28 = 1;
    goto LABEL_11;
  }

  if (v6 != &dword_4)
  {
    goto LABEL_13;
  }

  [a1 tui_colorComponentFrom:v5 start:0 length:1];
  v9 = v8;
  [a1 tui_colorComponentFrom:v5 start:1 length:1];
  v11 = v10;
  [a1 tui_colorComponentFrom:v5 start:2 length:1];
  v13 = v12;
  v14 = a1;
  v15 = v5;
  v16 = 3;
  v17 = 1;
LABEL_8:
  [v14 tui_colorComponentFrom:v15 start:v16 length:v17];
  v22 = v21;
LABEL_12:
  v7 = [UIColor colorWithRed:v9 green:v11 blue:v13 alpha:v22];
LABEL_13:

  return v7;
}

+ (double)tui_colorComponentFrom:(id)a3 start:(unint64_t)a4 length:(unint64_t)a5
{
  v6 = [a3 substringWithRange:{a4, a5}];
  v7 = v6;
  if (a5 == 2)
  {
    v8 = v6;
    v9 = 255.0;
  }

  else
  {
    v8 = [NSString stringWithFormat:@"%@%@", v6, v6];
    v9 = 15.0;
  }

  v14 = 0;
  v10 = [NSScanner scannerWithString:v8];
  [v10 scanHexInt:&v14];

  LODWORD(v11) = v14;
  v12 = v11 / v9;

  return v12;
}

@end