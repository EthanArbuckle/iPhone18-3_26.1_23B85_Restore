@interface ACUISWorkloop
+ (id)createWorkloopNamed:(id)a3;
@end

@implementation ACUISWorkloop

+ (id)createWorkloopNamed:(id)a3
{
  inactive = dispatch_workloop_create_inactive([a3 UTF8String]);
  dispatch_workloop_set_autorelease_frequency(inactive, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  dispatch_workloop_set_qos_class_floor();
  dispatch_activate(inactive);

  return inactive;
}

@end