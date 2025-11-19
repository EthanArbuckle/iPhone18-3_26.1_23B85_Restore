@interface VOTUIItemChooserController
- (BOOL)accessibilityPerformEscape;
- (BOOL)accessibilityScroll:(int64_t)a3;
- (VOTUIItemChooserDelegate)delegate;
- (double)_positionAccountingForKeyboard:(CGRect)a3;
- (id)_constraintsToPositionItem:(id)a3 identicallyToItem:(id)a4;
- (id)sectionIndexTitlesForTableView:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_displayWithList:(id)a3 fromRotorSwitch:(BOOL)a4;
- (void)_guidedAccessItemChooserDidShow;
- (void)_handleSearchFieldTextChange:(id)a3;
- (void)_keyboardWillHide:(id)a3;
- (void)_keyboardWillShow:(id)a3;
- (void)_loadGuidedAccessBundle;
- (void)_updatePositionForKeyboard:(CGRect)a3;
- (void)_updateSelectedRow:(id)a3;
- (void)showItemChooser:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation VOTUIItemChooserController

- (void)viewDidLoad
{
  v51.receiver = self;
  v51.super_class = VOTUIItemChooserController;
  [(VOTUIItemChooserController *)&v51 viewDidLoad];
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v7 setAutoresizingMask:18];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [(VOTUIItemChooserController *)self view];
  [v8 addSubview:v7];

  v9 = [[_UIBackdropView alloc] initWithPrivateStyle:2030];
  backdropView = self->_backdropView;
  self->_backdropView = v9;

  v11 = [(_UIBackdropView *)self->_backdropView layer];
  [v11 setCornerRadius:10.0];

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
  v18 = [v17 localizedStringForKey:@"VoiceOverItemChooser" value:&stru_100028F48 table:@"AXUIViewService"];
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
  v34 = [(VOTUIItemChooserController *)self view];
  v35 = [(VOTUIItemChooserController *)self _constraintsToPositionItem:v7 identicallyToItem:v34];
  v50 = v33;
  [v33 addObjectsFromArray:v35];

  [NSLayoutConstraint activateConstraints:v33];
  v36 = [(UILabel *)self->_headingLabel topAnchor];
  v37 = [v7 safeAreaLayoutGuide];
  v38 = [v37 topAnchor];
  v39 = [v36 constraintEqualToSystemSpacingBelowAnchor:v38 multiplier:1.0];
  [v39 setActive:1];

  v40 = [NSLayoutConstraint constraintWithItem:self->_headingLabel attribute:7 relatedBy:0 toItem:v7 attribute:7 multiplier:0.9 constant:0.0];
  [v40 setActive:1];

  v41 = [NSLayoutConstraint constraintWithItem:self->_headingLabel attribute:9 relatedBy:0 toItem:v7 attribute:9 multiplier:1.0 constant:0.0];
  [v41 setActive:1];

  v42 = [NSLayoutConstraint constraintWithItem:self->_searchField attribute:3 relatedBy:0 toItem:self->_headingLabel attribute:4 multiplier:1.0 constant:5.0];
  [v42 setActive:1];

  v43 = [NSLayoutConstraint constraintWithItem:self->_searchField attribute:7 relatedBy:0 toItem:v7 attribute:7 multiplier:0.8 constant:0.0];
  [v43 setActive:1];

  v44 = [NSLayoutConstraint constraintWithItem:self->_searchField attribute:9 relatedBy:0 toItem:v7 attribute:9 multiplier:1.0 constant:0.0];
  [v44 setActive:1];

  v45 = [NSLayoutConstraint constraintWithItem:self->_table attribute:3 relatedBy:0 toItem:self->_searchField attribute:4 multiplier:1.0 constant:10.0];
  [v45 setActive:1];

  v46 = [NSLayoutConstraint constraintWithItem:self->_table attribute:7 relatedBy:0 toItem:v7 attribute:7 multiplier:0.9 constant:0.0];
  [v46 setActive:1];

  v47 = [NSLayoutConstraint constraintWithItem:self->_table attribute:9 relatedBy:0 toItem:v7 attribute:9 multiplier:1.0 constant:0.0];
  [v47 setActive:1];

  v48 = [NSLayoutConstraint constraintWithItem:self->_table attribute:4 relatedBy:0 toItem:v7 attribute:4 multiplier:1.0 constant:0.0];
  [v48 setActive:1];

  v49 = [NSLayoutConstraint constraintWithItem:self->_backdropView attribute:3 relatedBy:0 toItem:v7 attribute:4 multiplier:1.0 constant:0.0];
  [v49 setActive:1];
}

- (id)_constraintsToPositionItem:(id)a3 identicallyToItem:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [&off_10002A058 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(&off_10002A058);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) integerValue];
        v13 = [NSLayoutConstraint constraintWithItem:v5 attribute:v12 relatedBy:0 toItem:v6 attribute:v12 multiplier:1.0 constant:0.0];
        [v7 addObject:v13];
      }

      v9 = [&off_10002A058 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v7;
}

- (void)showItemChooser:(id)a3
{
  v4 = a3;
  [(VOTUIItemChooserController *)self setAccessibilityViewIsModal:1];
  self->_category = 0x7FFFFFFFFFFFFFFFLL;
  v5 = [v4 objectForKey:@"items"];
  v6 = [v4 objectForKey:@"categories"];
  v7 = [v4 objectForKey:@"mappings"];
  v8 = [v4 objectForKey:@"regionDescriptions"];
  v9 = [v4 objectForKey:@"searchTerm"];

  objc_storeStrong(&self->_itemCategoryMappings, v7);
  objc_storeStrong(&self->_originalList, v5);
  objc_storeStrong(&self->_regionDescriptions, v8);
  objc_storeStrong(&self->_categories, v6);
  objc_storeStrong(&self->_lastSearchTerm, v9);
  [(UISearchField *)self->_searchField setText:self->_lastSearchTerm];
  [(VOTUIItemChooserController *)self _handleSearchFieldTextChange:0];
  if (GSEventIsHardwareKeyboardAttached() || [(NSString *)self->_lastSearchTerm length])
  {
    [(UISearchField *)self->_searchField becomeFirstResponder];
    AXPerformBlockOnMainThreadAfterDelay();
  }

  [(VOTUIItemChooserController *)self _guidedAccessItemChooserDidShow];
}

- (void)_guidedAccessItemChooserDidShow
{
  [(VOTUIItemChooserController *)self _loadGuidedAccessBundle];
  v4 = [(VOTUIItemChooserController *)self view];
  v3 = [v4 window];
  -[VOTUIItemChooserController _updateGuidedAccessWindowId:](self, "_updateGuidedAccessWindowId:", [v3 _contextId]);
}

- (void)_loadGuidedAccessBundle
{
  if (_AXSGuidedAccessEnabled())
  {
    if (qword_1000318E0 != -1)
    {
      sub_100013DA8();
    }
  }
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  category = self->_category;
  if (a3 == 1)
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
    if (a3 != 2)
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
    if (qword_1000318E8)
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v7 = [NSBundle bundleWithPath:@"/System/Library/CoreServices/VoiceOverTouch.app"];
      v8 = qword_1000318E8;
      qword_1000318E8 = v7;

      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_19;
      }
    }

    v9 = [(NSArray *)self->_categories count];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL && v5 < v9)
    {
      v15 = [(NSArray *)self->_categories objectAtIndex:v5];
      v16 = [v15 intValue];

      v17 = v16 - 1;
      if (v16 - 1 < 0x18 && ((0xFFF601u >> v17) & 1) != 0)
      {
        v18 = [qword_1000318E8 localizedStringForKey:*(&off_100028D98 + v17) value:0 table:@"VOTLocalizedStrings"];
        [(UILabel *)self->_headingLabel setText:v18];
      }

      else
      {
        _AXAssert();
        [(UILabel *)self->_headingLabel setText:&stru_100028F48];
      }

      self->_category = v5;
      v19 = [(NSArray *)self->_categories objectAtIndex:v5];
      v20 = [(NSArray *)self->_originalList mutableCopyWithZone:0];
      filteredList = self->_filteredList;
      self->_filteredList = v20;

      v22 = self->_filteredList;
      v31 = _NSConcreteStackBlock;
      v32 = 3221225472;
      v33 = sub_10000F8E8;
      v34 = &unk_100028C80;
      v35 = self;
      v36 = v19;
      v23 = v19;
      v24 = [(NSMutableArray *)v22 indexesOfObjectsPassingTest:&v31];
      [(NSMutableArray *)v22 removeObjectsAtIndexes:v24, v31, v32, v33, v34, v35];

      v13 = self->_filteredList;
LABEL_27:
      [(VOTUIItemChooserController *)self _displayWithList:v13 fromRotorSwitch:1];
      v25 = [(UILabel *)self->_headingLabel text];
      if (self->_category == 0x7FFFFFFFFFFFFFFFLL)
      {
        v26 = [qword_1000318E8 localizedStringForKey:@"search.rotor.allitems" value:0 table:@"VOTLocalizedStrings"];

        v25 = v26;
      }

      UIAccessibilityPostNotification(UIAccessibilityPageScrolledNotification, v25);
      v27 = UIAccessibilityLayoutChangedNotification;
      v28 = [(UITableView *)self->_table accessibilityElementAtIndex:0];
      v29 = [v28 _accessibilityFindDescendant:&stru_100028CC0];
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
    v12 = [v11 localizedStringForKey:@"VoiceOverItemChooser" value:&stru_100028F48 table:@"AXUIViewService"];
    [(UILabel *)self->_headingLabel setText:v12];

    self->_category = 0x7FFFFFFFFFFFFFFFLL;
    v13 = self->_originalList;
    v14 = self->_filteredList;
    self->_filteredList = 0;

    goto LABEL_27;
  }

  return v6;
}

- (void)_handleSearchFieldTextChange:(id)a3
{
  v4 = [(VOTUIItemChooserController *)self view];
  v5 = [v4 isHidden];

  if ((v5 & 1) == 0)
  {
    v6 = [(UISearchField *)self->_searchField text];
    v7 = [v6 lowercaseString];

    if (([v7 isEqualToString:self->_filter] & 1) == 0)
    {
      v8 = [(UISearchField *)self->_searchField text];
      lastSearchTerm = self->_lastSearchTerm;
      self->_lastSearchTerm = v8;

      v10 = [v7 copyWithZone:0];
      filter = self->_filter;
      self->_filter = v10;

      v12 = [(NSArray *)self->_originalList mutableCopyWithZone:0];
      filteredList = self->_filteredList;
      self->_filteredList = v12;

      if ([(NSString *)self->_filter length])
      {
        v14 = self->_filteredList;
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_10000FCB4;
        v16[3] = &unk_100028CE8;
        v16[4] = self;
        v15 = [(NSMutableArray *)v14 indexesOfObjectsPassingTest:v16];
        [(NSMutableArray *)v14 removeObjectsAtIndexes:v15];
      }

      [(VOTUIItemChooserController *)self _displayWithList:self->_filteredList fromRotorSwitch:0];
    }
  }
}

- (void)_displayWithList:(id)a3 fromRotorSwitch:(BOOL)a4
{
  v6 = a3;
  self->_totalItemCount = [v6 count];
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

    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"VoiceOverItemChooser.count" value:&stru_100028F48 table:@"AXUIViewService"];
    v10 = AXFormatInteger();
    v11 = [NSString stringWithFormat:v9, v10];
    [(UILabel *)self->_headingLabel setText:v11];
  }

  else
  {
    totalItemCount = 0;
  }

  v12 = [(VOTUIItemChooserController *)self view];
  [v12 layoutIfNeeded];

  self->_selectedRow = 0x7FFFFFFFFFFFFFFFLL;
  self->_activateItem = 0;
  [(NSMutableDictionary *)self->_items removeAllObjects];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000100DC;
  v26[3] = &unk_100028D10;
  v26[4] = self;
  [v6 enumerateObjectsUsingBlock:v26];

  v13 = [(NSMutableDictionary *)self->_items allKeys];
  v14 = [v13 sortedArrayUsingComparator:&stru_100028D50];
  sectionHeaders = self->_sectionHeaders;
  self->_sectionHeaders = v14;

  [(UITableView *)self->_table setBackgroundView:0];
  [(UITableView *)self->_table reloadData];
  if (!a4)
  {
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"item.count" value:&stru_100028F48 table:@"AXUIViewService"];
    v18 = [NSString localizedStringWithFormat:v17, totalItemCount];

    v19 = [(NSMutableArray *)self->_filteredList firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v19;
      v24 = @"__AXStringForVariablesSentinel";
      v20 = __UIAXStringForVariables();

      v18 = v20;
    }

    UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, v18);
  }

  v25 = [(UITableView *)self->_table safeValueForKey:@"_index", v23, v24];
  v21 = v25;
  AXPerformSafeBlock();
  [v21 bounds];
  [v21 setBounds:{0.0, 0.0}];
  v22 = [v21 layer];
  [v22 setCornerRadius:5.0];
}

- (double)_positionAccountingForKeyboard:(CGRect)a3
{
  y = a3.origin.y;
  v10.origin.x = CGRectZero.origin.x;
  v10.origin.y = CGRectZero.origin.y;
  v10.size.width = CGRectZero.size.width;
  v10.size.height = CGRectZero.size.height;
  v5 = CGRectEqualToRect(a3, v10);
  result = -1.0;
  if (!v5)
  {
    v7 = [(VOTUIItemChooserController *)self view];
    [v7 frame];
    v9 = v8;

    result = (y - v9) * 0.5;
    if (v9 >= y)
    {
      return 30.0;
    }
  }

  return result;
}

- (void)_updatePositionForKeyboard:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(VOTUIItemChooserController *)self view];
  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  if (v12 > 30.0)
  {
    [(VOTUIItemChooserController *)self _positionAccountingForKeyboard:x, y, width, height];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10001042C;
    v18[3] = &unk_100028D78;
    v18[4] = self;
    v18[5] = v10;
    v18[6] = v17;
    v18[7] = v14;
    v18[8] = v16;
    [UIView animateWithDuration:v18 animations:0.2];
  }
}

- (void)_keyboardWillShow:(id)a3
{
  v13 = a3;
  v4 = [(VOTUIItemChooserController *)self view];
  v5 = [v4 isHidden];

  if ((v5 & 1) == 0)
  {
    v6 = [v13 userInfo];
    v7 = [v6 objectForKey:UIKeyboardFrameEndUserInfoKey];
    [v7 CGRectValue];
    self->_keyboardFrame.origin.x = v8;
    self->_keyboardFrame.origin.y = v9;
    self->_keyboardFrame.size.width = v10;
    self->_keyboardFrame.size.height = v11;

    if ([(UISearchField *)self->_searchField isFirstResponder])
    {
      v12 = [(UISearchField *)self->_searchField window];
      [v12 becomeKeyWindow];

      [(VOTUIItemChooserController *)self _updatePositionForKeyboard:self->_keyboardFrame.origin.x, self->_keyboardFrame.origin.y, self->_keyboardFrame.size.width, self->_keyboardFrame.size.height];
    }
  }
}

- (void)_keyboardWillHide:(id)a3
{
  v4 = [(VOTUIItemChooserController *)self view];
  v5 = [v4 isHidden];

  if ((v5 & 1) == 0)
  {
    [(UISearchField *)self->_searchField resignFirstResponder];
    size = CGRectZero.size;
    self->_keyboardFrame.origin = CGRectZero.origin;
    self->_keyboardFrame.size = size;
  }
}

- (BOOL)accessibilityPerformEscape
{
  self->_selectedRow = 0x7FFFFFFFFFFFFFFFLL;
  self->_activateItem = 0;
  [(VOTUIItemChooserController *)self hideItemChooser:0];
  return 1;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if ([(NSMutableArray *)self->_filteredList count])
  {
    return 1;
  }

  sectionHeaders = self->_sectionHeaders;

  return [(NSArray *)sectionHeaders count];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if ([(NSMutableArray *)self->_filteredList count])
  {
    filteredList = self->_filteredList;

    return [(NSMutableArray *)filteredList count];
  }

  else
  {
    v8 = [(NSArray *)self->_sectionHeaders objectAtIndex:a4];
    v9 = [(NSMutableDictionary *)self->_items objectForKey:v8];
    v10 = [v9 count];

    return v10;
  }
}

- (id)sectionIndexTitlesForTableView:(id)a3
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

- (void)_updateSelectedRow:(id)a3
{
  v9 = a3;
  if ([(NSMutableArray *)self->_filteredList count])
  {
    originalList = self->_originalList;
    v5 = [(UITableView *)self->_table cellForRowAtIndexPath:v9];
    v6 = [v5 textLabel];
    v7 = [v6 text];
    self->_selectedRow = [(NSArray *)originalList indexOfObject:v7];
  }

  else
  {
    v5 = -[NSArray objectAtIndex:](self->_sectionHeaders, "objectAtIndex:", [v9 section]);
    v6 = [(NSMutableDictionary *)self->_items objectForKey:v5];
    [(UITableView *)self->_table deselectRowAtIndexPath:v9 animated:1];
    v7 = [v6 objectAtIndex:{objc_msgSend(v9, "row")}];
    v8 = [v7 objectAtIndex:1];
    self->_selectedRow = [v8 integerValue];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  [(VOTUIItemChooserController *)self _updateSelectedRow:a4];

  [(VOTUIItemChooserController *)self hideItemChooser:1];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v9 = a4;
  v5 = [v9 contentView];
  v6 = +[UIColor clearColor];
  [v5 setBackgroundColor:v6];

  if (v5)
  {
    do
    {
      v7 = v5;
      v5 = [v5 superview];

      v8 = +[UIColor clearColor];
      [v5 setBackgroundColor:v8];
    }

    while (v5 != v9 && v5);
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NSMutableArray *)self->_filteredList count])
  {
    v8 = -[NSMutableArray objectAtIndex:](self->_filteredList, "objectAtIndex:", [v7 row]);
    v9 = [(NSArray *)self->_originalList indexOfObject:v8];
  }

  else
  {
    v10 = -[NSArray objectAtIndex:](self->_sectionHeaders, "objectAtIndex:", [v7 section]);
    v11 = [(NSMutableDictionary *)self->_items objectForKey:v10];
    v12 = [v11 objectAtIndex:{objc_msgSend(v7, "row")}];
    v8 = [v12 objectAtIndex:0];

    v13 = [v11 objectAtIndex:{objc_msgSend(v7, "row")}];
    v14 = [v13 objectAtIndex:1];
    v9 = [v14 integerValue];
  }

  if (v9 >= [(NSArray *)self->_regionDescriptions count])
  {
    v15 = 0;
  }

  else
  {
    v15 = [(NSArray *)self->_regionDescriptions objectAtIndex:v9];
  }

  v16 = [v6 dequeueReusableCellWithIdentifier:@"TableViewCell"];
  [v16 setAccessibilityTraits:kAXIgnoreItemChooserTrait];
  [v16 setAccessibilityHint:v15];
  v17 = [v16 textLabel];
  [v17 setText:v8];

  v18 = [v16 textLabel];
  [v18 setNumberOfLines:0];

  v19 = +[UIColor whiteColor];
  v20 = [v16 textLabel];
  [v20 setTextColor:v19];

  v21 = +[UIColor clearColor];
  v22 = [v16 textLabel];
  [v22 setBackgroundColor:v21];

  v23 = +[UIColor clearColor];
  [v16 setBackgroundColor:v23];

  v24 = [v16 contentView];
  v25 = [v24 superview];
  v26 = +[UIColor clearColor];
  [v25 setBackgroundColor:v26];

  return v16;
}

- (VOTUIItemChooserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end