@interface AutoLayoutScrollView
- (AutoLayoutScrollView)init;
- (AutoLayoutScrollView)initWithCoder:(id)a3;
- (AutoLayoutScrollView)initWithFrame:(CGRect)a3;
- (float)contentOverflowCompressionPriorityForAxis:(int64_t)a3;
- (void)_commonInit;
- (void)_updateConstraintConstants;
- (void)layoutSubviews;
- (void)setContentOverflowCompressionPriority:(float)a3 forAxis:(int64_t)a4;
- (void)updateConstraints;
@end

@implementation AutoLayoutScrollView

- (void)_commonInit
{
  v3 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  contentView = self->_contentView;
  self->_contentView = v3;

  [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(AutoLayoutScrollView *)self addSubview:self->_contentView];
  self->_horizontalCompressionPriority = 250.0;
  self->_verticalCompressionPriority = 250.0;

  [(AutoLayoutScrollView *)self setNeedsUpdateConstraints];
}

- (AutoLayoutScrollView)init
{
  v5.receiver = self;
  v5.super_class = AutoLayoutScrollView;
  v2 = [(AutoLayoutScrollView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AutoLayoutScrollView *)v2 _commonInit];
  }

  return v3;
}

- (AutoLayoutScrollView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = AutoLayoutScrollView;
  v3 = [(AutoLayoutScrollView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(AutoLayoutScrollView *)v3 _commonInit];
  }

  return v4;
}

- (AutoLayoutScrollView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AutoLayoutScrollView;
  v3 = [(AutoLayoutScrollView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(AutoLayoutScrollView *)v3 _commonInit];
  }

  return v4;
}

- (void)updateConstraints
{
  v34.receiver = self;
  v34.super_class = AutoLayoutScrollView;
  [(AutoLayoutScrollView *)&v34 updateConstraints];
  v3 = +[NSMutableArray array];
  if (!self->_edgeConstraints)
  {
    v33 = [(UIView *)self->_contentView topAnchor];
    v32 = [(AutoLayoutScrollView *)self topAnchor];
    v31 = [v33 constraintEqualToAnchor:v32];
    v35[0] = v31;
    v30 = [(UIView *)self->_contentView leadingAnchor];
    v29 = [(AutoLayoutScrollView *)self leadingAnchor];
    v4 = [v30 constraintEqualToAnchor:v29];
    v35[1] = v4;
    v5 = [(UIView *)self->_contentView trailingAnchor];
    v6 = [(AutoLayoutScrollView *)self trailingAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];
    v35[2] = v7;
    v8 = [(UIView *)self->_contentView bottomAnchor];
    v9 = [(AutoLayoutScrollView *)self bottomAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    v35[3] = v10;
    v11 = [NSArray arrayWithObjects:v35 count:4];
    edgeConstraints = self->_edgeConstraints;
    self->_edgeConstraints = v11;

    [v3 addObjectsFromArray:self->_edgeConstraints];
  }

  if (!self->_minimumWidthConstraint)
  {
    v13 = [(UIView *)self->_contentView widthAnchor];
    v14 = [(AutoLayoutScrollView *)self widthAnchor];
    v15 = [v13 constraintGreaterThanOrEqualToAnchor:v14];
    minimumWidthConstraint = self->_minimumWidthConstraint;
    self->_minimumWidthConstraint = v15;

    [v3 addObject:self->_minimumWidthConstraint];
  }

  if (!self->_minimumHeightConstraint)
  {
    v17 = [(UIView *)self->_contentView heightAnchor];
    v18 = [(AutoLayoutScrollView *)self heightAnchor];
    v19 = [v17 constraintGreaterThanOrEqualToAnchor:v18];
    minimumHeightConstraint = self->_minimumHeightConstraint;
    self->_minimumHeightConstraint = v19;

    [v3 addObject:self->_minimumHeightConstraint];
  }

  if (!self->_horizontalCompressionConstraint)
  {
    v21 = [(UIView *)self->_contentView widthAnchor];
    v22 = [(AutoLayoutScrollView *)self widthAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    horizontalCompressionConstraint = self->_horizontalCompressionConstraint;
    self->_horizontalCompressionConstraint = v23;

    [(AutoLayoutScrollView *)self contentOverflowCompressionPriorityForAxis:0];
    [(NSLayoutConstraint *)self->_horizontalCompressionConstraint setPriority:?];
    [v3 addObject:self->_horizontalCompressionConstraint];
  }

  if (!self->_verticalCompressionConstraint)
  {
    v25 = [(UIView *)self->_contentView heightAnchor];
    v26 = [(AutoLayoutScrollView *)self widthAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    verticalCompressionConstraint = self->_verticalCompressionConstraint;
    self->_verticalCompressionConstraint = v27;

    [(AutoLayoutScrollView *)self contentOverflowCompressionPriorityForAxis:1];
    [(NSLayoutConstraint *)self->_verticalCompressionConstraint setPriority:?];
    [v3 addObject:self->_verticalCompressionConstraint];
  }

  [(AutoLayoutScrollView *)self _updateConstraintConstants];
  [NSLayoutConstraint activateConstraints:v3];
}

- (void)_updateConstraintConstants
{
  [(AutoLayoutScrollView *)self adjustedContentInset];
  v4 = v3;
  v6 = v5;
  v9 = -(v7 + v8);
  [(NSLayoutConstraint *)self->_minimumWidthConstraint setConstant:v9];
  v10 = -(v4 + v6);
  [(NSLayoutConstraint *)self->_minimumHeightConstraint setConstant:v10];
  [(NSLayoutConstraint *)self->_horizontalCompressionConstraint setConstant:v9];
  verticalCompressionConstraint = self->_verticalCompressionConstraint;

  [(NSLayoutConstraint *)verticalCompressionConstraint setConstant:v10];
}

- (void)layoutSubviews
{
  [(AutoLayoutScrollView *)self _updateConstraintConstants];
  v3.receiver = self;
  v3.super_class = AutoLayoutScrollView;
  [(AutoLayoutScrollView *)&v3 layoutSubviews];
}

- (float)contentOverflowCompressionPriorityForAxis:(int64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      return result;
    }

    v3 = &OBJC_IVAR___AutoLayoutScrollView__verticalCompressionPriority;
  }

  else
  {
    v3 = &OBJC_IVAR___AutoLayoutScrollView__horizontalCompressionPriority;
  }

  return *(&self->super.super.super.super.isa + *v3);
}

- (void)setContentOverflowCompressionPriority:(float)a3 forAxis:(int64_t)a4
{
  [(AutoLayoutScrollView *)self contentOverflowCompressionPriorityForAxis:?];
  if (v7 == a3)
  {
    return;
  }

  if (!a4)
  {
    v8 = &OBJC_IVAR___AutoLayoutScrollView__horizontalCompressionConstraint;
    v9 = &OBJC_IVAR___AutoLayoutScrollView__horizontalCompressionPriority;
    goto LABEL_7;
  }

  if (a4 == 1)
  {
    v8 = &OBJC_IVAR___AutoLayoutScrollView__verticalCompressionConstraint;
    v9 = &OBJC_IVAR___AutoLayoutScrollView__verticalCompressionPriority;
LABEL_7:
    *(&self->super.super.super.super.isa + *v9) = a3;
    v10 = *v8;
    [*(&self->super.super.super.super.isa + v10) setActive:0];
    v11 = *(&self->super.super.super.super.isa + v10);
    *(&self->super.super.super.super.isa + v10) = 0;
  }

  [(AutoLayoutScrollView *)self setNeedsUpdateConstraints];
}

@end