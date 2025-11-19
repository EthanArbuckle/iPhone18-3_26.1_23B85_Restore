@interface GeoTotalRequestCountTableViewController
- (GeoTotalRequestCountTableViewController)initWithDictionary:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)getRequestCountForType:(id)a3 andApp:(id)a4;
- (void)dataPreProcessing;
- (void)didReceiveMemoryWarning;
- (void)viewDidLoad;
@end

@implementation GeoTotalRequestCountTableViewController

- (unint64_t)getRequestCountForType:(id)a3 andApp:(id)a4
{
  v6 = a4;
  v7 = [(GeoTotalRequestCountTableViewController *)self info];
  v8 = [v7 valueForKey:v6];

  v9 = 0;
  v10 = 0;
  do
  {
    v11 = v9;
    v10 += [v8 numberOfRequestsForType:a3 result:v9++];
  }

  while (v11 < 4);

  return v10;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GeoTotalRequestCountTableViewController *)self orderedSectionKeys];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];

  v10 = [(GeoTotalRequestCountTableViewController *)self sectionDict];
  v11 = [v10 objectForKeyedSubscript:v9];

  v12 = [v11 objectForKeyedSubscript:@"apps"];
  v13 = [v6 row];

  v14 = [v12 objectAtIndexedSubscript:v13];

  v15 = [v7 dequeueReusableCellWithIdentifier:@"reuseIdentifier"];

  if (!v15)
  {
    v15 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"reuseIdentifier"];
  }

  [v15 setSelectionStyle:0];
  v16 = [v14 objectForKeyedSubscript:@"name"];
  v17 = [v15 textLabel];
  [v17 setText:v16];

  v18 = [v14 objectForKeyedSubscript:@"count"];
  v19 = [v14 objectForKeyedSubscript:@"xmitB"];
  v20 = [v14 objectForKeyedSubscript:@"recvB"];
  v21 = [NSString stringWithFormat:@"%@ requests : (xmit:%@ / recv:%@)", v18, v19, v20];
  v22 = [v15 detailTextLabel];
  [v22 setText:v21];

  return v15;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(GeoTotalRequestCountTableViewController *)self orderedSectionKeys];
  v7 = [v6 objectAtIndexedSubscript:a4];

  v8 = [(GeoTotalRequestCountTableViewController *)self sectionDict];
  v9 = [v8 objectForKeyedSubscript:v7];

  v10 = [v9 objectForKeyedSubscript:@"apps"];
  v11 = [v10 count];

  return v11;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = [(GeoTotalRequestCountTableViewController *)self orderedSectionKeys];
  v7 = [v6 objectAtIndexedSubscript:a4];

  v8 = [(GeoTotalRequestCountTableViewController *)self sectionDict];
  v9 = [v8 objectForKeyedSubscript:v7];

  v10 = [v9 objectForKeyedSubscript:@"xmitB"];
  v11 = +[NSByteCountFormatter stringFromByteCount:countStyle:](NSByteCountFormatter, "stringFromByteCount:countStyle:", [v10 unsignedIntegerValue], 3);

  v12 = [v9 objectForKeyedSubscript:@"recvB"];
  v13 = +[NSByteCountFormatter stringFromByteCount:countStyle:](NSByteCountFormatter, "stringFromByteCount:countStyle:", [v12 unsignedIntegerValue], 3);

  v14 = [NSString stringWithFormat:@"%@\n(xmit:%@ / recv:%@)", v7, v11, v13];

  return v14;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(GeoTotalRequestCountTableViewController *)self orderedSectionKeys];
  v4 = [v3 count];

  return v4;
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = GeoTotalRequestCountTableViewController;
  [(GeoTotalRequestCountTableViewController *)&v2 didReceiveMemoryWarning];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = GeoTotalRequestCountTableViewController;
  [(GeoTotalRequestCountTableViewController *)&v2 viewDidLoad];
}

- (void)dataPreProcessing
{
  v3 = +[NSMutableOrderedSet orderedSet];
  v4 = +[NSMutableDictionary dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(GeoTotalRequestCountTableViewController *)self info];
  v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      v8 = 0;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * v8);
        v10 = [(GeoTotalRequestCountTableViewController *)self info];
        v11 = [v10 objectForKeyedSubscript:v9];

        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_10095E23C;
        v18[3] = &unk_10162F9C0;
        v18[4] = self;
        v18[5] = v9;
        v19 = v4;
        v20 = v3;
        v21 = v11;
        v12 = v11;
        [v12 enumerateRequestTypes:v18];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  v13 = [v4 copy];
  sectionDict = self->_sectionDict;
  self->_sectionDict = v13;

  v15 = [v3 copy];
  orderedSectionKeys = self->_orderedSectionKeys;
  self->_orderedSectionKeys = v15;
}

- (GeoTotalRequestCountTableViewController)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GeoTotalRequestCountTableViewController;
  v5 = [(GeoTotalRequestCountTableViewController *)&v9 initWithStyle:1];
  if (v5)
  {
    v6 = [v4 copy];
    info = v5->_info;
    v5->_info = v6;

    [(GeoTotalRequestCountTableViewController *)v5 dataPreProcessing];
  }

  return v5;
}

@end