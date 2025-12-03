@interface BuddyTableChoiceManager
- (BOOL)tableView:(id)view shouldDrawTopSeparatorForSection:(int64_t)section;
- (BuddyTableChoiceManager)initWithCellConstructor:(id)constructor allowManualRowHeight:(BOOL)height;
- (double)heightForFooterInTableView:(id)view;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)viewForFooterInTableView:(id)view;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_updateSelectedChoiceCheckmarkWithtableView:(id)view;
- (void)configureCell:(id)cell atIndexPath:(id)path;
- (void)setChoices:(id)choices;
- (void)setSelectedChoiceIndex:(id)index tableView:(id)view;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation BuddyTableChoiceManager

- (BuddyTableChoiceManager)initWithCellConstructor:(id)constructor allowManualRowHeight:(BOOL)height
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, constructor);
  heightCopy = height;
  v5 = selfCopy;
  selfCopy = 0;
  v11.receiver = v5;
  v11.super_class = BuddyTableChoiceManager;
  v6 = [(BuddyTableChoiceManager *)&v11 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    v7 = objc_retainBlock(location[0]);
    v8 = *(selfCopy + 9);
    *(selfCopy + 9) = v7;

    *(selfCopy + 33) = heightCopy;
  }

  v9 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (void)setSelectedChoiceIndex:(id)index tableView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, index);
  v21 = 0;
  objc_storeStrong(&v21, view);
  choices = [(BuddyChoiceManager *)selfCopy choices];
  v6 = -[NSArray objectAtIndexedSubscript:](choices, "objectAtIndexedSubscript:", [location[0] section]);
  v20 = [v6 objectAtIndexedSubscript:{objc_msgSend(location[0], "row")}];

  wantsNextButton = [(BuddyTableChoiceManager *)selfCopy wantsNextButton];
  if (selfCopy->_selectedChoice && (wantsNextButton & 1) != 0)
  {
    v18 = [v21 cellForRowAtIndexPath:selfCopy->_selectedChoiceIndexPath];
    [v18 setAccessoryType:0];
    textLabel = [v18 textLabel];
    v8 = +[UIColor _labelColor];
    [textLabel setTextColor:v8];

    objc_storeStrong(&v18, 0);
  }

  objc_storeStrong(&selfCopy->_selectedChoiceIndexPath, location[0]);
  objc_storeStrong(&selfCopy->_selectedChoice, v20);
  if (wantsNextButton)
  {
    [(BuddyTableChoiceManager *)selfCopy _updateSelectedChoiceCheckmarkWithtableView:v21];
  }

  objc_initWeak(&from, selfCopy);
  v9 = v20;
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_10009AC2C;
  v14 = &unk_10032BA20;
  objc_copyWeak(&v16, &from);
  v15 = selfCopy;
  [v9 runConfirmationIfNeededCompletion:&v10];
  objc_storeStrong(&v15, 0);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&from);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateSelectedChoiceCheckmarkWithtableView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  if (selfCopy->_selectedChoice)
  {
    selectedChoiceIndexPath = [(BuddyTableChoiceManager *)selfCopy selectedChoiceIndexPath];
    if (selectedChoiceIndexPath)
    {
      v5 = [location[0] cellForRowAtIndexPath:selectedChoiceIndexPath];
      [v5 setAccessoryType:3];
      textLabel = [v5 textLabel];
      v4 = +[UIColor tableCellBlueTextColor];
      [textLabel setTextColor:v4];

      [v5 setNeedsLayout];
      objc_storeStrong(&v5, 0);
    }

    objc_storeStrong(&selectedChoiceIndexPath, 0);
  }

  objc_storeStrong(location, 0);
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  choices = [(BuddyChoiceManager *)selfCopy choices];
  v4 = [(NSArray *)choices count];

  objc_storeStrong(location, 0);
  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  sectionCopy = section;
  choices = [(BuddyChoiceManager *)selfCopy choices];
  v6 = [(NSArray *)choices objectAtIndexedSubscript:sectionCopy];
  v7 = [v6 count];

  objc_storeStrong(location, 0);
  return v7;
}

- (void)configureCell:(id)cell atIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cell);
  v19 = 0;
  objc_storeStrong(&v19, path);
  v5 = +[BFFStyle sharedStyle];
  [v5 applyThemeToTableCell:location[0]];

  textLabel = [location[0] textLabel];
  [textLabel setLineBreakMode:0];

  textLabel2 = [location[0] textLabel];
  [textLabel2 setNumberOfLines:0];

  textLabel3 = [location[0] textLabel];
  choices = [(BuddyChoiceManager *)selfCopy choices];
  v10 = -[NSArray objectAtIndexedSubscript:](choices, "objectAtIndexedSubscript:", [v19 section]);
  v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v19, "row")}];
  title = [v11 title];
  [textLabel3 setText:title];

  v17 = 0;
  v13 = 0;
  if ([(BuddyTableChoiceManager *)selfCopy wantsNextButton])
  {
    v14 = [v19 row];
    selectedChoiceIndexPath = [(BuddyTableChoiceManager *)selfCopy selectedChoiceIndexPath];
    v17 = 1;
    v13 = v14 == [(NSIndexPath *)selectedChoiceIndexPath row];
  }

  if (v17)
  {
  }

  if (v13)
  {
    [location[0] setAccessoryType:3];
    textLabel4 = [location[0] textLabel];
    v16 = +[UIColor tableCellBlueTextColor];
    [textLabel4 setTextColor:v16];
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v8 = 0;
  objc_storeStrong(&v8, cell);
  v7 = 0;
  objc_storeStrong(&v7, path);
  [v8 setSeparatorStyle:1];
  [v8 _setShouldHaveFullLengthTopSeparator:0];
  [v8 _setShouldHaveFullLengthBottomSeparator:0];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v15 = 0;
  objc_storeStrong(&v15, path);
  cellConstructor = [(BuddyTableChoiceManager *)selfCopy cellConstructor];

  if (cellConstructor)
  {
    cellConstructor2 = [(BuddyTableChoiceManager *)selfCopy cellConstructor];
    v7 = location[0];
    choices = [(BuddyChoiceManager *)selfCopy choices];
    v9 = -[NSArray objectAtIndexedSubscript:](choices, "objectAtIndexedSubscript:", [v15 section]);
    v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v15, "row")}];
    v18 = cellConstructor2[2](cellConstructor2, v7, v10, @"com.apple.buddyTableChoice.cell");

    v14 = 1;
  }

  else
  {
    v13 = [location[0] dequeueReusableCellWithIdentifier:@"com.apple.buddyTableChoice.cell"];
    if (!v13)
    {
      v13 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"com.apple.buddyTableChoice.cell"];
    }

    [(BuddyTableChoiceManager *)selfCopy configureCell:v13 atIndexPath:v15];
    v18 = v13;
    v14 = 1;
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  v11 = v18;

  return v11;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v18 = 0;
  objc_storeStrong(&v18, path);
  v5 = [(BuddyTableChoiceManager *)selfCopy tableView:location[0] cellForRowAtIndexPath:v18];
  [v5 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v7 = v6;

  v17 = v7;
  if ([(BuddyTableChoiceManager *)selfCopy allowManualRowHeight])
  {
    [(BuddyTableChoiceManager *)selfCopy fixedRowHeight];
    if (v7 <= v8)
    {
      [(BuddyTableChoiceManager *)selfCopy fixedRowHeight];
    }

    else
    {
      v9 = UITableViewAutomaticDimension;
    }

    v21 = v9;
  }

  else
  {
    v10 = +[BFFStyle sharedStyle];
    [v10 tallRowHeight];
    v12 = v11;

    if (v17 <= v12)
    {
      v13 = +[BFFStyle sharedStyle];
      [v13 tallRowHeight];
      [location[0] setEstimatedRowHeight:?];

      v14 = +[BFFStyle sharedStyle];
      [v14 tallRowHeight];
      v21 = v15;
    }

    else
    {
      v21 = UITableViewAutomaticDimension;
    }
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  return v21;
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v6 = 0;
  objc_storeStrong(&v6, path);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return UITableViewAutomaticDimension;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v5 = 0;
  objc_storeStrong(&v5, path);
  [(BuddyTableChoiceManager *)selfCopy setSelectedChoiceIndex:v5 tableView:location[0]];
  [location[0] deselectRowAtIndexPath:v5 animated:1];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)setChoices:(id)choices
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, choices);
  choices = [(BuddyChoiceManager *)selfCopy choices];
  v4 = location[0];

  if (choices != v4)
  {
    memset(__b, 0, sizeof(__b));
    v5 = selfCopy->super._choices;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:__b objects:v22 count:16];
    if (v6)
    {
      v7 = *__b[2];
      do
      {
        for (i = 0; i < v6; ++i)
        {
          if (*__b[2] != v7)
          {
            objc_enumerationMutation(v5);
          }

          v18 = *(__b[1] + 8 * i);
          [v18 makeObjectsPerformSelector:"setChoiceController:" withObject:0];
        }

        v6 = [(NSArray *)v5 countByEnumeratingWithState:__b objects:v22 count:16];
      }

      while (v6);
    }

    objc_storeStrong(&selfCopy->super._choices, location[0]);
    memset(v15, 0, sizeof(v15));
    v9 = selfCopy->super._choices;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:v15 objects:v21 count:16];
    if (v10)
    {
      v11 = *v15[2];
      do
      {
        for (j = 0; j < v10; ++j)
        {
          if (*v15[2] != v11)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(v15[1] + 8 * j);
          v13 = v16;
          chooseableDelegate = [(BuddyChoiceManager *)selfCopy chooseableDelegate];
          [v13 makeObjectsPerformSelector:"setChoiceController:" withObject:chooseableDelegate];
        }

        v10 = [(NSArray *)v9 countByEnumeratingWithState:v15 objects:v21 count:16];
      }

      while (v10);
    }
  }

  objc_storeStrong(location, 0);
}

- (id)viewForFooterInTableView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  footerView = [(BuddyTableChoiceManager *)selfCopy footerView];
  objc_storeStrong(location, 0);

  return footerView;
}

- (double)heightForFooterInTableView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  footerView = [(BuddyTableChoiceManager *)selfCopy footerView];
  [(UIView *)footerView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
  v5 = v4;

  objc_storeStrong(location, 0);
  return v5;
}

- (BOOL)tableView:(id)view shouldDrawTopSeparatorForSection:(int64_t)section
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 1;
}

@end