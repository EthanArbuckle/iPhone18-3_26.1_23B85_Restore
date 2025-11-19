@interface MapsScrollableStackView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3;
- (MapsScrollableStackView)initWithArrangedSubviews:(id)a3;
- (id)_constraints;
- (void)_setupViewsWithSubviews:(id)a3;
- (void)_updateConstraintConstants;
- (void)_updateOrientationWithNewAxis:(int64_t)a3;
- (void)adjustedContentInsetDidChange;
- (void)setAlignment:(int64_t)a3;
- (void)setAxis:(int64_t)a3;
- (void)setDistribution:(int64_t)a3;
- (void)setFittingSizePriority:(float)a3;
- (void)setSpacing:(double)a3;
@end

@implementation MapsScrollableStackView

- (void)_updateConstraintConstants
{
  [(MapsScrollableStackView *)self adjustedContentInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(MapsScrollableStackView *)self axis];
  v12 = 0.0;
  v13 = v4 + v8;
  if (v11)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v6 + v10;
  }

  if (!v11)
  {
    v12 = v4 + v8;
  }

  if (v11 == 1)
  {
    v15 = v6 + v10;
  }

  else
  {
    v13 = v14;
    v15 = v12;
  }

  [(NSLayoutConstraint *)self->_distributionConstraint setConstant:-v13];
  alignmentConstraint = self->_alignmentConstraint;

  [(NSLayoutConstraint *)alignmentConstraint setConstant:-v15];
}

- (id)_constraints
{
  v3 = +[NSMutableArray array];
  v4 = v3;
  if (self->_distributionConstraint)
  {
    [v3 addObject:?];
  }

  if (self->_alignmentConstraint)
  {
    [v4 addObject:?];
  }

  v5 = [v4 copy];

  return v5;
}

- (void)_updateOrientationWithNewAxis:(int64_t)a3
{
  v5 = [(MapsScrollableStackView *)self _constraints];
  [NSLayoutConstraint deactivateConstraints:v5];

  distributionConstraint = self->_distributionConstraint;
  self->_distributionConstraint = 0;

  alignmentConstraint = self->_alignmentConstraint;
  self->_alignmentConstraint = 0;

  [(UIStackView *)self->_stackView setAxis:a3];
  v8 = [(MapsScrollableStackView *)self axis];
  if (v8 == 1)
  {
    if (self->_fittingSizePriority > 0.0)
    {
      v16 = [(UIStackView *)self->_stackView heightAnchor];
      v17 = [(MapsScrollableStackView *)self heightAnchor];
      v18 = [v16 constraintEqualToAnchor:v17];
      v19 = self->_distributionConstraint;
      self->_distributionConstraint = v18;

      *&v20 = self->_fittingSizePriority;
      [(NSLayoutConstraint *)self->_distributionConstraint setPriority:v20];
    }

    v14 = [(UIStackView *)self->_stackView widthAnchor];
    v15 = [(MapsScrollableStackView *)self widthAnchor];
  }

  else
  {
    if (v8)
    {
      goto LABEL_10;
    }

    if (self->_fittingSizePriority > 0.0)
    {
      v9 = [(UIStackView *)self->_stackView widthAnchor];
      v10 = [(MapsScrollableStackView *)self widthAnchor];
      v11 = [v9 constraintEqualToAnchor:v10];
      v12 = self->_distributionConstraint;
      self->_distributionConstraint = v11;

      *&v13 = self->_fittingSizePriority;
      [(NSLayoutConstraint *)self->_distributionConstraint setPriority:v13];
    }

    v14 = [(UIStackView *)self->_stackView heightAnchor];
    v15 = [(MapsScrollableStackView *)self heightAnchor];
  }

  v21 = v15;
  v22 = [v14 constraintEqualToAnchor:v15];
  v23 = self->_alignmentConstraint;
  self->_alignmentConstraint = v22;

LABEL_10:
  [(MapsScrollableStackView *)self _updateConstraintConstants];
  v24 = [(MapsScrollableStackView *)self _constraints];
  [NSLayoutConstraint activateConstraints:v24];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3
{
  [(UIStackView *)self->_stackView systemLayoutSizeFittingSize:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)adjustedContentInsetDidChange
{
  v3.receiver = self;
  v3.super_class = MapsScrollableStackView;
  [(MapsScrollableStackView *)&v3 adjustedContentInsetDidChange];
  [(MapsScrollableStackView *)self _updateConstraintConstants];
}

- (void)setFittingSizePriority:(float)a3
{
  if (self->_fittingSizePriority != a3)
  {
    self->_fittingSizePriority = a3;
    v5 = [(MapsScrollableStackView *)self axis];

    [(MapsScrollableStackView *)self _updateOrientationWithNewAxis:v5];
  }
}

- (void)setSpacing:(double)a3
{
  [(MapsScrollableStackView *)self spacing];
  if (v5 != a3)
  {
    stackView = self->_stackView;

    [(UIStackView *)stackView setSpacing:a3];
  }
}

- (void)setAxis:(int64_t)a3
{
  if ([(MapsScrollableStackView *)self axis]!= a3)
  {

    [(MapsScrollableStackView *)self _updateOrientationWithNewAxis:a3];
  }
}

- (void)setDistribution:(int64_t)a3
{
  if ([(UIStackView *)self->_stackView distribution]!= a3)
  {
    stackView = self->_stackView;

    [(UIStackView *)stackView setDistribution:a3];
  }
}

- (void)setAlignment:(int64_t)a3
{
  if ([(UIStackView *)self->_stackView alignment]!= a3)
  {
    stackView = self->_stackView;

    [(UIStackView *)stackView setAlignment:a3];
  }
}

- (void)_setupViewsWithSubviews:(id)a3
{
  v4 = a3;
  [(MapsScrollableStackView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  [(MapsScrollableStackView *)self setDirectionalLayoutMargins:NSDirectionalEdgeInsetsZero.top, leading, bottom, trailing];
  [(MapsScrollableStackView *)self setScrollEnabled:1];
  v8 = [[UIStackView alloc] initWithArrangedSubviews:v4];

  stackView = self->_stackView;
  self->_stackView = v8;

  [(UIStackView *)self->_stackView setSpacing:0.0];
  [(UIStackView *)self->_stackView setDirectionalLayoutMargins:NSDirectionalEdgeInsetsZero.top, leading, bottom, trailing];
  [(UIStackView *)self->_stackView setPreservesSuperviewLayoutMargins:1];
  [(MapsScrollableStackView *)self addSubview:self->_stackView];
  v10 = [[MUEdgeLayout alloc] initWithItem:self->_stackView container:self];
  [v10 activate];

  [(MapsScrollableStackView *)self _updateOrientationWithNewAxis:1];
}

- (MapsScrollableStackView)initWithArrangedSubviews:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MapsScrollableStackView;
  v5 = [(MapsScrollableStackView *)&v8 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v6 = v5;
  if (v5)
  {
    [(MapsScrollableStackView *)v5 _setupViewsWithSubviews:v4];
  }

  return v6;
}

@end