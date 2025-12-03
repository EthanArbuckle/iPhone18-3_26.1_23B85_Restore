@interface MacListPickerTableViewController
- (_TtC8Business32MacListPickerTableViewController)initWithCoder:(id)coder;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willDeselectRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation MacListPickerTableViewController

- (_TtC8Business32MacListPickerTableViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8Business32MacListPickerTableViewController_selectedIndexPaths) = &_swiftEmptySetSingleton;
  result = sub_1000AC63C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10009CA00();
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8Business32MacListPickerTableViewController_listRequest);
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8Business32MacListPickerTableViewController_listRequest);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  if ((v5 & 0xC000000000000001) == 0)
  {
    if (section < 0)
    {
      __break(1u);
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > section)
    {
      v6 = *(*(v5 + 8 * section + 32) + 40);
      if ((v6 & 0x8000000000000000) == 0 && (v6 & 0x4000000000000000) == 0)
      {
        return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_14:
    selfCopy3 = self;
    selfCopy2 = self;

    goto LABEL_15;
  }

  selfCopy3 = self;
  selfCopy4 = self;

  v10 = sub_1000AC5AC();

  v11 = *(v10 + 40);

  swift_unknownObjectRelease();
  if ((v11 & 0x8000000000000000) == 0 && (v11 & 0x4000000000000000) == 0)
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);

    return v12;
  }

LABEL_15:
  v14 = sub_1000AC65C();

  return v14;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_1000AB97C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB93C();
  viewCopy = view;
  selfCopy = self;
  v14 = sub_10009DB0C(viewCopy, v11);

  (*(v7 + 8))(v11, v6);

  return v14;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if ([viewCopy numberOfSections] <= 1)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = UITableViewAutomaticDimension;
  }

  return v5;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_10009E0C4(viewCopy, section);

  return v8;
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
  sub_10009E3A8(viewCopy, v11);

  (*(v7 + 8))(v11, v6);
}

- (id)tableView:(id)view willDeselectRowAtIndexPath:(id)path
{
  v4 = sub_1000AB97C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB93C();
  (*(v5 + 8))(v9, v4);

  return 0;
}

@end