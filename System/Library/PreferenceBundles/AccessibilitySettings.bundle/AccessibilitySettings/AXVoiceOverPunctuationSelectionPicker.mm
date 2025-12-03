@interface AXVoiceOverPunctuationSelectionPicker
- (AXVoiceOverPunctuationPickerDelegate)delegate;
- (BOOL)hasRealTextInSearchField;
- (id)activePunctuationList;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_handleSearchFieldTextChange:(id)change;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)loadView;
- (void)updateConstraints;
@end

@implementation AXVoiceOverPunctuationSelectionPicker

- (void)loadView
{
  v44.receiver = self;
  v44.super_class = AXVoiceOverPunctuationSelectionPicker;
  [(AXVoiceOverPunctuationSelectionPicker *)&v44 loadView];
  v3 = +[NSMutableArray array];
  filteredPunctuationList = self->_filteredPunctuationList;
  self->_filteredPunctuationList = v3;

  v5 = [UISearchField alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v9 = [v5 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  searchField = self->_searchField;
  self->_searchField = v9;

  [(UISearchField *)self->_searchField setDelegate:self];
  [(UISearchField *)self->_searchField setAutocapitalizationType:0];
  [(UISearchField *)self->_searchField setReturnKeyType:6];
  [(UISearchField *)self->_searchField setAutocorrectionType:1];
  v11 = +[NSNotificationCenter defaultCenter];
  [v11 addObserver:self selector:"_handleSearchFieldTextChange:" name:UITextFieldTextDidChangeNotification object:0];

  v12 = objc_opt_new();
  [v12 setSectionInset:{0.0, 5.0, 0.0, 5.0}];
  [v12 setMinimumInteritemSpacing:5.0];
  [v12 setMinimumLineSpacing:5.0];
  [objc_opt_class() cellSize];
  [v12 setItemSize:?];
  v36 = v12;
  v13 = [[UICollectionView alloc] initWithFrame:v12 collectionViewLayout:{CGRectZero.origin.x, y, width, height}];
  collectionView = self->_collectionView;
  self->_collectionView = v13;

  [(UICollectionView *)self->_collectionView setDataSource:self];
  v15 = +[UIColor clearColor];
  [(UICollectionView *)self->_collectionView setBackgroundColor:v15];

  [(UICollectionView *)self->_collectionView setDelegate:self];
  [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"AXVOPunctuationCollectionViewCell"];
  view = [(AXVoiceOverPunctuationSelectionPicker *)self view];
  [view addSubview:self->_searchField];

  view2 = [(AXVoiceOverPunctuationSelectionPicker *)self view];
  [view2 addSubview:self->_collectionView];

  view3 = [(AXVoiceOverPunctuationSelectionPicker *)self view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(UICollectionView *)self->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UISearchField *)self->_searchField setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = +[NSMutableArray array];
  punctuationList = self->_punctuationList;
  selfCopy = self;
  self->_punctuationList = v19;

  v21 = +[AXLanguageManager sharedInstance];
  dialectForSystemLanguage = [v21 dialectForSystemLanguage];
  specificLanguageID = [dialectForSystemLanguage specificLanguageID];

  v23 = +[NSCharacterSet whitespaceNewlineAndSpecialCharacterSet];
  [SCRCPunctuationVerboseness verbosenessDictionaryForLevel:0];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v35 = v43 = 0u;
  allKeys = [v35 allKeys];
  v25 = [allKeys sortedArrayUsingComparator:&__block_literal_global_57];

  v26 = [v25 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v41;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v41 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v39 = strtol([*(*(&v40 + 1) + 8 * i) UTF8String], 0, 16);
        v30 = [NSString stringWithCharacters:&v39 length:1];
        if (([v23 characterIsMember:v39] & 1) == 0 && v39 != 173)
        {
          v31 = AXVOLocalizedStringForCharacter();
          if (v31 || (v31 = AXCopyUnicodeDescriptionStringForCharacter()) != 0)
          {
            v32 = v31;
            v33 = selfCopy->_punctuationList;
            v45[0] = @"character";
            v45[1] = @"description";
            v46[0] = v30;
            v46[1] = v31;
            v34 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:2];
            [(NSMutableArray *)v33 addObject:v34];
          }
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v27);
  }

  [(AXVoiceOverPunctuationSelectionPicker *)selfCopy updateConstraints];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = AXVoiceOverPunctuationSelectionPicker;
  [(AXVoiceOverPunctuationSelectionPicker *)&v4 dealloc];
}

- (void)_handleSearchFieldTextChange:(id)change
{
  text = [(UISearchField *)self->_searchField text];
  [(NSMutableArray *)self->_filteredPunctuationList removeAllObjects];
  if ([(AXVoiceOverPunctuationSelectionPicker *)self hasRealTextInSearchField])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    obj = self->_punctuationList;
    v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [v9 objectForKeyedSubscript:@"description"];
          v11 = [v9 objectForKeyedSubscript:@"character"];
          if ([v10 rangeOfString:text options:1] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v11, "rangeOfString:options:", text, 1) != 0x7FFFFFFFFFFFFFFFLL)
          {
            [(NSMutableArray *)self->_filteredPunctuationList addObject:v9];
          }
        }

        v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }

  [(UICollectionView *)self->_collectionView reloadData];
}

- (void)updateConstraints
{
  view = [(AXVoiceOverPunctuationSelectionPicker *)self view];
  searchField = self->_searchField;
  view2 = [(AXVoiceOverPunctuationSelectionPicker *)self view];
  v6 = [NSLayoutConstraint constraintWithItem:searchField attribute:5 relatedBy:0 toItem:view2 attribute:5 multiplier:1.0 constant:5.0];
  [view addConstraint:v6];

  view3 = [(AXVoiceOverPunctuationSelectionPicker *)self view];
  v8 = self->_searchField;
  view4 = [(AXVoiceOverPunctuationSelectionPicker *)self view];
  v10 = [NSLayoutConstraint constraintWithItem:v8 attribute:6 relatedBy:0 toItem:view4 attribute:6 multiplier:1.0 constant:-5.0];
  [view3 addConstraint:v10];

  view5 = [(AXVoiceOverPunctuationSelectionPicker *)self view];
  topAnchor = [(UISearchField *)self->_searchField topAnchor];
  view6 = [(AXVoiceOverPunctuationSelectionPicker *)self view];
  safeAreaLayoutGuide = [view6 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:5.0];
  [view5 addConstraint:v16];

  view7 = [(AXVoiceOverPunctuationSelectionPicker *)self view];
  v18 = [NSLayoutConstraint constraintWithItem:self->_searchField attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:30.0];
  [view7 addConstraint:v18];

  view8 = [(AXVoiceOverPunctuationSelectionPicker *)self view];
  v20 = [NSLayoutConstraint constraintWithItem:self->_collectionView attribute:3 relatedBy:0 toItem:self->_searchField attribute:4 multiplier:1.0 constant:5.0];
  [view8 addConstraint:v20];

  view9 = [(AXVoiceOverPunctuationSelectionPicker *)self view];
  collectionView = self->_collectionView;
  view10 = [(AXVoiceOverPunctuationSelectionPicker *)self view];
  v24 = [NSLayoutConstraint constraintWithItem:collectionView attribute:5 relatedBy:0 toItem:view10 attribute:5 multiplier:1.0 constant:5.0];
  [view9 addConstraint:v24];

  view11 = [(AXVoiceOverPunctuationSelectionPicker *)self view];
  v26 = self->_collectionView;
  view12 = [(AXVoiceOverPunctuationSelectionPicker *)self view];
  v28 = [NSLayoutConstraint constraintWithItem:v26 attribute:8 relatedBy:0 toItem:view12 attribute:8 multiplier:1.0 constant:-45.0];
  [view11 addConstraint:v28];

  view13 = [(AXVoiceOverPunctuationSelectionPicker *)self view];
  v29 = self->_collectionView;
  view14 = [(AXVoiceOverPunctuationSelectionPicker *)self view];
  v31 = [NSLayoutConstraint constraintWithItem:v29 attribute:7 relatedBy:0 toItem:view14 attribute:7 multiplier:1.0 constant:-10.0];
  [view13 addConstraint:v31];
}

- (BOOL)hasRealTextInSearchField
{
  markedTextRange = [(UISearchField *)self->_searchField markedTextRange];
  searchField = self->_searchField;
  beginningOfDocument = [(UISearchField *)searchField beginningOfDocument];
  endOfDocument = [(UISearchField *)self->_searchField endOfDocument];
  v7 = [(UISearchField *)searchField textRangeFromPosition:beginningOfDocument toPosition:endOfDocument];

  if ([markedTextRange isEqual:v7])
  {
    v8 = 0;
  }

  else
  {
    text = [(UISearchField *)self->_searchField text];
    v8 = [text length] != 0;
  }

  return v8;
}

- (id)activePunctuationList
{
  hasRealTextInSearchField = [(AXVoiceOverPunctuationSelectionPicker *)self hasRealTextInSearchField];
  v4 = &OBJC_IVAR___AXVoiceOverPunctuationSelectionPicker__punctuationList;
  if (hasRealTextInSearchField)
  {
    v4 = &OBJC_IVAR___AXVoiceOverPunctuationSelectionPicker__filteredPunctuationList;
  }

  v5 = *(&self->super.super.super.isa + *v4);

  return v5;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(AXVoiceOverPunctuationSelectionPicker *)self activePunctuationList:view];
  v5 = [v4 count];

  return v5;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
  activePunctuationList = [(AXVoiceOverPunctuationSelectionPicker *)self activePunctuationList];
  v7 = [activePunctuationList count];

  if (v5 < v7)
  {
    delegate = [(AXVoiceOverPunctuationSelectionPicker *)self delegate];
    activePunctuationList2 = [(AXVoiceOverPunctuationSelectionPicker *)self activePunctuationList];
    v10 = [activePunctuationList2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    v11 = [v10 objectForKeyedSubscript:@"character"];
    [delegate buttonPickerWantsToInsertText:v11];

    [(AXVoiceOverPunctuationSelectionPicker *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  activePunctuationList = [(AXVoiceOverPunctuationSelectionPicker *)self activePunctuationList];
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"AXVOPunctuationCollectionViewCell" forIndexPath:pathCopy];

  v10 = [pathCopy row];
  if (v10 < [activePunctuationList count])
  {
    v11 = [AXAttributedString alloc];
    v12 = [activePunctuationList objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    v13 = [v12 objectForKeyedSubscript:@"character"];
    v14 = [v11 initWithString:v13];

    v18 = UIAccessibilitySpeechAttributePunctuation;
    v19 = &__kCFBooleanTrue;
    v15 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    [v14 setAttributes:v15];

    label = [v9 label];
    [label setText:v14];
  }

  [v9 setAccessibilityTraits:UIAccessibilityTraitButton];

  return v9;
}

- (AXVoiceOverPunctuationPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end