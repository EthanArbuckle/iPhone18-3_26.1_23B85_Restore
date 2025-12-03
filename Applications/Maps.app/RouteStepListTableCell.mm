@interface RouteStepListTableCell
+ (double)heightForItem:(id)item width:(double)width maximumHeight:(double)height;
- (RouteStepListTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setItem:(id)item;
@end

@implementation RouteStepListTableCell

- (void)setItem:(id)item
{
  itemCopy = item;
  [(RouteStepListView *)self->_stepView setItem:itemCopy];
  v11 = itemCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v11;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = +[UIColor clearColor];
    [(RouteStepListView *)self->_stepView setBackgroundColor:v7];

    backgroundColor = [v6 backgroundColor];
    if (!backgroundColor)
    {
      _fallbackBackgroundColor = [objc_opt_class() _fallbackBackgroundColor];
      [(UIView *)self->_backgroundView setBackgroundColor:_fallbackBackgroundColor];

      v10 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    backgroundColor = [objc_opt_class() _fallbackBackgroundColor];
  }

  v10 = backgroundColor;
  [(UIView *)self->_backgroundView setBackgroundColor:backgroundColor];
LABEL_9:
}

- (RouteStepListTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v24.receiver = self;
  v24.super_class = RouteStepListTableCell;
  v4 = [(RouteStepListTableCell *)&v24 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [(RouteStepListTableCell *)v4 setAccessibilityIdentifier:v6];

    v7 = objc_opt_new();
    backgroundView = v4->_backgroundView;
    v4->_backgroundView = v7;

    [(UIView *)v4->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    _fallbackBackgroundColor = [objc_opt_class() _fallbackBackgroundColor];
    [(UIView *)v4->_backgroundView setBackgroundColor:_fallbackBackgroundColor];

    [(RouteStepListTableCell *)v4 addSubview:v4->_backgroundView];
    LODWORD(v10) = 1148846080;
    v11 = [(UIView *)v4->_backgroundView _maps_constraintsEqualToEdgesOfView:v4 priority:v10];
    allConstraints = [v11 allConstraints];
    [NSLayoutConstraint activateConstraints:allConstraints];

    v13 = [objc_msgSend(objc_opt_class() "stepViewClass")];
    contentView = [(RouteStepListTableCell *)v4 contentView];
    [contentView bounds];
    v15 = [v13 initWithFrame:?];
    stepView = v4->_stepView;
    v4->_stepView = v15;

    [(RouteStepListView *)v4->_stepView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(RouteStepListTableCell *)v4 contentView];
    [contentView2 addSubview:v4->_stepView];

    v18 = v4->_stepView;
    contentView3 = [(RouteStepListTableCell *)v4 contentView];
    LODWORD(v20) = 1148846080;
    v21 = [(RouteStepListView *)v18 _maps_constraintsEqualToEdgesOfView:contentView3 priority:v20];
    allConstraints2 = [v21 allConstraints];
    [NSLayoutConstraint activateConstraints:allConstraints2];
  }

  return v4;
}

+ (double)heightForItem:(id)item width:(double)width maximumHeight:(double)height
{
  itemCopy = item;
  [objc_msgSend(objc_opt_class() "stepViewClass")];
  v9 = v8;

  return v9;
}

@end