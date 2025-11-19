@interface FigaroEventFieldViewController
- (_TtC5JSApp30FigaroEventFieldViewController)initWithCoder:(id)a3;
- (_TtC5JSApp30FigaroEventFieldViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC5JSApp30FigaroEventFieldViewController)initWithStyle:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)viewDidLoad;
@end

@implementation FigaroEventFieldViewController

- (_TtC5JSApp30FigaroEventFieldViewController)initWithCoder:(id)a3
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
  v3 = [v2 tableView];
  if (v3)
  {
    v4 = v3;
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(self + OBJC_IVAR____TtC5JSApp30FigaroEventFieldViewController_data);
    if (*(v4 + 16) > a4)
    {
      return *(*(v4 + 8 * a4 + 32) + 16);
    }
  }

  __break(1u);
  return self;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_83B3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_83B0C();
  v11 = a3;
  v12 = self;
  v13 = sub_3F790(v11);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (_TtC5JSApp30FigaroEventFieldViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5JSApp30FigaroEventFieldViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end