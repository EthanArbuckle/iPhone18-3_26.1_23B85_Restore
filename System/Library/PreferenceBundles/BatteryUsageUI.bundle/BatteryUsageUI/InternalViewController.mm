@interface InternalViewController
+ (id)createControllerWith:(id)with;
- (_TtC14BatteryUsageUI22InternalViewController)init;
@end

@implementation InternalViewController

+ (id)createControllerWith:(id)with
{
  withCopy = with;
  v4 = sub_489FC(withCopy);

  return v4;
}

- (_TtC14BatteryUsageUI22InternalViewController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for InternalViewController();
  return [(InternalViewController *)&v3 init];
}

@end