@interface AutoLayoutScrollView
- (AutoLayoutScrollView)init;
- (AutoLayoutScrollView)initWithCoder:(id)coder;
- (AutoLayoutScrollView)initWithFrame:(CGRect)frame;
- (float)contentOverflowCompressionPriorityForAxis:(int64_t)axis;
- (void)_commonInit;
- (void)_updateConstraintConstants;
- (void)layoutSubviews;
- (void)setContentOverflowCompressionPriority:(float)priority forAxis:(int64_t)axis;
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

- (AutoLayoutScrollView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = AutoLayoutScrollView;
  v3 = [(AutoLayoutScrollView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(AutoLayoutScrollView *)v3 _commonInit];
  }

  return v4;
}

- (AutoLayoutScrollView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AutoLayoutScrollView;
  v3 = [(AutoLayoutScrollView *)&v6 initWithCoder:coder];
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
    topAnchor = [(UIView *)self->_contentView topAnchor];
    topAnchor2 = [(AutoLayoutScrollView *)self topAnchor];
    v31 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v35[0] = v31;
    leadingAnchor = [(UIView *)self->_contentView leadingAnchor];
    leadingAnchor2 = [(AutoLayoutScrollView *)self leadingAnchor];
    v4 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v35[1] = v4;
    trailingAnchor = [(UIView *)self->_contentView trailingAnchor];
    trailingAnchor2 = [(AutoLayoutScrollView *)self trailingAnchor];
    v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v35[2] = v7;
    bottomAnchor = [(UIView *)self->_contentView bottomAnchor];
    bottomAnchor2 = [(AutoLayoutScrollView *)self bottomAnchor];
    v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v35[3] = v10;
    v11 = [NSArray arrayWithObjects:v35 count:4];
    edgeConstraints = self->_edgeConstraints;
    self->_edgeConstraints = v11;

    [v3 addObjectsFromArray:self->_edgeConstraints];
  }

  if (!self->_minimumWidthConstraint)
  {
    widthAnchor = [(UIView *)self->_contentView widthAnchor];
    widthAnchor2 = [(AutoLayoutScrollView *)self widthAnchor];
    v15 = [widthAnchor constraintGreaterThanOrEqualToAnchor:widthAnchor2];
    minimumWidthConstraint = self->_minimumWidthConstraint;
    self->_minimumWidthConstraint = v15;

    [v3 addObject:self->_minimumWidthConstraint];
  }

  if (!self->_minimumHeightConstraint)
  {
    heightAnchor = [(UIView *)self->_contentView heightAnchor];
    heightAnchor2 = [(AutoLayoutScrollView *)self heightAnchor];
    v19 = [heightAnchor constraintGreaterThanOrEqualToAnchor:heightAnchor2];
    minimumHeightConstraint = self->_minimumHeightConstraint;
    self->_minimumHeightConstraint = v19;

    [v3 addObject:self->_minimumHeightConstraint];
  }

  if (!self->_horizontalCompressionConstraint)
  {
    widthAnchor3 = [(UIView *)self->_contentView widthAnchor];
    widthAnchor4 = [(AutoLayoutScrollView *)self widthAnchor];
    v23 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
    horizontalCompressionConstraint = self->_horizontalCompressionConstraint;
    self->_horizontalCompressionConstraint = v23;

    [(AutoLayoutScrollView *)self contentOverflowCompressionPriorityForAxis:0];
    [(NSLayoutConstraint *)self->_horizontalCompressionConstraint setPriority:?];
    [v3 addObject:self->_horizontalCompressionConstraint];
  }

  if (!self->_verticalCompressionConstraint)
  {
    heightAnchor3 = [(UIView *)self->_contentView heightAnchor];
    widthAnchor5 = [(AutoLayoutScrollView *)self widthAnchor];
    v27 = [heightAnchor3 constraintEqualToAnchor:widthAnchor5];
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

- (float)contentOverflowCompressionPriorityForAxis:(int64_t)axis
{
  if (axis)
  {
    if (axis != 1)
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

- (void)setContentOverflowCompressionPriority:(float)priority forAxis:(int64_t)axis
{
  [(AutoLayoutScrollView *)self contentOverflowCompressionPriorityForAxis:?];
  if (v7 == priority)
  {
    return;
  }

  if (!axis)
  {
    v8 = &OBJC_IVAR___AutoLayoutScrollView__horizontalCompressionConstraint;
    v9 = &OBJC_IVAR___AutoLayoutScrollView__horizontalCompressionPriority;
    goto LABEL_7;
  }

  if (axis == 1)
  {
    v8 = &OBJC_IVAR___AutoLayoutScrollView__verticalCompressionConstraint;
    v9 = &OBJC_IVAR___AutoLayoutScrollView__verticalCompressionPriority;
LABEL_7:
    *(&self->super.super.super.super.isa + *v9) = priority;
    v10 = *v8;
    [*(&self->super.super.super.super.isa + v10) setActive:0];
    v11 = *(&self->super.super.super.super.isa + v10);
    *(&self->super.super.super.super.isa + v10) = 0;
  }

  [(AutoLayoutScrollView *)self setNeedsUpdateConstraints];
}

@end