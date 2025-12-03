@interface MFMailComposeHeaderView
- (void)displayMetricsDidChange;
- (void)layoutMarginsDidChange;
- (void)setDisplayMetrics:(id)metrics;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MFMailComposeHeaderView

- (void)setDisplayMetrics:(id)metrics
{
  metricsCopy = metrics;
  if (self->_displayMetrics != metricsCopy)
  {
    objc_storeStrong(&self->_displayMetrics, metrics);
    [(MFMailComposeHeaderView *)self displayMetricsDidChange];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  traitCollection = [(MFMailComposeHeaderView *)self traitCollection];
  [(MFMailComposeHeaderView *)self directionalLayoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(MFMailComposeHeaderView *)self safeAreaInsets];
  v16 = [MFComposeDisplayMetrics displayMetricsWithTraitCollection:traitCollection layoutMargins:v5 safeAreaInsets:v7, v9, v11, v12, v13, v14, v15];
  [(MFMailComposeHeaderView *)self setDisplayMetrics:v16];
}

- (void)layoutMarginsDidChange
{
  v17.receiver = self;
  v17.super_class = MFMailComposeHeaderView;
  [(MFMailComposeHeaderView *)&v17 layoutMarginsDidChange];
  traitCollection = [(MFMailComposeHeaderView *)self traitCollection];
  [(MFMailComposeHeaderView *)self directionalLayoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(MFMailComposeHeaderView *)self safeAreaInsets];
  v16 = [MFComposeDisplayMetrics displayMetricsWithTraitCollection:traitCollection layoutMargins:v5 safeAreaInsets:v7, v9, v11, v12, v13, v14, v15];
  [(MFMailComposeHeaderView *)self setDisplayMetrics:v16];
}

- (void)displayMetricsDidChange
{
  displayMetrics = [(MFMailComposeHeaderView *)self displayMetrics];
  [displayMetrics headerViewSeparatorInset];
  [(MFMailComposeHeaderView *)self setSeparatorDirectionalEdgeInsets:?];
}

@end