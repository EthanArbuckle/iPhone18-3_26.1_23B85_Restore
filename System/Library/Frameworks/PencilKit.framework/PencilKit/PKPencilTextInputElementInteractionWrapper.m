@interface PKPencilTextInputElementInteractionWrapper
- (BOOL)beginSuppressingPlaceholderForElement:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGRect)frameForElement:(id)a3;
- (NSString)description;
- (PKPencilTextInputElementInteractionWrapper)initWithElementInteraction:(id)a3;
- (UIInteraction)interaction;
- (UIView)interactionView;
- (void)endSuppressingPlaceholderForElement:(id)a3;
- (void)focusElement:(id)a3 initialFocusSelectionReferencePoint:(CGPoint)a4 completion:(id)a5;
- (void)requestElementsInRect:(CGRect)a3 completion:(id)a4;
@end

@implementation PKPencilTextInputElementInteractionWrapper

- (PKPencilTextInputElementInteractionWrapper)initWithElementInteraction:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKPencilTextInputElementInteractionWrapper;
  v5 = [(PKPencilTextInputElementInteractionWrapper *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_elementInteraction, v4);
    v7 = [MEMORY[0x1E695DF90] dictionary];
    knownElementsByID = v6->_knownElementsByID;
    v6->_knownElementsByID = v7;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    WeakRetained = objc_loadWeakRetained(&self->_elementInteraction);
    v7 = objc_loadWeakRetained(v5 + 1);

    v8 = WeakRetained == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = PKPencilTextInputElementInteractionWrapper;
  v3 = [(PKPencilTextInputElementInteractionWrapper *)&v7 description];
  WeakRetained = objc_loadWeakRetained(&self->_elementInteraction);
  v5 = [v3 stringByAppendingFormat:@" %@", WeakRetained];

  return v5;
}

- (UIInteraction)interaction
{
  WeakRetained = objc_loadWeakRetained(&self->_elementInteraction);

  return WeakRetained;
}

- (UIView)interactionView
{
  WeakRetained = objc_loadWeakRetained(&self->_elementInteraction);
  v3 = [WeakRetained view];

  return v3;
}

- (CGRect)frameForElement:(id)a3
{
  v3 = *MEMORY[0x1E695F050];
  v4 = *(MEMORY[0x1E695F050] + 8);
  v5 = *(MEMORY[0x1E695F050] + 16);
  v6 = *(MEMORY[0x1E695F050] + 24);
  if (a3)
  {
    v7 = [(NSMutableDictionary *)self->_knownElementsByID objectForKeyedSubscript:?];
    v8 = v7;
    if (v7)
    {
      [v7 frame];
      v3 = v9;
      v4 = v10;
      v5 = v11;
      v6 = v12;
    }
  }

  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (BOOL)beginSuppressingPlaceholderForElement:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_elementInteraction);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_7;
  }

  v6 = [(NSMutableDictionary *)self->_knownElementsByID objectForKeyedSubscript:v4];
  v7 = v6;
  v8 = 0;
  if (WeakRetained && v6)
  {
    v9 = [WeakRetained delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [WeakRetained delegate];
      [v11 pencilTextInputInteraction:WeakRetained beginSuppressingPlaceholderForElement:v7];

      v8 = 1;
      goto LABEL_8;
    }

LABEL_7:
    v8 = 0;
  }

LABEL_8:

  return v8;
}

- (void)endSuppressingPlaceholderForElement:(id)a3
{
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_elementInteraction);
  if (v10)
  {
    v5 = [(NSMutableDictionary *)self->_knownElementsByID objectForKeyedSubscript:?];
    v6 = v5;
    if (WeakRetained)
    {
      if (v5)
      {
        v7 = [WeakRetained delegate];
        v8 = objc_opt_respondsToSelector();

        if (v8)
        {
          v9 = [WeakRetained delegate];
          [v9 pencilTextInputInteraction:WeakRetained endSuppressingPlaceholderForElement:v6];
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }
}

- (void)requestElementsInRect:(CGRect)a3 completion:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_elementInteraction);
  v11 = [WeakRetained delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [WeakRetained delegate];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __79__PKPencilTextInputElementInteractionWrapper_requestElementsInRect_completion___block_invoke;
    v14[3] = &unk_1E82D8988;
    v14[4] = self;
    v15 = v9;
    [v13 pencilTextInputInteraction:WeakRetained requestTextInputElementsInRect:v14 completion:{x, y, width, height}];
  }
}

void __79__PKPencilTextInputElementInteractionWrapper_requestElementsInRect_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__PKPencilTextInputElementInteractionWrapper_requestElementsInRect_completion___block_invoke_2;
  block[3] = &unk_1E82D7930;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __79__PKPencilTextInputElementInteractionWrapper_requestElementsInRect_completion___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = *(*(a1 + 40) + 16);
        v10 = [v8 identifier];
        [v9 setObject:v8 forKeyedSubscript:v10];

        v11 = [v8 identifier];
        [v2 addObject:v11];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)focusElement:(id)a3 initialFocusSelectionReferencePoint:(CGPoint)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_elementInteraction);
  if (!v7)
  {
    v11 = 0;
LABEL_7:
    v8[2](v8, 0);
    goto LABEL_8;
  }

  v10 = [(NSMutableDictionary *)self->_knownElementsByID objectForKeyedSubscript:v7];
  v11 = v10;
  if (!WeakRetained)
  {
    goto LABEL_7;
  }

  if (!v10)
  {
    goto LABEL_7;
  }

  v12 = [WeakRetained delegate];
  v13 = objc_opt_respondsToSelector();

  if ((v13 & 1) == 0)
  {
    goto LABEL_7;
  }

  v14 = [WeakRetained delegate];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __106__PKPencilTextInputElementInteractionWrapper_focusElement_initialFocusSelectionReferencePoint_completion___block_invoke;
  v15[3] = &unk_1E82D89B0;
  v16 = v8;
  [v14 pencilTextInputInteraction:WeakRetained focusTextInputElement:v11 completion:v15];

LABEL_8:
}

@end