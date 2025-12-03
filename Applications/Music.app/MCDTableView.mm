@interface MCDTableView
- (MCDTableView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (id)preferredFocusEnvironments;
- (void)_updateContentSizeIfNeeded;
- (void)layoutSubview;
- (void)setContentSize:(CGSize)size;
- (void)setForcesVerticalScrollIndicators:(BOOL)indicators;
@end

@implementation MCDTableView

- (MCDTableView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  v7.receiver = self;
  v7.super_class = MCDTableView;
  v4 = [(MCDTableView *)&v7 initWithFrame:style style:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    [(MCDTableView *)v4 setContentInsetAdjustmentBehavior:0];
    [(MCDTableView *)v5 setRowHeight:UITableViewAutomaticDimension];
    [(MCDTableView *)v5 setEstimatedRowHeight:UITableViewAutomaticDimension];
    [(MCDTableView *)v5 setAccessibilityIdentifier:@"CPListTemplate"];
  }

  return v5;
}

- (id)preferredFocusEnvironments
{
  window = [(MCDTableView *)self window];

  if (window)
  {
    v6.receiver = self;
    v6.super_class = MCDTableView;
    preferredFocusEnvironments = [(MCDTableView *)&v6 preferredFocusEnvironments];
  }

  else
  {
    selfCopy = self;
    preferredFocusEnvironments = [NSArray arrayWithObjects:&selfCopy count:1];
  }

  return preferredFocusEnvironments;
}

- (void)setForcesVerticalScrollIndicators:(BOOL)indicators
{
  if (self->_forcesVerticalScrollIndicators != indicators)
  {
    self->_forcesVerticalScrollIndicators = indicators;
    [(MCDTableView *)self _updateContentSizeIfNeeded];
  }
}

- (void)setContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (self->_forcesVerticalScrollIndicators)
  {
    [(MCDTableView *)self bounds];
    height = fmax(height, CGRectGetHeight(v7) + 1.0);
  }

  v6.receiver = self;
  v6.super_class = MCDTableView;
  [(MCDTableView *)&v6 setContentSize:width, height];
}

- (void)layoutSubview
{
  [(MCDTableView *)self _updateContentSizeIfNeeded];
  v3.receiver = self;
  v3.super_class = MCDTableView;
  [(MCDTableView *)&v3 layoutSubviews];
}

- (void)_updateContentSizeIfNeeded
{
  if (self->_forcesVerticalScrollIndicators)
  {
    v6 = v2;
    v7 = v3;
    v5.receiver = self;
    v5.super_class = MCDTableView;
    [(MCDTableView *)&v5 contentSize];
    [(MCDTableView *)self setContentSize:?];
  }
}

@end