@interface TabChangeDelegate
- (BOOL)tabBarController:(id)a3 shouldSelectViewController:(id)a4;
- (_TtC22SubscribePageExtension17TabChangeDelegate)init;
- (void)tabBarController:(id)a3 didSelectViewController:(id)a4;
@end

@implementation TabChangeDelegate

- (BOOL)tabBarController:(id)a3 shouldSelectViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1005C9E24(v6, v7);

  return 1;
}

- (void)tabBarController:(id)a3 didSelectViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1005CA4D0(v6, v7);
}

- (_TtC22SubscribePageExtension17TabChangeDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end