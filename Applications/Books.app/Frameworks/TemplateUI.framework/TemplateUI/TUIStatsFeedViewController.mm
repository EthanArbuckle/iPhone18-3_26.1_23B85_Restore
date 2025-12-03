@interface TUIStatsFeedViewController
- (TUIStatsFeedViewController)initWithFeed:(id)feed;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_dismiss:(id)_dismiss;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation TUIStatsFeedViewController

- (TUIStatsFeedViewController)initWithFeed:(id)feed
{
  feedCopy = feed;
  v11.receiver = self;
  v11.super_class = TUIStatsFeedViewController;
  v6 = [(TUIStatsFeedViewController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_feed, feed);
    v8 = [[UIBarButtonItem alloc] initWithTitle:@"Done" style:2 target:v7 action:"_dismiss:"];
    navigationItem = [(TUIStatsFeedViewController *)v7 navigationItem];
    [navigationItem setRightBarButtonItem:v8];
  }

  return v7;
}

- (void)_dismiss:(id)_dismiss
{
  navigationController = [(TUIStatsFeedViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = TUIStatsFeedViewController;
  [(TUIStatsFeedViewController *)&v8 viewDidLoad];
  tableView = [(TUIStatsFeedViewController *)self tableView];
  v4 = +[TUIStatsCell nib];
  [tableView registerNib:v4 forCellReuseIdentifier:@"cell"];

  tableView2 = [(TUIStatsFeedViewController *)self tableView];
  [tableView2 setRowHeight:UITableViewAutomaticDimension];

  tableView3 = [(TUIStatsFeedViewController *)self tableView];
  [tableView3 setEstimatedRowHeight:100.0];

  tableView4 = [(TUIStatsFeedViewController *)self tableView];
  [tableView4 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"header"];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if (section)
  {
    if (section == 2)
    {
      passes = [(TUIStatsFeed *)self->_feed passes];
    }

    else
    {
      if (section != 1)
      {
        v9 = 0;
        goto LABEL_9;
      }

      passes = [(TUIStatsFeed *)self->_feed currentEntriesUID];
    }

    v8 = passes;
    v9 = [passes count];
  }

  else
  {
    v9 = &dword_0 + 1;
  }

LABEL_9:

  return v9;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  tableView = [(TUIStatsFeedViewController *)self tableView];
  v6 = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"header"];

  if (section <= 2)
  {
    v7 = off_25F730[section];
    textLabel = [v6 textLabel];
    [textLabel setText:v7];
  }

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"cell" forIndexPath:pathCopy];
  if (![pathCopy section])
  {
    v9 = objc_alloc_init(NSMutableString);
    creationDate = [(TUIStatsFeed *)self->_feed creationDate];
    v21 = creationDate;
    if (creationDate)
    {
      v22 = creationDate;
    }

    else
    {
      v22 = @"-";
    }

    [v9 appendFormat:@"creation: %@\n", v22];

    initialResourcesRenderedDate = [(TUIStatsFeed *)self->_feed initialResourcesRenderedDate];
    v24 = initialResourcesRenderedDate;
    if (initialResourcesRenderedDate)
    {
      v25 = initialResourcesRenderedDate;
    }

    else
    {
      v25 = @"-";
    }

    [v9 appendFormat:@"initialResourcesRenderedDate: %@\n", v25];

    contentUpdateDate = [(TUIStatsFeed *)self->_feed contentUpdateDate];
    v27 = contentUpdateDate;
    if (contentUpdateDate)
    {
      v28 = contentUpdateDate;
    }

    else
    {
      v28 = @"-";
    }

    [v9 appendFormat:@"contentUpdate: %@\n", v28];

    initialContentReadyDate = [(TUIStatsFeed *)self->_feed initialContentReadyDate];
    v30 = initialContentReadyDate;
    if (initialContentReadyDate)
    {
      v31 = initialContentReadyDate;
    }

    else
    {
      v31 = @"-";
    }

    [v9 appendFormat:@"initialContentReady: %@\n", v31];

    initialLayoutStartDate = [(TUIStatsFeed *)self->_feed initialLayoutStartDate];
    v33 = initialLayoutStartDate;
    if (initialLayoutStartDate)
    {
      v34 = initialLayoutStartDate;
    }

    else
    {
      v34 = @"-";
    }

    [v9 appendFormat:@"initialLayoutStartDate: %@\n", v34];

    allContentReadyDate = [(TUIStatsFeed *)self->_feed allContentReadyDate];
    v36 = allContentReadyDate;
    if (allContentReadyDate)
    {
      v37 = allContentReadyDate;
    }

    else
    {
      v37 = @"-";
    }

    [v9 appendFormat:@"allContentReady: %@\n", v37];

    dynamicUpdateDate = [(TUIStatsFeed *)self->_feed dynamicUpdateDate];
    v39 = dynamicUpdateDate;
    if (dynamicUpdateDate)
    {
      v40 = dynamicUpdateDate;
    }

    else
    {
      v40 = @"-";
    }

    [v9 appendFormat:@"dynamicUpdate: %@\n", v40];

    resourcesStartLoadingDate = [(TUIStatsFeed *)self->_feed resourcesStartLoadingDate];
    v42 = resourcesStartLoadingDate;
    if (resourcesStartLoadingDate)
    {
      v43 = resourcesStartLoadingDate;
    }

    else
    {
      v43 = @"-";
    }

    [v9 appendFormat:@"resourcesStartLoadingDate: %@\n", v43];

    resourcesLoadedDate = [(TUIStatsFeed *)self->_feed resourcesLoadedDate];
    v45 = resourcesLoadedDate;
    if (resourcesLoadedDate)
    {
      v46 = resourcesLoadedDate;
    }

    else
    {
      v46 = @"-";
    }

    [v9 appendFormat:@"resourcesLoaded: %@\n", v46];

    viewWillAppearDate = [(TUIStatsFeed *)self->_feed viewWillAppearDate];
    v48 = viewWillAppearDate;
    if (viewWillAppearDate)
    {
      v49 = viewWillAppearDate;
    }

    else
    {
      v49 = @"-";
    }

    [v9 appendFormat:@"viewWillAppear: %@\n", v49];

    [v7 setHeader:v9];
    [v7 setTimingProvider:self->_feed];
    feed = self->_feed;
    v51 = v7;
LABEL_37:
    [v51 setEventProvider:feed];
    goto LABEL_38;
  }

  if ([pathCopy section] != &dword_0 + 1)
  {
    if ([pathCopy section] != &dword_0 + 2)
    {
      goto LABEL_39;
    }

    passes = [(TUIStatsFeed *)self->_feed passes];
    v53 = [passes count];
    v54 = ~[pathCopy row];

    passes2 = [(TUIStatsFeed *)self->_feed passes];
    v9 = [passes2 objectAtIndexedSubscript:&v53[v54]];

    [v9 elapsedTimeForPhase:0];
    v57 = v56 * 1000.0;
    v58 = TUIStatsReasonToString([v9 reason]);
    v59 = [NSString stringWithFormat:@"%.3fms - %@\n\n", *&v57, v58];
    [v7 setHeader:v59];

    [v7 setTimingProvider:0];
    v51 = v7;
    feed = 0;
    goto LABEL_37;
  }

  currentEntriesUID = [(TUIStatsFeed *)self->_feed currentEntriesUID];
  v9 = [currentEntriesUID objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  entries = [(TUIStatsFeed *)self->_feed entries];
  v11 = [entries objectForKeyedSubscript:v9];

  passes3 = [v11 passes];
  lastObject = [passes3 lastObject];

  [v11 elapsedTimeForPhase:0];
  v15 = v14 * 1000.0;
  v16 = [lastObject url];
  lastPathComponent = [v16 lastPathComponent];
  v18 = TUIStatsReasonToString([lastObject reason]);
  v19 = [NSString stringWithFormat:@"%.3fms - %@ - %@\n\n", *&v15, lastPathComponent, v18];
  [v7 setHeader:v19];

  [v7 setTimingProvider:0];
  [v7 setEventProvider:0];

LABEL_38:
LABEL_39:
  [v7 updateContent];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section] == &dword_0 + 1)
  {
    currentEntriesUID = [(TUIStatsFeed *)self->_feed currentEntriesUID];
    v6 = [currentEntriesUID objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    entries = [(TUIStatsFeed *)self->_feed entries];
    v8 = [entries objectForKeyedSubscript:v6];
    v9 = [TUIStatsViewControllerFactory newViewControllerWithFeedEntry:v8];

    navigationController = [(TUIStatsFeedViewController *)self navigationController];
    [navigationController pushViewController:v9 animated:1];
  }
}

@end