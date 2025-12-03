@interface RouteStepItem
- (RouteStepItem)initWithCellClass:(Class)class state:(unint64_t)state metrics:(id)metrics context:(int64_t)context route:(id)route scale:(double)scale;
- (void)setHairlineLeadingInset:(double)inset;
- (void)setHairlineTrailingInset:(double)inset;
- (void)setScale:(double)scale;
- (void)setShowsHairline:(BOOL)hairline;
- (void)setState:(unint64_t)state;
- (void)setTrailingView:(id)view;
- (void)setTraitCollection:(id)collection;
- (void)setUserInfo:(id)info;
@end

@implementation RouteStepItem

- (void)setUserInfo:(id)info
{
  infoCopy = info;
  v6 = self->_userInfo;
  v7 = infoCopy;
  if (v7 | v6)
  {
    v9 = v7;
    v8 = [v6 isEqual:v7];

    v7 = v9;
    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_userInfo, info);
      [(RouteStepItem *)self reset];
      v7 = v9;
    }
  }
}

- (void)setHairlineTrailingInset:(double)inset
{
  if (vabdd_f64(self->_hairlineTrailingInset, inset) > 2.22044605e-16)
  {
    self->_hairlineTrailingInset = inset;
    [(RouteStepItem *)self reset];
  }
}

- (void)setHairlineLeadingInset:(double)inset
{
  if (vabdd_f64(self->_hairlineLeadingInset, inset) > 2.22044605e-16)
  {
    self->_hairlineLeadingInset = inset;
    [(RouteStepItem *)self reset];
  }
}

- (void)setShowsHairline:(BOOL)hairline
{
  if (self->_showsHairline != hairline)
  {
    self->_showsHairline = hairline;
    [(RouteStepItem *)self reset];
  }
}

- (void)setTrailingView:(id)view
{
  viewCopy = view;
  if (self->_trailingView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_trailingView, view);
    [(RouteStepItem *)self reset];
    viewCopy = v6;
  }
}

- (void)setState:(unint64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    [(RouteStepItem *)self reset];
  }
}

- (void)setScale:(double)scale
{
  if (vabdd_f64(self->_scale, scale) > 2.22044605e-16)
  {
    self->_scale = scale;
    [(RouteStepItem *)self reset];
  }
}

- (void)setTraitCollection:(id)collection
{
  collectionCopy = collection;
  v6 = self->_traitCollection;
  v7 = collectionCopy;
  if (v7 | v6)
  {
    v9 = v7;
    v8 = [v6 isEqual:v7];

    v7 = v9;
    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_traitCollection, collection);
      [(RouteStepItem *)self reset];
      v7 = v9;
    }
  }
}

- (RouteStepItem)initWithCellClass:(Class)class state:(unint64_t)state metrics:(id)metrics context:(int64_t)context route:(id)route scale:(double)scale
{
  metricsCopy = metrics;
  routeCopy = route;
  v20.receiver = self;
  v20.super_class = RouteStepItem;
  v17 = [(RouteStepItem *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_cellClass, class);
    v18->_state = state;
    objc_storeStrong(&v18->_metrics, metrics);
    v18->_context = context;
    objc_storeStrong(&v18->_route, route);
    v18->_scale = scale;
  }

  return v18;
}

@end