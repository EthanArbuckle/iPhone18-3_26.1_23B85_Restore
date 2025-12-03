@interface RouteStepListCollectionCell
+ (double)heightForItem:(id)item width:(double)width maximumHeight:(double)height;
- (RouteStepListCollectionCell)initWithFrame:(CGRect)frame;
@end

@implementation RouteStepListCollectionCell

- (RouteStepListCollectionCell)initWithFrame:(CGRect)frame
{
  v20.receiver = self;
  v20.super_class = RouteStepListCollectionCell;
  v3 = [(RouteStepListCollectionCell *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(RouteStepListCollectionCell *)v3 setAccessibilityIdentifier:v5];

    v6 = [objc_msgSend(objc_opt_class() "stepViewClass")];
    contentView = [(RouteStepListCollectionCell *)v3 contentView];
    [contentView bounds];
    v8 = [v6 initWithFrame:?];
    stepView = v3->_stepView;
    v3->_stepView = v8;

    [(RouteStepListView *)v3->_stepView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(RouteStepListCollectionCell *)v3 contentView];
    [contentView2 addSubview:v3->_stepView];

    v11 = v3->_stepView;
    contentView3 = [(RouteStepListCollectionCell *)v3 contentView];
    LODWORD(v13) = 1148846080;
    v14 = [(RouteStepListView *)v11 _maps_constraintsEqualToEdgesOfView:contentView3 priority:v13];
    allConstraints = [v14 allConstraints];
    [NSLayoutConstraint activateConstraints:allConstraints];

    heightAnchor = [(RouteStepListView *)v3->_stepView heightAnchor];
    v17 = [heightAnchor constraintEqualToConstant:0.0];
    heightConstraint = v3->_heightConstraint;
    v3->_heightConstraint = v17;
  }

  return v3;
}

+ (double)heightForItem:(id)item width:(double)width maximumHeight:(double)height
{
  itemCopy = item;
  [objc_msgSend(objc_opt_class() "stepViewClass")];
  v9 = v8;

  return v9;
}

@end