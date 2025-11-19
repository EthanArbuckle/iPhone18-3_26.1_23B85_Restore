@interface GenericAccountPageViewController
- (_TtC18ASMessagesProvider32GenericAccountPageViewController)initWithCoder:(id)a3;
- (_TtC18ASMessagesProvider32GenericAccountPageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC18ASMessagesProvider32GenericAccountPageViewController)initWithStyle:(int64_t)a3;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayFooterView:(id)a4 forSection:(int64_t)a5;
- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation GenericAccountPageViewController

- (_TtC18ASMessagesProvider32GenericAccountPageViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider32GenericAccountPageViewController_overlayViewController) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_3E99B0();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for GenericAccountPageViewController();
  v4 = v5.receiver;
  [(GenericAccountPageViewController *)&v5 viewDidAppear:v3];
  if (sub_75A120())
  {
    sub_768DA0();
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = sub_768D60();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GenericAccountPageViewController();
  v11.receiver = self;
  v11.super_class = v9;
  v10 = self;
  [(GenericAccountPageViewController *)&v11 viewWillDisappear:v3];
  if (sub_75A120())
  {
    sub_768D50();
    sub_768DB0();

    (*(v6 + 8))(v8, v5);
  }

  else
  {
  }
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_3E9F30();
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self;
  v3 = [(GenericAccountPageViewController *)v2 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == &dword_0 + 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_3EA0D8(a3);
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = self;
  v4 = sub_762220();

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = self;
  v5 = sub_762210();

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_757640();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  v10 = a3;
  v11 = self;
  v12 = sub_3EA384(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_3EBAA4(v6, a4);
  v9 = v8;

  return v9;
}

- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_3EBD68(v7, v8);
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_757640();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  v10 = a3;
  v11 = self;
  sub_3EC124(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_3ECC98(v6, a4);
  v9 = v8;

  return v9;
}

- (void)tableView:(id)a3 willDisplayFooterView:(id)a4 forSection:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_3ECE40(v8, v9, a5);
}

- (_TtC18ASMessagesProvider32GenericAccountPageViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProvider32GenericAccountPageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end