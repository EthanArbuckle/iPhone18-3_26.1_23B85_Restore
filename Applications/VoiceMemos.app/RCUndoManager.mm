@interface RCUndoManager
- (BOOL)canUndo;
@end

@implementation RCUndoManager

- (BOOL)canUndo
{
  if ([(RCUndoManager *)self undoDisabled])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = RCUndoManager;
  return [(RCUndoManager *)&v4 canUndo];
}

@end