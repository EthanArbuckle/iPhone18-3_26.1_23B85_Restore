@interface MAListSnippetView
- (BOOL)_checkAllItemsHaveSameTitle;
- (MAListSnippetView)initWithFrame:(CGRect)frame mapItems:(id)items;
- (MAListSnippetViewDelegate)delegate;
- (double)_preferredHeightForRow:(int64_t)row;
- (double)desiredHeight;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_mapItemForRow:(int64_t)row;
- (id)_prepareTableViewCellForRow:(int64_t)row;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_handleTap:(id)tap;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setDisplayForSAR:(BOOL)r;
- (void)setShouldDisplayLocationDetail:(BOOL)detail;
- (void)setShowDisclosureIndicatorInCells:(BOOL)cells;
- (void)setUserLocation:(id)location;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation MAListSnippetView

- (MAListSnippetView)initWithFrame:(CGRect)frame mapItems:(id)items
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  itemsCopy = items;
  v32.receiver = self;
  v32.super_class = MAListSnippetView;
  height = [(MAListSnippetView *)&v32 initWithFrame:x, y, width, height];
  if (height)
  {
    v11 = [itemsCopy copy];
    mapItems = height->_mapItems;
    height->_mapItems = v11;

    userLocation = height->_userLocation;
    height->_userLocation = 0;

    if ([itemsCopy count] < 2)
    {
      _checkAllItemsHaveSameTitle = 0;
    }

    else
    {
      _checkAllItemsHaveSameTitle = [(MAListSnippetView *)height _checkAllItemsHaveSameTitle];
    }

    height->_sameTitleForAllResults = _checkAllItemsHaveSameTitle;
    v15 = [[UITableView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    tableView = height->_tableView;
    height->_tableView = v15;

    [(UITableView *)height->_tableView setScrollEnabled:0];
    [(UITableView *)height->_tableView setSeparatorStyle:1];
    [(UITableView *)height->_tableView setBackgroundView:0];
    [(UITableView *)height->_tableView setOpaque:0];
    [(UITableView *)height->_tableView _ma_updateSemanticContentAttribute];
    [(MAListSnippetView *)height addSubview:height->_tableView];
    [(MAListSnippetView *)height setOpaque:0];
    v17 = +[UIColor clearColor];
    [(UITableView *)height->_tableView setBackgroundColor:v17];

    [(UITableView *)height->_tableView setDelegate:height];
    [(UITableView *)height->_tableView setDataSource:height];
    [(UITableView *)height->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = +[UIColor clearColor];
    [(MAListSnippetView *)height _mapkit_setBackgroundColor:v18];

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
          v25 = _NSDictionaryOfVariableBindings(@"_tableView", height->_tableView, 0);
          v26 = [NSLayoutConstraint constraintsWithVisualFormat:v24 options:0 metrics:0 views:v25];
          [v19 addObjectsFromArray:v26];
        }

        v21 = [&off_49D10 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v21);
    }

    [NSLayoutConstraint activateConstraints:v19];
  }

  return height;
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
  superview = [(MAListSnippetView *)self superview];
  [superview frame];
  v5 = v4;
  [(MAListSnippetView *)self desiredHeight];
  [(UITableView *)self->_tableView setFrame:0.0, 0.0, v5, v6];
}

- (void)setUserLocation:(id)location
{
  locationCopy = location;
  if (([(CLLocation *)self->_userLocation isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_userLocation, location);
    [(UITableView *)self->_tableView reloadData];
  }
}

- (void)setShowDisclosureIndicatorInCells:(BOOL)cells
{
  if (self->_showDisclosureIndicatorInCells != cells)
  {
    self->_showDisclosureIndicatorInCells = cells;
    [(UITableView *)self->_tableView reloadData];
  }
}

- (void)setDisplayForSAR:(BOOL)r
{
  if (self->_displayForSAR != r)
  {
    self->_displayForSAR = r;
    [(UITableView *)self->_tableView reloadData];
  }
}

- (void)setShouldDisplayLocationDetail:(BOOL)detail
{
  if (self->_shouldDisplayLocationDetail != detail)
  {
    self->_shouldDisplayLocationDetail = detail;
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
        firstObject = [(NSArray *)self->_mapItems firstObject];

        if (v9 == firstObject)
        {
          label = [v9 label];

          v6 = label;
        }

        else
        {
          label2 = [v9 label];
          v12 = label2;
          if (v6)
          {
            v13 = [label2 isEqualToString:v6];

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

- (id)_prepareTableViewCellForRow:(int64_t)row
{
  v5 = [(UITableView *)self->_tableView dequeueReusableCellWithIdentifier:@"MAListSnippetTableViewCell"];
  if (!v5)
  {
    v5 = [[MAListSnippetTableViewCell alloc] initWithReuseIdentifier:@"MAListSnippetTableViewCell"];
    backgroundView = [(MAListSnippetTableViewCell *)v5 backgroundView];
    [backgroundView setContentMode:5];

    [(MAListSnippetTableViewCell *)v5 setOpaque:0];
    resultView = [(MAListSnippetTableViewCell *)v5 resultView];
    [resultView _mapkit_setTarget:self action:"_handleTap:"];
  }

  v8 = +[UIColor clearColor];
  [(MAListSnippetTableViewCell *)v5 _mapkit_setBackgroundColor:v8];

  v9 = [(MAListSnippetView *)self _mapItemForRow:row];
  resultView2 = [(MAListSnippetTableViewCell *)v5 resultView];
  [resultView2 setReferenceLocation:self->_userLocation];
  [resultView2 setMapItem:v9];
  v11 = (row & 0x8000000000000000) == 0 && [(NSArray *)self->_mapItems count]- 1 == row;
  [resultView2 setHideBottomKeyline:v11];
  v12 = [(MAListSnippetView *)self shouldDisplayLocationDetail]|| self->_sameTitleForAllResults;
  [resultView2 setLocationDetailPreferred:v12];
  [resultView2 setBlockOnButtonTappedForSARResult:0];
  if ([(MAListSnippetView *)self isDisplayForSAR])
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10BBC;
    v15[3] = &unk_42560;
    v15[4] = self;
    [resultView2 setBlockOnButtonTappedForSARResult:v15];
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  [resultView2 setDisplayFormat:v13];

  return v5;
}

- (id)_mapItemForRow:(int64_t)row
{
  if (row < 0)
  {
    v6 = 0;
  }

  else
  {
    if ([(NSArray *)self->_mapItems count]<= row)
    {
      v6 = 0;
    }

    else
    {
      v6 = [(NSArray *)self->_mapItems objectAtIndex:row];
    }
  }

  return v6;
}

- (double)_preferredHeightForRow:(int64_t)row
{
  v3 = [(MAListSnippetView *)self _mapItemForRow:row];
  [MAResultView preferredHeightForMapItem:v3];
  v5 = v4;

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v5 = [path row];

  return [(MAListSnippetView *)self _prepareTableViewCellForRow:v5];
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v5 = [path row];

  [(MAListSnippetView *)self _preferredHeightForRow:v5];
  return result;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v5 = +[UIColor clearColor];
  [cellCopy setBackgroundColor:v5];

  [cellCopy setSeparatorStyle:0];
}

- (void)_handleTap:(id)tap
{
  mapItem = [tap mapItem];
  delegate = [(MAListSnippetView *)self delegate];
  [delegate listView:self didChooseMapItem:mapItem accessoryButtonTapped:0];
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