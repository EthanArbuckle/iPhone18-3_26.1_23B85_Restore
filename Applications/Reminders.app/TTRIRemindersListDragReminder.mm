@interface TTRIRemindersListDragReminder
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (int64_t)itemProviderVisibilityForRepresentationWithTypeIdentifier:(id)identifier;
- (_TtC9Reminders29TTRIRemindersListDragReminder)init;
- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler;
@end

@implementation TTRIRemindersListDragReminder

- (_TtC9Reminders29TTRIRemindersListDragReminder)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  sub_100058000(&unk_100771E10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10062D400;
  if (qword_100767368 != -1)
  {
    swift_once();
  }

  v3 = unk_100786440;
  *(v2 + 32) = qword_100786438;
  *(v2 + 40) = v3;
  v4 = objc_opt_self();

  writableTypeIdentifiersForItemProvider = [v4 writableTypeIdentifiersForItemProvider];
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100081340(v6);
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

+ (int64_t)itemProviderVisibilityForRepresentationWithTypeIdentifier:(id)identifier
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (qword_100767368 != -1)
  {
    v8 = v3;
    v9 = v4;
    swift_once();
    v3 = v8;
    v4 = v9;
  }

  if (v3 == qword_100786438 && v4 == unk_100786440)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }
}

- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  v10 = sub_1004B1E4C(v6, v8, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);

  return v10;
}

@end