@interface StickersBaseMessagesViewController
- (void)updateSnapshotWithCompletionBlock:(id)a3;
@end

@implementation StickersBaseMessagesViewController

- (void)updateSnapshotWithCompletionBlock:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

@end