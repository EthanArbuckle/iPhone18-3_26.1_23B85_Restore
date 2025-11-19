@interface EntryUndoManager
- (void)beginUndoGrouping;
- (void)endUndoGrouping;
- (void)undo;
@end

@implementation EntryUndoManager

- (void)undo
{
  v2 = self;
  sub_10009B47C();
}

- (void)beginUndoGrouping
{
  v2 = self;
  sub_10009B5C8();
}

- (void)endUndoGrouping
{
  v2 = self;
  sub_10009B764();
}

@end