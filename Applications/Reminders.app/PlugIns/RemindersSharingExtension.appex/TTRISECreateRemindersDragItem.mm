@interface TTRISECreateRemindersDragItem
+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5;
- (_TtC25RemindersSharingExtension29TTRISECreateRemindersDragItem)init;
- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4;
@end

@implementation TTRISECreateRemindersDragItem

- (_TtC25RemindersSharingExtension29TTRISECreateRemindersDragItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = sub_100049E20();
  sub_100012840(v7, v8);

  v9 = objc_opt_self();
  v10 = sub_10004C680();
  v11 = [v9 internalErrorWithDebugDescription:v10];

  swift_willThrow();
  if (a5)
  {
    v12 = sub_100049DD0();

    v13 = v12;
    *a5 = v12;
  }

  else
  {
  }

  return 0;
}

- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  _Block_copy(v5);
  v6 = self;
  v7 = sub_10004976C(v5);
  _Block_release(v5);
  _Block_release(v5);

  return v7;
}

@end