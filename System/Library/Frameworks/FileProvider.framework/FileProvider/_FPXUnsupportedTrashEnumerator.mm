@interface _FPXUnsupportedTrashEnumerator
- (void)currentSyncAnchorWithCompletionHandler:(id)a3;
- (void)enumerateChangesForObserver:(id)a3 fromSyncAnchor:(id)a4;
@end

@implementation _FPXUnsupportedTrashEnumerator

- (void)currentSyncAnchorWithCompletionHandler:(id)a3
{
  v4 = MEMORY[0x1E695DEF0];
  v5 = a3;
  v6 = [v4 data];
  (*(a3 + 2))(v5, v6);
}

- (void)enumerateChangesForObserver:(id)a3 fromSyncAnchor:(id)a4
{
  v4 = MEMORY[0x1E695DEF0];
  v5 = a3;
  v6 = [v4 data];
  [v5 finishEnumeratingChangesUpToSyncAnchor:v6 moreComing:0];
}

@end