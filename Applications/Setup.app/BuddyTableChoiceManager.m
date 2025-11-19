@interface BuddyTableChoiceManager
- (BOOL)tableView:(id)a3 shouldDrawTopSeparatorForSection:(int64_t)a4;
- (BuddyTableChoiceManager)initWithCellConstructor:(id)a3 allowManualRowHeight:(BOOL)a4;
- (double)heightForFooterInTableView:(id)a3;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)viewForFooterInTableView:(id)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_updateSelectedChoiceCheckmarkWithtableView:(id)a3;
- (void)configureCell:(id)a3 atIndexPath:(id)a4;
- (void)setChoices:(id)a3;
- (void)setSelectedChoiceIndex:(id)a3 tableView:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation BuddyTableChoiceManager

- (BuddyTableChoiceManager)initWithCellConstructor:(id)a3 allowManualRowHeight:(BOOL)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = a4;
  v5 = v14;
  v14 = 0;
  v11.receiver = v5;
  v11.super_class = BuddyTableChoiceManager;
  v6 = [(BuddyTableChoiceManager *)&v11 init];
  v14 = v6;
  objc_storeStrong(&v14, v6);
  if (v6)
  {
    v7 = objc_retainBlock(location[0]);
    v8 = *(v14 + 9);
    *(v14 + 9) = v7;

    *(v14 + 33) = v12;
  }

  v9 = v14;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v14, 0);
  return v9;
}

- (void)setSelectedChoiceIndex:(id)a3 tableView:(id)a4
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v5 = [(BuddyChoiceManager *)v23 choices];
  v6 = -[NSArray objectAtIndexedSubscript:](v5, "objectAtIndexedSubscript:", [location[0] section]);
  v20 = [v6 objectAtIndexedSubscript:{objc_msgSend(location[0], "row")}];

  v19 = [(BuddyTableChoiceManager *)v23 wantsNextButton];
  if (v23->_selectedChoice && (v19 & 1) != 0)
  {
    v18 = [v21 cellForRowAtIndexPath:v23->_selectedChoiceIndexPath];
    [v18 setAccessoryType:0];
    v7 = [v18 textLabel];
    v8 = +[UIColor _labelColor];
    [v7 setTextColor:v8];

    objc_storeStrong(&v18, 0);
  }

  objc_storeStrong(&v23->_selectedChoiceIndexPath, location[0]);
  objc_storeStrong(&v23->_selectedChoice, v20);
  if (v19)
  {
    [(BuddyTableChoiceManager *)v23 _updateSelectedChoiceCheckmarkWithtableView:v21];
  }

  objc_initWeak(&from, v23);
  v9 = v20;
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_10009AC2C;
  v14 = &unk_10032BA20;
  objc_copyWeak(&v16, &from);
  v15 = v23;
  [v9 runConfirmationIfNeededCompletion:&v10];
  objc_storeStrong(&v15, 0);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&from);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateSelectedChoiceCheckmarkWithtableView:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v8->_selectedChoice)
  {
    v6 = [(BuddyTableChoiceManager *)v8 selectedChoiceIndexPath];
    if (v6)
    {
      v5 = [location[0] cellForRowAtIndexPath:v6];
      [v5 setAccessoryType:3];
      v3 = [v5 textLabel];
      v4 = +[UIColor tableCellBlueTextColor];
      [v3 setTextColor:v4];

      [v5 setNeedsLayout];
      objc_storeStrong(&v5, 0);
    }

    objc_storeStrong(&v6, 0);
  }

  objc_storeStrong(location, 0);
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyChoiceManager *)v7 choices];
  v4 = [(NSArray *)v3 count];

  objc_storeStrong(location, 0);
  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = a4;
  v5 = [(BuddyChoiceManager *)v11 choices];
  v6 = [(NSArray *)v5 objectAtIndexedSubscript:v9];
  v7 = [v6 count];

  objc_storeStrong(location, 0);
  return v7;
}

- (void)configureCell:(id)a3 atIndexPath:(id)a4
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v5 = +[BFFStyle sharedStyle];
  [v5 applyThemeToTableCell:location[0]];

  v6 = [location[0] textLabel];
  [v6 setLineBreakMode:0];

  v7 = [location[0] textLabel];
  [v7 setNumberOfLines:0];

  v8 = [location[0] textLabel];
  v9 = [(BuddyChoiceManager *)v21 choices];
  v10 = -[NSArray objectAtIndexedSubscript:](v9, "objectAtIndexedSubscript:", [v19 section]);
  v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v19, "row")}];
  v12 = [v11 title];
  [v8 setText:v12];

  v17 = 0;
  v13 = 0;
  if ([(BuddyTableChoiceManager *)v21 wantsNextButton])
  {
    v14 = [v19 row];
    v18 = [(BuddyTableChoiceManager *)v21 selectedChoiceIndexPath];
    v17 = 1;
    v13 = v14 == [(NSIndexPath *)v18 row];
  }

  if (v17)
  {
  }

  if (v13)
  {
    [location[0] setAccessoryType:3];
    v15 = [location[0] textLabel];
    v16 = +[UIColor tableCellBlueTextColor];
    [v15 setTextColor:v16];
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = 0;
  objc_storeStrong(&v7, a5);
  [v8 setSeparatorStyle:1];
  [v8 _setShouldHaveFullLengthTopSeparator:0];
  [v8 _setShouldHaveFullLengthBottomSeparator:0];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v5 = [(BuddyTableChoiceManager *)v17 cellConstructor];

  if (v5)
  {
    v6 = [(BuddyTableChoiceManager *)v17 cellConstructor];
    v7 = location[0];
    v8 = [(BuddyChoiceManager *)v17 choices];
    v9 = -[NSArray objectAtIndexedSubscript:](v8, "objectAtIndexedSubscript:", [v15 section]);
    v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v15, "row")}];
    v18 = v6[2](v6, v7, v10, @"com.apple.buddyTableChoice.cell");

    v14 = 1;
  }

  else
  {
    v13 = [location[0] dequeueReusableCellWithIdentifier:@"com.apple.buddyTableChoice.cell"];
    if (!v13)
    {
      v13 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"com.apple.buddyTableChoice.cell"];
    }

    [(BuddyTableChoiceManager *)v17 configureCell:v13 atIndexPath:v15];
    v18 = v13;
    v14 = 1;
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  v11 = v18;

  return v11;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v5 = [(BuddyTableChoiceManager *)v20 tableView:location[0] cellForRowAtIndexPath:v18];
  [v5 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v7 = v6;

  v17 = v7;
  if ([(BuddyTableChoiceManager *)v20 allowManualRowHeight])
  {
    [(BuddyTableChoiceManager *)v20 fixedRowHeight];
    if (v7 <= v8)
    {
      [(BuddyTableChoiceManager *)v20 fixedRowHeight];
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

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return UITableViewAutomaticDimension;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(BuddyTableChoiceManager *)v7 setSelectedChoiceIndex:v5 tableView:location[0]];
  [location[0] deselectRowAtIndexPath:v5 animated:1];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)setChoices:(id)a3
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyChoiceManager *)v20 choices];
  v4 = location[0];

  if (v3 != v4)
  {
    memset(__b, 0, sizeof(__b));
    v5 = v20->super._choices;
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

    objc_storeStrong(&v20->super._choices, location[0]);
    memset(v15, 0, sizeof(v15));
    v9 = v20->super._choices;
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
          v14 = [(BuddyChoiceManager *)v20 chooseableDelegate];
          [v13 makeObjectsPerformSelector:"setChoiceController:" withObject:v14];
        }

        v10 = [(NSArray *)v9 countByEnumeratingWithState:v15 objects:v21 count:16];
      }

      while (v10);
    }
  }

  objc_storeStrong(location, 0);
}

- (id)viewForFooterInTableView:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyTableChoiceManager *)v6 footerView];
  objc_storeStrong(location, 0);

  return v3;
}

- (double)heightForFooterInTableView:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyTableChoiceManager *)v8 footerView];
  [(UIView *)v3 systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
  v5 = v4;

  objc_storeStrong(location, 0);
  return v5;
}

- (BOOL)tableView:(id)a3 shouldDrawTopSeparatorForSection:(int64_t)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 1;
}

@end