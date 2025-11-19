@interface _SFFindOnPageToolbar
- (BOOL)_keyboardIsSplit;
- (BOOL)_updateEditing:(BOOL)a3;
- (BOOL)searchBarShouldBeginEditing:(id)a3;
- (CGRect)_toolbarFrame;
- (CGSize)intrinsicContentSize;
- (_SFFindOnPageToolbar)initWithDelegate:(id)a3;
- (double)_toolbarVerticalInset;
- (id)_matchLabelText;
- (void)_doUpdateSearchText;
- (void)_done;
- (void)_initializeToolbarItems;
- (void)_keyboardWillChangeFrame:(id)a3;
- (void)layoutSubviews;
- (void)next:(id)a3;
- (void)previous:(id)a3;
- (void)safeAreaInsetsDidChange;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarTextDidBeginEditing:(id)a3;
- (void)setUsesNarrowLayout:(BOOL)a3;
- (void)updateUI;
@end

@implementation _SFFindOnPageToolbar

- (_SFFindOnPageToolbar)initWithDelegate:(id)a3
{
  v4 = a3;
  [(_SFFindOnPageToolbar *)self _accessoryViewHeight];
  v13.receiver = self;
  v13.super_class = _SFFindOnPageToolbar;
  v6 = [(UIInputView *)&v13 initWithFrame:1 inputViewStyle:0.0, 0.0, 320.0, v5];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E69DD180]);
    [(_SFFindOnPageToolbar *)v6 _toolbarFrame];
    v8 = [v7 initWithFrame:?];
    toolbar = v6->_toolbar;
    v6->_toolbar = v8;

    [(UIToolbar *)v6->_toolbar setBarStyle:4];
    [(UIToolbar *)v6->_toolbar _setHidesShadow:1];
    [(UIToolbar *)v6->_toolbar setCenterTextButtons:1];
    [(_SFFindOnPageToolbar *)v6 addSubview:v6->_toolbar];
    [(_SFFindOnPageToolbar *)v6 _initializeToolbarItems];
    [(UIToolbar *)v6->_toolbar setItems:v6->_toolbarItems];
    objc_storeWeak(&v6->_findDelegate, v4);
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v6 selector:sel__keyboardWillChangeFrame_ name:*MEMORY[0x1E69DE068] object:0];

    v11 = v6;
  }

  return v6;
}

- (void)_keyboardWillChangeFrame:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v26.origin.x = v16;
  v26.origin.y = v18;
  v26.size.width = v20;
  v26.size.height = v22;
  v29.origin.x = v7;
  v29.origin.y = v9;
  v29.size.width = v11;
  v29.size.height = v13;
  v27 = CGRectIntersection(v26, v29);
  Height = CGRectGetHeight(v27);
  [(_SFFindOnPageToolbar *)self bounds];
  v24 = Height - CGRectGetHeight(v28) == 0.0;
  if (self->_useBottomInset != v24)
  {
    self->_useBottomInset = v24;

    [(_SFFindOnPageToolbar *)self invalidateIntrinsicContentSize];
  }
}

- (CGRect)_toolbarFrame
{
  [(_SFFindOnPageToolbar *)self _toolbarVerticalInset];
  v4 = v3;
  [(_SFFindOnPageToolbar *)self bounds];
  Width = CGRectGetWidth(v14);
  v6 = 0.0;
  if ((_SFDeviceIsPad() & 1) != 0 || self->_usesNarrowLayout)
  {
    v7 = 44.0;
  }

  else
  {
    v15.size.height = 44.0;
    v15.origin.x = 0.0;
    v15.origin.y = v4;
    v15.size.width = Width;
    *(&v7 - 3) = CGRectInset(v15, 56.0, 0.0);
    v6 = v8;
    v4 = v9;
    Width = v10;
  }

  v11 = v6;
  v12 = v4;
  v13 = Width;
  result.size.height = v7;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (double)_toolbarVerticalInset
{
  IsPad = _SFDeviceIsPad();
  result = 5.0;
  if (IsPad)
  {
    return 4.0;
  }

  return result;
}

- (CGSize)intrinsicContentSize
{
  [(UIToolbar *)self->_toolbar intrinsicContentSize];
  v4 = v3;
  [(_SFFindOnPageToolbar *)self safeAreaInsets];
  v6 = v5;
  v7 = 0.0;
  if (self->_useBottomInset)
  {
    [(_SFFindOnPageToolbar *)self _toolbarVerticalInset];
  }

  v8 = fmax(v6, v7);
  [(_SFFindOnPageToolbar *)self _accessoryViewHeight];
  v10 = v9 + v8;
  v11 = v4;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = _SFFindOnPageToolbar;
  [(_SFFindOnPageToolbar *)&v3 safeAreaInsetsDidChange];
  [(_SFFindOnPageToolbar *)self invalidateIntrinsicContentSize];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = _SFFindOnPageToolbar;
  [(_SFFindOnPageToolbar *)&v5 layoutSubviews];
  [(_SFFindOnPageToolbar *)self _toolbarFrame];
  [(UIToolbar *)self->_toolbar setFrame:?];
  v3 = [(_SFFindOnPageInputBar *)self->_inputBar searchField];
  v4 = [v3 font];
  [(UILabel *)self->_inFieldMatchLabel setFont:v4];
}

- (void)updateUI
{
  [(_SFFindOnPageToolbar *)self _toolbarFrame];
  [(UIToolbar *)self->_toolbar setFrame:?];
  v40 = [(_SFFindOnPageInputBar *)self->_inputBar searchField];
  WeakRetained = objc_loadWeakRetained(&self->_findDelegate);
  v4 = [WeakRetained hasMatches];

  [(UIBarButtonItem *)self->_previousButtonItem setEnabled:v4];
  [(UIBarButtonItem *)self->_nextButtonItem setEnabled:v4];
  v5 = [(_SFFindOnPageInputBar *)self->_inputBar text];
  LOBYTE(v4) = [v5 isEqualToString:self->_searchText];

  if ((v4 & 1) == 0)
  {
    [(_SFFindOnPageInputBar *)self->_inputBar setText:self->_searchText];
  }

  [v40 setRightViewMode:3];
  v6 = [(_SFFindOnPageToolbar *)self _matchLabelText];
  [(UILabel *)self->_inFieldMatchLabel setText:v6];

  [(UILabel *)self->_inFieldMatchLabel frame];
  v37 = v8;
  v38 = v7;
  v9 = *MEMORY[0x1E695F060];
  v10 = *(MEMORY[0x1E695F060] + 8);
  [(UILabel *)self->_inFieldMatchLabel sizeThatFits:*MEMORY[0x1E695F060], v10];
  v39 = v11;
  [v40 bounds];
  v13 = v12;
  [v40 textRectForBounds:?];
  v36 = v14;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [v40 sizeThatFits:{v9, v10}];
  v22 = v21;
  [v40 _contentMargin];
  v24 = v23;
  [v40 _imageButtonMargin];
  v26 = v25;
  [v40 _textButtonMargin];
  if (self->_usesNarrowLayout && (v28 = v27, [(_SFFindOnPageInputBar *)self->_inputBar isFirstResponder]) && v39 + v22 - v24 - v26 - v28 >= v13)
  {
    [v40 setRightViewMode:0];
  }

  else
  {
    [v40 setRightViewMode:3];
    v29 = [v40 font];
    [v29 lineHeight];
    v31 = floor((v20 - v30) * 0.5);

    v42.origin.x = v36;
    v42.origin.y = v16;
    v42.size.width = v18;
    v42.size.height = v20;
    v32 = CGRectGetMinY(v42) + v31;
    v43.origin.x = v36;
    v43.origin.y = v16;
    v43.size.width = v18;
    v43.size.height = v20;
    v33 = CGRectGetMaxY(v43) - v31;
    [(UILabel *)self->_inFieldMatchLabel textSize];
    v35 = v32 - (v33 - ceil(v34));
    v44.origin.x = v36;
    v44.origin.y = v16;
    v44.size.width = v18;
    v44.size.height = v20;
    [(UILabel *)self->_inFieldMatchLabel setFrame:v38, v37, v39, CGRectGetMaxY(v44) - v35];
    [v40 _setRightViewOffset:{0.0, v35}];
  }
}

- (id)_matchLabelText
{
  if ([(NSString *)self->_searchText length])
  {
    WeakRetained = objc_loadWeakRetained(&self->_findDelegate);
    v4 = [WeakRetained matchLabelText];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setUsesNarrowLayout:(BOOL)a3
{
  if (self->_usesNarrowLayout != a3)
  {
    self->_usesNarrowLayout = a3;
    [(_SFFindOnPageToolbar *)self updateUI];
  }
}

- (void)previous:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_findDelegate);
  [WeakRetained previous];

  [(_SFFindOnPageToolbar *)self updateUI];
}

- (void)next:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_findDelegate);
  [WeakRetained next];

  [(_SFFindOnPageToolbar *)self updateUI];
}

- (void)_done
{
  [(_SFFindOnPageToolbar *)self _updateEditing:0];
  WeakRetained = objc_loadWeakRetained(&self->_findDelegate);
  [WeakRetained done];
}

- (BOOL)searchBarShouldBeginEditing:(id)a3
{
  v4 = [(_SFFindOnPageToolbar *)self _updateEditing:1];
  if (v4)
  {
    [(_SFFindOnPageInputBar *)self->_inputBar performSelector:sel_becomeFirstResponder withObject:0 afterDelay:0.0];
  }

  return !v4;
}

- (void)searchBarTextDidBeginEditing:(id)a3
{
  v4 = a3;
  [(_SFFindOnPageToolbar *)self updateUI];
  v5 = [v4 searchField];

  [v5 performSelector:sel_selectAll_ withObject:0 afterDelay:0.0];
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  if ([a3 isFirstResponder])
  {
    textChangedUpdateTimer = self->_textChangedUpdateTimer;
    if (textChangedUpdateTimer)
    {
      [(NSTimer *)textChangedUpdateTimer invalidate];
    }

    v6 = [(_SFFindOnPageInputBar *)self->_inputBar text];
    v7 = [v6 copy];
    searchText = self->_searchText;
    self->_searchText = v7;

    v9 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__doUpdateSearchText selector:0 userInfo:0 repeats:0.25];
    v10 = self->_textChangedUpdateTimer;
    self->_textChangedUpdateTimer = v9;
  }
}

- (void)_initializeToolbarItems
{
  v37[1] = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:103 target:self action:sel_previous_];
  previousButtonItem = self->_previousButtonItem;
  self->_previousButtonItem = v3;

  v5 = [MEMORY[0x1E69DC888] labelColor];
  [(UIBarButtonItem *)self->_previousButtonItem setTintColor:v5];

  v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:104 target:self action:sel_next_];
  nextButtonItem = self->_nextButtonItem;
  self->_nextButtonItem = v6;

  v8 = [MEMORY[0x1E69DC888] labelColor];
  [(UIBarButtonItem *)self->_nextButtonItem setTintColor:v8];

  v33 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:6 target:0 action:0];
  [v33 setWidth:2.0];
  v9 = objc_alloc_init(_SFFindOnPageInputBar);
  inputBar = self->_inputBar;
  self->_inputBar = v9;

  [(_SFFindOnPageInputBar *)self->_inputBar setDelegate:self];
  [(_SFFindOnPageInputBar *)self->_inputBar _setDisableDictationButton:1];
  WeakRetained = objc_loadWeakRetained(&self->_findDelegate);
  v12 = [WeakRetained textForToolbarLabel];
  [(_SFFindOnPageInputBar *)self->_inputBar setPlaceholder:v12];

  [(_SFFindOnPageInputBar *)self->_inputBar setContentInset:0.0, 4.0, 0.0, 7.0];
  v13 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:self->_inputBar];
  [v13 _setFlexible:1];
  v14 = [(_SFFindOnPageInputBar *)self->_inputBar searchField];
  v15 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  inFieldMatchLabel = self->_inFieldMatchLabel;
  self->_inFieldMatchLabel = v15;

  v17 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_inFieldMatchLabel setTextColor:v17];

  [v14 setRightView:self->_inFieldMatchLabel];
  [v14 setClearButtonMode:1];
  v18 = [MEMORY[0x1E69DC668] sharedApplication];
  if ([v18 safari_prefersRTLLayout])
  {
    v19 = 2;
  }

  else
  {
    v19 = 0;
  }

  [v14 setTextAlignment:v19];

  v20 = [MEMORY[0x1E69DC888] labelColor];
  [v14 setTextColor:v20];

  v21 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_dismiss_];
  doneBarButtonItem = self->_doneBarButtonItem;
  self->_doneBarButtonItem = v21;

  v23 = [MEMORY[0x1E69DB880] defaultFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:2 options:0];
  v36 = *MEMORY[0x1E69DB648];
  v24 = [MEMORY[0x1E69DB878] fontWithDescriptor:v23 size:0.0];
  v37[0] = v24;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];

  [(UIBarButtonItem *)self->_doneBarButtonItem setTitleTextAttributes:v25 forState:0];
  [(UIBarButtonItem *)self->_doneBarButtonItem setTitleTextAttributes:v25 forState:1];
  v26 = [MEMORY[0x1E69DC888] labelColor];
  [(UIBarButtonItem *)self->_doneBarButtonItem setTintColor:v26];

  if (_SFDeviceIsPad())
  {
    v27 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:6 target:0 action:0];
    [(NSArray *)v27 setWidth:16.0];
    v28 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
    v35[0] = v28;
    v35[1] = v27;
    v35[2] = self->_doneBarButtonItem;
    v35[3] = v13;
    v29 = v33;
    v35[4] = self->_previousButtonItem;
    v35[5] = v33;
    v35[6] = self->_nextButtonItem;
    v35[7] = v28;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:8];
    toolbarItems = self->_toolbarItems;
    self->_toolbarItems = v30;
  }

  else
  {
    v34[0] = self->_doneBarButtonItem;
    v34[1] = v13;
    v29 = v33;
    v34[2] = self->_previousButtonItem;
    v34[3] = v33;
    v34[4] = self->_nextButtonItem;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:5];
    v27 = self->_toolbarItems;
    self->_toolbarItems = v32;
  }
}

- (void)_doUpdateSearchText
{
  WeakRetained = objc_loadWeakRetained(&self->_findDelegate);
  [WeakRetained updateSearchText:self->_searchText];

  textChangedUpdateTimer = self->_textChangedUpdateTimer;
  self->_textChangedUpdateTimer = 0;
}

- (BOOL)_updateEditing:(BOOL)a3
{
  v3 = a3;
  editing = self->_editing;
  if (editing != a3)
  {
    self->_editing = a3;
    if (!a3)
    {
      [(_SFFindOnPageInputBar *)self->_inputBar resignFirstResponder];
    }

    [(_SFFindOnPageToolbar *)self updateUI];
  }

  return editing != v3;
}

- (BOOL)_keyboardIsSplit
{
  v2 = self;
  v3 = [(UIInputView *)self leftContentView];
  [v3 frame];
  Width = CGRectGetWidth(v8);
  v5 = [(UIInputView *)v2 rightContentView];
  [v5 frame];
  v6 = Width + CGRectGetWidth(v9);
  [(_SFFindOnPageToolbar *)v2 bounds];
  LOBYTE(v2) = v6 < CGRectGetWidth(v10);

  return v2;
}

@end