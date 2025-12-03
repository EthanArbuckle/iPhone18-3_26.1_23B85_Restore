@interface NSNumberFormatter
- (void)_extractor_setFormat:(id)format;
@end

@implementation NSNumberFormatter

- (void)_extractor_setFormat:(id)format
{
  v13 = [format componentsSeparatedByString:@""];;
  v4 = [v13 count];
  if (v4 == 3)
  {
    v11 = [v13 objectAtIndex:0];
    [(NSNumberFormatter *)self setPositiveFormat:v11];

    v12 = [v13 objectAtIndex:2];
    [(NSNumberFormatter *)self setNegativeFormat:v12];

    v10 = [v13 objectAtIndex:1];
  }

  else
  {
    if (v4 == 2)
    {
      v8 = [v13 objectAtIndex:0];
      [(NSNumberFormatter *)self setPositiveFormat:v8];

      v6 = [v13 objectAtIndex:1];
      [(NSNumberFormatter *)self setNegativeFormat:v6];
    }

    else
    {
      if (v4 != 1)
      {
        goto LABEL_9;
      }

      v5 = [v13 objectAtIndex:0];
      [(NSNumberFormatter *)self setPositiveFormat:v5];

      v6 = [v13 objectAtIndex:0];
      v7 = [@"-" stringByAppendingString:v6];
      [(NSNumberFormatter *)self setNegativeFormat:v7];
    }

    v9 = [NSNumber numberWithDouble:1.0e-100];
    v10 = [(NSNumberFormatter *)self stringForObjectValue:v9];
  }

  [(NSNumberFormatter *)self setZeroSymbol:v10];

LABEL_9:
}

@end