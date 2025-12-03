@interface PHHandsetDialerLCDView
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)resignFirstResponder;
- (BOOL)shouldInsertStringAtCurrentPosition:(id)position deletingPreviousCharacter:(BOOL)character;
- (BOOL)textFieldShouldBeginEditing:(id)editing;
- (CGSize)intrinsicContentSize;
- (DialerLCDFieldDelegate)delegate;
- (PHDialerLCDResultDelegate)resultDelegate;
- (TPPillView)pillView;
- (double)addContactButtonContentInsetConstant;
- (double)addContactButtonTopConstraintConstant;
- (double)pillViewTopConstraintConstant;
- (double)pillViewTopOffset;
- (double)remoteViewControllerLCDOffset;
- (float)addNumberFontSize;
- (float)pillViewHiddenOffset;
- (float)resultButtonsHorizontalPadding;
- (float)spacingBetweenNumberAndContactResult;
- (float)spacingBetweenNumberBaselineAndNameBaseline;
- (float)spacingBetweenPrimaryResultButtons;
- (id)attributedStringForName:(id)name label:(id)label;
- (id)attributedStringForSource:(id)source;
- (id)generateBusinessNameLabelHorizontalConstraints;
- (id)generateNumberLabelHorizontalConstraints;
- (id)menuForPillView:(id)view;
- (id)newAddContactButton;
- (id)newResultButton;
- (id)newSearchButton;
- (id)numberLabelFont;
- (id)resultContactPhoneNumber;
- (id)text;
- (id)unformattedText;
- (void)_makeCalloutVisible:(BOOL)visible;
- (void)applyLayoutConstraints;
- (void)applyLayoutConstraintsForSmartDialer;
- (void)checkAndUpdateVisibilityForView:(id)view shouldInvertVisibility:(BOOL)visibility;
- (void)contactResultButtonPressed;
- (void)copy:(id)copy;
- (void)dealloc;
- (void)deleteCharacter;
- (void)handleDialerResultButtonPressedOfType:(int64_t)type;
- (void)handleTapGesture:(id)gesture;
- (void)hideBusinessNameIfVisible;
- (void)hideResultsButtons;
- (void)insertStringAtCurrentPosition:(id)position deletingPreviousCharacter:(BOOL)character;
- (void)launchBusinessMessagesSupport;
- (void)paste:(id)paste;
- (void)setContactSearchResults:(id)results hasCompleteMatch:(BOOL)match;
- (void)setIsHostedInRemoteViewController:(BOOL)controller;
- (void)setSenderIdentity:(id)identity;
- (void)setText:(id)text needsFormat:(BOOL)format name:(id)name label:(id)label;
- (void)textField:(id)field didUpdateString:(id)string;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)updateAddAndDeleteButtonForText:(id)text name:(id)name label:(id)label source:(id)source suggestion:(BOOL)suggestion animated:(BOOL)animated;
- (void)updateContactResultButtons;
- (void)updateNumberAndBusinessNameLabelHorizontalConstraints;
- (void)updateResultButtonsVisiblityForPrimary:(BOOL)primary secondary:(BOOL)secondary;
@end

@implementation PHHandsetDialerLCDView

- (float)spacingBetweenNumberBaselineAndNameBaseline
{
  v2 = +[PHUIConfiguration screenSize];
  result = 25.0;
  if (v2 > 12)
  {
    if (v2 == (&dword_C + 1))
    {
      return result;
    }

    if (v2 != (&dword_C + 2))
    {
      if (v2 == (&dword_C + 3))
      {
        return result;
      }

      return 34.0;
    }

    return 42.0;
  }

  if (v2)
  {
    if (v2 == (&dword_8 + 3))
    {
      return result;
    }

    if (v2 != &dword_C)
    {
      return 34.0;
    }

    return 42.0;
  }

  return 24.0;
}

- (id)numberLabelFont
{
  v2 = [UIFont systemFontOfSize:36.0];
  withCaseSensitiveAttribute = [v2 withCaseSensitiveAttribute];

  return withCaseSensitiveAttribute;
}

- (float)addNumberFontSize
{
  v2 = +[PHUIConfiguration screenSize];
  result = 18.0;
  if (!v2)
  {
    return 16.0;
  }

  return result;
}

- (id)generateNumberLabelHorizontalConstraints
{
  v7 = @"numberLabel";
  numberTextField = [(PHHandsetDialerLCDView *)self numberTextField];
  v8 = numberTextField;
  v3 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  v4 = [NSString stringWithFormat:@"|[numberLabel]|"];
  v5 = [NSLayoutConstraint constraintsWithVisualFormat:v4 options:0x10000 metrics:0 views:v3];

  return v5;
}

- (id)generateBusinessNameLabelHorizontalConstraints
{
  v7 = @"businessName";
  businessNameField = [(PHHandsetDialerLCDView *)self businessNameField];
  v8 = businessNameField;
  v3 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  v4 = [NSString stringWithFormat:@"|[businessName]|"];
  v5 = [NSLayoutConstraint constraintsWithVisualFormat:v4 options:0x10000 metrics:0 views:v3];

  return v5;
}

- (id)menuForPillView:(id)view
{
  delegate = [(PHHandsetDialerLCDView *)self delegate];
  selectedSenderIdentity = [(PHHandsetDialerLCDView *)self selectedSenderIdentity];
  v6 = [delegate senderIdentityMenuForDialerField:self selectedSenderIdentity:selectedSenderIdentity];

  return v6;
}

- (void)setSenderIdentity:(id)identity
{
  identityCopy = identity;
  pillView = [(PHHandsetDialerLCDView *)self pillView];
  localizedShortName = pillView;
  if (identity)
  {
    [pillView setHidden:0];

    localizedShortName = [identityCopy localizedShortName];
    pillView2 = [(PHHandsetDialerLCDView *)self pillView];
    [pillView2 setBadgeText:localizedShortName];
  }

  else
  {
    [pillView setHidden:1];
  }

  [(PHHandsetDialerLCDView *)self setSelectedSenderIdentity:identityCopy];
}

- (CGSize)intrinsicContentSize
{
  v2 = +[PHUIConfiguration handsetDialerSize];
  v3 = 52.0;
  if (v2 != &dword_0 + 1)
  {
    v3 = 64.0;
  }

  v4 = 340.0;
  result.height = v3;
  result.width = v4;
  return result;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHHandsetDialerLCDView;
  [(PHHandsetDialerLCDView *)&v4 dealloc];
}

- (id)text
{
  text = [(PHLCDViewTextField *)self->_numberTextField text];
  v3 = +[NSCharacterSet unicodeDirectionalCharactersSet];
  v4 = [text stringByRemovingCharactersFromSet:v3];

  return v4;
}

- (id)unformattedText
{
  text = [(PHHandsetDialerLCDView *)self text];
  unformattedNumber = [text unformattedNumber];

  return unformattedNumber;
}

- (void)setText:(id)text needsFormat:(BOOL)format name:(id)name label:(id)label
{
  numberTextField = self->_numberTextField;
  nameCopy = name;
  textCopy = text;
  [(PHLCDViewTextField *)numberTextField setText:textCopy];
  [(PHHandsetDialerLCDView *)self updateAddAndDeleteButtonForText:textCopy name:nameCopy animated:1];
}

- (void)deleteCharacter
{
  isEditing = [(PHLCDViewTextField *)self->_numberTextField isEditing];
  numberTextField = self->_numberTextField;
  if (isEditing)
  {

    [(PHLCDViewTextField *)numberTextField deleteBackward];
  }

  else
  {
    text = [(PHLCDViewTextField *)numberTextField text];
    v5 = UIFormattedPhoneStringByRemovingFromEnd();
    [(PHLCDViewTextField *)numberTextField setText:v5];
  }
}

- (BOOL)shouldInsertStringAtCurrentPosition:(id)position deletingPreviousCharacter:(BOOL)character
{
  characterCopy = character;
  positionCopy = position;
  v7 = +[NSCharacterSet pauseCharacterSet];
  v8 = [positionCopy rangeOfCharacterFromSet:v7];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = !characterCopy;
  }

  if (v9)
  {
    return 1;
  }

  if ([(PHLCDViewTextField *)self->_numberTextField isEditing])
  {
    v11 = +[NSCharacterSet unicodeDirectionalCharactersSet];
    text = [(PHLCDViewTextField *)self->_numberTextField text];
    v13 = [v11 characterIsMember:{objc_msgSend(text, "characterAtIndex:", 0)}];

    numberTextField = self->_numberTextField;
    if (v13)
    {
      return [(PHLCDViewTextField *)numberTextField selectionRange]> 2;
    }

    else
    {
      selectedTextRange = [(PHLCDViewTextField *)numberTextField selectedTextRange];
      start = [selectedTextRange start];
      beginningOfDocument = [(PHLCDViewTextField *)self->_numberTextField beginningOfDocument];
      v10 = start != beginningOfDocument;
    }
  }

  else
  {
    text2 = [(PHLCDViewTextField *)self->_numberTextField text];
    v16 = +[NSCharacterSet unicodeDirectionalCharactersSet];
    v17 = [text2 stringByTrimmingCharactersInSet:v16];

    v18 = +[NSCharacterSet starAndOctothorpeCharacterSet];
    v10 = [v17 rangeOfCharacterFromSet:v18] != 0;
  }

  return v10;
}

- (void)insertStringAtCurrentPosition:(id)position deletingPreviousCharacter:(BOOL)character
{
  characterCopy = character;
  positionCopy = position;
  if ([PHHandsetDialerLCDView shouldInsertStringAtCurrentPosition:"shouldInsertStringAtCurrentPosition:deletingPreviousCharacter:" deletingPreviousCharacter:?])
  {
    if ([(PHLCDViewTextField *)self->_numberTextField isEditing])
    {
      if (characterCopy)
      {
        [(PHLCDViewTextField *)self->_numberTextField deleteBackward];
      }

      numberTextField = self->_numberTextField;
      selectedTextRange = [(PHLCDViewTextField *)numberTextField selectedTextRange];
      [(PHLCDViewTextField *)numberTextField replaceRange:selectedTextRange withText:positionCopy];
    }

    else
    {
      if (characterCopy)
      {
        [(PHHandsetDialerLCDView *)self deleteCharacter];
      }

      text = [(PHHandsetDialerLCDView *)self text];
      selectedTextRange = [text stringByAppendingString:positionCopy];

      [(PHHandsetDialerLCDView *)self setText:selectedTextRange needsFormat:!characterCopy];
    }

    [(PHHandsetDialerLCDView *)self _requestMakeCutCopyPasteCalloutVisible:0];
  }
}

- (void)setContactSearchResults:(id)results hasCompleteMatch:(BOOL)match
{
  resultsCopy = results;
  if ([(PHHandsetDialerLCDView *)self appType]== &dword_0 + 1 && [(PHHandsetDialerLCDView *)self enableSmartDialer])
  {
    if ([resultsCopy count])
    {
      firstObject = [resultsCopy firstObject];
      contactSearchResult = self->_contactSearchResult;
      self->_contactSearchResult = firstObject;

      v8 = [resultsCopy count] - 1;
    }

    else
    {
      v9 = self->_contactSearchResult;
      self->_contactSearchResult = 0;

      v8 = 0;
    }

    self->_contactResultCount = v8;
    self->_hasCompleteMatch = match;
    [(PHHandsetDialerLCDView *)self updateContactResultButtons];
  }
}

- (id)attributedStringForName:(id)name label:(id)label
{
  labelCopy = label;
  nameCopy = name;
  v8 = [NSMutableAttributedString alloc];
  nameCopy = [NSString stringWithFormat:@"%@", nameCopy];
  v10 = [v8 initWithString:nameCopy];

  [(PHHandsetDialerLCDView *)self nameAndLabelFontSize];
  v11 = [UIFont systemFontOfSize:?];
  v12 = [nameCopy length];

  [v10 addAttribute:NSFontAttributeName value:v11 range:{0, v12}];
  if (labelCopy)
  {
    v13 = [NSAttributedString alloc];
    labelCopy = [NSString stringWithFormat:@" %@", labelCopy];
    v15 = [v13 initWithString:labelCopy];
    [v10 appendAttributedString:v15];

    [v11 pointSize];
    v16 = [UIFont boldSystemFontOfSize:?];
    [v10 addAttribute:NSFontAttributeName value:v16 range:{objc_msgSend(v10, "length") - objc_msgSend(labelCopy, "length"), objc_msgSend(labelCopy, "length")}];
  }

  v17 = [v10 copy];

  return v17;
}

- (id)attributedStringForSource:(id)source
{
  sourceCopy = source;
  v5 = [NSMutableAttributedString alloc];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"IDENTIFICATION_SOURCE_%@" value:&stru_50D80 table:@"General"];
  sourceCopy = [NSString stringWithFormat:v7, sourceCopy];

  v9 = [v5 initWithString:sourceCopy];
  [(PHHandsetDialerLCDView *)self sourceLabelFontSize];
  v10 = [UIFont systemFontOfSize:?];
  [v9 addAttribute:NSFontAttributeName value:v10 range:{0, objc_msgSend(v9, "length")}];
  v11 = [v9 copy];

  return v11;
}

- (void)checkAndUpdateVisibilityForView:(id)view shouldInvertVisibility:(BOOL)visibility
{
  if (visibility)
  {
    viewCopy = view;
    [viewCopy alpha];
    [viewCopy setAlpha:1.0 - v4];
  }
}

- (void)updateAddAndDeleteButtonForText:(id)text name:(id)name label:(id)label source:(id)source suggestion:(BOOL)suggestion animated:(BOOL)animated
{
  animatedCopy = animated;
  nameCopy = name;
  labelCopy = label;
  sourceCopy = source;
  v16 = [text length];
  v17 = v16 != 0;
  if (nameCopy)
  {
    v18 = [(PHHandsetDialerLCDView *)self attributedStringForName:nameCopy label:labelCopy];
    contactLabel = [(PHHandsetDialerLCDView *)self contactLabel];
    [contactLabel setAttributedText:v18];

    if (sourceCopy)
    {
      sourceLabel2 = [(PHHandsetDialerLCDView *)self attributedStringForSource:sourceCopy];
      sourceLabel = [(PHHandsetDialerLCDView *)self sourceLabel];
      [sourceLabel setAttributedText:sourceLabel2];
    }

    else
    {
      sourceLabel2 = [(PHHandsetDialerLCDView *)self sourceLabel];
      [sourceLabel2 setAttributedText:0];
    }
  }

  v46 = labelCopy;
  if ([(PHHandsetDialerLCDView *)self appType]== &dword_0 + 1 && [(PHHandsetDialerLCDView *)self enableSmartDialer])
  {
    if (v16)
    {
      v22 = [nameCopy length] != 0;
      v23 = !self->_hasCompleteMatch;
      v45 = v22;
    }

    else
    {
      v22 = 0;
      v45 = 0;
      v23 = 0;
    }

    v35 = v23;
    addContactButtonVisible = self->_addContactButtonVisible;
    deleteButtonVisible = self->_deleteButtonVisible;
    contactLabelButtonVisible = self->_contactLabelButtonVisible;
    v39 = PHDefaultLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = @"NO";
      if (addContactButtonVisible == v35)
      {
        v41 = @"NO";
      }

      else
      {
        v41 = @"YES";
      }

      if (deleteButtonVisible == v17)
      {
        v42 = @"NO";
      }

      else
      {
        v42 = @"YES";
      }

      *buf = 138412802;
      v67 = v41;
      v68 = 2112;
      v69 = v42;
      if (contactLabelButtonVisible != v22)
      {
        v40 = @"YES";
      }

      v70 = 2112;
      v71 = v40;
      _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "addContactButtonVisibilityChanged: %@, deleteButtonVisibilityChanged: %@, contactLabelVisibilityChanged: %@", buf, 0x20u);
    }

    if (addContactButtonVisible != v35 || deleteButtonVisible != v17 || contactLabelButtonVisible != v22)
    {
      if ((v45 & 1) != 0 || !self->_contactLabelButtonVisible)
      {
        v55[0] = _NSConcreteStackBlock;
        v55[1] = 3221225472;
        v55[2] = __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_130;
        v55[3] = &unk_4C8F0;
        v56 = addContactButtonVisible != v35;
        v57 = deleteButtonVisible != v17;
        v58 = contactLabelButtonVisible != v22;
        v55[4] = self;
        v59 = v17;
        v43 = objc_retainBlock(v55);
        [UIView animateWithDuration:v43 animations:0.150000006];
      }

      else
      {
        v62[0] = _NSConcreteStackBlock;
        v62[1] = 3221225472;
        v62[2] = __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke;
        v62[3] = &unk_4C8C8;
        v63 = addContactButtonVisible != v35;
        v64 = deleteButtonVisible != v17;
        v62[4] = self;
        v65 = v17;
        v43 = objc_retainBlock(v62);
        v60[0] = _NSConcreteStackBlock;
        v60[1] = 3221225472;
        v60[2] = __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_129;
        v60[3] = &unk_4C720;
        v61 = contactLabelButtonVisible != v22;
        v60[4] = self;
        v44 = objc_retainBlock(v60);
        [UIView animateWithDuration:v44 animations:v43 completion:0.150000006];
      }

      self->_addContactButtonVisible = v35;
      self->_deleteButtonVisible = v17;
      self->_contactLabelButtonVisible = v22;
      self->_hasCompleteMatch = 0;
    }

    goto LABEL_26;
  }

  if (self->_addContactButtonVisible && v16 != 0)
  {
    if (nameCopy)
    {
      addContactButton = [(PHHandsetDialerLCDView *)self addContactButton];
      [addContactButton alpha];
      v27 = v26;

      if (v27 >= 0.0)
      {
        v54[0] = _NSConcreteStackBlock;
        v54[1] = 3221225472;
        v54[2] = __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_131;
        v54[3] = &unk_4C918;
        v54[4] = self;
        v28 = objc_retainBlock(v54);
        v53[0] = _NSConcreteStackBlock;
        v53[1] = 3221225472;
        v53[2] = __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_3;
        v53[3] = &unk_4C668;
        v53[4] = self;
        v29 = v53;
LABEL_19:
        [UIView animateWithDuration:v29 animations:v28 completion:0.150000006];
      }
    }

    else
    {
      contactLabel2 = [(PHHandsetDialerLCDView *)self contactLabel];
      [contactLabel2 alpha];
      v32 = v31;

      if (v32 >= 0.0)
      {
        v52[0] = _NSConcreteStackBlock;
        v52[1] = 3221225472;
        v52[2] = __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_4;
        v52[3] = &unk_4C918;
        v52[4] = self;
        v28 = objc_retainBlock(v52);
        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_6;
        v51[3] = &unk_4C668;
        v51[4] = self;
        v29 = v51;
        goto LABEL_19;
      }
    }
  }

  if (self->_addContactButtonVisible != v17 || self->_deleteButtonVisible != v17)
  {
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_7;
    v47[3] = &unk_4C940;
    v47[4] = self;
    v49 = v17;
    v48 = nameCopy;
    v50 = v17;
    v33 = objc_retainBlock(v47);
    v34 = v33;
    if (animatedCopy)
    {
      [UIView animateWithDuration:v33 animations:0.300000012];
    }

    else
    {
      (v33[2])(v33);
    }

    self->_addContactButtonVisible = v17;
    self->_deleteButtonVisible = v17;
  }

LABEL_26:
}

id __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_2;
  v2[3] = &unk_4C8A0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);
  v2[4] = *(a1 + 32);
  return [UIView animateWithDuration:v2 animations:0.150000006];
}

void __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_2(uint64_t a1)
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"NO";
    if (*(a1 + 40))
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    if (*(a1 + 41))
    {
      v3 = @"YES";
    }

    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Updating animations for addContactButtonVisibilityChanged: %@, deleteButtonVisibilityChanged: %@", &v10, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = [v5 addContactButton];
  [v5 checkAndUpdateVisibilityForView:v6 shouldInvertVisibility:*(a1 + 40)];

  if (*(a1 + 41) == 1)
  {
    v7 = [*(a1 + 32) delegate];
    v8 = v7;
    v9 = 0.0;
    if (*(a1 + 42))
    {
      v9 = 1.0;
    }

    [v7 setDeleteButtonAlpha:v9];
  }
}

void __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_129(uint64_t a1)
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 40))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Updating animations for contactLabelVisibilityChanged: %@", &v8, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = [v4 contactLabel];
  [v4 checkAndUpdateVisibilityForView:v5 shouldInvertVisibility:*(a1 + 40)];

  v6 = *(a1 + 32);
  v7 = [v6 sourceLabel];
  [v6 checkAndUpdateVisibilityForView:v7 shouldInvertVisibility:*(a1 + 40)];
}

void __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_130(uint64_t a1)
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"NO";
    if (*(a1 + 40))
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v5 = *(a1 + 42);
    if (*(a1 + 41))
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    *v16 = 138412802;
    if (v5)
    {
      v3 = @"YES";
    }

    *&v16[4] = v4;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Updating animations for addContactButtonVisibilityChanged: %@, deleteButtonVisibilityChanged: %@, contactLabelVisibilityChanged: %@", v16, 0x20u);
  }

  v7 = *(a1 + 32);
  v8 = [v7 contactLabel];
  [v7 checkAndUpdateVisibilityForView:v8 shouldInvertVisibility:*(a1 + 42)];

  v9 = *(a1 + 32);
  v10 = [v9 sourceLabel];
  [v9 checkAndUpdateVisibilityForView:v10 shouldInvertVisibility:*(a1 + 42)];

  v11 = *(a1 + 32);
  v12 = [v11 addContactButton];
  [v11 checkAndUpdateVisibilityForView:v12 shouldInvertVisibility:*(a1 + 40)];

  if (*(a1 + 41) == 1)
  {
    v13 = [*(a1 + 32) delegate];
    v14 = v13;
    v15 = 0.0;
    if (*(a1 + 43))
    {
      v15 = 1.0;
    }

    [v13 setDeleteButtonAlpha:{v15, *v16}];
  }
}

id __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_131(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_2_132;
  v2[3] = &unk_4C668;
  v2[4] = *(a1 + 32);
  return [UIView animateWithDuration:v2 animations:0.150000006];
}

void __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_2_132(uint64_t a1)
{
  v2 = [*(a1 + 32) contactLabel];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) sourceLabel];
  [v3 setAlpha:1.0];
}

void __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) addContactButton];
  [v1 setAlpha:0.0];
}

id __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_4(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_5;
  v2[3] = &unk_4C668;
  v2[4] = *(a1 + 32);
  return [UIView animateWithDuration:v2 animations:0.150000006];
}

void __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) addContactButton];
  [v1 setAlpha:1.0];
}

void __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_6(uint64_t a1)
{
  v1 = [*(a1 + 32) contactLabel];
  [v1 setAlpha:0.0];
}

void __96__PHHandsetDialerLCDView_updateAddAndDeleteButtonForText_name_label_source_suggestion_animated___block_invoke_7(uint64_t a1)
{
  v2 = 0.0;
  v3 = 0.0;
  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 40))
    {
      v3 = 1.0;
    }

    else
    {
      v3 = 0.0;
    }
  }

  v4 = [*(a1 + 32) contactLabel];
  [v4 setAlpha:v3];

  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 40))
    {
      v2 = 1.0;
    }

    else
    {
      v2 = 0.0;
    }
  }

  v5 = [*(a1 + 32) sourceLabel];
  [v5 setAlpha:v2];

  v6 = 0.0;
  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 40))
    {
      v6 = 0.0;
    }

    else
    {
      v6 = 1.0;
    }
  }

  v7 = [*(a1 + 32) addContactButton];
  [v7 setAlpha:v6];

  v8 = [*(a1 + 32) delegate];
  v10 = v8;
  v9 = 1.0;
  if (!*(a1 + 49))
  {
    v9 = 0.0;
  }

  [v8 setDeleteButtonAlpha:v9];
}

- (void)_makeCalloutVisible:(BOOL)visible
{
  visibleCopy = visible;
  v19 = +[UIMenuController sharedMenuController];
  if ([v19 isMenuVisible] != visibleCopy)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    if (visibleCopy)
    {
      v6 = 25.0;
      if ([(PHHandsetDialerLCDView *)self appType]== &dword_0 + 1 && [(PHHandsetDialerLCDView *)self enableSmartDialer])
      {
        [(PHHandsetDialerLCDView *)self remoteViewControllerLCDOffset];
        v6 = v7 + 43.0 + 25.0;
      }

      [(PHHandsetDialerLCDView *)self bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      [(PHHandsetDialerLCDView *)self bounds];
      v17 = floor(v16 * 0.5);
      if (v6 >= v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = v6;
      }

      v21.origin.x = v9;
      v21.origin.y = v11;
      v21.size.width = v13;
      v21.size.height = v15;
      v22 = CGRectInset(v21, 0.0, v18);
      [v19 setTargetRect:self inView:{v22.origin.x, v22.origin.y, v22.size.width, v22.size.height}];
      [v19 setArrowDirection:1];
      [v19 setMenuVisible:1 animated:1];
      [v5 addObserver:self selector:"_menuDidHide:" name:UIMenuControllerDidHideMenuNotification object:0];
    }

    else
    {
      [v19 setMenuVisible:0 animated:1];
      [v5 removeObserver:self name:UIMenuControllerDidHideMenuNotification object:0];
    }
  }
}

- (BOOL)resignFirstResponder
{
  v5.receiver = self;
  v5.super_class = PHHandsetDialerLCDView;
  resignFirstResponder = [(PHHandsetDialerLCDView *)&v5 resignFirstResponder];
  if (resignFirstResponder)
  {
    [(PHHandsetDialerLCDView *)self _makeCalloutVisible:0];
  }

  return resignFirstResponder;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if ("copy:" == action && (-[PHHandsetDialerLCDView text](self, "text"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 length], v7, !v8))
  {
    v9 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PHHandsetDialerLCDView;
    v9 = [(PHHandsetDialerLCDView *)&v11 canPerformAction:action withSender:senderCopy];
  }

  return v9;
}

- (void)copy:(id)copy
{
  v5 = +[UIPasteboard generalPasteboard];
  text = [(PHHandsetDialerLCDView *)self text];
  [v5 setString:text];
}

- (void)paste:(id)paste
{
  v4 = +[UIPasteboard generalPasteboard];
  string = [v4 string];

  v5 = string;
  if (string)
  {
    [(PHHandsetDialerLCDView *)self _makeCalloutVisible:0];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    v5 = string;
    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 dialerField:self stringWasPasted:string];

      v5 = string;
    }
  }
}

- (void)handleTapGesture:(id)gesture
{
  v4 = +[UIMenuController sharedMenuController];
  -[PHHandsetDialerLCDView _makeCalloutVisible:](self, "_makeCalloutVisible:", [v4 isMenuVisible] ^ 1);
}

- (double)addContactButtonContentInsetConstant
{
  v2 = +[PHUIConfiguration requiresSmallScreenConfig];
  result = 10.0;
  if (v2)
  {
    return 5.0;
  }

  return result;
}

- (id)newAddContactButton
{
  v3 = [UIButton buttonWithType:1];
  v4 = +[UIColor clearColor];
  [v3 setBackgroundColor:v4];

  [(PHHandsetDialerLCDView *)self addContactButtonContentInsetConstant];
  [v3 setContentEdgeInsets:{v5, v5, v5, v5}];
  [v3 setOpaque:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v6) = 1144750080;
  [v3 setContentCompressionResistancePriority:0 forAxis:v6];
  v7 = +[UIColor dynamicLabelColor];
  [v3 setTintColor:v7];

  [v3 sizeToFit];
  if ([(PHHandsetDialerLCDView *)self appType]== &dword_0 + 1 && [(PHHandsetDialerLCDView *)self enableSmartDialer])
  {
    v8 = [UIImage tpImageForSymbolType:18 textStyle:UIFontTextStyleTitle2 scale:2 isStaticSize:0];
    [v3 setImage:v8 forState:0];
    [v3 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
    [v3 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraLarge];
    [v3 setShowsLargeContentViewer:1];
    [v3 setLargeContentImage:v8];
    titleLabel = objc_alloc_init(UILargeContentViewerInteraction);
    [v3 addInteraction:titleLabel];
  }

  else
  {
    v10 = [NSAttributedString alloc];
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"ADD_NUMBER" value:&stru_50D80 table:@"Dialer"];
    v13 = [v10 initWithString:v12];
    [v3 setAttributedTitle:v13 forState:0];

    [(PHHandsetDialerLCDView *)self addNumberFontSize];
    v8 = [UIFont systemFontOfSize:v14];
    titleLabel = [v3 titleLabel];
    [titleLabel setFont:v8];
  }

  return v3;
}

- (TPPillView)pillView
{
  pillView = self->_pillView;
  if (!pillView)
  {
    v4 = [[TPPillView alloc] initWithTitle:&stru_50D80 frame:3 theme:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v4 setDelegate:self];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v5) = 1148846080;
    [v4 setContentHuggingPriority:1 forAxis:v5];
    LODWORD(v6) = 1148846080;
    [v4 setContentHuggingPriority:0 forAxis:v6];
    v7 = self->_pillView;
    self->_pillView = v4;

    pillView = self->_pillView;
  }

  return pillView;
}

- (id)newResultButton
{
  v3 = [UIButton buttonWithType:1];
  v4 = +[UIColor clearColor];
  [v3 setBackgroundColor:v4];

  [v3 setContentEdgeInsets:{10.0, 10.0, 10.0, 10.0}];
  [v3 setOpaque:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v5) = 1144750080;
  [v3 setContentCompressionResistancePriority:0 forAxis:v5];
  [v3 setTitle:&stru_50D80 forState:0];
  [(PHHandsetDialerLCDView *)self addNumberFontSize];
  v7 = [UIFont systemFontOfSize:v6];
  titleLabel = [v3 titleLabel];
  [titleLabel setFont:v7];

  [v3 sizeToFit];
  return v3;
}

- (id)newSearchButton
{
  v3 = [UIButton buttonWithType:1];
  v4 = +[UIColor clearColor];
  [v3 setBackgroundColor:v4];

  [v3 setContentEdgeInsets:{10.0, 10.0, 10.0, 10.0}];
  [v3 setOpaque:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v5) = 1144750080;
  [v3 setContentCompressionResistancePriority:0 forAxis:v5];
  if ([(PHHandsetDialerLCDView *)self enableSmartDialerExpandedSearch])
  {
    v6 = [UIImage systemImageNamed:@"magnifyingglass"];
    [v3 setImage:v6 forState:0];
  }

  v7 = +[UIColor systemBlueColor];
  [v3 setTintColor:v7];

  [v3 sizeToFit];
  return v3;
}

- (void)applyLayoutConstraints
{
  if ([(PHHandsetDialerLCDView *)self appType]== &dword_0 + 1 && [(PHHandsetDialerLCDView *)self enableSmartDialer])
  {

    [(PHHandsetDialerLCDView *)self applyLayoutConstraintsForSmartDialer];
  }

  else
  {
    v3 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v3 userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      heightAnchor = [(PHHandsetDialerLCDView *)self heightAnchor];
      v6 = [heightAnchor constraintEqualToConstant:80.0];
      [v6 setActive:1];
    }

    if ([(PHHandsetDialerLCDView *)self appType]== &dword_0 + 1)
    {
      v7 = +[UIDevice currentDevice];
      userInterfaceIdiom2 = [v7 userInterfaceIdiom];

      if (userInterfaceIdiom2 == &dword_4 + 1)
      {
        headerLayoutGuide = [(PHHandsetDialerLCDView *)self headerLayoutGuide];
        topAnchor = [headerLayoutGuide topAnchor];
        safeAreaLayoutGuide = [(PHHandsetDialerLCDView *)self safeAreaLayoutGuide];
        topAnchor2 = [safeAreaLayoutGuide topAnchor];
        v80 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v85[0] = v80;
        headerLayoutGuide2 = [(PHHandsetDialerLCDView *)self headerLayoutGuide];
        bottomAnchor = [headerLayoutGuide2 bottomAnchor];
        numberTextField = [(PHHandsetDialerLCDView *)self numberTextField];
        topAnchor3 = [numberTextField topAnchor];
        [(PHHandsetDialerLCDView *)self addContactButtonContentInsetConstant];
        v75 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:v9 + 5.0];
        v85[1] = v75;
        headerLayoutGuide3 = [(PHHandsetDialerLCDView *)self headerLayoutGuide];
        leadingAnchor = [headerLayoutGuide3 leadingAnchor];
        safeAreaLayoutGuide2 = [(PHHandsetDialerLCDView *)self safeAreaLayoutGuide];
        leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
        v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        v85[2] = v11;
        headerLayoutGuide4 = [(PHHandsetDialerLCDView *)self headerLayoutGuide];
        trailingAnchor = [headerLayoutGuide4 trailingAnchor];
        safeAreaLayoutGuide3 = [(PHHandsetDialerLCDView *)self safeAreaLayoutGuide];
        trailingAnchor2 = [safeAreaLayoutGuide3 trailingAnchor];
        v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        v85[3] = v16;
        v17 = [NSArray arrayWithObjects:v85 count:4];
        [NSLayoutConstraint activateConstraints:v17];
      }
    }

    addContactButton = [(PHHandsetDialerLCDView *)self addContactButton];
    [(PHHandsetDialerLCDView *)self addContactButtonTopConstraintConstant];
    v20 = [NSLayoutConstraint constraintWithItem:addContactButton attribute:11 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:v19];
    [(PHHandsetDialerLCDView *)self setAddContactButtonTopConstraint:v20];

    addContactButtonTopConstraint = [(PHHandsetDialerLCDView *)self addContactButtonTopConstraint];
    [(PHHandsetDialerLCDView *)self addConstraint:addContactButtonTopConstraint];

    addContactButton2 = [(PHHandsetDialerLCDView *)self addContactButton];
    v23 = [NSLayoutConstraint constraintWithItem:self attribute:4 relatedBy:0 toItem:addContactButton2 attribute:11 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v23];

    addContactButton3 = [(PHHandsetDialerLCDView *)self addContactButton];
    v25 = [NSLayoutConstraint constraintWithItem:addContactButton3 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v25];

    addContactButton4 = [(PHHandsetDialerLCDView *)self addContactButton];
    layoutTextField = [(PHHandsetDialerLCDView *)self layoutTextField];
    [(PHHandsetDialerLCDView *)self spacingBetweenNumberBaselineAndNameBaseline];
    v29 = [NSLayoutConstraint constraintWithItem:addContactButton4 attribute:11 relatedBy:0 toItem:layoutTextField attribute:11 multiplier:1.0 constant:v28];
    [(PHHandsetDialerLCDView *)self addConstraint:v29];

    addContactButton5 = [(PHHandsetDialerLCDView *)self addContactButton];
    layoutTextField2 = [(PHHandsetDialerLCDView *)self layoutTextField];
    v32 = [NSLayoutConstraint constraintWithItem:addContactButton5 attribute:9 relatedBy:0 toItem:layoutTextField2 attribute:9 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v32];

    numberTextField2 = [(PHHandsetDialerLCDView *)self numberTextField];
    layoutTextField3 = [(PHHandsetDialerLCDView *)self layoutTextField];
    v35 = [NSLayoutConstraint constraintWithItem:numberTextField2 attribute:10 relatedBy:0 toItem:layoutTextField3 attribute:10 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v35];

    numberTextField3 = [(PHHandsetDialerLCDView *)self numberTextField];
    layoutTextField4 = [(PHHandsetDialerLCDView *)self layoutTextField];
    v38 = [NSLayoutConstraint constraintWithItem:numberTextField3 attribute:9 relatedBy:0 toItem:layoutTextField4 attribute:9 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v38];

    businessNameField = [(PHHandsetDialerLCDView *)self businessNameField];
    layoutTextField5 = [(PHHandsetDialerLCDView *)self layoutTextField];
    v41 = [NSLayoutConstraint constraintWithItem:businessNameField attribute:10 relatedBy:0 toItem:layoutTextField5 attribute:10 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v41];

    businessNameField2 = [(PHHandsetDialerLCDView *)self businessNameField];
    layoutTextField6 = [(PHHandsetDialerLCDView *)self layoutTextField];
    v44 = [NSLayoutConstraint constraintWithItem:businessNameField2 attribute:9 relatedBy:0 toItem:layoutTextField6 attribute:9 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v44];

    contactLabel = [(PHHandsetDialerLCDView *)self contactLabel];
    addContactButton6 = [(PHHandsetDialerLCDView *)self addContactButton];
    v47 = [NSLayoutConstraint constraintWithItem:contactLabel attribute:9 relatedBy:0 toItem:addContactButton6 attribute:9 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v47];

    contactLabel2 = [(PHHandsetDialerLCDView *)self contactLabel];
    addContactButton7 = [(PHHandsetDialerLCDView *)self addContactButton];
    v50 = [NSLayoutConstraint constraintWithItem:contactLabel2 attribute:12 relatedBy:0 toItem:addContactButton7 attribute:12 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v50];

    contactLabel3 = [(PHHandsetDialerLCDView *)self contactLabel];
    v52 = [NSLayoutConstraint constraintWithItem:contactLabel3 attribute:5 relatedBy:1 toItem:self attribute:5 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v52];

    contactLabel4 = [(PHHandsetDialerLCDView *)self contactLabel];
    v54 = [NSLayoutConstraint constraintWithItem:contactLabel4 attribute:6 relatedBy:-1 toItem:self attribute:6 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v54];

    sourceLabel = [(PHHandsetDialerLCDView *)self sourceLabel];
    addContactButton8 = [(PHHandsetDialerLCDView *)self addContactButton];
    v57 = [NSLayoutConstraint constraintWithItem:sourceLabel attribute:9 relatedBy:0 toItem:addContactButton8 attribute:9 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v57];

    separator = [(PHHandsetDialerLCDView *)self separator];

    sourceLabel2 = [(PHHandsetDialerLCDView *)self sourceLabel];
    if (separator)
    {
      separator2 = [(PHHandsetDialerLCDView *)self separator];
      v61 = 1.0;
      v62 = 10.0;
      v63 = sourceLabel2;
      v64 = 12;
      v65 = separator2;
      v66 = 12;
    }

    else
    {
      separator2 = [(PHHandsetDialerLCDView *)self contactLabel];
      v61 = 1.0;
      v62 = 2.0;
      v63 = sourceLabel2;
      v64 = 3;
      v65 = separator2;
      v66 = 4;
    }

    v67 = [NSLayoutConstraint constraintWithItem:v63 attribute:v64 relatedBy:0 toItem:v65 attribute:v66 multiplier:v61 constant:v62];
    [(PHHandsetDialerLCDView *)self addConstraint:v67];

    sourceLabel3 = [(PHHandsetDialerLCDView *)self sourceLabel];
    v69 = [NSLayoutConstraint constraintWithItem:sourceLabel3 attribute:5 relatedBy:1 toItem:self attribute:5 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v69];

    sourceLabel4 = [(PHHandsetDialerLCDView *)self sourceLabel];
    v71 = [NSLayoutConstraint constraintWithItem:sourceLabel4 attribute:6 relatedBy:-1 toItem:self attribute:6 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v71];

    [(PHHandsetDialerLCDView *)self updateNumberAndBusinessNameLabelHorizontalConstraints];
  }
}

- (void)applyLayoutConstraintsForSmartDialer
{
  headerLayoutGuide = [(PHHandsetDialerLCDView *)self headerLayoutGuide];
  topAnchor = [headerLayoutGuide topAnchor];
  safeAreaLayoutGuide = [(PHHandsetDialerLCDView *)self safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v135 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v146[0] = v135;
  headerLayoutGuide2 = [(PHHandsetDialerLCDView *)self headerLayoutGuide];
  bottomAnchor = [headerLayoutGuide2 bottomAnchor];
  numberTextField = [(PHHandsetDialerLCDView *)self numberTextField];
  topAnchor3 = [numberTextField topAnchor];
  [(PHHandsetDialerLCDView *)self addContactButtonContentInsetConstant];
  v130 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:v3 + 5.0];
  v146[1] = v130;
  headerLayoutGuide3 = [(PHHandsetDialerLCDView *)self headerLayoutGuide];
  leadingAnchor = [headerLayoutGuide3 leadingAnchor];
  safeAreaLayoutGuide2 = [(PHHandsetDialerLCDView *)self safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
  v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v146[2] = v6;
  headerLayoutGuide4 = [(PHHandsetDialerLCDView *)self headerLayoutGuide];
  trailingAnchor = [headerLayoutGuide4 trailingAnchor];
  safeAreaLayoutGuide3 = [(PHHandsetDialerLCDView *)self safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide3 trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v146[3] = v11;
  v12 = [NSArray arrayWithObjects:v146 count:4];
  [NSLayoutConstraint activateConstraints:v12];

  layoutTextField = [(PHHandsetDialerLCDView *)self layoutTextField];
  v14 = [NSLayoutConstraint constraintWithItem:layoutTextField attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v14];

  numberTextField2 = [(PHHandsetDialerLCDView *)self numberTextField];
  layoutTextField2 = [(PHHandsetDialerLCDView *)self layoutTextField];
  v17 = [NSLayoutConstraint constraintWithItem:numberTextField2 attribute:10 relatedBy:0 toItem:layoutTextField2 attribute:10 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v17];

  numberTextField3 = [(PHHandsetDialerLCDView *)self numberTextField];
  layoutTextField3 = [(PHHandsetDialerLCDView *)self layoutTextField];
  v20 = [NSLayoutConstraint constraintWithItem:numberTextField3 attribute:9 relatedBy:0 toItem:layoutTextField3 attribute:9 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v20];

  businessNameField = [(PHHandsetDialerLCDView *)self businessNameField];
  layoutTextField4 = [(PHHandsetDialerLCDView *)self layoutTextField];
  v23 = [NSLayoutConstraint constraintWithItem:businessNameField attribute:10 relatedBy:0 toItem:layoutTextField4 attribute:10 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v23];

  businessNameField2 = [(PHHandsetDialerLCDView *)self businessNameField];
  layoutTextField5 = [(PHHandsetDialerLCDView *)self layoutTextField];
  v26 = [NSLayoutConstraint constraintWithItem:businessNameField2 attribute:9 relatedBy:0 toItem:layoutTextField5 attribute:9 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v26];

  primaryResultButton = [(PHHandsetDialerLCDView *)self primaryResultButton];
  layoutTextField6 = [(PHHandsetDialerLCDView *)self layoutTextField];
  [(PHHandsetDialerLCDView *)self spacingBetweenNumberAndContactResult];
  v30 = [NSLayoutConstraint constraintWithItem:primaryResultButton attribute:3 relatedBy:0 toItem:layoutTextField6 attribute:4 multiplier:1.0 constant:v29];
  [(PHHandsetDialerLCDView *)self addConstraint:v30];

  primaryResultButton2 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  [(PHHandsetDialerLCDView *)self resultButtonsHorizontalPadding];
  v33 = [NSLayoutConstraint constraintWithItem:primaryResultButton2 attribute:5 relatedBy:0 toItem:self attribute:5 multiplier:1.0 constant:v32];
  [(PHHandsetDialerLCDView *)self addConstraint:v33];

  primaryResultButton3 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  [(PHHandsetDialerLCDView *)self resultButtonsHorizontalPadding];
  v36 = [NSLayoutConstraint constraintWithItem:primaryResultButton3 attribute:6 relatedBy:0 toItem:self attribute:6 multiplier:1.0 constant:-v35];
  [(PHHandsetDialerLCDView *)self addConstraint:v36];

  primaryResultButtonView = [(PHHandsetDialerLCDView *)self primaryResultButtonView];
  primaryResultButton4 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v39 = [NSLayoutConstraint constraintWithItem:primaryResultButtonView attribute:5 relatedBy:0 toItem:primaryResultButton4 attribute:5 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v39];

  primaryResultButtonView2 = [(PHHandsetDialerLCDView *)self primaryResultButtonView];
  primaryResultButton5 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v42 = [NSLayoutConstraint constraintWithItem:primaryResultButtonView2 attribute:6 relatedBy:0 toItem:primaryResultButton5 attribute:6 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v42];

  primaryResultButtonView3 = [(PHHandsetDialerLCDView *)self primaryResultButtonView];
  primaryResultButton6 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v45 = [NSLayoutConstraint constraintWithItem:primaryResultButtonView3 attribute:3 relatedBy:0 toItem:primaryResultButton6 attribute:3 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v45];

  primaryResultButtonView4 = [(PHHandsetDialerLCDView *)self primaryResultButtonView];
  primaryResultButton7 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v48 = [NSLayoutConstraint constraintWithItem:primaryResultButtonView4 attribute:4 relatedBy:0 toItem:primaryResultButton7 attribute:4 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v48];

  separator = [(PHHandsetDialerLCDView *)self separator];
  primaryResultButton8 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  [(PHHandsetDialerLCDView *)self spacingBetweenPrimaryResultButtons];
  v52 = [NSLayoutConstraint constraintWithItem:separator attribute:3 relatedBy:0 toItem:primaryResultButton8 attribute:4 multiplier:1.0 constant:v51];
  [(PHHandsetDialerLCDView *)self addConstraint:v52];

  separator2 = [(PHHandsetDialerLCDView *)self separator];
  v54 = [NSLayoutConstraint constraintWithItem:separator2 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:1.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v54];

  separator3 = [(PHHandsetDialerLCDView *)self separator];
  primaryResultButton9 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v57 = [NSLayoutConstraint constraintWithItem:separator3 attribute:5 relatedBy:0 toItem:primaryResultButton9 attribute:5 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v57];

  separator4 = [(PHHandsetDialerLCDView *)self separator];
  primaryResultButton10 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v60 = [NSLayoutConstraint constraintWithItem:separator4 attribute:6 relatedBy:0 toItem:primaryResultButton10 attribute:6 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v60];

  secondaryResultButton = [(PHHandsetDialerLCDView *)self secondaryResultButton];
  separator5 = [(PHHandsetDialerLCDView *)self separator];
  [(PHHandsetDialerLCDView *)self spacingBetweenPrimaryResultButtons];
  v64 = [NSLayoutConstraint constraintWithItem:secondaryResultButton attribute:3 relatedBy:0 toItem:separator5 attribute:4 multiplier:1.0 constant:v63];
  [(PHHandsetDialerLCDView *)self addConstraint:v64];

  secondaryResultButton2 = [(PHHandsetDialerLCDView *)self secondaryResultButton];
  v66 = [NSLayoutConstraint constraintWithItem:self attribute:4 relatedBy:0 toItem:secondaryResultButton2 attribute:11 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v66];

  secondaryResultButton3 = [(PHHandsetDialerLCDView *)self secondaryResultButton];
  primaryResultButton11 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v69 = [NSLayoutConstraint constraintWithItem:secondaryResultButton3 attribute:5 relatedBy:0 toItem:primaryResultButton11 attribute:5 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v69];

  secondaryResultButton4 = [(PHHandsetDialerLCDView *)self secondaryResultButton];
  primaryResultButton12 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v72 = [NSLayoutConstraint constraintWithItem:secondaryResultButton4 attribute:6 relatedBy:0 toItem:primaryResultButton12 attribute:6 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v72];

  secondaryResultButtonView = [(PHHandsetDialerLCDView *)self secondaryResultButtonView];
  secondaryResultButton5 = [(PHHandsetDialerLCDView *)self secondaryResultButton];
  v75 = [NSLayoutConstraint constraintWithItem:secondaryResultButtonView attribute:5 relatedBy:0 toItem:secondaryResultButton5 attribute:5 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v75];

  secondaryResultButtonView2 = [(PHHandsetDialerLCDView *)self secondaryResultButtonView];
  secondaryResultButton6 = [(PHHandsetDialerLCDView *)self secondaryResultButton];
  v78 = [NSLayoutConstraint constraintWithItem:secondaryResultButtonView2 attribute:6 relatedBy:0 toItem:secondaryResultButton6 attribute:6 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v78];

  secondaryResultButtonView3 = [(PHHandsetDialerLCDView *)self secondaryResultButtonView];
  secondaryResultButton7 = [(PHHandsetDialerLCDView *)self secondaryResultButton];
  v81 = [NSLayoutConstraint constraintWithItem:secondaryResultButtonView3 attribute:3 relatedBy:0 toItem:secondaryResultButton7 attribute:3 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v81];

  secondaryResultButtonView4 = [(PHHandsetDialerLCDView *)self secondaryResultButtonView];
  secondaryResultButton8 = [(PHHandsetDialerLCDView *)self secondaryResultButton];
  v84 = [NSLayoutConstraint constraintWithItem:secondaryResultButtonView4 attribute:4 relatedBy:0 toItem:secondaryResultButton8 attribute:4 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v84];

  contactLabel = [(PHHandsetDialerLCDView *)self contactLabel];
  layoutTextField7 = [(PHHandsetDialerLCDView *)self layoutTextField];
  v87 = [NSLayoutConstraint constraintWithItem:contactLabel attribute:9 relatedBy:0 toItem:layoutTextField7 attribute:9 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v87];

  contactLabel2 = [(PHHandsetDialerLCDView *)self contactLabel];
  primaryResultButton13 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v90 = [NSLayoutConstraint constraintWithItem:contactLabel2 attribute:12 relatedBy:0 toItem:primaryResultButton13 attribute:12 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v90];

  contactLabel3 = [(PHHandsetDialerLCDView *)self contactLabel];
  v92 = [NSLayoutConstraint constraintWithItem:contactLabel3 attribute:5 relatedBy:1 toItem:self attribute:5 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v92];

  contactLabel4 = [(PHHandsetDialerLCDView *)self contactLabel];
  v94 = [NSLayoutConstraint constraintWithItem:contactLabel4 attribute:6 relatedBy:-1 toItem:self attribute:6 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v94];

  sourceLabel = [(PHHandsetDialerLCDView *)self sourceLabel];
  layoutTextField8 = [(PHHandsetDialerLCDView *)self layoutTextField];
  v97 = [NSLayoutConstraint constraintWithItem:sourceLabel attribute:9 relatedBy:0 toItem:layoutTextField8 attribute:9 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v97];

  sourceLabel2 = [(PHHandsetDialerLCDView *)self sourceLabel];
  separator6 = [(PHHandsetDialerLCDView *)self separator];
  v100 = [NSLayoutConstraint constraintWithItem:sourceLabel2 attribute:12 relatedBy:0 toItem:separator6 attribute:12 multiplier:1.0 constant:10.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v100];

  sourceLabel3 = [(PHHandsetDialerLCDView *)self sourceLabel];
  v102 = [NSLayoutConstraint constraintWithItem:sourceLabel3 attribute:5 relatedBy:1 toItem:self attribute:5 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v102];

  sourceLabel4 = [(PHHandsetDialerLCDView *)self sourceLabel];
  v104 = [NSLayoutConstraint constraintWithItem:sourceLabel4 attribute:6 relatedBy:-1 toItem:self attribute:6 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v104];

  if (_UISolariumEnabled())
  {
    dialerResultButtonsGlassBackgroundView = [(PHHandsetDialerLCDView *)self dialerResultButtonsGlassBackgroundView];
    topAnchor4 = [dialerResultButtonsGlassBackgroundView topAnchor];
    primaryResultButton14 = [(PHHandsetDialerLCDView *)self primaryResultButton];
    topAnchor5 = [primaryResultButton14 topAnchor];
    [(PHHandsetDialerLCDView *)self spacingBetweenPrimaryResultButtons];
    v136 = [topAnchor4 constraintEqualToAnchor:topAnchor5 constant:-v105];
    v145[0] = v136;
    dialerResultButtonsGlassBackgroundView2 = [(PHHandsetDialerLCDView *)self dialerResultButtonsGlassBackgroundView];
    leadingAnchor3 = [dialerResultButtonsGlassBackgroundView2 leadingAnchor];
    leadingAnchor4 = [(PHHandsetDialerLCDView *)self leadingAnchor];
    +[TPNumberPadButton horizontalPadding];
    v109 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:?];
    v145[1] = v109;
    dialerResultButtonsGlassBackgroundView3 = [(PHHandsetDialerLCDView *)self dialerResultButtonsGlassBackgroundView];
    trailingAnchor3 = [dialerResultButtonsGlassBackgroundView3 trailingAnchor];
    trailingAnchor4 = [(PHHandsetDialerLCDView *)self trailingAnchor];
    +[TPNumberPadButton horizontalPadding];
    v114 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v113];
    v145[2] = v114;
    v115 = [NSArray arrayWithObjects:v145 count:3];
    [NSLayoutConstraint activateConstraints:v115];

    dialerResultButtonsGlassBackgroundView4 = [(PHHandsetDialerLCDView *)self dialerResultButtonsGlassBackgroundView];
    bottomAnchor2 = [dialerResultButtonsGlassBackgroundView4 bottomAnchor];
    secondaryResultButton9 = [(PHHandsetDialerLCDView *)self secondaryResultButton];
    bottomAnchor3 = [secondaryResultButton9 bottomAnchor];
    [(PHHandsetDialerLCDView *)self spacingBetweenPrimaryResultButtons];
    v121 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:v120];
    [(PHHandsetDialerLCDView *)self setSecondaryVisibleConstraint:v121];

    dialerResultButtonsGlassBackgroundView5 = [(PHHandsetDialerLCDView *)self dialerResultButtonsGlassBackgroundView];
    bottomAnchor4 = [dialerResultButtonsGlassBackgroundView5 bottomAnchor];
    primaryResultButton15 = [(PHHandsetDialerLCDView *)self primaryResultButton];
    bottomAnchor5 = [primaryResultButton15 bottomAnchor];
    [(PHHandsetDialerLCDView *)self spacingBetweenPrimaryResultButtons];
    v127 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:v126];
    [(PHHandsetDialerLCDView *)self setSecondaryHiddenConstraint:v127];
  }

  [(PHHandsetDialerLCDView *)self updateNumberAndBusinessNameLabelHorizontalConstraints];
}

- (void)updateNumberAndBusinessNameLabelHorizontalConstraints
{
  numberLabelHorizontalConstraints = [(PHHandsetDialerLCDView *)self numberLabelHorizontalConstraints];

  if (numberLabelHorizontalConstraints)
  {
    numberLabelHorizontalConstraints2 = [(PHHandsetDialerLCDView *)self numberLabelHorizontalConstraints];
    [(PHHandsetDialerLCDView *)self removeConstraints:numberLabelHorizontalConstraints2];
  }

  generateNumberLabelHorizontalConstraints = [(PHHandsetDialerLCDView *)self generateNumberLabelHorizontalConstraints];
  [(PHHandsetDialerLCDView *)self setNumberLabelHorizontalConstraints:generateNumberLabelHorizontalConstraints];

  numberLabelHorizontalConstraints3 = [(PHHandsetDialerLCDView *)self numberLabelHorizontalConstraints];
  [(PHHandsetDialerLCDView *)self addConstraints:numberLabelHorizontalConstraints3];

  businessNameLabelHorizontalConstraints = [(PHHandsetDialerLCDView *)self businessNameLabelHorizontalConstraints];

  if (businessNameLabelHorizontalConstraints)
  {
    businessNameLabelHorizontalConstraints2 = [(PHHandsetDialerLCDView *)self businessNameLabelHorizontalConstraints];
    [(PHHandsetDialerLCDView *)self removeConstraints:businessNameLabelHorizontalConstraints2];
  }

  generateBusinessNameLabelHorizontalConstraints = [(PHHandsetDialerLCDView *)self generateBusinessNameLabelHorizontalConstraints];
  [(PHHandsetDialerLCDView *)self setBusinessNameLabelHorizontalConstraints:generateBusinessNameLabelHorizontalConstraints];

  businessNameLabelHorizontalConstraints3 = [(PHHandsetDialerLCDView *)self businessNameLabelHorizontalConstraints];
  [(PHHandsetDialerLCDView *)self addConstraints:businessNameLabelHorizontalConstraints3];
}

- (double)addContactButtonTopConstraintConstant
{
  [PHUIConfiguration yOffsetForDialerLCDView:[(PHHandsetDialerLCDView *)self appType]];
  v4 = v3;
  [(PHHandsetDialerLCDView *)self pillViewTopOffset];
  v6 = v4 + v5;
  [(PHHandsetDialerLCDView *)self remoteViewControllerLCDOffset];
  return v6 - v7;
}

- (double)pillViewTopConstraintConstant
{
  v3 = 0.0;
  if (+[PHInCallUIUtilities hasMultipleSenderIdentities]&& [(PHHandsetDialerLCDView *)self isHostedInRemoteViewController])
  {
    v4 = +[PHUIConfiguration screenSize];
    if (v4 > 0xF)
    {
      return 13.0;
    }

    v3 = 10.0;
    if (((1 << v4) & 0xA200) == 0)
    {
      if (((1 << v4) & 3) != 0)
      {
        return 0.0;
      }

      return 13.0;
    }
  }

  return v3;
}

- (float)pillViewHiddenOffset
{
  v2 = +[PHInCallUIUtilities hasMultipleSenderIdentities];
  LODWORD(v3) = 30.0;
  if (v2)
  {
    v4 = +[PHUIConfiguration screenSize];
    if (v4 <= 8)
    {
      if (v4)
      {
        if (v4 != &dword_0 + 1)
        {
LABEL_15:
          LODWORD(v3) = 9.0;
          return *&v3;
        }

        LODWORD(v3) = 2.0;
      }

      else
      {
        LODWORD(v3) = 0;
      }
    }

    else
    {
      LODWORD(v3) = 6.0;
      if (v4 != &dword_8 + 1 && v4 != &dword_C + 1 && v4 != &dword_C + 3)
      {
        goto LABEL_15;
      }
    }
  }

  return *&v3;
}

- (float)spacingBetweenNumberAndContactResult
{
  v3 = +[PHUIConfiguration screenSize];
  if (v3 <= 8)
  {
    if (v3)
    {
      if (v3 != &dword_0 + 1)
      {
        return 19.0;
      }

      v7 = ![(PHHandsetDialerLCDView *)self isHostedInRemoteViewController];
      result = 14.0;
      v8 = 6.0;
    }

    else
    {
      v7 = ![(PHHandsetDialerLCDView *)self isHostedInRemoteViewController];
      result = 2.0;
      v8 = 0.0;
    }

    if (!v7)
    {
      return v8;
    }
  }

  else
  {
    result = 10.0;
    if (v3 != &dword_8 + 1 && v3 != &dword_C + 1 && v3 != &dword_C + 3)
    {
      return 19.0;
    }
  }

  return result;
}

- (float)spacingBetweenPrimaryResultButtons
{
  v3 = +[PHUIConfiguration screenSize];
  if (v3 == &dword_0 + 1)
  {
    return 5.0;
  }

  if (v3)
  {
    return 11.0;
  }

  isHostedInRemoteViewController = [(PHHandsetDialerLCDView *)self isHostedInRemoteViewController];
  result = 5.0;
  if (isHostedInRemoteViewController)
  {
    return 2.0;
  }

  return result;
}

- (float)resultButtonsHorizontalPadding
{
  +[TPNumberPadButton horizontalPadding];
  v3 = v2;
  if (_UISolariumEnabled())
  {
    if (+[PHUIConfiguration screenSize]<= 1)
    {
      return v3 + 10.0;
    }

    else
    {
      return v3 + 16.0;
    }
  }

  return v3;
}

- (double)pillViewTopOffset
{
  v2 = +[PHInCallUIUtilities hasMultipleSenderIdentities];
  result = 0.0;
  if (v2)
  {
    v4 = +[PHUIConfiguration handsetDialerSpacing];
    result = 0.0;
    if (v4 == &dword_0 + 2)
    {
      result = 25.0;
    }

    if (!v4)
    {
      return 30.0;
    }
  }

  return result;
}

- (double)remoteViewControllerLCDOffset
{
  v2 = 0.0;
  if ([(PHHandsetDialerLCDView *)self isHostedInRemoteViewController])
  {
    v3 = +[PHUIConfiguration handsetDialerSpacing];
    if (v3 <= 6)
    {
      return dbl_312E8[v3];
    }
  }

  return v2;
}

- (void)setIsHostedInRemoteViewController:(BOOL)controller
{
  if (self->_isHostedInRemoteViewController != controller)
  {
    self->_isHostedInRemoteViewController = controller;
    [(PHHandsetDialerLCDView *)self addContactButtonTopConstraintConstant];
    v6 = v5;
    addContactButtonTopConstraint = [(PHHandsetDialerLCDView *)self addContactButtonTopConstraint];
    [addContactButtonTopConstraint setConstant:v6];
  }
}

- (void)textField:(id)field didUpdateString:(id)string
{
  fieldCopy = field;
  if ([fieldCopy isEditing])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 dialerLCDFieldTextDidChange:self];
    }
  }

  text = [(PHHandsetDialerLCDView *)self text];
  v9 = [text length];

  if (!v9)
  {
    [fieldCopy endEditing:1];
  }
}

- (void)contactResultButtonPressed
{
  if ([(PHHandsetDialerLCDView *)self enableSmartDialer])
  {
    if (self->_contactSearchResult)
    {
      resultContact = [(PHHandsetDialerLCDView *)self resultContact];
      v4 = [CNContactFormatter stringFromContact:resultContact style:0];

      resultContactPhoneNumber = [(PHHandsetDialerLCDView *)self resultContactPhoneNumber];
      value = [resultContactPhoneNumber value];
      formattedStringValue = [value formattedStringValue];
      v8 = formattedStringValue;
      if (formattedStringValue)
      {
        stringValue = formattedStringValue;
      }

      else
      {
        value2 = [resultContactPhoneNumber value];
        stringValue = [value2 stringValue];
      }

      label = [resultContactPhoneNumber label];
      v10 = [CNLabeledValue localizedStringForLabel:label];

      self->_hasCompleteMatch = 1;
      if ([(TUFeatureFlags *)self->_featureFlags dialerInterceptEnabled])
      {
        v13 = dispatch_group_create();
        v40 = 0;
        v41 = &v40;
        v42 = 0x3032000000;
        v43 = __Block_byref_object_copy__1;
        v44 = __Block_byref_object_dispose__1;
        v45 = 0;
        v36 = 0;
        v37 = &v36;
        v38 = 0x2020000000;
        v39 = 0;
        v32 = 0;
        v33 = &v32;
        v34 = 0x2020000000;
        v35 = 0;
        dispatch_group_enter(v13);
        resultDelegate = [(PHHandsetDialerLCDView *)self resultDelegate];
        v24 = _NSConcreteStackBlock;
        v25 = 3221225472;
        v26 = __52__PHHandsetDialerLCDView_contactResultButtonPressed__block_invoke;
        v27 = &unk_4C968;
        v29 = &v40;
        v30 = &v36;
        v31 = &v32;
        v15 = v13;
        v28 = v15;
        [resultDelegate searchBusinessesFor:stringValue completionHandler:&v24];

        v16 = dispatch_time(0, 1000000000);
        v17 = dispatch_group_wait(v15, v16);
        v18 = PHDefaultLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v41[5];
          v20 = *(v37 + 24);
          *buf = 138412802;
          v47 = v19;
          v48 = 1024;
          v49 = v20;
          v50 = 1024;
          v51 = v17 != 0;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Business search result | businessMatchResult: %@ businessHasCompleteMatch: %d didTimeout: %d", buf, 0x18u);
        }

        if (v17 || *(v37 + 24) != 1)
        {
          v21 = 1;
        }

        else
        {
          [(PHHandsetDialerLCDView *)self setBusinessSearchResult:v41[5] hasCompleteMatch:1 hasMessageAction:*(v33 + 24) nameOverride:v4, v24, v25, v26, v27];
          v21 = 0;
        }

        _Block_object_dispose(&v32, 8);
        _Block_object_dispose(&v36, 8);
        _Block_object_dispose(&v40, 8);

        if ((v21 & 1) == 0)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v10 = 0;
      stringValue = 0;
      v4 = 0;
    }

    [(PHHandsetDialerLCDView *)self hideResultsButtons:v24];
    [(PHLCDViewTextField *)self->_numberTextField setText:stringValue];
    [(PHHandsetDialerLCDView *)self setName:v4 numberLabel:v10];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v23 = objc_opt_respondsToSelector();

    if ((v23 & 1) == 0)
    {
LABEL_19:

      return;
    }

    resultContactPhoneNumber = objc_loadWeakRetained(&self->_delegate);
    [resultContactPhoneNumber updateIDSStatus];
LABEL_18:

    goto LABEL_19;
  }
}

void __52__PHHandsetDialerLCDView_contactResultButtonPressed__block_invoke(uint64_t a1, void *a2, char a3, char a4, void *a5)
{
  v10 = a2;
  v11 = a5;
  if (v11)
  {
    v12 = PHDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __52__PHHandsetDialerLCDView_contactResultButtonPressed__block_invoke_cold_1(v11, v12);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *(*(*(a1 + 48) + 8) + 24) = a3;
    *(*(*(a1 + 56) + 8) + 24) = a4;
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)launchBusinessMessagesSupport
{
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error opening Messages url: %@", &v2, 0xCu);
}

- (BOOL)textFieldShouldBeginEditing:(id)editing
{
  text = [(PHLCDViewTextField *)self->_numberTextField text];
  v4 = [text length] != 0;

  return v4;
}

- (void)textFieldDidBeginEditing:(id)editing
{
  v4 = +[UIMenuController sharedMenuController];
  isMenuVisible = [v4 isMenuVisible];

  if (isMenuVisible)
  {

    [(PHHandsetDialerLCDView *)self _makeCalloutVisible:0];
  }
}

- (void)textFieldDidEndEditing:(id)editing
{
  text = [(PHHandsetDialerLCDView *)self text];
  [(PHHandsetDialerLCDView *)self setText:text needsFormat:1];
}

- (id)resultContactPhoneNumber
{
  preferredPhoneNumber = [(MPContactSearchResult *)self->_contactSearchResult preferredPhoneNumber];
  if (preferredPhoneNumber || ([(MPContactSearchResult *)self->_contactSearchResult preferredPhoneNumber], (preferredPhoneNumber = objc_claimAutoreleasedReturnValue()) != 0))
  {
    firstObject = preferredPhoneNumber;
  }

  else
  {
    resultContact = [(PHHandsetDialerLCDView *)self resultContact];
    phoneNumbers = [resultContact phoneNumbers];
    firstObject = [phoneNumbers firstObject];
  }

  return firstObject;
}

- (void)hideResultsButtons
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __44__PHHandsetDialerLCDView_hideResultsButtons__block_invoke;
  v4[3] = &unk_4C668;
  v4[4] = self;
  v3 = objc_retainBlock(v4);
  [UIView animateWithDuration:v3 animations:0.300000012];
  self->_primaryResultButtonVisible = 0;
  self->_secondaryResultButtonVisible = 0;
}

void __44__PHHandsetDialerLCDView_hideResultsButtons__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) primaryResultButton];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) secondaryResultButton];
  [v3 setAlpha:0.0];

  v4 = [*(a1 + 32) separator];
  [v4 setAlpha:0.0];

  v5 = [*(a1 + 32) dialerResultButtonsGlassBackgroundView];
  [v5 setAlpha:0.0];
}

- (void)updateContactResultButtons
{
  if (![(PHHandsetDialerLCDView *)self enableSmartDialer])
  {
    return;
  }

  [(PHHandsetDialerLCDView *)self setName:0 numberLabel:0];
  [(MPDialerInterceptReporter *)self->_dialerReporter setAutocomplete:0];
  if (self->_contactSearchResult)
  {
    resultContact = [(PHHandsetDialerLCDView *)self resultContact];
    v4 = [CNContactFormatter stringFromContact:resultContact style:0];

    resultContactPhoneNumber = [(PHHandsetDialerLCDView *)self resultContactPhoneNumber];
    v6 = resultContactPhoneNumber;
    v7 = resultContactPhoneNumber != 0;
    if (resultContactPhoneNumber)
    {
      value = [resultContactPhoneNumber value];
      formattedStringValue = [value formattedStringValue];
      v10 = formattedStringValue;
      if (formattedStringValue)
      {
        stringValue = formattedStringValue;
      }

      else
      {
        value2 = [v6 value];
        stringValue = [value2 stringValue];
      }

      text = [(PHHandsetDialerLCDView *)self text];
      v29 = [v4 attributedStringToHighlightText:text style:1];

      text2 = [(PHHandsetDialerLCDView *)self text];
      v12 = [stringValue attributedStringToHighlightText:text2 style:2];
    }

    else
    {
      v12 = 0;
      v29 = 0;
    }
  }

  else
  {
    v12 = 0;
    v29 = 0;
    v7 = 0;
  }

  contactResultCount = self->_contactResultCount;
  if (contactResultCount)
  {
    v17 = [NSBundle bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"%lu_MORE_CONTACTS" value:&stru_50D80 table:@"Dialer"];
    v19 = [NSString localizedStringWithFormat:v18, self->_contactResultCount];

    v20 = [[NSMutableAttributedString alloc] initWithString:v19];
    v21 = +[UIColor secondaryLabelColor];
    [v20 addAttribute:NSForegroundColorAttributeName value:v21 range:{0, objc_msgSend(v20, "length")}];

    if (!v7)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v20 = 0;
    if (!v7)
    {
      goto LABEL_21;
    }
  }

  matchInfo = [(MPContactSearchResult *)self->_contactSearchResult matchInfo];
  v23 = matchInfo;
  if (matchInfo && ([matchInfo matchedProperties], v24 = objc_claimAutoreleasedReturnValue(), v24, v24))
  {
    matchedProperties = [v23 matchedProperties];
    v26 = [CDSearchUtilities matchedProperties:matchedProperties contains:CNContactPhoneNumbersKey];
  }

  else
  {
    v26 = &dword_0 + 1;
  }

  primaryResultButtonView = self->_primaryResultButtonView;
  text3 = [(PHHandsetDialerLCDView *)self text];
  [(PHDialerResultButtonView *)primaryResultButtonView configureWithPrimaryTitle:v29 secondaryTitle:v12 searchString:text3 isNumberPriority:v26 buttonType:0];

LABEL_21:
  if (contactResultCount)
  {
    [(PHDialerResultButtonView *)self->_secondaryResultButtonView configureWithPrimaryTitle:v20 secondaryTitle:0 buttonType:1];
  }

  [(PHHandsetDialerLCDView *)self updateResultButtonsVisiblityForPrimary:v7 secondary:contactResultCount != 0];
}

void __82__PHHandsetDialerLCDView_showBusinessGuidedSupportWithMessageAction_nameOverride___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) numberTextField];
  [v1 setAlpha:0.0];
}

void __82__PHHandsetDialerLCDView_showBusinessGuidedSupportWithMessageAction_nameOverride___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) businessNameField];
  [v1 setAlpha:1.0];
}

- (void)hideBusinessNameIfVisible
{
  if ([(PHHandsetDialerLCDView *)self showingBusinessSupportGuide])
  {
    [(PHLCDViewTextField *)self->_numberTextField setEnabled:1];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __51__PHHandsetDialerLCDView_hideBusinessNameIfVisible__block_invoke;
    v6[3] = &unk_4C668;
    v6[4] = self;
    v3 = objc_retainBlock(v6);
    [UIView animateWithDuration:v3 animations:0.300000012];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = __51__PHHandsetDialerLCDView_hideBusinessNameIfVisible__block_invoke_2;
    v5[3] = &unk_4C668;
    v5[4] = self;
    v4 = objc_retainBlock(v5);

    [UIView animateWithDuration:v4 animations:0.300000012];
    [(PHHandsetDialerLCDView *)self setShowingBusinessSupportGuide:0];
  }
}

void __51__PHHandsetDialerLCDView_hideBusinessNameIfVisible__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) businessNameField];
  [v1 setAlpha:0.0];
}

void __51__PHHandsetDialerLCDView_hideBusinessNameIfVisible__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) numberTextField];
  [v1 setAlpha:1.0];
}

- (void)updateResultButtonsVisiblityForPrimary:(BOOL)primary secondary:(BOOL)secondary
{
  if (self->_primaryResultButtonVisible != primary)
  {
    if (!primary)
    {
      [(PHHandsetDialerLCDView *)self hideResultsButtons];
      goto LABEL_8;
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __75__PHHandsetDialerLCDView_updateResultButtonsVisiblityForPrimary_secondary___block_invoke;
    v11[3] = &unk_4C720;
    v11[4] = self;
    secondaryCopy = secondary;
    v7 = v11;
    goto LABEL_6;
  }

  if (self->_secondaryResultButtonVisible != secondary)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __75__PHHandsetDialerLCDView_updateResultButtonsVisiblityForPrimary_secondary___block_invoke_2;
    v9[3] = &unk_4C720;
    v9[4] = self;
    secondaryCopy2 = secondary;
    v7 = v9;
LABEL_6:
    v8 = objc_retainBlock(v7);
    [UIView animateWithDuration:v8 animations:0.300000012];
  }

LABEL_8:
  self->_primaryResultButtonVisible = primary;
  self->_secondaryResultButtonVisible = secondary;
}

id __75__PHHandsetDialerLCDView_updateResultButtonsVisiblityForPrimary_secondary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) primaryResultButton];
  [v2 setAlpha:1.0];

  if (*(a1 + 40))
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = [*(a1 + 32) secondaryResultButton];
  [v4 setAlpha:v3];

  if (*(a1 + 40))
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = [*(a1 + 32) separator];
  [v6 setAlpha:v5];

  v7 = [*(a1 + 32) dialerResultButtonsGlassBackgroundView];
  [v7 setAlpha:1.0];

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);

  return [v8 updateDialerResultGlassBackgroundConstraintsForSecondaryButtonVisibility:v9];
}

id __75__PHHandsetDialerLCDView_updateResultButtonsVisiblityForPrimary_secondary___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = [*(a1 + 32) secondaryResultButton];
  [v3 setAlpha:v2];

  if (*(a1 + 40))
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [*(a1 + 32) separator];
  [v5 setAlpha:v4];

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  return [v6 updateDialerResultGlassBackgroundConstraintsForSecondaryButtonVisibility:v7];
}

- (void)handleDialerResultButtonPressedOfType:(int64_t)type
{
  dialerReporter = self->_dialerReporter;
  resultContact = [(PHHandsetDialerLCDView *)self resultContact];
  [(MPDialerInterceptReporter *)dialerReporter updateForDialerResultPressed:type savedContact:resultContact != 0];

  if (type > 2)
  {
    if (type == 3)
    {
      resultDelegate = [(PHHandsetDialerLCDView *)self resultDelegate];
      [resultDelegate presentAppleSupportGuidedHelp];
LABEL_15:

      return;
    }

    if (type == 4)
    {

      [(PHHandsetDialerLCDView *)self launchBusinessMessagesSupport];
    }
  }

  else
  {
    if (type)
    {
      if (type != 1)
      {
        return;
      }

      resultDelegate = [(PHHandsetDialerLCDView *)self resultDelegate];
      unformattedText = [(PHHandsetDialerLCDView *)self unformattedText];
      [resultDelegate presentContactsSearchFor:unformattedText];

      goto LABEL_15;
    }

    [(PHHandsetDialerLCDView *)self contactResultButtonPressed];
  }
}

- (DialerLCDFieldDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PHDialerLCDResultDelegate)resultDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_resultDelegate);

  return WeakRetained;
}

void __52__PHHandsetDialerLCDView_contactResultButtonPressed__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error searching for business: %@", &v2, 0xCu);
}

@end