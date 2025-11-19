@interface THWInteractiveImageExpandedRotationController
- (CGPoint)translateForCenteredAutoRotateFromSize:(CGSize)a3 toSize:(CGSize)a4;
- (THWInteractiveImageExpandedRotationController)initWithRep:(id)a3 canvas:(id)a4 stageCanvasController:(id)a5;
- (void)dealloc;
- (void)expandedDidTransitionToSize:(CGSize)a3;
- (void)expandedWillAnimateRotationFromSize:(CGSize)a3 toSize:(CGSize)a4 duration:(double)a5;
@end

@implementation THWInteractiveImageExpandedRotationController

- (THWInteractiveImageExpandedRotationController)initWithRep:(id)a3 canvas:(id)a4 stageCanvasController:(id)a5
{
  v10.receiver = self;
  v10.super_class = THWInteractiveImageExpandedRotationController;
  v7 = [(THWInteractiveImageExpandedRotationController *)&v10 init:a3];
  if (v7)
  {
    v7->_rep = a3;
    v8 = a5;
    v7->_duration = 5.0;
    v7->_stageCanvasController = v8;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWInteractiveImageExpandedRotationController;
  [(THWInteractiveImageExpandedRotationController *)&v3 dealloc];
}

- (CGPoint)translateForCenteredAutoRotateFromSize:(CGSize)a3 toSize:(CGSize)a4
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)expandedWillAnimateRotationFromSize:(CGSize)a3 toSize:(CGSize)a4 duration:(double)a5
{
  [(THWInteractiveImageExpandedRotationController *)self setDuration:a5, a3.height, a4.width, a4.height];
  [(THWInteractiveImageWidgetRep *)self->_rep setRotationDuration:a5];
  [-[THWInteractiveImageWidgetRep layout](self->_rep "layout")];
  [-[THWInteractiveImageWidgetRep interactiveCanvasController](self->_rep "interactiveCanvasController")];
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self->_rep stageCanvasController] scrollContainerICC] layoutIfNeeded];
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self->_rep stageCanvasController] scrollContentICC] layoutIfNeeded];
  v7 = [(THWInteractiveImageWidgetRep *)self->_rep stageCanvasController];
  v8 = [(THWInteractiveImageWidgetRep *)self->_rep layout];
  [-[THWInteractiveImageWidgetRep layout](self->_rep "layout")];
  [v8 rectInRoot:?];
  [THWOverlayableZoomableCanvasController setNaturalFrame:v7 scale:"setNaturalFrame:scale:"];
  [(THWInteractiveImageWidgetRep *)self->_rep updateDiagramAnimated:1];
  rep = self->_rep;

  [(THWInteractiveImageWidgetRep *)rep setRotationDuration:0.0];
}

- (void)expandedDidTransitionToSize:(CGSize)a3
{
  [-[THWInteractiveImageWidgetRep layout](self->_rep layout];
  [-[THWInteractiveImageWidgetRep layout](self->_rep "layout")];
  [-[THWInteractiveImageWidgetRep interactiveCanvasController](self->_rep "interactiveCanvasController")];
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self->_rep stageCanvasController] scrollContainerICC] layoutIfNeeded];
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self->_rep stageCanvasController] scrollContentICC] layoutIfNeeded];
  v4 = [(THWInteractiveImageWidgetRep *)self->_rep stageCanvasController];
  v5 = [(THWInteractiveImageWidgetRep *)self->_rep layout];
  [-[THWInteractiveImageWidgetRep layout](self->_rep "layout")];
  [v5 rectInRoot:?];
  [THWOverlayableZoomableCanvasController setNaturalFrame:v4 scale:"setNaturalFrame:scale:"];
  [(THWInteractiveImageWidgetRep *)self->_rep updateDiagramAnimated:0];
  [(THWExpandedRepController *)[(THWInteractiveImageWidgetRep *)self->_rep expandedRepController] expandedRepControllerInvalidateChildrenInPanel:1 invalidateWPAuto:1];
  [(THWExpandedRepController *)[(THWInteractiveImageWidgetRep *)self->_rep expandedRepController] expandedRepControllerInvalidateChildrenInPanel:2 invalidateWPAuto:0];
  [(THWExpandedRepController *)[(THWInteractiveImageWidgetRep *)self->_rep expandedRepController] expandedRepControllerUpdatePanelVisibility];
  v6 = [(THWInteractiveImageWidgetRep *)self->_rep stageCanvasController];

  [(THWOverlayableZoomableCanvasController *)v6 updateContainerInfosToDisplay];
}

@end