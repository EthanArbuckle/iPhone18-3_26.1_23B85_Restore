@interface RoutePlanningFooterCollectionViewCell
+ (double)heightForItem:(id)item width:(double)width maximumHeight:(double)height;
- (RoutePlanningFooterCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)setItem:(id)item;
@end

@implementation RoutePlanningFooterCollectionViewCell

- (void)setItem:(id)item
{
  itemCopy = item;
  objc_storeStrong(&self->_item, item);
  v10 = itemCopy;
  commandSet = [v10 commandSet];
  footerView = [(RoutePlanningFooterCollectionViewCell *)self footerView];
  [footerView setVisibleCommandSet:commandSet];

  delegate = [v10 delegate];

  footerView2 = [(RoutePlanningFooterCollectionViewCell *)self footerView];
  [footerView2 setDelegate:delegate];
}

- (RoutePlanningFooterCollectionViewCell)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = RoutePlanningFooterCollectionViewCell;
  v3 = [(RoutePlanningFooterCollectionViewCell *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    [RoutingAppearanceManager configureBackgroundViewForStepCell:v3];
  }

  return v3;
}

+ (double)heightForItem:(id)item width:(double)width maximumHeight:(double)height
{
  v6 = qword_10195E638;
  itemCopy = item;
  if (v6 != -1)
  {
    dispatch_once(&qword_10195E638, &stru_101638040);
  }

  [qword_10195E640 setFrame:{0.0, 0.0, width, 1.79769313e308}];
  commandSet = [itemCopy commandSet];

  [qword_10195E640 setVisibleCommandSet:commandSet];
  [qword_10195E640 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  return v9;
}

@end