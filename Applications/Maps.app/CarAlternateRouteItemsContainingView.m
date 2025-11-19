@interface CarAlternateRouteItemsContainingView
- (CarAlternateRouteItemsContainingView)initWithDataSource:(id)a3;
- (id)focusItemsInRect:(CGRect)a3;
@end

@implementation CarAlternateRouteItemsContainingView

- (id)focusItemsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16.receiver = self;
  v16.super_class = CarAlternateRouteItemsContainingView;
  v8 = [(CarAlternateRouteItemsContainingView *)&v16 focusItemsInRect:?];
  v9 = [(CarAlternateRouteItemsContainingView *)self dataSource];
  v10 = [v9 focusableRouteItems];
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
  v12 = [v10 filteredArrayUsingPredicate:v11];
  v13 = [v8 arrayByAddingObjectsFromArray:v12];

  return v13;
}

- (CarAlternateRouteItemsContainingView)initWithDataSource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CarAlternateRouteItemsContainingView;
  v6 = [(CarAlternateRouteItemsContainingView *)&v9 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
  }

  return v7;
}

@end