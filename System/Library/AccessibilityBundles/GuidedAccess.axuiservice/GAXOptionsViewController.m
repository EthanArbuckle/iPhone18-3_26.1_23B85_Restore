@interface GAXOptionsViewController
+ (id)optionsViewController;
- (BOOL)_stateForForFeatureAtIndex:(int64_t)a3;
- (CGSize)cachedTableSize;
- (CGSize)initialPreferredContentSize;
- (CGSize)tableTotalSizeConstrainedToWidth:(double)a3;
- (GAXOptionsViewControllerDataSource)dataSource;
- (GAXOptionsViewControllerDelegate)delegate;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_detailTextForFeatureAtIndex:(int64_t)a3;
- (id)_makeTableViewCellWithIdentifier:(id)a3;
- (id)_pickerIndexPath;
- (id)_textForFeatureAtIndex:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)_numberOfFeatures;
- (void)_configureTableViewCell:(id)a3 withIndex:(int64_t)a4;
- (void)_featureAtIndex:(unint64_t)a3 didChangeState:(BOOL)a4;
- (void)_handleDatePickerValuedidChange:(id)a3;
- (void)_handleSwitchWasToggled:(id)a3;
- (void)_timeRestrictionValueDidChange:(int64_t)a3 timeRestrictionsEnabled:(BOOL)a4;
- (void)setTimeRestrictionsEnabled:(BOOL)a3 currentDurationInMinutes:(int64_t)a4 animated:(BOOL)a5;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation GAXOptionsViewController

- (id)_textForFeatureAtIndex:(int64_t)a3
{
  v5 = [(GAXOptionsViewController *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 optionsViewController:self textForFeatureAtIndex:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_detailTextForFeatureAtIndex:(int64_t)a3
{
  v5 = [(GAXOptionsViewController *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 optionsViewController:self detailTextForFeatureAtIndex:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_stateForForFeatureAtIndex:(int64_t)a3
{
  v5 = [(GAXOptionsViewController *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 optionsViewController:self stateForForFeatureAtIndex:a3];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (int64_t)_numberOfFeatures
{
  v3 = [(GAXOptionsViewController *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 numberOfFeaturesInOptionsViewController:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_featureAtIndex:(unint64_t)a3 didChangeState:(BOOL)a4
{
  v4 = a4;
  v7 = [(GAXOptionsViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 optionsViewController:self featureAtIndex:a3 didChangeState:v4];
  }
}

- (void)_timeRestrictionValueDidChange:(int64_t)a3 timeRestrictionsEnabled:(BOOL)a4
{
  v4 = a4;
  v7 = [(GAXOptionsViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 optionsViewController:self timeRestrictionValueDidChange:a3 timeRestrictionsEnabled:v4];
  }
}

- (id)_pickerIndexPath
{
  v2 = [(GAXOptionsViewController *)self _numberOfFeatures];

  return [NSIndexPath indexPathForRow:v2 inSection:0];
}

- (void)setTimeRestrictionsEnabled:(BOOL)a3 currentDurationInMinutes:(int64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  [(GAXOptionsViewController *)self loadViewIfNeeded];
  v9 = [(GAXOptionsViewController *)self timeRestrictionsDatePicker];
  [v9 updateSelectedDurationInMinutes:a4 animated:v5];

  if ([(GAXOptionsViewController *)self timeRestrictionsEnabled]!= v7)
  {
    [(GAXOptionsViewController *)self setTimeRestrictionsEnabled:v7];
    v10 = [(GAXOptionsViewController *)self tableView];
    v14 = v10;
    if (v5)
    {
      v11 = [(GAXOptionsViewController *)self _pickerIndexPath];
      v12 = v11;
      if (v7)
      {
        v16 = v11;
        v13 = [NSArray arrayWithObjects:&v16 count:1];
        [v14 insertRowsAtIndexPaths:v13 withRowAnimation:4];
      }

      else
      {
        v15 = v11;
        v13 = [NSArray arrayWithObjects:&v15 count:1];
        [v14 deleteRowsAtIndexPaths:v13 withRowAnimation:4];
      }
    }

    else
    {
      [v10 reloadData];
    }
  }
}

+ (id)optionsViewController
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (void)viewDidLayoutSubviews
{
  v11.receiver = self;
  v11.super_class = GAXOptionsViewController;
  [(GAXOptionsViewController *)&v11 viewDidLayoutSubviews];
  v3 = [(GAXOptionsViewController *)self tableView];
  [v3 contentSize];
  v5 = v4;
  [v3 frame];
  [v3 setScrollEnabled:v5 > v6];
  v7 = [(GAXOptionsViewController *)self timeRestrictionsDatePicker];
  [v7 countDownDuration];
  v9 = v8;
  v10 = [(GAXOptionsViewController *)self timeRestrictionsDatePicker];
  [v10 setCountDownDuration:v9];
}

- (CGSize)tableTotalSizeConstrainedToWidth:(double)a3
{
  [(GAXOptionsViewController *)self cachedTableSize];
  if (v5 != a3 || (-[GAXOptionsViewController cachedSizeContentSizeCategory](self, "cachedSizeContentSizeCategory"), v6 = objc_claimAutoreleasedReturnValue(), +[UIApplication sharedApplication](UIApplication, "sharedApplication"), v7 = objc_claimAutoreleasedReturnValue(), [v7 preferredContentSizeCategory], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v6, "isEqualToString:", v8), v8, v7, v6, (v9 & 1) == 0))
  {
    v10 = [(GAXOptionsViewController *)self tableView];
    [v10 contentOffset];
    v12 = v11;
    v14 = v13;

    v15 = [(GAXOptionsViewController *)self tableView];
    [v15 frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    +[CATransaction begin];
    v24 = [(GAXOptionsViewController *)self tableView];
    [v24 setFrame:{v17, v19, a3, 500.0}];

    v25 = [(GAXOptionsViewController *)self tableView];
    v26 = [(GAXOptionsViewController *)self tableView:v25 numberOfRowsInSection:0];

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
        v30 = [(GAXOptionsViewController *)self tableView];
        [v30 scrollToRowAtIndexPath:v29 atScrollPosition:1 animated:0];

        v31 = [(GAXOptionsViewController *)self tableView];
        v32 = [v31 cellForRowAtIndexPath:v29];
        [v32 frame];
        v28 = v28 + v33;

        ++v27;
        v34 = [(GAXOptionsViewController *)self tableView];
        v35 = [(GAXOptionsViewController *)self tableView:v34 numberOfRowsInSection:0];
      }

      while (v27 < v35);
    }

    v36 = [(GAXOptionsViewController *)self tableView];
    [v36 setFrame:{v17, v19, v21, v23}];

    v37 = [(GAXOptionsViewController *)self tableView];
    [v37 setContentOffset:{v12, v14}];

    +[CATransaction commit];
    [(GAXOptionsViewController *)self setCachedTableSize:a3, v28];
    v38 = +[UIApplication sharedApplication];
    v39 = [v38 preferredContentSizeCategory];
    [(GAXOptionsViewController *)self setCachedSizeContentSizeCategory:v39];
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
  v3 = [(GAXOptionsViewController *)self view];
  [v3 frame];
  [(GAXOptionsViewController *)self tableTotalSizeConstrainedToWidth:v4];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)_configureTableViewCell:(id)a3 withIndex:(int64_t)a4
{
  v13 = a3;
  v6 = [v13 reuseIdentifier];
  v7 = [v6 isEqualToString:@"GAXCellIDToggle"];

  if (v7)
  {
    v8 = [(GAXOptionsViewController *)self _textForFeatureAtIndex:a4];
    v9 = [v13 textLabel];
    [v9 setText:v8];

    v10 = [(GAXOptionsViewController *)self _detailTextForFeatureAtIndex:a4];
    v11 = [v13 detailTextLabel];
    [v11 setText:v10];

    v12 = [v13 accessoryView];
    [v12 setOn:{-[GAXOptionsViewController _stateForForFeatureAtIndex:](self, "_stateForForFeatureAtIndex:", a4)}];
    [v12 setTag:a4];
  }
}

- (id)_makeTableViewCellWithIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"GAXCellIDToggle"])
  {
    v5 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:v4];
    [v5 setSelectionStyle:0];
    v6 = [(GAXOptionsViewController *)self styleProvider];
    v7 = [v6 featureViewControllerOptionsCellTextFont];
    v8 = [v5 textLabel];
    [v8 setFont:v7];

    v9 = [[UISwitch alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v9 addTarget:self action:"_handleSwitchWasToggled:" forControlEvents:4096];
    [v5 setAccessoryView:v9];
LABEL_5:

    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"GAXCellIDDatePicker"])
  {
    v5 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:v4];
    [v5 setSelectionStyle:0];
    v10 = [(GAXOptionsViewController *)self styleProvider];
    v11 = [v10 featureViewControllerOptionsCellTextFont];
    v12 = [v5 textLabel];
    [v12 setFont:v11];

    v9 = [v5 contentView];
    v13 = [(GAXOptionsViewController *)self timeRestrictionsDatePicker];
    [v9 addSubview:v13];

    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)_handleSwitchWasToggled:(id)a3
{
  v4 = a3;
  v5 = [v4 tag];
  v6 = [v4 isOn];

  [(GAXOptionsViewController *)self _featureAtIndex:v5 didChangeState:v6];
}

- (void)_handleDatePickerValuedidChange:(id)a3
{
  v4 = [a3 selectedDurationInMinutes];
  v5 = [(GAXOptionsViewController *)self timeRestrictionsEnabled];

  [(GAXOptionsViewController *)self _timeRestrictionValueDidChange:v4 timeRestrictionsEnabled:v5];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 row];
  if (v8 == [(GAXOptionsViewController *)self _numberOfFeatures])
  {
    v9 = @"GAXCellIDDatePicker";
  }

  else
  {
    v9 = @"GAXCellIDToggle";
  }

  v10 = [v7 dequeueReusableCellWithIdentifier:v9];

  if (!v10)
  {
    v10 = [(GAXOptionsViewController *)self _makeTableViewCellWithIdentifier:v9];
  }

  -[GAXOptionsViewController _configureTableViewCell:withIndex:](self, "_configureTableViewCell:withIndex:", v10, [v6 row]);

  return v10;
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(GAXOptionsViewController *)self _pickerIndexPath];
  v7 = [v5 isEqual:v6];

  if (!v7)
  {
    return 44.0;
  }

  v8 = [(GAXOptionsViewController *)self timeRestrictionsDatePicker];
  [v8 intrinsicContentSize];
  v10 = v9;

  return v10;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(GAXOptionsViewController *)self _pickerIndexPath];
  v7 = [v5 isEqual:v6];

  if (!v7)
  {
    return UITableViewAutomaticDimension;
  }

  v8 = [(GAXOptionsViewController *)self timeRestrictionsDatePicker];
  v9 = [(GAXOptionsViewController *)self timeRestrictionsDatePicker];
  [v9 intrinsicContentSize];
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