@interface SWCViewController
- (id)tableView;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)loadView;
- (void)setCredentials:(id)a3;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation SWCViewController

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(NSMutableArray *)self->_credentials objectAtIndex:[(NSIndexPath *)v5 row]];
  v7 = [[SWCItemCell alloc] initWithDictionary:v6];
  if ([(NSMutableArray *)self->_credentials count]< 3 || ([(SWCItemCell *)v7 setShowSeparator:1], ![(NSIndexPath *)v5 row]))
  {
    [(SWCItemCell *)v7 setShowTopSeparator:1];
  }

  [(SWCItemCell *)v7 setTicked:self->_selectedCell == v5];

  return v7;
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v4 = [a3 cellForRowAtIndexPath:a4];
  [v4 setTicked:0];
  [v4 layoutSubviews];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NSMutableArray *)self->_credentials objectAtIndex:[(NSIndexPath *)v6 row]];
  objc_storeStrong(&self->_selectedDict, v8);
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  if (!sub_100002D24(v13, v8, &v14))
  {
    v9 = [v14 localizedDescription];
    NSLog(@"Unable to select item: %@", v9);
  }

  selectedCell = self->_selectedCell;
  self->_selectedCell = v6;
  v11 = v6;

  v12 = [v7 cellForRowAtIndexPath:v11];

  [v12 setTicked:1];
  [v12 layoutSubviews];
}

- (void)loadView
{
  v3 = objc_alloc_init(UIView);
  v4 = [(SWCViewController *)self tableView];
  [v4 setDelegate:self];
  [v4 setDataSource:self];
  [v3 addSubview:v4];
  CFErrorWithXPCObject = 0;
  memset(bytes, 0, sizeof(bytes));
  v5 = sub_100002C64(5u, &CFErrorWithXPCObject);
  if (!v5)
  {
    v9 = 0;
    goto LABEL_16;
  }

  v6 = v5;
  xpc_dictionary_set_data(v5, "client", bytes, 0x20uLL);
  v7 = sub_100002A2C(v6, &CFErrorWithXPCObject);
  if (v7)
  {
    v8 = v7;
    cf = 0;
    if (xpc_dictionary_get_value(v7, "error"))
    {
      CFErrorWithXPCObject = SecCreateCFErrorWithXPCObject();
LABEL_13:
      v9 = 0;
LABEL_14:
      xpc_release(v8);
      goto LABEL_15;
    }

    v10 = sub_1000027EC(v8, &cf, &CFErrorWithXPCObject);
    v9 = cf;
    if (v10)
    {
      if (!cf)
      {
        goto LABEL_14;
      }

      v11 = CFGetTypeID(cf);
      if (v11 == CFArrayGetTypeID())
      {
        goto LABEL_14;
      }
    }

    else if (!cf)
    {
      goto LABEL_13;
    }

    CFRelease(v9);
    goto LABEL_13;
  }

  v9 = 0;
LABEL_15:
  xpc_release(v6);
LABEL_16:
  if (CFErrorWithXPCObject)
  {
    v12 = [(__CFString *)CFErrorWithXPCObject localizedDescription];
    NSLog(@"Unable to get accounts: %@", v12);
  }

  [(SWCViewController *)self setCredentials:v9];
  if (v9)
  {
    CFRelease(v9);
  }

  Height = 45.0;
  [v4 setFrame:{0.0, 0.0, 300.0, 45.0}];
  [v4 layoutIfNeeded];
  v14 = [v4 visibleCells];
  v15 = [v14 firstObject];

  if (v15)
  {
    [v15 frame];
    Height = CGRectGetHeight(v44);
  }

  v16 = _NSDictionaryOfVariableBindings(@"table", v4, 0);
  if ([(NSMutableArray *)self->_credentials count]< 3)
  {
    if ([(NSMutableArray *)self->_credentials count]== 2)
    {
      v40 = @"height";
      Height = Height + Height;
      v29 = [NSNumber numberWithDouble:Height];
      v41 = v29;
      v19 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];

      v30 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[table]|" options:0 metrics:v19 views:v16];
      [v3 addConstraints:v30];

      v31 = @"V:|[table(height)]-|";
    }

    else
    {
      v38 = @"height";
      v32 = [NSNumber numberWithDouble:Height];
      v39 = v32;
      v19 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];

      v33 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[table]|" options:0 metrics:v19 views:v16];
      [v3 addConstraints:v33];

      v31 = @"V:|[table(height)]|";
    }

    v34 = [NSLayoutConstraint constraintsWithVisualFormat:v31 options:0 metrics:v19 views:v16];
    [v3 addConstraints:v34];

    [(SWCViewController *)self setPreferredContentSize:0.0, Height];
    [v4 setScrollEnabled:0];
  }

  else
  {
    v17 = fmax(Height * 2.0 + 30.0, 120.0);
    v42 = @"height";
    v18 = [NSNumber numberWithDouble:v17];
    v43 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];

    v20 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[table]-|", 0, v19, v16);
    [v3 addConstraints:v20];

    v21 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[table(height)]-|" options:0 metrics:v19 views:v16];
    [v3 addConstraints:v21];

    v22 = +[UIScreen mainScreen];
    [v22 scale];
    v24 = v23;

    v25 = [v4 layer];
    [v25 setBorderWidth:1.0 / v24];

    v26 = +[UIColor opaqueSeparatorColor];
    v27 = [v26 CGColor];
    v28 = [v4 layer];
    [v28 setBorderColor:v27];

    [(SWCViewController *)self setPreferredContentSize:0.0, v17 + 20.0];
  }

  [(SWCViewController *)self setView:v3];
}

- (id)tableView
{
  table = self->_table;
  if (!table)
  {
    v4 = objc_alloc_init(UITableView);
    v5 = self->_table;
    self->_table = v4;

    [(UITableView *)self->_table setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITableView *)self->_table setAutoresizingMask:0];
    v6 = self->_table;
    v7 = +[UIColor systemBackgroundColor];
    [(UITableView *)v6 setBackgroundColor:v7];

    [(UITableView *)self->_table setSeparatorStyle:0];
    table = self->_table;
  }

  [(UITableView *)table sizeToFit];
  v8 = self->_table;

  return v8;
}

- (void)setCredentials:(id)a3
{
  v4 = a3;
  obj = [[NSMutableArray alloc] initWithArray:v4];

  [obj sortUsingSelector:"compareCredentialDictionaryAscending:"];
  objc_storeStrong(&self->_credentials, obj);
  table = self->_table;
  if (table)
  {
    [(UITableView *)table reloadData];
  }
}

@end