@interface CRLCollaboratorCursorOverlayView
- (CRLCollaboratorCursorOverlayViewDelegate)interactionDelegate;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation CRLCollaboratorCursorOverlayView

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  if (![(CRLCollaboratorCursorOverlayView *)self interactionInView:a3])
  {
    v5 = [(CRLCollaboratorCursorOverlayView *)self interactionDelegate];
    [v5 userInteractionBeganForView:self];

    [(CRLCollaboratorCursorOverlayView *)self setInteractionInView:1];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  if ([(CRLCollaboratorCursorOverlayView *)self interactionInView:a3])
  {
    v5 = [(CRLCollaboratorCursorOverlayView *)self interactionDelegate];
    [v5 userInteractionEndedForView:self];

    [(CRLCollaboratorCursorOverlayView *)self setInteractionInView:0];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  if ([(CRLCollaboratorCursorOverlayView *)self interactionInView:a3])
  {
    v5 = [(CRLCollaboratorCursorOverlayView *)self interactionDelegate];
    [v5 userInteractionCancelledForView:self];

    [(CRLCollaboratorCursorOverlayView *)self setInteractionInView:0];
  }
}

- (CRLCollaboratorCursorOverlayViewDelegate)interactionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  return WeakRetained;
}

@end