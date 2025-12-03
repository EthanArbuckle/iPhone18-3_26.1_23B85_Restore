@interface BuddyNavigationPit
+ (id)shared;
- (BOOL)controllerNeedsToRunForClass:(Class)class;
- (BOOL)isFlowItemOnTop:(id)top;
- (id)popToBuddyControllerWithClass:(Class)class animated:(BOOL)animated;
- (id)popToBuddyControllerWithClass:(Class)class withOffset:(unint64_t)offset animated:(BOOL)animated;
- (void)_pitLog:(id)log withObject:(id)object;
- (void)flow:(id)flow finishedWithLastItem:(id)item nextItem:(id)nextItem;
- (void)flowItemCancelled:(id)cancelled;
- (void)flowItemDone:(id)done;
- (void)flowItemDone:(id)done nextItem:(id)item;
- (void)flowItemDone:(id)done nextItemClass:(Class)class;
- (void)markFlowItemDone:(id)done;
- (void)presentWiFiPaneForFlow:(id)flow;
- (void)pushFlowItem:(id)item animated:(BOOL)animated;
- (void)pushFlowItem:(id)item inFlow:(id)flow animated:(BOOL)animated;
- (void)pushFlowItem:(id)item inFlow:(id)flow withExtendedInitialization:(BOOL)initialization animated:(BOOL)animated;
- (void)pushFlowItem:(id)item inFlow:(id)flow withExtendedInitialization:(BOOL)initialization animated:(BOOL)animated willPushFlowItem:(id)flowItem;
- (void)removeViewControllersOnNextPush:(id)push;
@end

@implementation BuddyNavigationPit

+ (id)shared
{
  v5 = &unk_1003A7168;
  location = 0;
  objc_storeStrong(&location, &stru_10032D008);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_1003A7160;

  return v2;
}

- (BOOL)controllerNeedsToRunForClass:(Class)class
{
  v4 = [NSString stringWithFormat:@"%s", "[BuddyNavigationPit controllerNeedsToRunForClass:]"];
  [(BuddyNavigationPit *)self _pitLog:v4 withObject:class];

  return 0;
}

- (BOOL)isFlowItemOnTop:(id)top
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, top);
  v3 = selfCopy;
  v4 = [NSString stringWithFormat:@"%s", "[BuddyNavigationPit isFlowItemOnTop:]"];
  [(BuddyNavigationPit *)v3 _pitLog:v4 withObject:location[0]];

  objc_storeStrong(location, 0);
  return 0;
}

- (void)markFlowItemDone:(id)done
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, done);
  v3 = selfCopy;
  v4 = [NSString stringWithFormat:@"%s", "[BuddyNavigationPit markFlowItemDone:]"];
  [(BuddyNavigationPit *)v3 _pitLog:v4 withObject:location[0]];

  objc_storeStrong(location, 0);
}

- (id)popToBuddyControllerWithClass:(Class)class animated:(BOOL)animated
{
  v5 = [NSString stringWithFormat:@"%s", "[BuddyNavigationPit popToBuddyControllerWithClass:animated:]"];
  [(BuddyNavigationPit *)self _pitLog:v5 withObject:class];

  return 0;
}

- (id)popToBuddyControllerWithClass:(Class)class withOffset:(unint64_t)offset animated:(BOOL)animated
{
  v6 = [NSString stringWithFormat:@"%s", "[BuddyNavigationPit popToBuddyControllerWithClass:withOffset:animated:]"];
  [(BuddyNavigationPit *)self _pitLog:v6 withObject:class];

  return 0;
}

- (void)pushFlowItem:(id)item animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v4 = selfCopy;
  v5 = [NSString stringWithFormat:@"%s", "[BuddyNavigationPit pushFlowItem:animated:]"];
  [(BuddyNavigationPit *)v4 _pitLog:v5 withObject:location[0]];

  objc_storeStrong(location, 0);
}

- (void)pushFlowItem:(id)item inFlow:(id)flow animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v8 = 0;
  objc_storeStrong(&v8, flow);
  v6 = selfCopy;
  v7 = [NSString stringWithFormat:@"%s", "[BuddyNavigationPit pushFlowItem:inFlow:animated:]"];
  [(BuddyNavigationPit *)v6 _pitLog:v7 withObject:location[0]];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)pushFlowItem:(id)item inFlow:(id)flow withExtendedInitialization:(BOOL)initialization animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v9 = 0;
  objc_storeStrong(&v9, flow);
  v7 = selfCopy;
  v8 = [NSString stringWithFormat:@"%s", "[BuddyNavigationPit pushFlowItem:inFlow:withExtendedInitialization:animated:]"];
  [(BuddyNavigationPit *)v7 _pitLog:v8 withObject:location[0]];

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)pushFlowItem:(id)item inFlow:(id)flow withExtendedInitialization:(BOOL)initialization animated:(BOOL)animated willPushFlowItem:(id)flowItem
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v16 = 0;
  objc_storeStrong(&v16, flow);
  initializationCopy = initialization;
  animatedCopy = animated;
  v13 = 0;
  objc_storeStrong(&v13, flowItem);
  v11 = selfCopy;
  v12 = [NSString stringWithFormat:@"%s", "[BuddyNavigationPit pushFlowItem:inFlow:withExtendedInitialization:animated:willPushFlowItem:]"];
  [(BuddyNavigationPit *)v11 _pitLog:v12 withObject:location[0]];

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)removeViewControllersOnNextPush:(id)push
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, push);
  v3 = selfCopy;
  v4 = [NSString stringWithFormat:@"%s", "[BuddyNavigationPit removeViewControllersOnNextPush:]"];
  [(BuddyNavigationPit *)v3 _pitLog:v4 withObject:location[0]];

  objc_storeStrong(location, 0);
}

- (void)flowItemCancelled:(id)cancelled
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cancelled);
  v3 = selfCopy;
  v4 = [NSString stringWithFormat:@"%s", "[BuddyNavigationPit flowItemCancelled:]"];
  [(BuddyNavigationPit *)v3 _pitLog:v4 withObject:location[0]];

  objc_storeStrong(location, 0);
}

- (void)flowItemDone:(id)done
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, done);
  v3 = selfCopy;
  v4 = [NSString stringWithFormat:@"%s", "[BuddyNavigationPit flowItemDone:]"];
  [(BuddyNavigationPit *)v3 _pitLog:v4 withObject:location[0]];

  objc_storeStrong(location, 0);
}

- (void)flowItemDone:(id)done nextItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, done);
  v7 = 0;
  objc_storeStrong(&v7, item);
  v5 = selfCopy;
  v6 = [NSString stringWithFormat:@"%s", "[BuddyNavigationPit flowItemDone:nextItem:]"];
  [(BuddyNavigationPit *)v5 _pitLog:v6 withObject:location[0]];

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)flowItemDone:(id)done nextItemClass:(Class)class
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, done);
  v4 = selfCopy;
  v5 = [NSString stringWithFormat:@"%s", "[BuddyNavigationPit flowItemDone:nextItemClass:]"];
  [(BuddyNavigationPit *)v4 _pitLog:v5 withObject:location[0]];

  objc_storeStrong(location, 0);
}

- (void)flow:(id)flow finishedWithLastItem:(id)item nextItem:(id)nextItem
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, flow);
  v10 = 0;
  objc_storeStrong(&v10, item);
  v9 = 0;
  objc_storeStrong(&v9, nextItem);
  v7 = selfCopy;
  v8 = [NSString stringWithFormat:@"%s", "[BuddyNavigationPit flow:finishedWithLastItem:nextItem:]"];
  [(BuddyNavigationPit *)v7 _pitLog:v8 withObject:v10];

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)presentWiFiPaneForFlow:(id)flow
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, flow);
  v3 = selfCopy;
  v4 = [NSString stringWithFormat:@"%s", "[BuddyNavigationPit presentWiFiPaneForFlow:]"];
  [(BuddyNavigationPit *)v3 _pitLog:v4 withObject:location[0]];

  objc_storeStrong(location, 0);
}

- (void)_pitLog:(id)log withObject:(id)object
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, log);
  v6 = 0;
  objc_storeStrong(&v6, object);
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
  {
    sub_10010DD40(buf, location[0], v6);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

@end