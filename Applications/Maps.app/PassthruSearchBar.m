@interface PassthruSearchBar
- (BOOL)_pasteAndNavigateURL:(id)a3;
- (BOOL)keyboardInputChanged:(id)a3;
- (BOOL)keyboardInputShouldDelete:(id)a3;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldBeginEditing:(id)a3;
- (BOOL)textFieldShouldClear:(id)a3;
- (BOOL)textFieldShouldEndEditing:(id)a3;
- (BOOL)textFieldShouldReturn:(id)a3;
- (CGSize)intrinsicContentSize;
- (PassthruSearchBar)initWithStyle:(int64_t)a3;
- (PassthruSearchBarDelegate)textFieldDelegate;
- (id)_editActions:(id)a3 addingTitle:(id)a4 identifier:(id)a5 handler:(id)a6;
- (id)textField:(id)a3 editMenuForCharactersInRange:(_NSRange)a4 suggestedActions:(id)a5;
- (void)_pasteAndNavigate;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setTextColor:(id)a3;
- (void)setTextFieldDelegate:(id)a3;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PassthruSearchBar

- (CGSize)intrinsicContentSize
{
  if (sub_10000FA08(self) == 5)
  {
    v3 = [(PassthruSearchBar *)self searchTextField];
    [v3 intrinsicContentSize];
    v5 = v4;

    [(PassthruSearchBar *)self contentInset];
    v7 = v6;
    [(PassthruSearchBar *)self contentInset];
    v9 = v7 + v8 + v5;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PassthruSearchBar;
    [(PassthruSearchBar *)&v11 intrinsicContentSize];
  }

  v10 = UIViewNoIntrinsicMetric;
  result.height = v9;
  result.width = v10;
  return result;
}

- (PassthruSearchBarDelegate)textFieldDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_textFieldDelegate);

  return WeakRetained;
}

- (BOOL)keyboardInputChanged:(id)a3
{
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 isRunningTest];

  if (v5)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    v7 = [(PassthruSearchBar *)self searchField];
    [v6 postNotificationName:@"PPTShouldSendTextChangeNotification" object:v7];
  }

  return 1;
}

- (BOOL)_pasteAndNavigateURL:(id)a3
{
  v4 = a3;
  BOOL = GEOConfigGetBOOL();
  v6 = 0;
  if (v4 && BOOL)
  {
    if ([_MKURLParser isValidMapURL:v4]&& self->_delegateHandlesLinks)
    {
      v7 = [(PassthruSearchBar *)self searchField];
      [v7 setText:0];

      [(PassthruSearchBar *)self resignFirstResponder];
      v8 = [(PassthruSearchBar *)self textFieldDelegate];
      [v8 searchBar:self didPasteMapsLink:v4];

      v6 = 1;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)_pasteAndNavigate
{
  v8 = +[UIPasteboard generalPasteboard];
  v3 = [v8 URL];
  if (![(PassthruSearchBar *)self _pasteAndNavigateURL:v3])
  {
    v4 = [v8 string];
    if (v4)
    {
      v5 = [(PassthruSearchBar *)self searchField];
      [v5 setText:v4];

      v6 = [(PassthruSearchBar *)self searchField];
      v7 = [(PassthruSearchBar *)self textFieldShouldReturn:v6];

      if (v7)
      {
        [(PassthruSearchBar *)self resignFirstResponder];
      }
    }
  }
}

- (id)_editActions:(id)a3 addingTitle:(id)a4 identifier:(id)a5 handler:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [NSMutableArray arrayWithArray:a3];
  v13 = [UIAction actionWithTitle:v11 image:0 identifier:v10 handler:v9];

  [v12 insertObject:v13 atIndex:0];
  v14 = [v12 copy];

  return v14;
}

- (id)textField:(id)a3 editMenuForCharactersInRange:(_NSRange)a4 suggestedActions:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = +[UIPasteboard generalPasteboard];
  if ([v9 hasURLs] && self->_delegateHandlesLinks)
  {
    objc_initWeak(&location, self);
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"Paste and Go" value:@"localized string not found" table:0];
    v12 = v21;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100B063D8;
    v21[3] = &unk_101661900;
    objc_copyWeak(&v22, &location);
    v13 = [(PassthruSearchBar *)self _editActions:v8 addingTitle:v11 identifier:UIActionPasteAndGo handler:v21];

    v14 = [UIMenu menuWithChildren:v13];
LABEL_6:
    v17 = v14;
    objc_destroyWeak(v12 + 4);
    objc_destroyWeak(&location);
    goto LABEL_8;
  }

  if ([v9 hasStrings])
  {
    objc_initWeak(&location, self);
    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"Paste and Search" value:@"localized string not found" table:0];
    v12 = v19;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100B06418;
    v19[3] = &unk_101661900;
    objc_copyWeak(&v20, &location);
    v13 = [(PassthruSearchBar *)self _editActions:v8 addingTitle:v16 identifier:UIActionPasteAndSearch handler:v19];

    v14 = [UIMenu menuWithChildren:v13];
    goto LABEL_6;
  }

  v17 = [UIMenu menuWithChildren:v8];
  v13 = v8;
LABEL_8:

  return v17;
}

- (BOOL)keyboardInputShouldDelete:(id)a3
{
  v4 = a3;
  v5 = [(PassthruSearchBar *)self textFieldDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(PassthruSearchBar *)self textFieldDelegate];
    v8 = [v7 keyboardInputShouldDelete:v4];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)textFieldDidEndEditing:(id)a3
{
  v7 = a3;
  v4 = [(PassthruSearchBar *)self textFieldDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(PassthruSearchBar *)self textFieldDelegate];
    [v6 textFieldDidEndEditing:v7];
  }
}

- (BOOL)textFieldShouldEndEditing:(id)a3
{
  v4 = a3;
  v5 = [(PassthruSearchBar *)self textFieldDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(PassthruSearchBar *)self textFieldDelegate];
    v8 = [v7 textFieldShouldEndEditing:v4];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v7 = a3;
  v4 = [(PassthruSearchBar *)self textFieldDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(PassthruSearchBar *)self textFieldDelegate];
    [v6 textFieldDidBeginEditing:v7];
  }
}

- (BOOL)textFieldShouldBeginEditing:(id)a3
{
  v4 = a3;
  v5 = MapsSuggestionsResourceDepotForMapsProcess();
  v6 = [v5 oneInsights];
  [v6 preload];

  v7 = [(PassthruSearchBar *)self textFieldDelegate];
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    v8 = [(PassthruSearchBar *)self textFieldDelegate];
    v9 = [v8 textFieldShouldBeginEditing:v4];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)textFieldShouldClear:(id)a3
{
  v4 = a3;
  v5 = [(PassthruSearchBar *)self textFieldDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(PassthruSearchBar *)self textFieldDelegate];
    v8 = [v7 textFieldShouldClear:v4];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  v11 = [(PassthruSearchBar *)self textFieldDelegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(PassthruSearchBar *)self textFieldDelegate];
    v14 = [v13 textField:v9 shouldChangeCharactersInRange:location replacementString:{length, v10}];
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = [(PassthruSearchBar *)self textFieldDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(PassthruSearchBar *)self textFieldDelegate];
    v8 = [v7 textFieldShouldReturn:v4];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)setTextColor:(id)a3
{
  v5 = a3;
  if (self->_textColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_textColor, a3);
    v6 = [(PassthruSearchBar *)self searchField];
    [v6 setTextColor:v7];

    v5 = v7;
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = PassthruSearchBar;
  v4 = a3;
  [(PassthruSearchBar *)&v9 traitCollectionDidChange:v4];
  v5 = [(PassthruSearchBar *)self traitCollection:v9.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  v8 = sub_10008FB5C(v6, v7);
  if (v8)
  {
    [(PassthruSearchBar *)self invalidateIntrinsicContentSize];
  }
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  v4.receiver = self;
  v4.super_class = PassthruSearchBar;
  [(PassthruSearchBar *)&v4 setContentInset:a3.top, a3.left, a3.bottom, a3.right];
  [(PassthruSearchBar *)self invalidateIntrinsicContentSize];
}

- (void)setTextFieldDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_textFieldDelegate, v4);
  v5 = objc_opt_respondsToSelector();

  self->_delegateHandlesLinks = v5 & 1;
}

- (PassthruSearchBar)initWithStyle:(int64_t)a3
{
  v44.receiver = self;
  v44.super_class = PassthruSearchBar;
  v4 = [(PassthruSearchBar *)&v44 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  [(PassthruSearchBar *)v4 setAccessibilityIdentifier:@"MapsSearchBar"];
  v6 = [(PassthruSearchBar *)v5 searchField];
  [v6 setDelegate:v5];

  [(PassthruSearchBar *)v5 setTranslucent:1];
  [(PassthruSearchBar *)v5 setOpaque:0];
  v7 = objc_opt_new();
  [(PassthruSearchBar *)v5 setBackgroundImage:v7];

  v8 = +[UIColor clearColor];
  [(PassthruSearchBar *)v5 setBackgroundColor:v8];

  [(PassthruSearchBar *)v5 _setBackdropStyle:2005];
  [(PassthruSearchBar *)v5 _setAutoDisableCancelButton:0];
  [(PassthruSearchBar *)v5 setCenterPlaceholder:0];
  if (!a3)
  {
    v9 = &qword_1012163A8;
    goto LABEL_6;
  }

  if (a3 == 1)
  {
    v9 = &qword_101215410;
LABEL_6:
    [(PassthruSearchBar *)v5 setContentInset:*v9, 16.0, *v9, 16.0];
  }

  v10 = [(PassthruSearchBar *)v5 searchTextField];
  [v10 _setRoundedRectBackgroundCornerRadius:10.0];

  v11 = [(PassthruSearchBar *)v5 searchTextField];
  [v11 setBecomesFirstResponderOnClearButtonTap:0];

  v12 = [(PassthruSearchBar *)v5 searchTextField];
  [v12 setAutocorrectionType:1];

  v13 = [(PassthruSearchBar *)v5 searchTextField];
  [v13 setSpellCheckingType:1];

  v14 = [(PassthruSearchBar *)v5 searchTextField];
  [v14 setTextLoupeVisibility:3];

  v15 = [(PassthruSearchBar *)v5 searchTextField];
  [v15 setReturnKeyType:6];

  v16 = [(PassthruSearchBar *)v5 searchTextField];
  [v16 setEnablesReturnKeyAutomatically:1];

  v17 = [(PassthruSearchBar *)v5 searchTextField];
  [v17 setEnablesReturnKeyOnNonWhiteSpaceContent:1];

  v18 = [(PassthruSearchBar *)v5 searchTextField];
  [v18 setClipsToBounds:1];

  v19 = [(PassthruSearchBar *)v5 searchTextField];
  [v19 setAccessibilityIdentifier:@"MapsSearchTextField"];

  if (sub_10000FA08(v5) != 5)
  {
    v20 = [(PassthruSearchBar *)v5 searchTextField];
    [v20 setClearButtonMode:1];
  }

  v21 = objc_alloc_init(UIFocusGuide);
  [(PassthruSearchBar *)v5 setFocusGuide:v21];

  v22 = [(PassthruSearchBar *)v5 searchTextField];
  v46 = v22;
  v23 = [NSArray arrayWithObjects:&v46 count:1];
  v24 = [(PassthruSearchBar *)v5 focusGuide];
  [v24 setPreferredFocusEnvironments:v23];

  v25 = [(PassthruSearchBar *)v5 focusGuide];
  [(PassthruSearchBar *)v5 addLayoutGuide:v25];

  v43 = [(PassthruSearchBar *)v5 focusGuide];
  v42 = [v43 topAnchor];
  v41 = [(PassthruSearchBar *)v5 topAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v45[0] = v40;
  v39 = [(PassthruSearchBar *)v5 focusGuide];
  v38 = [v39 bottomAnchor];
  v37 = [(PassthruSearchBar *)v5 bottomAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v45[1] = v36;
  v26 = [(PassthruSearchBar *)v5 focusGuide];
  v27 = [v26 leadingAnchor];
  v28 = [(PassthruSearchBar *)v5 leadingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];
  v45[2] = v29;
  v30 = [(PassthruSearchBar *)v5 focusGuide];
  v31 = [v30 trailingAnchor];
  v32 = [(PassthruSearchBar *)v5 trailingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];
  v45[3] = v33;
  v34 = [NSArray arrayWithObjects:v45 count:4];
  [NSLayoutConstraint activateConstraints:v34];

  return v5;
}

@end