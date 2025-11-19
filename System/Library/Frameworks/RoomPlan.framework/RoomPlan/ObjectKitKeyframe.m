@interface ObjectKitKeyframe
- (_TtC8RoomPlan17ObjectKitKeyframe)init;
- (__n128)cameraPose;
- (id)copyWithZone:(void *)a3;
- (uint64_t)setCameraPose:(__n128)a3;
@end

@implementation ObjectKitKeyframe

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  [(ObjectKitKeyframe *)v3 copy];
  sub_23AA0D704();

  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_23AA0DBC4();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

- (__n128)cameraPose
{
  result = *(a1 + OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_cameraPose);
  v2 = *(a1 + OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_cameraPose + 16);
  v3 = *(a1 + OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_cameraPose + 32);
  v4 = *(a1 + OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_cameraPose + 48);
  return result;
}

- (uint64_t)setCameraPose:(__n128)a3
{
  v5 = (result + OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_cameraPose);
  *v5 = a2;
  v5[1] = a3;
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