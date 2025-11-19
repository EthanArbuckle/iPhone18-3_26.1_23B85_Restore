@interface SearchResultQuickActionMenuPresenter
- (BOOL)shouldBeginOrbGestureAtLocation:(CGPoint)a3 inView:(id)a4;
- (SearchResultQuickActionMenuPresenter)initWithTableView:(id)a3;
- (UITableViewCell)tableViewCell;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 dismissalPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5;
- (id)targetPreviewBackgroundWithColor:(id)a3;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
@end

@implementation SearchResultQuickActionMenuPresenter

- (UITableViewCell)tableViewCell
{
  WeakRetained = objc_loadWeakRetained(&self->_tableViewCell);

  return WeakRetained;
}

- (BOOL)shouldBeginOrbGestureAtLocation:(CGPoint)a3 inView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [(SearchResultQuickActionMenuPresenter *)self setTableViewCell:0];
  [(SearchResultQuickActionMenuPresenter *)self setIndexPath:0];
  labelMarker = self->super._labelMarker;
  self->super._labelMarker = 0;

  searchResult = self->super._searchResult;
  self->super._searchResult = 0;

  resolvedMapItem = self->super._resolvedMapItem;
  self->super._resolvedMapItem = 0;

  if ([v7 isDescendantOfView:self->_tableView])
  {
    [(UITableView *)self->_tableView convertPoint:v7 fromView:x, y];
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
          v15 = [v13 personalizedItemForQuickActionMenu];
          v16 = [(QuickActionMenuPresenter *)self delegate];
          -[QuickActionMenuPresenter setUiTarget:](self, "setUiTarget:", [v16 uiTargetForQuickActionMenu]);

          if (v15)
          {
            [(QuickActionMenuPresenter *)self setPlace:v15];
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
          v15 = 0;
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

- (id)targetPreviewBackgroundWithColor:(id)a3
{
  v4 = a3;
  v5 = self->_tableView;
  [(QuickActionMenuPresenter *)self location];
  v6 = [(UITableView *)v5 indexPathForRowAtPoint:?];
  if (v6 && (-[UITableView cellForRowAtIndexPath:](v5, "cellForRowAtIndexPath:", v6), v7 = objc_claimAutoreleasedReturnValue(), [v7 contentView], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "setBackgroundColor:", v4), v8, v7))
  {
    v9 = [[UITargetedPreview alloc] initWithView:v7];
    v10 = [v9 parameters];
    [v10 setBackgroundColor:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (sub_10000FA08(self->_tableView) != 5)
  {
    objc_initWeak(&location, self);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100DA9860;
    v11[3] = &unk_101661B98;
    objc_copyWeak(&v12, &location);
    [v10 addCompletion:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 dismissalPreviewForItemWithIdentifier:(id)a5
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

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5
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
    v10 = [v9 traitCollection];
    v11 = [v10 userInterfaceStyle];

    if (v11 == 2)
    {
      +[UIColor tertiarySystemGroupedBackgroundColor];
    }

    else
    {
      +[UIColor systemBackgroundColor];
    }
    v12 = ;
    v13 = [v9 contentView];
    [v13 setBackgroundColor:v12];

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

- (SearchResultQuickActionMenuPresenter)initWithTableView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SearchResultQuickActionMenuPresenter;
  v6 = [(QuickActionMenuPresenter *)&v9 initWithView:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tableView, a3);
  }

  return v7;
}

@end