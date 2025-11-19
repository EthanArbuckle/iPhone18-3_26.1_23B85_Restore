@interface EntryUndoManager
- (void)beginUndoGrouping;
- (void)endUndoGrouping;
- (void)undo;
@end

@implementation EntryUndoManager

- (void)undo
{
  v2 = self;
  sub_1000D17C4();
}

- (void)beginUndoGrouping
{
  v2 = self;
  sub_1000D1A30();
}

- (void)endUndoGrouping
{
  v2 = self;
  sub_1000D1BCC();
}

@end