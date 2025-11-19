@interface CanvasCollaborationAvatarView
- (void)didMoveToWindow;
- (void)handleHoverWithRecognizer:(id)a3;
- (void)handleTap:(id)a3;
- (void)update;
@end

@implementation CanvasCollaborationAvatarView

- (void)didMoveToWindow
{
  v2 = self;
  CanvasCollaborationAvatarView.didMoveToWindow()();
}

- (void)update
{
  v2 = self;
  CanvasCollaborationAvatarView.update(animated:)(0);
}

- (void)handleTap:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized CanvasCollaborationAvatarView.handleTap(_:)();
}

- (void)handleHoverWithRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  CanvasCollaborationAvatarView.handleHover(recognizer:)(v4);
}

@end