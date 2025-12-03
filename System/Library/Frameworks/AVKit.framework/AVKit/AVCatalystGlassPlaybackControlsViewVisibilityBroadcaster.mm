@interface AVCatalystGlassPlaybackControlsViewVisibilityBroadcaster
- (AVCatalystGlassPlaybackControlsViewVisibilityBroadcaster)init;
- (id)_filteredObservers;
- (unint64_t)_indexOfObserver:(id)observer;
- (void)addObserver:(id)observer;
- (void)glassPlaybackControlsView:(id)view animateAlongsideVisibilityAnimationsWithAnimationCoordinator:(id)coordinator appearingViews:(id)views disappearingViews:(id)disappearingViews;
- (void)glassPlaybackControlsViewDidToggleControlsVisibility:(id)visibility;
- (void)glassPlaybackControlsViewNeedsUpdateStatusBarAppearance:(id)appearance;
- (void)removeObserver:(id)observer;
@end

@implementation AVCatalystGlassPlaybackControlsViewVisibilityBroadcaster

- (void)glassPlaybackControlsViewDidToggleControlsVisibility:(id)visibility
{
  v17 = *MEMORY[0x1E69E9840];
  visibilityCopy = visibility;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _filteredObservers = [(AVCatalystGlassPlaybackControlsViewVisibilityBroadcaster *)self _filteredObservers];
  v6 = [_filteredObservers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(_filteredObservers);
        }

        object = [*(*(&v12 + 1) + 8 * v9) object];
        v11 = object;
        if (object)
        {
          [object glassPlaybackControlsViewDidToggleControlsVisibility:visibilityCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [_filteredObservers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)glassPlaybackControlsView:(id)view animateAlongsideVisibilityAnimationsWithAnimationCoordinator:(id)coordinator appearingViews:(id)views disappearingViews:(id)disappearingViews
{
  v26 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  coordinatorCopy = coordinator;
  viewsCopy = views;
  disappearingViewsCopy = disappearingViews;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  _filteredObservers = [(AVCatalystGlassPlaybackControlsViewVisibilityBroadcaster *)self _filteredObservers];
  v15 = [_filteredObservers countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(_filteredObservers);
        }

        object = [*(*(&v21 + 1) + 8 * v18) object];
        v20 = object;
        if (object)
        {
          [object glassPlaybackControlsView:viewCopy animateAlongsideVisibilityAnimationsWithAnimationCoordinator:coordinatorCopy appearingViews:viewsCopy disappearingViews:disappearingViewsCopy];
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [_filteredObservers countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }
}

- (void)glassPlaybackControlsViewNeedsUpdateStatusBarAppearance:(id)appearance
{
  v17 = *MEMORY[0x1E69E9840];
  appearanceCopy = appearance;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _filteredObservers = [(AVCatalystGlassPlaybackControlsViewVisibilityBroadcaster *)self _filteredObservers];
  v6 = [_filteredObservers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(_filteredObservers);
        }

        object = [*(*(&v12 + 1) + 8 * v9) object];
        v11 = object;
        if (object)
        {
          [object glassPlaybackControlsViewNeedsUpdateStatusBarAppearance:appearanceCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [_filteredObservers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (id)_filteredObservers
{
  v3 = [(NSMutableArray *)self->_observers indexesOfObjectsPassingTest:&__block_literal_global_3926];
  [(NSMutableArray *)self->_observers removeObjectsAtIndexes:v3];
  observers = self->_observers;
  v5 = observers;

  return observers;
}

BOOL __78__AVCatalystGlassPlaybackControlsViewVisibilityBroadcaster__filteredObservers__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 object];
  v3 = v2 == 0;

  return v3;
}

- (unint64_t)_indexOfObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__AVCatalystGlassPlaybackControlsViewVisibilityBroadcaster__indexOfObserver___block_invoke;
  v9[3] = &unk_1E7207680;
  v10 = observerCopy;
  v6 = observerCopy;
  v7 = [(NSMutableArray *)observers indexOfObjectPassingTest:v9];

  return v7;
}

BOOL __77__AVCatalystGlassPlaybackControlsViewVisibilityBroadcaster__indexOfObserver___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 object];
  v7 = *(a1 + 32);

  if (v6 == v7)
  {
    *a4 = 1;
  }

  return v6 == v7;
}

- (void)removeObserver:(id)observer
{
  v4 = [(AVCatalystGlassPlaybackControlsViewVisibilityBroadcaster *)self _indexOfObserver:observer];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    observers = self->_observers;

    [(NSMutableArray *)observers removeObjectAtIndex:v5];
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    v8 = observerCopy;
    observerCopy = [(AVCatalystGlassPlaybackControlsViewVisibilityBroadcaster *)self _indexOfObserver:observerCopy];
    v5 = v8;
    if (observerCopy == 0x7FFFFFFFFFFFFFFFLL)
    {
      observers = self->_observers;
      v7 = [[AVWeakWrapper alloc] initWithObject:v8];
      [(NSMutableArray *)observers addObject:v7];

      v5 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](observerCopy, v5);
}

- (AVCatalystGlassPlaybackControlsViewVisibilityBroadcaster)init
{
  v6.receiver = self;
  v6.super_class = AVCatalystGlassPlaybackControlsViewVisibilityBroadcaster;
  v2 = [(AVCatalystGlassPlaybackControlsViewVisibilityBroadcaster *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    observers = v2->_observers;
    v2->_observers = v3;
  }

  return v2;
}

@end