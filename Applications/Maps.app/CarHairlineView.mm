@interface CarHairlineView
+ (id)hairlineViewAlongAxis:(int64_t)axis;
+ (id)hairlineViewsInView:(id)view;
+ (void)removeHairlineViewsFromView:(id)view;
- (CGSize)intrinsicContentSize;
- (CarHairlineView)initWithAxis:(int64_t)axis;
- (void)didMoveToWindow;
@end

@implementation CarHairlineView

- (void)didMoveToWindow
{
  v8.receiver = self;
  v8.super_class = CarHairlineView;
  [(CarHairlineView *)&v8 didMoveToWindow];
  window = [(CarHairlineView *)self window];

  if (window)
  {
    traitCollection = [(CarHairlineView *)self traitCollection];
    [traitCollection displayScale];
    if (v5 <= 0.0)
    {
      [(NSLayoutConstraint *)self->_constraint setConstant:1.0];
    }

    else
    {
      traitCollection2 = [(CarHairlineView *)self traitCollection];
      [traitCollection2 displayScale];
      [(NSLayoutConstraint *)self->_constraint setConstant:1.0 / v7];
    }
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = UIViewNoIntrinsicMetric;
  axis = self->_axis;
  if (axis)
  {
    if (axis == 1)
    {
      [(NSLayoutConstraint *)self->_constraint constant];
      v4 = UIViewNoIntrinsicMetric;
      v2 = v5;
    }

    else
    {
      v4 = UIViewNoIntrinsicMetric;
    }
  }

  else
  {
    [(NSLayoutConstraint *)self->_constraint constant];
    v4 = v6;
  }

  v7 = v2;
  result.height = v4;
  result.width = v7;
  return result;
}

- (CarHairlineView)initWithAxis:(int64_t)axis
{
  v4 = [(CarHairlineView *)self initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v5 = v4;
  if (v4)
  {
    v4->_axis = axis;
    [(CarHairlineView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [UIColor colorWithWhite:0.5 alpha:0.5];
    [(CarHairlineView *)v5 setBackgroundColor:v6];

    axis = v5->_axis;
    if (axis)
    {
      if (axis != 1)
      {
LABEL_7:
        [(CarHairlineView *)v5 addConstraint:v5->_constraint];
        return v5;
      }

      widthAnchor = [(CarHairlineView *)v5 widthAnchor];
    }

    else
    {
      widthAnchor = [(CarHairlineView *)v5 heightAnchor];
    }

    v9 = widthAnchor;
    v10 = [widthAnchor constraintEqualToConstant:1.0];
    constraint = v5->_constraint;
    v5->_constraint = v10;

    goto LABEL_7;
  }

  return v5;
}

+ (void)removeHairlineViewsFromView:(id)view
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  subviews = [view subviews];
  v4 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(subviews);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 removeFromSuperview];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

+ (id)hairlineViewsInView:(id)view
{
  subviews = [view subviews];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100817D60;
  v8[3] = &unk_10162B4A0;
  v8[4] = self;
  v5 = [NSPredicate predicateWithBlock:v8];
  v6 = [subviews filteredArrayUsingPredicate:v5];

  return v6;
}

+ (id)hairlineViewAlongAxis:(int64_t)axis
{
  v3 = [[self alloc] initWithAxis:axis];

  return v3;
}

@end