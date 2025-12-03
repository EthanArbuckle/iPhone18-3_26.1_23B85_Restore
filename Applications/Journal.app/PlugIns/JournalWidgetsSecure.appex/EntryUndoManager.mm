@interface EntryUndoManager
- (void)beginUndoGrouping;
- (void)endUndoGrouping;
- (void)undo;
@end

@implementation EntryUndoManager

- (void)undo
{
  selfCopy = self;
  sub_10009B47C();
}

- (void)beginUndoGrouping
{
  selfCopy = self;
  sub_10009B5C8();
}

- (void)endUndoGrouping
{
  selfCopy = self;
  sub_10009B764();
}

@end