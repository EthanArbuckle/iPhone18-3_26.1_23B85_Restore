@interface ContactsLimitedAccessPromptSceneDelegate
- (_TtC23LimitedAccessPromptView40ContactsLimitedAccessPromptSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)setWindow:(id)window;
@end

@implementation ContactsLimitedAccessPromptSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC23LimitedAccessPromptView40ContactsLimitedAccessPromptSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC23LimitedAccessPromptView40ContactsLimitedAccessPromptSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100015FF4(sceneCopy);
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