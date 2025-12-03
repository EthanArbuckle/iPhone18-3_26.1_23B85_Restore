@interface GenericAccountPageViewController
- (_TtC22SubscribePageExtension32GenericAccountPageViewController)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtension32GenericAccountPageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC22SubscribePageExtension32GenericAccountPageViewController)initWithStyle:(int64_t)style;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)supportedInterfaceOrientations;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section;
- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation GenericAccountPageViewController

- (_TtC22SubscribePageExtension32GenericAccountPageViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension32GenericAccountPageViewController_overlayViewController) = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1004CC564();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for GenericAccountPageViewController();
  v4 = v5.receiver;
  [(GenericAccountPageViewController *)&v5 viewDidAppear:appearCopy];
  if (sub_1007442D4())
  {
    sub_100752C04();
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = sub_100752BC4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GenericAccountPageViewController();
  v11.receiver = self;
  v11.super_class = v9;
  selfCopy = self;
  [(GenericAccountPageViewController *)&v11 viewWillDisappear:disappearCopy];
  if (sub_1007442D4())
  {
    sub_100752BB4();
    sub_100752C14();

    (*(v6 + 8))(v8, v5);
  }

  else
  {
  }
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1004CCAE4();
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  traitCollection = [(GenericAccountPageViewController *)selfCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1004CCC8C(change);
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  selfCopy = self;
  v4 = sub_10074C264();

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  selfCopy = self;
  v5 = sub_10074C254();

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_1007417F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_1004CCF38(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_1004CE658(viewCopy, section);
  v9 = v8;

  return v9;
}

- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section
{
  viewCopy = view;
  headerViewCopy = headerView;
  selfCopy = self;
  sub_1004CE91C(viewCopy, headerViewCopy);
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_1007417F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  viewCopy = view;
  selfCopy = self;
  sub_1004CECD8(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_1004CF84C(viewCopy, section);
  v9 = v8;

  return v9;
}

- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section
{
  viewCopy = view;
  footerViewCopy = footerView;
  selfCopy = self;
  sub_1004CF9F4(viewCopy, footerViewCopy, section);
}

- (_TtC22SubscribePageExtension32GenericAccountPageViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC22SubscribePageExtension32GenericAccountPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end