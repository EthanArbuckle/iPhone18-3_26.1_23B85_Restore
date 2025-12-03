@interface JSAFigaroSummaryViewController
- (JSAFigaroSummaryViewController)initWithCoder:(id)coder;
- (JSAFigaroSummaryViewController)initWithNibName:(id)name bundle:(id)bundle;
- (JSAFigaroSummaryViewController)initWithStyle:(int64_t)style;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)infoTapped:(id)tapped;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)trashTapped:(id)tapped;
- (void)valueChanged:(id)changed;
- (void)viewDidLoad;
@end

@implementation JSAFigaroSummaryViewController

- (JSAFigaroSummaryViewController)initWithCoder:(id)coder
{
  result = sub_84AFC();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_795D4();
}

- (void)infoTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_7AA00();
}

- (void)trashTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_7AB34();
}

- (void)valueChanged:(id)changed
{
  selfCopy = self;
  tableView = [(JSAFigaroSummaryViewController *)selfCopy tableView];
  if (tableView)
  {
    v4 = tableView;
    [tableView reloadData];
  }

  else
  {
    __break(1u);
  }
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR___JSAFigaroSummaryViewController_toolbar);
  selfCopy = self;
  [v4 frame];
  Height = CGRectGetHeight(v8);

  return Height;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v7 = sub_7AC90();

  return v7;
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
  v13 = sub_79DC8(viewCopy);

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
  sub_7A04C(viewCopy);

  (*(v7 + 8))(v10, v6);
}

- (JSAFigaroSummaryViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (JSAFigaroSummaryViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end