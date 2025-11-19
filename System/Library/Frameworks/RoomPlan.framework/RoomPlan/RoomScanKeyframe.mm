@interface RoomScanKeyframe
- (_TtC8RoomPlan16RoomScanKeyframe)init;
- (__n128)cameraPose;
- (id)copyWithZone:(void *)a3;
- (uint64_t)setCameraPose:(__n128)a3;
@end

@implementation RoomScanKeyframe

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_23A99C238(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_23AA0DBC4();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

- (__n128)cameraPose
{
  result = *(a1 + OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_cameraPose);
  v2 = *(a1 + OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_cameraPose + 16);
  v3 = *(a1 + OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_cameraPose + 32);
  v4 = *(a1 + OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_cameraPose + 48);
  return result;
}

- (uint64_t)setCameraPose:(__n128)a3
{
  v5 = (result + OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_cameraPose);
  *v5 = a2;
  v5[1] = a3;
  v5[2] = a4;
  v5[3] = a5;
  return result;
}

- (_TtC8RoomPlan16RoomScanKeyframe)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end