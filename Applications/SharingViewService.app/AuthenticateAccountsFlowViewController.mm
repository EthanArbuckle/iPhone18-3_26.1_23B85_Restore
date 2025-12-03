@interface AuthenticateAccountsFlowViewController
- (_TtC18SharingViewService38AuthenticateAccountsFlowViewController)init;
- (_TtC18SharingViewService38AuthenticateAccountsFlowViewController)initWithCoder:(id)coder;
- (_TtC18SharingViewService38AuthenticateAccountsFlowViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)handleButtonActions:(id)actions;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
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

- (_TtC18SharingViewService38AuthenticateAccountsFlowViewController)initWithCoder:(id)coder
{
  v3 = (&self->super + OBJC_IVAR____TtC18SharingViewService38AuthenticateAccountsFlowViewController_presenter);
  *v3 = 0;
  v3[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
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

  contextCopy = context;
  selfCopy = self;
  sub_10008C2A4(context, v6, v7);
  sub_100025EF4(v6, v7);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10008C6A8(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10008C880(disappear);
}

- (void)handleButtonActions:(id)actions
{
  if (actions)
  {
    sub_100075104();
    sub_1000670A4();
    v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(&self->super + OBJC_IVAR____TtC18SharingViewService38AuthenticateAccountsFlowViewController_presenter))
    {
      if (v4)
      {
        v5 = v4;
        selfCopy = self;
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

- (_TtC18SharingViewService38AuthenticateAccountsFlowViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end