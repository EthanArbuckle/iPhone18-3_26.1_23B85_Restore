@interface PassthruSearchBar
- (BOOL)_pasteAndNavigateURL:(id)l;
- (BOOL)keyboardInputChanged:(id)changed;
- (BOOL)keyboardInputShouldDelete:(id)delete;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldBeginEditing:(id)editing;
- (BOOL)textFieldShouldClear:(id)clear;
- (BOOL)textFieldShouldEndEditing:(id)editing;
- (BOOL)textFieldShouldReturn:(id)return;
- (CGSize)intrinsicContentSize;
- (PassthruSearchBar)initWithStyle:(int64_t)style;
- (PassthruSearchBarDelegate)textFieldDelegate;
- (id)_editActions:(id)actions addingTitle:(id)title identifier:(id)identifier handler:(id)handler;
- (id)textField:(id)field editMenuForCharactersInRange:(_NSRange)range suggestedActions:(id)actions;
- (void)_pasteAndNavigate;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setTextColor:(id)color;
- (void)setTextFieldDelegate:(id)delegate;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PassthruSearchBar

- (CGSize)intrinsicContentSize
{
  if (sub_10000FA08(self) == 5)
  {
    searchTextField = [(PassthruSearchBar *)self searchTextField];
    [searchTextField intrinsicContentSize];
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

- (BOOL)keyboardInputChanged:(id)changed
{
  v4 = +[UIApplication sharedApplication];
  isRunningTest = [v4 isRunningTest];

  if (isRunningTest)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    searchField = [(PassthruSearchBar *)self searchField];
    [v6 postNotificationName:@"PPTShouldSendTextChangeNotification" object:searchField];
  }

  return 1;
}

- (BOOL)_pasteAndNavigateURL:(id)l
{
  lCopy = l;
  BOOL = GEOConfigGetBOOL();
  v6 = 0;
  if (lCopy && BOOL)
  {
    if ([_MKURLParser isValidMapURL:lCopy]&& self->_delegateHandlesLinks)
    {
      searchField = [(PassthruSearchBar *)self searchField];
      [searchField setText:0];

      [(PassthruSearchBar *)self resignFirstResponder];
      textFieldDelegate = [(PassthruSearchBar *)self textFieldDelegate];
      [textFieldDelegate searchBar:self didPasteMapsLink:lCopy];

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
    string = [v8 string];
    if (string)
    {
      searchField = [(PassthruSearchBar *)self searchField];
      [searchField setText:string];

      searchField2 = [(PassthruSearchBar *)self searchField];
      v7 = [(PassthruSearchBar *)self textFieldShouldReturn:searchField2];

      if (v7)
      {
        [(PassthruSearchBar *)self resignFirstResponder];
      }
    }
  }
}

- (id)_editActions:(id)actions addingTitle:(id)title identifier:(id)identifier handler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  titleCopy = title;
  v12 = [NSMutableArray arrayWithArray:actions];
  v13 = [UIAction actionWithTitle:titleCopy image:0 identifier:identifierCopy handler:handlerCopy];

  [v12 insertObject:v13 atIndex:0];
  v14 = [v12 copy];

  return v14;
}

- (id)textField:(id)field editMenuForCharactersInRange:(_NSRange)range suggestedActions:(id)actions
{
  fieldCopy = field;
  actionsCopy = actions;
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
    v13 = [(PassthruSearchBar *)self _editActions:actionsCopy addingTitle:v11 identifier:UIActionPasteAndGo handler:v21];

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
    v13 = [(PassthruSearchBar *)self _editActions:actionsCopy addingTitle:v16 identifier:UIActionPasteAndSearch handler:v19];

    v14 = [UIMenu menuWithChildren:v13];
    goto LABEL_6;
  }

  v17 = [UIMenu menuWithChildren:actionsCopy];
  v13 = actionsCopy;
LABEL_8:

  return v17;
}

- (BOOL)keyboardInputShouldDelete:(id)delete
{
  deleteCopy = delete;
  textFieldDelegate = [(PassthruSearchBar *)self textFieldDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    textFieldDelegate2 = [(PassthruSearchBar *)self textFieldDelegate];
    v8 = [textFieldDelegate2 keyboardInputShouldDelete:deleteCopy];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  textFieldDelegate = [(PassthruSearchBar *)self textFieldDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    textFieldDelegate2 = [(PassthruSearchBar *)self textFieldDelegate];
    [textFieldDelegate2 textFieldDidEndEditing:editingCopy];
  }
}

- (BOOL)textFieldShouldEndEditing:(id)editing
{
  editingCopy = editing;
  textFieldDelegate = [(PassthruSearchBar *)self textFieldDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    textFieldDelegate2 = [(PassthruSearchBar *)self textFieldDelegate];
    v8 = [textFieldDelegate2 textFieldShouldEndEditing:editingCopy];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)textFieldDidBeginEditing:(id)editing
{
  editingCopy = editing;
  textFieldDelegate = [(PassthruSearchBar *)self textFieldDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    textFieldDelegate2 = [(PassthruSearchBar *)self textFieldDelegate];
    [textFieldDelegate2 textFieldDidBeginEditing:editingCopy];
  }
}

- (BOOL)textFieldShouldBeginEditing:(id)editing
{
  editingCopy = editing;
  v5 = MapsSuggestionsResourceDepotForMapsProcess();
  oneInsights = [v5 oneInsights];
  [oneInsights preload];

  textFieldDelegate = [(PassthruSearchBar *)self textFieldDelegate];
  LOBYTE(oneInsights) = objc_opt_respondsToSelector();

  if (oneInsights)
  {
    textFieldDelegate2 = [(PassthruSearchBar *)self textFieldDelegate];
    v9 = [textFieldDelegate2 textFieldShouldBeginEditing:editingCopy];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)textFieldShouldClear:(id)clear
{
  clearCopy = clear;
  textFieldDelegate = [(PassthruSearchBar *)self textFieldDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    textFieldDelegate2 = [(PassthruSearchBar *)self textFieldDelegate];
    v8 = [textFieldDelegate2 textFieldShouldClear:clearCopy];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  textFieldDelegate = [(PassthruSearchBar *)self textFieldDelegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    textFieldDelegate2 = [(PassthruSearchBar *)self textFieldDelegate];
    v14 = [textFieldDelegate2 textField:fieldCopy shouldChangeCharactersInRange:location replacementString:{length, stringCopy}];
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  textFieldDelegate = [(PassthruSearchBar *)self textFieldDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    textFieldDelegate2 = [(PassthruSearchBar *)self textFieldDelegate];
    v8 = [textFieldDelegate2 textFieldShouldReturn:returnCopy];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  if (self->_textColor != colorCopy)
  {
    v7 = colorCopy;
    objc_storeStrong(&self->_textColor, color);
    searchField = [(PassthruSearchBar *)self searchField];
    [searchField setTextColor:v7];

    colorCopy = v7;
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = PassthruSearchBar;
  changeCopy = change;
  [(PassthruSearchBar *)&v9 traitCollectionDidChange:changeCopy];
  v5 = [(PassthruSearchBar *)self traitCollection:v9.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  v8 = sub_10008FB5C(preferredContentSizeCategory, preferredContentSizeCategory2);
  if (v8)
  {
    [(PassthruSearchBar *)self invalidateIntrinsicContentSize];
  }
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v4.receiver = self;
  v4.super_class = PassthruSearchBar;
  [(PassthruSearchBar *)&v4 setContentInset:inset.top, inset.left, inset.bottom, inset.right];
  [(PassthruSearchBar *)self invalidateIntrinsicContentSize];
}

- (void)setTextFieldDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_textFieldDelegate, delegateCopy);
  v5 = objc_opt_respondsToSelector();

  self->_delegateHandlesLinks = v5 & 1;
}

- (PassthruSearchBar)initWithStyle:(int64_t)style
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
  searchField = [(PassthruSearchBar *)v5 searchField];
  [searchField setDelegate:v5];

  [(PassthruSearchBar *)v5 setTranslucent:1];
  [(PassthruSearchBar *)v5 setOpaque:0];
  v7 = objc_opt_new();
  [(PassthruSearchBar *)v5 setBackgroundImage:v7];

  v8 = +[UIColor clearColor];
  [(PassthruSearchBar *)v5 setBackgroundColor:v8];

  [(PassthruSearchBar *)v5 _setBackdropStyle:2005];
  [(PassthruSearchBar *)v5 _setAutoDisableCancelButton:0];
  [(PassthruSearchBar *)v5 setCenterPlaceholder:0];
  if (!style)
  {
    v9 = &qword_1012163A8;
    goto LABEL_6;
  }

  if (style == 1)
  {
    v9 = &qword_101215410;
LABEL_6:
    [(PassthruSearchBar *)v5 setContentInset:*v9, 16.0, *v9, 16.0];
  }

  searchTextField = [(PassthruSearchBar *)v5 searchTextField];
  [searchTextField _setRoundedRectBackgroundCornerRadius:10.0];

  searchTextField2 = [(PassthruSearchBar *)v5 searchTextField];
  [searchTextField2 setBecomesFirstResponderOnClearButtonTap:0];

  searchTextField3 = [(PassthruSearchBar *)v5 searchTextField];
  [searchTextField3 setAutocorrectionType:1];

  searchTextField4 = [(PassthruSearchBar *)v5 searchTextField];
  [searchTextField4 setSpellCheckingType:1];

  searchTextField5 = [(PassthruSearchBar *)v5 searchTextField];
  [searchTextField5 setTextLoupeVisibility:3];

  searchTextField6 = [(PassthruSearchBar *)v5 searchTextField];
  [searchTextField6 setReturnKeyType:6];

  searchTextField7 = [(PassthruSearchBar *)v5 searchTextField];
  [searchTextField7 setEnablesReturnKeyAutomatically:1];

  searchTextField8 = [(PassthruSearchBar *)v5 searchTextField];
  [searchTextField8 setEnablesReturnKeyOnNonWhiteSpaceContent:1];

  searchTextField9 = [(PassthruSearchBar *)v5 searchTextField];
  [searchTextField9 setClipsToBounds:1];

  searchTextField10 = [(PassthruSearchBar *)v5 searchTextField];
  [searchTextField10 setAccessibilityIdentifier:@"MapsSearchTextField"];

  if (sub_10000FA08(v5) != 5)
  {
    searchTextField11 = [(PassthruSearchBar *)v5 searchTextField];
    [searchTextField11 setClearButtonMode:1];
  }

  v21 = objc_alloc_init(UIFocusGuide);
  [(PassthruSearchBar *)v5 setFocusGuide:v21];

  searchTextField12 = [(PassthruSearchBar *)v5 searchTextField];
  v46 = searchTextField12;
  v23 = [NSArray arrayWithObjects:&v46 count:1];
  focusGuide = [(PassthruSearchBar *)v5 focusGuide];
  [focusGuide setPreferredFocusEnvironments:v23];

  focusGuide2 = [(PassthruSearchBar *)v5 focusGuide];
  [(PassthruSearchBar *)v5 addLayoutGuide:focusGuide2];

  focusGuide3 = [(PassthruSearchBar *)v5 focusGuide];
  topAnchor = [focusGuide3 topAnchor];
  topAnchor2 = [(PassthruSearchBar *)v5 topAnchor];
  v40 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v45[0] = v40;
  focusGuide4 = [(PassthruSearchBar *)v5 focusGuide];
  bottomAnchor = [focusGuide4 bottomAnchor];
  bottomAnchor2 = [(PassthruSearchBar *)v5 bottomAnchor];
  v36 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v45[1] = v36;
  focusGuide5 = [(PassthruSearchBar *)v5 focusGuide];
  leadingAnchor = [focusGuide5 leadingAnchor];
  leadingAnchor2 = [(PassthruSearchBar *)v5 leadingAnchor];
  v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v45[2] = v29;
  focusGuide6 = [(PassthruSearchBar *)v5 focusGuide];
  trailingAnchor = [focusGuide6 trailingAnchor];
  trailingAnchor2 = [(PassthruSearchBar *)v5 trailingAnchor];
  v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v45[3] = v33;
  v34 = [NSArray arrayWithObjects:v45 count:4];
  [NSLayoutConstraint activateConstraints:v34];

  return v5;
}

@end