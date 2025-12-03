@interface CRLiOSSceneDelegate
- (UIActivityItemsConfigurationReading)activityItemsConfiguration;
- (_TtC8Freeform19CRLiOSSceneDelegate)init;
- (void)qa_importFileFor:(id)for;
@end

@implementation CRLiOSSceneDelegate

- (_TtC8Freeform19CRLiOSSceneDelegate)init
{
  v3 = OBJC_IVAR____TtC8Freeform19CRLiOSSceneDelegate_boardViewControllerTransitioningDelegate;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(type metadata accessor for CRLiOSBoardViewControllerTransitioningDelegate()) init];
  v5.receiver = self;
  v5.super_class = type metadata accessor for CRLiOSSceneDelegate();
  return [(CRLSceneDelegate *)&v5 init];
}

- (UIActivityItemsConfigurationReading)activityItemsConfiguration
{
  selfCopy = self;
  sub_100DA1EC0();
  v4 = v3;

  return v4;
}

- (void)qa_importFileFor:(id)for
{
  v5 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();
  forCopy = for;
  selfCopy = self;
  v11 = forCopy;
  v12 = selfCopy;
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v11;
  v14[5] = v12;
  sub_10064191C(0, 0, v7, &unk_1014B2430, v14);
}

@end