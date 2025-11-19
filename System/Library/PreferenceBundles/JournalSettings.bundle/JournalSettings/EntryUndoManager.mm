@interface EntryUndoManager
- (void)beginUndoGrouping;
- (void)endUndoGrouping;
- (void)undo;
@end

@implementation EntryUndoManager

- (void)undo
{
  v2 = self;
  sub_3DF60();
}

- (void)beginUndoGrouping
{
  v2 = self;
  sub_3E1CC();
}

- (void)endUndoGrouping
{
  v2 = self;
  sub_3E368();
}

@end