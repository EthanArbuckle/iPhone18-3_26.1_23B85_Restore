@interface BUIChartViewConfig.CachedNumberFormatter
- (id)stringFromNumber:(id)number;
@end

@implementation BUIChartViewConfig.CachedNumberFormatter

- (id)stringFromNumber:(id)number
{
  numberCopy = number;
  selfCopy = self;
  sub_58CE4(numberCopy);
  v7 = v6;

  if (v7)
  {
    v8 = sub_117170();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end