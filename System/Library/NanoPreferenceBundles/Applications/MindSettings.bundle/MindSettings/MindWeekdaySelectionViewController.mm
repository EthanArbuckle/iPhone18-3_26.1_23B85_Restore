@interface MindWeekdaySelectionViewController
- (_TtC12MindSettings34MindWeekdaySelectionViewController)initWithCoder:(id)a3;
- (_TtC12MindSettings34MindWeekdaySelectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC12MindSettings34MindWeekdaySelectionViewController)initWithStyle:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation MindWeekdaySelectionViewController

- (_TtC12MindSettings34MindWeekdaySelectionViewController)initWithCoder:(id)a3
{
  *&self->delegate[OBJC_IVAR____TtC12MindSettings34MindWeekdaySelectionViewController_delegate] = 0;
  swift_unknownObjectWeakInit();
  result = sub_F108();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_5464();
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_ED48();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_ED18();
  v11 = a3;
  v12 = self;
  sub_559C(v11);

  (*(v7 + 8))(v10, v6);
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_ED48();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_ED18();
  v11 = a3;
  v12 = self;
  v13 = sub_5844(v11);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (_TtC12MindSettings34MindWeekdaySelectionViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12MindSettings34MindWeekdaySelectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end