@interface EntryUndoManager
- (void)beginUndoGrouping;
- (void)endUndoGrouping;
- (void)undo;
@end

@implementation EntryUndoManager

- (void)undo
{
  v2 = self;
  sub_10012ABE8();
}

- (void)beginUndoGrouping
{
  v2 = self;
  sub_10012AE54();
}

- (void)endUndoGrouping
{
  v2 = self;
  sub_10012AFF0();
}

@end