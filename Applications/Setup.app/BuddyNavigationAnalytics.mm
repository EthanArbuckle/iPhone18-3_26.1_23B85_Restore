@interface BuddyNavigationAnalytics
- (BuddyNavigationAnalytics)init;
- (BuddyNavigationAnalytics)initWithNavigationController:(id)controller;
- (void)_addEventForClass:(Class)class activeDuration:(double)duration backgroundDuration:(double)backgroundDuration;
- (void)_addEventForCurrentViewController;
- (void)addEventsUsingAnalyticsManager:(id)manager;
- (void)didBecomeActive;
- (void)didEnterBackground;
- (void)navigationController:(id)controller didShowViewController:(id)viewController operation:(int64_t)operation animated:(BOOL)animated;
- (void)prepareEventForCurrentViewController;
- (void)setCurrentViewController:(id)controller;
@end

@implementation BuddyNavigationAnalytics

- (BuddyNavigationAnalytics)init
{
  v7 = a2;
  location = 0;
  v6.receiver = self;
  v6.super_class = BuddyNavigationAnalytics;
  location = [(BuddyNavigationAnalytics *)&v6 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    v2 = objc_alloc_init(NSMutableArray);
    v3 = *(location + 1);
    *(location + 1) = v2;
  }

  v4 = location;
  objc_storeStrong(&location, 0);
  return v4;
}

- (BuddyNavigationAnalytics)initWithNavigationController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v3 = selfCopy;
  selfCopy = 0;
  selfCopy = [v3 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [location[0] addDelegateObserver:selfCopy];
  }

  v4 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v4;
}

- (void)didBecomeActive
{
  v2 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v2);

  [(BuddyNavigationAnalytics *)self setActiveStartTimestamp:+[BuddyTimestamp currentTimestamp]];
  if ([(BuddyNavigationAnalytics *)self backgroundStartTimestamp])
  {
    [BuddyTimestamp intervalSinceTimestamp:[(BuddyNavigationAnalytics *)self backgroundStartTimestamp]];
    v4 = v3;
    [(BuddyNavigationAnalytics *)self currentViewControllerBackgroundDuration];
    [(BuddyNavigationAnalytics *)self setCurrentViewControllerBackgroundDuration:v5 + v4];
    [(BuddyNavigationAnalytics *)self setBackgroundStartTimestamp:0];
  }
}

- (void)didEnterBackground
{
  v2 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v2);

  [(BuddyNavigationAnalytics *)self setBackgroundStartTimestamp:+[BuddyTimestamp currentTimestamp]];
  if ([(BuddyNavigationAnalytics *)self activeStartTimestamp])
  {
    [BuddyTimestamp intervalSinceTimestamp:[(BuddyNavigationAnalytics *)self activeStartTimestamp]];
    v4 = v3;
    [(BuddyNavigationAnalytics *)self currentViewControllerActiveDuration];
    [(BuddyNavigationAnalytics *)self setCurrentViewControllerActiveDuration:v5 + v4];
    [(BuddyNavigationAnalytics *)self setActiveStartTimestamp:0];
  }
}

- (void)prepareEventForCurrentViewController
{
  currentViewController = [(BuddyNavigationAnalytics *)self currentViewController];

  if (currentViewController)
  {
    [(BuddyNavigationAnalytics *)self _addEventForCurrentViewController];
    [(BuddyNavigationAnalytics *)self setCurrentViewController:0];
  }
}

- (void)addEventsUsingAnalyticsManager:(id)manager
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  memset(__b, 0, sizeof(__b));
  eventPayloads = [(BuddyNavigationAnalytics *)selfCopy eventPayloads];
  v4 = [(NSMutableArray *)eventPayloads countByEnumeratingWithState:__b objects:v11 count:16];
  if (v4)
  {
    v5 = *__b[2];
    do
    {
      for (i = 0; i < v4; ++i)
      {
        if (*__b[2] != v5)
        {
          objc_enumerationMutation(eventPayloads);
        }

        v8 = *(__b[1] + 8 * i);
        [location[0] addEvent:@"com.apple.setupassistant.ios.pane_duration" withPayload:v8 persist:1];
      }

      v4 = [(NSMutableArray *)eventPayloads countByEnumeratingWithState:__b objects:v11 count:16];
    }

    while (v4);
  }

  objc_storeStrong(location, 0);
}

- (void)setCurrentViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  objc_storeStrong(&selfCopy->_currentViewController, location[0]);
  if ([(BuddyNavigationAnalytics *)selfCopy activeStartTimestamp])
  {
    v3 = +[BuddyTimestamp currentTimestamp];
    [(BuddyNavigationAnalytics *)selfCopy setActiveStartTimestamp:v3];
  }

  if ([(BuddyNavigationAnalytics *)selfCopy backgroundStartTimestamp])
  {
    v4 = +[BuddyTimestamp currentTimestamp];
    [(BuddyNavigationAnalytics *)selfCopy setBackgroundStartTimestamp:v4];
  }

  [(BuddyNavigationAnalytics *)selfCopy setCurrentViewControllerActiveDuration:0.0];
  [(BuddyNavigationAnalytics *)selfCopy setCurrentViewControllerBackgroundDuration:0.0];
  objc_storeStrong(location, 0);
}

- (void)_addEventForCurrentViewController
{
  if ([(BuddyNavigationAnalytics *)self activeStartTimestamp])
  {
    [BuddyTimestamp intervalSinceTimestamp:[(BuddyNavigationAnalytics *)self activeStartTimestamp]];
    v3 = v2;
    [(BuddyNavigationAnalytics *)self currentViewControllerActiveDuration];
    [(BuddyNavigationAnalytics *)self setCurrentViewControllerActiveDuration:v4 + v3];
  }

  if ([(BuddyNavigationAnalytics *)self backgroundStartTimestamp])
  {
    [BuddyTimestamp intervalSinceTimestamp:[(BuddyNavigationAnalytics *)self backgroundStartTimestamp]];
    v6 = v5;
    [(BuddyNavigationAnalytics *)self currentViewControllerBackgroundDuration];
    [(BuddyNavigationAnalytics *)self setCurrentViewControllerBackgroundDuration:v7 + v6];
  }

  currentViewController = [(BuddyNavigationAnalytics *)self currentViewController];
  v9 = objc_opt_class();
  [(BuddyNavigationAnalytics *)self currentViewControllerActiveDuration];
  v11 = v10;
  [(BuddyNavigationAnalytics *)self currentViewControllerBackgroundDuration];
  [(BuddyNavigationAnalytics *)self _addEventForClass:v9 activeDuration:v11 backgroundDuration:v12];
}

- (void)_addEventForClass:(Class)class activeDuration:(double)duration backgroundDuration:(double)backgroundDuration
{
  eventPayloads = [(BuddyNavigationAnalytics *)self eventPayloads];
  v13[0] = @"class";
  v6 = NSStringFromClass(class);
  v14[0] = v6;
  v13[1] = @"activeDuration";
  v7 = [NSNumber numberWithDouble:duration];
  v14[1] = v7;
  v13[2] = @"backgroundDuration";
  v8 = [NSNumber numberWithDouble:backgroundDuration];
  v14[2] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];
  [(NSMutableArray *)eventPayloads addObject:v9];
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController operation:(int64_t)operation animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v8 = 0;
  objc_storeStrong(&v8, viewController);
  currentViewController = [(BuddyNavigationAnalytics *)selfCopy currentViewController];

  if (currentViewController)
  {
    [(BuddyNavigationAnalytics *)selfCopy _addEventForCurrentViewController];
  }

  [(BuddyNavigationAnalytics *)selfCopy setCurrentViewController:v8];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

@end