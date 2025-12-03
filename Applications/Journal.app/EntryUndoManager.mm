@interface EntryUndoManager
- (void)beginUndoGrouping;
- (void)endUndoGrouping;
- (void)undo;
@end

@implementation EntryUndoManager

- (void)undo
{
  selfCopy = self;
  sub_10012ABE8();
}

- (void)beginUndoGrouping
{
  selfCopy = self;
  sub_10012AE54();
}

- (void)endUndoGrouping
{
  selfCopy = self;
  sub_10012AFF0();
}

@end