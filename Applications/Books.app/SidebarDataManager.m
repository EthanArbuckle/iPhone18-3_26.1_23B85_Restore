@interface SidebarDataManager
- (_TtC5Books18SidebarDataManager)init;
- (void)dealloc;
@end

@implementation SidebarDataManager

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  v5 = self;
  v6 = [v4 sharedProvider];
  [v6 removeObserver:v5 accountTypes:1];

  sub_10079AE34();
  v7 = sub_10079AE04();
  v8 = v5;
  sub_10079ADF4();

  v9.receiver = v8;
  v9.super_class = ObjectType;
  [(SidebarDataManager *)&v9 dealloc];
}

- (_TtC5Books18SidebarDataManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end