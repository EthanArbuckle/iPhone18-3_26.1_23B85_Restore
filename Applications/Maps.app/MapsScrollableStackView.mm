@interface MapsScrollableStackView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size;
- (MapsScrollableStackView)initWithArrangedSubviews:(id)subviews;
- (id)_constraints;
- (void)_setupViewsWithSubviews:(id)subviews;
- (void)_updateConstraintConstants;
- (void)_updateOrientationWithNewAxis:(int64_t)axis;
- (void)adjustedContentInsetDidChange;
- (void)setAlignment:(int64_t)alignment;
- (void)setAxis:(int64_t)axis;
- (void)setDistribution:(int64_t)distribution;
- (void)setFittingSizePriority:(float)priority;
- (void)setSpacing:(double)spacing;
@end

@implementation MapsScrollableStackView

- (void)_updateConstraintConstants
{
  [(MapsScrollableStackView *)self adjustedContentInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  axis = [(MapsScrollableStackView *)self axis];
  v12 = 0.0;
  v13 = v4 + v8;
  if (axis)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v6 + v10;
  }

  if (!axis)
  {
    v12 = v4 + v8;
  }

  if (axis == 1)
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

- (void)_updateOrientationWithNewAxis:(int64_t)axis
{
  _constraints = [(MapsScrollableStackView *)self _constraints];
  [NSLayoutConstraint deactivateConstraints:_constraints];

  distributionConstraint = self->_distributionConstraint;
  self->_distributionConstraint = 0;

  alignmentConstraint = self->_alignmentConstraint;
  self->_alignmentConstraint = 0;

  [(UIStackView *)self->_stackView setAxis:axis];
  axis = [(MapsScrollableStackView *)self axis];
  if (axis == 1)
  {
    if (self->_fittingSizePriority > 0.0)
    {
      heightAnchor = [(UIStackView *)self->_stackView heightAnchor];
      heightAnchor2 = [(MapsScrollableStackView *)self heightAnchor];
      v18 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
      v19 = self->_distributionConstraint;
      self->_distributionConstraint = v18;

      *&v20 = self->_fittingSizePriority;
      [(NSLayoutConstraint *)self->_distributionConstraint setPriority:v20];
    }

    widthAnchor = [(UIStackView *)self->_stackView widthAnchor];
    widthAnchor2 = [(MapsScrollableStackView *)self widthAnchor];
  }

  else
  {
    if (axis)
    {
      goto LABEL_10;
    }

    if (self->_fittingSizePriority > 0.0)
    {
      widthAnchor3 = [(UIStackView *)self->_stackView widthAnchor];
      widthAnchor4 = [(MapsScrollableStackView *)self widthAnchor];
      v11 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
      v12 = self->_distributionConstraint;
      self->_distributionConstraint = v11;

      *&v13 = self->_fittingSizePriority;
      [(NSLayoutConstraint *)self->_distributionConstraint setPriority:v13];
    }

    widthAnchor = [(UIStackView *)self->_stackView heightAnchor];
    widthAnchor2 = [(MapsScrollableStackView *)self heightAnchor];
  }

  v21 = widthAnchor2;
  v22 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v23 = self->_alignmentConstraint;
  self->_alignmentConstraint = v22;

LABEL_10:
  [(MapsScrollableStackView *)self _updateConstraintConstants];
  _constraints2 = [(MapsScrollableStackView *)self _constraints];
  [NSLayoutConstraint activateConstraints:_constraints2];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size
{
  [(UIStackView *)self->_stackView systemLayoutSizeFittingSize:size.width, size.height];
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

- (void)setFittingSizePriority:(float)priority
{
  if (self->_fittingSizePriority != priority)
  {
    self->_fittingSizePriority = priority;
    axis = [(MapsScrollableStackView *)self axis];

    [(MapsScrollableStackView *)self _updateOrientationWithNewAxis:axis];
  }
}

- (void)setSpacing:(double)spacing
{
  [(MapsScrollableStackView *)self spacing];
  if (v5 != spacing)
  {
    stackView = self->_stackView;

    [(UIStackView *)stackView setSpacing:spacing];
  }
}

- (void)setAxis:(int64_t)axis
{
  if ([(MapsScrollableStackView *)self axis]!= axis)
  {

    [(MapsScrollableStackView *)self _updateOrientationWithNewAxis:axis];
  }
}

- (void)setDistribution:(int64_t)distribution
{
  if ([(UIStackView *)self->_stackView distribution]!= distribution)
  {
    stackView = self->_stackView;

    [(UIStackView *)stackView setDistribution:distribution];
  }
}

- (void)setAlignment:(int64_t)alignment
{
  if ([(UIStackView *)self->_stackView alignment]!= alignment)
  {
    stackView = self->_stackView;

    [(UIStackView *)stackView setAlignment:alignment];
  }
}

- (void)_setupViewsWithSubviews:(id)subviews
{
  subviewsCopy = subviews;
  [(MapsScrollableStackView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  [(MapsScrollableStackView *)self setDirectionalLayoutMargins:NSDirectionalEdgeInsetsZero.top, leading, bottom, trailing];
  [(MapsScrollableStackView *)self setScrollEnabled:1];
  v8 = [[UIStackView alloc] initWithArrangedSubviews:subviewsCopy];

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

- (MapsScrollableStackView)initWithArrangedSubviews:(id)subviews
{
  subviewsCopy = subviews;
  v8.receiver = self;
  v8.super_class = MapsScrollableStackView;
  v5 = [(MapsScrollableStackView *)&v8 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v6 = v5;
  if (v5)
  {
    [(MapsScrollableStackView *)v5 _setupViewsWithSubviews:subviewsCopy];
  }

  return v6;
}

@end