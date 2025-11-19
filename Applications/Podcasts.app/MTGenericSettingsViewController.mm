@interface MTGenericSettingsViewController
+ (id)cellClassForSettingType:(int64_t)a3 inGroupWithIdentifier:(id)a4;
+ (id)cellIdentifierForSettingType:(int64_t)a3;
+ (id)settingFont;
- (BOOL)_shouldDelayEmphasizeCellScrollToVisible;
- (BOOL)updateSettingForSettingValueChangeByUpdatingCellAtIndexPath:(id)a3;
- (MTGenericSettingsViewController)init;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)indexPathForSetting:(id)a3;
- (id)newCellForDescriptionType:(int64_t)a3 inGroupWithIdentifier:(id)a4;
- (id)settingAtIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)_defaultSelectionStyleForSetting:(id)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_configureEmphasisForCell:(id)a3 indexPath:(id)a4 animated:(BOOL)a5;
- (void)_configureEmphasisForCellAtIndexPath:(id)a3 animated:(BOOL)a4;
- (void)_scrollEmphasizedCellToVisibleIfNecessary;
- (void)configureCell:(id)a3 atIndexPath:(id)a4 withDescription:(id)a5 inGroupWithIdentifier:(id)a6;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)dealloc;
- (void)optionSettingChanged:(id)a3 value:(unint64_t)a4;
- (void)setCell:(id)a3 enabled:(BOOL)a4 withDescription:(id)a5;
- (void)setCellEmphasisStyle:(int64_t)a3;
- (void)setEmphasizedSetting:(id)a3;
- (void)setEmphasizedSetting:(id)a3 style:(int64_t)a4;
- (void)setSettingsController:(id)a3;
- (void)settingsController:(id)a3 addedGroup:(id)a4 atIndex:(int64_t)a5;
- (void)settingsController:(id)a3 didChangeHeaderAction:(id)a4 inGroupWithIdentifier:(id)a5;
- (void)settingsController:(id)a3 didChangeSettingValueAtIndex:(int64_t)a4 inGroupWithIdentifier:(id)a5;
- (void)settingsController:(id)a3 reloadedGroupWithIdentifier:(id)a4;
- (void)settingsController:(id)a3 removedGroupAtIndex:(int64_t)a4;
- (void)settingsController:(id)a3 removedSettingAtIndex:(int64_t)a4 inGroupWithIdentifier:(id)a5;
- (void)switchSettingChanged:(id)a3 value:(BOOL)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5;
- (void)textSettingChanged:(id)a3 value:(id)a4;
- (void)updateRowHeight;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation MTGenericSettingsViewController

+ (id)settingFont
{
  if ([a1 isMacIdiom])
  {
    [UIFont systemFontOfSize:15.0];
  }

  else
  {
    [UIFont mt_preferredFontForTextStyle:UIFontTextStyleBody];
  }
  v2 = ;

  return v2;
}

+ (id)cellClassForSettingType:(int64_t)a3 inGroupWithIdentifier:(id)a4
{
  v6 = a4;
  if (a3 <= 9)
  {
    v7 = objc_opt_class();
    v4 = NSStringFromClass(v7);
  }

  return v4;
}

+ (id)cellIdentifierForSettingType:(int64_t)a3
{
  if ((a3 - 1) > 8)
  {
    return @"MTSettingSwitchType";
  }

  else
  {
    return *(&off_1004DD310 + a3 - 1);
  }
}

- (MTGenericSettingsViewController)init
{
  v6.receiver = self;
  v6.super_class = MTGenericSettingsViewController;
  v2 = [(MTGenericSettingsViewController *)&v6 initWithStyle:2];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"syncControllerOperationCompleted:" name:@"MTSyncControllerOperationCompleted" object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MTGenericSettingsViewController;
  [(MTGenericSettingsViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = MTGenericSettingsViewController;
  [(MTGenericSettingsViewController *)&v4 viewDidLoad];
  v3 = [(MTGenericSettingsViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"MTSettingsWithActionHeaderView"];
  [(MTGenericSettingsViewController *)self updateRowHeight];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MTGenericSettingsViewController;
  [(MTGenericSettingsViewController *)&v5 viewWillAppear:a3];
  v4 = [(MTGenericSettingsViewController *)self tableView];
  [v4 reloadData];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MTGenericSettingsViewController;
  [(MTGenericSettingsViewController *)&v4 viewDidAppear:a3];
  [(MTGenericSettingsViewController *)self _scrollEmphasizedCellToVisibleIfNecessary];
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  v4 = [(MTGenericSettingsViewController *)self view];
  [v4 setNeedsLayout];

  [(MTGenericSettingsViewController *)self updateRowHeight];
}

- (void)updateRowHeight
{
  v3 = [(MTGenericSettingsViewController *)self tableView];
  [objc_opt_class() rowHeight];
  [v3 setRowHeight:?];

  v4 = [(MTGenericSettingsViewController *)self tableView];
  [v4 reloadData];
}

- (void)setEmphasizedSetting:(id)a3 style:(int64_t)a4
{
  v12 = a3;
  emphasizedSetting = self->_emphasizedSetting;
  v8 = self->_cellEmphasisStyle != a4;
  v9 = [(MTGenericSettingsViewController *)self indexPathForSetting:emphasizedSetting];
  if (emphasizedSetting == v12)
  {
    v10 = 0;
  }

  else
  {
    if (self->_emphasizedSetting)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v8 = 1;
  }

  v11 = v10;
  objc_storeStrong(&self->_emphasizedSetting, a3);
  self->_cellEmphasisStyle = a4;
  if (v8)
  {
    if (v11)
    {
      [(MTGenericSettingsViewController *)self _configureEmphasisForCellAtIndexPath:v11 animated:+[UIView areAnimationsEnabled]];
    }

    self->_emphasizedCellNeedsScrollToVisible = 1;
    if (![(MTGenericSettingsViewController *)self _shouldDelayEmphasizeCellScrollToVisible])
    {
      [(MTGenericSettingsViewController *)self _scrollEmphasizedCellToVisibleIfNecessary];
    }
  }
}

- (BOOL)_shouldDelayEmphasizeCellScrollToVisible
{
  v3 = [(MTGenericSettingsViewController *)self navigationController];
  if (v3)
  {
    v4 = [(MTGenericSettingsViewController *)self view];
    v5 = [v4 window];
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_scrollEmphasizedCellToVisibleIfNecessary
{
  if (self->_emphasizedCellNeedsScrollToVisible)
  {
    self->_emphasizedCellNeedsScrollToVisible = 0;
    if (self->_emphasizedSetting)
    {
      v3 = [(MTGenericSettingsViewController *)self indexPathForSetting:?];
      if (v3)
      {
        v26 = v3;
        v4 = [(MTGenericSettingsViewController *)self tableView];
        [v4 rectForRowAtIndexPath:v26];
        v6 = v5;
        v8 = v7;
        v10 = v9;
        v12 = v11;
        [v4 visibleBounds];
        Height = CGRectGetHeight(v28);
        v29.origin.x = v6;
        v29.origin.y = v8;
        v29.size.width = v10;
        v29.size.height = v12;
        v14 = CGRectGetMaxY(v29) + Height * -0.5;
        [v4 adjustedContentInset];
        v16 = v15;
        v18 = -v17;
        [v4 contentSize];
        v20 = v16 + v19 - Height;
        [v4 contentOffset];
        v22 = v21;
        if (v14 >= v20)
        {
          v23 = v20;
        }

        else
        {
          v23 = v14;
        }

        if (v23 >= v18)
        {
          v24 = v23;
        }

        else
        {
          v24 = v18;
        }

        v25 = +[UIView areAnimationsEnabled];
        [v4 setContentOffset:v25 animated:{v22, v24}];
        [(MTGenericSettingsViewController *)self _configureEmphasisForCellAtIndexPath:v26 animated:v25];

        v3 = v26;
      }
    }
  }
}

- (void)setEmphasizedSetting:(id)a3
{
  if (self->_cellEmphasisStyle)
  {
    [(MTGenericSettingsViewController *)self setEmphasizedSetting:a3 style:self->_cellEmphasisStyle];
  }

  else
  {
    [(MTGenericSettingsViewController *)self setEmphasizedSetting:a3 style:2];
  }
}

- (void)setCellEmphasisStyle:(int64_t)a3
{
  if (self->_cellEmphasisStyle != a3)
  {
    self->_cellEmphasisStyle = a3;
    if (self->_emphasizedSetting)
    {
      v4 = [(MTGenericSettingsViewController *)self indexPathForSetting:?];
      if (v4)
      {
        v5 = v4;
        [(MTGenericSettingsViewController *)self _configureEmphasisForCellAtIndexPath:v4 animated:+[UIView areAnimationsEnabled]];
        v4 = v5;
      }
    }
  }
}

- (void)_configureEmphasisForCellAtIndexPath:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(MTGenericSettingsViewController *)self tableView];
  v8 = [v7 cellForRowAtIndexPath:v6];

  [(MTGenericSettingsViewController *)self _configureEmphasisForCell:v8 indexPath:v6 animated:v4];
}

- (void)_configureEmphasisForCell:(id)a3 indexPath:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(MTGenericSettingsViewController *)self settingAtIndexPath:a4];
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v8;
        if ([(MTGenericSettingsViewController *)self _isEmphasizedSetting:v10])
        {
          cellEmphasisStyle = self->_cellEmphasisStyle;
        }

        else
        {
          cellEmphasisStyle = 0;
        }

        v15 = _NSConcreteStackBlock;
        v16 = 3221225472;
        v17 = sub_100124A9C;
        v18 = &unk_1004D9720;
        v13 = v11;
        v19 = v13;
        v20 = cellEmphasisStyle;
        v14 = objc_retainBlock(&v15);
        if (v5)
        {
          [v13 selectionFadeDuration];
          [UIView animateWithDuration:v14 animations:0 completion:?];
        }

        else
        {
          [UIView performWithoutAnimation:v14, v15, v16, v17, v18];
        }
      }
    }
  }
}

- (void)setSettingsController:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_settingsController, a3);
  [v6 setDelegate:self];
  if ([(MTGenericSettingsViewController *)self isViewLoaded])
  {
    v5 = [(MTGenericSettingsViewController *)self tableView];
    [v5 reloadData];
  }
}

- (id)settingAtIndexPath:(id)a3
{
  settingsController = self->_settingsController;
  v5 = a3;
  v6 = [(MTSettingsController *)settingsController order];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];

  v8 = [(MTSettingsController *)self->_settingsController groups];
  v9 = [v8 objectForKeyedSubscript:v7];
  v10 = [v9 groupSettings];

  v11 = [v5 row];
  v12 = [v10 objectAtIndexedSubscript:v11];

  return v12;
}

- (id)indexPathForSetting:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(MTSettingsController *)self->_settingsController groups];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100124E54;
    v19[3] = &unk_1004DD250;
    v6 = v4;
    v20 = v6;
    v7 = [v5 keysOfEntriesPassingTest:v19];
    v8 = [v7 anyObject];

    v9 = [(MTSettingsController *)self->_settingsController order];
    v10 = [v9 indexOfObject:v8];

    v11 = [v6 group];
    v12 = [v11 groupSettings];
    v13 = [v12 indexOfObject:v6];

    if (v10 == 0x7FFFFFFFFFFFFFFFLL || v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = _MTLogCategoryDefault();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(MTSettingsController *)self->_settingsController order];
        *buf = 138543874;
        v22 = v6;
        v23 = 2114;
        v24 = v8;
        v25 = 2114;
        v26 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Unable to locate an index path for setting %{public}@ for key %{public}@. All settings: %{public}@", buf, 0x20u);
      }

      v17 = 0;
    }

    else
    {
      v17 = [NSIndexPath indexPathForRow:v13 inSection:v10];
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)setCell:(id)a3 enabled:(BOOL)a4 withDescription:(id)a5
{
  v6 = a4;
  v13 = a3;
  v8 = a5;
  if (v6)
  {
    v9 = [(MTGenericSettingsViewController *)self _defaultSelectionStyleForSetting:v8];
  }

  else
  {
    v9 = 0;
  }

  [v13 setSelectionStyle:v9];
  v10 = [v13 textLabel];
  [v10 setEnabled:v6];

  v11 = [v13 detailTextLabel];
  [v11 setEnabled:v6];

  if ([v8 type])
  {
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    [v13 setEnabled:v6];
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  v12 = [(MTGenericSettingsViewController *)self indexPathForSetting:v8];
  if (v12)
  {
    [(MTGenericSettingsViewController *)self _configureEmphasisForCell:v13 indexPath:v12 animated:0];
  }

LABEL_11:
}

- (int64_t)_defaultSelectionStyleForSetting:(id)a3
{
  if ([a3 type])
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (void)configureCell:(id)a3 atIndexPath:(id)a4 withDescription:(id)a5 inGroupWithIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 textLabel];
  v15 = [v12 title];
  [v14 setText:v15];

  v16 = [v10 textLabel];
  [v16 setAdjustsFontSizeToFitWidth:1];

  v17 = [v10 textLabel];
  [v17 setBaselineAdjustment:1];

  v18 = [v10 textLabel];
  [v18 setMinimumScaleFactor:0.9];

  if ([objc_opt_class() isMacIdiom])
  {
    [UIFont systemFontOfSize:13.0];
  }

  else
  {
    [UIFont mt_preferredFontForTextStyle:UIFontTextStyleBody];
  }
  v19 = ;
  v20 = [v10 textLabel];
  [v20 setFont:v19];

  v21 = [v10 detailTextLabel];
  [v21 setFont:v19];

  objc_initWeak(&location, self);
  v22 = [v12 type];
  if (v22 > 3)
  {
    if (v22 > 6)
    {
      if (v22 == 7)
      {
        v25 = v12;
        v37 = [v25 radioGroup];
        v31 = [v25 value];
        v32 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v37 value]);
        v33 = [v31 isEqual:v32];

        if (v33)
        {
          v34 = 3;
        }

        else
        {
          v34 = 0;
        }

        [v10 setAccessoryType:v34];
        if ([(MTGenericSettingsViewController *)self _radioButtonTintsTextColorOnSelection])
        {
          v35 = +[UIColor cellTextColor];
          v36 = [v10 textLabel];
          [v36 setTextColor:v35];
        }

        goto LABEL_24;
      }

      if (v22 != 9)
      {
        goto LABEL_25;
      }

      v25 = v10;
      v26 = [v12 value];
      v27 = [v25 messageLabel];
      [v27 setText:v26];
    }

    else
    {
      if (v22 == 4)
      {
        v25 = [v10 detailTextLabel];
        v26 = [v12 value];
        [v25 setText:v26];
        goto LABEL_23;
      }

      if (v22 != 5)
      {
        goto LABEL_25;
      }

      v25 = v12;
      v26 = [v10 detailTextLabel];
      v27 = [v25 currentShortTitle];
      [v26 setText:v27];
    }

LABEL_23:
    goto LABEL_24;
  }

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v29 = [v10 detailTextLabel];
      v30 = [v12 value];
      [v29 setText:v30];
    }

    v25 = [v10 textLabel];
    v26 = +[UIColor appTintColor];
    [v25 setTextColor:v26];
    goto LABEL_23;
  }

  if (!v22)
  {
    v25 = v10;
    v28 = [v12 value];
    [v25 toggleOn:{objc_msgSend(v28, "BOOLValue")}];

    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100125504;
    v38[3] = &unk_1004DD278;
    objc_copyWeak(&v40, &location);
    v39 = v12;
    [v25 setToggleChanged:v38];

    objc_destroyWeak(&v40);
    goto LABEL_24;
  }

  if (v22 == 1)
  {
    v23 = [v10 textLabel];
    v24 = +[UIColor cellTextColor];
    [v23 setTextColor:v24];

    v25 = [v10 textLabel];
    [v25 setTextAlignment:1];
LABEL_24:
  }

LABEL_25:
  objc_destroyWeak(&location);
}

- (id)newCellForDescriptionType:(int64_t)a3 inGroupWithIdentifier:(id)a4
{
  v5 = a4;
  v6 = [objc_opt_class() cellClassForSettingType:a3 inGroupWithIdentifier:v5];
  v7 = NSClassFromString(v6);

  v8 = [MTGenericSettingsViewController cellClassForSettingType:a3 inGroupWithIdentifier:v5];
  v9 = NSClassFromString(v8);

  if (([(objc_class *)v7 isSubclassOfClass:v9]& 1) == 0)
  {
    v18 = [NSString stringWithFormat:@"%@ is not a subclass of %@", v7, v9];
    v19 = [NSException exceptionWithName:@"MTInvalidCellClass" reason:v18 userInfo:0];
    v20 = v19;

    objc_exception_throw(v19);
  }

  v10 = NSStringFromClass(v7);
  v11 = [objc_opt_class() cellIdentifierForSettingType:a3];
  v12 = [NSString stringWithFormat:@"%@%@", v10, v11];

  if (a3 <= 4)
  {
    if (a3 > 1)
    {
      if (a3 != 2 && a3 != 3)
      {
        v13 = [[v7 alloc] initWithStyle:1 reuseIdentifier:v12];
        v10 = v13;
        v14 = 1;
LABEL_20:
        [v13 setAccessoryType:v14];
        goto LABEL_21;
      }

      goto LABEL_12;
    }

    if (a3 >= 2)
    {
      goto LABEL_21;
    }

LABEL_16:
    v15 = [v7 alloc];
    v16 = 0;
    goto LABEL_17;
  }

  if (a3 <= 6)
  {
    if (a3 == 5)
    {
      v10 = [[v7 alloc] initWithStyle:1 reuseIdentifier:v12];
      v14 = [objc_opt_class() isMacIdiom] ^ 1;
      v13 = v10;
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (a3 == 7)
  {
    v13 = [[v7 alloc] initWithStyle:1 reuseIdentifier:v12];
    v10 = v13;
    v14 = 3;
    goto LABEL_20;
  }

  if (a3 != 8)
  {
    if (a3 != 9)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

LABEL_12:
  v15 = [v7 alloc];
  v16 = 1;
LABEL_17:
  v10 = [v15 initWithStyle:v16 reuseIdentifier:v12];
LABEL_21:

  return v10;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(MTGenericSettingsViewController *)self settingAtIndexPath:v5];
  v7 = [(MTSettingsController *)self->_settingsController order];
  v8 = [v5 section];

  v9 = [v7 objectAtIndexedSubscript:v8];
  [(MTGenericSettingsViewController *)self heightForRowWithDescription:v6 inGroupWithIdentifier:v9];
  v11 = v10;

  return v11;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = [(MTSettingsController *)self->_settingsController order];
  v7 = [v6 objectAtIndexedSubscript:a4];

  v8 = [(MTSettingsController *)self->_settingsController groups];
  v9 = [v8 objectForKeyedSubscript:v7];

  v10 = [v9 groupFooter];
  if ([v10 length])
  {
    v11 = objc_alloc_init(MTGenericSettingsFooterLabelView);
    v12 = [(MTGenericSettingsFooterLabelView *)v11 textView];
    [v12 setAttributedText:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(MTSettingsController *)self->_settingsController order];
  v4 = [v3 count];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(MTSettingsController *)self->_settingsController order];
  v7 = [v6 objectAtIndexedSubscript:a4];

  v8 = [(MTSettingsController *)self->_settingsController groups];
  v9 = [v8 objectForKeyedSubscript:v7];
  v10 = [v9 groupSettings];
  v11 = [v10 count];

  return v11;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MTGenericSettingsViewController *)self settingAtIndexPath:v6];
  v9 = [objc_opt_class() cellIdentifierForSettingType:{objc_msgSend(v8, "type")}];
  v10 = [v7 dequeueReusableCellWithIdentifier:v9];

  if (!v10)
  {
    v11 = [v8 type];
    v12 = [(MTSettingsController *)self->_settingsController order];
    v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];
    v10 = [(MTGenericSettingsViewController *)self newCellForDescriptionType:v11 inGroupWithIdentifier:v13];
  }

  v14 = [(MTSettingsController *)self->_settingsController order];
  v15 = [v14 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];
  [(MTGenericSettingsViewController *)self configureCell:v10 atIndexPath:v6 withDescription:v8 inGroupWithIdentifier:v15];

  return v10;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(MTGenericSettingsViewController *)self settingAtIndexPath:v5];
  v7 = [(MTSettingsController *)self->_settingsController order];
  v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];

  v9 = [(MTSettingsController *)self->_settingsController disabledGroups];
  if ([v9 containsObject:v8])
  {
  }

  else
  {
    v10 = [v6 enabled];

    if (v10)
    {
      v11 = v5;
      goto LABEL_6;
    }
  }

  v11 = 0;
LABEL_6:

  return v11;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MTGenericSettingsViewController *)self settingAtIndexPath:v7];
  v9 = [v8 type];
  if (v9 > 3)
  {
    switch(v9)
    {
      case 4:
        v27 = [v8 generator];
        v28 = v27[2]();

        v29 = [(MTGenericSettingsViewController *)self navigationController];
        [v29 pushViewController:v28 animated:1];

        break;
      case 5:
        v30 = v8;
        v31 = [v30 options];
        v32 = [(MTGenericSettingsViewController *)self optionsTableViewControllerWithOption:v30];
        v33 = [v30 headerTitle];
        [v32 setTitle:v33];

        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_10012612C;
        v47[3] = &unk_1004DD2A0;
        v47[4] = self;
        v48 = v30;
        v49 = v31;
        v50 = v7;
        v34 = v31;
        v35 = v30;
        [v32 setOptionSelectedBlock:v47];
        v36 = [(MTGenericSettingsViewController *)self metricDataSource];
        [v32 setMetricDataSource:v36];

        v37 = [(MTGenericSettingsViewController *)self navigationController];
        [v37 pushViewController:v32 animated:1];

        break;
      case 7:
        v41 = v7;
        v42 = v6;
        v40 = v8;
        v11 = v8;
        v12 = [v11 radioGroup];
        v13 = [v11 value];
        [v12 setValue:{objc_msgSend(v13, "unsignedIntegerValue")}];

        v14 = [v12 changeHandler];
        v39 = v11;
        v15 = [v11 value];
        (v14)[2](v14, [v15 unsignedIntegerValue]);

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v38 = v12;
        v16 = [v12 settings];
        v17 = [v16 countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v44;
          do
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v44 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v43 + 1) + 8 * i);
              v22 = [(MTGenericSettingsViewController *)self indexPathForSetting:v21];
              if (v22)
              {
                v23 = [(MTGenericSettingsViewController *)self tableView];
                v24 = [v23 cellForRowAtIndexPath:v22];

                v25 = [(MTSettingsController *)self->_settingsController order];
                v26 = [v25 objectAtIndexedSubscript:{objc_msgSend(v22, "section")}];

                [(MTGenericSettingsViewController *)self configureCell:v24 atIndexPath:v22 withDescription:v21 inGroupWithIdentifier:v26];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v43 objects:v51 count:16];
          }

          while (v18);
        }

        v7 = v41;
        v6 = v42;
        v8 = v40;
        break;
    }
  }

  else if ((v9 - 1) < 3)
  {
    v10 = [v8 changeHandler];
    v10[2](v10, 0);
  }

  [v6 deselectRowAtIndexPath:v7 animated:1];
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(MTSettingsController *)self->_settingsController order];
  v8 = [v7 objectAtIndexedSubscript:a4];

  v9 = [(MTSettingsController *)self->_settingsController groups];
  v10 = [v9 objectForKeyedSubscript:v8];

  v11 = [v10 headerAction];
  if (v11)
  {
    v12 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:@"MTSettingsWithActionHeaderView"];
    [v12 setAction:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = [(MTSettingsController *)self->_settingsController order];
  v7 = [v6 objectAtIndexedSubscript:a4];

  v8 = [(MTSettingsController *)self->_settingsController groups];
  v9 = [v8 objectForKeyedSubscript:v7];

  v10 = [v9 groupTitle];

  return v10;
}

- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5
{
  v7 = a4;
  if ([objc_opt_class() isMacIdiom])
  {
    v5 = [v7 contentView];
    v6 = +[UIColor systemBackgroundColor];
    [v5 setBackgroundColor:v6];
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  settingsController = self->_settingsController;
  v8 = a5;
  v9 = a4;
  v10 = [(MTSettingsController *)settingsController order];
  v14 = [v10 objectAtIndexedSubscript:{objc_msgSend(v8, "section")}];

  v11 = [(MTGenericSettingsViewController *)self settingAtIndexPath:v8];

  v12 = [(MTSettingsController *)self->_settingsController disabledGroups];
  if ([v12 containsObject:v14])
  {
    v13 = 0;
  }

  else
  {
    v13 = [v11 enabled];
  }

  [(MTGenericSettingsViewController *)self setCell:v9 enabled:v13 withDescription:v11];
}

- (void)settingsController:(id)a3 reloadedGroupWithIdentifier:(id)a4
{
  settingsController = self->_settingsController;
  v6 = a4;
  v7 = [(MTSettingsController *)settingsController order];
  v8 = [v7 indexOfObject:v6];

  v9 = [(MTGenericSettingsViewController *)self tableView];
  v10 = [v9 numberOfSections];

  if (v8 < v10)
  {
    v12 = [(MTGenericSettingsViewController *)self tableView];
    v11 = [NSIndexSet indexSetWithIndex:v8];
    [v12 reloadSections:v11 withRowAnimation:100];
  }
}

- (void)settingsController:(id)a3 addedGroup:(id)a4 atIndex:(int64_t)a5
{
  v7 = [(MTGenericSettingsViewController *)self tableView:a3];
  v6 = [NSIndexSet indexSetWithIndex:a5];
  [v7 insertSections:v6 withRowAnimation:100];
}

- (void)settingsController:(id)a3 didChangeHeaderAction:(id)a4 inGroupWithIdentifier:(id)a5
{
  v15 = a4;
  settingsController = self->_settingsController;
  v8 = a5;
  v9 = [(MTSettingsController *)settingsController order];
  v10 = [v9 indexOfObject:v8];

  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [(MTGenericSettingsViewController *)self tableView];
    v12 = [v11 headerViewForSection:v10];

    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v12 setAction:v15];
      }

      else
      {
        v13 = [(MTGenericSettingsViewController *)self tableView];
        v14 = [NSIndexSet indexSetWithIndex:v10];
        [v13 reloadSections:v14 withRowAnimation:100];
      }
    }
  }
}

- (void)settingsController:(id)a3 removedGroupAtIndex:(int64_t)a4
{
  v6 = [(MTGenericSettingsViewController *)self tableView];
  v5 = [NSIndexSet indexSetWithIndex:a4];
  [v6 deleteSections:v5 withRowAnimation:100];
}

- (void)settingsController:(id)a3 removedSettingAtIndex:(int64_t)a4 inGroupWithIdentifier:(id)a5
{
  settingsController = self->_settingsController;
  v8 = a5;
  v9 = [(MTSettingsController *)settingsController order];
  v10 = [v9 indexOfObject:v8];

  v11 = [(MTGenericSettingsViewController *)self tableView];
  v12 = [NSIndexPath indexPathForRow:a4 inSection:v10];
  v14 = v12;
  v13 = [NSArray arrayWithObjects:&v14 count:1];
  [v11 deleteRowsAtIndexPaths:v13 withRowAnimation:100];
}

- (void)settingsController:(id)a3 didChangeSettingValueAtIndex:(int64_t)a4 inGroupWithIdentifier:(id)a5
{
  settingsController = self->_settingsController;
  v8 = a5;
  v9 = [(MTSettingsController *)settingsController order];
  v10 = [v9 indexOfObject:v8];

  v11 = [NSIndexPath indexPathForRow:a4 inSection:v10];

  if (![(MTGenericSettingsViewController *)self updateSettingForSettingValueChangeByUpdatingCellAtIndexPath:v11])
  {
    v12 = [(MTGenericSettingsViewController *)self tableView];
    v14 = v11;
    v13 = [NSArray arrayWithObjects:&v14 count:1];
    [v12 reloadRowsAtIndexPaths:v13 withRowAnimation:100];
  }
}

- (BOOL)updateSettingForSettingValueChangeByUpdatingCellAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MTGenericSettingsViewController *)self settingAtIndexPath:v4];
  v6 = [(MTGenericSettingsViewController *)self tableView];
  v7 = [v6 cellForRowAtIndexPath:v4];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v9 = [v5 value];
    [v7 toggleOn:objc_msgSend(v9 animated:{"BOOLValue"), 1}];
  }

  return isKindOfClass & 1;
}

- (void)optionSettingChanged:(id)a3 value:(unint64_t)a4
{
  v5 = a3;
  v6 = [NSNumber numberWithUnsignedInteger:a4];
  [v5 setValue:v6];

  v8 = [v5 changeHandler];

  v7 = [NSNumber numberWithUnsignedInteger:a4];
  v8[2](v8, v7);
}

- (void)switchSettingChanged:(id)a3 value:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 title];
  v8 = [NSNumber numberWithBool:v4];
  [v6 setValue:v8];

  v9 = [v6 changeHandler];
  v10 = [NSNumber numberWithBool:v4];
  (v9)[2](v9, v10);

  v11 = [(MTGenericSettingsViewController *)self indexPathForSetting:v6];
  v12 = [v6 title];

  LOBYTE(v6) = [v7 isEqualToString:v12];
  if ((v6 & 1) == 0 && v11)
  {
    v13 = [(MTGenericSettingsViewController *)self tableView];
    v15 = v11;
    v14 = [NSArray arrayWithObjects:&v15 count:1];
    [v13 reloadRowsAtIndexPaths:v14 withRowAnimation:5];
  }
}

- (void)textSettingChanged:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 length])
  {
    [v6 setValue:v7];
    v8 = [v6 changeHandler];
    (v8)[2](v8, v7);
  }

  else
  {
    v8 = [(MTGenericSettingsViewController *)self indexPathForSetting:v6];
    v9 = [(MTGenericSettingsViewController *)self tableView];
    v10 = v9;
    if (v8)
    {
      v12 = v8;
      v11 = [NSArray arrayWithObjects:&v12 count:1];
      [v10 reloadRowsAtIndexPaths:v11 withRowAnimation:5];
    }

    else
    {
      [v9 reloadData];
    }
  }
}

@end