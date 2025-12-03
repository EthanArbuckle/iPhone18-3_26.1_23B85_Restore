@interface TUIStatsFeedEntryViewController
- (TUIStatsFeedEntryViewController)initWithFeedEntry:(id)entry;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_dismiss:(id)_dismiss;
- (void)viewDidLoad;
@end

@implementation TUIStatsFeedEntryViewController

- (TUIStatsFeedEntryViewController)initWithFeedEntry:(id)entry
{
  entryCopy = entry;
  v11.receiver = self;
  v11.super_class = TUIStatsFeedEntryViewController;
  v6 = [(TUIStatsFeedEntryViewController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_feedEntry, entry);
    v8 = [[UIBarButtonItem alloc] initWithTitle:@"Done" style:2 target:v7 action:"_dismiss:"];
    navigationItem = [(TUIStatsFeedEntryViewController *)v7 navigationItem];
    [navigationItem setRightBarButtonItem:v8];
  }

  return v7;
}

- (void)_dismiss:(id)_dismiss
{
  navigationController = [(TUIStatsFeedEntryViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = TUIStatsFeedEntryViewController;
  [(TUIStatsFeedEntryViewController *)&v8 viewDidLoad];
  tableView = [(TUIStatsFeedEntryViewController *)self tableView];
  v4 = +[TUIStatsCell nib];
  [tableView registerNib:v4 forCellReuseIdentifier:@"cell"];

  tableView2 = [(TUIStatsFeedEntryViewController *)self tableView];
  [tableView2 setRowHeight:UITableViewAutomaticDimension];

  tableView3 = [(TUIStatsFeedEntryViewController *)self tableView];
  [tableView3 setEstimatedRowHeight:100.0];

  tableView4 = [(TUIStatsFeedEntryViewController *)self tableView];
  [tableView4 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"header"];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (!section)
  {
    return 1;
  }

  passes = [(TUIStatsFeedEntry *)self->_feedEntry passes];
  v5 = [passes count];

  return v5;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  tableView = [(TUIStatsFeedEntryViewController *)self tableView];
  v6 = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"header"];

  if (section)
  {
    if (section != 1)
    {
      goto LABEL_6;
    }

    v7 = @"Passes";
  }

  else
  {
    v7 = @"Summary";
  }

  textLabel = [v6 textLabel];
  [textLabel setText:v7];

LABEL_6:

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"cell" forIndexPath:pathCopy];
  if ([pathCopy section])
  {
    if ([pathCopy section] == &dword_0 + 1)
    {
      passes = [(TUIStatsFeedEntry *)self->_feedEntry passes];
      v9 = [passes count];
      v10 = ~[pathCopy row];

      passes2 = [(TUIStatsFeedEntry *)self->_feedEntry passes];
      v12 = [passes2 objectAtIndexedSubscript:&v9[v10]];

      v13 = [v12 url];
      lastPathComponent = [v13 lastPathComponent];
      v15 = TUIStatsReasonToString([v12 reason]);
      v16 = [NSString stringWithFormat:@"%@ - %@\n\n", lastPathComponent, v15];
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