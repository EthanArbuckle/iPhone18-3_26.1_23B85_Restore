@interface CRLSendACopyActivity_i
- (NSString)activityTitle;
- (NSString)activityType;
- (SFCollaborationItem)collaborationItem;
- (UIImage)activityImage;
- (UIViewController)activityViewController;
- (_TtC8Freeform22CRLSendACopyActivity_i)init;
- (void)prepareWithActivityItems:(id)a3;
- (void)setCollaborationItem:(id)a3;
@end

@implementation CRLSendACopyActivity_i

- (NSString)activityType
{
  if (qword_1019F15A0 != -1)
  {
    swift_once();
  }

  v3 = qword_101AD6530;

  return v3;
}

- (NSString)activityTitle
{
  sub_100B71CCC();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (UIImage)activityImage
{
  v2 = objc_opt_self();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 systemImageNamed:v3];

  return v4;
}

- (void)prepareWithActivityItems:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform22CRLSendACopyActivity_i_activityItems) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

- (UIViewController)activityViewController
{
  v2 = self;
  v3 = sub_1007D2778();

  return v3;
}

- (SFCollaborationItem)collaborationItem
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setCollaborationItem:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform22CRLSendACopyActivity_i_collaborationItem) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (_TtC8Freeform22CRLSendACopyActivity_i)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end