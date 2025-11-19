@interface TTRITemplateSharingRouter.ShareSheetItem
- (_TtCC9Reminders25TTRITemplateSharingRouterP33_B88B83D8B282D69A84EFFB48896895C814ShareSheetItem)init;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewControllerPlaceholderItem:(id)a3;
@end

@implementation TTRITemplateSharingRouter.ShareSheetItem

- (id)activityViewControllerPlaceholderItem:(id)a3
{
  v4 = type metadata accessor for URL();
  v5 = __chkstk_darwin(v4);
  (*(v7 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), self + OBJC_IVAR____TtCC9Reminders25TTRITemplateSharingRouterP33_B88B83D8B282D69A84EFFB48896895C814ShareSheetItem_url, v4, v5);
  v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();

  return v8;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v5 = type metadata accessor for URL();
  v6 = __chkstk_darwin(v5);
  (*(v8 + 16))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), self + OBJC_IVAR____TtCC9Reminders25TTRITemplateSharingRouterP33_B88B83D8B282D69A84EFFB48896895C814ShareSheetItem_url, v5, v6);
  v9 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();

  return v9;
}

- (_TtCC9Reminders25TTRITemplateSharingRouterP33_B88B83D8B282D69A84EFFB48896895C814ShareSheetItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end