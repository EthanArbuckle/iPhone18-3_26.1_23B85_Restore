@interface RoutePlanningTimingRefinementModel
- (BOOL)shouldShowHighlighted;
- (id)titleText;
- (void)_assertValidValue;
@end

@implementation RoutePlanningTimingRefinementModel

- (void)_assertValidValue
{
  v2 = [(RoutePlanningRefinementModel *)self value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v4 = sub_10006D178();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [NSString stringWithFormat:@"Wrong type"];
      v8 = 136316162;
      v9 = "[RoutePlanningTimingRefinementModel _assertValidValue]";
      v10 = 2080;
      v11 = "RoutePlanningTimingRefinementModel.m";
      v12 = 1024;
      v13 = 44;
      v14 = 2080;
      v15 = "[self.value isKindOfClass:[RoutePlanningTiming class]]";
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", &v8, 0x30u);
    }

    if (sub_100E03634())
    {
      v6 = sub_10006D178();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = +[NSThread callStackSymbols];
        v8 = 138412290;
        v9 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@", &v8, 0xCu);
      }
    }
  }
}

- (BOOL)shouldShowHighlighted
{
  v2 = [(RoutePlanningRefinementModel *)self value];
  v3 = [v2 isDepartNow];

  return v3 ^ 1;
}

- (id)titleText
{
  v2 = [(RoutePlanningRefinementModel *)self value];
  v3 = [RoutePlanningTimingFormatter textForTiming:v2];

  return v3;
}

@end