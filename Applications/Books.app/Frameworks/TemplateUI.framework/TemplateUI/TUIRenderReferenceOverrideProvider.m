@interface TUIRenderReferenceOverrideProvider
- (TUIRenderReferenceOverrideProviderDelegate)delegate;
- (void)_notifyRenderOverrideObservers:(id)a3;
- (void)addRenderOverride:(id)a3;
- (void)removeRenderOverride:(id)a3;
- (void)scrollToItemsMatchingQuery:(id)a3 atScrollPosition:(unint64_t)a4 animated:(BOOL)a5 skipVoiceOverFocus:(BOOL)a6;
@end

@implementation TUIRenderReferenceOverrideProvider

- (void)addRenderOverride:(id)a3
{
  v4 = a3;
  if (v4)
  {
    overrides = self->_overrides;
    v9 = v4;
    if (!overrides)
    {
      v6 = objc_opt_new();
      v7 = self->_overrides;
      self->_overrides = v6;

      overrides = self->_overrides;
    }

    v8 = [(NSMutableArray *)overrides indexOfObjectIdenticalTo:v9];
    v4 = v9;
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_overrides addObject:v9];
      [(TUIRenderReferenceOverrideProvider *)self _notifyRenderOverrideObservers:v9];
      v4 = v9;
    }
  }
}

- (void)removeRenderOverride:(id)a3
{
  v4 = a3;
  if (v4)
  {
    overrides = self->_overrides;
    if (overrides)
    {
      v8 = v4;
      v6 = [(NSMutableArray *)overrides indexOfObjectIdenticalTo:v4];
      v4 = v8;
      if (v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(NSMutableArray *)self->_overrides removeObjectIdenticalTo:v8];
        if (![(NSMutableArray *)self->_overrides count])
        {
          v7 = self->_overrides;
          self->_overrides = 0;
        }

        [(TUIRenderReferenceOverrideProvider *)self _notifyRenderOverrideObservers:v8];
        v4 = v8;
      }
    }
  }
}

- (void)_notifyRenderOverrideObservers:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained renderReferenceOverrideObservers];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        [v12 renderReferenceOverridesChanged];
        [v12 invalidateRenderReferenceOverride:v4];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)scrollToItemsMatchingQuery:(id)a3 atScrollPosition:(unint64_t)a4 animated:(BOOL)a5 skipVoiceOverFocus:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = [WeakRetained renderReferenceOverrideObservers];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v18 + 1) + 8 * v17) scrollToItemsMatchingQuery:v10 atScrollPosition:a4 animated:v7 skipVoiceOverFocus:{v6, v18}];
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v15);
  }
}

- (TUIRenderReferenceOverrideProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end