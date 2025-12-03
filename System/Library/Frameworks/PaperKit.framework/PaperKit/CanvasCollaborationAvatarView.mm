@interface CanvasCollaborationAvatarView
- (void)didMoveToWindow;
- (void)handleHoverWithRecognizer:(id)recognizer;
- (void)handleTap:(id)tap;
- (void)update;
@end

@implementation CanvasCollaborationAvatarView

- (void)didMoveToWindow
{
  selfCopy = self;
  CanvasCollaborationAvatarView.didMoveToWindow()();
}

- (void)update
{
  selfCopy = self;
  CanvasCollaborationAvatarView.update(animated:)(0);
}

- (void)handleTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  specialized CanvasCollaborationAvatarView.handleTap(_:)();
}

- (void)handleHoverWithRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  CanvasCollaborationAvatarView.handleHover(recognizer:)(recognizerCopy);
}

@end