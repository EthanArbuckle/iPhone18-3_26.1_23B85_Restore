@interface BuddyDeviceManagementProvider
- (void)loadSkipKeys:(id)a3;
@end

@implementation BuddyDeviceManagementProvider

- (void)loadSkipKeys:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = objc_alloc_init(DMFFetchDevicePropertiesRequest);
  v13 = DMFDeviceSkippedSetupPanesKey;
  v3 = [NSArray arrayWithObjects:&v13 count:1];
  [v11 setPropertyKeys:v3];

  v4 = +[DMFConnection systemConnection];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_100107E34;
  v9 = &unk_10032CF70;
  v10 = location[0];
  [v4 performRequest:v11 completion:&v5];

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

@end