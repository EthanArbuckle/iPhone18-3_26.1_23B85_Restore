@interface FigaroEventViewController
- (_TtC5JSApp25FigaroEventViewController)initWithCoder:(id)coder;
- (_TtC5JSApp25FigaroEventViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC5JSApp25FigaroEventViewController)initWithStyle:(int64_t)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation FigaroEventViewController

- (_TtC5JSApp25FigaroEventViewController)initWithCoder:(id)coder
{
  result = sub_84AFC();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_622B0();
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = &OBJC_IVAR____TtC5JSApp25FigaroEventViewController_eventFields;
  if (section)
  {
    v4 = &OBJC_IVAR____TtC5JSApp25FigaroEventViewController_baseFields;
  }

  return (*(&self->super.super.super.super.isa + *v4))[2];
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = sub_8437C();

  return v4;
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
  v13 = sub_62584(viewCopy);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_83B3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_83B0C();
  viewCopy = view;
  selfCopy = self;
  sub_62AB8(viewCopy);

  (*(v7 + 8))(v10, v6);
}

- (_TtC5JSApp25FigaroEventViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5JSApp25FigaroEventViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end