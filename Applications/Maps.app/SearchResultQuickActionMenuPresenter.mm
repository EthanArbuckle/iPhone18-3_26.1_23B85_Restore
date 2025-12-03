@interface SearchResultQuickActionMenuPresenter
- (BOOL)shouldBeginOrbGestureAtLocation:(CGPoint)location inView:(id)view;
- (SearchResultQuickActionMenuPresenter)initWithTableView:(id)view;
- (UITableViewCell)tableViewCell;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration dismissalPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier;
- (id)targetPreviewBackgroundWithColor:(id)color;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
@end

@implementation SearchResultQuickActionMenuPresenter

- (UITableViewCell)tableViewCell
{
  WeakRetained = objc_loadWeakRetained(&self->_tableViewCell);

  return WeakRetained;
}

- (BOOL)shouldBeginOrbGestureAtLocation:(CGPoint)location inView:(id)view
{
  y = location.y;
  x = location.x;
  viewCopy = view;
  [(SearchResultQuickActionMenuPresenter *)self setTableViewCell:0];
  [(SearchResultQuickActionMenuPresenter *)self setIndexPath:0];
  labelMarker = self->super._labelMarker;
  self->super._labelMarker = 0;

  searchResult = self->super._searchResult;
  self->super._searchResult = 0;

  resolvedMapItem = self->super._resolvedMapItem;
  self->super._resolvedMapItem = 0;

  if ([viewCopy isDescendantOfView:self->_tableView])
  {
    [(UITableView *)self->_tableView convertPoint:viewCopy fromView:x, y];
    v11 = [(UITableView *)self->_tableView indexPathForRowAtPoint:?];
    if (v11)
    {
      v12 = [(UITableView *)self->_tableView cellForRowAtIndexPath:v11];
      v13 = v12;
      if (v12 && ([v12 isEditing] & 1) == 0)
      {
        [(SearchResultQuickActionMenuPresenter *)self setTableViewCell:v13];
        [(SearchResultQuickActionMenuPresenter *)self setIndexPath:v11];
        if ([v13 conformsToProtocol:&OBJC_PROTOCOL___SearchResultQuickActionMenuCell])
        {
          personalizedItemForQuickActionMenu = [v13 personalizedItemForQuickActionMenu];
          delegate = [(QuickActionMenuPresenter *)self delegate];
          -[QuickActionMenuPresenter setUiTarget:](self, "setUiTarget:", [delegate uiTargetForQuickActionMenu]);

          if (personalizedItemForQuickActionMenu)
          {
            [(QuickActionMenuPresenter *)self setPlace:personalizedItemForQuickActionMenu];
            objc_opt_class();
            v14 = 1;
            if (objc_opt_isKindOfClass())
            {
              [v13 set_mapkit_forceSeparatorFrameToCGRectZero:1];
            }
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
          personalizedItemForQuickActionMenu = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)targetPreviewBackgroundWithColor:(id)color
{
  colorCopy = color;
  v5 = self->_tableView;
  [(QuickActionMenuPresenter *)self location];
  v6 = [(UITableView *)v5 indexPathForRowAtPoint:?];
  if (v6 && (-[UITableView cellForRowAtIndexPath:](v5, "cellForRowAtIndexPath:", v6), v7 = objc_claimAutoreleasedReturnValue(), [v7 contentView], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "setBackgroundColor:", colorCopy), v8, v7))
  {
    v9 = [[UITargetedPreview alloc] initWithView:v7];
    parameters = [v9 parameters];
    [parameters setBackgroundColor:colorCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  animatorCopy = animator;
  if (sub_10000FA08(self->_tableView) != 5)
  {
    objc_initWeak(&location, self);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100DA9860;
    v11[3] = &unk_101661B98;
    objc_copyWeak(&v12, &location);
    [animatorCopy addCompletion:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration dismissalPreviewForItemWithIdentifier:(id)identifier
{
  if (sub_10000FA08(self->_tableView) == 5)
  {
    v6 = 0;
  }

  else
  {
    v7 = +[UIColor clearColor];
    v6 = [(SearchResultQuickActionMenuPresenter *)self targetPreviewBackgroundWithColor:v7];
  }

  return v6;
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier
{
  if (sub_10000FA08(self->_tableView) == 5)
  {
    v6 = 0;
  }

  else
  {
    v7 = self->_tableView;
    [(QuickActionMenuPresenter *)self location];
    v8 = [(UITableView *)v7 indexPathForRowAtPoint:?];
    if (!v8)
    {
      goto LABEL_9;
    }

    v9 = [(UITableView *)v7 cellForRowAtIndexPath:v8];
    traitCollection = [v9 traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 2)
    {
      +[UIColor tertiarySystemGroupedBackgroundColor];
    }

    else
    {
      +[UIColor systemBackgroundColor];
    }
    v12 = ;
    contentView = [v9 contentView];
    [contentView setBackgroundColor:v12];

    if (v9)
    {
      v6 = [[UITargetedPreview alloc] initWithView:v9];
    }

    else
    {
LABEL_9:
      v6 = 0;
    }
  }

  return v6;
}

- (SearchResultQuickActionMenuPresenter)initWithTableView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = SearchResultQuickActionMenuPresenter;
  v6 = [(QuickActionMenuPresenter *)&v9 initWithView:viewCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tableView, view);
  }

  return v7;
}

@end