@interface WSWorkloop
+ (OS_dispatch_queue)sharedFrameworkWorkloop;
+ (id)createWorkloopWithLabel:(id)label;
@end

@implementation WSWorkloop

+ (OS_dispatch_queue)sharedFrameworkWorkloop
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1C40;
  block[3] = &unk_39E28;
  block[4] = self;
  if (qword_3EA68[0] != -1)
  {
    dispatch_once(qword_3EA68, block);
  }

  v2 = qword_3EA60;

  return v2;
}

+ (id)createWorkloopWithLabel:(id)label
{
  inactive = dispatch_workloop_create_inactive([label UTF8String]);
  dispatch_workloop_set_autorelease_frequency(inactive, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  dispatch_activate(inactive);

  return inactive;
}

@end