@interface BuddyButtonConfigurationWrapper
- (void)prepare:(id)a3;
@end

@implementation BuddyButtonConfigurationWrapper

- (void)prepare:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = sub_100153A90();
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100153BA4;
  v8 = &unk_10032B020;
  v9 = v12;
  v10 = location[0];
  [v3 preloadResourcesWithCompletion:&v4];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

@end