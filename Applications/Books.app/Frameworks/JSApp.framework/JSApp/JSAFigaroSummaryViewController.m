@interface JSAFigaroSummaryViewController
- (JSAFigaroSummaryViewController)initWithCoder:(id)a3;
- (JSAFigaroSummaryViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (JSAFigaroSummaryViewController)initWithStyle:(int64_t)a3;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)infoTapped:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)trashTapped:(id)a3;
- (void)valueChanged:(id)a3;
- (void)viewDidLoad;
@end

@implementation JSAFigaroSummaryViewController

- (JSAFigaroSummaryViewController)initWithCoder:(id)a3
{
  result = sub_84AFC();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_795D4();
}

- (void)infoTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_7AA00();
}

- (void)trashTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_7AB34();
}

- (void)valueChanged:(id)a3
{
  v5 = self;
  v3 = [(JSAFigaroSummaryViewController *)v5 tableView];
  if (v3)
  {
    v4 = v3;
    [v3 reloadData];
  }

  else
  {
    __break(1u);
  }
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR___JSAFigaroSummaryViewController_toolbar);
  v5 = self;
  [v4 frame];
  Height = CGRectGetHeight(v8);

  return Height;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_7AC90();

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_83B3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_83B0C();
  v11 = a3;
  v12 = self;
  v13 = sub_79DC8(v11);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_83B3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_83B0C();
  v11 = a3;
  v12 = self;
  sub_7A04C(v11);

  (*(v7 + 8))(v10, v6);
}

- (JSAFigaroSummaryViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (JSAFigaroSummaryViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end