@interface GEOAPCurrentUploadDebugController
- (_TtC4Maps33GEOAPCurrentUploadDebugController)initWithCoder:(id)coder;
- (_TtC4Maps33GEOAPCurrentUploadDebugController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC4Maps33GEOAPCurrentUploadDebugController)initWithStyle:(int64_t)style;
- (void)viewDidLoad;
@end

@implementation GEOAPCurrentUploadDebugController

- (_TtC4Maps33GEOAPCurrentUploadDebugController)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC4Maps33GEOAPCurrentUploadDebugController_dataModel;
  type metadata accessor for GEOAPCurrentUploadDataModel();
  v5 = swift_allocObject();
  *(v5 + 3) = 0;
  sub_100230C88();
  sub_100230CDC();
  NSDiffableDataSourceSnapshot.init()();
  *(v5 + OBJC_IVAR____TtC4Maps27GEOAPCurrentUploadDataModel_dataSource) = 0;
  *(v5 + 2) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.super.isa + v4) = v5;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC4Maps33GEOAPCurrentUploadDebugController)initWithStyle:(int64_t)style
{
  v5 = OBJC_IVAR____TtC4Maps33GEOAPCurrentUploadDebugController_dataModel;
  type metadata accessor for GEOAPCurrentUploadDataModel();
  v6 = swift_allocObject();
  *(v6 + 3) = 0;
  sub_100230C88();
  sub_100230CDC();
  NSDiffableDataSourceSnapshot.init()();
  *(v6 + OBJC_IVAR____TtC4Maps27GEOAPCurrentUploadDataModel_dataSource) = 0;
  *(v6 + 2) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.super.isa + v5) = v6;
  v8.receiver = self;
  v8.super_class = type metadata accessor for GEOAPCurrentUploadDebugController();
  return [(GEOAPCurrentUploadDebugController *)&v8 initWithStyle:style];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100231C94();
}

- (_TtC4Maps33GEOAPCurrentUploadDebugController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end