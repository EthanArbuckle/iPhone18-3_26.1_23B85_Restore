@interface THWControlContainerRep
- (BOOL)allowTrackingContainedRep:(id)a3;
- (BOOL)masksToBounds;
- (id)controlHostRep;
- (id)viewControllerForView:(id)a3;
- (void)addAdditionalChildLayersToArray:(id)a3;
- (void)addChildViewsToArray:(id)a3;
- (void)wasAddedToParent;
- (void)willBeRemoved;
- (void)willBeRemovedFromParent;
@end

@implementation THWControlContainerRep

- (void)willBeRemoved
{
  v3.receiver = self;
  v3.super_class = THWControlContainerRep;
  [(THWControlContainerRep *)&v3 willBeRemoved];
  self->_repIsBeingRemoved = 1;
  if ([-[THWControlContainerRep canvas](self "canvas")])
  {
    [objc_msgSend(-[THWControlContainerRep interactiveCanvasController](self "interactiveCanvasController")];
  }
}

- (void)willBeRemovedFromParent
{
  v3.receiver = self;
  v3.super_class = THWControlContainerRep;
  [(THWControlContainerRep *)&v3 willBeRemovedFromParent];
  if (!self->_repIsBeingRemoved)
  {
    if ([-[THWControlContainerRep canvas](self "canvas")])
    {
      [objc_msgSend(-[THWControlContainerRep interactiveCanvasController](self "interactiveCanvasController")];
    }
  }
}

- (void)wasAddedToParent
{
  v3.receiver = self;
  v3.super_class = THWControlContainerRep;
  [(THWControlContainerRep *)&v3 wasAddedToParent];
  if ([-[THWControlContainerRep canvas](self "canvas")])
  {
    [objc_msgSend(-[THWControlContainerRep interactiveCanvasController](self "interactiveCanvasController")];
  }
}

- (BOOL)masksToBounds
{
  v3 = [(THWControlContainerRep *)self delegate];
  v6.receiver = self;
  v6.super_class = THWControlContainerRep;
  v4 = [(THWControlContainerRep *)&v6 masksToBounds];
  if (objc_opt_respondsToSelector())
  {
    return [(THWControlContainerRepDelegate *)v3 controlContainerMasksToBounds:self];
  }

  return v4;
}

- (void)addAdditionalChildLayersToArray:(id)a3
{
  v5 = [(THWControlContainerRep *)self delegate];
  if (objc_opt_respondsToSelector())
  {

    [(THWControlContainerRepDelegate *)v5 controlContainer:self addChildLayersToArray:a3];
  }
}

- (void)addChildViewsToArray:(id)a3
{
  v5 = [(THWControlContainerRep *)self delegate];
  if (objc_opt_respondsToSelector())
  {

    [(THWControlContainerRepDelegate *)v5 controlContainer:self addChildViewsToArray:a3];
  }
}

- (id)viewControllerForView:(id)a3
{
  v5 = [(THWControlContainerRep *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(THWControlContainerRepDelegate *)v5 controlContainer:self viewControllerForView:a3];
}

- (BOOL)allowTrackingContainedRep:(id)a3
{
  v5 = [(THWControlContainerRep *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  return [(THWControlContainerRepDelegate *)v5 controlContainer:self allowTrackingContainedRep:a3];
}

- (id)controlHostRep
{
  v3 = [(THWControlContainerRep *)self interactiveCanvasController];

  return [v3 ancestorRepOfRep:self orDelegateConformingToProtocol:&OBJC_PROTOCOL___THWControlHosting];
}

@end