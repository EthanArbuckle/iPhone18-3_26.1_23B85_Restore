@interface CategoryListViewController
- (_TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController)initWithCoder:(id)coder;
- (_TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController)initWithStyle:(int64_t)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)supportedInterfaceOrientations;
- (void)dismissSelf;
- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CategoryListViewController

- (_TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_71BDC0();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(CategoryListViewController *)&v7 viewWillAppear:appearCopy];
  sub_75A0A0();
  _isInPopoverPresentation = 0;
  if (!sub_7575E0())
  {
    _isInPopoverPresentation = [v4 _isInPopoverPresentation];
  }

  navigationController = [v4 navigationController];
  [navigationController setNavigationBarHidden:_isInPopoverPresentation animated:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(CategoryListViewController *)&v5 viewDidDisappear:disappearCopy];
  sub_75A0A0();
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  traitCollection = [(CategoryListViewController *)selfCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == &dword_0 + 1)
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
  selfCopy = self;
  [(CategoryListViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];
  v2 = (&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController_selectionHandler);
  v3 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController_selectionHandler);
  v4 = *&selfCopy->dataSource[OBJC_IVAR____TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController_selectionHandler];
  *v2 = 0;
  v2[1] = 0;
  sub_47160(v3, v4);
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  sub_B170(*(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController_dataSource) + 2, (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController_dataSource))[5]);
  selfCopy = self;
  v6 = sub_762AA0();

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_757640();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_71C304(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path
{
  v7 = sub_757640();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_757590();
  cellCopy = cell;
  selfCopy = self;
  imageView = [cellCopy imageView];
  if (imageView)
  {
    v14 = imageView;
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_757640();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  viewCopy = view;
  selfCopy = self;
  sub_71D8A4();

  (*(v7 + 8))(v9, v6);
}

- (_TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end