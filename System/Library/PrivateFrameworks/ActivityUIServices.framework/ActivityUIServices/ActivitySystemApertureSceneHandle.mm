@interface ActivitySystemApertureSceneHandle
- (ACActivityDescriptor)descriptor;
- (FBScene)scene;
- (_TtC18ActivityUIServices33ActivitySystemApertureSceneHandle)init;
- (_TtP18ActivityUIServices41ActivitySystemApertureSceneHandleDelegate_)delegate;
- (void)dealloc;
- (void)invalidate;
- (void)scene:(id)scene didReceiveActions:(id)actions;
- (void)sceneDidActivate:(id)activate;
- (void)sceneDidDeactivate:(id)deactivate withError:(id)error;
- (void)sceneDidInvalidate:(id)invalidate;
- (void)setDescriptor:(id)descriptor;
- (void)setScene:(id)scene;
@end

@implementation ActivitySystemApertureSceneHandle

- (FBScene)scene
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_scene;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setScene:(id)scene
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_scene;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = scene;
  sceneCopy = scene;
  selfCopy = self;

  sub_18E658784();
}

- (ACActivityDescriptor)descriptor
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_descriptor;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDescriptor:(id)descriptor
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_descriptor;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = descriptor;
  descriptorCopy = descriptor;
}

- (_TtP18ActivityUIServices41ActivitySystemApertureSceneHandleDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)dealloc
{
  selfCopy = self;
  sub_18E659BD8();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for ActivitySystemApertureSceneHandle();
  [(ActivitySystemApertureSceneHandle *)&v3 dealloc];
}

- (void)invalidate
{
  selfCopy = self;
  sub_18E659BD8();
}

- (_TtC18ActivityUIServices33ActivitySystemApertureSceneHandle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sceneDidActivate:(id)activate
{
  activateCopy = activate;
  selfCopy = self;
  sub_18E65B764("[%{public}s] Scene did activate.");
}

- (void)sceneDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_18E65B764("[%{public}s] Scene did invalidate");
}

- (void)sceneDidDeactivate:(id)deactivate withError:(id)error
{
  deactivateCopy = deactivate;
  selfCopy = self;
  errorCopy = error;
  ActivitySystemApertureSceneHandle.sceneDidDeactivate(_:withError:)(deactivateCopy, error);
}

- (void)scene:(id)scene didReceiveActions:(id)actions
{
  sub_18E623B78(0, &qword_1ED764CE0, 0x1E698E5F0);
  sub_18E63B6CC();
  v6 = sub_18E65FA00();
  sceneCopy = scene;
  selfCopy = self;
  sub_18E65B8E0(v6);
}

@end