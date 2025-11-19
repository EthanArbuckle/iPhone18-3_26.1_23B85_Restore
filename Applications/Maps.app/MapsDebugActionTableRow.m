@interface MapsDebugActionTableRow
- (BOOL)_showingProgressView;
- (id)_findTableView;
- (id)_progressView;
- (void)_createProgressViewIfNeeded;
- (void)_setProgressViewHidden:(BOOL)a3;
- (void)configureCell:(id)a3;
- (void)configureCollectionViewCell:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setObservingProgress:(id)a3;
- (void)setSelectionAction:(id)a3;
@end

@implementation MapsDebugActionTableRow

- (void)setSelectionAction:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100A83628;
    v6[3] = &unk_101660648;
    objc_copyWeak(&v8, &location);
    v7 = v4;
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (self->_observingProgress == a4)
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
    [MapsDebugActionTableRow observeValueForKeyPath:"observeValueForKeyPath:ofObject:change:context:" ofObject:a3 change:? context:?];
  }
}

- (id)_progressView
{
  v3 = [(MapsDebugTableRow *)self currentCell];

  if (v3)
  {
    v4 = [(MapsDebugTableRow *)self currentCell];
    v5 = [v4 accessoryView];
  }

  else
  {
    v5 = [(MapsDebugTableRow *)self currentCollectionViewCell];

    if (!v5)
    {
      goto LABEL_6;
    }

    v4 = [(MapsDebugTableRow *)self currentCollectionViewCell];
    v6 = [v4 trailingAccessoryConfigurations];
    v7 = [v6 firstObject];

    v5 = [v7 customView];
  }

LABEL_6:

  return v5;
}

- (BOOL)_showingProgressView
{
  result = 0;
  if (self->_progressView)
  {
    v3 = [(MapsDebugTableRow *)self currentCell];
    if (v3)
    {
      v4 = v3;
      v5 = [(MapsDebugTableRow *)self currentCell];
      v6 = [v5 accessoryView];
      progressView = self->_progressView;

      if (v6 == progressView)
      {
        return 1;
      }
    }

    v8 = [(MapsDebugTableRow *)self currentCollectionViewCell];
    if (v8)
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

- (void)_setProgressViewHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(MapsDebugActionTableRow *)self _showingProgressView];
  if (v3 && v5)
  {
    v6 = [(MapsDebugTableRow *)self currentCell];
    [v6 setAccessoryView:0];

    v16 = [(MapsDebugTableRow *)self currentCollectionViewCell];
    [v16 setTrailingAccessoryConfigurations:&__NSArray0__struct];
    progressViewAccessory = self->_progressViewAccessory;
    self->_progressViewAccessory = 0;

LABEL_8:

    return;
  }

  if ((v5 | v3))
  {
    return;
  }

  [(MapsDebugActionTableRow *)self _createProgressViewIfNeeded];
  v8 = [(MapsDebugTableRow *)self currentCell];

  if (v8)
  {
    progressView = self->_progressView;
    v16 = [(MapsDebugTableRow *)self currentCell];
    [v16 setAccessoryView:progressView];
    goto LABEL_8;
  }

  v10 = [(MapsDebugTableRow *)self currentCollectionViewCell];

  if (v10)
  {
    v11 = [[_UICellAccessoryConfigurationCustomView alloc] initWithCustomView:self->_progressView];
    [v11 setMaintainsFixedSize:1];
    v12 = self->_progressViewAccessory;
    self->_progressViewAccessory = v11;
    v13 = v11;

    v14 = [(MapsDebugTableRow *)self currentCollectionViewCell];
    v17 = v13;
    v15 = [NSArray arrayWithObjects:&v17 count:1];

    [v14 setTrailingAccessoryConfigurations:v15];
  }
}

- (id)_findTableView
{
  v2 = [(MapsDebugTableRow *)self currentCell];
  if (v2)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v3 = [v2 superview];

      v2 = v3;
    }

    while (v3);
  }

  return v2;
}

- (void)setObservingProgress:(id)a3
{
  v8 = a3;
  observingProgress = self->_observingProgress;
  if (observingProgress)
  {
    [(NSProgress *)observingProgress removeObserver:self forKeyPath:@"fractionCompleted"];
    [(NSProgress *)self->_observingProgress removeObserver:self forKeyPath:@"isFinished"];
    [(NSProgress *)self->_observingProgress removeObserver:self forKeyPath:@"isCancelled"];
  }

  objc_storeStrong(&self->_observingProgress, a3);
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

- (void)configureCollectionViewCell:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MapsDebugActionTableRow;
  [(MapsDebugTableRow *)&v10 configureCollectionViewCell:v4];
  v5 = v4;
  v6 = [v5 contentConfiguration];
  v7 = [(MapsDebugTableRow *)self selectionAction];
  if (v7)
  {
    +[UIColor _maps_keyColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v8 = ;

  if (v6)
  {
    v9 = [v6 textProperties];
    [v9 setColor:v8];
  }

  else
  {
    v9 = [v5 textLabel];
    [v9 setTextColor:v8];
  }

  [v5 setContentConfiguration:v6];
}

- (void)configureCell:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MapsDebugActionTableRow;
  [(MapsDebugTableRow *)&v11 configureCell:v4];
  v5 = [v4 contentConfiguration];
  v6 = [(MapsDebugActionTableRow *)self isDestructive];
  v7 = [(MapsDebugTableRow *)self selectionAction];
  if (v6)
  {
    if (v7)
    {
      +[UIColor systemRedColor];
    }

    else
    {
      +[UIColor systemDarkRedColor];
    }
  }

  else if (v7)
  {
    +[UIColor _maps_keyColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v8 = ;
  v9 = v8;
  v10 = [v5 textProperties];
  [v10 setColor:v9];

  [v4 setContentConfiguration:v5];
}

- (void)dealloc
{
  [(MapsDebugActionTableRow *)self setObservingProgress:0];
  v3.receiver = self;
  v3.super_class = MapsDebugActionTableRow;
  [(MapsDebugTableRow *)&v3 dealloc];
}

@end