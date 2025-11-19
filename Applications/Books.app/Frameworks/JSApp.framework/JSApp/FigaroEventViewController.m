@interface FigaroEventViewController
- (_TtC5JSApp25FigaroEventViewController)initWithCoder:(id)a3;
- (_TtC5JSApp25FigaroEventViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC5JSApp25FigaroEventViewController)initWithStyle:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation FigaroEventViewController

- (_TtC5JSApp25FigaroEventViewController)initWithCoder:(id)a3
{
  result = sub_84AFC();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_622B0();
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = &OBJC_IVAR____TtC5JSApp25FigaroEventViewController_eventFields;
  if (a4)
  {
    v4 = &OBJC_IVAR____TtC5JSApp25FigaroEventViewController_baseFields;
  }

  return (*(&self->super.super.super.super.isa + *v4))[2];
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = sub_8437C();

  return v4;
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
  v13 = sub_62584(v11);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_83B3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_83B0C();
  v11 = a3;
  v12 = self;
  sub_62AB8(v11);

  (*(v7 + 8))(v10, v6);
}

- (_TtC5JSApp25FigaroEventViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5JSApp25FigaroEventViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end