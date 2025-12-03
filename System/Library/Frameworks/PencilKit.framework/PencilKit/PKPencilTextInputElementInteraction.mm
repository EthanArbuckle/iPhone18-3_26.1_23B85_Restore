@interface PKPencilTextInputElementInteraction
+ (id)_pencilTextInputElementInteractionInView:(id)view;
- (PKPencilTextInputElementInteractionDelegate)delegate;
- (UIView)view;
- (id)scribbleInteractionWrapper;
@end

@implementation PKPencilTextInputElementInteraction

+ (id)_pencilTextInputElementInteractionInView:(id)view
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  interactions = [view interactions];
  v4 = [interactions countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(interactions);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [interactions countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)scribbleInteractionWrapper
{
  cachedWrapper = self->_cachedWrapper;
  if (!cachedWrapper)
  {
    v4 = [[PKPencilTextInputElementInteractionWrapper alloc] initWithElementInteraction:self];
    v5 = self->_cachedWrapper;
    self->_cachedWrapper = v4;

    cachedWrapper = self->_cachedWrapper;
  }

  return cachedWrapper;
}

- (PKPencilTextInputElementInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end