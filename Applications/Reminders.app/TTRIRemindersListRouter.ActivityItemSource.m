@interface TTRIRemindersListRouter.ActivityItemSource
- (_TtCC9Reminders23TTRIRemindersListRouterP33_6FFDCD23D13881F9EFBB4406934282BE18ActivityItemSource)init;
- (id)activityViewController:(id)a3 dataTypeIdentifierForActivityType:(id)a4;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewController:(id)a3 thumbnailImageForActivityType:(id)a4 suggestedSize:(CGSize)a5;
- (id)activityViewControllerPlaceholderItem:(id)a3;
@end

@implementation TTRIRemindersListRouter.ActivityItemSource

- (id)activityViewControllerPlaceholderItem:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001371B8(v8);

  sub_10000C36C(v8, v8[3]);
  v6 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_100004758(v8);

  return v6;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1001373D8(a4, v16);

  v9 = v17;
  if (v17)
  {
    v10 = sub_10000C36C(v16, v17);
    v11 = *(v9 - 8);
    __chkstk_darwin(v10);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v13);
    v14 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v11 + 8))(v13, v9);
    sub_100004758(v16);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)activityViewController:(id)a3 dataTypeIdentifierForActivityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100139C58();

  v9 = String._bridgeToObjectiveC()();

  return v9;
}

- (id)activityViewController:(id)a3 thumbnailImageForActivityType:(id)a4 suggestedSize:(CGSize)a5
{
  v6 = type metadata accessor for TTRIRemindersListRouterShareSheetItem(0);
  __chkstk_darwin(v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100139BF4(self + OBJC_IVAR____TtCC9Reminders23TTRIRemindersListRouterP33_6FFDCD23D13881F9EFBB4406934282BE18ActivityItemSource_item, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100137F48(v8);
    v9 = 0;
  }

  else
  {
    v10 = sub_100058000(&qword_10076DE60);

    v9 = *&v8[*(v10 + 64)];
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 8))(v8, v11);
  }

  return v9;
}

- (_TtCC9Reminders23TTRIRemindersListRouterP33_6FFDCD23D13881F9EFBB4406934282BE18ActivityItemSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end