@interface RoutePlanningRefinementModel
- (RoutePlanningRefinementDelegate)delegate;
- (RoutePlanningRefinementModel)initWithDelegate:(id)delegate value:(id)value;
- (id)identifier;
- (void)setValue:(id)value;
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

- (void)setValue:(id)value
{
  valueCopy = value;
  if (self->_value != valueCopy)
  {
    v6 = valueCopy;
    objc_storeStrong(&self->_value, value);
    [(RoutePlanningRefinementModel *)self _assertValidValue];
    valueCopy = v6;
  }
}

- (RoutePlanningRefinementModel)initWithDelegate:(id)delegate value:(id)value
{
  delegateCopy = delegate;
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = RoutePlanningRefinementModel;
  v8 = [(RoutePlanningRefinementModel *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeStrong(&v9->_value, value);
    [(RoutePlanningRefinementModel *)v9 _assertValidValue];
  }

  return v9;
}

@end