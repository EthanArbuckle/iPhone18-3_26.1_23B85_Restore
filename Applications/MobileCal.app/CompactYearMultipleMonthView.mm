@interface CompactYearMultipleMonthView
- (double)leftMarginAdjustment;
- (double)rightMarginAdjustment;
@end

@implementation CompactYearMultipleMonthView

- (double)leftMarginAdjustment
{
  v2 = EKUICurrentWindowSizeParadigmForViewHierarchy();
  result = 0.0;
  if (v2 == 32)
  {
    return -3.0;
  }

  return result;
}

- (double)rightMarginAdjustment
{
  v2 = EKUICurrentWindowSizeParadigmForViewHierarchy();
  result = 0.0;
  if (v2 == 32)
  {
    return -3.0;
  }

  return result;
}

@end