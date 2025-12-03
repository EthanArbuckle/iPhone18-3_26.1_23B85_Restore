@interface CNSharingProfileOnboardingHeaderView
- (CNSharingProfileOnboardingHeaderView)initWithTitle:(id)title;
- (id)reuseIdentifier;
- (void)setHeaderView:(id)view;
@end

@implementation CNSharingProfileOnboardingHeaderView

- (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return [v2 reuseIdentifier];
}

- (CNSharingProfileOnboardingHeaderView)initWithTitle:(id)title
{
  v7.receiver = self;
  v7.super_class = CNSharingProfileOnboardingHeaderView;
  v3 = [(CNSharingProfileOnboardingHeaderView *)&v7 initWithFrame:title, 0.0, 0.0, 50.0, 50.0];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (void)setHeaderView:(id)view
{
  viewCopy = view;
  headerView = self->_headerView;
  if (headerView != viewCopy)
  {
    v7 = viewCopy;
    [(OBHeaderView *)headerView removeFromSuperview];
    objc_storeStrong(&self->_headerView, view);
    viewCopy = v7;
    if (v7)
    {
      [(CNSharingProfileOnboardingHeaderView *)self bounds];
      [(OBHeaderView *)self->_headerView setFrame:?];
      [(OBHeaderView *)self->_headerView setAutoresizingMask:18];
      headerView = [(CNSharingProfileOnboardingHeaderView *)self addSubview:self->_headerView];
      viewCopy = v7;
    }
  }

  MEMORY[0x1EEE66BB8](headerView, viewCopy);
}

@end