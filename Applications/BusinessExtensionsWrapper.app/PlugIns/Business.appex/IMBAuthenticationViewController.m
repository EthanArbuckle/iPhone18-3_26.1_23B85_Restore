@interface IMBAuthenticationViewController
- (BOOL)shouldHandleRedirectURI:(id)a3;
- (id)presentationAnchorForWebAuthenticationSession:(id)a3;
- (void)didChangeNavigationURL:(id)a3;
- (void)didChangeSecureStatus:(BOOL)a3;
- (void)didReceiveCallbackRequest:(id)a3;
- (void)dismiss;
- (void)viewDidLoad;
@end

@implementation IMBAuthenticationViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1000493F4();
}

- (id)presentationAnchorForWebAuthenticationSession:(id)a3
{
  result = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_aswasWindow);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

- (BOOL)shouldHandleRedirectURI:(id)a3
{
  v4 = sub_1000AB6EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB6AC();
  v10 = self;
  v11 = sub_10004ACFC();

  (*(v5 + 8))(v9, v4);
  return v11 & 1;
}

- (void)didReceiveCallbackRequest:(id)a3
{
  v4 = sub_1000AB57C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB54C();
  v10 = self;
  sub_10004AE98();

  (*(v5 + 8))(v9, v4);
}

- (void)didChangeSecureStatus:(BOOL)a3
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_webViewController);
  v5 = self;
  v4 = v3;
  sub_100072924();
}

- (void)didChangeNavigationURL:(id)a3
{
  v4 = sub_1000AB6EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB6AC();
  v10 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_webViewController);
  v11 = self;
  v12 = v10;
  sub_100072924();

  (*(v5 + 8))(v9, v4);
}

- (void)dismiss
{
  v3 = self + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController__dismissalDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = self;
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 1);
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 16);
      v7 = type metadata accessor for IMBAuthenticationViewController();
      v6(v8, v7, ObjectType, v4);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

@end