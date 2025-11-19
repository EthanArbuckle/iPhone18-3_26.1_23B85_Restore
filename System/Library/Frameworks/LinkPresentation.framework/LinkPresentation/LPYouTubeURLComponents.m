@interface LPYouTubeURLComponents
+ (BOOL)parseYouTubeTimeFormat:(id)a3 outTime:(double *)a4;
@end

@implementation LPYouTubeURLComponents

+ (BOOL)parseYouTubeTimeFormat:(id)a3 outTime:(double *)a4
{
  v5 = a3;
  *a4 = 0.0;
  v6 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:v5];
  v9 = 0;
  if (([v6 scanUnsignedLongLong:&v9] & 1) == 0)
  {
    goto LABEL_10;
  }

  if (![v6 scanString:@"h" intoString:0])
  {
LABEL_5:
    if (![v6 scanString:@"m" intoString:0])
    {
      goto LABEL_9;
    }

    *a4 = *a4 + (60 * v9);
    if ([v6 isAtEnd])
    {
      goto LABEL_7;
    }

    if ([v6 scanUnsignedLongLong:&v9])
    {
LABEL_9:
      [v6 scanString:@"s" intoString:0];
      *a4 = *a4 + v9;
      v7 = [v6 isAtEnd];
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  *a4 = *a4 + (3600 * v9);
  if (([v6 isAtEnd] & 1) == 0)
  {
    if (![v6 scanUnsignedLongLong:&v9])
    {
      goto LABEL_10;
    }

    goto LABEL_5;
  }

LABEL_7:
  v7 = 1;
LABEL_11:

  return v7;
}

@end