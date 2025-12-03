@interface LPYouTubeURLComponents
+ (BOOL)parseYouTubeTimeFormat:(id)format outTime:(double *)time;
@end

@implementation LPYouTubeURLComponents

+ (BOOL)parseYouTubeTimeFormat:(id)format outTime:(double *)time
{
  formatCopy = format;
  *time = 0.0;
  v6 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:formatCopy];
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

    *time = *time + (60 * v9);
    if ([v6 isAtEnd])
    {
      goto LABEL_7;
    }

    if ([v6 scanUnsignedLongLong:&v9])
    {
LABEL_9:
      [v6 scanString:@"s" intoString:0];
      *time = *time + v9;
      isAtEnd = [v6 isAtEnd];
      goto LABEL_11;
    }

LABEL_10:
    isAtEnd = 0;
    goto LABEL_11;
  }

  *time = *time + (3600 * v9);
  if (([v6 isAtEnd] & 1) == 0)
  {
    if (![v6 scanUnsignedLongLong:&v9])
    {
      goto LABEL_10;
    }

    goto LABEL_5;
  }

LABEL_7:
  isAtEnd = 1;
LABEL_11:

  return isAtEnd;
}

@end