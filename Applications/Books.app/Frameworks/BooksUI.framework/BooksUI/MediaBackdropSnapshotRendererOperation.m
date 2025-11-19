@interface MediaBackdropSnapshotRendererOperation
- (_TtC7BooksUI38MediaBackdropSnapshotRendererOperation)init;
- (void)main;
@end

@implementation MediaBackdropSnapshotRendererOperation

- (void)main
{
  v3 = sub_2EF0(&qword_316408, &qword_26DE30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = sub_264770();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;
  v9 = self;
  sub_182AE4(0, 0, v6, &unk_268198, v8);

  v10 = *(&v9->super.super.isa + OBJC_IVAR____TtC7BooksUI38MediaBackdropSnapshotRendererOperation_semaphore);
  sub_264990();
}

- (_TtC7BooksUI38MediaBackdropSnapshotRendererOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end