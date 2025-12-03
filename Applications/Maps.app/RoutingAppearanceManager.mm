@interface RoutingAppearanceManager
+ (id)backgroundViewWithLightMaterial:(int64_t)material darkColor:(id)color;
+ (id)customGrayBlurCellBackgroundView;
+ (id)customGrayBlurCellSelectedBackgroundView;
+ (void)_getBackgroundView:(id *)view selectedBackgroundView:(id *)backgroundView forCell:(id)cell;
+ (void)configureBackgroundViewForCell:(id)cell;
+ (void)configureBackgroundViewForStepCell:(id)cell;
+ (void)configureBackgroundViewsForOptionsCollectionViewCell:(id)cell;
+ (void)configureBackgroundViewsForOptionsTableViewCell:(id)cell;
@end

@implementation RoutingAppearanceManager

+ (void)_getBackgroundView:(id *)view selectedBackgroundView:(id *)backgroundView forCell:(id)cell
{
  cellCopy = cell;
  if (view)
  {
    v7 = [RoutePlanningOptionsCellBackgroundView alloc];
    [cellCopy bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = +[UIColor secondarySystemGroupedBackgroundColor];
    v17 = [(RoutePlanningOptionsCellBackgroundView *)v7 initWithFrame:v16 color:v9, v11, v13, v15];

    [(RoutePlanningOptionsCellBackgroundView *)v17 setAutoresizingMask:18];
    v18 = v17;
    *view = v17;
  }

  if (backgroundView)
  {
    v19 = [RoutePlanningOptionsCellBackgroundView alloc];
    [cellCopy bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = [UIColor colorNamed:@"RouteOptionsCellSelectedBackgroundColor"];
    v29 = [(RoutePlanningOptionsCellBackgroundView *)v19 initWithFrame:v28 color:v21, v23, v25, v27];

    [(RoutePlanningOptionsCellBackgroundView *)v29 setAutoresizingMask:18];
    v30 = v29;
    *backgroundView = v29;
  }
}

+ (void)configureBackgroundViewsForOptionsCollectionViewCell:(id)cell
{
  cellCopy = cell;
  if (sub_10000FA08(cellCopy) != 5)
  {
    backgroundView = [cellCopy backgroundView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v9 = 0;
      v10 = 0;
      [self _getBackgroundView:&v10 selectedBackgroundView:&v9 forCell:cellCopy];
      v7 = v10;
      v8 = v9;
      [cellCopy setBackgroundView:v7];
      [cellCopy setSelectedBackgroundView:v8];
    }
  }
}

+ (void)configureBackgroundViewsForOptionsTableViewCell:(id)cell
{
  cellCopy = cell;
  if (sub_10000FA08(cellCopy) != 5)
  {
    backgroundView = [cellCopy backgroundView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v9 = 0;
      v10 = 0;
      [self _getBackgroundView:&v10 selectedBackgroundView:&v9 forCell:cellCopy];
      v7 = v10;
      v8 = v9;
      [cellCopy setBackgroundView:v7];
      [cellCopy setSelectedBackgroundView:v8];
    }
  }
}

+ (void)configureBackgroundViewForStepCell:(id)cell
{
  cellCopy = cell;
  objc_initWeak(&location, cellCopy);
  if (sub_10000FA08(cellCopy) == 5)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100721FCC;
    v7[3] = &unk_1016618D8;
    v4 = &v8;
    objc_copyWeak(&v8, &location);
    [cellCopy _setBackgroundViewConfigurationProvider:v7];
  }

  else
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1007221D8;
    v5[3] = &unk_1016618D8;
    v4 = &v6;
    objc_copyWeak(&v6, &location);
    [cellCopy _setBackgroundViewConfigurationProvider:v5];
  }

  objc_destroyWeak(v4);
  objc_destroyWeak(&location);
}

+ (void)configureBackgroundViewForCell:(id)cell
{
  cellCopy = cell;
  if (sub_10000FA08(cellCopy) == 5)
  {
    objc_initWeak(&location, cellCopy);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10072239C;
    v4[3] = &unk_1016618D8;
    objc_copyWeak(&v5, &location);
    [cellCopy _setBackgroundViewConfigurationProvider:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

+ (id)backgroundViewWithLightMaterial:(int64_t)material darkColor:(id)color
{
  colorCopy = color;
  v6 = [[RoutingMaterialColorSwitchingView alloc] initWithLightMaterial:material darkColor:colorCopy];

  return v6;
}

+ (id)customGrayBlurCellSelectedBackgroundView
{
  v2 = [[BlurDarkeningBackgroundView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(BlurDarkeningBackgroundView *)v2 setAppearance:0];

  return v2;
}

+ (id)customGrayBlurCellBackgroundView
{
  v2 = [[BlurDarkeningBackgroundView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(BlurDarkeningBackgroundView *)v2 setAppearance:4];

  return v2;
}

@end