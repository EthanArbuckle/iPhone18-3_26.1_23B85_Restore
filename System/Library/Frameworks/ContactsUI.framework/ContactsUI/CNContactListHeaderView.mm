@interface CNContactListHeaderView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)layoutSubviews;
- (void)setHeaderView:(id)a3;
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

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(CNContactListHeaderView *)self headerView];
  [v8 convertPoint:self fromView:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = [(CNContactListHeaderView *)self headerView];
  LOBYTE(v8) = [v13 pointInside:v7 withEvent:{v10, v12}];

  return v8;
}

- (void)setHeaderView:(id)a3
{
  v8 = a3;
  v5 = [v8 superview];
  v6 = [(CNContactListHeaderView *)self contentView];

  if (v5 != v6)
  {
    objc_storeStrong(&self->_headerView, a3);
    v7 = [(CNContactListHeaderView *)self contentView];
    [v7 addSubview:self->_headerView];

    [(UIView *)self->_headerView bounds];
    [(CNContactListHeaderView *)self setBounds:?];
  }
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v11.receiver = self;
  v11.super_class = CNContactListHeaderView;
  v4 = [(CNContactListHeaderView *)&v11 preferredLayoutAttributesFittingAttributes:a3];
  [v4 size];
  v6 = v5;
  v7 = [(CNContactListHeaderView *)self headerView];
  [v7 frame];
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