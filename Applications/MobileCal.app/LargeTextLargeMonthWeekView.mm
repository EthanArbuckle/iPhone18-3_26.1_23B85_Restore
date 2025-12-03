@interface LargeTextLargeMonthWeekView
+ (CGPoint)positionOfCircleInCellWithWidth:(double)width circleSize:(CGSize)size compressed:(BOOL)compressed containsFirstDayOfMonth:(BOOL)month;
+ (CGRect)frameForCircleWithDayFrame:(CGRect)frame dayLayerFrame:(CGRect)layerFrame numberString:(id)string overlayString:(id)overlayString compressed:(BOOL)compressed containsFirstDay:(BOOL)day;
+ (double)_yOffsetForRoundedRect:(BOOL)rect;
- (double)monthWeekScale;
@end

@implementation LargeTextLargeMonthWeekView

- (double)monthWeekScale
{
  v2 = objc_opt_class();

  [v2 eventScaleForNumberOfRows:4];
  return result;
}

+ (double)_yOffsetForRoundedRect:(BOOL)rect
{
  result = 5.0;
  if (rect)
  {
    [self headerHeight];
    return v4 + 5.0;
  }

  return result;
}

+ (CGRect)frameForCircleWithDayFrame:(CGRect)frame dayLayerFrame:(CGRect)layerFrame numberString:(id)string overlayString:(id)overlayString compressed:(BOOL)compressed containsFirstDay:(BOOL)day
{
  dayCopy = day;
  compressedCopy = compressed;
  height = layerFrame.size.height;
  width = layerFrame.size.width;
  y = layerFrame.origin.y;
  x = layerFrame.origin.x;
  overlayStringCopy = overlayString;
  stringCopy = string;
  [objc_opt_class() dayNumberFontSize:compressedCopy];
  v19 = v18;
  [objc_opt_class() dayNumberOverlayFontSize:compressedCopy];
  [CompactMonthWeekTodayCircle roundedRectSizeForNumberString:stringCopy overlayString:overlayStringCopy fontSize:v19 overlayFontSize:v20];
  v22 = v21;
  v24 = v23;

  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  CGRectGetMidX(v32);
  CalRoundToScreenScale();
  v26 = v25;
  [self _yOffsetForRoundedRect:dayCopy];
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

+ (CGPoint)positionOfCircleInCellWithWidth:(double)width circleSize:(CGSize)size compressed:(BOOL)compressed containsFirstDayOfMonth:(BOOL)month
{
  monthCopy = month;
  CalRoundToScreenScale();
  v9 = v8;
  [self _yOffsetForRoundedRect:monthCopy];
  v11 = v10;
  v12 = v9;
  result.y = v11;
  result.x = v12;
  return result;
}

@end