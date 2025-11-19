@interface DADeviceObserverWithUILocal
- (id)beginDiscoveringDevicesWithHandler:(id)a3;
@end

@implementation DADeviceObserverWithUILocal

- (id)beginDiscoveringDevicesWithHandler:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006564;
  block[3] = &unk_1001BC710;
  v9 = v3;
  v5 = v3;
  dispatch_async(v4, block);

  v6 = +[NSUUID UUID];

  return v6;
}

@end