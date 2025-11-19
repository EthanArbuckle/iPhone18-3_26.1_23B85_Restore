@interface IMBDetailedMessageTableViewController
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation IMBDetailedMessageTableViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for IMBDetailedMessageTableViewController();
  v2 = v4.receiver;
  v3 = [(IMBDetailedMessageViewController *)&v4 viewDidLoad];
  (*((swift_isaMask & *v2) + 0x128))(v3);
  sub_10008254C();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_100082ED0();
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  result = sub_1000AC63C();
  __break(1u);
  return result;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  result = sub_1000AC63C();
  __break(1u);
  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v4 = sub_1000AB97C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  sub_1000AB93C();
  result = sub_1000AC63C();
  __break(1u);
  return result;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
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

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v4 = [objc_allocWithZone(UIView) init];

  return v4;
}

@end