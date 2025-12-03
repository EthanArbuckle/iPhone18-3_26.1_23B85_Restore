@interface ENUIAnalyticsDataViewController
- (id)specifiers;
- (void)viewDidLoad;
@end

@implementation ENUIAnalyticsDataViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = ENUIAnalyticsDataViewController;
  [(ENUIAnalyticsDataViewController *)&v5 viewDidLoad];
  v3 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_180E0;
  block[3] = &unk_2C750;
  block[4] = self;
  dispatch_async(v3, block);
}

- (id)specifiers
{
  selfCopy = self;
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = ENUILocalizedString();
    [(ENUIAnalyticsDataViewController *)selfCopy setTitle:v5];

    v6 = objc_alloc_init(NSMutableArray);
    if (-[ENUIAnalyticsDataViewController fetchCompleted](selfCopy, "fetchCompleted") && (-[ENUIAnalyticsDataViewController analyticsDataFileURLs](selfCopy, "analyticsDataFileURLs"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, v8))
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      obj = selfCopy->_analyticsDataFileURLs;
      v9 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v25;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v25 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v24 + 1) + 8 * i);
            lastPathComponent = [v13 lastPathComponent];
            v15 = [PSSpecifier preferenceSpecifierNamed:lastPathComponent target:selfCopy set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
            v16 = objc_opt_class();
            NSStringFromClass(v16);
            v18 = v17 = selfCopy;
            [v15 setProperty:v13 forKey:v18];

            selfCopy = v17;
            [v6 addObject:v15];
          }

          v10 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v10);
      }
    }

    else if ([(ENUIAnalyticsDataViewController *)selfCopy fetchCompleted])
    {
      v19 = +[PSSpecifier emptyGroupSpecifier];
      selfCopy->_analyticsDataFileURLs;
      v20 = ENUILocalizedString();
      [v19 setObject:v20 forKeyedSubscript:PSFooterTextGroupKey];

      [v6 addObject:v19];
    }

    v21 = *&selfCopy->PSListController_opaque[v3];
    *&selfCopy->PSListController_opaque[v3] = v6;

    v4 = *&selfCopy->PSListController_opaque[v3];
  }

  return v4;
}

@end