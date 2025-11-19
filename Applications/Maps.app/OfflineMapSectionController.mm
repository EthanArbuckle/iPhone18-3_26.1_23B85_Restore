@interface OfflineMapSectionController
- (MUInfoCardAnalyticsDelegate)analyticsDelegate;
- (NSArray)sectionViews;
- (OfflineMapSectionController)initWithSubscriptionInfo:(id)a3;
- (UIView)sectionView;
- (id)analyticsModuleForAction:(int)a3 presentationOptions:(id)a4;
@end

@implementation OfflineMapSectionController

- (MUInfoCardAnalyticsDelegate)analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  return WeakRetained;
}

- (id)analyticsModuleForAction:(int)a3 presentationOptions:(id)a4
{
  v4 = objc_opt_new();

  return v4;
}

- (NSArray)sectionViews
{
  v2 = [(OfflineMapSectionController *)self sectionView];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (UIView)sectionView
{
  sectionView = self->_sectionView;
  if (!sectionView)
  {
    v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_sectionView;
    self->_sectionView = v4;

    sectionView = self->_sectionView;
  }

  return sectionView;
}

- (OfflineMapSectionController)initWithSubscriptionInfo:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = OfflineMapSectionController;
  v6 = [(OfflineMapSectionController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionInfo, a3);
  }

  return v7;
}

@end