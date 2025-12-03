@interface RemoteAlertRootViewController
- (_TtC9AirDropUIP33_C1270FA1C3C759CC3C2C305DD7D2022129RemoteAlertRootViewController)initWithCoder:(id)coder;
- (_TtC9AirDropUIP33_C1270FA1C3C759CC3C2C305DD7D2022129RemoteAlertRootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
@end

@implementation RemoteAlertRootViewController

- (_TtC9AirDropUIP33_C1270FA1C3C759CC3C2C305DD7D2022129RemoteAlertRootViewController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  v6 = _Block_copy(completion);
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

  selfCopy = self;
  sub_100024D9C(animated, v6, v7);
  sub_10002534C(v6);
}

- (_TtC9AirDropUIP33_C1270FA1C3C759CC3C2C305DD7D2022129RemoteAlertRootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end