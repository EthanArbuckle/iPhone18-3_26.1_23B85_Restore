@interface IMMenuViewController
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)setMenuItems:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)updatePopoverSize;
- (void)viewDidLoad;
@end

@implementation IMMenuViewController

- (void)setMenuItems:(id)a3
{
  if (self->_menuItems != a3)
  {
    v4 = [a3 copy];
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
  v3 = [(IMMenuViewController *)self view];
  v4 = [UITableView alloc];
  [v3 bounds];
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
  v22 = v3;
  [v3 addSubview:self->_tableView];
  v8 = [v3 safeAreaLayoutGuide];
  v27 = [(UITableView *)self->_tableView topAnchor];
  v26 = [v8 topAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v30[0] = v25;
  v24 = [(UITableView *)self->_tableView bottomAnchor];
  v23 = [v8 bottomAnchor];
  v21 = [v24 constraintEqualToAnchor:v23];
  v30[1] = v21;
  v9 = [(UITableView *)self->_tableView leadingAnchor];
  v28 = v8;
  v10 = [v8 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v30[2] = v11;
  v12 = [(UITableView *)self->_tableView trailingAnchor];
  v13 = [v8 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v30[3] = v14;
  v15 = [NSArray arrayWithObjects:v30 count:4];
  [v22 addConstraints:v15];

  v16 = [(IMViewController *)self themePage];
  v17 = [v16 tintColor];
  [v22 setTintColor:v17];

  v18 = [v16 tableViewCellBackgroundColor];
  [v22 setBackgroundColor:v18];

  v19 = [v16 tableViewBackgroundColor];
  [(UITableView *)self->_tableView setBackgroundColor:v19];

  v20 = [v16 separatorColor];
  [(UITableView *)self->_tableView setSeparatorColor:v20];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(IMMenuViewController *)self menuItems:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"IMMenuViewControllerCellIdentifier"];
  if (v7)
  {
    goto LABEL_5;
  }

  v8 = [v6 row];
  v9 = [(IMMenuViewController *)self menuItems];
  v10 = [v9 count];

  if (v8 >= v10 || (-[IMMenuViewController menuItems](self, "menuItems"), v11 = objc_claimAutoreleasedReturnValue(), [v11 objectAtIndex:{objc_msgSend(v6, "row")}], v12 = objc_claimAutoreleasedReturnValue(), v11, v13 = objc_msgSend([UITableViewCell alloc], "initWithStyle:reuseIdentifier:", 0, @"IMMenuViewControllerCellIdentifier"), objc_msgSend(v12, "title"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "textLabel"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "setText:", v14), v15, v14, objc_msgSend(v13, "textLabel"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "setTextAlignment:", 1), v16, -[IMViewController themePage](self, "themePage"), v17 = objc_claimAutoreleasedReturnValue(), -[IMMenuViewController traitCollection](self, "traitCollection"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "styleMenuCell:withTraitCollection:", v13, v18), v18, v17, v12, !v13))
  {
    v7 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"IMMenuViewControllerCellIdentifier"];
LABEL_5:
    v13 = v7;
  }

  return v13;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v12 = a4;
  v5 = [v12 row];
  v6 = [(IMMenuViewController *)self menuItems];
  v7 = [v6 count];

  if (v5 < v7)
  {
    v8 = [(IMMenuViewController *)self menuItems];
    v9 = [v8 objectAtIndex:{objc_msgSend(v12, "row")}];

    v10 = [v9 target];
    if (v10 && [v9 action])
    {
      [v10 performSelector:objc_msgSend(v9 withObject:{"action"), 0}];
    }

    else
    {
      v11 = [v9 actionBlock];

      if (v11)
      {
        [v9 performActionBlock:0];
      }
    }
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v6 = a4;
  v8 = [(IMViewController *)self themePage];
  v7 = [(IMMenuViewController *)self traitCollection];
  [v8 styleMenuCell:v6 withTraitCollection:v7];
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

  v4 = [(IMMenuViewController *)self menuItems];
  -[IMMenuViewController setPreferredContentSize:](self, "setPreferredContentSize:", v3, [v4 count] * 45.0 + -1.0);
}

@end