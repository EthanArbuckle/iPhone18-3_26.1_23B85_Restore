@interface ShareAgeRangeViewController
- (_TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
- (_TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6;
- (_TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5;
- (_TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:viewForHeaderInSection:;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation ShareAgeRangeViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100016A44();
}

- (_TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_10001B410();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001B3F0();
  v11 = a3;
  v12 = self;
  sub_10001A288(v10);

  (*(v7 + 8))(v10, v6);
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = *(sub_100019EF8() + 16);

  return v3;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_10001B410();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001B3F0();
  v11 = a3;
  v12 = self;
  v13 = sub_100018690(v11, v10);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (id)tableView:viewForHeaderInSection:
{
  v0 = [objc_allocWithZone(UIView) init];

  return v0;
}

@end