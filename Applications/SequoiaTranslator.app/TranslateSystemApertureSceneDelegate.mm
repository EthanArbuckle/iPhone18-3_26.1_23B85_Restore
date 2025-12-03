@interface TranslateSystemApertureSceneDelegate
- (_TtC17SequoiaTranslator36TranslateSystemApertureSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneWillResignActive:(id)active;
- (void)setWindow:(id)window;
@end

@implementation TranslateSystemApertureSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC17SequoiaTranslator36TranslateSystemApertureSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC17SequoiaTranslator36TranslateSystemApertureSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100285554(sceneCopy);
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_100283BAC(activeCopy);
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_100284578(activeCopy);
}

- (_TtC17SequoiaTranslator36TranslateSystemApertureSceneDelegate)init
{
  *(&self->super.isa + OBJC_IVAR____TtC17SequoiaTranslator36TranslateSystemApertureSceneDelegate____lazy_storage___speechTranslationElementProvider) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC17SequoiaTranslator36TranslateSystemApertureSceneDelegate____lazy_storage___personalTranslationElementProvider) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC17SequoiaTranslator36TranslateSystemApertureSceneDelegate_window) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC17SequoiaTranslator36TranslateSystemApertureSceneDelegate_currentSpeechTranslationActivity) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for TranslateSystemApertureSceneDelegate();
  return [(TranslateSystemApertureSceneDelegate *)&v3 init];
}

@end