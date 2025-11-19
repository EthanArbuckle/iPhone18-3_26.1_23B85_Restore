@interface PKScribbleInteractionWrapper
- (BOOL)beginSuppressingPlaceholderForElement:(id)a3;
- (BOOL)focusWillTransformElement:(id)a3;
- (BOOL)isEditableElement:(id)a3;
- (BOOL)isElementContainer;
- (BOOL)isEnabled;
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldBeginAtLocation:(CGPoint)a3;
- (BOOL)shouldDisableInputAssistant;
- (BOOL)supportsShouldBegin;
- (CGRect)frameForElement:(id)a3;
- (NSString)description;
- (UIEdgeInsets)hitToleranceInsetsWithDefaultInsets:(UIEdgeInsets)a3 element:(id)a4;
- (UIInteraction)interaction;
- (UIView)interactionView;
- (id)initWithScribbleInteraction:(id *)a1;
- (void)didFinishWritingInElement:(id)a3;
- (void)didTargetElement:(id)a3 forTouches:(id)a4 event:(id)a5;
- (void)endSuppressingPlaceholderForElement:(id)a3;
- (void)focusElement:(id)a3 initialFocusSelectionReferencePoint:(CGPoint)a4 completion:(id)a5;
- (void)requestElementsInRect:(CGRect)a3 completion:(id)a4;
- (void)willBeginWritingInElement:(id)a3;
@end

@implementation PKScribbleInteractionWrapper

- (id)initWithScribbleInteraction:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v6.receiver = a1;
    v6.super_class = PKScribbleInteractionWrapper;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    a1 = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 1, v3);
    }
  }

  return a1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      WeakRetained = objc_loadWeakRetained(&self->_interaction);
      v7 = objc_loadWeakRetained(v5 + 1);

      v8 = WeakRetained == v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = PKScribbleInteractionWrapper;
  v3 = [(PKScribbleInteractionWrapper *)&v7 description];
  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  v5 = [v3 stringByAppendingFormat:@" %@", WeakRetained];

  return v5;
}

- (UIInteraction)interaction
{
  WeakRetained = objc_loadWeakRetained(&self->_interaction);

  return WeakRetained;
}

- (UIView)interactionView
{
  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  v3 = [WeakRetained view];

  return v3;
}

- (BOOL)supportsShouldBegin
{
  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  v3 = [WeakRetained delegate];
  v4 = objc_opt_respondsToSelector();

  return v4 & 1;
}

- (BOOL)isElementContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  v3 = [WeakRetained elementSource];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isEditableElement:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  v6 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 _scribbleInteraction:WeakRetained isEditableElement:v4];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)isEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  v3 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 _scribbleInteractionIsEnabled:WeakRetained];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)didTargetElement:(id)a3 forTouches:(id)a4 event:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  v11 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [v11 _scribbleInteraction:WeakRetained didTargetElement:v12 forTouches:v8 event:v9];
  }
}

- (CGRect)frameForElement:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  v6 = [WeakRetained elementSource];
  v7 = v6;
  if (v6)
  {
    [v6 _scribbleInteraction:WeakRetained frameForElement:v4];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v9 = *MEMORY[0x1E695F050];
    v11 = *(MEMORY[0x1E695F050] + 8);
    v13 = *(MEMORY[0x1E695F050] + 16);
    v15 = *(MEMORY[0x1E695F050] + 24);
  }

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (BOOL)beginSuppressingPlaceholderForElement:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  v6 = [WeakRetained delegate];
  v7 = objc_opt_respondsToSelector();
  if (v7)
  {
    [v6 _scribbleInteraction:WeakRetained beginSuppressingPlaceholderForElement:v4];
  }

  return v7 & 1;
}

- (void)endSuppressingPlaceholderForElement:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  v5 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 _scribbleInteraction:WeakRetained endSuppressingPlaceholderForElement:v6];
  }
}

- (BOOL)focusWillTransformElement:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  v6 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 _scribbleInteraction:WeakRetained focusWillTransformElement:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)shouldBeginAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  v6 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 _scribbleInteraction:WeakRetained shouldBeginAtLocation:{x, y}];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)shouldDisableInputAssistant
{
  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  v3 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 _pkScribbleInteractionShouldDisableInputAssistant:WeakRetained];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)willBeginWritingInElement:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  v5 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 _scribbleInteraction:WeakRetained willBeginWritingInElement:v6];
  }
}

- (void)didFinishWritingInElement:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  v5 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 _scribbleInteraction:WeakRetained didFinishWritingInElement:v6];
  }
}

- (void)requestElementsInRect:(CGRect)a3 completion:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  v11 = [WeakRetained elementSource];
  if (objc_opt_respondsToSelector())
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __65__PKScribbleInteractionWrapper_requestElementsInRect_completion___block_invoke;
    v12[3] = &unk_1E82D8308;
    v13 = WeakRetained;
    v14 = v9;
    [v11 _scribbleInteraction:v13 requestElementsInRect:v12 completion:{x, y, width, height}];
  }

  else if (v9)
  {
    (*(v9 + 2))(v9, MEMORY[0x1E695E0F0], 0x7FFFFFFFFFFFFFFFLL);
  }
}

void __65__PKScribbleInteractionWrapper_requestElementsInRect_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (v6 && *(v6 + 24) == 1)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = +[PKTextInputSettings sharedSettings];
    [v7 debugElementFinderArtificialDelay];
    v9 = v8;

    v10 = dispatch_time(0, (v9 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__PKScribbleInteractionWrapper_requestElementsInRect_completion___block_invoke_2;
    block[3] = &unk_1E82D82E0;
    v13 = *(a1 + 40);
    v12 = v5;
    v14 = a3;
    dispatch_after(v10, MEMORY[0x1E69E96A0], block);
  }
}

- (void)focusElement:(id)a3 initialFocusSelectionReferencePoint:(CGPoint)a4 completion:(id)a5
{
  y = a4.y;
  x = a4.x;
  v12 = a3;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  v11 = [WeakRetained elementSource];
  if (objc_opt_respondsToSelector())
  {
    [v11 _scribbleInteraction:WeakRetained focusElement:v12 initialFocusSelectionReferencePoint:v9 completion:{x, y}];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v11 _scribbleInteraction:WeakRetained focusElement:v12 completion:v9];
  }

  else if (v9)
  {
    v9[2](v9, 0);
  }
}

- (UIEdgeInsets)hitToleranceInsetsWithDefaultInsets:(UIEdgeInsets)a3 element:(id)a4
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  v11 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [v11 _scribbleInteraction:WeakRetained hitToleranceInsetsForElement:v9 defaultInsets:{top, left, bottom, right}];
    top = v12;
    left = v13;
    bottom = v14;
    right = v15;
  }

  v16 = top;
  v17 = left;
  v18 = bottom;
  v19 = right;
  result.right = v19;
  result.bottom = v18;
  result.left = v17;
  result.top = v16;
  return result;
}

@end