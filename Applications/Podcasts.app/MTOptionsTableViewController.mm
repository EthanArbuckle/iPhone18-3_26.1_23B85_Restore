@interface MTOptionsTableViewController
- (MTOptionsTableViewController)initWithOption:(id)option largeTitleDisplayMode:(int64_t)mode;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (id)footerText;
- (id)headerText;
- (id)metricsName;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)selectedIndex;
- (void)_updateTextColorForCell:(id)cell selected:(BOOL)selected;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)dealloc;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section;
- (void)updateRowHeight;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation MTOptionsTableViewController

- (MTOptionsTableViewController)initWithOption:(id)option largeTitleDisplayMode:(int64_t)mode
{
  optionCopy = option;
  v13.receiver = self;
  v13.super_class = MTOptionsTableViewController;
  v8 = [(MTOptionsTableViewController *)&v13 initWithStyle:2];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_option, option);
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v9 selector:"contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

    navigationItem = [(MTOptionsTableViewController *)v9 navigationItem];
    [navigationItem setLargeTitleDisplayMode:mode];
  }

  return v9;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = MTOptionsTableViewController;
  [(MTOptionsTableViewController *)&v3 viewDidLoad];
  [(MTOptionsTableViewController *)self updateRowHeight];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MTOptionsTableViewController;
  [(MTOptionsTableViewController *)&v4 dealloc];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = MTOptionsTableViewController;
  coordinatorCopy = coordinator;
  [(MTOptionsTableViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10010F5E4;
  v8[3] = &unk_1004DB448;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (void)contentSizeCategoryDidChange:(id)change
{
  view = [(MTOptionsTableViewController *)self view];
  [view setNeedsLayout];

  [(MTOptionsTableViewController *)self updateRowHeight];
}

- (void)updateRowHeight
{
  tableView = [(MTOptionsTableViewController *)self tableView];
  [objc_opt_class() rowHeight];
  [tableView setRowHeight:?];

  tableView2 = [(MTOptionsTableViewController *)self tableView];
  [tableView2 reloadData];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(MTOptionsTableViewController *)self option:view];
  options = [v4 options];
  longTitles = [options longTitles];
  v7 = [longTitles count];

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"OptionCell"];
  if (!v7)
  {
    v7 = [[MTTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"OptionCell"];
  }

  v8 = [pathCopy row];
  v9 = v8 == [(MTOptionsTableViewController *)self selectedIndex];
  v10 = v9;
  if (v9)
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  [(MTTableViewCell *)v7 setAccessoryType:v11];
  [(MTOptionsTableViewController *)self _updateTextColorForCell:v7 selected:v10];
  textLabel = [(MTTableViewCell *)v7 textLabel];
  optionFont = [objc_opt_class() optionFont];
  [textLabel setFont:optionFont];

  textLabel2 = [(MTTableViewCell *)v7 textLabel];
  option = [(MTOptionsTableViewController *)self option];
  options = [option options];
  longTitles = [options longTitles];
  v18 = [longTitles objectAtIndex:{objc_msgSend(pathCopy, "row")}];
  [textLabel2 setText:v18];

  return v7;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v5 = [(MTOptionsTableViewController *)self footerText:view];

  if (v5)
  {
    v5 = objc_alloc_init(MTGenericSettingsFooterLabelView);
    footerText = [(MTOptionsTableViewController *)self footerText];
    textView = [(MTGenericSettingsFooterLabelView *)v5 textView];
    [textView setAttributedText:footerText];
  }

  return v5;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  v5 = [(MTOptionsTableViewController *)self footerText:view];
  if ([v5 length])
  {
    string = [v5 string];
    view = [(MTOptionsTableViewController *)self view];
    [view frame];
    v8 = CGRectGetWidth(v17) + -64.0;
    v15 = NSFontAttributeName;
    v9 = +[UIFont sectionFooterFont];
    v16 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    [string boundingRectWithSize:1 options:v10 attributes:0 context:{v8, 1.79769313e308}];
    v12 = v11;

    v13 = v12 + 16.0;
  }

  else
  {
    v13 = 16.0;
  }

  return v13;
}

- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section
{
  headerViewCopy = headerView;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = headerViewCopy;
    headerText = [(MTOptionsTableViewController *)self headerText];
    textLabel = [v6 textLabel];

    [textLabel setText:headerText];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", -[MTOptionsTableViewController selectedIndex](self, "selectedIndex"), [pathCopy section]);
  v8 = [viewCopy cellForRowAtIndexPath:v7];
  [v8 setAccessoryType:0];
  [(MTOptionsTableViewController *)self _updateTextColorForCell:v8 selected:0];
  v9 = [viewCopy cellForRowAtIndexPath:pathCopy];

  [v9 setAccessoryType:3];
  [(MTOptionsTableViewController *)self _updateTextColorForCell:v9 selected:1];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  optionSelectedBlock = self->_optionSelectedBlock;
  if (optionSelectedBlock)
  {
    optionSelectedBlock[2](optionSelectedBlock, [pathCopy row]);
  }

  v11 = +[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", [pathCopy section]);
  [viewCopy reloadSections:v11 withRowAnimation:100];

  v12 = [viewCopy headerViewForSection:{objc_msgSend(pathCopy, "section")}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    textLabel = [v12 textLabel];
    headerText = [(MTOptionsTableViewController *)self headerText];
    [textLabel setText:headerText];
  }
}

- (void)_updateTextColorForCell:(id)cell selected:(BOOL)selected
{
  cellCopy = cell;
  if (selected)
  {
    +[UIColor appTintColor];
  }

  else
  {
    +[UIColor cellTextColor];
  }
  v7 = ;
  textLabel = [cellCopy textLabel];

  [textLabel setTextColor:v7];
}

- (id)footerText
{
  option = [(MTOptionsTableViewController *)self option];
  footerText = [option footerText];

  option2 = [(MTOptionsTableViewController *)self option];
  options = [option2 options];
  footerCallback = [options footerCallback];

  if (footerCallback)
  {
    option3 = [(MTOptionsTableViewController *)self option];
    options2 = [option3 options];
    footerCallback2 = [options2 footerCallback];
    option4 = [(MTOptionsTableViewController *)self option];
    value = [option4 value];
    v13 = (footerCallback2)[2](footerCallback2, [value unsignedIntegerValue]);
  }

  return footerText;
}

- (id)headerText
{
  option = [(MTOptionsTableViewController *)self option];
  options = [option options];
  headerCallback = [options headerCallback];

  if (headerCallback)
  {
    option2 = [(MTOptionsTableViewController *)self option];
    options2 = [option2 options];
    headerCallback2 = [options2 headerCallback];
    option3 = [(MTOptionsTableViewController *)self option];
    value = [option3 value];
    v11 = (headerCallback2)[2](headerCallback2, [value unsignedIntegerValue]);
  }

  return 0;
}

- (unint64_t)selectedIndex
{
  option = [(MTOptionsTableViewController *)self option];
  options = [option options];
  option2 = [(MTOptionsTableViewController *)self option];
  value = [option2 value];
  v7 = [options indexForValue:{objc_msgSend(value, "unsignedIntegerValue")}];

  return v7;
}

- (id)metricsName
{
  option = [(MTOptionsTableViewController *)self option];
  headerTitle = [option headerTitle];
  v4 = [NSString stringWithFormat:@"Settings: %@", headerTitle];

  return v4;
}

@end