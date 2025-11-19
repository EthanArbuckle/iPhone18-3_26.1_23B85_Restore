@interface CRLNumberParser
+ (BOOL)numberValueFromString:(id)a3 locale:(id)a4 outDoubleValue:(double *)a5;
@end

@implementation CRLNumberParser

+ (BOOL)numberValueFromString:(id)a3 locale:(id)a4 outDoubleValue:(double *)a5
{
  if (a5)
  {
    [a3 doubleValue];
    *a5 = v6;
  }

  return a5 != 0;
}

@end