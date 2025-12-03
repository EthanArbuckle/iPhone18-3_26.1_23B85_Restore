@interface FigaroEventFieldViewController
- (_TtC5JSApp30FigaroEventFieldViewController)initWithCoder:(id)coder;
- (_TtC5JSApp30FigaroEventFieldViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC5JSApp30FigaroEventFieldViewController)initWithStyle:(int64_t)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)viewDidLoad;
@end

@implementation FigaroEventFieldViewController

- (_TtC5JSApp30FigaroEventFieldViewController)initWithCoder:(id)coder
{
  result = sub_84AFC();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FigaroEventFieldViewController();
  v2 = v7.receiver;
  [(FigaroEventFieldViewController *)&v7 viewDidLoad];
  tableView = [v2 tableView];
  if (tableView)
  {
    v4 = tableView;
    type metadata accessor for FigaroEventFieldCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = sub_8437C();
    [v4 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v6];
  }

  else
  {
    __break(1u);
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(self + OBJC_IVAR____TtC5JSApp30FigaroEventFieldViewController_data);
    if (*(v4 + 16) > section)
    {
      return *(*(v4 + 8 * section + 32) + 16);
    }
  }

  __break(1u);
  return self;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_83B3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_83B0C();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_3F790(viewCopy);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (_TtC5JSApp30FigaroEventFieldViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5JSApp30FigaroEventFieldViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end