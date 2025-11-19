@interface MediaBackdropSnapshotRendererOperation
- (_TtC10TemplateUI38MediaBackdropSnapshotRendererOperation)init;
- (void)main;
@end

@implementation MediaBackdropSnapshotRendererOperation

- (void)main
{
  v3 = sub_18F3EC(&qword_2E5CE8);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_19C5F8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;
  v8 = self;
  sub_19657C(0, 0, v5, &unk_24E4A8, v7);

  sub_19C678();
}

- (_TtC10TemplateUI38MediaBackdropSnapshotRendererOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end