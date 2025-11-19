@interface TTRIAccountsListsDragItem
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5;
+ (int64_t)itemProviderVisibilityForRepresentationWithTypeIdentifier:(id)a3;
- (_TtC9Reminders25TTRIAccountsListsDragItem)init;
- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4;
@end

@implementation TTRIAccountsListsDragItem

- (_TtC9Reminders25TTRIAccountsListsDragItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (NSArray)readableTypeIdentifiersForItemProvider
{
  sub_100058000(&unk_100771E10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10062D400;
  if (qword_100767378 != -1)
  {
    swift_once();
  }

  v3 = *algn_100786598;
  *(v2 + 32) = qword_100786590;
  *(v2 + 40) = v3;

  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100139D84(v7, v8);

  v9 = objc_opt_self();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 internalErrorWithDebugDescription:v10];

  swift_willThrow();
  if (a5)
  {
    v12 = _convertErrorToNSError(_:)();

    v13 = v12;
    *a5 = v12;
  }

  else
  {
  }

  return 0;
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  sub_100058000(&unk_100771E10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10062D400;
  if (qword_100767378 != -1)
  {
    swift_once();
  }

  v3 = *algn_100786598;
  *(v2 + 32) = qword_100786590;
  *(v2 + 40) = v3;
  v4 = objc_opt_self();

  v5 = [v4 writableTypeIdentifiersForItemProvider];
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100081340(v6);
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

+ (int64_t)itemProviderVisibilityForRepresentationWithTypeIdentifier:(id)a3
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (qword_100767378 != -1)
  {
    v8 = v3;
    v9 = v4;
    swift_once();
    v3 = v8;
    v4 = v9;
  }

  if (v3 == qword_100786590 && v4 == *algn_100786598)
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

- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  v10 = sub_1004B6E68(v6, v8, v9, v5);
  _Block_release(v5);
  _Block_release(v5);

  return v10;
}

@end