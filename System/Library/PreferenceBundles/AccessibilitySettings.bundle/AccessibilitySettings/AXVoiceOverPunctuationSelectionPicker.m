@interface AXVoiceOverPunctuationSelectionPicker
- (AXVoiceOverPunctuationPickerDelegate)delegate;
- (BOOL)hasRealTextInSearchField;
- (id)activePunctuationList;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_handleSearchFieldTextChange:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
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
  v16 = [(AXVoiceOverPunctuationSelectionPicker *)self view];
  [v16 addSubview:self->_searchField];

  v17 = [(AXVoiceOverPunctuationSelectionPicker *)self view];
  [v17 addSubview:self->_collectionView];

  v18 = [(AXVoiceOverPunctuationSelectionPicker *)self view];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(UICollectionView *)self->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UISearchField *)self->_searchField setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = +[NSMutableArray array];
  punctuationList = self->_punctuationList;
  v37 = self;
  self->_punctuationList = v19;

  v21 = +[AXLanguageManager sharedInstance];
  v22 = [v21 dialectForSystemLanguage];
  v38 = [v22 specificLanguageID];

  v23 = +[NSCharacterSet whitespaceNewlineAndSpecialCharacterSet];
  [SCRCPunctuationVerboseness verbosenessDictionaryForLevel:0];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v35 = v43 = 0u;
  v24 = [v35 allKeys];
  v25 = [v24 sortedArrayUsingComparator:&__block_literal_global_57];

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
            v33 = v37->_punctuationList;
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

  [(AXVoiceOverPunctuationSelectionPicker *)v37 updateConstraints];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = AXVoiceOverPunctuationSelectionPicker;
  [(AXVoiceOverPunctuationSelectionPicker *)&v4 dealloc];
}

- (void)_handleSearchFieldTextChange:(id)a3
{
  v4 = [(UISearchField *)self->_searchField text];
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
          if ([v10 rangeOfString:v4 options:1] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v11, "rangeOfString:options:", v4, 1) != 0x7FFFFFFFFFFFFFFFLL)
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
  v3 = [(AXVoiceOverPunctuationSelectionPicker *)self view];
  searchField = self->_searchField;
  v5 = [(AXVoiceOverPunctuationSelectionPicker *)self view];
  v6 = [NSLayoutConstraint constraintWithItem:searchField attribute:5 relatedBy:0 toItem:v5 attribute:5 multiplier:1.0 constant:5.0];
  [v3 addConstraint:v6];

  v7 = [(AXVoiceOverPunctuationSelectionPicker *)self view];
  v8 = self->_searchField;
  v9 = [(AXVoiceOverPunctuationSelectionPicker *)self view];
  v10 = [NSLayoutConstraint constraintWithItem:v8 attribute:6 relatedBy:0 toItem:v9 attribute:6 multiplier:1.0 constant:-5.0];
  [v7 addConstraint:v10];

  v11 = [(AXVoiceOverPunctuationSelectionPicker *)self view];
  v12 = [(UISearchField *)self->_searchField topAnchor];
  v13 = [(AXVoiceOverPunctuationSelectionPicker *)self view];
  v14 = [v13 safeAreaLayoutGuide];
  v15 = [v14 topAnchor];
  v16 = [v12 constraintEqualToAnchor:v15 constant:5.0];
  [v11 addConstraint:v16];

  v17 = [(AXVoiceOverPunctuationSelectionPicker *)self view];
  v18 = [NSLayoutConstraint constraintWithItem:self->_searchField attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:30.0];
  [v17 addConstraint:v18];

  v19 = [(AXVoiceOverPunctuationSelectionPicker *)self view];
  v20 = [NSLayoutConstraint constraintWithItem:self->_collectionView attribute:3 relatedBy:0 toItem:self->_searchField attribute:4 multiplier:1.0 constant:5.0];
  [v19 addConstraint:v20];

  v21 = [(AXVoiceOverPunctuationSelectionPicker *)self view];
  collectionView = self->_collectionView;
  v23 = [(AXVoiceOverPunctuationSelectionPicker *)self view];
  v24 = [NSLayoutConstraint constraintWithItem:collectionView attribute:5 relatedBy:0 toItem:v23 attribute:5 multiplier:1.0 constant:5.0];
  [v21 addConstraint:v24];

  v25 = [(AXVoiceOverPunctuationSelectionPicker *)self view];
  v26 = self->_collectionView;
  v27 = [(AXVoiceOverPunctuationSelectionPicker *)self view];
  v28 = [NSLayoutConstraint constraintWithItem:v26 attribute:8 relatedBy:0 toItem:v27 attribute:8 multiplier:1.0 constant:-45.0];
  [v25 addConstraint:v28];

  v32 = [(AXVoiceOverPunctuationSelectionPicker *)self view];
  v29 = self->_collectionView;
  v30 = [(AXVoiceOverPunctuationSelectionPicker *)self view];
  v31 = [NSLayoutConstraint constraintWithItem:v29 attribute:7 relatedBy:0 toItem:v30 attribute:7 multiplier:1.0 constant:-10.0];
  [v32 addConstraint:v31];
}

- (BOOL)hasRealTextInSearchField
{
  v3 = [(UISearchField *)self->_searchField markedTextRange];
  searchField = self->_searchField;
  v5 = [(UISearchField *)searchField beginningOfDocument];
  v6 = [(UISearchField *)self->_searchField endOfDocument];
  v7 = [(UISearchField *)searchField textRangeFromPosition:v5 toPosition:v6];

  if ([v3 isEqual:v7])
  {
    v8 = 0;
  }

  else
  {
    v9 = [(UISearchField *)self->_searchField text];
    v8 = [v9 length] != 0;
  }

  return v8;
}

- (id)activePunctuationList
{
  v3 = [(AXVoiceOverPunctuationSelectionPicker *)self hasRealTextInSearchField];
  v4 = &OBJC_IVAR___AXVoiceOverPunctuationSelectionPicker__punctuationList;
  if (v3)
  {
    v4 = &OBJC_IVAR___AXVoiceOverPunctuationSelectionPicker__filteredPunctuationList;
  }

  v5 = *(&self->super.super.super.isa + *v4);

  return v5;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(AXVoiceOverPunctuationSelectionPicker *)self activePunctuationList:a3];
  v5 = [v4 count];

  return v5;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v12 = a4;
  v5 = [v12 row];
  v6 = [(AXVoiceOverPunctuationSelectionPicker *)self activePunctuationList];
  v7 = [v6 count];

  if (v5 < v7)
  {
    v8 = [(AXVoiceOverPunctuationSelectionPicker *)self delegate];
    v9 = [(AXVoiceOverPunctuationSelectionPicker *)self activePunctuationList];
    v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v12, "row")}];
    v11 = [v10 objectForKeyedSubscript:@"character"];
    [v8 buttonPickerWantsToInsertText:v11];

    [(AXVoiceOverPunctuationSelectionPicker *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AXVoiceOverPunctuationSelectionPicker *)self activePunctuationList];
  v9 = [v7 dequeueReusableCellWithReuseIdentifier:@"AXVOPunctuationCollectionViewCell" forIndexPath:v6];

  v10 = [v6 row];
  if (v10 < [v8 count])
  {
    v11 = [AXAttributedString alloc];
    v12 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
    v13 = [v12 objectForKeyedSubscript:@"character"];
    v14 = [v11 initWithString:v13];

    v18 = UIAccessibilitySpeechAttributePunctuation;
    v19 = &__kCFBooleanTrue;
    v15 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    [v14 setAttributes:v15];

    v16 = [v9 label];
    [v16 setText:v14];
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