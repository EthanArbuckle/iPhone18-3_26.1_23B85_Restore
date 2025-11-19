@interface PHHandsetDialerLCDView
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)resignFirstResponder;
- (BOOL)shouldInsertStringAtCurrentPosition:(id)a3 deletingPreviousCharacter:(BOOL)a4;
- (BOOL)textFieldShouldBeginEditing:(id)a3;
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
- (id)attributedStringForName:(id)a3 label:(id)a4;
- (id)attributedStringForSource:(id)a3;
- (id)generateBusinessNameLabelHorizontalConstraints;
- (id)generateNumberLabelHorizontalConstraints;
- (id)menuForPillView:(id)a3;
- (id)newAddContactButton;
- (id)newResultButton;
- (id)newSearchButton;
- (id)numberLabelFont;
- (id)resultContactPhoneNumber;
- (id)text;
- (id)unformattedText;
- (void)_makeCalloutVisible:(BOOL)a3;
- (void)applyLayoutConstraints;
- (void)applyLayoutConstraintsForSmartDialer;
- (void)checkAndUpdateVisibilityForView:(id)a3 shouldInvertVisibility:(BOOL)a4;
- (void)contactResultButtonPressed;
- (void)copy:(id)a3;
- (void)dealloc;
- (void)deleteCharacter;
- (void)handleDialerResultButtonPressedOfType:(int64_t)a3;
- (void)handleTapGesture:(id)a3;
- (void)hideBusinessNameIfVisible;
- (void)hideResultsButtons;
- (void)insertStringAtCurrentPosition:(id)a3 deletingPreviousCharacter:(BOOL)a4;
- (void)launchBusinessMessagesSupport;
- (void)paste:(id)a3;
- (void)setContactSearchResults:(id)a3 hasCompleteMatch:(BOOL)a4;
- (void)setIsHostedInRemoteViewController:(BOOL)a3;
- (void)setSenderIdentity:(id)a3;
- (void)setText:(id)a3 needsFormat:(BOOL)a4 name:(id)a5 label:(id)a6;
- (void)textField:(id)a3 didUpdateString:(id)a4;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)updateAddAndDeleteButtonForText:(id)a3 name:(id)a4 label:(id)a5 source:(id)a6 suggestion:(BOOL)a7 animated:(BOOL)a8;
- (void)updateContactResultButtons;
- (void)updateNumberAndBusinessNameLabelHorizontalConstraints;
- (void)updateResultButtonsVisiblityForPrimary:(BOOL)a3 secondary:(BOOL)a4;
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
  v3 = [v2 withCaseSensitiveAttribute];

  return v3;
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
  v2 = [(PHHandsetDialerLCDView *)self numberTextField];
  v8 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  v4 = [NSString stringWithFormat:@"|[numberLabel]|"];
  v5 = [NSLayoutConstraint constraintsWithVisualFormat:v4 options:0x10000 metrics:0 views:v3];

  return v5;
}

- (id)generateBusinessNameLabelHorizontalConstraints
{
  v7 = @"businessName";
  v2 = [(PHHandsetDialerLCDView *)self businessNameField];
  v8 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  v4 = [NSString stringWithFormat:@"|[businessName]|"];
  v5 = [NSLayoutConstraint constraintsWithVisualFormat:v4 options:0x10000 metrics:0 views:v3];

  return v5;
}

- (id)menuForPillView:(id)a3
{
  v4 = [(PHHandsetDialerLCDView *)self delegate];
  v5 = [(PHHandsetDialerLCDView *)self selectedSenderIdentity];
  v6 = [v4 senderIdentityMenuForDialerField:self selectedSenderIdentity:v5];

  return v6;
}

- (void)setSenderIdentity:(id)a3
{
  v8 = a3;
  v5 = [(PHHandsetDialerLCDView *)self pillView];
  v6 = v5;
  if (a3)
  {
    [v5 setHidden:0];

    v6 = [v8 localizedShortName];
    v7 = [(PHHandsetDialerLCDView *)self pillView];
    [v7 setBadgeText:v6];
  }

  else
  {
    [v5 setHidden:1];
  }

  [(PHHandsetDialerLCDView *)self setSelectedSenderIdentity:v8];
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
  v2 = [(PHLCDViewTextField *)self->_numberTextField text];
  v3 = +[NSCharacterSet unicodeDirectionalCharactersSet];
  v4 = [v2 stringByRemovingCharactersFromSet:v3];

  return v4;
}

- (id)unformattedText
{
  v2 = [(PHHandsetDialerLCDView *)self text];
  v3 = [v2 unformattedNumber];

  return v3;
}

- (void)setText:(id)a3 needsFormat:(BOOL)a4 name:(id)a5 label:(id)a6
{
  numberTextField = self->_numberTextField;
  v9 = a5;
  v10 = a3;
  [(PHLCDViewTextField *)numberTextField setText:v10];
  [(PHHandsetDialerLCDView *)self updateAddAndDeleteButtonForText:v10 name:v9 animated:1];
}

- (void)deleteCharacter
{
  v3 = [(PHLCDViewTextField *)self->_numberTextField isEditing];
  numberTextField = self->_numberTextField;
  if (v3)
  {

    [(PHLCDViewTextField *)numberTextField deleteBackward];
  }

  else
  {
    v6 = [(PHLCDViewTextField *)numberTextField text];
    v5 = UIFormattedPhoneStringByRemovingFromEnd();
    [(PHLCDViewTextField *)numberTextField setText:v5];
  }
}

- (BOOL)shouldInsertStringAtCurrentPosition:(id)a3 deletingPreviousCharacter:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[NSCharacterSet pauseCharacterSet];
  v8 = [v6 rangeOfCharacterFromSet:v7];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = !v4;
  }

  if (v9)
  {
    return 1;
  }

  if ([(PHLCDViewTextField *)self->_numberTextField isEditing])
  {
    v11 = +[NSCharacterSet unicodeDirectionalCharactersSet];
    v12 = [(PHLCDViewTextField *)self->_numberTextField text];
    v13 = [v11 characterIsMember:{objc_msgSend(v12, "characterAtIndex:", 0)}];

    numberTextField = self->_numberTextField;
    if (v13)
    {
      return [(PHLCDViewTextField *)numberTextField selectionRange]> 2;
    }

    else
    {
      v19 = [(PHLCDViewTextField *)numberTextField selectedTextRange];
      v20 = [v19 start];
      v21 = [(PHLCDViewTextField *)self->_numberTextField beginningOfDocument];
      v10 = v20 != v21;
    }
  }

  else
  {
    v15 = [(PHLCDViewTextField *)self->_numberTextField text];
    v16 = +[NSCharacterSet unicodeDirectionalCharactersSet];
    v17 = [v15 stringByTrimmingCharactersInSet:v16];

    v18 = +[NSCharacterSet starAndOctothorpeCharacterSet];
    v10 = [v17 rangeOfCharacterFromSet:v18] != 0;
  }

  return v10;
}

- (void)insertStringAtCurrentPosition:(id)a3 deletingPreviousCharacter:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  if ([PHHandsetDialerLCDView shouldInsertStringAtCurrentPosition:"shouldInsertStringAtCurrentPosition:deletingPreviousCharacter:" deletingPreviousCharacter:?])
  {
    if ([(PHLCDViewTextField *)self->_numberTextField isEditing])
    {
      if (v4)
      {
        [(PHLCDViewTextField *)self->_numberTextField deleteBackward];
      }

      numberTextField = self->_numberTextField;
      v7 = [(PHLCDViewTextField *)numberTextField selectedTextRange];
      [(PHLCDViewTextField *)numberTextField replaceRange:v7 withText:v9];
    }

    else
    {
      if (v4)
      {
        [(PHHandsetDialerLCDView *)self deleteCharacter];
      }

      v8 = [(PHHandsetDialerLCDView *)self text];
      v7 = [v8 stringByAppendingString:v9];

      [(PHHandsetDialerLCDView *)self setText:v7 needsFormat:!v4];
    }

    [(PHHandsetDialerLCDView *)self _requestMakeCutCopyPasteCalloutVisible:0];
  }
}

- (void)setContactSearchResults:(id)a3 hasCompleteMatch:(BOOL)a4
{
  v10 = a3;
  if ([(PHHandsetDialerLCDView *)self appType]== &dword_0 + 1 && [(PHHandsetDialerLCDView *)self enableSmartDialer])
  {
    if ([v10 count])
    {
      v6 = [v10 firstObject];
      contactSearchResult = self->_contactSearchResult;
      self->_contactSearchResult = v6;

      v8 = [v10 count] - 1;
    }

    else
    {
      v9 = self->_contactSearchResult;
      self->_contactSearchResult = 0;

      v8 = 0;
    }

    self->_contactResultCount = v8;
    self->_hasCompleteMatch = a4;
    [(PHHandsetDialerLCDView *)self updateContactResultButtons];
  }
}

- (id)attributedStringForName:(id)a3 label:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NSMutableAttributedString alloc];
  v9 = [NSString stringWithFormat:@"%@", v7];
  v10 = [v8 initWithString:v9];

  [(PHHandsetDialerLCDView *)self nameAndLabelFontSize];
  v11 = [UIFont systemFontOfSize:?];
  v12 = [v7 length];

  [v10 addAttribute:NSFontAttributeName value:v11 range:{0, v12}];
  if (v6)
  {
    v13 = [NSAttributedString alloc];
    v14 = [NSString stringWithFormat:@" %@", v6];
    v15 = [v13 initWithString:v14];
    [v10 appendAttributedString:v15];

    [v11 pointSize];
    v16 = [UIFont boldSystemFontOfSize:?];
    [v10 addAttribute:NSFontAttributeName value:v16 range:{objc_msgSend(v10, "length") - objc_msgSend(v6, "length"), objc_msgSend(v6, "length")}];
  }

  v17 = [v10 copy];

  return v17;
}

- (id)attributedStringForSource:(id)a3
{
  v4 = a3;
  v5 = [NSMutableAttributedString alloc];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"IDENTIFICATION_SOURCE_%@" value:&stru_50D80 table:@"General"];
  v8 = [NSString stringWithFormat:v7, v4];

  v9 = [v5 initWithString:v8];
  [(PHHandsetDialerLCDView *)self sourceLabelFontSize];
  v10 = [UIFont systemFontOfSize:?];
  [v9 addAttribute:NSFontAttributeName value:v10 range:{0, objc_msgSend(v9, "length")}];
  v11 = [v9 copy];

  return v11;
}

- (void)checkAndUpdateVisibilityForView:(id)a3 shouldInvertVisibility:(BOOL)a4
{
  if (a4)
  {
    v5 = a3;
    [v5 alpha];
    [v5 setAlpha:1.0 - v4];
  }
}

- (void)updateAddAndDeleteButtonForText:(id)a3 name:(id)a4 label:(id)a5 source:(id)a6 suggestion:(BOOL)a7 animated:(BOOL)a8
{
  v8 = a8;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [a3 length];
  v17 = v16 != 0;
  if (v13)
  {
    v18 = [(PHHandsetDialerLCDView *)self attributedStringForName:v13 label:v14];
    v19 = [(PHHandsetDialerLCDView *)self contactLabel];
    [v19 setAttributedText:v18];

    if (v15)
    {
      v20 = [(PHHandsetDialerLCDView *)self attributedStringForSource:v15];
      v21 = [(PHHandsetDialerLCDView *)self sourceLabel];
      [v21 setAttributedText:v20];
    }

    else
    {
      v20 = [(PHHandsetDialerLCDView *)self sourceLabel];
      [v20 setAttributedText:0];
    }
  }

  v46 = v14;
  if ([(PHHandsetDialerLCDView *)self appType]== &dword_0 + 1 && [(PHHandsetDialerLCDView *)self enableSmartDialer])
  {
    if (v16)
    {
      v22 = [v13 length] != 0;
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
    if (v13)
    {
      v25 = [(PHHandsetDialerLCDView *)self addContactButton];
      [v25 alpha];
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
      v30 = [(PHHandsetDialerLCDView *)self contactLabel];
      [v30 alpha];
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
    v48 = v13;
    v50 = v17;
    v33 = objc_retainBlock(v47);
    v34 = v33;
    if (v8)
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

- (void)_makeCalloutVisible:(BOOL)a3
{
  v3 = a3;
  v19 = +[UIMenuController sharedMenuController];
  if ([v19 isMenuVisible] != v3)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    if (v3)
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
  v3 = [(PHHandsetDialerLCDView *)&v5 resignFirstResponder];
  if (v3)
  {
    [(PHHandsetDialerLCDView *)self _makeCalloutVisible:0];
  }

  return v3;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if ("copy:" == a3 && (-[PHHandsetDialerLCDView text](self, "text"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 length], v7, !v8))
  {
    v9 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PHHandsetDialerLCDView;
    v9 = [(PHHandsetDialerLCDView *)&v11 canPerformAction:a3 withSender:v6];
  }

  return v9;
}

- (void)copy:(id)a3
{
  v5 = +[UIPasteboard generalPasteboard];
  v4 = [(PHHandsetDialerLCDView *)self text];
  [v5 setString:v4];
}

- (void)paste:(id)a3
{
  v4 = +[UIPasteboard generalPasteboard];
  v9 = [v4 string];

  v5 = v9;
  if (v9)
  {
    [(PHHandsetDialerLCDView *)self _makeCalloutVisible:0];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    v5 = v9;
    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 dialerField:self stringWasPasted:v9];

      v5 = v9;
    }
  }
}

- (void)handleTapGesture:(id)a3
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
    v9 = objc_alloc_init(UILargeContentViewerInteraction);
    [v3 addInteraction:v9];
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
    v9 = [v3 titleLabel];
    [v9 setFont:v8];
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
  v8 = [v3 titleLabel];
  [v8 setFont:v7];

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
    v4 = [v3 userInterfaceIdiom];

    if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v5 = [(PHHandsetDialerLCDView *)self heightAnchor];
      v6 = [v5 constraintEqualToConstant:80.0];
      [v6 setActive:1];
    }

    if ([(PHHandsetDialerLCDView *)self appType]== &dword_0 + 1)
    {
      v7 = +[UIDevice currentDevice];
      v8 = [v7 userInterfaceIdiom];

      if (v8 == &dword_4 + 1)
      {
        v84 = [(PHHandsetDialerLCDView *)self headerLayoutGuide];
        v82 = [v84 topAnchor];
        v83 = [(PHHandsetDialerLCDView *)self safeAreaLayoutGuide];
        v81 = [v83 topAnchor];
        v80 = [v82 constraintEqualToAnchor:v81];
        v85[0] = v80;
        v79 = [(PHHandsetDialerLCDView *)self headerLayoutGuide];
        v77 = [v79 bottomAnchor];
        v78 = [(PHHandsetDialerLCDView *)self numberTextField];
        v76 = [v78 topAnchor];
        [(PHHandsetDialerLCDView *)self addContactButtonContentInsetConstant];
        v75 = [v77 constraintEqualToAnchor:v76 constant:v9 + 5.0];
        v85[1] = v75;
        v74 = [(PHHandsetDialerLCDView *)self headerLayoutGuide];
        v72 = [v74 leadingAnchor];
        v73 = [(PHHandsetDialerLCDView *)self safeAreaLayoutGuide];
        v10 = [v73 leadingAnchor];
        v11 = [v72 constraintEqualToAnchor:v10];
        v85[2] = v11;
        v12 = [(PHHandsetDialerLCDView *)self headerLayoutGuide];
        v13 = [v12 trailingAnchor];
        v14 = [(PHHandsetDialerLCDView *)self safeAreaLayoutGuide];
        v15 = [v14 trailingAnchor];
        v16 = [v13 constraintEqualToAnchor:v15];
        v85[3] = v16;
        v17 = [NSArray arrayWithObjects:v85 count:4];
        [NSLayoutConstraint activateConstraints:v17];
      }
    }

    v18 = [(PHHandsetDialerLCDView *)self addContactButton];
    [(PHHandsetDialerLCDView *)self addContactButtonTopConstraintConstant];
    v20 = [NSLayoutConstraint constraintWithItem:v18 attribute:11 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:v19];
    [(PHHandsetDialerLCDView *)self setAddContactButtonTopConstraint:v20];

    v21 = [(PHHandsetDialerLCDView *)self addContactButtonTopConstraint];
    [(PHHandsetDialerLCDView *)self addConstraint:v21];

    v22 = [(PHHandsetDialerLCDView *)self addContactButton];
    v23 = [NSLayoutConstraint constraintWithItem:self attribute:4 relatedBy:0 toItem:v22 attribute:11 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v23];

    v24 = [(PHHandsetDialerLCDView *)self addContactButton];
    v25 = [NSLayoutConstraint constraintWithItem:v24 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v25];

    v26 = [(PHHandsetDialerLCDView *)self addContactButton];
    v27 = [(PHHandsetDialerLCDView *)self layoutTextField];
    [(PHHandsetDialerLCDView *)self spacingBetweenNumberBaselineAndNameBaseline];
    v29 = [NSLayoutConstraint constraintWithItem:v26 attribute:11 relatedBy:0 toItem:v27 attribute:11 multiplier:1.0 constant:v28];
    [(PHHandsetDialerLCDView *)self addConstraint:v29];

    v30 = [(PHHandsetDialerLCDView *)self addContactButton];
    v31 = [(PHHandsetDialerLCDView *)self layoutTextField];
    v32 = [NSLayoutConstraint constraintWithItem:v30 attribute:9 relatedBy:0 toItem:v31 attribute:9 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v32];

    v33 = [(PHHandsetDialerLCDView *)self numberTextField];
    v34 = [(PHHandsetDialerLCDView *)self layoutTextField];
    v35 = [NSLayoutConstraint constraintWithItem:v33 attribute:10 relatedBy:0 toItem:v34 attribute:10 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v35];

    v36 = [(PHHandsetDialerLCDView *)self numberTextField];
    v37 = [(PHHandsetDialerLCDView *)self layoutTextField];
    v38 = [NSLayoutConstraint constraintWithItem:v36 attribute:9 relatedBy:0 toItem:v37 attribute:9 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v38];

    v39 = [(PHHandsetDialerLCDView *)self businessNameField];
    v40 = [(PHHandsetDialerLCDView *)self layoutTextField];
    v41 = [NSLayoutConstraint constraintWithItem:v39 attribute:10 relatedBy:0 toItem:v40 attribute:10 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v41];

    v42 = [(PHHandsetDialerLCDView *)self businessNameField];
    v43 = [(PHHandsetDialerLCDView *)self layoutTextField];
    v44 = [NSLayoutConstraint constraintWithItem:v42 attribute:9 relatedBy:0 toItem:v43 attribute:9 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v44];

    v45 = [(PHHandsetDialerLCDView *)self contactLabel];
    v46 = [(PHHandsetDialerLCDView *)self addContactButton];
    v47 = [NSLayoutConstraint constraintWithItem:v45 attribute:9 relatedBy:0 toItem:v46 attribute:9 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v47];

    v48 = [(PHHandsetDialerLCDView *)self contactLabel];
    v49 = [(PHHandsetDialerLCDView *)self addContactButton];
    v50 = [NSLayoutConstraint constraintWithItem:v48 attribute:12 relatedBy:0 toItem:v49 attribute:12 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v50];

    v51 = [(PHHandsetDialerLCDView *)self contactLabel];
    v52 = [NSLayoutConstraint constraintWithItem:v51 attribute:5 relatedBy:1 toItem:self attribute:5 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v52];

    v53 = [(PHHandsetDialerLCDView *)self contactLabel];
    v54 = [NSLayoutConstraint constraintWithItem:v53 attribute:6 relatedBy:-1 toItem:self attribute:6 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v54];

    v55 = [(PHHandsetDialerLCDView *)self sourceLabel];
    v56 = [(PHHandsetDialerLCDView *)self addContactButton];
    v57 = [NSLayoutConstraint constraintWithItem:v55 attribute:9 relatedBy:0 toItem:v56 attribute:9 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v57];

    v58 = [(PHHandsetDialerLCDView *)self separator];

    v59 = [(PHHandsetDialerLCDView *)self sourceLabel];
    if (v58)
    {
      v60 = [(PHHandsetDialerLCDView *)self separator];
      v61 = 1.0;
      v62 = 10.0;
      v63 = v59;
      v64 = 12;
      v65 = v60;
      v66 = 12;
    }

    else
    {
      v60 = [(PHHandsetDialerLCDView *)self contactLabel];
      v61 = 1.0;
      v62 = 2.0;
      v63 = v59;
      v64 = 3;
      v65 = v60;
      v66 = 4;
    }

    v67 = [NSLayoutConstraint constraintWithItem:v63 attribute:v64 relatedBy:0 toItem:v65 attribute:v66 multiplier:v61 constant:v62];
    [(PHHandsetDialerLCDView *)self addConstraint:v67];

    v68 = [(PHHandsetDialerLCDView *)self sourceLabel];
    v69 = [NSLayoutConstraint constraintWithItem:v68 attribute:5 relatedBy:1 toItem:self attribute:5 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v69];

    v70 = [(PHHandsetDialerLCDView *)self sourceLabel];
    v71 = [NSLayoutConstraint constraintWithItem:v70 attribute:6 relatedBy:-1 toItem:self attribute:6 multiplier:1.0 constant:0.0];
    [(PHHandsetDialerLCDView *)self addConstraint:v71];

    [(PHHandsetDialerLCDView *)self updateNumberAndBusinessNameLabelHorizontalConstraints];
  }
}

- (void)applyLayoutConstraintsForSmartDialer
{
  v143 = [(PHHandsetDialerLCDView *)self headerLayoutGuide];
  v139 = [v143 topAnchor];
  v141 = [(PHHandsetDialerLCDView *)self safeAreaLayoutGuide];
  v137 = [v141 topAnchor];
  v135 = [v139 constraintEqualToAnchor:v137];
  v146[0] = v135;
  v134 = [(PHHandsetDialerLCDView *)self headerLayoutGuide];
  v132 = [v134 bottomAnchor];
  v133 = [(PHHandsetDialerLCDView *)self numberTextField];
  v131 = [v133 topAnchor];
  [(PHHandsetDialerLCDView *)self addContactButtonContentInsetConstant];
  v130 = [v132 constraintEqualToAnchor:v131 constant:v3 + 5.0];
  v146[1] = v130;
  v129 = [(PHHandsetDialerLCDView *)self headerLayoutGuide];
  v128 = [v129 leadingAnchor];
  v4 = [(PHHandsetDialerLCDView *)self safeAreaLayoutGuide];
  v5 = [v4 leadingAnchor];
  v6 = [v128 constraintEqualToAnchor:v5];
  v146[2] = v6;
  v7 = [(PHHandsetDialerLCDView *)self headerLayoutGuide];
  v8 = [v7 trailingAnchor];
  v9 = [(PHHandsetDialerLCDView *)self safeAreaLayoutGuide];
  v10 = [v9 trailingAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v146[3] = v11;
  v12 = [NSArray arrayWithObjects:v146 count:4];
  [NSLayoutConstraint activateConstraints:v12];

  v13 = [(PHHandsetDialerLCDView *)self layoutTextField];
  v14 = [NSLayoutConstraint constraintWithItem:v13 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v14];

  v15 = [(PHHandsetDialerLCDView *)self numberTextField];
  v16 = [(PHHandsetDialerLCDView *)self layoutTextField];
  v17 = [NSLayoutConstraint constraintWithItem:v15 attribute:10 relatedBy:0 toItem:v16 attribute:10 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v17];

  v18 = [(PHHandsetDialerLCDView *)self numberTextField];
  v19 = [(PHHandsetDialerLCDView *)self layoutTextField];
  v20 = [NSLayoutConstraint constraintWithItem:v18 attribute:9 relatedBy:0 toItem:v19 attribute:9 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v20];

  v21 = [(PHHandsetDialerLCDView *)self businessNameField];
  v22 = [(PHHandsetDialerLCDView *)self layoutTextField];
  v23 = [NSLayoutConstraint constraintWithItem:v21 attribute:10 relatedBy:0 toItem:v22 attribute:10 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v23];

  v24 = [(PHHandsetDialerLCDView *)self businessNameField];
  v25 = [(PHHandsetDialerLCDView *)self layoutTextField];
  v26 = [NSLayoutConstraint constraintWithItem:v24 attribute:9 relatedBy:0 toItem:v25 attribute:9 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v26];

  v27 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v28 = [(PHHandsetDialerLCDView *)self layoutTextField];
  [(PHHandsetDialerLCDView *)self spacingBetweenNumberAndContactResult];
  v30 = [NSLayoutConstraint constraintWithItem:v27 attribute:3 relatedBy:0 toItem:v28 attribute:4 multiplier:1.0 constant:v29];
  [(PHHandsetDialerLCDView *)self addConstraint:v30];

  v31 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  [(PHHandsetDialerLCDView *)self resultButtonsHorizontalPadding];
  v33 = [NSLayoutConstraint constraintWithItem:v31 attribute:5 relatedBy:0 toItem:self attribute:5 multiplier:1.0 constant:v32];
  [(PHHandsetDialerLCDView *)self addConstraint:v33];

  v34 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  [(PHHandsetDialerLCDView *)self resultButtonsHorizontalPadding];
  v36 = [NSLayoutConstraint constraintWithItem:v34 attribute:6 relatedBy:0 toItem:self attribute:6 multiplier:1.0 constant:-v35];
  [(PHHandsetDialerLCDView *)self addConstraint:v36];

  v37 = [(PHHandsetDialerLCDView *)self primaryResultButtonView];
  v38 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v39 = [NSLayoutConstraint constraintWithItem:v37 attribute:5 relatedBy:0 toItem:v38 attribute:5 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v39];

  v40 = [(PHHandsetDialerLCDView *)self primaryResultButtonView];
  v41 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v42 = [NSLayoutConstraint constraintWithItem:v40 attribute:6 relatedBy:0 toItem:v41 attribute:6 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v42];

  v43 = [(PHHandsetDialerLCDView *)self primaryResultButtonView];
  v44 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v45 = [NSLayoutConstraint constraintWithItem:v43 attribute:3 relatedBy:0 toItem:v44 attribute:3 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v45];

  v46 = [(PHHandsetDialerLCDView *)self primaryResultButtonView];
  v47 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v48 = [NSLayoutConstraint constraintWithItem:v46 attribute:4 relatedBy:0 toItem:v47 attribute:4 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v48];

  v49 = [(PHHandsetDialerLCDView *)self separator];
  v50 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  [(PHHandsetDialerLCDView *)self spacingBetweenPrimaryResultButtons];
  v52 = [NSLayoutConstraint constraintWithItem:v49 attribute:3 relatedBy:0 toItem:v50 attribute:4 multiplier:1.0 constant:v51];
  [(PHHandsetDialerLCDView *)self addConstraint:v52];

  v53 = [(PHHandsetDialerLCDView *)self separator];
  v54 = [NSLayoutConstraint constraintWithItem:v53 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:1.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v54];

  v55 = [(PHHandsetDialerLCDView *)self separator];
  v56 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v57 = [NSLayoutConstraint constraintWithItem:v55 attribute:5 relatedBy:0 toItem:v56 attribute:5 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v57];

  v58 = [(PHHandsetDialerLCDView *)self separator];
  v59 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v60 = [NSLayoutConstraint constraintWithItem:v58 attribute:6 relatedBy:0 toItem:v59 attribute:6 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v60];

  v61 = [(PHHandsetDialerLCDView *)self secondaryResultButton];
  v62 = [(PHHandsetDialerLCDView *)self separator];
  [(PHHandsetDialerLCDView *)self spacingBetweenPrimaryResultButtons];
  v64 = [NSLayoutConstraint constraintWithItem:v61 attribute:3 relatedBy:0 toItem:v62 attribute:4 multiplier:1.0 constant:v63];
  [(PHHandsetDialerLCDView *)self addConstraint:v64];

  v65 = [(PHHandsetDialerLCDView *)self secondaryResultButton];
  v66 = [NSLayoutConstraint constraintWithItem:self attribute:4 relatedBy:0 toItem:v65 attribute:11 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v66];

  v67 = [(PHHandsetDialerLCDView *)self secondaryResultButton];
  v68 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v69 = [NSLayoutConstraint constraintWithItem:v67 attribute:5 relatedBy:0 toItem:v68 attribute:5 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v69];

  v70 = [(PHHandsetDialerLCDView *)self secondaryResultButton];
  v71 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v72 = [NSLayoutConstraint constraintWithItem:v70 attribute:6 relatedBy:0 toItem:v71 attribute:6 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v72];

  v73 = [(PHHandsetDialerLCDView *)self secondaryResultButtonView];
  v74 = [(PHHandsetDialerLCDView *)self secondaryResultButton];
  v75 = [NSLayoutConstraint constraintWithItem:v73 attribute:5 relatedBy:0 toItem:v74 attribute:5 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v75];

  v76 = [(PHHandsetDialerLCDView *)self secondaryResultButtonView];
  v77 = [(PHHandsetDialerLCDView *)self secondaryResultButton];
  v78 = [NSLayoutConstraint constraintWithItem:v76 attribute:6 relatedBy:0 toItem:v77 attribute:6 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v78];

  v79 = [(PHHandsetDialerLCDView *)self secondaryResultButtonView];
  v80 = [(PHHandsetDialerLCDView *)self secondaryResultButton];
  v81 = [NSLayoutConstraint constraintWithItem:v79 attribute:3 relatedBy:0 toItem:v80 attribute:3 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v81];

  v82 = [(PHHandsetDialerLCDView *)self secondaryResultButtonView];
  v83 = [(PHHandsetDialerLCDView *)self secondaryResultButton];
  v84 = [NSLayoutConstraint constraintWithItem:v82 attribute:4 relatedBy:0 toItem:v83 attribute:4 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v84];

  v85 = [(PHHandsetDialerLCDView *)self contactLabel];
  v86 = [(PHHandsetDialerLCDView *)self layoutTextField];
  v87 = [NSLayoutConstraint constraintWithItem:v85 attribute:9 relatedBy:0 toItem:v86 attribute:9 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v87];

  v88 = [(PHHandsetDialerLCDView *)self contactLabel];
  v89 = [(PHHandsetDialerLCDView *)self primaryResultButton];
  v90 = [NSLayoutConstraint constraintWithItem:v88 attribute:12 relatedBy:0 toItem:v89 attribute:12 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v90];

  v91 = [(PHHandsetDialerLCDView *)self contactLabel];
  v92 = [NSLayoutConstraint constraintWithItem:v91 attribute:5 relatedBy:1 toItem:self attribute:5 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v92];

  v93 = [(PHHandsetDialerLCDView *)self contactLabel];
  v94 = [NSLayoutConstraint constraintWithItem:v93 attribute:6 relatedBy:-1 toItem:self attribute:6 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v94];

  v95 = [(PHHandsetDialerLCDView *)self sourceLabel];
  v96 = [(PHHandsetDialerLCDView *)self layoutTextField];
  v97 = [NSLayoutConstraint constraintWithItem:v95 attribute:9 relatedBy:0 toItem:v96 attribute:9 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v97];

  v98 = [(PHHandsetDialerLCDView *)self sourceLabel];
  v99 = [(PHHandsetDialerLCDView *)self separator];
  v100 = [NSLayoutConstraint constraintWithItem:v98 attribute:12 relatedBy:0 toItem:v99 attribute:12 multiplier:1.0 constant:10.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v100];

  v101 = [(PHHandsetDialerLCDView *)self sourceLabel];
  v102 = [NSLayoutConstraint constraintWithItem:v101 attribute:5 relatedBy:1 toItem:self attribute:5 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v102];

  v103 = [(PHHandsetDialerLCDView *)self sourceLabel];
  v104 = [NSLayoutConstraint constraintWithItem:v103 attribute:6 relatedBy:-1 toItem:self attribute:6 multiplier:1.0 constant:0.0];
  [(PHHandsetDialerLCDView *)self addConstraint:v104];

  if (_UISolariumEnabled())
  {
    v144 = [(PHHandsetDialerLCDView *)self dialerResultButtonsGlassBackgroundView];
    v140 = [v144 topAnchor];
    v142 = [(PHHandsetDialerLCDView *)self primaryResultButton];
    v138 = [v142 topAnchor];
    [(PHHandsetDialerLCDView *)self spacingBetweenPrimaryResultButtons];
    v136 = [v140 constraintEqualToAnchor:v138 constant:-v105];
    v145[0] = v136;
    v106 = [(PHHandsetDialerLCDView *)self dialerResultButtonsGlassBackgroundView];
    v107 = [v106 leadingAnchor];
    v108 = [(PHHandsetDialerLCDView *)self leadingAnchor];
    +[TPNumberPadButton horizontalPadding];
    v109 = [v107 constraintEqualToAnchor:v108 constant:?];
    v145[1] = v109;
    v110 = [(PHHandsetDialerLCDView *)self dialerResultButtonsGlassBackgroundView];
    v111 = [v110 trailingAnchor];
    v112 = [(PHHandsetDialerLCDView *)self trailingAnchor];
    +[TPNumberPadButton horizontalPadding];
    v114 = [v111 constraintEqualToAnchor:v112 constant:-v113];
    v145[2] = v114;
    v115 = [NSArray arrayWithObjects:v145 count:3];
    [NSLayoutConstraint activateConstraints:v115];

    v116 = [(PHHandsetDialerLCDView *)self dialerResultButtonsGlassBackgroundView];
    v117 = [v116 bottomAnchor];
    v118 = [(PHHandsetDialerLCDView *)self secondaryResultButton];
    v119 = [v118 bottomAnchor];
    [(PHHandsetDialerLCDView *)self spacingBetweenPrimaryResultButtons];
    v121 = [v117 constraintEqualToAnchor:v119 constant:v120];
    [(PHHandsetDialerLCDView *)self setSecondaryVisibleConstraint:v121];

    v122 = [(PHHandsetDialerLCDView *)self dialerResultButtonsGlassBackgroundView];
    v123 = [v122 bottomAnchor];
    v124 = [(PHHandsetDialerLCDView *)self primaryResultButton];
    v125 = [v124 bottomAnchor];
    [(PHHandsetDialerLCDView *)self spacingBetweenPrimaryResultButtons];
    v127 = [v123 constraintEqualToAnchor:v125 constant:v126];
    [(PHHandsetDialerLCDView *)self setSecondaryHiddenConstraint:v127];
  }

  [(PHHandsetDialerLCDView *)self updateNumberAndBusinessNameLabelHorizontalConstraints];
}

- (void)updateNumberAndBusinessNameLabelHorizontalConstraints
{
  v3 = [(PHHandsetDialerLCDView *)self numberLabelHorizontalConstraints];

  if (v3)
  {
    v4 = [(PHHandsetDialerLCDView *)self numberLabelHorizontalConstraints];
    [(PHHandsetDialerLCDView *)self removeConstraints:v4];
  }

  v5 = [(PHHandsetDialerLCDView *)self generateNumberLabelHorizontalConstraints];
  [(PHHandsetDialerLCDView *)self setNumberLabelHorizontalConstraints:v5];

  v6 = [(PHHandsetDialerLCDView *)self numberLabelHorizontalConstraints];
  [(PHHandsetDialerLCDView *)self addConstraints:v6];

  v7 = [(PHHandsetDialerLCDView *)self businessNameLabelHorizontalConstraints];

  if (v7)
  {
    v8 = [(PHHandsetDialerLCDView *)self businessNameLabelHorizontalConstraints];
    [(PHHandsetDialerLCDView *)self removeConstraints:v8];
  }

  v9 = [(PHHandsetDialerLCDView *)self generateBusinessNameLabelHorizontalConstraints];
  [(PHHandsetDialerLCDView *)self setBusinessNameLabelHorizontalConstraints:v9];

  v10 = [(PHHandsetDialerLCDView *)self businessNameLabelHorizontalConstraints];
  [(PHHandsetDialerLCDView *)self addConstraints:v10];
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

  v4 = [(PHHandsetDialerLCDView *)self isHostedInRemoteViewController];
  result = 5.0;
  if (v4)
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

- (void)setIsHostedInRemoteViewController:(BOOL)a3
{
  if (self->_isHostedInRemoteViewController != a3)
  {
    self->_isHostedInRemoteViewController = a3;
    [(PHHandsetDialerLCDView *)self addContactButtonTopConstraintConstant];
    v6 = v5;
    v7 = [(PHHandsetDialerLCDView *)self addContactButtonTopConstraint];
    [v7 setConstant:v6];
  }
}

- (void)textField:(id)a3 didUpdateString:(id)a4
{
  v10 = a3;
  if ([v10 isEditing])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 dialerLCDFieldTextDidChange:self];
    }
  }

  v8 = [(PHHandsetDialerLCDView *)self text];
  v9 = [v8 length];

  if (!v9)
  {
    [v10 endEditing:1];
  }
}

- (void)contactResultButtonPressed
{
  if ([(PHHandsetDialerLCDView *)self enableSmartDialer])
  {
    if (self->_contactSearchResult)
    {
      v3 = [(PHHandsetDialerLCDView *)self resultContact];
      v4 = [CNContactFormatter stringFromContact:v3 style:0];

      v5 = [(PHHandsetDialerLCDView *)self resultContactPhoneNumber];
      v6 = [v5 value];
      v7 = [v6 formattedStringValue];
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v11 = [v5 value];
        v9 = [v11 stringValue];
      }

      v12 = [v5 label];
      v10 = [CNLabeledValue localizedStringForLabel:v12];

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
        v14 = [(PHHandsetDialerLCDView *)self resultDelegate];
        v24 = _NSConcreteStackBlock;
        v25 = 3221225472;
        v26 = __52__PHHandsetDialerLCDView_contactResultButtonPressed__block_invoke;
        v27 = &unk_4C968;
        v29 = &v40;
        v30 = &v36;
        v31 = &v32;
        v15 = v13;
        v28 = v15;
        [v14 searchBusinessesFor:v9 completionHandler:&v24];

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
      v9 = 0;
      v4 = 0;
    }

    [(PHHandsetDialerLCDView *)self hideResultsButtons:v24];
    [(PHLCDViewTextField *)self->_numberTextField setText:v9];
    [(PHHandsetDialerLCDView *)self setName:v4 numberLabel:v10];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v23 = objc_opt_respondsToSelector();

    if ((v23 & 1) == 0)
    {
LABEL_19:

      return;
    }

    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 updateIDSStatus];
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
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error opening Messages url: %@", &v2, 0xCu);
}

- (BOOL)textFieldShouldBeginEditing:(id)a3
{
  v3 = [(PHLCDViewTextField *)self->_numberTextField text];
  v4 = [v3 length] != 0;

  return v4;
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = +[UIMenuController sharedMenuController];
  v5 = [v4 isMenuVisible];

  if (v5)
  {

    [(PHHandsetDialerLCDView *)self _makeCalloutVisible:0];
  }
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = [(PHHandsetDialerLCDView *)self text];
  [(PHHandsetDialerLCDView *)self setText:v4 needsFormat:1];
}

- (id)resultContactPhoneNumber
{
  v3 = [(MPContactSearchResult *)self->_contactSearchResult preferredPhoneNumber];
  if (v3 || ([(MPContactSearchResult *)self->_contactSearchResult preferredPhoneNumber], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
  }

  else
  {
    v6 = [(PHHandsetDialerLCDView *)self resultContact];
    v7 = [v6 phoneNumbers];
    v4 = [v7 firstObject];
  }

  return v4;
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
    v3 = [(PHHandsetDialerLCDView *)self resultContact];
    v4 = [CNContactFormatter stringFromContact:v3 style:0];

    v5 = [(PHHandsetDialerLCDView *)self resultContactPhoneNumber];
    v6 = v5;
    v7 = v5 != 0;
    if (v5)
    {
      v8 = [v5 value];
      v9 = [v8 formattedStringValue];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v13 = [v6 value];
        v11 = [v13 stringValue];
      }

      v14 = [(PHHandsetDialerLCDView *)self text];
      v29 = [v4 attributedStringToHighlightText:v14 style:1];

      v15 = [(PHHandsetDialerLCDView *)self text];
      v12 = [v11 attributedStringToHighlightText:v15 style:2];
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

  v22 = [(MPContactSearchResult *)self->_contactSearchResult matchInfo];
  v23 = v22;
  if (v22 && ([v22 matchedProperties], v24 = objc_claimAutoreleasedReturnValue(), v24, v24))
  {
    v25 = [v23 matchedProperties];
    v26 = [CDSearchUtilities matchedProperties:v25 contains:CNContactPhoneNumbersKey];
  }

  else
  {
    v26 = &dword_0 + 1;
  }

  primaryResultButtonView = self->_primaryResultButtonView;
  v28 = [(PHHandsetDialerLCDView *)self text];
  [(PHDialerResultButtonView *)primaryResultButtonView configureWithPrimaryTitle:v29 secondaryTitle:v12 searchString:v28 isNumberPriority:v26 buttonType:0];

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

- (void)updateResultButtonsVisiblityForPrimary:(BOOL)a3 secondary:(BOOL)a4
{
  if (self->_primaryResultButtonVisible != a3)
  {
    if (!a3)
    {
      [(PHHandsetDialerLCDView *)self hideResultsButtons];
      goto LABEL_8;
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __75__PHHandsetDialerLCDView_updateResultButtonsVisiblityForPrimary_secondary___block_invoke;
    v11[3] = &unk_4C720;
    v11[4] = self;
    v12 = a4;
    v7 = v11;
    goto LABEL_6;
  }

  if (self->_secondaryResultButtonVisible != a4)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __75__PHHandsetDialerLCDView_updateResultButtonsVisiblityForPrimary_secondary___block_invoke_2;
    v9[3] = &unk_4C720;
    v9[4] = self;
    v10 = a4;
    v7 = v9;
LABEL_6:
    v8 = objc_retainBlock(v7);
    [UIView animateWithDuration:v8 animations:0.300000012];
  }

LABEL_8:
  self->_primaryResultButtonVisible = a3;
  self->_secondaryResultButtonVisible = a4;
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

- (void)handleDialerResultButtonPressedOfType:(int64_t)a3
{
  dialerReporter = self->_dialerReporter;
  v6 = [(PHHandsetDialerLCDView *)self resultContact];
  [(MPDialerInterceptReporter *)dialerReporter updateForDialerResultPressed:a3 savedContact:v6 != 0];

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v8 = [(PHHandsetDialerLCDView *)self resultDelegate];
      [v8 presentAppleSupportGuidedHelp];
LABEL_15:

      return;
    }

    if (a3 == 4)
    {

      [(PHHandsetDialerLCDView *)self launchBusinessMessagesSupport];
    }
  }

  else
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return;
      }

      v8 = [(PHHandsetDialerLCDView *)self resultDelegate];
      v7 = [(PHHandsetDialerLCDView *)self unformattedText];
      [v8 presentContactsSearchFor:v7];

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