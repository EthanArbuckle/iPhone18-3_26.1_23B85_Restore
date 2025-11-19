@interface AuthenticateAccountsFlowViewController
- (_TtC18SharingViewService38AuthenticateAccountsFlowViewController)init;
- (_TtC18SharingViewService38AuthenticateAccountsFlowViewController)initWithCoder:(id)a3;
- (_TtC18SharingViewService38AuthenticateAccountsFlowViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)handleButtonActions:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation AuthenticateAccountsFlowViewController

- (_TtC18SharingViewService38AuthenticateAccountsFlowViewController)init
{
  ObjectType = swift_getObjectType();
  v4 = (&self->super + OBJC_IVAR____TtC18SharingViewService38AuthenticateAccountsFlowViewController_presenter);
  *v4 = 0;
  v4[1] = 0;
  v5 = (&self->super + OBJC_IVAR____TtC18SharingViewService38AuthenticateAccountsFlowViewController_interactorGenerator);
  *v5 = sub_10008BEE0;
  v5[1] = 0;
  v6 = (&self->super + OBJC_IVAR____TtC18SharingViewService38AuthenticateAccountsFlowViewController_routerGenerator);
  *v6 = sub_10008BFF8;
  v6[1] = 0;
  v7 = (&self->super + OBJC_IVAR____TtC18SharingViewService38AuthenticateAccountsFlowViewController_presenterGenerator);
  *v7 = sub_10008C02C;
  v7[1] = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  return [(BaseProxFlowViewController *)&v9 initWithNibName:0 bundle:0];
}

- (_TtC18SharingViewService38AuthenticateAccountsFlowViewController)initWithCoder:(id)a3
{
  v3 = (&self->super + OBJC_IVAR____TtC18SharingViewService38AuthenticateAccountsFlowViewController_presenter);
  *v3 = 0;
  v3[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_10006709C;
  }

  else
  {
    v7 = 0;
  }

  v8 = a3;
  v9 = self;
  sub_10008C2A4(a3, v6, v7);
  sub_100025EF4(v6, v7);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10008C6A8(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_10008C880(a3);
}

- (void)handleButtonActions:(id)a3
{
  if (a3)
  {
    sub_100075104();
    sub_1000670A4();
    v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(&self->super + OBJC_IVAR____TtC18SharingViewService38AuthenticateAccountsFlowViewController_presenter))
    {
      if (v4)
      {
        v5 = v4;
        v6 = self;
        swift_unknownObjectRetain();
        sub_1000E7D50(v5);
        swift_unknownObjectRelease();

        return;
      }

LABEL_11:
      __break(1u);
      return;
    }
  }

  else if (*(&self->super + OBJC_IVAR____TtC18SharingViewService38AuthenticateAccountsFlowViewController_presenter))
  {
    goto LABEL_11;
  }
}

- (_TtC18SharingViewService38AuthenticateAccountsFlowViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end