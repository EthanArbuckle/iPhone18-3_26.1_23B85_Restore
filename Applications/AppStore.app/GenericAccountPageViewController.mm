@interface GenericAccountPageViewController
- (_TtC8AppStore32GenericAccountPageViewController)initWithCoder:(id)coder;
- (_TtC8AppStore32GenericAccountPageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC8AppStore32GenericAccountPageViewController)initWithStyle:(int64_t)style;
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

- (_TtC8AppStore32GenericAccountPageViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore32GenericAccountPageViewController_overlayViewController) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10060B424();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for GenericAccountPageViewController();
  v4 = v5.receiver;
  [(GenericAccountPageViewController *)&v5 viewDidAppear:appearCopy];
  if (dispatch thunk of BasePresenter.pageRenderMetrics.getter())
  {
    PageRenderMetricsPresenter.viewDidAppear()();
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = type metadata accessor for ViewWillDisappearReason();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GenericAccountPageViewController();
  v11.receiver = self;
  v11.super_class = v9;
  selfCopy = self;
  [(GenericAccountPageViewController *)&v11 viewWillDisappear:disappearCopy];
  if (dispatch thunk of BasePresenter.pageRenderMetrics.getter())
  {
    static ViewWillDisappearReason.inferred(for:)();
    PageRenderMetricsPresenter.viewWillDisappear(forReason:)();

    (*(v6 + 8))(v8, v5);
  }

  else
  {
  }
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_10060B9A4();
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
  sub_10060BB4C(change);
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  selfCopy = self;
  v4 = dispatch thunk of GenericAccountPagePresenter.numberOfSections.getter();

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  selfCopy = self;
  v5 = dispatch thunk of GenericAccountPagePresenter.numberOfItems(in:)();

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_10060BDF8(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_10060D518(viewCopy, section);
  v9 = v8;

  return v9;
}

- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section
{
  viewCopy = view;
  headerViewCopy = headerView;
  selfCopy = self;
  sub_10060D7DC(viewCopy, headerViewCopy);
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_10060DB98(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_10060E70C(viewCopy, section);
  v9 = v8;

  return v9;
}

- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section
{
  viewCopy = view;
  footerViewCopy = footerView;
  selfCopy = self;
  sub_10060E8B4(viewCopy, footerViewCopy, section);
}

- (_TtC8AppStore32GenericAccountPageViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8AppStore32GenericAccountPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end