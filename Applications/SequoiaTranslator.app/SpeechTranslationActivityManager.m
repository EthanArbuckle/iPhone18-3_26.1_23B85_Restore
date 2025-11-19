@interface SpeechTranslationActivityManager
- (_TtC17SequoiaTranslator32SpeechTranslationActivityManager)init;
@end

@implementation SpeechTranslationActivityManager

- (_TtC17SequoiaTranslator32SpeechTranslationActivityManager)init
{
  *(&self->super.isa + OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationActivityManager_currentActivity) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationActivityManager_assertion) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SpeechTranslationActivityManager();
  return [(SpeechTranslationActivityManager *)&v3 init];
}

@end