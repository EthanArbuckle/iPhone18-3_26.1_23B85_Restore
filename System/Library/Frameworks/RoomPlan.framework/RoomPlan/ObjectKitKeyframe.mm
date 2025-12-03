@interface ObjectKitKeyframe
- (_TtC8RoomPlan17ObjectKitKeyframe)init;
- (__n128)cameraPose;
- (id)copyWithZone:(void *)zone;
- (uint64_t)setCameraPose:(__n128)pose;
@end

@implementation ObjectKitKeyframe

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  [(ObjectKitKeyframe *)selfCopy copy];
  sub_23AA0D704();

  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_23AA0DBC4();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

- (__n128)cameraPose
{
  result = *(self + OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_cameraPose);
  v2 = *(self + OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_cameraPose + 16);
  v3 = *(self + OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_cameraPose + 32);
  v4 = *(self + OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_cameraPose + 48);
  return result;
}

- (uint64_t)setCameraPose:(__n128)pose
{
  v5 = (result + OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_cameraPose);
  *v5 = a2;
  v5[1] = pose;
  v5[2] = a4;
  v5[3] = a5;
  return result;
}

- (_TtC8RoomPlan17ObjectKitKeyframe)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end