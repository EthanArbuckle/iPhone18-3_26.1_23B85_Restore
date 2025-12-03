@interface TTRISECreateRemindersDragItem
+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error;
- (_TtC25RemindersSharingExtension29TTRISECreateRemindersDragItem)init;
- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler;
@end

@implementation TTRISECreateRemindersDragItem

- (_TtC25RemindersSharingExtension29TTRISECreateRemindersDragItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error
{
  dataCopy = data;
  v7 = sub_100049E20();
  sub_100012840(v7, v8);

  v9 = objc_opt_self();
  v10 = sub_10004C680();
  v11 = [v9 internalErrorWithDebugDescription:v10];

  swift_willThrow();
  if (error)
  {
    v12 = sub_100049DD0();

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
  v7 = sub_10004976C(v5);
  _Block_release(v5);
  _Block_release(v5);

  return v7;
}

@end