@interface Legacy_VOTUIItemChooserController
- (BOOL)accessibilityPerformEscape;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (BOOL)textFieldShouldReturn:(id)return;
- (Legacy_VOTUIItemChooserDelegate)delegate;
- (double)_positionAccountingForKeyboard:(CGRect)keyboard;
- (id)_constraintsToPositionItem:(id)item identicallyToItem:(id)toItem;
- (id)sectionIndexTitlesForTableView:(id)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_displayWithList:(id)list fromRotorSwitch:(BOOL)switch;
- (void)_guidedAccessItemChooserDidShow;
- (void)_handleSearchFieldTextChange:(id)change;
- (void)_keyboardWillHide:(id)hide;
- (void)_keyboardWillShow:(id)show;
- (void)_loadGuidedAccessBundle;
- (void)_updateGuidedAccessWindowId:(unsigned int)id;
- (void)_updatePositionForKeyboard:(CGRect)keyboard;
- (void)_updateSelectedRow:(id)row;
- (void)hideItemChooser:(BOOL)chooser;
- (void)showItemChooser:(id)chooser;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation Legacy_VOTUIItemChooserController

- (void)viewDidLoad
{
  v47.receiver = self;
  v47.super_class = Legacy_VOTUIItemChooserController;
  [(Legacy_VOTUIItemChooserController *)&v47 viewDidLoad];
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v7 setAutoresizingMask:18];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(Legacy_VOTUIItemChooserController *)self view];
  [view addSubview:v7];

  v9 = [[_UIBackdropView alloc] initWithPrivateStyle:2030];
  backdropView = self->_backdropView;
  self->_backdropView = v9;

  layer = [(_UIBackdropView *)self->_backdropView layer];
  [layer setCornerRadius:10.0];

  [v7 addSubview:self->_backdropView];
  v12 = +[NSNotificationCenter defaultCenter];
  [v12 addObserver:self selector:"_handleSearchFieldTextChange:" name:UITextFieldTextDidChangeNotification object:0];

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 addObserver:self selector:"_keyboardWillShow:" name:UIKeyboardWillShowNotification object:0];

  v14 = +[NSNotificationCenter defaultCenter];
  [v14 addObserver:self selector:"_keyboardWillHide:" name:UIKeyboardWillHideNotification object:0];

  v15 = [objc_allocWithZone(UILabel) initWithFrame:{CGRectZero.origin.x, y, width, height}];
  headingLabel = self->_headingLabel;
  self->_headingLabel = v15;

  [(UILabel *)self->_headingLabel setTag:1010];
  v17 = [NSBundle bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"VoiceOverItemChooser" value:&stru_3F518 table:@"VoiceOverUIService"];
  [(UILabel *)self->_headingLabel setText:v18];

  v19 = +[UIColor whiteColor];
  [(UILabel *)self->_headingLabel setTextColor:v19];

  [(UILabel *)self->_headingLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_headingLabel setTextAlignment:1];
  v20 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2 compatibleWithTraitCollection:0];
  [(UILabel *)self->_headingLabel setFont:v20];

  [(UILabel *)self->_headingLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_headingLabel setAccessibilityTraits:UIAccessibilityTraitSummaryElement | UIAccessibilityTraitHeader | kAXIgnoreItemChooserTrait];
  v21 = +[UIColor clearColor];
  [(UILabel *)self->_headingLabel setBackgroundColor:v21];

  [v7 addSubview:self->_headingLabel];
  v22 = [objc_allocWithZone(UISearchField) initWithFrame:{CGRectZero.origin.x, y, width, height}];
  searchField = self->_searchField;
  self->_searchField = v22;

  [(UISearchField *)self->_searchField setTag:1011];
  [(UISearchField *)self->_searchField setDelegate:self];
  [(UISearchField *)self->_searchField setAutocorrectionType:1];
  [(UISearchField *)self->_searchField setSpellCheckingType:1];
  [(UISearchField *)self->_searchField setReturnKeyType:6];
  [(UISearchField *)self->_searchField setAutocapitalizationType:0];
  [(UISearchField *)self->_searchField setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UISearchField *)self->_searchField _setAccessibilityServesAsFirstElement:1];
  [v7 addSubview:self->_searchField];
  v24 = [[UITableView alloc] initWithFrame:0 style:{CGRectZero.origin.x, y, width, height}];
  table = self->_table;
  self->_table = v24;

  [(UITableView *)self->_table setRowHeight:UITableViewAutomaticDimension];
  [(UITableView *)self->_table setEstimatedRowHeight:100.0];
  [(UITableView *)self->_table setDelegate:self];
  [(UITableView *)self->_table setSeparatorStyle:1];
  [(UITableView *)self->_table setDataSource:self];
  v26 = +[UIColor clearColor];
  [(UITableView *)self->_table setBackgroundColor:v26];

  [(UITableView *)self->_table setClipsToBounds:1];
  [(UITableView *)self->_table setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = self->_table;
  v28 = +[UIColor whiteColor];
  [(UITableView *)v27 _setSectionIndexColor:v28];

  [(UITableView *)self->_table registerClass:objc_opt_class() forCellReuseIdentifier:@"TableViewCell"];
  [v7 addSubview:self->_table];
  v29 = [objc_allocWithZone(NSMutableArray) init];
  filteredList = self->_filteredList;
  self->_filteredList = v29;

  v31 = +[NSMutableDictionary dictionary];
  items = self->_items;
  self->_items = v31;

  v33 = +[NSMutableArray array];
  view2 = [(Legacy_VOTUIItemChooserController *)self view];
  v35 = [(Legacy_VOTUIItemChooserController *)self _constraintsToPositionItem:v7 identicallyToItem:view2];
  [v33 addObjectsFromArray:v35];

  [NSLayoutConstraint activateConstraints:v33];
  v36 = [NSLayoutConstraint constraintWithItem:self->_headingLabel attribute:3 relatedBy:0 toItem:v7 attribute:3 multiplier:1.0 constant:15.0];
  [v36 setActive:1];

  v37 = [NSLayoutConstraint constraintWithItem:self->_headingLabel attribute:7 relatedBy:0 toItem:v7 attribute:7 multiplier:0.9 constant:0.0];
  [v37 setActive:1];

  v38 = [NSLayoutConstraint constraintWithItem:self->_headingLabel attribute:9 relatedBy:0 toItem:v7 attribute:9 multiplier:1.0 constant:0.0];
  [v38 setActive:1];

  v39 = [NSLayoutConstraint constraintWithItem:self->_searchField attribute:3 relatedBy:0 toItem:self->_headingLabel attribute:4 multiplier:1.0 constant:5.0];
  [v39 setActive:1];

  v40 = [NSLayoutConstraint constraintWithItem:self->_searchField attribute:7 relatedBy:0 toItem:v7 attribute:7 multiplier:0.8 constant:0.0];
  [v40 setActive:1];

  v41 = [NSLayoutConstraint constraintWithItem:self->_searchField attribute:9 relatedBy:0 toItem:v7 attribute:9 multiplier:1.0 constant:0.0];
  [v41 setActive:1];

  v42 = [NSLayoutConstraint constraintWithItem:self->_table attribute:3 relatedBy:0 toItem:self->_searchField attribute:4 multiplier:1.0 constant:10.0];
  [v42 setActive:1];

  v43 = [NSLayoutConstraint constraintWithItem:self->_table attribute:7 relatedBy:0 toItem:v7 attribute:7 multiplier:0.9 constant:0.0];
  [v43 setActive:1];

  v44 = [NSLayoutConstraint constraintWithItem:self->_table attribute:9 relatedBy:0 toItem:v7 attribute:9 multiplier:1.0 constant:0.0];
  [v44 setActive:1];

  v45 = [NSLayoutConstraint constraintWithItem:self->_table attribute:4 relatedBy:0 toItem:v7 attribute:4 multiplier:1.0 constant:0.0];
  [v45 setActive:1];

  v46 = [NSLayoutConstraint constraintWithItem:self->_backdropView attribute:3 relatedBy:0 toItem:v7 attribute:4 multiplier:1.0 constant:0.0];
  [v46 setActive:1];
}

- (id)_constraintsToPositionItem:(id)item identicallyToItem:(id)toItem
{
  itemCopy = item;
  toItemCopy = toItem;
  v7 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [&off_40260 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(&off_40260);
        }

        integerValue = [*(*(&v15 + 1) + 8 * i) integerValue];
        v13 = [NSLayoutConstraint constraintWithItem:itemCopy attribute:integerValue relatedBy:0 toItem:toItemCopy attribute:integerValue multiplier:1.0 constant:0.0];
        [v7 addObject:v13];
      }

      v9 = [&off_40260 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v7;
}

- (void)showItemChooser:(id)chooser
{
  chooserCopy = chooser;
  [(Legacy_VOTUIItemChooserController *)self setAccessibilityViewIsModal:1];
  self->_category = 0x7FFFFFFFFFFFFFFFLL;
  obj = [chooserCopy objectForKey:@"items"];
  v5 = [chooserCopy objectForKey:@"categories"];
  v6 = [chooserCopy objectForKey:@"mappings"];
  v7 = [chooserCopy objectForKey:@"regionDescriptions"];

  objc_storeStrong(&self->_itemCategoryMappings, v6);
  objc_storeStrong(&self->_originalList, obj);
  objc_storeStrong(&self->_regionDescriptions, v7);
  objc_storeStrong(&self->_categories, v5);
  [(Legacy_VOTUIItemChooserController *)self _displayWithList:self->_originalList fromRotorSwitch:0];
  if (GSEventIsHardwareKeyboardAttached())
  {
    [(UISearchField *)self->_searchField becomeFirstResponder];
  }

  [(Legacy_VOTUIItemChooserController *)self _guidedAccessItemChooserDidShow];
}

- (void)_guidedAccessItemChooserDidShow
{
  [(Legacy_VOTUIItemChooserController *)self _loadGuidedAccessBundle];
  view = [(Legacy_VOTUIItemChooserController *)self view];
  window = [view window];
  -[Legacy_VOTUIItemChooserController _updateGuidedAccessWindowId:](self, "_updateGuidedAccessWindowId:", [window _contextId]);
}

- (void)_updateGuidedAccessWindowId:(unsigned int)id
{
  v3 = *&id;
  if (_AXSGuidedAccessEnabled())
  {
    v4 = [AXSafeClassFromString() safeValueForKey:@"sharedInstance"];
    if ([v4 isActive])
    {
      [v4 voiceOverItemChooserDidShow:v3];
    }
  }
}

- (void)_loadGuidedAccessBundle
{
  if (_AXSGuidedAccessEnabled())
  {
    if (qword_4B328 != -1)
    {
      sub_25E08();
    }
  }
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  category = self->_category;
  if (scroll == 1)
  {
    if (category == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = [(NSArray *)self->_categories count]- 1;
    }

    else
    {
      v5 = category - 1;
    }
  }

  else
  {
    if (scroll != 2)
    {
LABEL_20:
      LOBYTE(v6) = 0;
      return v6;
    }

    if (category == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = 0;
    }

    else
    {
      v5 = category + 1;
    }
  }

  v6 = [(NSArray *)self->_categories count];
  if (v6)
  {
    if (qword_4B330)
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v7 = [NSBundle bundleWithPath:@"/System/Library/CoreServices/VoiceOverTouch.app"];
      v8 = qword_4B330;
      qword_4B330 = v7;

      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_19;
      }
    }

    v9 = [(NSArray *)self->_categories count];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL && v5 < v9)
    {
      v15 = [(NSArray *)self->_categories objectAtIndex:v5];
      intValue = [v15 intValue];

      v17 = intValue - 1;
      if (intValue - 1 < 0x18 && ((0xFFF601u >> v17) & 1) != 0)
      {
        v18 = [qword_4B330 localizedStringForKey:off_3D5F8[v17] value:0 table:@"VOTLocalizedStrings"];
        [(UILabel *)self->_headingLabel setText:v18];
      }

      else
      {
        _AXAssert();
        [(UILabel *)self->_headingLabel setText:&stru_3F518];
      }

      self->_category = v5;
      v19 = [(NSArray *)self->_categories objectAtIndex:v5];
      v20 = [(NSArray *)self->_originalList mutableCopyWithZone:0];
      filteredList = self->_filteredList;
      self->_filteredList = v20;

      v22 = self->_filteredList;
      v31 = _NSConcreteStackBlock;
      v32 = 3221225472;
      v33 = sub_13E64;
      v34 = &unk_3D4E0;
      selfCopy = self;
      v36 = v19;
      v23 = v19;
      v24 = [(NSMutableArray *)v22 indexesOfObjectsPassingTest:&v31];
      [(NSMutableArray *)v22 removeObjectsAtIndexes:v24, v31, v32, v33, v34, selfCopy];

      v13 = self->_filteredList;
LABEL_27:
      [(Legacy_VOTUIItemChooserController *)self _displayWithList:v13 fromRotorSwitch:1];
      text = [(UILabel *)self->_headingLabel text];
      if (self->_category == 0x7FFFFFFFFFFFFFFFLL)
      {
        v26 = [qword_4B330 localizedStringForKey:@"search.rotor.allitems" value:0 table:@"VOTLocalizedStrings"];

        text = v26;
      }

      UIAccessibilityPostNotification(UIAccessibilityPageScrolledNotification, text);
      v27 = UIAccessibilityLayoutChangedNotification;
      v28 = [(UITableView *)self->_table accessibilityElementAtIndex:0];
      v29 = [v28 _accessibilityFindDescendant:&stru_3D520];
      UIAccessibilityPostNotification(v27, v29);

      LOBYTE(v6) = 1;
      return v6;
    }

LABEL_19:
    if (self->_category == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_20;
    }

    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"VoiceOverItemChooser" value:&stru_3F518 table:@"VoiceOverUIService"];
    [(UILabel *)self->_headingLabel setText:v12];

    self->_category = 0x7FFFFFFFFFFFFFFFLL;
    v13 = self->_originalList;
    v14 = self->_filteredList;
    self->_filteredList = 0;

    goto LABEL_27;
  }

  return v6;
}

- (void)hideItemChooser:(BOOL)chooser
{
  delegate = [(Legacy_VOTUIItemChooserController *)self delegate];

  if (delegate)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_13F9C;
    v6[3] = &unk_3D218;
    v6[4] = self;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_13FE4;
    v5[3] = &unk_3D128;
    v5[4] = self;
    [UIView animateWithDuration:v6 animations:v5 completion:0.2];
  }
}

- (void)_handleSearchFieldTextChange:(id)change
{
  view = [(Legacy_VOTUIItemChooserController *)self view];
  isHidden = [view isHidden];

  if ((isHidden & 1) == 0)
  {
    text = [(UISearchField *)self->_searchField text];
    lowercaseString = [text lowercaseString];

    if (([lowercaseString isEqualToString:self->_filter] & 1) == 0)
    {
      v8 = [lowercaseString copyWithZone:0];
      filter = self->_filter;
      self->_filter = v8;

      v10 = [(NSArray *)self->_originalList mutableCopyWithZone:0];
      filteredList = self->_filteredList;
      self->_filteredList = v10;

      if ([(NSString *)self->_filter length])
      {
        v12 = self->_filteredList;
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_142E4;
        v14[3] = &unk_3D548;
        v14[4] = self;
        v13 = [(NSMutableArray *)v12 indexesOfObjectsPassingTest:v14];
        [(NSMutableArray *)v12 removeObjectsAtIndexes:v13];
      }

      [(Legacy_VOTUIItemChooserController *)self _displayWithList:self->_filteredList fromRotorSwitch:0];
    }
  }
}

- (void)_displayWithList:(id)list fromRotorSwitch:(BOOL)switch
{
  listCopy = list;
  if (!self->_homeButtonIntercept)
  {
    v7 = +[SBSHardwareButtonService sharedInstance];
    v8 = [v7 beginConsumingPressesForButtonKind:1 eventConsumer:self priority:0];
    homeButtonIntercept = self->_homeButtonIntercept;
    self->_homeButtonIntercept = v8;
  }

  self->_totalItemCount = [listCopy count];
  if (self->_category == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([(NSMutableArray *)self->_filteredList count])
    {
      totalItemCount = [(NSMutableArray *)self->_filteredList count];
    }

    else
    {
      totalItemCount = self->_totalItemCount;
    }

    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"VoiceOverItemChooser.count" value:&stru_3F518 table:@"VoiceOverUIService"];
    v13 = AXFormatInteger();
    v14 = [NSString stringWithFormat:v12, v13];
    [(UILabel *)self->_headingLabel setText:v14];
  }

  else
  {
    totalItemCount = 0;
  }

  view = [(Legacy_VOTUIItemChooserController *)self view];
  [view layoutIfNeeded];

  self->_selectedRow = 0x7FFFFFFFFFFFFFFFLL;
  self->_activateItem = 0;
  [(NSMutableDictionary *)self->_items removeAllObjects];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_14714;
  v25[3] = &unk_3D570;
  v25[4] = self;
  [listCopy enumerateObjectsUsingBlock:v25];
  allKeys = [(NSMutableDictionary *)self->_items allKeys];
  v17 = [allKeys sortedArrayUsingComparator:&stru_3D5B0];
  sectionHeaders = self->_sectionHeaders;
  self->_sectionHeaders = v17;

  [(UITableView *)self->_table setBackgroundView:0];
  [(UITableView *)self->_table reloadData];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_14884;
  v24[3] = &unk_3D218;
  v24[4] = self;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_148CC;
  v22[3] = &unk_3D5D8;
  switchCopy = switch;
  v22[4] = self;
  v22[5] = totalItemCount;
  [UIView animateWithDuration:v24 animations:v22 completion:0.2];
  v21 = [(UITableView *)self->_table safeValueForKey:@"_index"];
  v19 = v21;
  AXPerformSafeBlock();
  [v19 bounds];
  [v19 setBounds:{0.0, 0.0}];
  layer = [v19 layer];
  [layer setCornerRadius:5.0];
}

- (double)_positionAccountingForKeyboard:(CGRect)keyboard
{
  y = keyboard.origin.y;
  v10.origin.x = CGRectZero.origin.x;
  v10.origin.y = CGRectZero.origin.y;
  v10.size.width = CGRectZero.size.width;
  v10.size.height = CGRectZero.size.height;
  v5 = CGRectEqualToRect(keyboard, v10);
  result = -1.0;
  if (!v5)
  {
    view = [(Legacy_VOTUIItemChooserController *)self view];
    [view frame];
    v9 = v8;

    result = (y - v9) * 0.5;
    if (v9 >= y)
    {
      return 30.0;
    }
  }

  return result;
}

- (void)_updatePositionForKeyboard:(CGRect)keyboard
{
  height = keyboard.size.height;
  width = keyboard.size.width;
  y = keyboard.origin.y;
  x = keyboard.origin.x;
  view = [(Legacy_VOTUIItemChooserController *)self view];
  [view frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  if (v12 > 30.0)
  {
    [(Legacy_VOTUIItemChooserController *)self _positionAccountingForKeyboard:x, y, width, height];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_14C1C;
    v18[3] = &unk_3D308;
    v18[4] = self;
    v18[5] = v10;
    v18[6] = v17;
    v18[7] = v14;
    v18[8] = v16;
    [UIView animateWithDuration:v18 animations:0.2];
  }
}

- (void)_keyboardWillShow:(id)show
{
  showCopy = show;
  view = [(Legacy_VOTUIItemChooserController *)self view];
  isHidden = [view isHidden];

  if ((isHidden & 1) == 0)
  {
    userInfo = [showCopy userInfo];
    v7 = [userInfo objectForKey:UIKeyboardFrameEndUserInfoKey];
    [v7 CGRectValue];
    self->_keyboardFrame.origin.x = v8;
    self->_keyboardFrame.origin.y = v9;
    self->_keyboardFrame.size.width = v10;
    self->_keyboardFrame.size.height = v11;

    if ([(UISearchField *)self->_searchField isFirstResponder])
    {
      window = [(UISearchField *)self->_searchField window];
      [window becomeKeyWindow];

      [(Legacy_VOTUIItemChooserController *)self _updatePositionForKeyboard:self->_keyboardFrame.origin.x, self->_keyboardFrame.origin.y, self->_keyboardFrame.size.width, self->_keyboardFrame.size.height];
    }
  }
}

- (void)_keyboardWillHide:(id)hide
{
  view = [(Legacy_VOTUIItemChooserController *)self view];
  isHidden = [view isHidden];

  if ((isHidden & 1) == 0)
  {
    [(UISearchField *)self->_searchField resignFirstResponder];
    size = CGRectZero.size;
    self->_keyboardFrame.origin = CGRectZero.origin;
    self->_keyboardFrame.size = size;
  }
}

- (BOOL)textFieldShouldReturn:(id)return
{
  searchField = self->_searchField;
  returnCopy = return;
  [(UISearchField *)searchField resignFirstResponder];
  [returnCopy setText:&stru_3F518];

  return 1;
}

- (BOOL)accessibilityPerformEscape
{
  self->_selectedRow = 0x7FFFFFFFFFFFFFFFLL;
  self->_activateItem = 0;
  [(Legacy_VOTUIItemChooserController *)self hideItemChooser:0];
  return 1;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  if ([(NSMutableArray *)self->_filteredList count])
  {
    return 1;
  }

  sectionHeaders = self->_sectionHeaders;

  return [(NSArray *)sectionHeaders count];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ([(NSMutableArray *)self->_filteredList count])
  {
    filteredList = self->_filteredList;

    return [(NSMutableArray *)filteredList count];
  }

  else
  {
    v8 = [(NSArray *)self->_sectionHeaders objectAtIndex:section];
    v9 = [(NSMutableDictionary *)self->_items objectForKey:v8];
    v10 = [v9 count];

    return v10;
  }
}

- (id)sectionIndexTitlesForTableView:(id)view
{
  if ([(NSString *)self->_filter length])
  {
    v4 = 0;
  }

  else
  {
    v4 = self->_sectionHeaders;
  }

  return v4;
}

- (void)_updateSelectedRow:(id)row
{
  rowCopy = row;
  if ([(NSMutableArray *)self->_filteredList count])
  {
    originalList = self->_originalList;
    v5 = [(UITableView *)self->_table cellForRowAtIndexPath:rowCopy];
    textLabel = [v5 textLabel];
    text = [textLabel text];
    self->_selectedRow = [(NSArray *)originalList indexOfObject:text];
  }

  else
  {
    v5 = -[NSArray objectAtIndex:](self->_sectionHeaders, "objectAtIndex:", [rowCopy section]);
    textLabel = [(NSMutableDictionary *)self->_items objectForKey:v5];
    [(UITableView *)self->_table deselectRowAtIndexPath:rowCopy animated:1];
    text = [textLabel objectAtIndex:{objc_msgSend(rowCopy, "row")}];
    v8 = [text objectAtIndex:1];
    self->_selectedRow = [v8 integerValue];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  [(Legacy_VOTUIItemChooserController *)self _updateSelectedRow:path];

  [(Legacy_VOTUIItemChooserController *)self hideItemChooser:1];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  contentView = [cellCopy contentView];
  v6 = +[UIColor clearColor];
  [contentView setBackgroundColor:v6];

  if (contentView)
  {
    do
    {
      v7 = contentView;
      contentView = [contentView superview];

      v8 = +[UIColor clearColor];
      [contentView setBackgroundColor:v8];
    }

    while (contentView != cellCopy && contentView);
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(NSMutableArray *)self->_filteredList count])
  {
    v8 = -[NSMutableArray objectAtIndex:](self->_filteredList, "objectAtIndex:", [pathCopy row]);
    integerValue = [(NSArray *)self->_originalList indexOfObject:v8];
  }

  else
  {
    v10 = -[NSArray objectAtIndex:](self->_sectionHeaders, "objectAtIndex:", [pathCopy section]);
    v11 = [(NSMutableDictionary *)self->_items objectForKey:v10];
    v12 = [v11 objectAtIndex:{objc_msgSend(pathCopy, "row")}];
    v8 = [v12 objectAtIndex:0];

    v13 = [v11 objectAtIndex:{objc_msgSend(pathCopy, "row")}];
    v14 = [v13 objectAtIndex:1];
    integerValue = [v14 integerValue];
  }

  if (integerValue >= [(NSArray *)self->_regionDescriptions count])
  {
    v15 = 0;
  }

  else
  {
    v15 = [(NSArray *)self->_regionDescriptions objectAtIndex:integerValue];
  }

  v16 = [viewCopy dequeueReusableCellWithIdentifier:@"TableViewCell"];
  [v16 setAccessibilityTraits:kAXIgnoreItemChooserTrait];
  [v16 setAccessibilityHint:v15];
  textLabel = [v16 textLabel];
  [textLabel setText:v8];

  textLabel2 = [v16 textLabel];
  [textLabel2 setNumberOfLines:0];

  v19 = +[UIColor whiteColor];
  textLabel3 = [v16 textLabel];
  [textLabel3 setTextColor:v19];

  v21 = +[UIColor clearColor];
  textLabel4 = [v16 textLabel];
  [textLabel4 setBackgroundColor:v21];

  v23 = +[UIColor clearColor];
  [v16 setBackgroundColor:v23];

  contentView = [v16 contentView];
  superview = [contentView superview];
  v26 = +[UIColor clearColor];
  [superview setBackgroundColor:v26];

  return v16;
}

- (Legacy_VOTUIItemChooserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end