@interface THWControlRep
- (id)controlHostRep;
- (void)invalidateLayers;
- (void)wasAddedToParent;
- (void)willBeRemoved;
- (void)willBeRemovedFromParent;
@end

@implementation THWControlRep

- (void)willBeRemoved
{
  self->_repIsBeingRemoved = 1;
  controlHostRep = [(THWControlRep *)self controlHostRep];
  layout = [(THWControlRep *)self layout];

  [controlHostRep control:layout repWillBeRemoved:self];
}

- (id)controlHostRep
{
  interactiveCanvasController = [(THWControlRep *)self interactiveCanvasController];

  return [interactiveCanvasController ancestorRepOfRep:self orDelegateConformingToProtocol:&OBJC_PROTOCOL___THWControlHosting];
}

- (void)willBeRemovedFromParent
{
  v3.receiver = self;
  v3.super_class = THWControlRep;
  [(THWControlRep *)&v3 willBeRemovedFromParent];
  if (!self->_repIsBeingRemoved)
  {
    [-[THWControlRep controlHostRep](self "controlHostRep")];
  }
}

- (void)wasAddedToParent
{
  v3.receiver = self;
  v3.super_class = THWControlRep;
  [(THWControlRep *)&v3 wasAddedToParent];
  [-[THWControlRep controlHostRep](self "controlHostRep")];
}

- (void)invalidateLayers
{
  canvas = [(THWControlRep *)self canvas];

  [canvas invalidateLayers];
}

@end