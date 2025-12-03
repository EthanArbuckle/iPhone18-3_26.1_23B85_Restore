@interface FIUIChartBarAccessibilityElement
+ (id)accessibilityElementsForBarSeries:(id)series;
- (CGPoint)barPoint;
- (CGRect)_accessibilityFrameStandardBar;
- (CGRect)_accessibilityFrameUniform;
- (CGRect)accessibilityFrame;
- (FIUIChartBarAccessibilityElement)initWithAccessibilityContainer:(id)container barSeries:(id)series index:(unint64_t)index plotPoint:(id)point;
- (id)accessibilityLabel;
- (id)barSeries;
@end

@implementation FIUIChartBarAccessibilityElement

- (FIUIChartBarAccessibilityElement)initWithAccessibilityContainer:(id)container barSeries:(id)series index:(unint64_t)index plotPoint:(id)point
{
  containerCopy = container;
  seriesCopy = series;
  pointCopy = point;
  v16.receiver = self;
  v16.super_class = FIUIChartBarAccessibilityElement;
  v13 = [(FIUIChartBarAccessibilityElement *)&v16 initWithAccessibilityContainer:containerCopy];
  [(FIUIChartBarAccessibilityElement *)v13 setBarSeries:seriesCopy];
  [(FIUIChartBarAccessibilityElement *)v13 setIndex:index];
  objc_opt_class();
  v14 = __UIAccessibilityCastAsClass();
  [v14 CGPointValue];
  [(FIUIChartBarAccessibilityElement *)v13 setBarPoint:?];

  return v13;
}

- (CGRect)accessibilityFrame
{
  if (accessibilityFrame_onceToken != -1)
  {
    [FIUIChartBarAccessibilityElement accessibilityFrame];
  }

  barSeries = [(FIUIChartBarAccessibilityElement *)self barSeries];
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(FIUIChartBarAccessibilityElement *)self _accessibilityFrameUniform];
  }

  else
  {
    [(FIUIChartBarAccessibilityElement *)self _accessibilityFrameStandardBar];
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)_accessibilityFrameUniform
{
  [(FIUIChartBarAccessibilityElement *)self barPoint];
  objc_opt_class();
  barSeries = [(FIUIChartBarAccessibilityElement *)self barSeries];
  v4 = __UIAccessibilityCastAsClass();

  [v4 safeDoubleForKey:@"_barWidth"];
  [v4 bounds];
  UIAccessibilityFrameForBounds();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)_accessibilityFrameStandardBar
{
  objc_opt_class();
  barSeries = [(FIUIChartBarAccessibilityElement *)self barSeries];
  v4 = __UIAccessibilityCastAsClass();

  [v4 safeDoubleForKey:@"_barWidth"];
  [v4 safeDoubleForKey:@"_barSpacing"];
  [(FIUIChartBarAccessibilityElement *)self index];
  [v4 bounds];
  UIAccessibilityFrameForBounds();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (id)accessibilityLabel
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  AXPerformSafeBlock();
  v3 = v17[5];
  _Block_object_dispose(&v16, 8);

  LOBYTE(v16) = 0;
  objc_opt_class();
  v4 = [v3 safeValueForKey:@"xValue"];
  v5 = __UIAccessibilityCastAsClass();

  if (v16 == 1)
  {
    abort();
  }

  [(FIUIChartBarAccessibilityElement *)self barPoint];
  accessibilityDelegate = [(FIUIChartBarAccessibilityElement *)self accessibilityDelegate];
  UIRoundToViewScale();
  v8 = v7;

  v9 = AXClockTimeStringForDate();
  v10 = [AXAttributedString axAttributedStringWithString:v9];
  [v10 setAttribute:kCFBooleanTrue forKey:UIAccessibilityTokenClockTime];
  barSeries = [(FIUIChartBarAccessibilityElement *)self barSeries];
  v12 = [v3 safeValueForKey:@"yValue"];
  v15 = [barSeries _accessibilityLabelForBarYPoint:v12 withValue:v8];
  v13 = __AXStringForVariables();

  return v13;
}

void __54__FIUIChartBarAccessibilityElement_accessibilityLabel__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) barSeries];
  v2 = [v5 _accessibilityChartPointForDataSetAtIndex:{objc_msgSend(*(a1 + 32), "index")}];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (id)accessibilityElementsForBarSeries:(id)series
{
  seriesCopy = series;
  objc_initWeak(&location, seriesCopy);
  v4 = +[NSMutableArray array];
  v12 = 0;
  objc_opt_class();
  v5 = [seriesCopy safeValueForKey:@"_plotPoints"];
  v6 = __UIAccessibilityCastAsClass();

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __70__FIUIChartBarAccessibilityElement_accessibilityElementsForBarSeries___block_invoke;
  v9[3] = &unk_8388;
  objc_copyWeak(&v11, &location);
  v7 = v4;
  v10 = v7;
  [v6 enumerateObjectsUsingBlock:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

void __70__FIUIChartBarAccessibilityElement_accessibilityElementsForBarSeries___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [FIUIChartBarAccessibilityElement alloc];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [(FIUIChartBarAccessibilityElement *)v6 initWithAccessibilityContainer:WeakRetained barSeries:WeakRetained index:a3 plotPoint:v5];

  [*(a1 + 32) addObject:v8];
}

- (CGPoint)barPoint
{
  x = self->_barPoint.x;
  y = self->_barPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)barSeries
{
  WeakRetained = objc_loadWeakRetained(&self->_barSeries);

  return WeakRetained;
}

@end