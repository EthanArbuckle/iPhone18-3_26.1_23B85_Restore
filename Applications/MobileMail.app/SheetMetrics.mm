@interface SheetMetrics
+ (CGRect)frameForPresentedSheetIn:(id)in;
+ (double)cornerRadius;
@end

@implementation SheetMetrics

+ (CGRect)frameForPresentedSheetIn:(id)in
{
  inCopy = in;
  [inCopy bounds];
  v5 = v4;
  v7 = v6;
  _UISheetPageSize();
  v9 = v8;
  v11 = v10;
  v12 = v5 - v8;
  v13 = v7 - v10;

  v14 = v12;
  v15 = v13;
  v16 = v9;
  v17 = v11;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

+ (double)cornerRadius
{
  v2 = MUISolariumFeatureEnabled();
  result = _UISheetCornerRadius;
  if (v2)
  {
    return 38.0;
  }

  return result;
}

@end