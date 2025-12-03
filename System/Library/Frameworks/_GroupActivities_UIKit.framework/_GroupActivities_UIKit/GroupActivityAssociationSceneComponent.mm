@interface GroupActivityAssociationSceneComponent
- (UIScene)_scene;
- (_TtC22_GroupActivities_UIKit38GroupActivityAssociationSceneComponent)init;
- (_TtC22_GroupActivities_UIKit38GroupActivityAssociationSceneComponent)initWithScene:(id)scene;
- (void)_sceneWillInvalidate:(id)invalidate;
@end

@implementation GroupActivityAssociationSceneComponent

- (void)_sceneWillInvalidate:(id)invalidate
{
  v3 = *((*MEMORY[0x277D85000] & *self) + 0x90);
  selfCopy = self;
  v3(0);
}

- (UIScene)_scene
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC22_GroupActivities_UIKit38GroupActivityAssociationSceneComponent)initWithScene:(id)scene
{
  *(self + OBJC_IVAR____TtC22_GroupActivities_UIKit38GroupActivityAssociationSceneComponent_groupActivityAssociationInteractions) = MEMORY[0x277D84F98];
  *(self + OBJC_IVAR____TtC22_GroupActivities_UIKit38GroupActivityAssociationSceneComponent_activeGroupActivityAssociation) = 0;
  swift_weakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5.receiver = self;
  v5.super_class = type metadata accessor for GroupActivityAssociationSceneComponent();
  return [(GroupActivityAssociationSceneComponent *)&v5 init];
}

- (_TtC22_GroupActivities_UIKit38GroupActivityAssociationSceneComponent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end