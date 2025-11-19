@interface IMBTimeSelectedViewController
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation IMBTimeSelectedViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100093808();
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_1000AB97C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB93C();
  v12 = a3;
  v13 = self;
  sub_1000957F8(v12);
  v15 = v14;

  (*(v7 + 8))(v11, v6);

  return v15;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = sub_1000AB97C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB93C();
  v12 = a3;
  v13 = self;
  sub_1000966C8();
  v15 = v14;

  (*(v7 + 8))(v11, v6);
  return v15;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_1000AB97C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB93C();
  v12 = a3;
  v13 = self;
  sub_100095F74(v12);

  (*(v7 + 8))(v11, v6);
}

@end