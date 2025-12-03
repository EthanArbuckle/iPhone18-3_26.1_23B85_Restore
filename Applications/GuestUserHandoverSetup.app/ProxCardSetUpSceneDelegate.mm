@interface ProxCardSetUpSceneDelegate
- (_TtC22GuestUserHandoverSetup26ProxCardSetUpSceneDelegate)init;
- (void)remoteAlertSceneDidUpdateActivationContext:(id)context;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)setWindow:(id)window;
@end

@implementation ProxCardSetUpSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC22GuestUserHandoverSetup26ProxCardSetUpSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC22GuestUserHandoverSetup26ProxCardSetUpSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_10001CC9C(sceneCopy);
}

- (_TtC22GuestUserHandoverSetup26ProxCardSetUpSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC22GuestUserHandoverSetup26ProxCardSetUpSceneDelegate_window) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC22GuestUserHandoverSetup26ProxCardSetUpSceneDelegate_rootViewController) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ProxCardSetUpSceneDelegate();
  return [(ProxCardSetUpSceneDelegate *)&v3 init];
}

- (void)remoteAlertSceneDidUpdateActivationContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_10001BC34(contextCopy);
}

@end