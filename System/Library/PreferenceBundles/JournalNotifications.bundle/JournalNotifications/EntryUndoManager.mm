@interface EntryUndoManager
- (void)beginUndoGrouping;
- (void)endUndoGrouping;
- (void)undo;
@end

@implementation EntryUndoManager

- (void)undo
{
  selfCopy = self;
  sub_5FBB4();
}

- (void)beginUndoGrouping
{
  selfCopy = self;
  sub_5FD00();
}

- (void)endUndoGrouping
{
  selfCopy = self;
  sub_5FE9C();
}

@end