@interface GenericAccountPageViewController
- (_TtC18ASMessagesProvider32GenericAccountPageViewController)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider32GenericAccountPageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC18ASMessagesProvider32GenericAccountPageViewController)initWithStyle:(int64_t)style;
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

- (_TtC18ASMessagesProvider32GenericAccountPageViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider32GenericAccountPageViewController_overlayViewController) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_3E99B0();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for GenericAccountPageViewController();
  v4 = v5.receiver;
  [(GenericAccountPageViewController *)&v5 viewDidAppear:appearCopy];
  if (sub_75A120())
  {
    sub_768DA0();
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = sub_768D60();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GenericAccountPageViewController();
  v11.receiver = self;
  v11.super_class = v9;
  selfCopy = self;
  [(GenericAccountPageViewController *)&v11 viewWillDisappear:disappearCopy];
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
  selfCopy = self;
  sub_3E9F30();
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  traitCollection = [(GenericAccountPageViewController *)selfCopy traitCollection];
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_3EA0D8(change);
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  selfCopy = self;
  v4 = sub_762220();

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  selfCopy = self;
  v5 = sub_762210();

  return v5;
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
  v12 = sub_3EA384(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_3EBAA4(viewCopy, section);
  v9 = v8;

  return v9;
}

- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section
{
  viewCopy = view;
  headerViewCopy = headerView;
  selfCopy = self;
  sub_3EBD68(viewCopy, headerViewCopy);
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
  sub_3EC124(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_3ECC98(viewCopy, section);
  v9 = v8;

  return v9;
}

- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section
{
  viewCopy = view;
  footerViewCopy = footerView;
  selfCopy = self;
  sub_3ECE40(viewCopy, footerViewCopy, section);
}

- (_TtC18ASMessagesProvider32GenericAccountPageViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProvider32GenericAccountPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end