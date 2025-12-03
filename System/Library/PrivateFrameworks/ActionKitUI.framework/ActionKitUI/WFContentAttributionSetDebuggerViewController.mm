@interface WFContentAttributionSetDebuggerViewController
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)setContentItems:(id)items;
- (void)viewDidLoad;
@end

@implementation WFContentAttributionSetDebuggerViewController

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  contentItems = [(WFContentAttributionSetDebuggerViewController *)self contentItems];
  v6 = [contentItems objectAtIndexedSubscript:section];
  name = [v6 name];

  return name;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"WFContentAttributionCellIdentifier" forIndexPath:pathCopy];
  contentItems = [(WFContentAttributionSetDebuggerViewController *)self contentItems];
  v9 = [contentItems objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  attributionSet = [v9 attributionSet];
  attributions = [attributionSet attributions];
  v12 = [pathCopy row];

  v13 = [attributions objectAtIndexedSubscript:v12];

  [v7 updateCellWithContentAttribution:v13];

  return v7;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  contentItems = [(WFContentAttributionSetDebuggerViewController *)self contentItems];
  v6 = [contentItems objectAtIndexedSubscript:section];
  attributionSet = [v6 attributionSet];
  attributions = [attributionSet attributions];
  v9 = [attributions count];

  return v9;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  contentItems = [(WFContentAttributionSetDebuggerViewController *)self contentItems];
  v4 = [contentItems count];

  return v4;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = WFContentAttributionSetDebuggerViewController;
  [(WFContentAttributionSetDebuggerViewController *)&v6 viewDidLoad];
  [(WFContentAttributionSetDebuggerViewController *)self setTitle:@"Content Source"];
  tableView = [(WFContentAttributionSetDebuggerViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"WFContentAttributionCellIdentifier"];

  v4 = *MEMORY[0x277D76F30];
  tableView2 = [(WFContentAttributionSetDebuggerViewController *)self tableView];
  [tableView2 setRowHeight:v4];
}

- (void)setContentItems:(id)items
{
  v4 = [items copy];
  contentItems = self->_contentItems;
  self->_contentItems = v4;

  if ([(WFContentAttributionSetDebuggerViewController *)self isViewLoaded])
  {
    tableView = [(WFContentAttributionSetDebuggerViewController *)self tableView];
    [tableView reloadData];
  }
}

@end