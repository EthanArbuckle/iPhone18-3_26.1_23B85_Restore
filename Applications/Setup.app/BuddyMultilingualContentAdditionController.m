@interface BuddyMultilingualContentAdditionController
- (BuddyMultilingualContentAdditionController)initWithChoseableDataStore:(id)a3 selectionCallback:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BuddyMultilingualContentAdditionController

- (BuddyMultilingualContentAdditionController)initWithChoseableDataStore:(id)a3 selectionCallback:(id)a4
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v5 = v22;
  v22 = 0;
  v19.receiver = v5;
  v19.super_class = BuddyMultilingualContentAdditionController;
  v6 = [(BuddyMultilingualContentAdditionController *)&v19 initWithNibName:0 bundle:0];
  v22 = v6;
  objc_storeStrong(&v22, v6);
  if (v6)
  {
    v7 = [location[0] mutableCopy];
    v8 = *(v22 + 1);
    *(v22 + 1) = v7;

    v9 = [[UITableView alloc] initWithFrame:0 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v10 = *(v22 + 2);
    *(v22 + 2) = v9;

    [*(v22 + 2) setDelegate:v22];
    [*(v22 + 2) setDataSource:v22];
    v11 = [v20 copy];
    v12 = *(v22 + 3);
    *(v22 + 3) = v11;

    v13 = [v22 view];
    v14 = [v22 tableView];
    [v13 addSubview:v14];

    [*(v22 + 2) setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = *(v22 + 2);
    v16 = [v22 view];
    [v15 pinToEdges:v16];
  }

  v17 = v22;
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v22, 0);
  return v17;
}

- (void)viewWillAppear:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = BuddyMultilingualContentAdditionController;
  [(BuddyMultilingualContentAdditionController *)&v4 viewWillAppear:a3];
  v3 = [(BuddyMultilingualContentAdditionController *)v7 tableView];
  [(UITableView *)v3 reloadData];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(BuddyMultilingualContentAdditionController *)v9 dataStore];
  v6 = [(NSMutableArray *)v5 count];

  objc_storeStrong(location, 0);
  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = [location[0] dequeueReusableCellWithIdentifier:@"com.purpleBuddy.BuddyMultilingualAdditionCell"];
  if (!v13)
  {
    v13 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"com.purpleBuddy.BuddyMultilingualAdditionCell"];
  }

  v5 = [(BuddyMultilingualContentAdditionController *)v16 dataStore];
  v12 = -[NSMutableArray objectAtIndexedSubscript:](v5, "objectAtIndexedSubscript:", [v14 row]);

  v6 = [v12 title];
  v7 = [v13 textLabel];
  [v7 setText:v6];

  v8 = [v12 detailText];
  v9 = [v13 detailTextLabel];
  [v9 setText:v8];

  [v13 setSelectionStyle:2];
  v10 = v13;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v5 = [(BuddyMultilingualContentAdditionController *)v13 selectionCallBack];

  if (v5)
  {
    v6 = [(BuddyMultilingualContentAdditionController *)v13 dataStore];
    v10 = -[NSMutableArray objectAtIndexedSubscript:](v6, "objectAtIndexedSubscript:", [v11 row]);

    v7 = [(BuddyMultilingualContentAdditionController *)v13 dataStore];
    -[NSMutableArray removeObjectAtIndex:](v7, "removeObjectAtIndex:", [v11 row]);

    v8 = [(BuddyMultilingualContentAdditionController *)v13 selectionCallBack];
    v8[2](v8, v10);

    v9 = [(BuddyMultilingualContentAdditionController *)v13 tableView];
    [(UITableView *)v9 reloadData];

    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

@end