@interface MapsDebugActionTableRow
- (BOOL)_showingProgressView;
- (id)_findTableView;
- (id)_progressView;
- (void)_createProgressViewIfNeeded;
- (void)_setProgressViewHidden:(BOOL)hidden;
- (void)configureCell:(id)cell;
- (void)configureCollectionViewCell:(id)cell;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setObservingProgress:(id)progress;
- (void)setSelectionAction:(id)action;
@end

@implementation MapsDebugActionTableRow

- (void)setSelectionAction:(id)action
{
  actionCopy = action;
  if (actionCopy)
  {
    objc_initWeak(&location, self);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100A83628;
    v6[3] = &unk_101660648;
    objc_copyWeak(&v8, &location);
    v7 = actionCopy;
    v5.receiver = self;
    v5.super_class = MapsDebugActionTableRow;
    [(MapsDebugTableRow *)&v5 setSelectionAction:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MapsDebugActionTableRow;
    [(MapsDebugTableRow *)&v10 setSelectionAction:0];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (self->_observingProgress == object)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100A837C0;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MapsDebugActionTableRow;
    [MapsDebugActionTableRow observeValueForKeyPath:"observeValueForKeyPath:ofObject:change:context:" ofObject:path change:? context:?];
  }
}

- (id)_progressView
{
  currentCell = [(MapsDebugTableRow *)self currentCell];

  if (currentCell)
  {
    currentCell2 = [(MapsDebugTableRow *)self currentCell];
    accessoryView = [currentCell2 accessoryView];
  }

  else
  {
    accessoryView = [(MapsDebugTableRow *)self currentCollectionViewCell];

    if (!accessoryView)
    {
      goto LABEL_6;
    }

    currentCell2 = [(MapsDebugTableRow *)self currentCollectionViewCell];
    trailingAccessoryConfigurations = [currentCell2 trailingAccessoryConfigurations];
    firstObject = [trailingAccessoryConfigurations firstObject];

    accessoryView = [firstObject customView];
  }

LABEL_6:

  return accessoryView;
}

- (BOOL)_showingProgressView
{
  result = 0;
  if (self->_progressView)
  {
    currentCell = [(MapsDebugTableRow *)self currentCell];
    if (currentCell)
    {
      v4 = currentCell;
      currentCell2 = [(MapsDebugTableRow *)self currentCell];
      accessoryView = [currentCell2 accessoryView];
      progressView = self->_progressView;

      if (accessoryView == progressView)
      {
        return 1;
      }
    }

    currentCollectionViewCell = [(MapsDebugTableRow *)self currentCollectionViewCell];
    if (currentCollectionViewCell)
    {
      progressViewAccessory = self->_progressViewAccessory;

      if (progressViewAccessory)
      {
        return 1;
      }
    }
  }

  return result;
}

- (void)_createProgressViewIfNeeded
{
  if (!self->_progressView)
  {
    v3 = [[MapsPieProgressView alloc] initWithFrame:0.0, 0.0, 24.0, 24.0];
    progressView = self->_progressView;
    self->_progressView = v3;
  }
}

- (void)_setProgressViewHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  _showingProgressView = [(MapsDebugActionTableRow *)self _showingProgressView];
  if (hiddenCopy && _showingProgressView)
  {
    currentCell = [(MapsDebugTableRow *)self currentCell];
    [currentCell setAccessoryView:0];

    currentCollectionViewCell = [(MapsDebugTableRow *)self currentCollectionViewCell];
    [currentCollectionViewCell setTrailingAccessoryConfigurations:&__NSArray0__struct];
    progressViewAccessory = self->_progressViewAccessory;
    self->_progressViewAccessory = 0;

LABEL_8:

    return;
  }

  if ((_showingProgressView | hiddenCopy))
  {
    return;
  }

  [(MapsDebugActionTableRow *)self _createProgressViewIfNeeded];
  currentCell2 = [(MapsDebugTableRow *)self currentCell];

  if (currentCell2)
  {
    progressView = self->_progressView;
    currentCollectionViewCell = [(MapsDebugTableRow *)self currentCell];
    [currentCollectionViewCell setAccessoryView:progressView];
    goto LABEL_8;
  }

  currentCollectionViewCell2 = [(MapsDebugTableRow *)self currentCollectionViewCell];

  if (currentCollectionViewCell2)
  {
    v11 = [[_UICellAccessoryConfigurationCustomView alloc] initWithCustomView:self->_progressView];
    [v11 setMaintainsFixedSize:1];
    v12 = self->_progressViewAccessory;
    self->_progressViewAccessory = v11;
    v13 = v11;

    currentCollectionViewCell3 = [(MapsDebugTableRow *)self currentCollectionViewCell];
    v17 = v13;
    v15 = [NSArray arrayWithObjects:&v17 count:1];

    [currentCollectionViewCell3 setTrailingAccessoryConfigurations:v15];
  }
}

- (id)_findTableView
{
  currentCell = [(MapsDebugTableRow *)self currentCell];
  if (currentCell)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      superview = [currentCell superview];

      currentCell = superview;
    }

    while (superview);
  }

  return currentCell;
}

- (void)setObservingProgress:(id)progress
{
  progressCopy = progress;
  observingProgress = self->_observingProgress;
  if (observingProgress)
  {
    [(NSProgress *)observingProgress removeObserver:self forKeyPath:@"fractionCompleted"];
    [(NSProgress *)self->_observingProgress removeObserver:self forKeyPath:@"isFinished"];
    [(NSProgress *)self->_observingProgress removeObserver:self forKeyPath:@"isCancelled"];
  }

  objc_storeStrong(&self->_observingProgress, progress);
  v6 = self->_observingProgress;
  if (v6)
  {
    [(NSProgress *)v6 addObserver:self forKeyPath:@"fractionCompleted" options:1 context:0];
    [(NSProgress *)self->_observingProgress addObserver:self forKeyPath:@"isFinished" options:1 context:0];
    [(NSProgress *)self->_observingProgress addObserver:self forKeyPath:@"isCancelled" options:1 context:0];
    v7 = self->_observingProgress == 0;
  }

  else
  {
    v7 = 1;
  }

  [(MapsDebugActionTableRow *)self _setProgressViewHidden:v7];
}

- (void)configureCollectionViewCell:(id)cell
{
  cellCopy = cell;
  v10.receiver = self;
  v10.super_class = MapsDebugActionTableRow;
  [(MapsDebugTableRow *)&v10 configureCollectionViewCell:cellCopy];
  v5 = cellCopy;
  contentConfiguration = [v5 contentConfiguration];
  selectionAction = [(MapsDebugTableRow *)self selectionAction];
  if (selectionAction)
  {
    +[UIColor _maps_keyColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v8 = ;

  if (contentConfiguration)
  {
    textProperties = [contentConfiguration textProperties];
    [textProperties setColor:v8];
  }

  else
  {
    textProperties = [v5 textLabel];
    [textProperties setTextColor:v8];
  }

  [v5 setContentConfiguration:contentConfiguration];
}

- (void)configureCell:(id)cell
{
  cellCopy = cell;
  v11.receiver = self;
  v11.super_class = MapsDebugActionTableRow;
  [(MapsDebugTableRow *)&v11 configureCell:cellCopy];
  contentConfiguration = [cellCopy contentConfiguration];
  isDestructive = [(MapsDebugActionTableRow *)self isDestructive];
  selectionAction = [(MapsDebugTableRow *)self selectionAction];
  if (isDestructive)
  {
    if (selectionAction)
    {
      +[UIColor systemRedColor];
    }

    else
    {
      +[UIColor systemDarkRedColor];
    }
  }

  else if (selectionAction)
  {
    +[UIColor _maps_keyColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v8 = ;
  v9 = v8;
  textProperties = [contentConfiguration textProperties];
  [textProperties setColor:v9];

  [cellCopy setContentConfiguration:contentConfiguration];
}

- (void)dealloc
{
  [(MapsDebugActionTableRow *)self setObservingProgress:0];
  v3.receiver = self;
  v3.super_class = MapsDebugActionTableRow;
  [(MapsDebugTableRow *)&v3 dealloc];
}

@end