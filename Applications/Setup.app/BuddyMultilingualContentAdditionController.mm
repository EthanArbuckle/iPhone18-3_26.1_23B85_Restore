@interface BuddyMultilingualContentAdditionController
- (BuddyMultilingualContentAdditionController)initWithChoseableDataStore:(id)store selectionCallback:(id)callback;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BuddyMultilingualContentAdditionController

- (BuddyMultilingualContentAdditionController)initWithChoseableDataStore:(id)store selectionCallback:(id)callback
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, store);
  v20 = 0;
  objc_storeStrong(&v20, callback);
  v5 = selfCopy;
  selfCopy = 0;
  v19.receiver = v5;
  v19.super_class = BuddyMultilingualContentAdditionController;
  v6 = [(BuddyMultilingualContentAdditionController *)&v19 initWithNibName:0 bundle:0];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    v7 = [location[0] mutableCopy];
    v8 = *(selfCopy + 1);
    *(selfCopy + 1) = v7;

    v9 = [[UITableView alloc] initWithFrame:0 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v10 = *(selfCopy + 2);
    *(selfCopy + 2) = v9;

    [*(selfCopy + 2) setDelegate:selfCopy];
    [*(selfCopy + 2) setDataSource:selfCopy];
    v11 = [v20 copy];
    v12 = *(selfCopy + 3);
    *(selfCopy + 3) = v11;

    view = [selfCopy view];
    tableView = [selfCopy tableView];
    [view addSubview:tableView];

    [*(selfCopy + 2) setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = *(selfCopy + 2);
    view2 = [selfCopy view];
    [v15 pinToEdges:view2];
  }

  v17 = selfCopy;
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v17;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v6 = a2;
  appearCopy = appear;
  v4.receiver = self;
  v4.super_class = BuddyMultilingualContentAdditionController;
  [(BuddyMultilingualContentAdditionController *)&v4 viewWillAppear:appear];
  tableView = [(BuddyMultilingualContentAdditionController *)selfCopy tableView];
  [(UITableView *)tableView reloadData];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  dataStore = [(BuddyMultilingualContentAdditionController *)selfCopy dataStore];
  v6 = [(NSMutableArray *)dataStore count];

  objc_storeStrong(location, 0);
  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v14 = 0;
  objc_storeStrong(&v14, path);
  v13 = [location[0] dequeueReusableCellWithIdentifier:@"com.purpleBuddy.BuddyMultilingualAdditionCell"];
  if (!v13)
  {
    v13 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"com.purpleBuddy.BuddyMultilingualAdditionCell"];
  }

  dataStore = [(BuddyMultilingualContentAdditionController *)selfCopy dataStore];
  v12 = -[NSMutableArray objectAtIndexedSubscript:](dataStore, "objectAtIndexedSubscript:", [v14 row]);

  title = [v12 title];
  textLabel = [v13 textLabel];
  [textLabel setText:title];

  detailText = [v12 detailText];
  detailTextLabel = [v13 detailTextLabel];
  [detailTextLabel setText:detailText];

  [v13 setSelectionStyle:2];
  v10 = v13;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v11 = 0;
  objc_storeStrong(&v11, path);
  selectionCallBack = [(BuddyMultilingualContentAdditionController *)selfCopy selectionCallBack];

  if (selectionCallBack)
  {
    dataStore = [(BuddyMultilingualContentAdditionController *)selfCopy dataStore];
    v10 = -[NSMutableArray objectAtIndexedSubscript:](dataStore, "objectAtIndexedSubscript:", [v11 row]);

    dataStore2 = [(BuddyMultilingualContentAdditionController *)selfCopy dataStore];
    -[NSMutableArray removeObjectAtIndex:](dataStore2, "removeObjectAtIndex:", [v11 row]);

    selectionCallBack2 = [(BuddyMultilingualContentAdditionController *)selfCopy selectionCallBack];
    selectionCallBack2[2](selectionCallBack2, v10);

    tableView = [(BuddyMultilingualContentAdditionController *)selfCopy tableView];
    [(UITableView *)tableView reloadData];

    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

@end