@interface TranslateSystemApertureSceneDelegate
- (_TtC17SequoiaTranslator36TranslateSystemApertureSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneWillResignActive:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation TranslateSystemApertureSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC17SequoiaTranslator36TranslateSystemApertureSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC17SequoiaTranslator36TranslateSystemApertureSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100285554(v8);
}

- (void)sceneWillResignActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100283BAC(v4);
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100284578(v4);
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