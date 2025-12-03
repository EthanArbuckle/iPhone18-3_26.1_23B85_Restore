@interface MTGenericSettingsViewController
+ (id)cellClassForSettingType:(int64_t)type inGroupWithIdentifier:(id)identifier;
+ (id)cellIdentifierForSettingType:(int64_t)type;
+ (id)settingFont;
- (BOOL)_shouldDelayEmphasizeCellScrollToVisible;
- (BOOL)updateSettingForSettingValueChangeByUpdatingCellAtIndexPath:(id)path;
- (MTGenericSettingsViewController)init;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)indexPathForSetting:(id)setting;
- (id)newCellForDescriptionType:(int64_t)type inGroupWithIdentifier:(id)identifier;
- (id)settingAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)_defaultSelectionStyleForSetting:(id)setting;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_configureEmphasisForCell:(id)cell indexPath:(id)path animated:(BOOL)animated;
- (void)_configureEmphasisForCellAtIndexPath:(id)path animated:(BOOL)animated;
- (void)_scrollEmphasizedCellToVisibleIfNecessary;
- (void)configureCell:(id)cell atIndexPath:(id)path withDescription:(id)description inGroupWithIdentifier:(id)identifier;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)dealloc;
- (void)optionSettingChanged:(id)changed value:(unint64_t)value;
- (void)setCell:(id)cell enabled:(BOOL)enabled withDescription:(id)description;
- (void)setCellEmphasisStyle:(int64_t)style;
- (void)setEmphasizedSetting:(id)setting;
- (void)setEmphasizedSetting:(id)setting style:(int64_t)style;
- (void)setSettingsController:(id)controller;
- (void)settingsController:(id)controller addedGroup:(id)group atIndex:(int64_t)index;
- (void)settingsController:(id)controller didChangeHeaderAction:(id)action inGroupWithIdentifier:(id)identifier;
- (void)settingsController:(id)controller didChangeSettingValueAtIndex:(int64_t)index inGroupWithIdentifier:(id)identifier;
- (void)settingsController:(id)controller reloadedGroupWithIdentifier:(id)identifier;
- (void)settingsController:(id)controller removedGroupAtIndex:(int64_t)index;
- (void)settingsController:(id)controller removedSettingAtIndex:(int64_t)index inGroupWithIdentifier:(id)identifier;
- (void)switchSettingChanged:(id)changed value:(BOOL)value;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section;
- (void)textSettingChanged:(id)changed value:(id)value;
- (void)updateRowHeight;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MTGenericSettingsViewController

+ (id)settingFont
{
  if ([self isMacIdiom])
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

+ (id)cellClassForSettingType:(int64_t)type inGroupWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (type <= 9)
  {
    v7 = objc_opt_class();
    v4 = NSStringFromClass(v7);
  }

  return v4;
}

+ (id)cellIdentifierForSettingType:(int64_t)type
{
  if ((type - 1) > 8)
  {
    return @"MTSettingSwitchType";
  }

  else
  {
    return *(&off_1004DD310 + type - 1);
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
  tableView = [(MTGenericSettingsViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"MTSettingsWithActionHeaderView"];
  [(MTGenericSettingsViewController *)self updateRowHeight];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = MTGenericSettingsViewController;
  [(MTGenericSettingsViewController *)&v5 viewWillAppear:appear];
  tableView = [(MTGenericSettingsViewController *)self tableView];
  [tableView reloadData];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MTGenericSettingsViewController;
  [(MTGenericSettingsViewController *)&v4 viewDidAppear:appear];
  [(MTGenericSettingsViewController *)self _scrollEmphasizedCellToVisibleIfNecessary];
}

- (void)contentSizeCategoryDidChange:(id)change
{
  view = [(MTGenericSettingsViewController *)self view];
  [view setNeedsLayout];

  [(MTGenericSettingsViewController *)self updateRowHeight];
}

- (void)updateRowHeight
{
  tableView = [(MTGenericSettingsViewController *)self tableView];
  [objc_opt_class() rowHeight];
  [tableView setRowHeight:?];

  tableView2 = [(MTGenericSettingsViewController *)self tableView];
  [tableView2 reloadData];
}

- (void)setEmphasizedSetting:(id)setting style:(int64_t)style
{
  settingCopy = setting;
  emphasizedSetting = self->_emphasizedSetting;
  v8 = self->_cellEmphasisStyle != style;
  v9 = [(MTGenericSettingsViewController *)self indexPathForSetting:emphasizedSetting];
  if (emphasizedSetting == settingCopy)
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
  objc_storeStrong(&self->_emphasizedSetting, setting);
  self->_cellEmphasisStyle = style;
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
  navigationController = [(MTGenericSettingsViewController *)self navigationController];
  if (navigationController)
  {
    view = [(MTGenericSettingsViewController *)self view];
    window = [view window];
    v6 = window == 0;
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
        tableView = [(MTGenericSettingsViewController *)self tableView];
        [tableView rectForRowAtIndexPath:v26];
        v6 = v5;
        v8 = v7;
        v10 = v9;
        v12 = v11;
        [tableView visibleBounds];
        Height = CGRectGetHeight(v28);
        v29.origin.x = v6;
        v29.origin.y = v8;
        v29.size.width = v10;
        v29.size.height = v12;
        v14 = CGRectGetMaxY(v29) + Height * -0.5;
        [tableView adjustedContentInset];
        v16 = v15;
        v18 = -v17;
        [tableView contentSize];
        v20 = v16 + v19 - Height;
        [tableView contentOffset];
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
        [tableView setContentOffset:v25 animated:{v22, v24}];
        [(MTGenericSettingsViewController *)self _configureEmphasisForCellAtIndexPath:v26 animated:v25];

        v3 = v26;
      }
    }
  }
}

- (void)setEmphasizedSetting:(id)setting
{
  if (self->_cellEmphasisStyle)
  {
    [(MTGenericSettingsViewController *)self setEmphasizedSetting:setting style:self->_cellEmphasisStyle];
  }

  else
  {
    [(MTGenericSettingsViewController *)self setEmphasizedSetting:setting style:2];
  }
}

- (void)setCellEmphasisStyle:(int64_t)style
{
  if (self->_cellEmphasisStyle != style)
  {
    self->_cellEmphasisStyle = style;
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

- (void)_configureEmphasisForCellAtIndexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  pathCopy = path;
  tableView = [(MTGenericSettingsViewController *)self tableView];
  v8 = [tableView cellForRowAtIndexPath:pathCopy];

  [(MTGenericSettingsViewController *)self _configureEmphasisForCell:v8 indexPath:pathCopy animated:animatedCopy];
}

- (void)_configureEmphasisForCell:(id)cell indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  v9 = [(MTGenericSettingsViewController *)self settingAtIndexPath:path];
  v10 = v9;
  if (cellCopy)
  {
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = cellCopy;
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
        if (animatedCopy)
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

- (void)setSettingsController:(id)controller
{
  controllerCopy = controller;
  objc_storeStrong(&self->_settingsController, controller);
  [controllerCopy setDelegate:self];
  if ([(MTGenericSettingsViewController *)self isViewLoaded])
  {
    tableView = [(MTGenericSettingsViewController *)self tableView];
    [tableView reloadData];
  }
}

- (id)settingAtIndexPath:(id)path
{
  settingsController = self->_settingsController;
  pathCopy = path;
  order = [(MTSettingsController *)settingsController order];
  v7 = [order objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  groups = [(MTSettingsController *)self->_settingsController groups];
  v9 = [groups objectForKeyedSubscript:v7];
  groupSettings = [v9 groupSettings];

  v11 = [pathCopy row];
  v12 = [groupSettings objectAtIndexedSubscript:v11];

  return v12;
}

- (id)indexPathForSetting:(id)setting
{
  settingCopy = setting;
  if (settingCopy)
  {
    groups = [(MTSettingsController *)self->_settingsController groups];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100124E54;
    v19[3] = &unk_1004DD250;
    v6 = settingCopy;
    v20 = v6;
    v7 = [groups keysOfEntriesPassingTest:v19];
    anyObject = [v7 anyObject];

    order = [(MTSettingsController *)self->_settingsController order];
    v10 = [order indexOfObject:anyObject];

    group = [v6 group];
    groupSettings = [group groupSettings];
    v13 = [groupSettings indexOfObject:v6];

    if (v10 == 0x7FFFFFFFFFFFFFFFLL || v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = _MTLogCategoryDefault();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        order2 = [(MTSettingsController *)self->_settingsController order];
        *buf = 138543874;
        v22 = v6;
        v23 = 2114;
        v24 = anyObject;
        v25 = 2114;
        v26 = order2;
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

- (void)setCell:(id)cell enabled:(BOOL)enabled withDescription:(id)description
{
  enabledCopy = enabled;
  cellCopy = cell;
  descriptionCopy = description;
  if (enabledCopy)
  {
    v9 = [(MTGenericSettingsViewController *)self _defaultSelectionStyleForSetting:descriptionCopy];
  }

  else
  {
    v9 = 0;
  }

  [cellCopy setSelectionStyle:v9];
  textLabel = [cellCopy textLabel];
  [textLabel setEnabled:enabledCopy];

  detailTextLabel = [cellCopy detailTextLabel];
  [detailTextLabel setEnabled:enabledCopy];

  if ([descriptionCopy type])
  {
    if (!enabledCopy)
    {
      goto LABEL_11;
    }
  }

  else
  {
    [cellCopy setEnabled:enabledCopy];
    if (!enabledCopy)
    {
      goto LABEL_11;
    }
  }

  v12 = [(MTGenericSettingsViewController *)self indexPathForSetting:descriptionCopy];
  if (v12)
  {
    [(MTGenericSettingsViewController *)self _configureEmphasisForCell:cellCopy indexPath:v12 animated:0];
  }

LABEL_11:
}

- (int64_t)_defaultSelectionStyleForSetting:(id)setting
{
  if ([setting type])
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (void)configureCell:(id)cell atIndexPath:(id)path withDescription:(id)description inGroupWithIdentifier:(id)identifier
{
  cellCopy = cell;
  pathCopy = path;
  descriptionCopy = description;
  identifierCopy = identifier;
  textLabel = [cellCopy textLabel];
  title = [descriptionCopy title];
  [textLabel setText:title];

  textLabel2 = [cellCopy textLabel];
  [textLabel2 setAdjustsFontSizeToFitWidth:1];

  textLabel3 = [cellCopy textLabel];
  [textLabel3 setBaselineAdjustment:1];

  textLabel4 = [cellCopy textLabel];
  [textLabel4 setMinimumScaleFactor:0.9];

  if ([objc_opt_class() isMacIdiom])
  {
    [UIFont systemFontOfSize:13.0];
  }

  else
  {
    [UIFont mt_preferredFontForTextStyle:UIFontTextStyleBody];
  }
  v19 = ;
  textLabel5 = [cellCopy textLabel];
  [textLabel5 setFont:v19];

  detailTextLabel = [cellCopy detailTextLabel];
  [detailTextLabel setFont:v19];

  objc_initWeak(&location, self);
  type = [descriptionCopy type];
  if (type > 3)
  {
    if (type > 6)
    {
      if (type == 7)
      {
        detailTextLabel2 = descriptionCopy;
        radioGroup = [detailTextLabel2 radioGroup];
        value = [detailTextLabel2 value];
        v32 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [radioGroup value]);
        v33 = [value isEqual:v32];

        if (v33)
        {
          v34 = 3;
        }

        else
        {
          v34 = 0;
        }

        [cellCopy setAccessoryType:v34];
        if ([(MTGenericSettingsViewController *)self _radioButtonTintsTextColorOnSelection])
        {
          v35 = +[UIColor cellTextColor];
          textLabel6 = [cellCopy textLabel];
          [textLabel6 setTextColor:v35];
        }

        goto LABEL_24;
      }

      if (type != 9)
      {
        goto LABEL_25;
      }

      detailTextLabel2 = cellCopy;
      value2 = [descriptionCopy value];
      messageLabel = [detailTextLabel2 messageLabel];
      [messageLabel setText:value2];
    }

    else
    {
      if (type == 4)
      {
        detailTextLabel2 = [cellCopy detailTextLabel];
        value2 = [descriptionCopy value];
        [detailTextLabel2 setText:value2];
        goto LABEL_23;
      }

      if (type != 5)
      {
        goto LABEL_25;
      }

      detailTextLabel2 = descriptionCopy;
      value2 = [cellCopy detailTextLabel];
      messageLabel = [detailTextLabel2 currentShortTitle];
      [value2 setText:messageLabel];
    }

LABEL_23:
    goto LABEL_24;
  }

  if (type > 1)
  {
    if (type == 2)
    {
      detailTextLabel3 = [cellCopy detailTextLabel];
      value3 = [descriptionCopy value];
      [detailTextLabel3 setText:value3];
    }

    detailTextLabel2 = [cellCopy textLabel];
    value2 = +[UIColor appTintColor];
    [detailTextLabel2 setTextColor:value2];
    goto LABEL_23;
  }

  if (!type)
  {
    detailTextLabel2 = cellCopy;
    value4 = [descriptionCopy value];
    [detailTextLabel2 toggleOn:{objc_msgSend(value4, "BOOLValue")}];

    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100125504;
    v38[3] = &unk_1004DD278;
    objc_copyWeak(&v40, &location);
    v39 = descriptionCopy;
    [detailTextLabel2 setToggleChanged:v38];

    objc_destroyWeak(&v40);
    goto LABEL_24;
  }

  if (type == 1)
  {
    textLabel7 = [cellCopy textLabel];
    v24 = +[UIColor cellTextColor];
    [textLabel7 setTextColor:v24];

    detailTextLabel2 = [cellCopy textLabel];
    [detailTextLabel2 setTextAlignment:1];
LABEL_24:
  }

LABEL_25:
  objc_destroyWeak(&location);
}

- (id)newCellForDescriptionType:(int64_t)type inGroupWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [objc_opt_class() cellClassForSettingType:type inGroupWithIdentifier:identifierCopy];
  v7 = NSClassFromString(v6);

  v8 = [MTGenericSettingsViewController cellClassForSettingType:type inGroupWithIdentifier:identifierCopy];
  v9 = NSClassFromString(v8);

  if (([(objc_class *)v7 isSubclassOfClass:v9]& 1) == 0)
  {
    v18 = [NSString stringWithFormat:@"%@ is not a subclass of %@", v7, v9];
    v19 = [NSException exceptionWithName:@"MTInvalidCellClass" reason:v18 userInfo:0];
    v20 = v19;

    objc_exception_throw(v19);
  }

  v10 = NSStringFromClass(v7);
  v11 = [objc_opt_class() cellIdentifierForSettingType:type];
  v12 = [NSString stringWithFormat:@"%@%@", v10, v11];

  if (type <= 4)
  {
    if (type > 1)
    {
      if (type != 2 && type != 3)
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

    if (type >= 2)
    {
      goto LABEL_21;
    }

LABEL_16:
    v15 = [v7 alloc];
    v16 = 0;
    goto LABEL_17;
  }

  if (type <= 6)
  {
    if (type == 5)
    {
      v10 = [[v7 alloc] initWithStyle:1 reuseIdentifier:v12];
      v14 = [objc_opt_class() isMacIdiom] ^ 1;
      v13 = v10;
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (type == 7)
  {
    v13 = [[v7 alloc] initWithStyle:1 reuseIdentifier:v12];
    v10 = v13;
    v14 = 3;
    goto LABEL_20;
  }

  if (type != 8)
  {
    if (type != 9)
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

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(MTGenericSettingsViewController *)self settingAtIndexPath:pathCopy];
  order = [(MTSettingsController *)self->_settingsController order];
  section = [pathCopy section];

  v9 = [order objectAtIndexedSubscript:section];
  [(MTGenericSettingsViewController *)self heightForRowWithDescription:v6 inGroupWithIdentifier:v9];
  v11 = v10;

  return v11;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  order = [(MTSettingsController *)self->_settingsController order];
  v7 = [order objectAtIndexedSubscript:section];

  groups = [(MTSettingsController *)self->_settingsController groups];
  v9 = [groups objectForKeyedSubscript:v7];

  groupFooter = [v9 groupFooter];
  if ([groupFooter length])
  {
    v11 = objc_alloc_init(MTGenericSettingsFooterLabelView);
    textView = [(MTGenericSettingsFooterLabelView *)v11 textView];
    [textView setAttributedText:groupFooter];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  order = [(MTSettingsController *)self->_settingsController order];
  v4 = [order count];

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  order = [(MTSettingsController *)self->_settingsController order];
  v7 = [order objectAtIndexedSubscript:section];

  groups = [(MTSettingsController *)self->_settingsController groups];
  v9 = [groups objectForKeyedSubscript:v7];
  groupSettings = [v9 groupSettings];
  v11 = [groupSettings count];

  return v11;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(MTGenericSettingsViewController *)self settingAtIndexPath:pathCopy];
  v9 = [objc_opt_class() cellIdentifierForSettingType:{objc_msgSend(v8, "type")}];
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9];

  if (!v10)
  {
    type = [v8 type];
    order = [(MTSettingsController *)self->_settingsController order];
    v13 = [order objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
    v10 = [(MTGenericSettingsViewController *)self newCellForDescriptionType:type inGroupWithIdentifier:v13];
  }

  order2 = [(MTSettingsController *)self->_settingsController order];
  v15 = [order2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  [(MTGenericSettingsViewController *)self configureCell:v10 atIndexPath:pathCopy withDescription:v8 inGroupWithIdentifier:v15];

  return v10;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(MTGenericSettingsViewController *)self settingAtIndexPath:pathCopy];
  order = [(MTSettingsController *)self->_settingsController order];
  v8 = [order objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  disabledGroups = [(MTSettingsController *)self->_settingsController disabledGroups];
  if ([disabledGroups containsObject:v8])
  {
  }

  else
  {
    enabled = [v6 enabled];

    if (enabled)
    {
      v11 = pathCopy;
      goto LABEL_6;
    }
  }

  v11 = 0;
LABEL_6:

  return v11;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(MTGenericSettingsViewController *)self settingAtIndexPath:pathCopy];
  type = [v8 type];
  if (type > 3)
  {
    switch(type)
    {
      case 4:
        generator = [v8 generator];
        v28 = generator[2]();

        navigationController = [(MTGenericSettingsViewController *)self navigationController];
        [navigationController pushViewController:v28 animated:1];

        break;
      case 5:
        v30 = v8;
        options = [v30 options];
        v32 = [(MTGenericSettingsViewController *)self optionsTableViewControllerWithOption:v30];
        headerTitle = [v30 headerTitle];
        [v32 setTitle:headerTitle];

        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_10012612C;
        v47[3] = &unk_1004DD2A0;
        v47[4] = self;
        v48 = v30;
        v49 = options;
        v50 = pathCopy;
        v34 = options;
        v35 = v30;
        [v32 setOptionSelectedBlock:v47];
        metricDataSource = [(MTGenericSettingsViewController *)self metricDataSource];
        [v32 setMetricDataSource:metricDataSource];

        navigationController2 = [(MTGenericSettingsViewController *)self navigationController];
        [navigationController2 pushViewController:v32 animated:1];

        break;
      case 7:
        v41 = pathCopy;
        v42 = viewCopy;
        v40 = v8;
        v11 = v8;
        radioGroup = [v11 radioGroup];
        value = [v11 value];
        [radioGroup setValue:{objc_msgSend(value, "unsignedIntegerValue")}];

        changeHandler = [radioGroup changeHandler];
        v39 = v11;
        value2 = [v11 value];
        (changeHandler)[2](changeHandler, [value2 unsignedIntegerValue]);

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v38 = radioGroup;
        settings = [radioGroup settings];
        v17 = [settings countByEnumeratingWithState:&v43 objects:v51 count:16];
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
                objc_enumerationMutation(settings);
              }

              v21 = *(*(&v43 + 1) + 8 * i);
              v22 = [(MTGenericSettingsViewController *)self indexPathForSetting:v21];
              if (v22)
              {
                tableView = [(MTGenericSettingsViewController *)self tableView];
                v24 = [tableView cellForRowAtIndexPath:v22];

                order = [(MTSettingsController *)self->_settingsController order];
                v26 = [order objectAtIndexedSubscript:{objc_msgSend(v22, "section")}];

                [(MTGenericSettingsViewController *)self configureCell:v24 atIndexPath:v22 withDescription:v21 inGroupWithIdentifier:v26];
              }
            }

            v18 = [settings countByEnumeratingWithState:&v43 objects:v51 count:16];
          }

          while (v18);
        }

        pathCopy = v41;
        viewCopy = v42;
        v8 = v40;
        break;
    }
  }

  else if ((type - 1) < 3)
  {
    changeHandler2 = [v8 changeHandler];
    changeHandler2[2](changeHandler2, 0);
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  order = [(MTSettingsController *)self->_settingsController order];
  v8 = [order objectAtIndexedSubscript:section];

  groups = [(MTSettingsController *)self->_settingsController groups];
  v10 = [groups objectForKeyedSubscript:v8];

  headerAction = [v10 headerAction];
  if (headerAction)
  {
    v12 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"MTSettingsWithActionHeaderView"];
    [v12 setAction:headerAction];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  order = [(MTSettingsController *)self->_settingsController order];
  v7 = [order objectAtIndexedSubscript:section];

  groups = [(MTSettingsController *)self->_settingsController groups];
  v9 = [groups objectForKeyedSubscript:v7];

  groupTitle = [v9 groupTitle];

  return groupTitle;
}

- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section
{
  headerViewCopy = headerView;
  if ([objc_opt_class() isMacIdiom])
  {
    contentView = [headerViewCopy contentView];
    v6 = +[UIColor systemBackgroundColor];
    [contentView setBackgroundColor:v6];
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  settingsController = self->_settingsController;
  pathCopy = path;
  cellCopy = cell;
  order = [(MTSettingsController *)settingsController order];
  v14 = [order objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  v11 = [(MTGenericSettingsViewController *)self settingAtIndexPath:pathCopy];

  disabledGroups = [(MTSettingsController *)self->_settingsController disabledGroups];
  if ([disabledGroups containsObject:v14])
  {
    enabled = 0;
  }

  else
  {
    enabled = [v11 enabled];
  }

  [(MTGenericSettingsViewController *)self setCell:cellCopy enabled:enabled withDescription:v11];
}

- (void)settingsController:(id)controller reloadedGroupWithIdentifier:(id)identifier
{
  settingsController = self->_settingsController;
  identifierCopy = identifier;
  order = [(MTSettingsController *)settingsController order];
  v8 = [order indexOfObject:identifierCopy];

  tableView = [(MTGenericSettingsViewController *)self tableView];
  numberOfSections = [tableView numberOfSections];

  if (v8 < numberOfSections)
  {
    tableView2 = [(MTGenericSettingsViewController *)self tableView];
    v11 = [NSIndexSet indexSetWithIndex:v8];
    [tableView2 reloadSections:v11 withRowAnimation:100];
  }
}

- (void)settingsController:(id)controller addedGroup:(id)group atIndex:(int64_t)index
{
  v7 = [(MTGenericSettingsViewController *)self tableView:controller];
  v6 = [NSIndexSet indexSetWithIndex:index];
  [v7 insertSections:v6 withRowAnimation:100];
}

- (void)settingsController:(id)controller didChangeHeaderAction:(id)action inGroupWithIdentifier:(id)identifier
{
  actionCopy = action;
  settingsController = self->_settingsController;
  identifierCopy = identifier;
  order = [(MTSettingsController *)settingsController order];
  v10 = [order indexOfObject:identifierCopy];

  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    tableView = [(MTGenericSettingsViewController *)self tableView];
    v12 = [tableView headerViewForSection:v10];

    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v12 setAction:actionCopy];
      }

      else
      {
        tableView2 = [(MTGenericSettingsViewController *)self tableView];
        v14 = [NSIndexSet indexSetWithIndex:v10];
        [tableView2 reloadSections:v14 withRowAnimation:100];
      }
    }
  }
}

- (void)settingsController:(id)controller removedGroupAtIndex:(int64_t)index
{
  tableView = [(MTGenericSettingsViewController *)self tableView];
  v5 = [NSIndexSet indexSetWithIndex:index];
  [tableView deleteSections:v5 withRowAnimation:100];
}

- (void)settingsController:(id)controller removedSettingAtIndex:(int64_t)index inGroupWithIdentifier:(id)identifier
{
  settingsController = self->_settingsController;
  identifierCopy = identifier;
  order = [(MTSettingsController *)settingsController order];
  v10 = [order indexOfObject:identifierCopy];

  tableView = [(MTGenericSettingsViewController *)self tableView];
  v12 = [NSIndexPath indexPathForRow:index inSection:v10];
  v14 = v12;
  v13 = [NSArray arrayWithObjects:&v14 count:1];
  [tableView deleteRowsAtIndexPaths:v13 withRowAnimation:100];
}

- (void)settingsController:(id)controller didChangeSettingValueAtIndex:(int64_t)index inGroupWithIdentifier:(id)identifier
{
  settingsController = self->_settingsController;
  identifierCopy = identifier;
  order = [(MTSettingsController *)settingsController order];
  v10 = [order indexOfObject:identifierCopy];

  v11 = [NSIndexPath indexPathForRow:index inSection:v10];

  if (![(MTGenericSettingsViewController *)self updateSettingForSettingValueChangeByUpdatingCellAtIndexPath:v11])
  {
    tableView = [(MTGenericSettingsViewController *)self tableView];
    v14 = v11;
    v13 = [NSArray arrayWithObjects:&v14 count:1];
    [tableView reloadRowsAtIndexPaths:v13 withRowAnimation:100];
  }
}

- (BOOL)updateSettingForSettingValueChangeByUpdatingCellAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(MTGenericSettingsViewController *)self settingAtIndexPath:pathCopy];
  tableView = [(MTGenericSettingsViewController *)self tableView];
  v7 = [tableView cellForRowAtIndexPath:pathCopy];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    value = [v5 value];
    [v7 toggleOn:objc_msgSend(value animated:{"BOOLValue"), 1}];
  }

  return isKindOfClass & 1;
}

- (void)optionSettingChanged:(id)changed value:(unint64_t)value
{
  changedCopy = changed;
  v6 = [NSNumber numberWithUnsignedInteger:value];
  [changedCopy setValue:v6];

  changeHandler = [changedCopy changeHandler];

  v7 = [NSNumber numberWithUnsignedInteger:value];
  changeHandler[2](changeHandler, v7);
}

- (void)switchSettingChanged:(id)changed value:(BOOL)value
{
  valueCopy = value;
  changedCopy = changed;
  title = [changedCopy title];
  v8 = [NSNumber numberWithBool:valueCopy];
  [changedCopy setValue:v8];

  changeHandler = [changedCopy changeHandler];
  v10 = [NSNumber numberWithBool:valueCopy];
  (changeHandler)[2](changeHandler, v10);

  v11 = [(MTGenericSettingsViewController *)self indexPathForSetting:changedCopy];
  title2 = [changedCopy title];

  LOBYTE(changedCopy) = [title isEqualToString:title2];
  if ((changedCopy & 1) == 0 && v11)
  {
    tableView = [(MTGenericSettingsViewController *)self tableView];
    v15 = v11;
    v14 = [NSArray arrayWithObjects:&v15 count:1];
    [tableView reloadRowsAtIndexPaths:v14 withRowAnimation:5];
  }
}

- (void)textSettingChanged:(id)changed value:(id)value
{
  changedCopy = changed;
  valueCopy = value;
  if ([valueCopy length])
  {
    [changedCopy setValue:valueCopy];
    changeHandler = [changedCopy changeHandler];
    (changeHandler)[2](changeHandler, valueCopy);
  }

  else
  {
    changeHandler = [(MTGenericSettingsViewController *)self indexPathForSetting:changedCopy];
    tableView = [(MTGenericSettingsViewController *)self tableView];
    v10 = tableView;
    if (changeHandler)
    {
      v12 = changeHandler;
      v11 = [NSArray arrayWithObjects:&v12 count:1];
      [v10 reloadRowsAtIndexPaths:v11 withRowAnimation:5];
    }

    else
    {
      [tableView reloadData];
    }
  }
}

@end