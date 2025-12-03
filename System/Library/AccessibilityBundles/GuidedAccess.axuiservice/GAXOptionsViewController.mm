@interface GAXOptionsViewController
+ (id)optionsViewController;
- (BOOL)_stateForForFeatureAtIndex:(int64_t)index;
- (CGSize)cachedTableSize;
- (CGSize)initialPreferredContentSize;
- (CGSize)tableTotalSizeConstrainedToWidth:(double)width;
- (GAXOptionsViewControllerDataSource)dataSource;
- (GAXOptionsViewControllerDelegate)delegate;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_detailTextForFeatureAtIndex:(int64_t)index;
- (id)_makeTableViewCellWithIdentifier:(id)identifier;
- (id)_pickerIndexPath;
- (id)_textForFeatureAtIndex:(int64_t)index;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)_numberOfFeatures;
- (void)_configureTableViewCell:(id)cell withIndex:(int64_t)index;
- (void)_featureAtIndex:(unint64_t)index didChangeState:(BOOL)state;
- (void)_handleDatePickerValuedidChange:(id)change;
- (void)_handleSwitchWasToggled:(id)toggled;
- (void)_timeRestrictionValueDidChange:(int64_t)change timeRestrictionsEnabled:(BOOL)enabled;
- (void)setTimeRestrictionsEnabled:(BOOL)enabled currentDurationInMinutes:(int64_t)minutes animated:(BOOL)animated;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation GAXOptionsViewController

- (id)_textForFeatureAtIndex:(int64_t)index
{
  dataSource = [(GAXOptionsViewController *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v6 = [dataSource optionsViewController:self textForFeatureAtIndex:index];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_detailTextForFeatureAtIndex:(int64_t)index
{
  dataSource = [(GAXOptionsViewController *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v6 = [dataSource optionsViewController:self detailTextForFeatureAtIndex:index];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_stateForForFeatureAtIndex:(int64_t)index
{
  dataSource = [(GAXOptionsViewController *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v6 = [dataSource optionsViewController:self stateForForFeatureAtIndex:index];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (int64_t)_numberOfFeatures
{
  dataSource = [(GAXOptionsViewController *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [dataSource numberOfFeaturesInOptionsViewController:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_featureAtIndex:(unint64_t)index didChangeState:(BOOL)state
{
  stateCopy = state;
  delegate = [(GAXOptionsViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate optionsViewController:self featureAtIndex:index didChangeState:stateCopy];
  }
}

- (void)_timeRestrictionValueDidChange:(int64_t)change timeRestrictionsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  delegate = [(GAXOptionsViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate optionsViewController:self timeRestrictionValueDidChange:change timeRestrictionsEnabled:enabledCopy];
  }
}

- (id)_pickerIndexPath
{
  _numberOfFeatures = [(GAXOptionsViewController *)self _numberOfFeatures];

  return [NSIndexPath indexPathForRow:_numberOfFeatures inSection:0];
}

- (void)setTimeRestrictionsEnabled:(BOOL)enabled currentDurationInMinutes:(int64_t)minutes animated:(BOOL)animated
{
  animatedCopy = animated;
  enabledCopy = enabled;
  [(GAXOptionsViewController *)self loadViewIfNeeded];
  timeRestrictionsDatePicker = [(GAXOptionsViewController *)self timeRestrictionsDatePicker];
  [timeRestrictionsDatePicker updateSelectedDurationInMinutes:minutes animated:animatedCopy];

  if ([(GAXOptionsViewController *)self timeRestrictionsEnabled]!= enabledCopy)
  {
    [(GAXOptionsViewController *)self setTimeRestrictionsEnabled:enabledCopy];
    tableView = [(GAXOptionsViewController *)self tableView];
    v14 = tableView;
    if (animatedCopy)
    {
      _pickerIndexPath = [(GAXOptionsViewController *)self _pickerIndexPath];
      v12 = _pickerIndexPath;
      if (enabledCopy)
      {
        v16 = _pickerIndexPath;
        v13 = [NSArray arrayWithObjects:&v16 count:1];
        [v14 insertRowsAtIndexPaths:v13 withRowAnimation:4];
      }

      else
      {
        v15 = _pickerIndexPath;
        v13 = [NSArray arrayWithObjects:&v15 count:1];
        [v14 deleteRowsAtIndexPaths:v13 withRowAnimation:4];
      }
    }

    else
    {
      [tableView reloadData];
    }
  }
}

+ (id)optionsViewController
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (void)viewDidLayoutSubviews
{
  v11.receiver = self;
  v11.super_class = GAXOptionsViewController;
  [(GAXOptionsViewController *)&v11 viewDidLayoutSubviews];
  tableView = [(GAXOptionsViewController *)self tableView];
  [tableView contentSize];
  v5 = v4;
  [tableView frame];
  [tableView setScrollEnabled:v5 > v6];
  timeRestrictionsDatePicker = [(GAXOptionsViewController *)self timeRestrictionsDatePicker];
  [timeRestrictionsDatePicker countDownDuration];
  v9 = v8;
  timeRestrictionsDatePicker2 = [(GAXOptionsViewController *)self timeRestrictionsDatePicker];
  [timeRestrictionsDatePicker2 setCountDownDuration:v9];
}

- (CGSize)tableTotalSizeConstrainedToWidth:(double)width
{
  [(GAXOptionsViewController *)self cachedTableSize];
  if (v5 != width || (-[GAXOptionsViewController cachedSizeContentSizeCategory](self, "cachedSizeContentSizeCategory"), v6 = objc_claimAutoreleasedReturnValue(), +[UIApplication sharedApplication](UIApplication, "sharedApplication"), v7 = objc_claimAutoreleasedReturnValue(), [v7 preferredContentSizeCategory], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v6, "isEqualToString:", v8), v8, v7, v6, (v9 & 1) == 0))
  {
    tableView = [(GAXOptionsViewController *)self tableView];
    [tableView contentOffset];
    v12 = v11;
    v14 = v13;

    tableView2 = [(GAXOptionsViewController *)self tableView];
    [tableView2 frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    +[CATransaction begin];
    tableView3 = [(GAXOptionsViewController *)self tableView];
    [tableView3 setFrame:{v17, v19, width, 500.0}];

    tableView4 = [(GAXOptionsViewController *)self tableView];
    v26 = [(GAXOptionsViewController *)self tableView:tableView4 numberOfRowsInSection:0];

    if (v26 < 1)
    {
      v28 = 0.0;
    }

    else
    {
      v27 = 0;
      v28 = 0.0;
      do
      {
        v29 = [NSIndexPath indexPathForRow:v27 inSection:0];
        tableView5 = [(GAXOptionsViewController *)self tableView];
        [tableView5 scrollToRowAtIndexPath:v29 atScrollPosition:1 animated:0];

        tableView6 = [(GAXOptionsViewController *)self tableView];
        v32 = [tableView6 cellForRowAtIndexPath:v29];
        [v32 frame];
        v28 = v28 + v33;

        ++v27;
        tableView7 = [(GAXOptionsViewController *)self tableView];
        v35 = [(GAXOptionsViewController *)self tableView:tableView7 numberOfRowsInSection:0];
      }

      while (v27 < v35);
    }

    tableView8 = [(GAXOptionsViewController *)self tableView];
    [tableView8 setFrame:{v17, v19, v21, v23}];

    tableView9 = [(GAXOptionsViewController *)self tableView];
    [tableView9 setContentOffset:{v12, v14}];

    +[CATransaction commit];
    [(GAXOptionsViewController *)self setCachedTableSize:width, v28];
    v38 = +[UIApplication sharedApplication];
    preferredContentSizeCategory = [v38 preferredContentSizeCategory];
    [(GAXOptionsViewController *)self setCachedSizeContentSizeCategory:preferredContentSizeCategory];
  }

  [(GAXOptionsViewController *)self cachedTableSize];
  result.height = v41;
  result.width = v40;
  return result;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = GAXOptionsViewController;
  [(GAXOptionsViewController *)&v4 viewDidLoad];
  v3 = [[UIDatePicker alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v3 setTag:12345];
  [(GAXOptionsViewController *)self setTimeRestrictionsDatePicker:v3];
  [v3 addTarget:self action:"_handleDatePickerValuedidChange:" forControlEvents:4096];
  [v3 setGaxDatePickerEnabled:1];
  [v3 setDatePickerMode:3];
  [v3 setPreferredDatePickerStyle:1];
}

- (CGSize)initialPreferredContentSize
{
  view = [(GAXOptionsViewController *)self view];
  [view frame];
  [(GAXOptionsViewController *)self tableTotalSizeConstrainedToWidth:v4];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)_configureTableViewCell:(id)cell withIndex:(int64_t)index
{
  cellCopy = cell;
  reuseIdentifier = [cellCopy reuseIdentifier];
  v7 = [reuseIdentifier isEqualToString:@"GAXCellIDToggle"];

  if (v7)
  {
    v8 = [(GAXOptionsViewController *)self _textForFeatureAtIndex:index];
    textLabel = [cellCopy textLabel];
    [textLabel setText:v8];

    v10 = [(GAXOptionsViewController *)self _detailTextForFeatureAtIndex:index];
    detailTextLabel = [cellCopy detailTextLabel];
    [detailTextLabel setText:v10];

    accessoryView = [cellCopy accessoryView];
    [accessoryView setOn:{-[GAXOptionsViewController _stateForForFeatureAtIndex:](self, "_stateForForFeatureAtIndex:", index)}];
    [accessoryView setTag:index];
  }
}

- (id)_makeTableViewCellWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"GAXCellIDToggle"])
  {
    v5 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:identifierCopy];
    [v5 setSelectionStyle:0];
    styleProvider = [(GAXOptionsViewController *)self styleProvider];
    featureViewControllerOptionsCellTextFont = [styleProvider featureViewControllerOptionsCellTextFont];
    textLabel = [v5 textLabel];
    [textLabel setFont:featureViewControllerOptionsCellTextFont];

    contentView = [[UISwitch alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [contentView addTarget:self action:"_handleSwitchWasToggled:" forControlEvents:4096];
    [v5 setAccessoryView:contentView];
LABEL_5:

    goto LABEL_7;
  }

  if ([identifierCopy isEqualToString:@"GAXCellIDDatePicker"])
  {
    v5 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:identifierCopy];
    [v5 setSelectionStyle:0];
    styleProvider2 = [(GAXOptionsViewController *)self styleProvider];
    featureViewControllerOptionsCellTextFont2 = [styleProvider2 featureViewControllerOptionsCellTextFont];
    textLabel2 = [v5 textLabel];
    [textLabel2 setFont:featureViewControllerOptionsCellTextFont2];

    contentView = [v5 contentView];
    timeRestrictionsDatePicker = [(GAXOptionsViewController *)self timeRestrictionsDatePicker];
    [contentView addSubview:timeRestrictionsDatePicker];

    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)_handleSwitchWasToggled:(id)toggled
{
  toggledCopy = toggled;
  v5 = [toggledCopy tag];
  isOn = [toggledCopy isOn];

  [(GAXOptionsViewController *)self _featureAtIndex:v5 didChangeState:isOn];
}

- (void)_handleDatePickerValuedidChange:(id)change
{
  selectedDurationInMinutes = [change selectedDurationInMinutes];
  timeRestrictionsEnabled = [(GAXOptionsViewController *)self timeRestrictionsEnabled];

  [(GAXOptionsViewController *)self _timeRestrictionValueDidChange:selectedDurationInMinutes timeRestrictionsEnabled:timeRestrictionsEnabled];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [pathCopy row];
  if (v8 == [(GAXOptionsViewController *)self _numberOfFeatures])
  {
    v9 = @"GAXCellIDDatePicker";
  }

  else
  {
    v9 = @"GAXCellIDToggle";
  }

  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9];

  if (!v10)
  {
    v10 = [(GAXOptionsViewController *)self _makeTableViewCellWithIdentifier:v9];
  }

  -[GAXOptionsViewController _configureTableViewCell:withIndex:](self, "_configureTableViewCell:withIndex:", v10, [pathCopy row]);

  return v10;
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  _pickerIndexPath = [(GAXOptionsViewController *)self _pickerIndexPath];
  v7 = [pathCopy isEqual:_pickerIndexPath];

  if (!v7)
  {
    return 44.0;
  }

  timeRestrictionsDatePicker = [(GAXOptionsViewController *)self timeRestrictionsDatePicker];
  [timeRestrictionsDatePicker intrinsicContentSize];
  v10 = v9;

  return v10;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  _pickerIndexPath = [(GAXOptionsViewController *)self _pickerIndexPath];
  v7 = [pathCopy isEqual:_pickerIndexPath];

  if (!v7)
  {
    return UITableViewAutomaticDimension;
  }

  timeRestrictionsDatePicker = [(GAXOptionsViewController *)self timeRestrictionsDatePicker];
  timeRestrictionsDatePicker2 = [(GAXOptionsViewController *)self timeRestrictionsDatePicker];
  [timeRestrictionsDatePicker2 intrinsicContentSize];
  v15 = NSStringFromCGSize(v16);
  LOBYTE(v14) = 1;
  _AXLogWithFacility();

  v10 = [(GAXOptionsViewController *)self timeRestrictionsDatePicker:v14];
  [v10 intrinsicContentSize];
  v12 = v11;

  return v12;
}

- (GAXOptionsViewControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (GAXOptionsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)cachedTableSize
{
  width = self->_cachedTableSize.width;
  height = self->_cachedTableSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end