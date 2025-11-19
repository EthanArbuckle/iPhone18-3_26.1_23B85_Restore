@interface CNSharingProfileOnboardingHeaderView
- (CNSharingProfileOnboardingHeaderView)initWithTitle:(id)a3;
- (id)reuseIdentifier;
- (void)setHeaderView:(id)a3;
@end

@implementation CNSharingProfileOnboardingHeaderView

- (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return [v2 reuseIdentifier];
}

- (CNSharingProfileOnboardingHeaderView)initWithTitle:(id)a3
{
  v7.receiver = self;
  v7.super_class = CNSharingProfileOnboardingHeaderView;
  v3 = [(CNSharingProfileOnboardingHeaderView *)&v7 initWithFrame:a3, 0.0, 0.0, 50.0, 50.0];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (void)setHeaderView:(id)a3
{
  v5 = a3;
  headerView = self->_headerView;
  if (headerView != v5)
  {
    v7 = v5;
    [(OBHeaderView *)headerView removeFromSuperview];
    objc_storeStrong(&self->_headerView, a3);
    v5 = v7;
    if (v7)
    {
      [(CNSharingProfileOnboardingHeaderView *)self bounds];
      [(OBHeaderView *)self->_headerView setFrame:?];
      [(OBHeaderView *)self->_headerView setAutoresizingMask:18];
      headerView = [(CNSharingProfileOnboardingHeaderView *)self addSubview:self->_headerView];
      v5 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](headerView, v5);
}

@end