@interface RemoteAlertRootViewController
- (_TtC9AirDropUIP33_C1270FA1C3C759CC3C2C305DD7D2022129RemoteAlertRootViewController)initWithCoder:(id)a3;
- (_TtC9AirDropUIP33_C1270FA1C3C759CC3C2C305DD7D2022129RemoteAlertRootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
@end

@implementation RemoteAlertRootViewController

- (_TtC9AirDropUIP33_C1270FA1C3C759CC3C2C305DD7D2022129RemoteAlertRootViewController)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_100025394;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  sub_100024D9C(a3, v6, v7);
  sub_10002534C(v6);
}

- (_TtC9AirDropUIP33_C1270FA1C3C759CC3C2C305DD7D2022129RemoteAlertRootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end