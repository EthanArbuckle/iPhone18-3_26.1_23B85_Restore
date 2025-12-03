@interface TUIFeedAutoScrollController
- (TUIFeedAutoScrollController)initWithDelegate:(id)delegate;
- (TUIFeedAutoScrollDelegate)delegate;
- (void)addScrollQuery:(id)query animated:(BOOL)animated skipVoiceOverFocus:(BOOL)focus;
- (void)attemptPendingScrolls;
- (void)invalidatePendingScrolls;
- (void)invalidateQuery:(id)query;
@end

@implementation TUIFeedAutoScrollController

- (TUIFeedAutoScrollController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = TUIFeedAutoScrollController;
  v5 = [(TUIFeedAutoScrollController *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = [NSHashTable hashTableWithOptions:512];
    pendingQueries = v6->_pendingQueries;
    v6->_pendingQueries = v7;

    v9 = [NSMapTable mapTableWithKeyOptions:512 valueOptions:5];
    animated = v6->_animated;
    v6->_animated = v9;

    v11 = [NSMapTable mapTableWithKeyOptions:0 valueOptions:5];
    skipVoiceOverFocus = v6->_skipVoiceOverFocus;
    v6->_skipVoiceOverFocus = v11;
  }

  return v6;
}

- (void)addScrollQuery:(id)query animated:(BOOL)animated skipVoiceOverFocus:(BOOL)focus
{
  focusCopy = focus;
  animatedCopy = animated;
  pendingQueries = self->_pendingQueries;
  queryCopy = query;
  [(NSHashTable *)pendingQueries addObject:queryCopy];
  animated = self->_animated;
  v11 = [NSNumber numberWithBool:animatedCopy];
  [(NSMapTable *)animated setObject:v11 forKey:queryCopy];

  skipVoiceOverFocus = self->_skipVoiceOverFocus;
  v13 = [NSNumber numberWithBool:focusCopy];
  [(NSMapTable *)skipVoiceOverFocus setObject:v13 forKey:queryCopy];
}

- (void)invalidateQuery:(id)query
{
  pendingQueries = self->_pendingQueries;
  queryCopy = query;
  [(NSHashTable *)pendingQueries removeObject:queryCopy];
  [(NSMapTable *)self->_animated removeObjectForKey:queryCopy];
  [(NSMapTable *)self->_skipVoiceOverFocus removeObjectForKey:queryCopy];
}

- (void)attemptPendingScrolls
{
  allObjects = [(NSHashTable *)self->_pendingQueries allObjects];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_7C75C;
  v4[3] = &unk_2603D8;
  v4[4] = self;
  [allObjects enumerateObjectsUsingBlock:v4];
}

- (void)invalidatePendingScrolls
{
  [(NSHashTable *)self->_pendingQueries removeAllObjects];
  animated = self->_animated;

  [(NSMapTable *)animated removeAllObjects];
}

- (TUIFeedAutoScrollDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end