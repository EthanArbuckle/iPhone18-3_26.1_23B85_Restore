@interface ActionActivity
- (NSString)activityTitle;
- (NSString)activityType;
- (UIImage)activityImage;
- (_TtC8AppStoreP33_CE8C5E96DC0A3EE47110102615F0D69114ActionActivity)init;
- (id)_systemImageName;
- (void)performActivity;
@end

@implementation ActionActivity

- (NSString)activityType
{
  v2 = self;
  ShareSheetAction.Activity.activityType.getter();
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (NSString)activityTitle
{
  v2 = self;
  ShareSheetAction.Activity.action.getter();
  Action.title.getter();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (UIImage)activityImage
{
  v2 = self;
  v3 = sub_1005A5CCC();

  return v3;
}

- (id)_systemImageName
{
  v2 = self;
  ShareSheetAction.Activity.action.getter();
  v3 = Action.artwork.getter();

  if (v3)
  {
    if (dispatch thunk of Artwork.isSystemImage.getter())
    {
      dispatch thunk of Artwork.systemImageName.getter();
      v5 = v4;

      if (v5)
      {
        v6 = String._bridgeToObjectiveC()();

        v7 = v6;
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  else
  {
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (void)performActivity
{
  v2 = self;
  sub_1005A5E60();
}

- (_TtC8AppStoreP33_CE8C5E96DC0A3EE47110102615F0D69114ActionActivity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end