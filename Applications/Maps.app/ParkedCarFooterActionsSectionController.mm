@interface ParkedCarFooterActionsSectionController
- (ParkedCarFooterActionsSectionController)initWithParkedCar:(id)a3;
- (ParkedCarFooterActionsSectionControllerDelegate)actionDelegate;
- (void)_commonInit;
@end

@implementation ParkedCarFooterActionsSectionController

- (ParkedCarFooterActionsSectionControllerDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (void)_commonInit
{
  v3 = [[MUActionGroupSectionView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  objc_initWeak(&location, self);
  v4 = objc_alloc_init(FooterContaineeAction);
  removeAction = self->_removeAction;
  self->_removeAction = v4;

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"Remove Car [FindMyCar Place Card]" value:@"localized string not found" table:0];
  [(SimpleContaineeAction *)self->_removeAction setTitle:v7];

  [(SimpleContaineeAction *)self->_removeAction setGlyph:@"trash.fill"];
  [(SimpleContaineeAction *)self->_removeAction setStyle:1];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1009D0A48;
  v14 = &unk_101656BC8;
  objc_copyWeak(&v15, &location);
  [(FooterContaineeAction *)self->_removeAction setActionBlock:&v11];
  v17 = self->_removeAction;
  v8 = [NSArray arrayWithObjects:&v17 count:1, v11, v12, v13, v14];
  [v3 setViewModels:v8];

  v9 = [MUPlaceSectionView insetButtonSectionViewforContentView:v3];
  sectionView = self->_sectionView;
  self->_sectionView = v9;

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (ParkedCarFooterActionsSectionController)initWithParkedCar:(id)a3
{
  v6.receiver = self;
  v6.super_class = ParkedCarFooterActionsSectionController;
  v3 = [(ParkedCarSectionController *)&v6 initWithParkedCar:a3];
  v4 = v3;
  if (v3)
  {
    [(ParkedCarFooterActionsSectionController *)v3 _commonInit];
  }

  return v4;
}

@end