@interface CRLNumberParser
+ (BOOL)numberValueFromString:(id)string locale:(id)locale outDoubleValue:(double *)value;
@end

@implementation CRLNumberParser

+ (BOOL)numberValueFromString:(id)string locale:(id)locale outDoubleValue:(double *)value
{
  if (value)
  {
    [string doubleValue];
    *value = v6;
  }

  return value != 0;
}

@end