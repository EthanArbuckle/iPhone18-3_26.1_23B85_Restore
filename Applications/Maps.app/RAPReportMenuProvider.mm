@interface RAPReportMenuProvider
- (BOOL)_mapIsSprMap:(id)map;
- (RAPReportMenuProvider)init;
- (id)getReportMenuFromEntryPoint:(int)point sceneDelegate:(id)delegate;
- (id)getReportMenuItemsFromEntryPoint:(int)point sceneDelegate:(id)delegate;
- (void)_handleMenuAction:(int64_t)action entryPoint:(int)point sceneDelegate:(id)delegate;
- (void)_populateMenuSection;
- (void)dealloc;
@end

@implementation RAPReportMenuProvider

- (RAPReportMenuProvider)init
{
  v7.receiver = self;
  v7.super_class = RAPReportMenuProvider;
  v2 = [(RAPReportMenuProvider *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(ReportLinkFactory);
    linkFactory = v2->_linkFactory;
    v2->_linkFactory = v3;

    v5 = +[TrafficIncidentLayoutManager sharedInstance];
    [v5 addObserver:v2];
  }

  return v2;
}

- (BOOL)_mapIsSprMap:(id)map
{
  chromeViewController = [map chromeViewController];
  mapView = [chromeViewController mapView];
  _isShowingCuratedElevatedGround = [mapView _isShowingCuratedElevatedGround];

  return _isShowingCuratedElevatedGround;
}

- (void)_handleMenuAction:(int64_t)action entryPoint:(int)point sceneDelegate:(id)delegate
{
  v5 = *&point;
  delegateCopy = delegate;
  rapPresenter = [delegateCopy rapPresenter];
  v9 = rapPresenter;
  if (action <= 1)
  {
    if (!action)
    {
      v12 = [(RAPReportMenuProvider *)self _mapIsSprMap:delegateCopy];
      BOOL = GEOConfigGetBOOL();
      if (v12)
      {
        v14 = 4;
        v15 = 6;
      }

      else
      {
        v14 = 3;
        v15 = 5;
      }

      if (BOOL)
      {
        v10 = v15;
      }

      else
      {
        v10 = v14;
      }

      v11 = 222;
      goto LABEL_21;
    }

    if (action != 1)
    {
      goto LABEL_26;
    }

    [rapPresenter presentIncidentsReportOptions];
    v11 = 2152;
LABEL_22:
    if (v5 == 29)
    {
      v16 = 39;
    }

    else
    {
      v16 = v5;
    }

    [GEOAPPortal captureUserAction:v11 target:v16 value:0];
    goto LABEL_26;
  }

  switch(action)
  {
    case 4:
      [rapPresenter presentRouteListReportFromEntryPoint:v5];
      v11 = 10117;
      goto LABEL_22;
    case 3:
      v11 = 229;
      v10 = 12;
LABEL_21:
      [v9 presentRAPWebBundleQuestionType:v10 mapItem:0 fromEntryPoint:v5 withCompletion:&stru_101630330];
      goto LABEL_22;
    case 2:
      if ([(RAPReportMenuProvider *)self _mapIsSprMap:delegateCopy])
      {
        v10 = 22;
      }

      else
      {
        v10 = 21;
      }

      v11 = 224;
      goto LABEL_21;
  }

LABEL_26:
}

- (id)getReportMenuFromEntryPoint:(int)point sceneDelegate:(id)delegate
{
  v4 = [(RAPReportMenuProvider *)self getReportMenuItemsFromEntryPoint:*&point sceneDelegate:delegate];
  v5 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        title = [v10 title];
        image = [v10 image];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10097E36C;
        v17[3] = &unk_101658910;
        v17[4] = v10;
        v13 = [UIAction actionWithTitle:title image:image identifier:0 handler:v17];

        [v5 addObject:v13];
      }

      v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v14 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:16 children:v5];

  return v14;
}

- (id)getReportMenuItemsFromEntryPoint:(int)point sceneDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (!self->_menuSections)
  {
    [(RAPReportMenuProvider *)self _populateMenuSection];
  }

  v6 = +[NSMutableArray array];
  if ([(NSMutableArray *)self->_menuSections count])
  {
    v7 = 0;
    do
    {
      v8 = [(NSMutableArray *)self->_menuSections objectAtIndexedSubscript:v7];
      integerValue = [v8 integerValue];

      v10 = [(ReportLinkFactory *)self->_linkFactory createModelForType:integerValue];
      v11 = objc_alloc_init(RAPReportMenuItem);
      title = [v10 title];
      [(RAPReportMenuItem *)v11 setTitle:title];

      icon = [v10 icon];
      [(RAPReportMenuItem *)v11 setImage:icon];

      objc_initWeak(&location, self);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10097E5C0;
      v16[3] = &unk_1016302F0;
      objc_copyWeak(v18, &location);
      v18[1] = integerValue;
      pointCopy = point;
      v17 = delegateCopy;
      [(RAPReportMenuItem *)v11 setActionHandler:v16];
      [v6 addObject:v11];

      objc_destroyWeak(v18);
      objc_destroyWeak(&location);

      ++v7;
    }

    while (v7 < [(NSMutableArray *)self->_menuSections count]);
  }

  return v6;
}

- (void)_populateMenuSection
{
  v3 = [NSMutableArray arrayWithArray:&off_1016ED148];
  menuSections = self->_menuSections;
  self->_menuSections = v3;

  v5 = +[GEOPlatform sharedPlatform];
  supportsNavigation = [v5 supportsNavigation];

  if (supportsNavigation)
  {
    [(NSMutableArray *)self->_menuSections addObject:&off_1016E7958];
    v7 = +[TrafficIncidentLayoutManager sharedInstance];
    isIncidentReportingEnabled = [v7 isIncidentReportingEnabled];

    if (isIncidentReportingEnabled)
    {
      v9 = self->_menuSections;

      [(NSMutableArray *)v9 addObject:&off_1016E7970];
    }
  }
}

- (void)dealloc
{
  v3 = +[TrafficIncidentLayoutManager sharedInstance];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = RAPReportMenuProvider;
  [(RAPReportMenuProvider *)&v4 dealloc];
}

@end