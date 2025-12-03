@interface IMBTimeSelectionTableViewController
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation IMBTimeSelectionTableViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10008D3D8();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10008D4EC(appear);
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  v4 = OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_dates;
  swift_beginAccess();
  v5 = *(&self->super.super.super.super.super.isa + v4);
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v8 = *(&self->super.super.super.super.super.isa + v4);
    }

    v6 = sub_1000AC65C();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v6 != 0;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_dates;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.isa + v5);
  if (!(v6 >> 62))
  {
    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 < 0)
  {
    v8 = *(&self->super.super.super.super.super.isa + v5);
  }

  return sub_1000AC65C();
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_1000AB97C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB93C();
  viewCopy = view;
  selfCopy = self;
  sub_10008DBEC(viewCopy);
  v15 = v14;

  (*(v7 + 8))(v11, v6);

  return v15;
}

@end