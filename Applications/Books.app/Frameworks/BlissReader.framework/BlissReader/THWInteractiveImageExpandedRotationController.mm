@interface THWInteractiveImageExpandedRotationController
- (CGPoint)translateForCenteredAutoRotateFromSize:(CGSize)size toSize:(CGSize)toSize;
- (THWInteractiveImageExpandedRotationController)initWithRep:(id)rep canvas:(id)canvas stageCanvasController:(id)controller;
- (void)dealloc;
- (void)expandedDidTransitionToSize:(CGSize)size;
- (void)expandedWillAnimateRotationFromSize:(CGSize)size toSize:(CGSize)toSize duration:(double)duration;
@end

@implementation THWInteractiveImageExpandedRotationController

- (THWInteractiveImageExpandedRotationController)initWithRep:(id)rep canvas:(id)canvas stageCanvasController:(id)controller
{
  v10.receiver = self;
  v10.super_class = THWInteractiveImageExpandedRotationController;
  v7 = [(THWInteractiveImageExpandedRotationController *)&v10 init:rep];
  if (v7)
  {
    v7->_rep = rep;
    controllerCopy = controller;
    v7->_duration = 5.0;
    v7->_stageCanvasController = controllerCopy;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWInteractiveImageExpandedRotationController;
  [(THWInteractiveImageExpandedRotationController *)&v3 dealloc];
}

- (CGPoint)translateForCenteredAutoRotateFromSize:(CGSize)size toSize:(CGSize)toSize
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)expandedWillAnimateRotationFromSize:(CGSize)size toSize:(CGSize)toSize duration:(double)duration
{
  [(THWInteractiveImageExpandedRotationController *)self setDuration:duration, size.height, toSize.width, toSize.height];
  [(THWInteractiveImageWidgetRep *)self->_rep setRotationDuration:duration];
  [-[THWInteractiveImageWidgetRep layout](self->_rep "layout")];
  [-[THWInteractiveImageWidgetRep interactiveCanvasController](self->_rep "interactiveCanvasController")];
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self->_rep stageCanvasController] scrollContainerICC] layoutIfNeeded];
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self->_rep stageCanvasController] scrollContentICC] layoutIfNeeded];
  stageCanvasController = [(THWInteractiveImageWidgetRep *)self->_rep stageCanvasController];
  layout = [(THWInteractiveImageWidgetRep *)self->_rep layout];
  [-[THWInteractiveImageWidgetRep layout](self->_rep "layout")];
  [layout rectInRoot:?];
  [THWOverlayableZoomableCanvasController setNaturalFrame:stageCanvasController scale:"setNaturalFrame:scale:"];
  [(THWInteractiveImageWidgetRep *)self->_rep updateDiagramAnimated:1];
  rep = self->_rep;

  [(THWInteractiveImageWidgetRep *)rep setRotationDuration:0.0];
}

- (void)expandedDidTransitionToSize:(CGSize)size
{
  [-[THWInteractiveImageWidgetRep layout](self->_rep layout];
  [-[THWInteractiveImageWidgetRep layout](self->_rep "layout")];
  [-[THWInteractiveImageWidgetRep interactiveCanvasController](self->_rep "interactiveCanvasController")];
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self->_rep stageCanvasController] scrollContainerICC] layoutIfNeeded];
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)[(THWInteractiveImageWidgetRep *)self->_rep stageCanvasController] scrollContentICC] layoutIfNeeded];
  stageCanvasController = [(THWInteractiveImageWidgetRep *)self->_rep stageCanvasController];
  layout = [(THWInteractiveImageWidgetRep *)self->_rep layout];
  [-[THWInteractiveImageWidgetRep layout](self->_rep "layout")];
  [layout rectInRoot:?];
  [THWOverlayableZoomableCanvasController setNaturalFrame:stageCanvasController scale:"setNaturalFrame:scale:"];
  [(THWInteractiveImageWidgetRep *)self->_rep updateDiagramAnimated:0];
  [(THWExpandedRepController *)[(THWInteractiveImageWidgetRep *)self->_rep expandedRepController] expandedRepControllerInvalidateChildrenInPanel:1 invalidateWPAuto:1];
  [(THWExpandedRepController *)[(THWInteractiveImageWidgetRep *)self->_rep expandedRepController] expandedRepControllerInvalidateChildrenInPanel:2 invalidateWPAuto:0];
  [(THWExpandedRepController *)[(THWInteractiveImageWidgetRep *)self->_rep expandedRepController] expandedRepControllerUpdatePanelVisibility];
  stageCanvasController2 = [(THWInteractiveImageWidgetRep *)self->_rep stageCanvasController];

  [(THWOverlayableZoomableCanvasController *)stageCanvasController2 updateContainerInfosToDisplay];
}

@end