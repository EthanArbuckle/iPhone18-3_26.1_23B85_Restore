@interface RouteItemsController
- (_TtC4Maps20RouteItemsController)init;
- (void)dealloc;
@end

@implementation RouteItemsController

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  v5 = self;
  v6 = [v4 defaultCenter];
  [v6 removeObserver:v5];

  v7.receiver = v5;
  v7.super_class = ObjectType;
  [(RouteItemsController *)&v7 dealloc];
}

- (_TtC4Maps20RouteItemsController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end