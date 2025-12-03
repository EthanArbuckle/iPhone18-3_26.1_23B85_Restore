@interface RouteItemsController
- (_TtC4Maps20RouteItemsController)init;
- (void)dealloc;
@end

@implementation RouteItemsController

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v7.receiver = selfCopy;
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