@interface _FPXUnsupportedTrashEnumerator
- (void)currentSyncAnchorWithCompletionHandler:(id)handler;
- (void)enumerateChangesForObserver:(id)observer fromSyncAnchor:(id)anchor;
@end

@implementation _FPXUnsupportedTrashEnumerator

- (void)currentSyncAnchorWithCompletionHandler:(id)handler
{
  v4 = MEMORY[0x1E695DEF0];
  handlerCopy = handler;
  data = [v4 data];
  (*(handler + 2))(handlerCopy, data);
}

- (void)enumerateChangesForObserver:(id)observer fromSyncAnchor:(id)anchor
{
  v4 = MEMORY[0x1E695DEF0];
  observerCopy = observer;
  data = [v4 data];
  [observerCopy finishEnumeratingChangesUpToSyncAnchor:data moreComing:0];
}

@end