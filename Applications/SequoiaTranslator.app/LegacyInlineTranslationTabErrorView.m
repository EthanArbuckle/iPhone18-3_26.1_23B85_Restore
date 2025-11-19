@interface LegacyInlineTranslationTabErrorView
- (_TtC17SequoiaTranslator35LegacyInlineTranslationTabErrorView)initWithCoder:(id)a3;
- (void)onDeviceLinkTapped;
@end

@implementation LegacyInlineTranslationTabErrorView

- (_TtC17SequoiaTranslator35LegacyInlineTranslationTabErrorView)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC17SequoiaTranslator35LegacyInlineTranslationTabErrorView_errorType;
  *v3 = 0;
  v3[8] = -1;
  *&self->errorType[OBJC_IVAR____TtC17SequoiaTranslator35LegacyInlineTranslationTabErrorView_languageDownloadPresenter] = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)onDeviceLinkTapped
{
  v3 = self + OBJC_IVAR____TtC17SequoiaTranslator35LegacyInlineTranslationTabErrorView_languageDownloadPresenter;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 8);
    v7 = self;
    v6(ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

@end