@interface ContactsLimitedAccessPromptSceneDelegate
- (_TtC23LimitedAccessPromptView40ContactsLimitedAccessPromptSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)setWindow:(id)a3;
@end

@implementation ContactsLimitedAccessPromptSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC23LimitedAccessPromptView40ContactsLimitedAccessPromptSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC23LimitedAccessPromptView40ContactsLimitedAccessPromptSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100015FF4(v8);
}

- (_TtC23LimitedAccessPromptView40ContactsLimitedAccessPromptSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC23LimitedAccessPromptView40ContactsLimitedAccessPromptSceneDelegate_window) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC23LimitedAccessPromptView40ContactsLimitedAccessPromptSceneDelegate_rootVc) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ContactsLimitedAccessPromptSceneDelegate();
  return [(ContactsLimitedAccessPromptSceneDelegate *)&v3 init];
}

@end