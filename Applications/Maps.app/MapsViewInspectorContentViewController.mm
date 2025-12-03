@interface MapsViewInspectorContentViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (MapsViewInspectorContentViewController)initWithLayer:(id)layer;
- (MapsViewInspectorContentViewController)initWithView:(id)view;
- (id)debugSuperLayerAtIndex:(int64_t)index;
- (id)debugSuperViewAtIndex:(int64_t)index;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)title;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation MapsViewInspectorContentViewController

- (id)debugSuperLayerAtIndex:(int64_t)index
{
  v4 = self->_debugLayer;
  if (v4)
  {
    v5 = index + 1;
    do
    {
      if (!--v5)
      {
        break;
      }

      superlayer = [(CALayer *)v4 superlayer];

      v4 = superlayer;
    }

    while (superlayer);
  }

  return v4;
}

- (id)debugSuperViewAtIndex:(int64_t)index
{
  v4 = self->_debugView;
  if (v4)
  {
    v5 = index + 1;
    do
    {
      if (!--v5)
      {
        break;
      }

      superview = [(UIView *)v4 superview];

      v4 = superview;
    }

    while (superview);
  }

  return v4;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  debugView = self->_debugView;
  v6 = [path row];
  if (debugView)
  {
    v7 = [(MapsViewInspectorContentViewController *)self debugSuperViewAtIndex:v6];
    layer = [v7 layer];
    isKindOfClass = layer != 0;
  }

  else
  {
    v7 = [(MapsViewInspectorContentViewController *)self debugSuperLayerAtIndex:v6];
    layer = [v7 delegate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  debugView = self->_debugView;
  v8 = [pathCopy row];

  if (debugView)
  {
    v9 = [(MapsViewInspectorContentViewController *)self debugSuperViewAtIndex:v8];
    v10 = [MapsViewInspectorContentViewController alloc];
    layer = [v9 layer];
    v12 = [(MapsViewInspectorContentViewController *)v10 initWithLayer:layer];
  }

  else
  {
    v9 = [(MapsViewInspectorContentViewController *)self debugSuperLayerAtIndex:v8];
    v13 = [MapsViewInspectorContentViewController alloc];
    layer = [v9 delegate];
    v12 = [(MapsViewInspectorContentViewController *)v13 initWithView:layer];
  }

  v15 = v12;

  navigationController = [(MapsViewInspectorContentViewController *)self navigationController];
  [navigationController pushViewController:v15 animated:1];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9];

  v11 = +[UIListContentConfiguration subtitleCellConfiguration];
  debugView = self->_debugView;
  v13 = [pathCopy row];

  if (debugView)
  {
    v14 = [(MapsViewInspectorContentViewController *)self debugSuperViewAtIndex:v13];
    if (v14)
    {
      v15 = v14;
      if (objc_opt_respondsToSelector())
      {
        _viewDelegate = [v15 _viewDelegate];
      }

      else
      {
        _viewDelegate = 0;
      }

      v20 = [MapsSwiftDemangler demangledStringForClass:objc_opt_class()];
      [v11 setText:v20];

      if (!_viewDelegate)
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

  delegate = [v15 delegate];

  if (delegate)
  {
    _viewDelegate = [v15 delegate];
LABEL_11:
    v21 = [MapsSwiftDemangler demangledStringForClass:objc_opt_class()];
    [v11 setSecondaryText:v21];

LABEL_12:
  }

  [v10 setContentConfiguration:v11];
LABEL_14:

  return v10;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  debugView = self->_debugView;
  if (debugView)
  {
    v7 = debugView;
    v8 = 0;
    do
    {
      ++v8;
      superview = [(UIView *)v7 superview];

      v7 = superview;
    }

    while (superview);
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
        superlayer = [v11 superlayer];

        v11 = superlayer;
      }

      while (superlayer);
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
  view = [(MapsViewInspectorContentViewController *)self view];
  [view addSubview:self->_tableView];

  leadingAnchor = [(UITableView *)self->_tableView leadingAnchor];
  view2 = [(MapsViewInspectorContentViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v27[0] = v23;
  trailingAnchor = [(UITableView *)self->_tableView trailingAnchor];
  view3 = [(MapsViewInspectorContentViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v27[1] = v10;
  topAnchor = [(UITableView *)self->_tableView topAnchor];
  view4 = [(MapsViewInspectorContentViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v27[2] = v14;
  bottomAnchor = [(UITableView *)self->_tableView bottomAnchor];
  view5 = [(MapsViewInspectorContentViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v27[3] = v18;
  v19 = [NSArray arrayWithObjects:v27 count:4];
  [NSLayoutConstraint activateConstraints:v19];
}

- (MapsViewInspectorContentViewController)initWithLayer:(id)layer
{
  layerCopy = layer;
  v9.receiver = self;
  v9.super_class = MapsViewInspectorContentViewController;
  v6 = [(MapsViewInspectorContentViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_debugLayer, layer);
  }

  return v7;
}

- (MapsViewInspectorContentViewController)initWithView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = MapsViewInspectorContentViewController;
  v6 = [(MapsViewInspectorContentViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_debugView, view);
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