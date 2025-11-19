@interface TTRITemplateSharingRouter.CopyiCloudLinkActivity
- (BOOL)canPerformWithActivityItems:(id)a3;
- (NSString)activityTitle;
- (NSString)activityType;
- (UIImage)activityImage;
- (_TtCC9Reminders25TTRITemplateSharingRouterP33_B88B83D8B282D69A84EFFB48896895C822CopyiCloudLinkActivity)init;
- (void)performActivity;
- (void)prepareWithActivityItems:(id)a3;
@end

@implementation TTRITemplateSharingRouter.CopyiCloudLinkActivity

- (NSString)activityType
{
  if (qword_100767090 != -1)
  {
    swift_once();
  }

  v3 = qword_1007775E8;

  return v3;
}

- (NSString)activityTitle
{
  static TTRLocalizableStrings.Templates.copyIcloudLink.getter();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (UIImage)activityImage
{
  sub_100003540(0, &qword_10076FCB0);
  v2 = static UIImage.ttr_systemSymbolImage(named:)();

  return v2;
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  v6 = sub_1002850CC(v4);

  return v6;
}

- (void)prepareWithActivityItems:(id)a3
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_100284790(v4);
}

- (void)performActivity
{
  v2 = self;
  sub_100284954();
}

- (_TtCC9Reminders25TTRITemplateSharingRouterP33_B88B83D8B282D69A84EFFB48896895C822CopyiCloudLinkActivity)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtCC9Reminders25TTRITemplateSharingRouterP33_B88B83D8B282D69A84EFFB48896895C822CopyiCloudLinkActivity_urlToBeCopiedToPasteboard;
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(TTRITemplateSharingRouter.CopyiCloudLinkActivity *)&v7 init];
}

@end