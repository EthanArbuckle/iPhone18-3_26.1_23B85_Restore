@interface TabChangeDelegate
- (BOOL)tabBarController:(id)a3 shouldSelectViewController:(id)a4;
- (_TtC18ASMessagesProvider17TabChangeDelegate)init;
- (void)tabBarController:(id)a3 didSelectViewController:(id)a4;
@end

@implementation TabChangeDelegate

- (BOOL)tabBarController:(id)a3 shouldSelectViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_5DFBF4(v6, v7);

  return 1;
}

- (void)tabBarController:(id)a3 didSelectViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_5E02A0(v6, v7);
}

- (_TtC18ASMessagesProvider17TabChangeDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end