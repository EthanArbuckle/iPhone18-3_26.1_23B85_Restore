@interface RouteStepListTableCell
+ (double)heightForItem:(id)a3 width:(double)a4 maximumHeight:(double)a5;
- (RouteStepListTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setItem:(id)a3;
@end

@implementation RouteStepListTableCell

- (void)setItem:(id)a3
{
  v4 = a3;
  [(RouteStepListView *)self->_stepView setItem:v4];
  v11 = v4;
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

    v8 = [v6 backgroundColor];
    if (!v8)
    {
      v9 = [objc_opt_class() _fallbackBackgroundColor];
      [(UIView *)self->_backgroundView setBackgroundColor:v9];

      v10 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v8 = [objc_opt_class() _fallbackBackgroundColor];
  }

  v10 = v8;
  [(UIView *)self->_backgroundView setBackgroundColor:v8];
LABEL_9:
}

- (RouteStepListTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v24.receiver = self;
  v24.super_class = RouteStepListTableCell;
  v4 = [(RouteStepListTableCell *)&v24 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [(RouteStepListTableCell *)v4 setAccessibilityIdentifier:v6];

    v7 = objc_opt_new();
    backgroundView = v4->_backgroundView;
    v4->_backgroundView = v7;

    [(UIView *)v4->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [objc_opt_class() _fallbackBackgroundColor];
    [(UIView *)v4->_backgroundView setBackgroundColor:v9];

    [(RouteStepListTableCell *)v4 addSubview:v4->_backgroundView];
    LODWORD(v10) = 1148846080;
    v11 = [(UIView *)v4->_backgroundView _maps_constraintsEqualToEdgesOfView:v4 priority:v10];
    v12 = [v11 allConstraints];
    [NSLayoutConstraint activateConstraints:v12];

    v13 = [objc_msgSend(objc_opt_class() "stepViewClass")];
    v14 = [(RouteStepListTableCell *)v4 contentView];
    [v14 bounds];
    v15 = [v13 initWithFrame:?];
    stepView = v4->_stepView;
    v4->_stepView = v15;

    [(RouteStepListView *)v4->_stepView setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [(RouteStepListTableCell *)v4 contentView];
    [v17 addSubview:v4->_stepView];

    v18 = v4->_stepView;
    v19 = [(RouteStepListTableCell *)v4 contentView];
    LODWORD(v20) = 1148846080;
    v21 = [(RouteStepListView *)v18 _maps_constraintsEqualToEdgesOfView:v19 priority:v20];
    v22 = [v21 allConstraints];
    [NSLayoutConstraint activateConstraints:v22];
  }

  return v4;
}

+ (double)heightForItem:(id)a3 width:(double)a4 maximumHeight:(double)a5
{
  v7 = a3;
  [objc_msgSend(objc_opt_class() "stepViewClass")];
  v9 = v8;

  return v9;
}

@end