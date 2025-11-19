@interface RouteStepItem
- (RouteStepItem)initWithCellClass:(Class)a3 state:(unint64_t)a4 metrics:(id)a5 context:(int64_t)a6 route:(id)a7 scale:(double)a8;
- (void)setHairlineLeadingInset:(double)a3;
- (void)setHairlineTrailingInset:(double)a3;
- (void)setScale:(double)a3;
- (void)setShowsHairline:(BOOL)a3;
- (void)setState:(unint64_t)a3;
- (void)setTrailingView:(id)a3;
- (void)setTraitCollection:(id)a3;
- (void)setUserInfo:(id)a3;
@end

@implementation RouteStepItem

- (void)setUserInfo:(id)a3
{
  v5 = a3;
  v6 = self->_userInfo;
  v7 = v5;
  if (v7 | v6)
  {
    v9 = v7;
    v8 = [v6 isEqual:v7];

    v7 = v9;
    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_userInfo, a3);
      [(RouteStepItem *)self reset];
      v7 = v9;
    }
  }
}

- (void)setHairlineTrailingInset:(double)a3
{
  if (vabdd_f64(self->_hairlineTrailingInset, a3) > 2.22044605e-16)
  {
    self->_hairlineTrailingInset = a3;
    [(RouteStepItem *)self reset];
  }
}

- (void)setHairlineLeadingInset:(double)a3
{
  if (vabdd_f64(self->_hairlineLeadingInset, a3) > 2.22044605e-16)
  {
    self->_hairlineLeadingInset = a3;
    [(RouteStepItem *)self reset];
  }
}

- (void)setShowsHairline:(BOOL)a3
{
  if (self->_showsHairline != a3)
  {
    self->_showsHairline = a3;
    [(RouteStepItem *)self reset];
  }
}

- (void)setTrailingView:(id)a3
{
  v5 = a3;
  if (self->_trailingView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_trailingView, a3);
    [(RouteStepItem *)self reset];
    v5 = v6;
  }
}

- (void)setState:(unint64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    [(RouteStepItem *)self reset];
  }
}

- (void)setScale:(double)a3
{
  if (vabdd_f64(self->_scale, a3) > 2.22044605e-16)
  {
    self->_scale = a3;
    [(RouteStepItem *)self reset];
  }
}

- (void)setTraitCollection:(id)a3
{
  v5 = a3;
  v6 = self->_traitCollection;
  v7 = v5;
  if (v7 | v6)
  {
    v9 = v7;
    v8 = [v6 isEqual:v7];

    v7 = v9;
    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_traitCollection, a3);
      [(RouteStepItem *)self reset];
      v7 = v9;
    }
  }
}

- (RouteStepItem)initWithCellClass:(Class)a3 state:(unint64_t)a4 metrics:(id)a5 context:(int64_t)a6 route:(id)a7 scale:(double)a8
{
  v15 = a5;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = RouteStepItem;
  v17 = [(RouteStepItem *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_cellClass, a3);
    v18->_state = a4;
    objc_storeStrong(&v18->_metrics, a5);
    v18->_context = a6;
    objc_storeStrong(&v18->_route, a7);
    v18->_scale = a8;
  }

  return v18;
}

@end