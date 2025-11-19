@interface TUITextView
+ (id)renderModelWithStates:(id)a3 actionHandler:(id)a4 viewState:(id)a5 enabled:(BOOL)a6 name:(id)a7 identifier:(id)a8 editingInsets:(UIEdgeInsets)a9 style:(id)a10 placeholderText:(id)a11 text:(id)a12 returnKeyType:(id)a13 keyboardAppearance:(unint64_t)a14;
- (TUITextView)initWithFrame:(CGRect)a3;
- (id)_textForControlUsingRenderModel:(id)a3;
- (id)accessibilityLabel;
- (id)currentState;
- (id)viewStateSave;
- (void)_callActionHandlerForTrigger:(id)a3 arguments:(id)a4;
- (void)_textViewContentChanged;
- (void)_textViewDidBeginEditing;
- (void)_textViewEndBeginEditing;
- (void)_updateDynamicViewState;
- (void)configureWithModel:(id)a3 outsets:(UIEdgeInsets)a4;
- (void)dealloc;
- (void)loadControlIfNeeded;
- (void)prepareForReuse;
- (void)viewStateRestore:(id)a3;
@end

@implementation TUITextView

+ (id)renderModelWithStates:(id)a3 actionHandler:(id)a4 viewState:(id)a5 enabled:(BOOL)a6 name:(id)a7 identifier:(id)a8 editingInsets:(UIEdgeInsets)a9 style:(id)a10 placeholderText:(id)a11 text:(id)a12 returnKeyType:(id)a13 keyboardAppearance:(unint64_t)a14
{
  v37 = a6;
  right = a9.right;
  bottom = a9.bottom;
  left = a9.left;
  top = a9.top;
  v34 = a13;
  v33 = a12;
  v22 = a11;
  v23 = a10;
  v32 = a8;
  v31 = a7;
  v24 = a5;
  v25 = a4;
  v26 = a3;
  v27 = [TUIRenderModelInteractiveText alloc];
  v28 = [a1 tuiReuseIdentifier];
  v29 = [(TUIRenderModelInteractiveText *)v27 initWithReuseIdentifier:v28 identifier:v32 elementStates:v26 actionHandler:v25 viewState:v24 enabled:v37 name:top editingInsets:left style:bottom placeholderText:right text:v31 returnKeyType:v23 keyboardAppearance:v22, v33, v34, a14];

  return v29;
}

- (TUITextView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = TUITextView;
  v3 = [(TUITextView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(TUITextView *)v3 setClipsToBounds:1];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [(TUIInteractiveBaseView *)self control];
  [v3 setDelegate:0];

  v4.receiver = self;
  v4.super_class = TUITextView;
  [(TUITextView *)&v4 dealloc];
}

- (id)currentState
{
  v3 = @"default";
  v4 = [(TUIInteractiveBaseView *)self control];
  v5 = [v4 isEditing];
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
    v3 = v6;
  }
}

- (void)configureWithModel:(id)a3 outsets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v9 = a3;
  v26.receiver = self;
  v26.super_class = TUITextView;
  [(TUIInteractiveBaseView *)&v26 configureWithModel:v9 outsets:top, left, bottom, right];
  v10 = v9;
  v11 = v10;
  if (v10)
  {
    v12 = [v10 viewState];
    dynamicViewState = self->_dynamicViewState;
    self->_dynamicViewState = v12;

    v14 = [v11 placeholderText];
    v15 = [(TUIInteractiveBaseView *)self control];
    [v15 setAttributedPlaceholder:v14];

    if ([v11 returnKeyType])
    {
      v16 = [(TUIInteractiveBaseView *)self control];
      [v16 setReturnKeyType:{objc_msgSend(v11, "returnKeyType")}];
    }

    v17 = TUIPlatformKeyboardAppearanceFromKeyboardAppearance([v11 keyboardAppearance]);
    v18 = [(TUIInteractiveBaseView *)self control];
    v19 = [v18 keyboardAppearance];

    if (v17 != v19)
    {
      v20 = [(TUIInteractiveBaseView *)self control];
      [v20 setKeyboardAppearance:v17];

      v21 = [(TUIInteractiveBaseView *)self control];
      [v21 reloadInputViewsWithoutReset];
    }

    v22 = [(TUIInteractiveBaseView *)self control];
    v23 = [(TUITextView *)self _textForControlUsingRenderModel:v11];
    [v22 setText:v23];

    [(TUITextView *)self setTextInitialized:1];
    v24 = [v11 enabled];
    v25 = [(TUIInteractiveBaseView *)self control];
    [v25 setEnabled:v24];

    [(TUIInteractiveBaseView *)self updateFromState];
  }

  [(TUITextView *)self setViewStateToRestore:0];
}

- (id)_textForControlUsingRenderModel:(id)a3
{
  v4 = a3;
  if (!self->_textInitialized || (-[TUIInteractiveBaseView control](self, "control"), v5 = objc_claimAutoreleasedReturnValue(), [v5 text], v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v7 = [(_TUITextViewState *)self->_viewStateToRestore text];
    if (!v7)
    {
      v7 = [v4 text];
    }

    v6 = v7;
  }

  return v6;
}

- (void)_updateDynamicViewState
{
  if (self->_dynamicViewState)
  {
    v3 = [(TUIInteractiveBaseView *)self control];

    if (v3)
    {
      dynamicViewState = self->_dynamicViewState;
      v8 = @"value";
      v5 = [(TUIInteractiveBaseView *)self control];
      v6 = [v5 text];
      v9 = v6;
      v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
      [(TUIMutableDynamicValue *)dynamicViewState updateWithValueIfChanged:v7];
    }
  }
}

- (void)_callActionHandlerForTrigger:(id)a3 arguments:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(TUIInteractiveBaseView *)self renderModel];
  v8 = [v9 actionHandler];
  [v8 invoke:v7 arguments:v6];
}

- (void)_textViewDidBeginEditing
{
  [(TUIInteractiveBaseView *)self updateFromState];
  v6 = @"value";
  v3 = [(TUIInteractiveBaseView *)self control];
  v4 = [v3 text];
  v7 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [(TUITextView *)self _callActionHandlerForTrigger:@"beginInput" arguments:v5];
}

- (void)_textViewEndBeginEditing
{
  [(TUIInteractiveBaseView *)self updateFromState];
  v6 = @"value";
  v3 = [(TUIInteractiveBaseView *)self control];
  v4 = [v3 text];
  v7 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [(TUITextView *)self _callActionHandlerForTrigger:@"endInput" arguments:v5];
}

- (void)_textViewContentChanged
{
  [(TUIInteractiveBaseView *)self updateFromState];
  v6 = @"value";
  v3 = [(TUIInteractiveBaseView *)self control];
  v4 = [v3 text];
  v7 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [(TUITextView *)self _callActionHandlerForTrigger:@"changedInput" arguments:v5];

  [(TUITextView *)self _updateDynamicViewState];
}

- (id)viewStateSave
{
  v2 = [(TUIInteractiveBaseView *)self control];
  if (v2)
  {
    v3 = [_TUITextViewState alloc];
    v4 = [v2 text];
    v5 = [(_TUITextViewState *)v3 initWithText:v4];
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
    [(TUITextView *)self setViewStateToRestore:v7];
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = TUITextView;
  [(TUIInteractiveBaseView *)&v4 prepareForReuse];
  [(TUITextView *)self setViewStateToRestore:0];
  v3 = [(TUIInteractiveBaseView *)self control];
  [v3 setText:0];

  [(TUITextView *)self setTextInitialized:0];
}

- (id)accessibilityLabel
{
  v3 = [(TUIInteractiveBaseView *)self control];
  v4 = [v3 text];
  v5 = [v4 length];
  v6 = [(TUIInteractiveBaseView *)self control];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 text];
  }

  else
  {
    v9 = [v6 attributedPlaceholder];
    v8 = [v9 string];
  }

  return v8;
}

@end