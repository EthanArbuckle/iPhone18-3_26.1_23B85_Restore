@interface IMMenuViewController
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)setMenuItems:(id)items;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updatePopoverSize;
- (void)viewDidLoad;
@end

@implementation IMMenuViewController

- (void)setMenuItems:(id)items
{
  if (self->_menuItems != items)
  {
    v4 = [items copy];
    menuItems = self->_menuItems;
    self->_menuItems = v4;

    [(IMMenuViewController *)self updatePopoverSize];
    tableView = self->_tableView;

    [(UITableView *)tableView reloadData];
  }
}

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = IMMenuViewController;
  [(IMMenuViewController *)&v29 viewDidLoad];
  view = [(IMMenuViewController *)self view];
  v4 = [UITableView alloc];
  [view bounds];
  v5 = [v4 initWithFrame:?];
  tableView = self->_tableView;
  self->_tableView = v5;

  [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setDataSource:self];
  v7 = +[UIColor clearColor];
  [(UITableView *)self->_tableView setBackgroundColor:v7];

  [(UITableView *)self->_tableView setScrollEnabled:0];
  [(UITableView *)self->_tableView setSeparatorInset:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  v22 = view;
  [view addSubview:self->_tableView];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  topAnchor = [(UITableView *)self->_tableView topAnchor];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v30[0] = v25;
  bottomAnchor = [(UITableView *)self->_tableView bottomAnchor];
  bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v30[1] = v21;
  leadingAnchor = [(UITableView *)self->_tableView leadingAnchor];
  v28 = safeAreaLayoutGuide;
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v30[2] = v11;
  trailingAnchor = [(UITableView *)self->_tableView trailingAnchor];
  trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v30[3] = v14;
  v15 = [NSArray arrayWithObjects:v30 count:4];
  [v22 addConstraints:v15];

  themePage = [(IMViewController *)self themePage];
  tintColor = [themePage tintColor];
  [v22 setTintColor:tintColor];

  tableViewCellBackgroundColor = [themePage tableViewCellBackgroundColor];
  [v22 setBackgroundColor:tableViewCellBackgroundColor];

  tableViewBackgroundColor = [themePage tableViewBackgroundColor];
  [(UITableView *)self->_tableView setBackgroundColor:tableViewBackgroundColor];

  separatorColor = [themePage separatorColor];
  [(UITableView *)self->_tableView setSeparatorColor:separatorColor];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(IMMenuViewController *)self menuItems:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"IMMenuViewControllerCellIdentifier"];
  if (v7)
  {
    goto LABEL_5;
  }

  v8 = [pathCopy row];
  menuItems = [(IMMenuViewController *)self menuItems];
  v10 = [menuItems count];

  if (v8 >= v10 || (-[IMMenuViewController menuItems](self, "menuItems"), v11 = objc_claimAutoreleasedReturnValue(), [v11 objectAtIndex:{objc_msgSend(pathCopy, "row")}], v12 = objc_claimAutoreleasedReturnValue(), v11, v13 = objc_msgSend([UITableViewCell alloc], "initWithStyle:reuseIdentifier:", 0, @"IMMenuViewControllerCellIdentifier"), objc_msgSend(v12, "title"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "textLabel"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "setText:", v14), v15, v14, objc_msgSend(v13, "textLabel"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "setTextAlignment:", 1), v16, -[IMViewController themePage](self, "themePage"), v17 = objc_claimAutoreleasedReturnValue(), -[IMMenuViewController traitCollection](self, "traitCollection"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "styleMenuCell:withTraitCollection:", v13, v18), v18, v17, v12, !v13))
  {
    v7 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"IMMenuViewControllerCellIdentifier"];
LABEL_5:
    v13 = v7;
  }

  return v13;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
  menuItems = [(IMMenuViewController *)self menuItems];
  v7 = [menuItems count];

  if (v5 < v7)
  {
    menuItems2 = [(IMMenuViewController *)self menuItems];
    v9 = [menuItems2 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

    target = [v9 target];
    if (target && [v9 action])
    {
      [target performSelector:objc_msgSend(v9 withObject:{"action"), 0}];
    }

    else
    {
      actionBlock = [v9 actionBlock];

      if (actionBlock)
      {
        [v9 performActionBlock:0];
      }
    }
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  themePage = [(IMViewController *)self themePage];
  traitCollection = [(IMMenuViewController *)self traitCollection];
  [themePage styleMenuCell:cellCopy withTraitCollection:traitCollection];
}

- (void)updatePopoverSize
{
  if (isPad())
  {
    v3 = 332.0;
  }

  else
  {
    v3 = 286.0;
  }

  menuItems = [(IMMenuViewController *)self menuItems];
  -[IMMenuViewController setPreferredContentSize:](self, "setPreferredContentSize:", v3, [menuItems count] * 45.0 + -1.0);
}

@end