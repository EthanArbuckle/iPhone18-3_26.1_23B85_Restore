@interface LargeTextLargeMonthWeekView
+ (CGPoint)positionOfCircleInCellWithWidth:(double)a3 circleSize:(CGSize)a4 compressed:(BOOL)a5 containsFirstDayOfMonth:(BOOL)a6;
+ (CGRect)frameForCircleWithDayFrame:(CGRect)a3 dayLayerFrame:(CGRect)a4 numberString:(id)a5 overlayString:(id)a6 compressed:(BOOL)a7 containsFirstDay:(BOOL)a8;
+ (double)_yOffsetForRoundedRect:(BOOL)a3;
- (double)monthWeekScale;
@end

@implementation LargeTextLargeMonthWeekView

- (double)monthWeekScale
{
  v2 = objc_opt_class();

  [v2 eventScaleForNumberOfRows:4];
  return result;
}

+ (double)_yOffsetForRoundedRect:(BOOL)a3
{
  result = 5.0;
  if (a3)
  {
    [a1 headerHeight];
    return v4 + 5.0;
  }

  return result;
}

+ (CGRect)frameForCircleWithDayFrame:(CGRect)a3 dayLayerFrame:(CGRect)a4 numberString:(id)a5 overlayString:(id)a6 compressed:(BOOL)a7 containsFirstDay:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v16 = a6;
  v17 = a5;
  [objc_opt_class() dayNumberFontSize:v9];
  v19 = v18;
  [objc_opt_class() dayNumberOverlayFontSize:v9];
  [CompactMonthWeekTodayCircle roundedRectSizeForNumberString:v17 overlayString:v16 fontSize:v19 overlayFontSize:v20];
  v22 = v21;
  v24 = v23;

  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  CGRectGetMidX(v32);
  CalRoundToScreenScale();
  v26 = v25;
  [a1 _yOffsetForRoundedRect:v8];
  v28 = v27;
  v29 = v26;
  v30 = v22;
  v31 = v24;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v28;
  result.origin.x = v29;
  return result;
}

+ (CGPoint)positionOfCircleInCellWithWidth:(double)a3 circleSize:(CGSize)a4 compressed:(BOOL)a5 containsFirstDayOfMonth:(BOOL)a6
{
  v6 = a6;
  CalRoundToScreenScale();
  v9 = v8;
  [a1 _yOffsetForRoundedRect:v6];
  v11 = v10;
  v12 = v9;
  result.y = v11;
  result.x = v12;
  return result;
}

@end