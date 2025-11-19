@interface MCDTableView
- (MCDTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (id)preferredFocusEnvironments;
- (void)_updateContentSizeIfNeeded;
- (void)layoutSubview;
- (void)setContentSize:(CGSize)a3;
- (void)setForcesVerticalScrollIndicators:(BOOL)a3;
@end

@implementation MCDTableView

- (MCDTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = MCDTableView;
  v4 = [(MCDTableView *)&v7 initWithFrame:a4 style:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [(MCDTableView *)self window];

  if (v3)
  {
    v6.receiver = self;
    v6.super_class = MCDTableView;
    v4 = [(MCDTableView *)&v6 preferredFocusEnvironments];
  }

  else
  {
    v7 = self;
    v4 = [NSArray arrayWithObjects:&v7 count:1];
  }

  return v4;
}

- (void)setForcesVerticalScrollIndicators:(BOOL)a3
{
  if (self->_forcesVerticalScrollIndicators != a3)
  {
    self->_forcesVerticalScrollIndicators = a3;
    [(MCDTableView *)self _updateContentSizeIfNeeded];
  }
}

- (void)setContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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