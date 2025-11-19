@interface MapsViewInspectorContentViewController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (MapsViewInspectorContentViewController)initWithLayer:(id)a3;
- (MapsViewInspectorContentViewController)initWithView:(id)a3;
- (id)debugSuperLayerAtIndex:(int64_t)a3;
- (id)debugSuperViewAtIndex:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)title;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation MapsViewInspectorContentViewController

- (id)debugSuperLayerAtIndex:(int64_t)a3
{
  v4 = self->_debugLayer;
  if (v4)
  {
    v5 = a3 + 1;
    do
    {
      if (!--v5)
      {
        break;
      }

      v6 = [(CALayer *)v4 superlayer];

      v4 = v6;
    }

    while (v6);
  }

  return v4;
}

- (id)debugSuperViewAtIndex:(int64_t)a3
{
  v4 = self->_debugView;
  if (v4)
  {
    v5 = a3 + 1;
    do
    {
      if (!--v5)
      {
        break;
      }

      v6 = [(UIView *)v4 superview];

      v4 = v6;
    }

    while (v6);
  }

  return v4;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  debugView = self->_debugView;
  v6 = [a4 row];
  if (debugView)
  {
    v7 = [(MapsViewInspectorContentViewController *)self debugSuperViewAtIndex:v6];
    v8 = [v7 layer];
    isKindOfClass = v8 != 0;
  }

  else
  {
    v7 = [(MapsViewInspectorContentViewController *)self debugSuperLayerAtIndex:v6];
    v8 = [v7 delegate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  debugView = self->_debugView;
  v8 = [v6 row];

  if (debugView)
  {
    v9 = [(MapsViewInspectorContentViewController *)self debugSuperViewAtIndex:v8];
    v10 = [MapsViewInspectorContentViewController alloc];
    v11 = [v9 layer];
    v12 = [(MapsViewInspectorContentViewController *)v10 initWithLayer:v11];
  }

  else
  {
    v9 = [(MapsViewInspectorContentViewController *)self debugSuperLayerAtIndex:v8];
    v13 = [MapsViewInspectorContentViewController alloc];
    v11 = [v9 delegate];
    v12 = [(MapsViewInspectorContentViewController *)v13 initWithView:v11];
  }

  v15 = v12;

  v14 = [(MapsViewInspectorContentViewController *)self navigationController];
  [v14 pushViewController:v15 animated:1];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 dequeueReusableCellWithIdentifier:v9];

  v11 = +[UIListContentConfiguration subtitleCellConfiguration];
  debugView = self->_debugView;
  v13 = [v6 row];

  if (debugView)
  {
    v14 = [(MapsViewInspectorContentViewController *)self debugSuperViewAtIndex:v13];
    if (v14)
    {
      v15 = v14;
      if (objc_opt_respondsToSelector())
      {
        v16 = [v15 _viewDelegate];
      }

      else
      {
        v16 = 0;
      }

      v20 = [MapsSwiftDemangler demangledStringForClass:objc_opt_class()];
      [v11 setText:v20];

      if (!v16)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_8:
    [(MapsViewInspectorContentViewController *)self dismissViewControllerAnimated:1 completion:0];
    goto LABEL_14;
  }

  v17 = [(MapsViewInspectorContentViewController *)self debugSuperLayerAtIndex:v13];
  if (!v17)
  {
    goto LABEL_8;
  }

  v15 = v17;
  v18 = [MapsSwiftDemangler demangledStringForClass:objc_opt_class()];
  [v11 setText:v18];

  v19 = [v15 delegate];

  if (v19)
  {
    v16 = [v15 delegate];
LABEL_11:
    v21 = [MapsSwiftDemangler demangledStringForClass:objc_opt_class()];
    [v11 setSecondaryText:v21];

LABEL_12:
  }

  [v10 setContentConfiguration:v11];
LABEL_14:

  return v10;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = a3;
  debugView = self->_debugView;
  if (debugView)
  {
    v7 = debugView;
    v8 = 0;
    do
    {
      ++v8;
      v9 = [(UIView *)v7 superview];

      v7 = v9;
    }

    while (v9);
  }

  else
  {
    v10 = self->_debugLayer;
    if (v10)
    {
      v11 = v10;
      v8 = 0;
      do
      {
        ++v8;
        v12 = [v11 superlayer];

        v11 = v12;
      }

      while (v12);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = MapsViewInspectorContentViewController;
  [(MapsViewInspectorContentViewController *)&v3 viewDidLayoutSubviews];
  [(UITableView *)self->_tableView reloadData];
}

- (void)viewDidLoad
{
  v3 = [[UITableView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  tableView = self->_tableView;
  self->_tableView = v3;

  [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = self->_tableView;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [(UITableView *)v5 registerClass:v6 forCellReuseIdentifier:v8];

  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setDelegate:self];
  v9 = [(MapsViewInspectorContentViewController *)self view];
  [v9 addSubview:self->_tableView];

  v25 = [(UITableView *)self->_tableView leadingAnchor];
  v26 = [(MapsViewInspectorContentViewController *)self view];
  v24 = [v26 leadingAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v27[0] = v23;
  v21 = [(UITableView *)self->_tableView trailingAnchor];
  v22 = [(MapsViewInspectorContentViewController *)self view];
  v20 = [v22 trailingAnchor];
  v10 = [v21 constraintEqualToAnchor:v20];
  v27[1] = v10;
  v11 = [(UITableView *)self->_tableView topAnchor];
  v12 = [(MapsViewInspectorContentViewController *)self view];
  v13 = [v12 topAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v27[2] = v14;
  v15 = [(UITableView *)self->_tableView bottomAnchor];
  v16 = [(MapsViewInspectorContentViewController *)self view];
  v17 = [v16 bottomAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
  v27[3] = v18;
  v19 = [NSArray arrayWithObjects:v27 count:4];
  [NSLayoutConstraint activateConstraints:v19];
}

- (MapsViewInspectorContentViewController)initWithLayer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MapsViewInspectorContentViewController;
  v6 = [(MapsViewInspectorContentViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_debugLayer, a3);
  }

  return v7;
}

- (MapsViewInspectorContentViewController)initWithView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MapsViewInspectorContentViewController;
  v6 = [(MapsViewInspectorContentViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_debugView, a3);
  }

  return v7;
}

- (id)title
{
  if (self->_debugView)
  {
    return @"View inspector";
  }

  else
  {
    return @"Layer inspector";
  }
}

@end