@interface NSNumber
- (id)fractionString;
@end

@implementation NSNumber

- (id)fractionString
{
  [(NSNumber *)self doubleValue];
  v4 = v3;
  if (v3)
  {
    v5 = [NSMutableString stringWithFormat:@"%@", self];
  }

  else
  {
    v6 = 0;
    v7 = 1;
    v8 = v3;
    v9 = 1;
    while (1)
    {
      v10 = v4;
      v11 = v7;
      v12 = v8;
      v4 = v9 + v4 * v8;
      if (v4 >= 100001)
      {
        break;
      }

      v7 = v6 + v7 * v12;
      if (v8 != v12)
      {
        v8 = 1.0 / (v8 - v12);
        v6 = v11;
        v9 = v10;
        if (v8 <= 2147483650.0)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    v11 = v6;
    v4 = v10;
    v10 = v9;
LABEL_9:
    v13 = (100000 - v10) / v4;
    v14 = v11 + v13 * v7;
    v15 = v10 + v13 * v4;
    v16 = vabdd_f64(v3, v7 / v4);
    v17 = fabs(v14 / v15);
    if (v16 <= v17)
    {
      v18 = v4;
    }

    else
    {
      v18 = v15;
    }

    if (v16 <= v17)
    {
      v19 = v7;
    }

    else
    {
      v19 = v14;
    }

    if (v19 >= 2)
    {
      v20 = v18 / v19;
      v21 = v18;
      v22 = v19;
      if (fabs(v19 / v18 + -1.0 / v20) < 0.01)
      {
        v21 = v20;
        if (v20 <= 999)
        {
          v21 = (round(v21 / 5.0) * 5.0);
        }

        v22 = 1;
      }

      if (v21)
      {
        v18 = v21;
        v19 = v22;
      }
    }

    v23 = objc_alloc_init(NSNumberFormatter);
    [v23 _extractor_setFormat:@"#0;0;#0"];
    v24 = [NSNumber numberWithLong:0];
    v25 = [v23 stringForObjectValue:v24];

    v26 = [NSNumber numberWithLong:v19];
    v27 = [v23 stringForObjectValue:v26];

    v28 = [NSNumber numberWithLong:v18];
    v29 = [v23 stringForObjectValue:v28];

    v30 = sub_1000B7874(@"kIKLocalized_RationalFormat");
    v5 = [NSMutableString stringWithString:v30];

    [v5 replaceOccurrencesOfString:@"%1" withString:v27 options:0 range:{0, objc_msgSend(v5, "length")}];
    [v5 replaceOccurrencesOfString:@"%2" withString:v29 options:0 range:{0, objc_msgSend(v5, "length")}];
  }

  return v5;
}

@end