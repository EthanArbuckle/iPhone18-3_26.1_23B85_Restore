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
    return [NSMutableString stringWithFormat:@"%@", self];
  }

  v6 = 0;
  v7 = 1;
  v8 = v3;
  v9 = 1;
  while (1)
  {
    v10 = v9;
    v11 = v4;
    v12 = v8;
    v4 = v7 + v4 * v8;
    if (v4 >= 100001)
    {
      v4 = v11;
      goto LABEL_10;
    }

    v9 = v6 + v9 * v12;
    if (v8 == v12)
    {
      break;
    }

    v8 = 1.0 / (v8 - v12);
    v7 = v11;
    v6 = v10;
    if (v8 > 2147483650.0)
    {
      goto LABEL_10;
    }
  }

  v7 = v11;
  v6 = v10;
LABEL_10:
  v13 = (100000 - v7) / v4;
  v14 = v6 + v13 * v9;
  v15 = v7 + v13 * v4;
  v16 = vabdd_f64(v3, v9 / v4);
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
    v19 = v9;
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

  if (qword_100008488 != -1)
  {
    sub_100002048();
  }

  [qword_100008470 setFormat:@"#0;0;#0"];
  [qword_100008478 setFormat:@"#0;0;#0"];
  [qword_100008480 setFormat:@"#0;0;#0"];
  [qword_100008470 stringForObjectValue:{+[NSNumber numberWithLong:](NSNumber, "numberWithLong:", 0)}];
  v23 = [qword_100008470 stringForObjectValue:{+[NSNumber numberWithLong:](NSNumber, "numberWithLong:", v19)}];
  v24 = [qword_100008470 stringForObjectValue:{+[NSNumber numberWithLong:](NSNumber, "numberWithLong:", v18)}];
  v25 = [NSMutableString stringWithString:@"%1/%2"];
  [(NSMutableString *)v25 replaceOccurrencesOfString:@"%1" withString:v23 options:0 range:0, [(NSMutableString *)v25 length]];
  [(NSMutableString *)v25 replaceOccurrencesOfString:@"%2" withString:v24 options:0 range:0, [(NSMutableString *)v25 length]];
  return v25;
}

@end