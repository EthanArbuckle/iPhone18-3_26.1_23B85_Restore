@interface TranslateAppDeletionService
- (_TtC30com_apple_Translate_appremoval27TranslateAppDeletionService)init;
- (void)removeAppWithReply:(id)a3;
@end

@implementation TranslateAppDeletionService

- (void)removeAppWithReply:(id)a3
{
  v4 = _Block_copy(a3);
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

  v6 = self;
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