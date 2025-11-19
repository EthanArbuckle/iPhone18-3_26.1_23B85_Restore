@interface CategoryListViewController
- (_TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController)initWithCoder:(id)a3;
- (_TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController)initWithStyle:(int64_t)a3;
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

- (_TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController_selectionHandler);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController_placeholderImage) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_71BDC0();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(CategoryListViewController *)&v7 viewWillAppear:v3];
  sub_75A0A0();
  v5 = 0;
  if (!sub_7575E0())
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
  sub_75A0A0();
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self;
  v3 = [(CategoryListViewController *)v2 traitCollection];
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

- (void)dismissSelf
{
  v5 = self;
  [(CategoryListViewController *)v5 dismissViewControllerAnimated:1 completion:0];
  v2 = (&v5->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController_selectionHandler);
  v3 = *(&v5->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController_selectionHandler);
  v4 = *&v5->dataSource[OBJC_IVAR____TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController_selectionHandler];
  *v2 = 0;
  v2[1] = 0;
  sub_47160(v3, v4);
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  sub_B170(*(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController_dataSource) + 2, (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController_dataSource))[5]);
  v5 = self;
  v6 = sub_762AA0();

  return v6;
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
  v12 = sub_71C304(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v7 = sub_757640();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_757590();
  v11 = a4;
  v12 = self;
  v13 = [v11 imageView];
  if (v13)
  {
    v14 = v13;
    sub_BE70(0, &qword_949D90);
    sub_41ADDC();
    sub_76A6E0();
    sub_75A0B0();

    sub_1EB60(v15);
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    __break(1u);
  }
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
  sub_71D8A4();

  (*(v7 + 8))(v9, v6);
}

- (_TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end