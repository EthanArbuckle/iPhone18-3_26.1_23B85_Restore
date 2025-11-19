@interface TUISearchBarView
+ (id)renderModelWithStates:(id)a3 actionHandler:(id)a4 viewState:(id)a5 enabled:(BOOL)a6 name:(id)a7 identifier:(id)a8 editingInsets:(UIEdgeInsets)a9 placeholderText:(id)a10 style:(id)a11 text:(id)a12 returnKeyType:(id)a13 keyboardAppearance:(unint64_t)a14 cancelText:(id)a15 showCancel:(BOOL)a16;
- (id)_textForControlUsingRenderModel:(id)a3;
- (id)currentState;
- (id)viewStateSave;
- (void)_callActionHandlerForTrigger:(id)a3 arguments:(id)a4;
- (void)_searchBarDidSubmitSearch:(id)a3;
- (void)_updateDynamicViewState;
- (void)configureWithModel:(id)a3 outsets:(UIEdgeInsets)a4;
- (void)dealloc;
- (void)loadControlIfNeeded;
- (void)prepareForReuse;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)searchBarTextDidBeginEditing:(id)a3;
- (void)searchBarTextDidEndEditing:(id)a3;
- (void)viewStateRestore:(id)a3;
@end

@implementation TUISearchBarView

+ (id)renderModelWithStates:(id)a3 actionHandler:(id)a4 viewState:(id)a5 enabled:(BOOL)a6 name:(id)a7 identifier:(id)a8 editingInsets:(UIEdgeInsets)a9 placeholderText:(id)a10 style:(id)a11 text:(id)a12 returnKeyType:(id)a13 keyboardAppearance:(unint64_t)a14 cancelText:(id)a15 showCancel:(BOOL)a16
{
  v40 = a6;
  right = a9.right;
  bottom = a9.bottom;
  left = a9.left;
  top = a9.top;
  v35 = a15;
  v34 = a13;
  v23 = a12;
  v24 = a11;
  v25 = a10;
  v33 = a8;
  v32 = a7;
  v37 = a5;
  v26 = a4;
  v27 = a3;
  v28 = [TUIRenderModelInteractiveText alloc];
  v29 = [a1 tuiReuseIdentifier];
  LOBYTE(v31) = a16;
  v41 = [(TUIRenderModelInteractiveText *)v28 initWithReuseIdentifier:v29 identifier:v33 elementStates:v27 actionHandler:v26 viewState:v37 enabled:v40 name:top editingInsets:left style:bottom placeholderText:right text:v32 returnKeyType:v24 keyboardAppearance:v25 cancelText:v23 showCancel:v34, a14, v35, v31];

  return v41;
}

- (void)dealloc
{
  v3 = [(TUIInteractiveBaseView *)self control];
  [v3 setDelegate:0];

  v4.receiver = self;
  v4.super_class = TUISearchBarView;
  [(TUISearchBarView *)&v4 dealloc];
}

- (id)currentState
{
  v3 = @"default";
  v4 = [(TUIInteractiveBaseView *)self control];
  v5 = [v4 isFocused];
  v6 = [v4 text];
  v7 = [v6 length];

  if (v7)
  {
    v8 = @"hasValue";

    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    v9 = TUIElementStateEditingHasValue;
    goto LABEL_6;
  }

  if (v5)
  {
    v9 = TUIElementStateEditing;
    v8 = v3;
LABEL_6:
    v3 = *v9;
  }

  v8 = v3;
LABEL_8:

  return v8;
}

- (void)loadControlIfNeeded
{
  v3 = [(TUIInteractiveBaseView *)self control];
  if (!v3)
  {
    v4 = [TUIUIKitSearchBar alloc];
    [(TUISearchBarView *)self bounds];
    v7 = [(TUIUIKitSearchBar *)v4 initWithFrame:?];
    v5 = [(TUISearchBarView *)self viewStateToRestore];
    v6 = [v5 text];
    [(TUIUIKitSearchBar *)v7 setText:v6];

    [(TUIUIKitSearchBar *)v7 setDelegate:self];
    [(TUIUIKitSearchBar *)v7 setSearchBarStyle:2];
    [(TUIUIKitSearchBar *)v7 _setAutoDisableCancelButton:0];
    [(TUISearchBarView *)self addSubview:v7];
    [(TUIInteractiveBaseView *)self setControl:v7];
    [(TUISearchBarView *)self setViewStateToRestore:0];
    v3 = v7;
  }
}

- (void)configureWithModel:(id)a3 outsets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v9 = a3;
  v32.receiver = self;
  v32.super_class = TUISearchBarView;
  [(TUIInteractiveBaseView *)&v32 configureWithModel:v9 outsets:top, left, bottom, right];
  [(TUISearchBarView *)self setViewStateToRestore:0];
  v10 = v9;
  v11 = v10;
  if (v10)
  {
    v12 = [v10 viewState];
    dynamicViewState = self->_dynamicViewState;
    self->_dynamicViewState = v12;

    v14 = [(TUIInteractiveBaseView *)self control];
    v15 = [(TUISearchBarView *)self _textForControlUsingRenderModel:v11];
    [v14 setText:v15];

    if ([v11 returnKeyType])
    {
      v16 = [(TUIInteractiveBaseView *)self control];
      [v16 setReturnKeyType:{objc_msgSend(v11, "returnKeyType")}];
    }

    v17 = [v11 cancelText];

    if (v17)
    {
      v18 = [(TUIInteractiveBaseView *)self control];
      v19 = [v11 cancelText];
      [v18 setCancelText:v19];
    }

    v20 = [v11 enabled];
    v21 = [(TUIInteractiveBaseView *)self control];
    [v21 setEnabled:v20];

    v22 = [(TUIInteractiveBaseView *)self control];
    [v22 setShouldShowCancelButton:{objc_msgSend(v11, "showCancel")}];

    v23 = [v11 placeholderText];

    if (v23)
    {
      v24 = [(TUIInteractiveBaseView *)self control];
      v25 = [v24 searchField];
      v26 = [v11 placeholderText];
      [v25 setAttributedPlaceholder:v26];
    }

    v27 = TUIPlatformKeyboardAppearanceFromKeyboardAppearance([v11 keyboardAppearance]);
    v28 = [(TUIInteractiveBaseView *)self control];
    v29 = [v28 keyboardAppearance];

    if (v27 != v29)
    {
      v30 = [(TUIInteractiveBaseView *)self control];
      [v30 setKeyboardAppearance:v27];

      v31 = [(TUIInteractiveBaseView *)self control];
      [v31 reloadInputViewsWithoutReset];
    }
  }
}

- (void)_updateDynamicViewState
{
  if (self->_dynamicViewState)
  {
    v3 = [(TUIInteractiveBaseView *)self control];

    if (v3)
    {
      dynamicViewState = self->_dynamicViewState;
      v9 = @"value";
      v5 = [(TUIInteractiveBaseView *)self control];
      v6 = [v5 searchField];
      v7 = [v6 text];
      v10 = v7;
      v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
      [(TUIMutableDynamicValue *)dynamicViewState updateWithValueIfChanged:v8];
    }
  }
}

- (id)viewStateSave
{
  v2 = [(TUIInteractiveBaseView *)self control];
  if (v2)
  {
    v3 = [_TUISearchBarViewState alloc];
    v4 = [v2 text];
    v5 = [(_TUISearchBarViewState *)v3 initWithText:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)viewStateRestore:(id)a3
{
  v7 = a3;
  v4 = [(TUIInteractiveBaseView *)self control];

  if (v7 && v4)
  {
    v5 = [v7 text];

    v6 = [(TUIInteractiveBaseView *)self control];
    [v6 setText:v5];

    [(TUIInteractiveBaseView *)self updateFromState];
  }

  else
  {
    [(TUISearchBarView *)self setViewStateToRestore:v7];
  }
}

- (id)_textForControlUsingRenderModel:(id)a3
{
  v4 = a3;
  v5 = [(TUIInteractiveBaseView *)self control];
  v6 = [v5 text];

  if (!v6)
  {
    v7 = [(_TUISearchBarViewState *)self->_viewStateToRestore text];
    if (!v7)
    {
      v7 = [v4 text];
    }

    v6 = v7;
  }

  return v6;
}

- (void)_callActionHandlerForTrigger:(id)a3 arguments:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(TUIInteractiveBaseView *)self renderModel];
  v8 = [v9 actionHandler];
  [v8 invoke:v7 arguments:v6];
}

- (void)searchBarTextDidBeginEditing:(id)a3
{
  v4 = a3;
  [(TUIInteractiveBaseView *)self updateFromState];
  v9 = @"value";
  v5 = [(TUIInteractiveBaseView *)self control];
  v6 = [v5 text];
  v10 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [(TUISearchBarView *)self _callActionHandlerForTrigger:@"beginInput" arguments:v7];

  v8 = [(TUIInteractiveBaseView *)self control];
  LODWORD(v5) = [v8 shouldShowCancelButton];

  if (v5)
  {
    [v4 setShowsCancelButton:1 animated:1];
    [v4 becomeFirstResponder];
  }

  [(TUISearchBarView *)self _updateDynamicViewState];
}

- (void)searchBarTextDidEndEditing:(id)a3
{
  v4 = a3;
  [(TUIInteractiveBaseView *)self updateFromState];
  v11 = @"value";
  v5 = [(TUIInteractiveBaseView *)self control];
  v6 = [v5 text];
  v12 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [(TUISearchBarView *)self _callActionHandlerForTrigger:@"endInput" arguments:v7];

  v8 = [(TUIInteractiveBaseView *)self control];
  v9 = [v8 text];
  v10 = [v9 length];

  if (!v10)
  {
    [v4 setShowsCancelButton:0 animated:1];
  }

  [(TUISearchBarView *)self _updateDynamicViewState];
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  [(TUIInteractiveBaseView *)self updateFromState:a3];
  v8 = @"value";
  v5 = [(TUIInteractiveBaseView *)self control];
  v6 = [v5 text];
  v9 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [(TUISearchBarView *)self _callActionHandlerForTrigger:@"changedInput" arguments:v7];

  [(TUISearchBarView *)self _updateDynamicViewState];
}

- (void)_searchBarDidSubmitSearch:(id)a3
{
  v4 = a3;
  v10 = @"value";
  v5 = [(TUIInteractiveBaseView *)self control];
  v6 = [v5 text];
  v11 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [(TUISearchBarView *)self _callActionHandlerForTrigger:@"returnPressed" arguments:v7];

  v8 = [(TUIInteractiveBaseView *)self control];
  v9 = [v8 shouldShowCancelButton];

  if (v9)
  {
    [v4 resignFirstResponder];
  }
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  v4 = a3;
  v5 = [(TUIInteractiveBaseView *)self control];
  [v5 setText:&stru_264550];

  v9 = @"value";
  v6 = [(TUIInteractiveBaseView *)self control];
  v7 = [v6 text];
  v10 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [(TUISearchBarView *)self _callActionHandlerForTrigger:@"cancelPressed" arguments:v8];

  [v4 setShowsCancelButton:0 animated:1];
  [v4 resignFirstResponder];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = TUISearchBarView;
  [(TUIInteractiveBaseView *)&v4 prepareForReuse];
  [(TUISearchBarView *)self setViewStateToRestore:0];
  v3 = [(TUIInteractiveBaseView *)self control];
  [v3 setText:0];
}

@end