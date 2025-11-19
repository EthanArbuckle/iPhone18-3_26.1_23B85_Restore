@interface ActivitySystemApertureSceneHandle
- (ACActivityDescriptor)descriptor;
- (FBScene)scene;
- (_TtC18ActivityUIServices33ActivitySystemApertureSceneHandle)init;
- (_TtP18ActivityUIServices41ActivitySystemApertureSceneHandleDelegate_)delegate;
- (void)dealloc;
- (void)invalidate;
- (void)scene:(id)a3 didReceiveActions:(id)a4;
- (void)sceneDidActivate:(id)a3;
- (void)sceneDidDeactivate:(id)a3 withError:(id)a4;
- (void)sceneDidInvalidate:(id)a3;
- (void)setDescriptor:(id)a3;
- (void)setScene:(id)a3;
@end

@implementation ActivitySystemApertureSceneHandle

- (FBScene)scene
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_scene;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setScene:(id)a3
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_scene;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
  v8 = self;

  sub_18E658784();
}

- (ACActivityDescriptor)descriptor
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_descriptor;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDescriptor:(id)a3
{
  v5 = OBJC_IVAR____TtC18ActivityUIServices33ActivitySystemApertureSceneHandle_descriptor;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (_TtP18ActivityUIServices41ActivitySystemApertureSceneHandleDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)dealloc
{
  v2 = self;
  sub_18E659BD8();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for ActivitySystemApertureSceneHandle();
  [(ActivitySystemApertureSceneHandle *)&v3 dealloc];
}

- (void)invalidate
{
  v2 = self;
  sub_18E659BD8();
}

- (_TtC18ActivityUIServices33ActivitySystemApertureSceneHandle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sceneDidActivate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_18E65B764("[%{public}s] Scene did activate.");
}

- (void)sceneDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_18E65B764("[%{public}s] Scene did invalidate");
}

- (void)sceneDidDeactivate:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  ActivitySystemApertureSceneHandle.sceneDidDeactivate(_:withError:)(v6, a4);
}

- (void)scene:(id)a3 didReceiveActions:(id)a4
{
  sub_18E623B78(0, &qword_1ED764CE0, 0x1E698E5F0);
  sub_18E63B6CC();
  v6 = sub_18E65FA00();
  v7 = a3;
  v8 = self;
  sub_18E65B8E0(v6);
}

@end