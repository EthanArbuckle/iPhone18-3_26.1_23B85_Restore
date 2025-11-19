@interface TUIStatsFeedViewController
- (TUIStatsFeedViewController)initWithFeed:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_dismiss:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation TUIStatsFeedViewController

- (TUIStatsFeedViewController)initWithFeed:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TUIStatsFeedViewController;
  v6 = [(TUIStatsFeedViewController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_feed, a3);
    v8 = [[UIBarButtonItem alloc] initWithTitle:@"Done" style:2 target:v7 action:"_dismiss:"];
    v9 = [(TUIStatsFeedViewController *)v7 navigationItem];
    [v9 setRightBarButtonItem:v8];
  }

  return v7;
}

- (void)_dismiss:(id)a3
{
  v3 = [(TUIStatsFeedViewController *)self navigationController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = TUIStatsFeedViewController;
  [(TUIStatsFeedViewController *)&v8 viewDidLoad];
  v3 = [(TUIStatsFeedViewController *)self tableView];
  v4 = +[TUIStatsCell nib];
  [v3 registerNib:v4 forCellReuseIdentifier:@"cell"];

  v5 = [(TUIStatsFeedViewController *)self tableView];
  [v5 setRowHeight:UITableViewAutomaticDimension];

  v6 = [(TUIStatsFeedViewController *)self tableView];
  [v6 setEstimatedRowHeight:100.0];

  v7 = [(TUIStatsFeedViewController *)self tableView];
  [v7 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"header"];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4)
  {
    if (a4 == 2)
    {
      v7 = [(TUIStatsFeed *)self->_feed passes];
    }

    else
    {
      if (a4 != 1)
      {
        v9 = 0;
        goto LABEL_9;
      }

      v7 = [(TUIStatsFeed *)self->_feed currentEntriesUID];
    }

    v8 = v7;
    v9 = [v7 count];
  }

  else
  {
    v9 = &dword_0 + 1;
  }

LABEL_9:

  return v9;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v5 = [(TUIStatsFeedViewController *)self tableView];
  v6 = [v5 dequeueReusableHeaderFooterViewWithIdentifier:@"header"];

  if (a4 <= 2)
  {
    v7 = off_25F730[a4];
    v8 = [v6 textLabel];
    [v8 setText:v7];
  }

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"cell" forIndexPath:v6];
  if (![v6 section])
  {
    v9 = objc_alloc_init(NSMutableString);
    v20 = [(TUIStatsFeed *)self->_feed creationDate];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = @"-";
    }

    [v9 appendFormat:@"creation: %@\n", v22];

    v23 = [(TUIStatsFeed *)self->_feed initialResourcesRenderedDate];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = @"-";
    }

    [v9 appendFormat:@"initialResourcesRenderedDate: %@\n", v25];

    v26 = [(TUIStatsFeed *)self->_feed contentUpdateDate];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = @"-";
    }

    [v9 appendFormat:@"contentUpdate: %@\n", v28];

    v29 = [(TUIStatsFeed *)self->_feed initialContentReadyDate];
    v30 = v29;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = @"-";
    }

    [v9 appendFormat:@"initialContentReady: %@\n", v31];

    v32 = [(TUIStatsFeed *)self->_feed initialLayoutStartDate];
    v33 = v32;
    if (v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = @"-";
    }

    [v9 appendFormat:@"initialLayoutStartDate: %@\n", v34];

    v35 = [(TUIStatsFeed *)self->_feed allContentReadyDate];
    v36 = v35;
    if (v35)
    {
      v37 = v35;
    }

    else
    {
      v37 = @"-";
    }

    [v9 appendFormat:@"allContentReady: %@\n", v37];

    v38 = [(TUIStatsFeed *)self->_feed dynamicUpdateDate];
    v39 = v38;
    if (v38)
    {
      v40 = v38;
    }

    else
    {
      v40 = @"-";
    }

    [v9 appendFormat:@"dynamicUpdate: %@\n", v40];

    v41 = [(TUIStatsFeed *)self->_feed resourcesStartLoadingDate];
    v42 = v41;
    if (v41)
    {
      v43 = v41;
    }

    else
    {
      v43 = @"-";
    }

    [v9 appendFormat:@"resourcesStartLoadingDate: %@\n", v43];

    v44 = [(TUIStatsFeed *)self->_feed resourcesLoadedDate];
    v45 = v44;
    if (v44)
    {
      v46 = v44;
    }

    else
    {
      v46 = @"-";
    }

    [v9 appendFormat:@"resourcesLoaded: %@\n", v46];

    v47 = [(TUIStatsFeed *)self->_feed viewWillAppearDate];
    v48 = v47;
    if (v47)
    {
      v49 = v47;
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

  if ([v6 section] != &dword_0 + 1)
  {
    if ([v6 section] != &dword_0 + 2)
    {
      goto LABEL_39;
    }

    v52 = [(TUIStatsFeed *)self->_feed passes];
    v53 = [v52 count];
    v54 = ~[v6 row];

    v55 = [(TUIStatsFeed *)self->_feed passes];
    v9 = [v55 objectAtIndexedSubscript:&v53[v54]];

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

  v8 = [(TUIStatsFeed *)self->_feed currentEntriesUID];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

  v10 = [(TUIStatsFeed *)self->_feed entries];
  v11 = [v10 objectForKeyedSubscript:v9];

  v12 = [v11 passes];
  v13 = [v12 lastObject];

  [v11 elapsedTimeForPhase:0];
  v15 = v14 * 1000.0;
  v16 = [v13 url];
  v17 = [v16 lastPathComponent];
  v18 = TUIStatsReasonToString([v13 reason]);
  v19 = [NSString stringWithFormat:@"%.3fms - %@ - %@\n\n", *&v15, v17, v18];
  [v7 setHeader:v19];

  [v7 setTimingProvider:0];
  [v7 setEventProvider:0];

LABEL_38:
LABEL_39:
  [v7 updateContent];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v11 = a4;
  if ([v11 section] == &dword_0 + 1)
  {
    v5 = [(TUIStatsFeed *)self->_feed currentEntriesUID];
    v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(v11, "row")}];

    v7 = [(TUIStatsFeed *)self->_feed entries];
    v8 = [v7 objectForKeyedSubscript:v6];
    v9 = [TUIStatsViewControllerFactory newViewControllerWithFeedEntry:v8];

    v10 = [(TUIStatsFeedViewController *)self navigationController];
    [v10 pushViewController:v9 animated:1];
  }
}

@end