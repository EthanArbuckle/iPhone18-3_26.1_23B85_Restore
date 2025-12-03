@interface TTRIRemindersBoardColumnDragItem
+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error;
- (_TtC9Reminders32TTRIRemindersBoardColumnDragItem)init;
- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler;
@end

@implementation TTRIRemindersBoardColumnDragItem

- (_TtC9Reminders32TTRIRemindersBoardColumnDragItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error
{
  dataCopy = data;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100139D84(v7, v8);

  v9 = objc_opt_self();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 internalErrorWithDebugDescription:v10];

  swift_willThrow();
  if (error)
  {
    v12 = _convertErrorToNSError(_:)();

    v13 = v12;
    *error = v12;
  }

  else
  {
  }

  return 0;
}

- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  _Block_copy(v5);
  selfCopy = self;
  v7 = sub_1002DF358(v5);
  _Block_release(v5);
  _Block_release(v5);

  return v7;
}

@end