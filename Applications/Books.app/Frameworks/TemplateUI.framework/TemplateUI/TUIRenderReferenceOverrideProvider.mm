@interface TUIRenderReferenceOverrideProvider
- (TUIRenderReferenceOverrideProviderDelegate)delegate;
- (void)_notifyRenderOverrideObservers:(id)observers;
- (void)addRenderOverride:(id)override;
- (void)removeRenderOverride:(id)override;
- (void)scrollToItemsMatchingQuery:(id)query atScrollPosition:(unint64_t)position animated:(BOOL)animated skipVoiceOverFocus:(BOOL)focus;
@end

@implementation TUIRenderReferenceOverrideProvider

- (void)addRenderOverride:(id)override
{
  overrideCopy = override;
  if (overrideCopy)
  {
    overrides = self->_overrides;
    v9 = overrideCopy;
    if (!overrides)
    {
      v6 = objc_opt_new();
      v7 = self->_overrides;
      self->_overrides = v6;

      overrides = self->_overrides;
    }

    v8 = [(NSMutableArray *)overrides indexOfObjectIdenticalTo:v9];
    overrideCopy = v9;
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_overrides addObject:v9];
      [(TUIRenderReferenceOverrideProvider *)self _notifyRenderOverrideObservers:v9];
      overrideCopy = v9;
    }
  }
}

- (void)removeRenderOverride:(id)override
{
  overrideCopy = override;
  if (overrideCopy)
  {
    overrides = self->_overrides;
    if (overrides)
    {
      v8 = overrideCopy;
      v6 = [(NSMutableArray *)overrides indexOfObjectIdenticalTo:overrideCopy];
      overrideCopy = v8;
      if (v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(NSMutableArray *)self->_overrides removeObjectIdenticalTo:v8];
        if (![(NSMutableArray *)self->_overrides count])
        {
          v7 = self->_overrides;
          self->_overrides = 0;
        }

        [(TUIRenderReferenceOverrideProvider *)self _notifyRenderOverrideObservers:v8];
        overrideCopy = v8;
      }
    }
  }
}

- (void)_notifyRenderOverrideObservers:(id)observers
{
  observersCopy = observers;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  renderReferenceOverrideObservers = [WeakRetained renderReferenceOverrideObservers];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = renderReferenceOverrideObservers;
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
        [v12 invalidateRenderReferenceOverride:observersCopy];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)scrollToItemsMatchingQuery:(id)query atScrollPosition:(unint64_t)position animated:(BOOL)animated skipVoiceOverFocus:(BOOL)focus
{
  focusCopy = focus;
  animatedCopy = animated;
  queryCopy = query;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  renderReferenceOverrideObservers = [WeakRetained renderReferenceOverrideObservers];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = renderReferenceOverrideObservers;
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

        [*(*(&v18 + 1) + 8 * v17) scrollToItemsMatchingQuery:queryCopy atScrollPosition:position animated:animatedCopy skipVoiceOverFocus:{focusCopy, v18}];
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