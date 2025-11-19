@interface IMBListPickerTableViewController
- (_TtC8Business32IMBListPickerTableViewController)initWithCoder:(id)a3;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willDeselectRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)viewDidLoad;
@end

@implementation IMBListPickerTableViewController

- (_TtC8Business32IMBListPickerTableViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_multipleSelectionEnabled) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_cellShouldHaveSelectionIcon) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_listRequest) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_rightButtonTapped) = 0;
  v3 = OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_selectedItems;
  *(&self->super.super.super.super.super.isa + v3) = sub_10004FC70(_swiftEmptyArrayStorage);
  result = sub_1000AC63C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10001BB78();
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_listRequest);
  if (!v3)
  {
    return 1;
  }

  v4 = *(v3 + 24);
  if (v4 >> 62)
  {
    return sub_1000AC65C();
  }

  else
  {
    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_10001E984(a4);

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_1000AB97C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB93C();
  v12 = a3;
  v13 = self;
  v14 = sub_10001D838(v12, v11);

  (*(v7 + 8))(v11, v6);

  return v14;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_10001DFFC(v6, a4);

  return v8;
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v4 = sub_1000AB97C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB93C();
  (*(v5 + 8))(v9, v4);
  return 140.0;
}

- (id)tableView:(id)a3 willDeselectRowAtIndexPath:(id)a4
{
  v4 = sub_1000AB97C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000413C(&qword_1000EFEA0, &qword_1000B11A8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v19 - v13;
  sub_1000AB93C();
  if (sub_10002CE60() == 2)
  {
    (*(v5 + 8))(v9, v4);
    v15 = 1;
  }

  else
  {
    (*(v5 + 32))(v14, v9, v4);
    v15 = 0;
  }

  (*(v5 + 56))(v14, v15, 1, v4);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    v16 = 0;
  }

  else
  {
    isa = sub_1000AB92C().super.isa;
    (*(v5 + 8))(v14, v4);
    v16 = isa;
  }

  return v16;
}

@end