@interface BooksFinishedDataSource
- (_TtC5Books23BooksFinishedDataSource)init;
- (void)managedObjectBackgroundMonitor:(id)a3 didSaveNotify:(id)a4;
@end

@implementation BooksFinishedDataSource

- (_TtC5Books23BooksFinishedDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)managedObjectBackgroundMonitor:(id)a3 didSaveNotify:(id)a4
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5Books23BooksFinishedDataSource_onChange);
  if (v4)
  {
    v5 = self;
    v6 = sub_1000260E8(v4);
    v4(v6);

    sub_100007020(v4);
  }
}

@end