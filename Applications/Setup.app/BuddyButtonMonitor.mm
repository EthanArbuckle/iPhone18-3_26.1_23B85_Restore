@interface BuddyButtonMonitor
- (BuddyButtonMonitor)init;
@end

@implementation BuddyButtonMonitor

- (BuddyButtonMonitor)init
{
  v13 = a2;
  location = 0;
  v12.receiver = self;
  v12.super_class = BuddyButtonMonitor;
  location = [(BuddyButtonMonitor *)&v12 init];
  objc_storeStrong(&location, location);
  if (!location || ((v11 = [[HIDEventSystemClient alloc] initWithType:1]) == 0 ? (v15 = 0, v4 = 1) : (objc_msgSend(v11, "setMatching:", &off_10033D010), v2 = &_dispatch_main_q, objc_msgSend(v11, "setDispatchQueue:", v2), v2, v5 = _NSConcreteStackBlock, v6 = -1073741824, v7 = 0, v8 = sub_1001F5498, v9 = &unk_10032EF10, v10 = location, objc_msgSend(v11, "setEventHandler:", &v5), objc_msgSend(v11, "activate"), objc_storeStrong(&v10, 0), v4 = 0), objc_storeStrong(&v11, 0), !v4))
  {
    v15 = location;
  }

  objc_storeStrong(&location, 0);
  return v15;
}

@end