@interface EntryUndoManager
- (void)beginUndoGrouping;
- (void)endUndoGrouping;
- (void)undo;
@end

@implementation EntryUndoManager

- (void)undo
{
  selfCopy = self;
  sub_3DF60();
}

- (void)beginUndoGrouping
{
  selfCopy = self;
  sub_3E1CC();
}

- (void)endUndoGrouping
{
  selfCopy = self;
  sub_3E368();
}

@end