@interface LanguageAwareText.Coordinator
- (_TtCV17SequoiaTranslator17LanguageAwareText11Coordinator)init;
- (id)textView:(id)a3 menuConfigurationForTextItem:(id)a4 defaultMenu:(id)a5;
@end

@implementation LanguageAwareText.Coordinator

- (id)textView:(id)a3 menuConfigurationForTextItem:(id)a4 defaultMenu:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_1001370CC(v8, v9);

  return v12;
}

- (_TtCV17SequoiaTranslator17LanguageAwareText11Coordinator)init
{
  *(&self->super.isa + OBJC_IVAR____TtCV17SequoiaTranslator17LanguageAwareText11Coordinator_asrBehaviour) = 0;
  v3 = (&self->super.isa + OBJC_IVAR____TtCV17SequoiaTranslator17LanguageAwareText11Coordinator_disambiguationAction);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.isa + OBJC_IVAR____TtCV17SequoiaTranslator17LanguageAwareText11Coordinator_defineWordAction);
  *v4 = 0;
  v4[1] = 0;
  v5 = (&self->super.isa + OBJC_IVAR____TtCV17SequoiaTranslator17LanguageAwareText11Coordinator_emptyTapGestureHandler);
  *v5 = 0;
  v5[1] = 0;
  v6 = (&self->super.isa + OBJC_IVAR____TtCV17SequoiaTranslator17LanguageAwareText11Coordinator_toggleHighlightAction);
  v7 = type metadata accessor for LanguageAwareText.Coordinator();
  *v6 = 0;
  v6[1] = 0;
  v9.receiver = self;
  v9.super_class = v7;
  return [(LanguageAwareText.Coordinator *)&v9 init];
}

@end