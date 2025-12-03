@interface TranslateAppDeletionService
- (_TtC30com_apple_Translate_appremoval27TranslateAppDeletionService)init;
- (void)removeAppWithReply:(id)reply;
@end

@implementation TranslateAppDeletionService

- (void)removeAppWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_100002488;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  sub_10000228C(v4, v5);
  sub_100002440(v4);
}

- (_TtC30com_apple_Translate_appremoval27TranslateAppDeletionService)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TranslateAppDeletionService();
  return [(TranslateAppDeletionService *)&v3 init];
}

@end