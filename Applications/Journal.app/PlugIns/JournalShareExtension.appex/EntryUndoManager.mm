@interface EntryUndoManager
- (void)beginUndoGrouping;
- (void)endUndoGrouping;
- (void)undo;
@end

@implementation EntryUndoManager

- (void)undo
{
  selfCopy = self;
  sub_1000D17C4();
}

- (void)beginUndoGrouping
{
  selfCopy = self;
  sub_1000D1A30();
}

- (void)endUndoGrouping
{
  selfCopy = self;
  sub_1000D1BCC();
}

@end