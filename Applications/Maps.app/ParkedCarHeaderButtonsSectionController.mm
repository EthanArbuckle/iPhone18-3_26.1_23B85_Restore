@interface ParkedCarHeaderButtonsSectionController
- (ParkedCarHeaderButtonsDelegate)actionDelegate;
- (ParkedCarHeaderButtonsSectionController)initWithParkedCar:(id)car;
- (id)sectionView;
- (void)_commonInit;
- (void)actionsRowView:(id)view didSelectViewModel:(id)model presentationOptions:(id)options;
@end

@implementation ParkedCarHeaderButtonsSectionController

- (ParkedCarHeaderButtonsDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (void)actionsRowView:(id)view didSelectViewModel:(id)model presentationOptions:(id)options
{
  modelCopy = model;
  optionsCopy = options;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    actionDelegate = [(ParkedCarHeaderButtonsSectionController *)self actionDelegate];
    [actionDelegate parkedCarHeaderButtonsSectionControllerRequestsDirections:self];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [modelCopy performWithPresentationOptions:optionsCopy];
    }
  }
}

- (id)sectionView
{
  sectionView = self->_sectionView;
  if (sectionView)
  {
    v3 = sectionView;
  }

  else
  {
    v5 = [[MUPlaceSectionView alloc] initWithStyle:2 sectionHeaderViewModel:0];
    [(UIView *)v5 attachViewToContentView:self->_headerButtonsView];
    v6 = self->_sectionView;
    self->_sectionView = v5;
    v7 = v5;

    v3 = self->_sectionView;
  }

  return v3;
}

- (void)_commonInit
{
  v3 = +[MUGroupedActionsRowViewConfiguration defaultConfiguration];
  [v3 setUseVibrancy:0];
  v4 = [[MUGroupedActionsRowView alloc] initWithConfiguration:v3];
  headerButtonsView = self->_headerButtonsView;
  self->_headerButtonsView = v4;

  [(MUGroupedActionsRowView *)self->_headerButtonsView setPreservesSuperviewLayoutMargins:0];
  [(MUGroupedActionsRowView *)self->_headerButtonsView setLayoutMargins:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  [(MUGroupedActionsRowView *)self->_headerButtonsView setDelegate:self];
  objc_initWeak(&location, self);
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"Move [Marked Location in Place Card]" value:@"localized string not found" table:0];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100E84200;
  v12[3] = &unk_101656BC8;
  objc_copyWeak(&v13, &location);
  v8 = [_MKPlaceActionButtonController actionButtonControllerWithTitle:v7 subTitle:0 selectedBlock:v12 disabled:0 symbolName:@"mappin.and.ellipse"];

  v9 = [[MUDirectionsActionRowItemViewModel alloc] initWithETAProvider:0];
  v10 = [[MUPlaceActionControlledItemViewModel alloc] initWithPlaceActionController:v8];
  v15[0] = v9;
  v15[1] = v10;
  v11 = [NSArray arrayWithObjects:v15 count:2];
  [(MUGroupedActionsRowView *)self->_headerButtonsView setViewModels:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (ParkedCarHeaderButtonsSectionController)initWithParkedCar:(id)car
{
  v6.receiver = self;
  v6.super_class = ParkedCarHeaderButtonsSectionController;
  v3 = [(ParkedCarSectionController *)&v6 initWithParkedCar:car];
  v4 = v3;
  if (v3)
  {
    [(ParkedCarHeaderButtonsSectionController *)v3 _commonInit];
  }

  return v4;
}

@end