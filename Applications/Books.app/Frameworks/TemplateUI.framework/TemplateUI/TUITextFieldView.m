@interface TUITextFieldView
+ (id)renderModelWithStates:(id)a3 actionHandler:(id)a4 viewState:(id)a5 enabled:(BOOL)a6 name:(id)a7 identifier:(id)a8 editingInsets:(UIEdgeInsets)a9 style:(id)a10 placeholderText:(id)a11 text:(id)a12 returnKeyType:(id)a13 keyboardAppearance:(unint64_t)a14;
- (BOOL)textFieldShouldReturn:(id)a3;
- (id)_textForControlUsingRenderModel:(id)a3;
- (id)accessibilityLabel;
- (id)currentState;
- (id)viewStateSave;
- (void)_callActionHandlerForTrigger:(id)a3 arguments:(id)a4;
- (void)_textFieldContentChanged;
- (void)_updateDynamicViewState;
- (void)configureWithModel:(id)a3 outsets:(UIEdgeInsets)a4;
- (void)dealloc;
- (void)loadControlIfNeeded;
- (void)prepareForReuse;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)viewStateRestore:(id)a3;
@end

@implementation TUITextFieldView

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

- (void)dealloc
{
  v3 = [(TUIInteractiveBaseView *)self control];
  [v3 setDelegate:0];
  [v3 removeTarget:self action:"_textFieldContentChanged" forControlEvents:0x20000];

  v4.receiver = self;
  v4.super_class = TUITextFieldView;
  [(TUITextFieldView *)&v4 dealloc];
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
    v3 = v5;
  }
}

- (void)configureWithModel:(id)a3 outsets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v9 = a3;
  v38.receiver = self;
  v38.super_class = TUITextFieldView;
  [(TUIInteractiveBaseView *)&v38 configureWithModel:v9 outsets:top, left, bottom, right];
  v10 = v9;
  v11 = v10;
  if (v10)
  {
    v12 = [v10 viewState];
    dynamicViewState = self->_dynamicViewState;
    self->_dynamicViewState = v12;

    [v11 editingInsets];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [(TUIInteractiveBaseView *)self control];
    [v22 setEditingInsets:{v15, v17, v19, v21}];

    v32 = _NSConcreteStackBlock;
    v33 = 3221225472;
    v34 = sub_188E70;
    v35 = &unk_25DCA0;
    v36 = self;
    v23 = v11;
    v37 = v23;
    [UIView performWithoutAnimation:&v32];
    [(TUITextFieldView *)self setTextInitialized:1, v32, v33, v34, v35, v36];
    v24 = [v23 enabled];
    v25 = [(TUIInteractiveBaseView *)self control];
    [v25 setEnabled:v24];

    [(TUIInteractiveBaseView *)self updateFromState];
    if ([v23 returnKeyType])
    {
      v26 = [(TUIInteractiveBaseView *)self control];
      [v26 setReturnKeyType:{objc_msgSend(v23, "returnKeyType")}];
    }

    v27 = TUIPlatformKeyboardAppearanceFromKeyboardAppearance([v23 keyboardAppearance]);
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

  [(TUITextFieldView *)self setViewStateToRestore:0];
}

- (id)_textForControlUsingRenderModel:(id)a3
{
  v4 = a3;
  if (!self->_textInitialized || (-[TUIInteractiveBaseView control](self, "control"), v5 = objc_claimAutoreleasedReturnValue(), [v5 text], v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v7 = [(_TUITextFieldViewState *)self->_viewStateToRestore text];
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

- (void)textFieldDidBeginEditing:(id)a3
{
  [(TUIInteractiveBaseView *)self updateFromState];
  v7 = @"value";
  v4 = [(TUIInteractiveBaseView *)self control];
  v5 = [v4 text];
  v8 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [(TUITextFieldView *)self _callActionHandlerForTrigger:@"beginInput" arguments:v6];

  [(TUITextFieldView *)self _updateDynamicViewState];
}

- (void)textFieldDidEndEditing:(id)a3
{
  [(TUIInteractiveBaseView *)self updateFromState];
  v7 = @"value";
  v4 = [(TUIInteractiveBaseView *)self control];
  v5 = [v4 text];
  v8 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [(TUITextFieldView *)self _callActionHandlerForTrigger:@"endInput" arguments:v6];

  [(TUITextFieldView *)self _updateDynamicViewState];
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v9 = @"value";
  v4 = a3;
  v5 = [(TUIInteractiveBaseView *)self control];
  v6 = [v5 text];
  v10 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [(TUITextFieldView *)self _callActionHandlerForTrigger:@"returnPressed" arguments:v7];

  [v4 resignFirstResponder];
  return 0;
}

- (void)_textFieldContentChanged
{
  [(TUIInteractiveBaseView *)self updateFromState];
  v6 = @"value";
  v3 = [(TUIInteractiveBaseView *)self control];
  v4 = [v3 text];
  v7 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [(TUITextFieldView *)self _callActionHandlerForTrigger:@"changedInput" arguments:v5];

  [(TUITextFieldView *)self _updateDynamicViewState];
}

- (id)viewStateSave
{
  v2 = [(TUIInteractiveBaseView *)self control];
  if (v2)
  {
    v3 = [_TUITextFieldViewState alloc];
    v4 = [v2 text];
    v5 = [(_TUITextFieldViewState *)v3 initWithText:v4];
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
    [(TUITextFieldView *)self setViewStateToRestore:v7];
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = TUITextFieldView;
  [(TUIInteractiveBaseView *)&v4 prepareForReuse];
  [(TUITextFieldView *)self setViewStateToRestore:0];
  v3 = [(TUIInteractiveBaseView *)self control];
  [v3 setText:0];

  [(TUITextFieldView *)self setTextInitialized:0];
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
    [v6 text];
  }

  else
  {
    [v6 placeholder];
  }
  v8 = ;

  return v8;
}

@end