@interface TUIStatsFeedEntryViewController
- (TUIStatsFeedEntryViewController)initWithFeedEntry:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_dismiss:(id)a3;
- (void)viewDidLoad;
@end

@implementation TUIStatsFeedEntryViewController

- (TUIStatsFeedEntryViewController)initWithFeedEntry:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TUIStatsFeedEntryViewController;
  v6 = [(TUIStatsFeedEntryViewController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_feedEntry, a3);
    v8 = [[UIBarButtonItem alloc] initWithTitle:@"Done" style:2 target:v7 action:"_dismiss:"];
    v9 = [(TUIStatsFeedEntryViewController *)v7 navigationItem];
    [v9 setRightBarButtonItem:v8];
  }

  return v7;
}

- (void)_dismiss:(id)a3
{
  v3 = [(TUIStatsFeedEntryViewController *)self navigationController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = TUIStatsFeedEntryViewController;
  [(TUIStatsFeedEntryViewController *)&v8 viewDidLoad];
  v3 = [(TUIStatsFeedEntryViewController *)self tableView];
  v4 = +[TUIStatsCell nib];
  [v3 registerNib:v4 forCellReuseIdentifier:@"cell"];

  v5 = [(TUIStatsFeedEntryViewController *)self tableView];
  [v5 setRowHeight:UITableViewAutomaticDimension];

  v6 = [(TUIStatsFeedEntryViewController *)self tableView];
  [v6 setEstimatedRowHeight:100.0];

  v7 = [(TUIStatsFeedEntryViewController *)self tableView];
  [v7 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"header"];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (!a4)
  {
    return 1;
  }

  v4 = [(TUIStatsFeedEntry *)self->_feedEntry passes];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v5 = [(TUIStatsFeedEntryViewController *)self tableView];
  v6 = [v5 dequeueReusableHeaderFooterViewWithIdentifier:@"header"];

  if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_6;
    }

    v7 = @"Passes";
  }

  else
  {
    v7 = @"Summary";
  }

  v8 = [v6 textLabel];
  [v8 setText:v7];

LABEL_6:

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"cell" forIndexPath:v6];
  if ([v6 section])
  {
    if ([v6 section] == &dword_0 + 1)
    {
      v8 = [(TUIStatsFeedEntry *)self->_feedEntry passes];
      v9 = [v8 count];
      v10 = ~[v6 row];

      v11 = [(TUIStatsFeedEntry *)self->_feedEntry passes];
      v12 = [v11 objectAtIndexedSubscript:&v9[v10]];

      v13 = [v12 url];
      v14 = [v13 lastPathComponent];
      v15 = TUIStatsReasonToString([v12 reason]);
      v16 = [NSString stringWithFormat:@"%@ - %@\n\n", v14, v15];
      [v7 setHeader:v16];

      [v7 setTimingProvider:v12];
      [v7 setEventProvider:v12];
    }
  }

  else
  {
    [v7 setHeader:0];
    [v7 setTimingProvider:self->_feedEntry];
    [v7 setEventProvider:self->_feedEntry];
  }

  [v7 updateContent];

  return v7;
}

@end