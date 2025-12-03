@interface PersonalTranslationActivityManager
- (_TtC17SequoiaTranslator34PersonalTranslationActivityManager)init;
- (void)dealloc;
@end

@implementation PersonalTranslationActivityManager

- (_TtC17SequoiaTranslator34PersonalTranslationActivityManager)init
{
  *(&self->super.isa + OBJC_IVAR____TtC17SequoiaTranslator34PersonalTranslationActivityManager_currentActivity) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC17SequoiaTranslator34PersonalTranslationActivityManager_assertion) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC17SequoiaTranslator34PersonalTranslationActivityManager_currentViewModel) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for PersonalTranslationActivityManager();
  return [(PersonalTranslationActivityManager *)&v3 init];
}

- (void)dealloc
{
  selfCopy = self;
  sub_1001A2440(0);
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for PersonalTranslationActivityManager();
  [(PersonalTranslationActivityManager *)&v3 dealloc];
}

@end