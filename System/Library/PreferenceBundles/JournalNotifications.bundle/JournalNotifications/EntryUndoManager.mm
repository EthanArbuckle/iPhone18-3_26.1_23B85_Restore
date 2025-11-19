@interface EntryUndoManager
- (void)beginUndoGrouping;
- (void)endUndoGrouping;
- (void)undo;
@end

@implementation EntryUndoManager

- (void)undo
{
  v2 = self;
  sub_5FBB4();
}

- (void)beginUndoGrouping
{
  v2 = self;
  sub_5FD00();
}

- (void)endUndoGrouping
{
  v2 = self;
  sub_5FE9C();
}

@end