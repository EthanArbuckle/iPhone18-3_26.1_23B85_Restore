@interface TUITextFieldView
+ (id)renderModelWithStates:(id)states actionHandler:(id)handler viewState:(id)state enabled:(BOOL)enabled name:(id)name identifier:(id)identifier editingInsets:(UIEdgeInsets)insets style:(id)self0 placeholderText:(id)self1 text:(id)self2 returnKeyType:(id)self3 keyboardAppearance:(unint64_t)self4;
- (BOOL)textFieldShouldReturn:(id)return;
- (id)_textForControlUsingRenderModel:(id)model;
- (id)accessibilityLabel;
- (id)currentState;
- (id)viewStateSave;
- (void)_callActionHandlerForTrigger:(id)trigger arguments:(id)arguments;
- (void)_textFieldContentChanged;
- (void)_updateDynamicViewState;
- (void)configureWithModel:(id)model outsets:(UIEdgeInsets)outsets;
- (void)dealloc;
- (void)loadControlIfNeeded;
- (void)prepareForReuse;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)viewStateRestore:(id)restore;
@end

@implementation TUITextFieldView

+ (id)renderModelWithStates:(id)states actionHandler:(id)handler viewState:(id)state enabled:(BOOL)enabled name:(id)name identifier:(id)identifier editingInsets:(UIEdgeInsets)insets style:(id)self0 placeholderText:(id)self1 text:(id)self2 returnKeyType:(id)self3 keyboardAppearance:(unint64_t)self4
{
  enabledCopy = enabled;
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  typeCopy = type;
  v33 = a12;
  textCopy = text;
  styleCopy = style;
  identifierCopy = identifier;
  nameCopy = name;
  stateCopy = state;
  handlerCopy = handler;
  statesCopy = states;
  v27 = [TUIRenderModelInteractiveText alloc];
  tuiReuseIdentifier = [self tuiReuseIdentifier];
  appearance = [(TUIRenderModelInteractiveText *)v27 initWithReuseIdentifier:tuiReuseIdentifier identifier:identifierCopy elementStates:statesCopy actionHandler:handlerCopy viewState:stateCopy enabled:enabledCopy name:top editingInsets:left style:bottom placeholderText:right text:nameCopy returnKeyType:styleCopy keyboardAppearance:textCopy, v33, typeCopy, appearance];

  return appearance;
}

- (void)dealloc
{
  control = [(TUIInteractiveBaseView *)self control];
  [control setDelegate:0];
  [control removeTarget:self action:"_textFieldContentChanged" forControlEvents:0x20000];

  v4.receiver = self;
  v4.super_class = TUITextFieldView;
  [(TUITextFieldView *)&v4 dealloc];
}

- (id)currentState
{
  v3 = @"default";
  control = [(TUIInteractiveBaseView *)self control];
  isEditing = [control isEditing];
  text = [control text];
  v7 = [text length];

  if (v7)
  {
    v8 = @"hasValue";

    if ((isEditing & 1) == 0)
    {
      goto LABEL_8;
    }

    v9 = TUIElementStateEditingHasValue;
    goto LABEL_6;
  }

  if (isEditing)
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
    v4 = [TUIUIKitTextField alloc];
    [(TUITextFieldView *)self bounds];
    v5 = [(TUIUIKitTextField *)v4 initWithFrame:?];
    [(TUIUIKitTextField *)v5 setDelegate:self];
    [(TUIUIKitTextField *)v5 setEnabled:1];
    [(TUIUIKitTextField *)v5 setText:0];
    [(TUIUIKitTextField *)v5 setAutoresizingMask:18];
    [(TUIUIKitTextField *)v5 addTarget:self action:"_textFieldContentChanged" forControlEvents:0x20000];
    [(TUITextFieldView *)self addSubview:v5];
    [(TUIInteractiveBaseView *)self setControl:v5];
    [(TUITextFieldView *)self setTextInitialized:0];
    control = v5;
  }
}

- (void)configureWithModel:(id)model outsets:(UIEdgeInsets)outsets
{
  right = outsets.right;
  bottom = outsets.bottom;
  left = outsets.left;
  top = outsets.top;
  modelCopy = model;
  v38.receiver = self;
  v38.super_class = TUITextFieldView;
  [(TUIInteractiveBaseView *)&v38 configureWithModel:modelCopy outsets:top, left, bottom, right];
  v10 = modelCopy;
  v11 = v10;
  if (v10)
  {
    viewState = [v10 viewState];
    dynamicViewState = self->_dynamicViewState;
    self->_dynamicViewState = viewState;

    [v11 editingInsets];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    control = [(TUIInteractiveBaseView *)self control];
    [control setEditingInsets:{v15, v17, v19, v21}];

    v32 = _NSConcreteStackBlock;
    v33 = 3221225472;
    v34 = sub_188E70;
    v35 = &unk_25DCA0;
    selfCopy = self;
    v23 = v11;
    v37 = v23;
    [UIView performWithoutAnimation:&v32];
    [(TUITextFieldView *)self setTextInitialized:1, v32, v33, v34, v35, selfCopy];
    enabled = [v23 enabled];
    control2 = [(TUIInteractiveBaseView *)self control];
    [control2 setEnabled:enabled];

    [(TUIInteractiveBaseView *)self updateFromState];
    if ([v23 returnKeyType])
    {
      control3 = [(TUIInteractiveBaseView *)self control];
      [control3 setReturnKeyType:{objc_msgSend(v23, "returnKeyType")}];
    }

    v27 = TUIPlatformKeyboardAppearanceFromKeyboardAppearance([v23 keyboardAppearance]);
    control4 = [(TUIInteractiveBaseView *)self control];
    keyboardAppearance = [control4 keyboardAppearance];

    if (v27 != keyboardAppearance)
    {
      control5 = [(TUIInteractiveBaseView *)self control];
      [control5 setKeyboardAppearance:v27];

      control6 = [(TUIInteractiveBaseView *)self control];
      [control6 reloadInputViewsWithoutReset];
    }
  }

  [(TUITextFieldView *)self setViewStateToRestore:0];
}

- (id)_textForControlUsingRenderModel:(id)model
{
  modelCopy = model;
  if (!self->_textInitialized || (-[TUIInteractiveBaseView control](self, "control"), v5 = objc_claimAutoreleasedReturnValue(), [v5 text], v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    text = [(_TUITextFieldViewState *)self->_viewStateToRestore text];
    if (!text)
    {
      text = [modelCopy text];
    }

    v6 = text;
  }

  return v6;
}

- (void)_updateDynamicViewState
{
  if (self->_dynamicViewState)
  {
    control = [(TUIInteractiveBaseView *)self control];

    if (control)
    {
      dynamicViewState = self->_dynamicViewState;
      v8 = @"value";
      control2 = [(TUIInteractiveBaseView *)self control];
      text = [control2 text];
      v9 = text;
      v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
      [(TUIMutableDynamicValue *)dynamicViewState updateWithValueIfChanged:v7];
    }
  }
}

- (void)_callActionHandlerForTrigger:(id)trigger arguments:(id)arguments
{
  argumentsCopy = arguments;
  triggerCopy = trigger;
  renderModel = [(TUIInteractiveBaseView *)self renderModel];
  actionHandler = [renderModel actionHandler];
  [actionHandler invoke:triggerCopy arguments:argumentsCopy];
}

- (void)textFieldDidBeginEditing:(id)editing
{
  [(TUIInteractiveBaseView *)self updateFromState];
  v7 = @"value";
  control = [(TUIInteractiveBaseView *)self control];
  text = [control text];
  v8 = text;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [(TUITextFieldView *)self _callActionHandlerForTrigger:@"beginInput" arguments:v6];

  [(TUITextFieldView *)self _updateDynamicViewState];
}

- (void)textFieldDidEndEditing:(id)editing
{
  [(TUIInteractiveBaseView *)self updateFromState];
  v7 = @"value";
  control = [(TUIInteractiveBaseView *)self control];
  text = [control text];
  v8 = text;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [(TUITextFieldView *)self _callActionHandlerForTrigger:@"endInput" arguments:v6];

  [(TUITextFieldView *)self _updateDynamicViewState];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  v9 = @"value";
  returnCopy = return;
  control = [(TUIInteractiveBaseView *)self control];
  text = [control text];
  v10 = text;
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [(TUITextFieldView *)self _callActionHandlerForTrigger:@"returnPressed" arguments:v7];

  [returnCopy resignFirstResponder];
  return 0;
}

- (void)_textFieldContentChanged
{
  [(TUIInteractiveBaseView *)self updateFromState];
  v6 = @"value";
  control = [(TUIInteractiveBaseView *)self control];
  text = [control text];
  v7 = text;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [(TUITextFieldView *)self _callActionHandlerForTrigger:@"changedInput" arguments:v5];

  [(TUITextFieldView *)self _updateDynamicViewState];
}

- (id)viewStateSave
{
  control = [(TUIInteractiveBaseView *)self control];
  if (control)
  {
    v3 = [_TUITextFieldViewState alloc];
    text = [control text];
    v5 = [(_TUITextFieldViewState *)v3 initWithText:text];
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
    [(TUITextFieldView *)self setViewStateToRestore:restoreCopy];
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = TUITextFieldView;
  [(TUIInteractiveBaseView *)&v4 prepareForReuse];
  [(TUITextFieldView *)self setViewStateToRestore:0];
  control = [(TUIInteractiveBaseView *)self control];
  [control setText:0];

  [(TUITextFieldView *)self setTextInitialized:0];
}

- (id)accessibilityLabel
{
  control = [(TUIInteractiveBaseView *)self control];
  text = [control text];
  v5 = [text length];
  control2 = [(TUIInteractiveBaseView *)self control];
  v7 = control2;
  if (v5)
  {
    [control2 text];
  }

  else
  {
    [control2 placeholder];
  }
  v8 = ;

  return v8;
}

@end