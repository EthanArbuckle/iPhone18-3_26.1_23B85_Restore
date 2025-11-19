@interface FilteringNavigationController
- (_TtC14AppleIDSetupUIP33_1BED1CE7895EABE830B4BDDE905BE8B329FilteringNavigationController)initWithCoder:(id)a3;
- (_TtC14AppleIDSetupUIP33_1BED1CE7895EABE830B4BDDE905BE8B329FilteringNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC14AppleIDSetupUIP33_1BED1CE7895EABE830B4BDDE905BE8B329FilteringNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC14AppleIDSetupUIP33_1BED1CE7895EABE830B4BDDE905BE8B329FilteringNavigationController)initWithRootViewController:(id)a3;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
@end

@implementation FilteringNavigationController

- (_TtC14AppleIDSetupUIP33_1BED1CE7895EABE830B4BDDE905BE8B329FilteringNavigationController)initWithCoder:(id)a3
{
  result = sub_240A2C58C();
  __break(1u);
  return result;
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_24095C948(v6, a4);
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_240964BC4;
  }

  else
  {
    v9 = 0;
  }

  v10 = a3;
  v11 = self;
  sub_24095CB28(v10, a4, v8, v9);
  sub_24090C1A0(v8);
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_240963BB4;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  sub_24095CD00(a3, v6, v7);
  sub_24090C1A0(v6);
}

- (_TtC14AppleIDSetupUIP33_1BED1CE7895EABE830B4BDDE905BE8B329FilteringNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC14AppleIDSetupUIP33_1BED1CE7895EABE830B4BDDE905BE8B329FilteringNavigationController)initWithRootViewController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC14AppleIDSetupUIP33_1BED1CE7895EABE830B4BDDE905BE8B329FilteringNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end