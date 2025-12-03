@interface BuddyLanguageLocaleFlow
+ (id)allowedFlowItems;
- (BOOL)userSelectedLanguageWithLocale:(id)locale countryCode:(id)code localePaneScrollOffset:(double)offset;
- (BuddyLanguageLocaleFlow)initWithNavigationController:(id)controller dataSource:(id)source flowDelegate:(id)delegate flowStarter:(id)starter dependencyInjector:(id)injector;
- (BuddyLanguageLocaleFlow)initWithNavigationController:(id)controller flowDelegate:(id)delegate flowStarter:(id)starter dependencyInjector:(id)injector;
- (id)firstItem;
- (id)precedingItemsClasses;
- (void)_injectDependencies:(id)dependencies;
- (void)configureFlowItem:(id)item;
- (void)flowItemDone:(id)done nextItem:(id)item;
- (void)languageCompositeUpdated;
- (void)observer:(id)observer didObserveLanguageChange:(BOOL)change localeChange:(BOOL)localeChange;
- (void)setBuddyPreferencesExcludedFromBackup:(id)backup;
- (void)userSelectedLanguage:(id)language;
@end

@implementation BuddyLanguageLocaleFlow

- (BuddyLanguageLocaleFlow)initWithNavigationController:(id)controller flowDelegate:(id)delegate flowStarter:(id)starter dependencyInjector:(id)injector
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v15 = 0;
  objc_storeStrong(&v15, delegate);
  v14 = 0;
  objc_storeStrong(&v14, starter);
  v13 = 0;
  objc_storeStrong(&v13, injector);
  v12 = objc_alloc_init(BuddyLanguageLocaleDataSource);
  v9 = selfCopy;
  selfCopy = 0;
  selfCopy = [v9 initWithNavigationController:location[0] dataSource:v12 flowDelegate:v15 flowStarter:v14 dependencyInjector:v13];
  v10 = selfCopy;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

- (BuddyLanguageLocaleFlow)initWithNavigationController:(id)controller dataSource:(id)source flowDelegate:(id)delegate flowStarter:(id)starter dependencyInjector:(id)injector
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v25 = 0;
  objc_storeStrong(&v25, source);
  v24 = 0;
  objc_storeStrong(&v24, delegate);
  v23 = 0;
  objc_storeStrong(&v23, starter);
  v22 = 0;
  objc_storeStrong(&v22, injector);
  v11 = selfCopy;
  selfCopy = 0;
  v21.receiver = v11;
  v21.super_class = BuddyLanguageLocaleFlow;
  selfCopy = [(BuddyLanguageLocaleFlow *)&v21 initWithNavigationController:location[0] flowDelegate:v24 flowStarter:v23 dependencyInjector:v22];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [selfCopy setDataSource:v25];
    v12 = selfCopy;
    dataSource = [selfCopy dataSource];
    [dataSource setDelegate:v12];

    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v14 = [NSArray arrayWithObjects:v28 count:2];
    [selfCopy setClassList:v14];

    v15 = objc_alloc_init(BuddyLanguageChangeObserver);
    [selfCopy setLanguageChangeObserver:v15];

    v16 = selfCopy;
    languageChangeObserver = [selfCopy languageChangeObserver];
    [languageChangeObserver setDelegate:v16];

    languageChangeObserver2 = [selfCopy languageChangeObserver];
    [languageChangeObserver2 startObservingLanguageChanges];
  }

  v19 = selfCopy;
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v19;
}

- (void)setBuddyPreferencesExcludedFromBackup:(id)backup
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, backup);
  objc_storeStrong(&selfCopy->_buddyPreferencesExcludedFromBackup, location[0]);
  v3 = location[0];
  dataSource = [(BuddyLanguageLocaleFlow *)selfCopy dataSource];
  [(BuddyLanguageLocaleDataSource *)dataSource setBuddyPreferencesExcludedFromBackup:v3];

  objc_storeStrong(location, 0);
}

- (id)firstItem
{
  selfCopy = self;
  location[1] = a2;
  v7.receiver = self;
  v7.super_class = BuddyLanguageLocaleFlow;
  location[0] = [(BuddyLanguageLocaleFlow *)&v7 firstItem];
  if ([location[0] conformsToProtocol:&OBJC_PROTOCOL___BuddyLanguageDependencyReceiver])
  {
    v2 = location[0];
    dataSource = [(BuddyLanguageLocaleFlow *)selfCopy dataSource];
    languageComposite = [(BuddyLanguageLocaleDataSource *)dataSource languageComposite];
    [v2 setLanguageComposite:languageComposite];
  }

  v5 = location[0];
  objc_storeStrong(location, 0);
  return v5;
}

- (id)precedingItemsClasses
{
  if ([(BuddyLanguageLocaleFlow *)self isResumingFromLanguageReboot])
  {
    v4 = objc_opt_class();
    v3 = [NSArray arrayWithObjects:&v4 count:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)configureFlowItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v3.receiver = selfCopy;
  v3.super_class = BuddyLanguageLocaleFlow;
  [(BuddyLanguageLocaleFlow *)&v3 configureFlowItem:location[0]];
  [(BuddyLanguageLocaleFlow *)selfCopy _injectDependencies:location[0]];
  objc_storeStrong(location, 0);
}

+ (id)allowedFlowItems
{
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  return [NSArray arrayWithObjects:v3 count:2];
}

- (void)_injectDependencies:(id)dependencies
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dependencies);
  injector = [(BuddyLanguageLocaleFlow *)selfCopy injector];
  v4 = injector[2](injector, location[0]);

  if ([location[0] conformsToProtocol:&OBJC_PROTOCOL___BuddyLanguageDependencyReceiver])
  {
    v10 = location[0];
    dataSource = [(BuddyLanguageLocaleFlow *)selfCopy dataSource];
    languageComposite = [(BuddyLanguageLocaleDataSource *)dataSource languageComposite];
    [v10 setLanguageComposite:languageComposite];

    [v10 setSelectionReceiver:selfCopy];
    objc_storeStrong(&v10, 0);
  }

  else if ([location[0] conformsToProtocol:&OBJC_PROTOCOL___BuddyLocaleDependencyReceiver])
  {
    v9 = location[0];
    dataSource2 = [(BuddyLanguageLocaleFlow *)selfCopy dataSource];
    localeComposite = [(BuddyLanguageLocaleDataSource *)dataSource2 localeComposite];
    [v9 setLocaleComposite:localeComposite];

    [v9 setSelectionReceiver:selfCopy];
    [v9 setResumingFromLanguageReboot:{-[BuddyLanguageLocaleFlow isResumingFromLanguageReboot](selfCopy, "isResumingFromLanguageReboot")}];
    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)flowItemDone:(id)done nextItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, done);
  v9 = 0;
  objc_storeStrong(&v9, item);
  [(BuddyLanguageLocaleFlow *)selfCopy setResumingFromLanguageReboot:0];
  [(BuddyLanguageLocaleFlow *)selfCopy _injectDependencies:v9];
  v8 = 0;
  if ([location[0] conformsToProtocol:&OBJC_PROTOCOL___BuddyLanguageDependencyReceiver])
  {
    v7 = location[0];
    v8 = [v7 showLocalizedNames] & 1;
    objc_storeStrong(&v7, 0);
  }

  if ([v9 conformsToProtocol:&OBJC_PROTOCOL___BuddyLocaleDependencyReceiver])
  {
    v6 = v9;
    [v6 setShowLocalizedNames:v8 & 1];
    objc_storeStrong(&v6, 0);
  }

  v5.receiver = selfCopy;
  v5.super_class = BuddyLanguageLocaleFlow;
  [(BuddyLanguageLocaleFlow *)&v5 flowItemDone:location[0] nextItem:v9];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)observer:(id)observer didObserveLanguageChange:(BOOL)change localeChange:(BOOL)localeChange
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  classList = [(BuddyLanguageLocaleFlow *)selfCopy classList];
  navigationController = [(BuddyLanguageLocaleFlow *)selfCopy navigationController];
  topViewController = [navigationController topViewController];
  v8 = [classList containsObject:objc_opt_class()] ^ 1;

  if ((v8 & 1) == 0)
  {
    [(BuddyLanguageLocaleFlow *)selfCopy flowItemDone:selfCopy nextItem:0];
  }

  objc_storeStrong(location, 0);
}

- (void)userSelectedLanguage:(id)language
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, language);
  dataSource = [(BuddyLanguageLocaleFlow *)selfCopy dataSource];
  [(BuddyLanguageLocaleDataSource *)dataSource userSelectedLanguage:location[0]];

  receiver = [(BuddyLanguageLocaleFlow *)selfCopy receiver];
  [(BuddyLanguageLocaleSelectionReceiver *)receiver userSelectedLanguage:location[0]];

  objc_storeStrong(location, 0);
}

- (BOOL)userSelectedLanguageWithLocale:(id)locale countryCode:(id)code localePaneScrollOffset:(double)offset
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, locale);
  v10 = 0;
  objc_storeStrong(&v10, code);
  receiver = [(BuddyLanguageLocaleFlow *)selfCopy receiver];
  v8 = [(BuddyLanguageLocaleSelectionReceiver *)receiver userSelectedLanguageWithLocale:location[0] countryCode:v10 localePaneScrollOffset:offset];

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v8 & 1;
}

- (void)languageCompositeUpdated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = +[NSMutableArray array];
  controllers = [(BuddyLanguageLocaleFlow *)selfCopy controllers];
  v3 = [controllers count];

  if (v3)
  {
    controllers2 = [(BuddyLanguageLocaleFlow *)selfCopy controllers];
    [location[0] addObjectsFromArray:controllers2];
  }

  navigationController = [(BuddyLanguageLocaleFlow *)selfCopy navigationController];
  viewControllers = [navigationController viewControllers];
  v7 = [viewControllers count];

  if (v7)
  {
    navigationController2 = [(BuddyLanguageLocaleFlow *)selfCopy navigationController];
    viewControllers2 = [navigationController2 viewControllers];
    [location[0] addObjectsFromArray:viewControllers2];
  }

  memset(__b, 0, sizeof(__b));
  v10 = location[0];
  v11 = [v10 countByEnumeratingWithState:__b objects:v21 count:16];
  if (v11)
  {
    v12 = *__b[2];
    do
    {
      for (i = 0; i < v11; ++i)
      {
        if (*__b[2] != v12)
        {
          objc_enumerationMutation(v10);
        }

        v18 = *(__b[1] + 8 * i);
        if ([v18 conformsToProtocol:&OBJC_PROTOCOL___BuddyLanguageDependencyReceiver])
        {
          v16 = v18;
          dataSource = [(BuddyLanguageLocaleFlow *)selfCopy dataSource];
          languageComposite = [(BuddyLanguageLocaleDataSource *)dataSource languageComposite];
          [v16 setLanguageComposite:languageComposite];

          objc_storeStrong(&v16, 0);
        }
      }

      v11 = [v10 countByEnumeratingWithState:__b objects:v21 count:16];
    }

    while (v11);
  }

  objc_storeStrong(location, 0);
}

@end