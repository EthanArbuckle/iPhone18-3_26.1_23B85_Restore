@interface CategoryListViewController
- (_TtC22SubscribePageExtensionP33_E8A3C8C9EB70237120159EB97F20AEB326CategoryListViewController)initWithCoder:(id)a3;
- (_TtC22SubscribePageExtensionP33_E8A3C8C9EB70237120159EB97F20AEB326CategoryListViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC22SubscribePageExtensionP33_E8A3C8C9EB70237120159EB97F20AEB326CategoryListViewController)initWithStyle:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)dismissSelf;
- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CategoryListViewController

- (_TtC22SubscribePageExtensionP33_E8A3C8C9EB70237120159EB97F20AEB326CategoryListViewController)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtensionP33_E8A3C8C9EB70237120159EB97F20AEB326CategoryListViewController_selectionHandler);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtensionP33_E8A3C8C9EB70237120159EB97F20AEB326CategoryListViewController_placeholderImage) = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1003E9BF0();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(CategoryListViewController *)&v7 viewWillAppear:v3];
  sub_100744254();
  v5 = 0;
  if (!sub_100741794())
  {
    v5 = [v4 _isInPopoverPresentation];
  }

  v6 = [v4 navigationController];
  [v6 setNavigationBarHidden:v5 animated:0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(CategoryListViewController *)&v5 viewDidDisappear:v3];
  sub_100744254();
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self;
  v3 = [(CategoryListViewController *)v2 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)dismissSelf
{
  v4 = self;
  [(CategoryListViewController *)v4 dismissViewControllerAnimated:1 completion:0];
  v2 = (&v4->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtensionP33_E8A3C8C9EB70237120159EB97F20AEB326CategoryListViewController_selectionHandler);
  v3 = *(&v4->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtensionP33_E8A3C8C9EB70237120159EB97F20AEB326CategoryListViewController_selectionHandler);
  *v2 = 0;
  v2[1] = 0;
  sub_1000164A8(v3);
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  sub_10000C888(*(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtensionP33_E8A3C8C9EB70237120159EB97F20AEB326CategoryListViewController_dataSource) + 2, (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtensionP33_E8A3C8C9EB70237120159EB97F20AEB326CategoryListViewController_dataSource))[5]);
  v5 = self;
  v6 = sub_10074CAA4();

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_1007417F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  v10 = a3;
  v11 = self;
  v12 = sub_1003EA134(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v7 = sub_1007417F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_100741744();
  v11 = a4;
  v12 = self;
  v13 = [v11 imageView];
  if (v13)
  {
    v14 = v13;
    sub_100016C60(0, &qword_10092BFC0);
    sub_1003EB7E4();
    sub_1007544E4();
    sub_100744264();

    sub_100016994(v15);
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    __break(1u);
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_1007417F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  v10 = a3;
  v11 = self;
  sub_1003EB564();

  (*(v7 + 8))(v9, v6);
}

- (_TtC22SubscribePageExtensionP33_E8A3C8C9EB70237120159EB97F20AEB326CategoryListViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC22SubscribePageExtensionP33_E8A3C8C9EB70237120159EB97F20AEB326CategoryListViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end