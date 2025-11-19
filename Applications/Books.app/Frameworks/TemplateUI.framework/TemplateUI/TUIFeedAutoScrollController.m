@interface TUIFeedAutoScrollController
- (TUIFeedAutoScrollController)initWithDelegate:(id)a3;
- (TUIFeedAutoScrollDelegate)delegate;
- (void)addScrollQuery:(id)a3 animated:(BOOL)a4 skipVoiceOverFocus:(BOOL)a5;
- (void)attemptPendingScrolls;
- (void)invalidatePendingScrolls;
- (void)invalidateQuery:(id)a3;
@end

@implementation TUIFeedAutoScrollController

- (TUIFeedAutoScrollController)initWithDelegate:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = TUIFeedAutoScrollController;
  v5 = [(TUIFeedAutoScrollController *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
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

- (void)addScrollQuery:(id)a3 animated:(BOOL)a4 skipVoiceOverFocus:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  pendingQueries = self->_pendingQueries;
  v9 = a3;
  [(NSHashTable *)pendingQueries addObject:v9];
  animated = self->_animated;
  v11 = [NSNumber numberWithBool:v6];
  [(NSMapTable *)animated setObject:v11 forKey:v9];

  skipVoiceOverFocus = self->_skipVoiceOverFocus;
  v13 = [NSNumber numberWithBool:v5];
  [(NSMapTable *)skipVoiceOverFocus setObject:v13 forKey:v9];
}

- (void)invalidateQuery:(id)a3
{
  pendingQueries = self->_pendingQueries;
  v5 = a3;
  [(NSHashTable *)pendingQueries removeObject:v5];
  [(NSMapTable *)self->_animated removeObjectForKey:v5];
  [(NSMapTable *)self->_skipVoiceOverFocus removeObjectForKey:v5];
}

- (void)attemptPendingScrolls
{
  v3 = [(NSHashTable *)self->_pendingQueries allObjects];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_7C75C;
  v4[3] = &unk_2603D8;
  v4[4] = self;
  [v3 enumerateObjectsUsingBlock:v4];
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