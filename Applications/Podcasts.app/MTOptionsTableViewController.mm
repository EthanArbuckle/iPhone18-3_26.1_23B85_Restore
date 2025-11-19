@interface MTOptionsTableViewController
- (MTOptionsTableViewController)initWithOption:(id)a3 largeTitleDisplayMode:(int64_t)a4;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (id)footerText;
- (id)headerText;
- (id)metricsName;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)selectedIndex;
- (void)_updateTextColorForCell:(id)a3 selected:(BOOL)a4;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)dealloc;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5;
- (void)updateRowHeight;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MTOptionsTableViewController

- (MTOptionsTableViewController)initWithOption:(id)a3 largeTitleDisplayMode:(int64_t)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = MTOptionsTableViewController;
  v8 = [(MTOptionsTableViewController *)&v13 initWithStyle:2];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_option, a3);
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v9 selector:"contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

    v11 = [(MTOptionsTableViewController *)v9 navigationItem];
    [v11 setLargeTitleDisplayMode:a4];
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = MTOptionsTableViewController;
  v7 = a4;
  [(MTOptionsTableViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10010F5E4;
  v8[3] = &unk_1004DB448;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  v4 = [(MTOptionsTableViewController *)self view];
  [v4 setNeedsLayout];

  [(MTOptionsTableViewController *)self updateRowHeight];
}

- (void)updateRowHeight
{
  v3 = [(MTOptionsTableViewController *)self tableView];
  [objc_opt_class() rowHeight];
  [v3 setRowHeight:?];

  v4 = [(MTOptionsTableViewController *)self tableView];
  [v4 reloadData];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(MTOptionsTableViewController *)self option:a3];
  v5 = [v4 options];
  v6 = [v5 longTitles];
  v7 = [v6 count];

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"OptionCell"];
  if (!v7)
  {
    v7 = [[MTTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"OptionCell"];
  }

  v8 = [v6 row];
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
  v12 = [(MTTableViewCell *)v7 textLabel];
  v13 = [objc_opt_class() optionFont];
  [v12 setFont:v13];

  v14 = [(MTTableViewCell *)v7 textLabel];
  v15 = [(MTOptionsTableViewController *)self option];
  v16 = [v15 options];
  v17 = [v16 longTitles];
  v18 = [v17 objectAtIndex:{objc_msgSend(v6, "row")}];
  [v14 setText:v18];

  return v7;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v5 = [(MTOptionsTableViewController *)self footerText:a3];

  if (v5)
  {
    v5 = objc_alloc_init(MTGenericSettingsFooterLabelView);
    v6 = [(MTOptionsTableViewController *)self footerText];
    v7 = [(MTGenericSettingsFooterLabelView *)v5 textView];
    [v7 setAttributedText:v6];
  }

  return v5;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v5 = [(MTOptionsTableViewController *)self footerText:a3];
  if ([v5 length])
  {
    v6 = [v5 string];
    v7 = [(MTOptionsTableViewController *)self view];
    [v7 frame];
    v8 = CGRectGetWidth(v17) + -64.0;
    v15 = NSFontAttributeName;
    v9 = +[UIFont sectionFooterFont];
    v16 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    [v6 boundingRectWithSize:1 options:v10 attributes:0 context:{v8, 1.79769313e308}];
    v12 = v11;

    v13 = v12 + 16.0;
  }

  else
  {
    v13 = 16.0;
  }

  return v13;
}

- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5
{
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v9;
    v7 = [(MTOptionsTableViewController *)self headerText];
    v8 = [v6 textLabel];

    [v8 setText:v7];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", -[MTOptionsTableViewController selectedIndex](self, "selectedIndex"), [v6 section]);
  v8 = [v15 cellForRowAtIndexPath:v7];
  [v8 setAccessoryType:0];
  [(MTOptionsTableViewController *)self _updateTextColorForCell:v8 selected:0];
  v9 = [v15 cellForRowAtIndexPath:v6];

  [v9 setAccessoryType:3];
  [(MTOptionsTableViewController *)self _updateTextColorForCell:v9 selected:1];
  [v15 deselectRowAtIndexPath:v6 animated:1];
  optionSelectedBlock = self->_optionSelectedBlock;
  if (optionSelectedBlock)
  {
    optionSelectedBlock[2](optionSelectedBlock, [v6 row]);
  }

  v11 = +[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", [v6 section]);
  [v15 reloadSections:v11 withRowAnimation:100];

  v12 = [v15 headerViewForSection:{objc_msgSend(v6, "section")}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v12 textLabel];
    v14 = [(MTOptionsTableViewController *)self headerText];
    [v13 setText:v14];
  }
}

- (void)_updateTextColorForCell:(id)a3 selected:(BOOL)a4
{
  v5 = a3;
  if (a4)
  {
    +[UIColor appTintColor];
  }

  else
  {
    +[UIColor cellTextColor];
  }
  v7 = ;
  v6 = [v5 textLabel];

  [v6 setTextColor:v7];
}

- (id)footerText
{
  v3 = [(MTOptionsTableViewController *)self option];
  v4 = [v3 footerText];

  v5 = [(MTOptionsTableViewController *)self option];
  v6 = [v5 options];
  v7 = [v6 footerCallback];

  if (v7)
  {
    v8 = [(MTOptionsTableViewController *)self option];
    v9 = [v8 options];
    v10 = [v9 footerCallback];
    v11 = [(MTOptionsTableViewController *)self option];
    v12 = [v11 value];
    v13 = (v10)[2](v10, [v12 unsignedIntegerValue]);
  }

  return v4;
}

- (id)headerText
{
  v3 = [(MTOptionsTableViewController *)self option];
  v4 = [v3 options];
  v5 = [v4 headerCallback];

  if (v5)
  {
    v6 = [(MTOptionsTableViewController *)self option];
    v7 = [v6 options];
    v8 = [v7 headerCallback];
    v9 = [(MTOptionsTableViewController *)self option];
    v10 = [v9 value];
    v11 = (v8)[2](v8, [v10 unsignedIntegerValue]);
  }

  return 0;
}

- (unint64_t)selectedIndex
{
  v3 = [(MTOptionsTableViewController *)self option];
  v4 = [v3 options];
  v5 = [(MTOptionsTableViewController *)self option];
  v6 = [v5 value];
  v7 = [v4 indexForValue:{objc_msgSend(v6, "unsignedIntegerValue")}];

  return v7;
}

- (id)metricsName
{
  v2 = [(MTOptionsTableViewController *)self option];
  v3 = [v2 headerTitle];
  v4 = [NSString stringWithFormat:@"Settings: %@", v3];

  return v4;
}

@end