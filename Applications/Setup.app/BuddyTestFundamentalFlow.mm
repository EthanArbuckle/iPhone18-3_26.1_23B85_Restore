@interface BuddyTestFundamentalFlow
+ (id)allowedFlowItems;
+ (id)classes;
- (BuddyTestFundamentalFlow)init;
- (BuddyTestFundamentalFlow)initWithClasses:(id)classes;
- (Class)initialFlowItemClass;
- (Class)potentialNextFlowItemClassFollowingFlowItemClass:(Class)class;
- (void)configureFlowItem:(id)item;
- (void)prepareWithCompletion:(id)completion;
@end

@implementation BuddyTestFundamentalFlow

- (BuddyTestFundamentalFlow)init
{
  v3 = [BuddyTestFundamentalFlow classes:a2];
  location = [(BuddyTestFundamentalFlow *)self initWithClasses:v3];
  objc_storeStrong(&location, location);

  v4 = location;
  objc_storeStrong(&location, 0);
  return v4;
}

- (BuddyTestFundamentalFlow)initWithClasses:(id)classes
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, classes);
  v3 = selfCopy;
  selfCopy = 0;
  v16.receiver = v3;
  v16.super_class = BuddyTestFundamentalFlow;
  selfCopy = [(BuddyTestFundamentalFlow *)&v16 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(selfCopy + 2, location[0]);
    v15 = 0;
    obj = objc_alloc_init(NSMutableDictionary);
    memset(__b, 0, sizeof(__b));
    v4 = location[0];
    v5 = [v4 countByEnumeratingWithState:__b objects:v19 count:16];
    if (v5)
    {
      v6 = *__b[2];
      do
      {
        for (i = 0; i < v5; ++i)
        {
          if (*__b[2] != v6)
          {
            objc_enumerationMutation(v4);
          }

          aClass = 0;
          aClass = *(__b[1] + 8 * i);
          if (v15)
          {
            [obj setObject:aClass forKeyedSubscript:v15];
          }

          v8 = NSStringFromClass(aClass);
          v9 = v15;
          v15 = v8;
        }

        v5 = [v4 countByEnumeratingWithState:__b objects:v19 count:16];
      }

      while (v5);
    }

    objc_storeStrong(selfCopy + 3, obj);
    objc_storeStrong(&obj, 0);
    objc_storeStrong(&v15, 0);
  }

  v10 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

+ (id)classes
{
  v12[2] = self;
  v12[1] = a2;
  v2 = +[BYPreferencesController buddyPreferencesInternal];
  v12[0] = [v2 objectForKey:@"DebugFlowItemClassNames"];

  location = objc_alloc_init(NSMutableArray);
  memset(v9, 0, sizeof(v9));
  v3 = v12[0];
  v4 = [v3 countByEnumeratingWithState:v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v9[2];
    do
    {
      for (i = 0; i < v4; ++i)
      {
        if (*v9[2] != v5)
        {
          objc_enumerationMutation(v3);
        }

        aClassName = *(v9[1] + 8 * i);
        [location addObject:NSClassFromString(aClassName)];
      }

      v4 = [v3 countByEnumeratingWithState:v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = location;
  objc_storeStrong(&location, 0);
  objc_storeStrong(v12, 0);
  return v7;
}

- (void)prepareWithCompletion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  if (location[0])
  {
    (*(location[0] + 2))();
  }

  objc_storeStrong(location, 0);
}

- (Class)initialFlowItemClass
{
  classes = [(BuddyTestFundamentalFlow *)self classes];
  firstObject = [(NSArray *)classes firstObject];

  v6 = 0;
  v3 = 0;
  if (firstObject)
  {
    willSupplyInitialFlowItemClass = [(BuddyTestFundamentalFlow *)self willSupplyInitialFlowItemClass];
    v6 = 1;
    v3 = willSupplyInitialFlowItemClass != 0;
  }

  if (v6)
  {
  }

  if (v3)
  {
    willSupplyInitialFlowItemClass2 = [(BuddyTestFundamentalFlow *)self willSupplyInitialFlowItemClass];
    willSupplyInitialFlowItemClass2[2](willSupplyInitialFlowItemClass2, firstObject);
  }

  return firstObject;
}

- (void)configureFlowItem:(id)item
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  objc_storeStrong(location, 0);
}

- (Class)potentialNextFlowItemClassFollowingFlowItemClass:(Class)class
{
  nextClassByCurrentClassNameMap = [(BuddyTestFundamentalFlow *)self nextClassByCurrentClassNameMap];
  v4 = NSStringFromClass(class);
  v5 = [(NSDictionary *)nextClassByCurrentClassNameMap objectForKeyedSubscript:v4];

  return v5;
}

+ (id)allowedFlowItems
{
  v5 = &unk_1003A7408;
  location = 0;
  objc_storeStrong(&location, &stru_10032F2F0);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_1003A7400;

  return v2;
}

@end