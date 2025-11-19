@interface MAListSnippetView
- (BOOL)_checkAllItemsHaveSameTitle;
- (MAListSnippetView)initWithFrame:(CGRect)a3 mapItems:(id)a4;
- (MAListSnippetViewDelegate)delegate;
- (double)_preferredHeightForRow:(int64_t)a3;
- (double)desiredHeight;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_mapItemForRow:(int64_t)a3;
- (id)_prepareTableViewCellForRow:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_handleTap:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setDisplayForSAR:(BOOL)a3;
- (void)setShouldDisplayLocationDetail:(BOOL)a3;
- (void)setShowDisclosureIndicatorInCells:(BOOL)a3;
- (void)setUserLocation:(id)a3;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation MAListSnippetView

- (MAListSnippetView)initWithFrame:(CGRect)a3 mapItems:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v32.receiver = self;
  v32.super_class = MAListSnippetView;
  v10 = [(MAListSnippetView *)&v32 initWithFrame:x, y, width, height];
  if (v10)
  {
    v11 = [v9 copy];
    mapItems = v10->_mapItems;
    v10->_mapItems = v11;

    userLocation = v10->_userLocation;
    v10->_userLocation = 0;

    if ([v9 count] < 2)
    {
      v14 = 0;
    }

    else
    {
      v14 = [(MAListSnippetView *)v10 _checkAllItemsHaveSameTitle];
    }

    v10->_sameTitleForAllResults = v14;
    v15 = [[UITableView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    tableView = v10->_tableView;
    v10->_tableView = v15;

    [(UITableView *)v10->_tableView setScrollEnabled:0];
    [(UITableView *)v10->_tableView setSeparatorStyle:1];
    [(UITableView *)v10->_tableView setBackgroundView:0];
    [(UITableView *)v10->_tableView setOpaque:0];
    [(UITableView *)v10->_tableView _ma_updateSemanticContentAttribute];
    [(MAListSnippetView *)v10 addSubview:v10->_tableView];
    [(MAListSnippetView *)v10 setOpaque:0];
    v17 = +[UIColor clearColor];
    [(UITableView *)v10->_tableView setBackgroundColor:v17];

    [(UITableView *)v10->_tableView setDelegate:v10];
    [(UITableView *)v10->_tableView setDataSource:v10];
    [(UITableView *)v10->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = +[UIColor clearColor];
    [(MAListSnippetView *)v10 _mapkit_setBackgroundColor:v18];

    v19 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v20 = [&off_49D10 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v29;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(&off_49D10);
          }

          v24 = *(*(&v28 + 1) + 8 * i);
          v25 = _NSDictionaryOfVariableBindings(@"_tableView", v10->_tableView, 0);
          v26 = [NSLayoutConstraint constraintsWithVisualFormat:v24 options:0 metrics:0 views:v25];
          [v19 addObjectsFromArray:v26];
        }

        v21 = [&off_49D10 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v21);
    }

    [NSLayoutConstraint activateConstraints:v19];
  }

  return v10;
}

- (void)dealloc
{
  [(UITableView *)self->_tableView setDelegate:0];
  [(UITableView *)self->_tableView setDataSource:0];
  v3.receiver = self;
  v3.super_class = MAListSnippetView;
  [(MAListSnippetView *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = MAListSnippetView;
  [(MAListSnippetView *)&v7 layoutSubviews];
  v3 = [(MAListSnippetView *)self superview];
  [v3 frame];
  v5 = v4;
  [(MAListSnippetView *)self desiredHeight];
  [(UITableView *)self->_tableView setFrame:0.0, 0.0, v5, v6];
}

- (void)setUserLocation:(id)a3
{
  v5 = a3;
  if (([(CLLocation *)self->_userLocation isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_userLocation, a3);
    [(UITableView *)self->_tableView reloadData];
  }
}

- (void)setShowDisclosureIndicatorInCells:(BOOL)a3
{
  if (self->_showDisclosureIndicatorInCells != a3)
  {
    self->_showDisclosureIndicatorInCells = a3;
    [(UITableView *)self->_tableView reloadData];
  }
}

- (void)setDisplayForSAR:(BOOL)a3
{
  if (self->_displayForSAR != a3)
  {
    self->_displayForSAR = a3;
    [(UITableView *)self->_tableView reloadData];
  }
}

- (void)setShouldDisplayLocationDetail:(BOOL)a3
{
  if (self->_shouldDisplayLocationDetail != a3)
  {
    self->_shouldDisplayLocationDetail = a3;
    [(UITableView *)self->_tableView reloadData];
  }
}

- (BOOL)_checkAllItemsHaveSameTitle
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = self->_mapItems;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [(NSArray *)self->_mapItems firstObject];

        if (v9 == v10)
        {
          v14 = [v9 label];

          v6 = v14;
        }

        else
        {
          v11 = [v9 label];
          v12 = v11;
          if (v6)
          {
            v13 = [v11 isEqualToString:v6];

            if ((v13 & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          else
          {

            if (v12)
            {
LABEL_15:
              v15 = 0;
              goto LABEL_18;
            }
          }
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 0;
  }

  v15 = 1;
LABEL_18:

  return v15;
}

- (id)_prepareTableViewCellForRow:(int64_t)a3
{
  v5 = [(UITableView *)self->_tableView dequeueReusableCellWithIdentifier:@"MAListSnippetTableViewCell"];
  if (!v5)
  {
    v5 = [[MAListSnippetTableViewCell alloc] initWithReuseIdentifier:@"MAListSnippetTableViewCell"];
    v6 = [(MAListSnippetTableViewCell *)v5 backgroundView];
    [v6 setContentMode:5];

    [(MAListSnippetTableViewCell *)v5 setOpaque:0];
    v7 = [(MAListSnippetTableViewCell *)v5 resultView];
    [v7 _mapkit_setTarget:self action:"_handleTap:"];
  }

  v8 = +[UIColor clearColor];
  [(MAListSnippetTableViewCell *)v5 _mapkit_setBackgroundColor:v8];

  v9 = [(MAListSnippetView *)self _mapItemForRow:a3];
  v10 = [(MAListSnippetTableViewCell *)v5 resultView];
  [v10 setReferenceLocation:self->_userLocation];
  [v10 setMapItem:v9];
  v11 = (a3 & 0x8000000000000000) == 0 && [(NSArray *)self->_mapItems count]- 1 == a3;
  [v10 setHideBottomKeyline:v11];
  v12 = [(MAListSnippetView *)self shouldDisplayLocationDetail]|| self->_sameTitleForAllResults;
  [v10 setLocationDetailPreferred:v12];
  [v10 setBlockOnButtonTappedForSARResult:0];
  if ([(MAListSnippetView *)self isDisplayForSAR])
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10BBC;
    v15[3] = &unk_42560;
    v15[4] = self;
    [v10 setBlockOnButtonTappedForSARResult:v15];
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  [v10 setDisplayFormat:v13];

  return v5;
}

- (id)_mapItemForRow:(int64_t)a3
{
  if (a3 < 0)
  {
    v6 = 0;
  }

  else
  {
    if ([(NSArray *)self->_mapItems count]<= a3)
    {
      v6 = 0;
    }

    else
    {
      v6 = [(NSArray *)self->_mapItems objectAtIndex:a3];
    }
  }

  return v6;
}

- (double)_preferredHeightForRow:(int64_t)a3
{
  v3 = [(MAListSnippetView *)self _mapItemForRow:a3];
  [MAResultView preferredHeightForMapItem:v3];
  v5 = v4;

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = [a4 row];

  return [(MAListSnippetView *)self _prepareTableViewCellForRow:v5];
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = [a4 row];

  [(MAListSnippetView *)self _preferredHeightForRow:v5];
  return result;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v6 = a4;
  v5 = +[UIColor clearColor];
  [v6 setBackgroundColor:v5];

  [v6 setSeparatorStyle:0];
}

- (void)_handleTap:(id)a3
{
  v5 = [a3 mapItem];
  v4 = [(MAListSnippetView *)self delegate];
  [v4 listView:self didChooseMapItem:v5 accessoryButtonTapped:0];
}

- (double)desiredHeight
{
  v3 = [(NSArray *)self->_mapItems count];
  [(MAListSnippetView *)self _preferredHeightForRow:0];
  return v4 * v3;
}

- (MAListSnippetViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end