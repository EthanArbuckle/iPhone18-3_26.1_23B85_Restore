@interface RAPReportMenuProvider
- (BOOL)_mapIsSprMap:(id)a3;
- (RAPReportMenuProvider)init;
- (id)getReportMenuFromEntryPoint:(int)a3 sceneDelegate:(id)a4;
- (id)getReportMenuItemsFromEntryPoint:(int)a3 sceneDelegate:(id)a4;
- (void)_handleMenuAction:(int64_t)a3 entryPoint:(int)a4 sceneDelegate:(id)a5;
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

- (BOOL)_mapIsSprMap:(id)a3
{
  v3 = [a3 chromeViewController];
  v4 = [v3 mapView];
  v5 = [v4 _isShowingCuratedElevatedGround];

  return v5;
}

- (void)_handleMenuAction:(int64_t)a3 entryPoint:(int)a4 sceneDelegate:(id)a5
{
  v5 = *&a4;
  v17 = a5;
  v8 = [v17 rapPresenter];
  v9 = v8;
  if (a3 <= 1)
  {
    if (!a3)
    {
      v12 = [(RAPReportMenuProvider *)self _mapIsSprMap:v17];
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

    if (a3 != 1)
    {
      goto LABEL_26;
    }

    [v8 presentIncidentsReportOptions];
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

  switch(a3)
  {
    case 4:
      [v8 presentRouteListReportFromEntryPoint:v5];
      v11 = 10117;
      goto LABEL_22;
    case 3:
      v11 = 229;
      v10 = 12;
LABEL_21:
      [v9 presentRAPWebBundleQuestionType:v10 mapItem:0 fromEntryPoint:v5 withCompletion:&stru_101630330];
      goto LABEL_22;
    case 2:
      if ([(RAPReportMenuProvider *)self _mapIsSprMap:v17])
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

- (id)getReportMenuFromEntryPoint:(int)a3 sceneDelegate:(id)a4
{
  v4 = [(RAPReportMenuProvider *)self getReportMenuItemsFromEntryPoint:*&a3 sceneDelegate:a4];
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
        v11 = [v10 title];
        v12 = [v10 image];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10097E36C;
        v17[3] = &unk_101658910;
        v17[4] = v10;
        v13 = [UIAction actionWithTitle:v11 image:v12 identifier:0 handler:v17];

        [v5 addObject:v13];
      }

      v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v14 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:16 children:v5];

  return v14;
}

- (id)getReportMenuItemsFromEntryPoint:(int)a3 sceneDelegate:(id)a4
{
  v5 = a4;
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
      v9 = [v8 integerValue];

      v10 = [(ReportLinkFactory *)self->_linkFactory createModelForType:v9];
      v11 = objc_alloc_init(RAPReportMenuItem);
      v12 = [v10 title];
      [(RAPReportMenuItem *)v11 setTitle:v12];

      v13 = [v10 icon];
      [(RAPReportMenuItem *)v11 setImage:v13];

      objc_initWeak(&location, self);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10097E5C0;
      v16[3] = &unk_1016302F0;
      objc_copyWeak(v18, &location);
      v18[1] = v9;
      v19 = a3;
      v17 = v5;
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
  v6 = [v5 supportsNavigation];

  if (v6)
  {
    [(NSMutableArray *)self->_menuSections addObject:&off_1016E7958];
    v7 = +[TrafficIncidentLayoutManager sharedInstance];
    v8 = [v7 isIncidentReportingEnabled];

    if (v8)
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