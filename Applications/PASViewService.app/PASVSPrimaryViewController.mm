@interface PASVSPrimaryViewController
- (_TtC14PASViewService26PASVSPrimaryViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)didInvalidateForRemoteAlert;
@end

@implementation PASVSPrimaryViewController

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1000157DC;
  }

  else
  {
    v7 = 0;
  }

  v8 = a3;
  v9 = self;
  sub_10000FDEC(a3, v6, v7);
  sub_100015794(v6);
}

- (void)didInvalidateForRemoteAlert
{
  v2 = self;
  sub_100013A2C("PASVSPrimaryViewController didInvalidateForRemoteAlert");
}

- (_TtC14PASViewService26PASVSPrimaryViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100013C58(v5, v7, a4);
}

@end