@interface IMBDetailedMessageTableViewController
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation IMBDetailedMessageTableViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for IMBDetailedMessageTableViewController();
  v2 = v4.receiver;
  viewDidLoad = [(IMBDetailedMessageViewController *)&v4 viewDidLoad];
  (*((swift_isaMask & *v2) + 0x128))(viewDidLoad);
  sub_10008254C();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_100082ED0();
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  result = sub_1000AC63C();
  __break(1u);
  return result;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  result = sub_1000AC63C();
  __break(1u);
  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v4 = sub_1000AB97C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  sub_1000AB93C();
  result = sub_1000AC63C();
  __break(1u);
  return result;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v4 = sub_1000AB97C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB93C();
  (*(v5 + 8))(v9, v4);
  return UITableViewAutomaticDimension;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v4 = [objc_allocWithZone(UIView) init];

  return v4;
}

@end