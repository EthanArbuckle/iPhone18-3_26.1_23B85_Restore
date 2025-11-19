@interface RouteStepListCollectionCell
+ (double)heightForItem:(id)a3 width:(double)a4 maximumHeight:(double)a5;
- (RouteStepListCollectionCell)initWithFrame:(CGRect)a3;
@end

@implementation RouteStepListCollectionCell

- (RouteStepListCollectionCell)initWithFrame:(CGRect)a3
{
  v20.receiver = self;
  v20.super_class = RouteStepListCollectionCell;
  v3 = [(RouteStepListCollectionCell *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(RouteStepListCollectionCell *)v3 setAccessibilityIdentifier:v5];

    v6 = [objc_msgSend(objc_opt_class() "stepViewClass")];
    v7 = [(RouteStepListCollectionCell *)v3 contentView];
    [v7 bounds];
    v8 = [v6 initWithFrame:?];
    stepView = v3->_stepView;
    v3->_stepView = v8;

    [(RouteStepListView *)v3->_stepView setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [(RouteStepListCollectionCell *)v3 contentView];
    [v10 addSubview:v3->_stepView];

    v11 = v3->_stepView;
    v12 = [(RouteStepListCollectionCell *)v3 contentView];
    LODWORD(v13) = 1148846080;
    v14 = [(RouteStepListView *)v11 _maps_constraintsEqualToEdgesOfView:v12 priority:v13];
    v15 = [v14 allConstraints];
    [NSLayoutConstraint activateConstraints:v15];

    v16 = [(RouteStepListView *)v3->_stepView heightAnchor];
    v17 = [v16 constraintEqualToConstant:0.0];
    heightConstraint = v3->_heightConstraint;
    v3->_heightConstraint = v17;
  }

  return v3;
}

+ (double)heightForItem:(id)a3 width:(double)a4 maximumHeight:(double)a5
{
  v7 = a3;
  [objc_msgSend(objc_opt_class() "stepViewClass")];
  v9 = v8;

  return v9;
}

@end