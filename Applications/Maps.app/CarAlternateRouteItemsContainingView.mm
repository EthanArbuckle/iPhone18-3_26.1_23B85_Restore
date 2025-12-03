@interface CarAlternateRouteItemsContainingView
- (CarAlternateRouteItemsContainingView)initWithDataSource:(id)source;
- (id)focusItemsInRect:(CGRect)rect;
@end

@implementation CarAlternateRouteItemsContainingView

- (id)focusItemsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v16.receiver = self;
  v16.super_class = CarAlternateRouteItemsContainingView;
  v8 = [(CarAlternateRouteItemsContainingView *)&v16 focusItemsInRect:?];
  dataSource = [(CarAlternateRouteItemsContainingView *)self dataSource];
  focusableRouteItems = [dataSource focusableRouteItems];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100674DCC;
  v15[3] = &unk_101625598;
  v15[4] = self;
  *&v15[5] = x;
  *&v15[6] = y;
  *&v15[7] = width;
  *&v15[8] = height;
  v11 = [NSPredicate predicateWithBlock:v15];
  v12 = [focusableRouteItems filteredArrayUsingPredicate:v11];
  v13 = [v8 arrayByAddingObjectsFromArray:v12];

  return v13;
}

- (CarAlternateRouteItemsContainingView)initWithDataSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = CarAlternateRouteItemsContainingView;
  v6 = [(CarAlternateRouteItemsContainingView *)&v9 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
  }

  return v7;
}

@end