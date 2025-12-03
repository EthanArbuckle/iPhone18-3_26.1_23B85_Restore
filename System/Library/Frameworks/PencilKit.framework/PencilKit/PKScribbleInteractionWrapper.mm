@interface PKScribbleInteractionWrapper
- (BOOL)beginSuppressingPlaceholderForElement:(id)element;
- (BOOL)focusWillTransformElement:(id)element;
- (BOOL)isEditableElement:(id)element;
- (BOOL)isElementContainer;
- (BOOL)isEnabled;
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldBeginAtLocation:(CGPoint)location;
- (BOOL)shouldDisableInputAssistant;
- (BOOL)supportsShouldBegin;
- (CGRect)frameForElement:(id)element;
- (NSString)description;
- (UIEdgeInsets)hitToleranceInsetsWithDefaultInsets:(UIEdgeInsets)insets element:(id)element;
- (UIInteraction)interaction;
- (UIView)interactionView;
- (id)initWithScribbleInteraction:(id *)interaction;
- (void)didFinishWritingInElement:(id)element;
- (void)didTargetElement:(id)element forTouches:(id)touches event:(id)event;
- (void)endSuppressingPlaceholderForElement:(id)element;
- (void)focusElement:(id)element initialFocusSelectionReferencePoint:(CGPoint)point completion:(id)completion;
- (void)requestElementsInRect:(CGRect)rect completion:(id)completion;
- (void)willBeginWritingInElement:(id)element;
@end

@implementation PKScribbleInteractionWrapper

- (id)initWithScribbleInteraction:(id *)interaction
{
  v3 = a2;
  if (interaction)
  {
    v6.receiver = interaction;
    v6.super_class = PKScribbleInteractionWrapper;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    interaction = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 1, v3);
    }
  }

  return interaction;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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
  weakRetained = [v3 stringByAppendingFormat:@" %@", WeakRetained];

  return weakRetained;
}

- (UIInteraction)interaction
{
  WeakRetained = objc_loadWeakRetained(&self->_interaction);

  return WeakRetained;
}

- (UIView)interactionView
{
  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  view = [WeakRetained view];

  return view;
}

- (BOOL)supportsShouldBegin
{
  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  delegate = [WeakRetained delegate];
  v4 = objc_opt_respondsToSelector();

  return v4 & 1;
}

- (BOOL)isElementContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  elementSource = [WeakRetained elementSource];
  v4 = elementSource != 0;

  return v4;
}

- (BOOL)isEditableElement:(id)element
{
  elementCopy = element;
  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  delegate = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate _scribbleInteraction:WeakRetained isEditableElement:elementCopy];
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
  delegate = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate _scribbleInteractionIsEnabled:WeakRetained];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)didTargetElement:(id)element forTouches:(id)touches event:(id)event
{
  elementCopy = element;
  touchesCopy = touches;
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  delegate = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate _scribbleInteraction:WeakRetained didTargetElement:elementCopy forTouches:touchesCopy event:eventCopy];
  }
}

- (CGRect)frameForElement:(id)element
{
  elementCopy = element;
  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  elementSource = [WeakRetained elementSource];
  v7 = elementSource;
  if (elementSource)
  {
    [elementSource _scribbleInteraction:WeakRetained frameForElement:elementCopy];
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

- (BOOL)beginSuppressingPlaceholderForElement:(id)element
{
  elementCopy = element;
  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  delegate = [WeakRetained delegate];
  v7 = objc_opt_respondsToSelector();
  if (v7)
  {
    [delegate _scribbleInteraction:WeakRetained beginSuppressingPlaceholderForElement:elementCopy];
  }

  return v7 & 1;
}

- (void)endSuppressingPlaceholderForElement:(id)element
{
  elementCopy = element;
  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  delegate = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate _scribbleInteraction:WeakRetained endSuppressingPlaceholderForElement:elementCopy];
  }
}

- (BOOL)focusWillTransformElement:(id)element
{
  elementCopy = element;
  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  delegate = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate _scribbleInteraction:WeakRetained focusWillTransformElement:elementCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)shouldBeginAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  delegate = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate _scribbleInteraction:WeakRetained shouldBeginAtLocation:{x, y}];
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
  delegate = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate _pkScribbleInteractionShouldDisableInputAssistant:WeakRetained];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)willBeginWritingInElement:(id)element
{
  elementCopy = element;
  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  delegate = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate _scribbleInteraction:WeakRetained willBeginWritingInElement:elementCopy];
  }
}

- (void)didFinishWritingInElement:(id)element
{
  elementCopy = element;
  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  delegate = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate _scribbleInteraction:WeakRetained didFinishWritingInElement:elementCopy];
  }
}

- (void)requestElementsInRect:(CGRect)rect completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  elementSource = [WeakRetained elementSource];
  if (objc_opt_respondsToSelector())
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __65__PKScribbleInteractionWrapper_requestElementsInRect_completion___block_invoke;
    v12[3] = &unk_1E82D8308;
    v13 = WeakRetained;
    v14 = completionCopy;
    [elementSource _scribbleInteraction:v13 requestElementsInRect:v12 completion:{x, y, width, height}];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0], 0x7FFFFFFFFFFFFFFFLL);
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

- (void)focusElement:(id)element initialFocusSelectionReferencePoint:(CGPoint)point completion:(id)completion
{
  y = point.y;
  x = point.x;
  elementCopy = element;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  elementSource = [WeakRetained elementSource];
  if (objc_opt_respondsToSelector())
  {
    [elementSource _scribbleInteraction:WeakRetained focusElement:elementCopy initialFocusSelectionReferencePoint:completionCopy completion:{x, y}];
  }

  else if (objc_opt_respondsToSelector())
  {
    [elementSource _scribbleInteraction:WeakRetained focusElement:elementCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (UIEdgeInsets)hitToleranceInsetsWithDefaultInsets:(UIEdgeInsets)insets element:(id)element
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  elementCopy = element;
  WeakRetained = objc_loadWeakRetained(&self->_interaction);
  delegate = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate _scribbleInteraction:WeakRetained hitToleranceInsetsForElement:elementCopy defaultInsets:{top, left, bottom, right}];
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