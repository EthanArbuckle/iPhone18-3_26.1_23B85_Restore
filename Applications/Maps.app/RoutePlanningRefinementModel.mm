@interface RoutePlanningRefinementModel
- (RoutePlanningRefinementDelegate)delegate;
- (RoutePlanningRefinementModel)initWithDelegate:(id)a3 value:(id)a4;
- (id)identifier;
- (void)setValue:(id)a3;
@end

@implementation RoutePlanningRefinementModel

- (RoutePlanningRefinementDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)identifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)setValue:(id)a3
{
  v5 = a3;
  if (self->_value != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_value, a3);
    [(RoutePlanningRefinementModel *)self _assertValidValue];
    v5 = v6;
  }
}

- (RoutePlanningRefinementModel)initWithDelegate:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = RoutePlanningRefinementModel;
  v8 = [(RoutePlanningRefinementModel *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    objc_storeStrong(&v9->_value, a4);
    [(RoutePlanningRefinementModel *)v9 _assertValidValue];
  }

  return v9;
}

@end