@interface TUISearchBarView
+ (id)renderModelWithStates:(id)states actionHandler:(id)handler viewState:(id)state enabled:(BOOL)enabled name:(id)name identifier:(id)identifier editingInsets:(UIEdgeInsets)insets placeholderText:(id)self0 style:(id)self1 text:(id)self2 returnKeyType:(id)self3 keyboardAppearance:(unint64_t)self4 cancelText:(id)self5 showCancel:(BOOL)self6;
- (id)_textForControlUsingRenderModel:(id)model;
- (id)currentState;
- (id)viewStateSave;
- (void)_callActionHandlerForTrigger:(id)trigger arguments:(id)arguments;
- (void)_searchBarDidSubmitSearch:(id)search;
- (void)_updateDynamicViewState;
- (void)configureWithModel:(id)model outsets:(UIEdgeInsets)outsets;
- (void)dealloc;
- (void)loadControlIfNeeded;
- (void)prepareForReuse;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)searchBarTextDidBeginEditing:(id)editing;
- (void)searchBarTextDidEndEditing:(id)editing;
- (void)viewStateRestore:(id)restore;
@end

@implementation TUISearchBarView

+ (id)renderModelWithStates:(id)states actionHandler:(id)handler viewState:(id)state enabled:(BOOL)enabled name:(id)name identifier:(id)identifier editingInsets:(UIEdgeInsets)insets placeholderText:(id)self0 style:(id)self1 text:(id)self2 returnKeyType:(id)self3 keyboardAppearance:(unint64_t)self4 cancelText:(id)self5 showCancel:(BOOL)self6
{
  enabledCopy = enabled;
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  cancelTextCopy = cancelText;
  typeCopy = type;
  v23 = a12;
  styleCopy = style;
  textCopy = text;
  identifierCopy = identifier;
  nameCopy = name;
  stateCopy = state;
  handlerCopy = handler;
  statesCopy = states;
  v28 = [TUIRenderModelInteractiveText alloc];
  tuiReuseIdentifier = [self tuiReuseIdentifier];
  LOBYTE(v31) = cancel;
  v41 = [(TUIRenderModelInteractiveText *)v28 initWithReuseIdentifier:tuiReuseIdentifier identifier:identifierCopy elementStates:statesCopy actionHandler:handlerCopy viewState:stateCopy enabled:enabledCopy name:top editingInsets:left style:bottom placeholderText:right text:nameCopy returnKeyType:styleCopy keyboardAppearance:textCopy cancelText:v23 showCancel:typeCopy, appearance, cancelTextCopy, v31];

  return v41;
}

- (void)dealloc
{
  control = [(TUIInteractiveBaseView *)self control];
  [control setDelegate:0];

  v4.receiver = self;
  v4.super_class = TUISearchBarView;
  [(TUISearchBarView *)&v4 dealloc];
}

- (id)currentState
{
  v3 = @"default";
  control = [(TUIInteractiveBaseView *)self control];
  isFocused = [control isFocused];
  text = [control text];
  v7 = [text length];

  if (v7)
  {
    v8 = @"hasValue";

    if ((isFocused & 1) == 0)
    {
      goto LABEL_8;
    }

    v9 = TUIElementStateEditingHasValue;
    goto LABEL_6;
  }

  if (isFocused)
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
  control = [(TUIInteractiveBaseView *)self control];
  if (!control)
  {
    v4 = [TUIUIKitSearchBar alloc];
    [(TUISearchBarView *)self bounds];
    v7 = [(TUIUIKitSearchBar *)v4 initWithFrame:?];
    viewStateToRestore = [(TUISearchBarView *)self viewStateToRestore];
    text = [viewStateToRestore text];
    [(TUIUIKitSearchBar *)v7 setText:text];

    [(TUIUIKitSearchBar *)v7 setDelegate:self];
    [(TUIUIKitSearchBar *)v7 setSearchBarStyle:2];
    [(TUIUIKitSearchBar *)v7 _setAutoDisableCancelButton:0];
    [(TUISearchBarView *)self addSubview:v7];
    [(TUIInteractiveBaseView *)self setControl:v7];
    [(TUISearchBarView *)self setViewStateToRestore:0];
    control = v7;
  }
}

- (void)configureWithModel:(id)model outsets:(UIEdgeInsets)outsets
{
  right = outsets.right;
  bottom = outsets.bottom;
  left = outsets.left;
  top = outsets.top;
  modelCopy = model;
  v32.receiver = self;
  v32.super_class = TUISearchBarView;
  [(TUIInteractiveBaseView *)&v32 configureWithModel:modelCopy outsets:top, left, bottom, right];
  [(TUISearchBarView *)self setViewStateToRestore:0];
  v10 = modelCopy;
  v11 = v10;
  if (v10)
  {
    viewState = [v10 viewState];
    dynamicViewState = self->_dynamicViewState;
    self->_dynamicViewState = viewState;

    control = [(TUIInteractiveBaseView *)self control];
    v15 = [(TUISearchBarView *)self _textForControlUsingRenderModel:v11];
    [control setText:v15];

    if ([v11 returnKeyType])
    {
      control2 = [(TUIInteractiveBaseView *)self control];
      [control2 setReturnKeyType:{objc_msgSend(v11, "returnKeyType")}];
    }

    cancelText = [v11 cancelText];

    if (cancelText)
    {
      control3 = [(TUIInteractiveBaseView *)self control];
      cancelText2 = [v11 cancelText];
      [control3 setCancelText:cancelText2];
    }

    enabled = [v11 enabled];
    control4 = [(TUIInteractiveBaseView *)self control];
    [control4 setEnabled:enabled];

    control5 = [(TUIInteractiveBaseView *)self control];
    [control5 setShouldShowCancelButton:{objc_msgSend(v11, "showCancel")}];

    placeholderText = [v11 placeholderText];

    if (placeholderText)
    {
      control6 = [(TUIInteractiveBaseView *)self control];
      searchField = [control6 searchField];
      placeholderText2 = [v11 placeholderText];
      [searchField setAttributedPlaceholder:placeholderText2];
    }

    v27 = TUIPlatformKeyboardAppearanceFromKeyboardAppearance([v11 keyboardAppearance]);
    control7 = [(TUIInteractiveBaseView *)self control];
    keyboardAppearance = [control7 keyboardAppearance];

    if (v27 != keyboardAppearance)
    {
      control8 = [(TUIInteractiveBaseView *)self control];
      [control8 setKeyboardAppearance:v27];

      control9 = [(TUIInteractiveBaseView *)self control];
      [control9 reloadInputViewsWithoutReset];
    }
  }
}

- (void)_updateDynamicViewState
{
  if (self->_dynamicViewState)
  {
    control = [(TUIInteractiveBaseView *)self control];

    if (control)
    {
      dynamicViewState = self->_dynamicViewState;
      v9 = @"value";
      control2 = [(TUIInteractiveBaseView *)self control];
      searchField = [control2 searchField];
      text = [searchField text];
      v10 = text;
      v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
      [(TUIMutableDynamicValue *)dynamicViewState updateWithValueIfChanged:v8];
    }
  }
}

- (id)viewStateSave
{
  control = [(TUIInteractiveBaseView *)self control];
  if (control)
  {
    v3 = [_TUISearchBarViewState alloc];
    text = [control text];
    v5 = [(_TUISearchBarViewState *)v3 initWithText:text];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)viewStateRestore:(id)restore
{
  restoreCopy = restore;
  control = [(TUIInteractiveBaseView *)self control];

  if (restoreCopy && control)
  {
    text = [restoreCopy text];

    control2 = [(TUIInteractiveBaseView *)self control];
    [control2 setText:text];

    [(TUIInteractiveBaseView *)self updateFromState];
  }

  else
  {
    [(TUISearchBarView *)self setViewStateToRestore:restoreCopy];
  }
}

- (id)_textForControlUsingRenderModel:(id)model
{
  modelCopy = model;
  control = [(TUIInteractiveBaseView *)self control];
  text = [control text];

  if (!text)
  {
    text2 = [(_TUISearchBarViewState *)self->_viewStateToRestore text];
    if (!text2)
    {
      text2 = [modelCopy text];
    }

    text = text2;
  }

  return text;
}

- (void)_callActionHandlerForTrigger:(id)trigger arguments:(id)arguments
{
  argumentsCopy = arguments;
  triggerCopy = trigger;
  renderModel = [(TUIInteractiveBaseView *)self renderModel];
  actionHandler = [renderModel actionHandler];
  [actionHandler invoke:triggerCopy arguments:argumentsCopy];
}

- (void)searchBarTextDidBeginEditing:(id)editing
{
  editingCopy = editing;
  [(TUIInteractiveBaseView *)self updateFromState];
  v9 = @"value";
  control = [(TUIInteractiveBaseView *)self control];
  text = [control text];
  v10 = text;
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [(TUISearchBarView *)self _callActionHandlerForTrigger:@"beginInput" arguments:v7];

  control2 = [(TUIInteractiveBaseView *)self control];
  LODWORD(control) = [control2 shouldShowCancelButton];

  if (control)
  {
    [editingCopy setShowsCancelButton:1 animated:1];
    [editingCopy becomeFirstResponder];
  }

  [(TUISearchBarView *)self _updateDynamicViewState];
}

- (void)searchBarTextDidEndEditing:(id)editing
{
  editingCopy = editing;
  [(TUIInteractiveBaseView *)self updateFromState];
  v11 = @"value";
  control = [(TUIInteractiveBaseView *)self control];
  text = [control text];
  v12 = text;
  v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [(TUISearchBarView *)self _callActionHandlerForTrigger:@"endInput" arguments:v7];

  control2 = [(TUIInteractiveBaseView *)self control];
  text2 = [control2 text];
  v10 = [text2 length];

  if (!v10)
  {
    [editingCopy setShowsCancelButton:0 animated:1];
  }

  [(TUISearchBarView *)self _updateDynamicViewState];
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  [(TUIInteractiveBaseView *)self updateFromState:bar];
  v8 = @"value";
  control = [(TUIInteractiveBaseView *)self control];
  text = [control text];
  v9 = text;
  v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [(TUISearchBarView *)self _callActionHandlerForTrigger:@"changedInput" arguments:v7];

  [(TUISearchBarView *)self _updateDynamicViewState];
}

- (void)_searchBarDidSubmitSearch:(id)search
{
  searchCopy = search;
  v10 = @"value";
  control = [(TUIInteractiveBaseView *)self control];
  text = [control text];
  v11 = text;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [(TUISearchBarView *)self _callActionHandlerForTrigger:@"returnPressed" arguments:v7];

  control2 = [(TUIInteractiveBaseView *)self control];
  shouldShowCancelButton = [control2 shouldShowCancelButton];

  if (shouldShowCancelButton)
  {
    [searchCopy resignFirstResponder];
  }
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  control = [(TUIInteractiveBaseView *)self control];
  [control setText:&stru_264550];

  v9 = @"value";
  control2 = [(TUIInteractiveBaseView *)self control];
  text = [control2 text];
  v10 = text;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [(TUISearchBarView *)self _callActionHandlerForTrigger:@"cancelPressed" arguments:v8];

  [clickedCopy setShowsCancelButton:0 animated:1];
  [clickedCopy resignFirstResponder];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = TUISearchBarView;
  [(TUIInteractiveBaseView *)&v4 prepareForReuse];
  [(TUISearchBarView *)self setViewStateToRestore:0];
  control = [(TUIInteractiveBaseView *)self control];
  [control setText:0];
}

@end