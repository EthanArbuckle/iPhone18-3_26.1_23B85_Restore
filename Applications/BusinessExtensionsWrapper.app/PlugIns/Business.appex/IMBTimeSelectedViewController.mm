@interface IMBTimeSelectedViewController
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation IMBTimeSelectedViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100093808();
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_tableViewData;
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
  sub_1000957F8(viewCopy);
  v15 = v14;

  (*(v7 + 8))(v11, v6);

  return v15;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v6 = sub_1000AB97C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB93C();
  viewCopy = view;
  selfCopy = self;
  sub_1000966C8();
  v15 = v14;

  (*(v7 + 8))(v11, v6);
  return v15;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_1000AB97C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB93C();
  viewCopy = view;
  selfCopy = self;
  sub_100095F74(viewCopy);

  (*(v7 + 8))(v11, v6);
}

@end