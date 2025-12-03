@interface TUITextView
+ (id)renderModelWithStates:(id)states actionHandler:(id)handler viewState:(id)state enabled:(BOOL)enabled name:(id)name identifier:(id)identifier editingInsets:(UIEdgeInsets)insets style:(id)self0 placeholderText:(id)self1 text:(id)self2 returnKeyType:(id)self3 keyboardAppearance:(unint64_t)self4;
- (TUITextView)initWithFrame:(CGRect)frame;
- (id)_textForControlUsingRenderModel:(id)model;
- (id)accessibilityLabel;
- (id)currentState;
- (id)viewStateSave;
- (void)_callActionHandlerForTrigger:(id)trigger arguments:(id)arguments;
- (void)_textViewContentChanged;
- (void)_textViewDidBeginEditing;
- (void)_textViewEndBeginEditing;
- (void)_updateDynamicViewState;
- (void)configureWithModel:(id)model outsets:(UIEdgeInsets)outsets;
- (void)dealloc;
- (void)loadControlIfNeeded;
- (void)prepareForReuse;
- (void)viewStateRestore:(id)restore;
@end

@implementation TUITextView

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

- (TUITextView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TUITextView;
  v3 = [(TUITextView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TUITextView *)v3 setClipsToBounds:1];
  }

  return v4;
}

- (void)dealloc
{
  control = [(TUIInteractiveBaseView *)self control];
  [control setDelegate:0];

  v4.receiver = self;
  v4.super_class = TUITextView;
  [(TUITextView *)&v4 dealloc];
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
    v4 = [TUIUIKitTextView alloc];
    [(TUITextView *)self bounds];
    v6 = [(TUIUIKitTextView *)v4 initWithFrame:?];
    v5 = +[UIColor clearColor];
    [(TUIUIKitTextView *)v6 setBackgroundColor:v5];

    [(TUIUIKitTextView *)v6 setDelegate:self];
    [(TUIUIKitTextView *)v6 setAutoresizingMask:18];
    [(TUITextView *)self addSubview:v6];
    [(TUIInteractiveBaseView *)self setControl:v6];
    [(TUITextView *)self setViewStateToRestore:0];
    [(TUITextView *)self setTextInitialized:0];
    control = v6;
  }
}

- (void)configureWithModel:(id)model outsets:(UIEdgeInsets)outsets
{
  right = outsets.right;
  bottom = outsets.bottom;
  left = outsets.left;
  top = outsets.top;
  modelCopy = model;
  v26.receiver = self;
  v26.super_class = TUITextView;
  [(TUIInteractiveBaseView *)&v26 configureWithModel:modelCopy outsets:top, left, bottom, right];
  v10 = modelCopy;
  v11 = v10;
  if (v10)
  {
    viewState = [v10 viewState];
    dynamicViewState = self->_dynamicViewState;
    self->_dynamicViewState = viewState;

    placeholderText = [v11 placeholderText];
    control = [(TUIInteractiveBaseView *)self control];
    [control setAttributedPlaceholder:placeholderText];

    if ([v11 returnKeyType])
    {
      control2 = [(TUIInteractiveBaseView *)self control];
      [control2 setReturnKeyType:{objc_msgSend(v11, "returnKeyType")}];
    }

    v17 = TUIPlatformKeyboardAppearanceFromKeyboardAppearance([v11 keyboardAppearance]);
    control3 = [(TUIInteractiveBaseView *)self control];
    keyboardAppearance = [control3 keyboardAppearance];

    if (v17 != keyboardAppearance)
    {
      control4 = [(TUIInteractiveBaseView *)self control];
      [control4 setKeyboardAppearance:v17];

      control5 = [(TUIInteractiveBaseView *)self control];
      [control5 reloadInputViewsWithoutReset];
    }

    control6 = [(TUIInteractiveBaseView *)self control];
    v23 = [(TUITextView *)self _textForControlUsingRenderModel:v11];
    [control6 setText:v23];

    [(TUITextView *)self setTextInitialized:1];
    enabled = [v11 enabled];
    control7 = [(TUIInteractiveBaseView *)self control];
    [control7 setEnabled:enabled];

    [(TUIInteractiveBaseView *)self updateFromState];
  }

  [(TUITextView *)self setViewStateToRestore:0];
}

- (id)_textForControlUsingRenderModel:(id)model
{
  modelCopy = model;
  if (!self->_textInitialized || (-[TUIInteractiveBaseView control](self, "control"), v5 = objc_claimAutoreleasedReturnValue(), [v5 text], v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    text = [(_TUITextViewState *)self->_viewStateToRestore text];
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

- (void)_textViewDidBeginEditing
{
  [(TUIInteractiveBaseView *)self updateFromState];
  v6 = @"value";
  control = [(TUIInteractiveBaseView *)self control];
  text = [control text];
  v7 = text;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [(TUITextView *)self _callActionHandlerForTrigger:@"beginInput" arguments:v5];
}

- (void)_textViewEndBeginEditing
{
  [(TUIInteractiveBaseView *)self updateFromState];
  v6 = @"value";
  control = [(TUIInteractiveBaseView *)self control];
  text = [control text];
  v7 = text;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [(TUITextView *)self _callActionHandlerForTrigger:@"endInput" arguments:v5];
}

- (void)_textViewContentChanged
{
  [(TUIInteractiveBaseView *)self updateFromState];
  v6 = @"value";
  control = [(TUIInteractiveBaseView *)self control];
  text = [control text];
  v7 = text;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [(TUITextView *)self _callActionHandlerForTrigger:@"changedInput" arguments:v5];

  [(TUITextView *)self _updateDynamicViewState];
}

- (id)viewStateSave
{
  control = [(TUIInteractiveBaseView *)self control];
  if (control)
  {
    v3 = [_TUITextViewState alloc];
    text = [control text];
    v5 = [(_TUITextViewState *)v3 initWithText:text];
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
    [(TUITextView *)self setViewStateToRestore:restoreCopy];
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = TUITextView;
  [(TUIInteractiveBaseView *)&v4 prepareForReuse];
  [(TUITextView *)self setViewStateToRestore:0];
  control = [(TUIInteractiveBaseView *)self control];
  [control setText:0];

  [(TUITextView *)self setTextInitialized:0];
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
    text2 = [control2 text];
  }

  else
  {
    attributedPlaceholder = [control2 attributedPlaceholder];
    text2 = [attributedPlaceholder string];
  }

  return text2;
}

@end