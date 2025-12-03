@interface THWControlContainerRep
- (BOOL)allowTrackingContainedRep:(id)rep;
- (BOOL)masksToBounds;
- (id)controlHostRep;
- (id)viewControllerForView:(id)view;
- (void)addAdditionalChildLayersToArray:(id)array;
- (void)addChildViewsToArray:(id)array;
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
  delegate = [(THWControlContainerRep *)self delegate];
  v6.receiver = self;
  v6.super_class = THWControlContainerRep;
  masksToBounds = [(THWControlContainerRep *)&v6 masksToBounds];
  if (objc_opt_respondsToSelector())
  {
    return [(THWControlContainerRepDelegate *)delegate controlContainerMasksToBounds:self];
  }

  return masksToBounds;
}

- (void)addAdditionalChildLayersToArray:(id)array
{
  delegate = [(THWControlContainerRep *)self delegate];
  if (objc_opt_respondsToSelector())
  {

    [(THWControlContainerRepDelegate *)delegate controlContainer:self addChildLayersToArray:array];
  }
}

- (void)addChildViewsToArray:(id)array
{
  delegate = [(THWControlContainerRep *)self delegate];
  if (objc_opt_respondsToSelector())
  {

    [(THWControlContainerRepDelegate *)delegate controlContainer:self addChildViewsToArray:array];
  }
}

- (id)viewControllerForView:(id)view
{
  delegate = [(THWControlContainerRep *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(THWControlContainerRepDelegate *)delegate controlContainer:self viewControllerForView:view];
}

- (BOOL)allowTrackingContainedRep:(id)rep
{
  delegate = [(THWControlContainerRep *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  return [(THWControlContainerRepDelegate *)delegate controlContainer:self allowTrackingContainedRep:rep];
}

- (id)controlHostRep
{
  interactiveCanvasController = [(THWControlContainerRep *)self interactiveCanvasController];

  return [interactiveCanvasController ancestorRepOfRep:self orDelegateConformingToProtocol:&OBJC_PROTOCOL___THWControlHosting];
}

@end