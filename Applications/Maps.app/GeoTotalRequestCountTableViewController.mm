@interface GeoTotalRequestCountTableViewController
- (GeoTotalRequestCountTableViewController)initWithDictionary:(id)dictionary;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)getRequestCountForType:(id)type andApp:(id)app;
- (void)dataPreProcessing;
- (void)didReceiveMemoryWarning;
- (void)viewDidLoad;
@end

@implementation GeoTotalRequestCountTableViewController

- (unint64_t)getRequestCountForType:(id)type andApp:(id)app
{
  appCopy = app;
  info = [(GeoTotalRequestCountTableViewController *)self info];
  v8 = [info valueForKey:appCopy];

  v9 = 0;
  v10 = 0;
  do
  {
    v11 = v9;
    v10 += [v8 numberOfRequestsForType:type result:v9++];
  }

  while (v11 < 4);

  return v10;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  orderedSectionKeys = [(GeoTotalRequestCountTableViewController *)self orderedSectionKeys];
  v9 = [orderedSectionKeys objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  sectionDict = [(GeoTotalRequestCountTableViewController *)self sectionDict];
  v11 = [sectionDict objectForKeyedSubscript:v9];

  v12 = [v11 objectForKeyedSubscript:@"apps"];
  v13 = [pathCopy row];

  v14 = [v12 objectAtIndexedSubscript:v13];

  v15 = [viewCopy dequeueReusableCellWithIdentifier:@"reuseIdentifier"];

  if (!v15)
  {
    v15 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"reuseIdentifier"];
  }

  [v15 setSelectionStyle:0];
  v16 = [v14 objectForKeyedSubscript:@"name"];
  textLabel = [v15 textLabel];
  [textLabel setText:v16];

  v18 = [v14 objectForKeyedSubscript:@"count"];
  v19 = [v14 objectForKeyedSubscript:@"xmitB"];
  v20 = [v14 objectForKeyedSubscript:@"recvB"];
  v21 = [NSString stringWithFormat:@"%@ requests : (xmit:%@ / recv:%@)", v18, v19, v20];
  detailTextLabel = [v15 detailTextLabel];
  [detailTextLabel setText:v21];

  return v15;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  orderedSectionKeys = [(GeoTotalRequestCountTableViewController *)self orderedSectionKeys];
  v7 = [orderedSectionKeys objectAtIndexedSubscript:section];

  sectionDict = [(GeoTotalRequestCountTableViewController *)self sectionDict];
  v9 = [sectionDict objectForKeyedSubscript:v7];

  v10 = [v9 objectForKeyedSubscript:@"apps"];
  v11 = [v10 count];

  return v11;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  orderedSectionKeys = [(GeoTotalRequestCountTableViewController *)self orderedSectionKeys];
  v7 = [orderedSectionKeys objectAtIndexedSubscript:section];

  sectionDict = [(GeoTotalRequestCountTableViewController *)self sectionDict];
  v9 = [sectionDict objectForKeyedSubscript:v7];

  v10 = [v9 objectForKeyedSubscript:@"xmitB"];
  v11 = +[NSByteCountFormatter stringFromByteCount:countStyle:](NSByteCountFormatter, "stringFromByteCount:countStyle:", [v10 unsignedIntegerValue], 3);

  v12 = [v9 objectForKeyedSubscript:@"recvB"];
  v13 = +[NSByteCountFormatter stringFromByteCount:countStyle:](NSByteCountFormatter, "stringFromByteCount:countStyle:", [v12 unsignedIntegerValue], 3);

  v14 = [NSString stringWithFormat:@"%@\n(xmit:%@ / recv:%@)", v7, v11, v13];

  return v14;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  orderedSectionKeys = [(GeoTotalRequestCountTableViewController *)self orderedSectionKeys];
  v4 = [orderedSectionKeys count];

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
        info = [(GeoTotalRequestCountTableViewController *)self info];
        v11 = [info objectForKeyedSubscript:v9];

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

- (GeoTotalRequestCountTableViewController)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = GeoTotalRequestCountTableViewController;
  v5 = [(GeoTotalRequestCountTableViewController *)&v9 initWithStyle:1];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    info = v5->_info;
    v5->_info = v6;

    [(GeoTotalRequestCountTableViewController *)v5 dataPreProcessing];
  }

  return v5;
}

@end