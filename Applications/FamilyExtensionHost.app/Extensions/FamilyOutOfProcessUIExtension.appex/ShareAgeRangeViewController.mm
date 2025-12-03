@interface ShareAgeRangeViewController
- (_TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon;
- (_TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view;
- (_TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name;
- (_TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:viewForHeaderInSection:;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation ShareAgeRangeViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100016A44();
}

- (_TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_10001B410();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001B3F0();
  viewCopy = view;
  selfCopy = self;
  sub_10001A288(v10);

  (*(v7 + 8))(v10, v6);
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  v3 = *(sub_100019EF8() + 16);

  return v3;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_10001B410();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001B3F0();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_100018690(viewCopy, v10);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (id)tableView:viewForHeaderInSection:
{
  v0 = [objc_allocWithZone(UIView) init];

  return v0;
}

@end