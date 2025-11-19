@interface DisplayMainViewController.DisplayUndoManager
- (void)redo;
- (void)undo;
@end

@implementation DisplayMainViewController.DisplayUndoManager

- (void)undo
{
  v2 = self;
  sub_100036CC0(xmmword_10005B7B0);
}

- (void)redo
{
  v2 = self;
  sub_100036CC0(xmmword_10005C040);
}

@end