@interface RAPUserInfoSection
- (RAPUserInfoSection)init;
- (id)cellForRowAtIndex:(int64_t)index;
- (id)footerView;
- (void)_footerViewTapped;
@end

@implementation RAPUserInfoSection

- (void)_footerViewTapped
{
  v4 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.mapsrap"];
  presentingViewController = [(RAPTablePartSection *)self presentingViewController];
  [v4 setPresentingViewController:presentingViewController];

  [v4 present];
}

- (id)footerView
{
  footerView = self->_footerView;
  if (!footerView)
  {
    v4 = +[TableViewFooterOptions defaultRAPUserContentOptions];
    v5 = [[TableViewSelectableFooterView alloc] initWithReuseIdentifier:@"RAPUserInfoFooterView" options:v4];
    v6 = self->_footerView;
    self->_footerView = v5;

    [(TableViewSelectableFooterView *)self->_footerView setTarget:self action:"_footerViewTapped"];
    footerView = self->_footerView;
  }

  return footerView;
}

- (id)cellForRowAtIndex:(int64_t)index
{
  cell = self->_cell;
  if (!cell)
  {
    v5 = [[RAPDisplayUserContentTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"RAPUserInfoCell"];
    v6 = self->_cell;
    self->_cell = v5;

    cell = self->_cell;
  }

  return cell;
}

- (RAPUserInfoSection)init
{
  v6.receiver = self;
  v6.super_class = RAPUserInfoSection;
  v2 = [(RAPTablePartSection *)&v6 init];
  if (v2)
  {
    v3 = +[GEOUserAccountInfo primaryICloudAccount];
    account = v2->_account;
    v2->_account = v3;
  }

  return v2;
}

@end