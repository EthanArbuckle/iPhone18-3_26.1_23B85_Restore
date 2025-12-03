@interface CNContactListHeaderView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)setHeaderView:(id)view;
@end

@implementation CNContactListHeaderView

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = CNContactListHeaderView;
  [(CNContactListHeaderView *)&v8 layoutSubviews];
  [(CNContactListHeaderView *)self frame];
  v4 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFF8] + 8);
  if (v6 != *MEMORY[0x1E695EFF8] || v3 != v5)
  {
    [(CNContactListHeaderView *)self frame];
    [(CNContactListHeaderView *)self setFrame:v4, v5];
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  headerView = [(CNContactListHeaderView *)self headerView];
  [headerView convertPoint:self fromView:{x, y}];
  v10 = v9;
  v12 = v11;

  headerView2 = [(CNContactListHeaderView *)self headerView];
  LOBYTE(headerView) = [headerView2 pointInside:eventCopy withEvent:{v10, v12}];

  return headerView;
}

- (void)setHeaderView:(id)view
{
  viewCopy = view;
  superview = [viewCopy superview];
  contentView = [(CNContactListHeaderView *)self contentView];

  if (superview != contentView)
  {
    objc_storeStrong(&self->_headerView, view);
    contentView2 = [(CNContactListHeaderView *)self contentView];
    [contentView2 addSubview:self->_headerView];

    [(UIView *)self->_headerView bounds];
    [(CNContactListHeaderView *)self setBounds:?];
  }
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  v11.receiver = self;
  v11.super_class = CNContactListHeaderView;
  v4 = [(CNContactListHeaderView *)&v11 preferredLayoutAttributesFittingAttributes:attributes];
  [v4 size];
  v6 = v5;
  headerView = [(CNContactListHeaderView *)self headerView];
  [headerView frame];
  if (v8 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v8;
  }

  [v4 setSize:{v6, v9}];

  return v4;
}

@end