@interface MFMailComposeHeaderView
- (void)displayMetricsDidChange;
- (void)layoutMarginsDidChange;
- (void)setDisplayMetrics:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation MFMailComposeHeaderView

- (void)setDisplayMetrics:(id)a3
{
  v5 = a3;
  if (self->_displayMetrics != v5)
  {
    objc_storeStrong(&self->_displayMetrics, a3);
    [(MFMailComposeHeaderView *)self displayMetricsDidChange];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v17 = [(MFMailComposeHeaderView *)self traitCollection];
  [(MFMailComposeHeaderView *)self directionalLayoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(MFMailComposeHeaderView *)self safeAreaInsets];
  v16 = [MFComposeDisplayMetrics displayMetricsWithTraitCollection:v17 layoutMargins:v5 safeAreaInsets:v7, v9, v11, v12, v13, v14, v15];
  [(MFMailComposeHeaderView *)self setDisplayMetrics:v16];
}

- (void)layoutMarginsDidChange
{
  v17.receiver = self;
  v17.super_class = MFMailComposeHeaderView;
  [(MFMailComposeHeaderView *)&v17 layoutMarginsDidChange];
  v3 = [(MFMailComposeHeaderView *)self traitCollection];
  [(MFMailComposeHeaderView *)self directionalLayoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(MFMailComposeHeaderView *)self safeAreaInsets];
  v16 = [MFComposeDisplayMetrics displayMetricsWithTraitCollection:v3 layoutMargins:v5 safeAreaInsets:v7, v9, v11, v12, v13, v14, v15];
  [(MFMailComposeHeaderView *)self setDisplayMetrics:v16];
}

- (void)displayMetricsDidChange
{
  v3 = [(MFMailComposeHeaderView *)self displayMetrics];
  [v3 headerViewSeparatorInset];
  [(MFMailComposeHeaderView *)self setSeparatorDirectionalEdgeInsets:?];
}

@end