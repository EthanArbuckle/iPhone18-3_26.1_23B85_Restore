@interface CRLCollaboratorCursorOverlayView
- (CRLCollaboratorCursorOverlayViewDelegate)interactionDelegate;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation CRLCollaboratorCursorOverlayView

- (void)touchesBegan:(id)began withEvent:(id)event
{
  if (![(CRLCollaboratorCursorOverlayView *)self interactionInView:began])
  {
    interactionDelegate = [(CRLCollaboratorCursorOverlayView *)self interactionDelegate];
    [interactionDelegate userInteractionBeganForView:self];

    [(CRLCollaboratorCursorOverlayView *)self setInteractionInView:1];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if ([(CRLCollaboratorCursorOverlayView *)self interactionInView:ended])
  {
    interactionDelegate = [(CRLCollaboratorCursorOverlayView *)self interactionDelegate];
    [interactionDelegate userInteractionEndedForView:self];

    [(CRLCollaboratorCursorOverlayView *)self setInteractionInView:0];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  if ([(CRLCollaboratorCursorOverlayView *)self interactionInView:cancelled])
  {
    interactionDelegate = [(CRLCollaboratorCursorOverlayView *)self interactionDelegate];
    [interactionDelegate userInteractionCancelledForView:self];

    [(CRLCollaboratorCursorOverlayView *)self setInteractionInView:0];
  }
}

- (CRLCollaboratorCursorOverlayViewDelegate)interactionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  return WeakRetained;
}

@end