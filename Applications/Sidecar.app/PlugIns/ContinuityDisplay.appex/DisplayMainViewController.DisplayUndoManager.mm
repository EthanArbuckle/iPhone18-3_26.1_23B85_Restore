@interface DisplayMainViewController.DisplayUndoManager
- (void)redo;
- (void)undo;
@end

@implementation DisplayMainViewController.DisplayUndoManager

- (void)undo
{
  selfCopy = self;
  sub_100036CC0(xmmword_10005B7B0);
}

- (void)redo
{
  selfCopy = self;
  sub_100036CC0(xmmword_10005C040);
}

@end