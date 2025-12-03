@interface StickersBaseMessagesViewController
- (void)updateSnapshotWithCompletionBlock:(id)block;
@end

@implementation StickersBaseMessagesViewController

- (void)updateSnapshotWithCompletionBlock:(id)block
{
  if (block)
  {
    (*(block + 2))(block, 0);
  }
}

@end