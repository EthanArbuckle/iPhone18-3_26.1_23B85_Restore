@interface RoutePlanningFooterCollectionViewCell
+ (double)heightForItem:(id)a3 width:(double)a4 maximumHeight:(double)a5;
- (RoutePlanningFooterCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)setItem:(id)a3;
@end

@implementation RoutePlanningFooterCollectionViewCell

- (void)setItem:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_item, a3);
  v10 = v5;
  v6 = [v10 commandSet];
  v7 = [(RoutePlanningFooterCollectionViewCell *)self footerView];
  [v7 setVisibleCommandSet:v6];

  v8 = [v10 delegate];

  v9 = [(RoutePlanningFooterCollectionViewCell *)self footerView];
  [v9 setDelegate:v8];
}

- (RoutePlanningFooterCollectionViewCell)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = RoutePlanningFooterCollectionViewCell;
  v3 = [(RoutePlanningFooterCollectionViewCell *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    [RoutingAppearanceManager configureBackgroundViewForStepCell:v3];
  }

  return v3;
}

+ (double)heightForItem:(id)a3 width:(double)a4 maximumHeight:(double)a5
{
  v6 = qword_10195E638;
  v7 = a3;
  if (v6 != -1)
  {
    dispatch_once(&qword_10195E638, &stru_101638040);
  }

  [qword_10195E640 setFrame:{0.0, 0.0, a4, 1.79769313e308}];
  v8 = [v7 commandSet];

  [qword_10195E640 setVisibleCommandSet:v8];
  [qword_10195E640 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  return v9;
}

@end