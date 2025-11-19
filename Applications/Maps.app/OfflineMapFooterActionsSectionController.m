@interface OfflineMapFooterActionsSectionController
- (OfflineMapDetailsActionSectionControllerDelegate)actionDelegate;
- (OfflineMapFooterActionsSectionController)initWithSubscriptionInfo:(id)a3;
- (void)_commonInit;
@end

@implementation OfflineMapFooterActionsSectionController

- (OfflineMapDetailsActionSectionControllerDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (void)_commonInit
{
  v3 = [[MUActionGroupSectionView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v3 setAccessibilityIdentifier:@"OfflineMapFooterActionsSection"];
  objc_initWeak(&location, self);
  v4 = objc_alloc_init(FooterContaineeAction);
  removeAction = self->_removeAction;
  self->_removeAction = v4;

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"Delete Map" value:@"localized string not found" table:@"Offline"];
  [(SimpleContaineeAction *)self->_removeAction setTitle:v7];

  [(SimpleContaineeAction *)self->_removeAction setStyle:1];
  [(FooterContaineeAction *)self->_removeAction setCellStyle:1];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100A51BAC;
  v15 = &unk_101656BC8;
  objc_copyWeak(&v16, &location);
  [(FooterContaineeAction *)self->_removeAction setActionBlock:&v12];
  [(SimpleContaineeAction *)self->_removeAction setAccessibilityIdentifier:@"DeleteMapButton", v12, v13, v14, v15];
  v8 = [(SimpleContaineeAction *)self->_removeAction title];
  [(FooterContaineeAction *)self->_removeAction setAccessibilityLabel:v8];

  v18 = self->_removeAction;
  v9 = [NSArray arrayWithObjects:&v18 count:1];
  [v3 setViewModels:v9];

  v10 = [MUPlaceSectionView insetButtonSectionViewforContentView:v3];
  sectionView = self->_sectionView;
  self->_sectionView = v10;

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (OfflineMapFooterActionsSectionController)initWithSubscriptionInfo:(id)a3
{
  v6.receiver = self;
  v6.super_class = OfflineMapFooterActionsSectionController;
  v3 = [(OfflineMapSectionController *)&v6 initWithSubscriptionInfo:a3];
  v4 = v3;
  if (v3)
  {
    [(OfflineMapFooterActionsSectionController *)v3 _commonInit];
  }

  return v4;
}

@end