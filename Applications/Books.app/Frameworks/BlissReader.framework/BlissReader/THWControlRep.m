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
  v3 = [(THWControlRep *)self controlHostRep];
  v4 = [(THWControlRep *)self layout];

  [v3 control:v4 repWillBeRemoved:self];
}

- (id)controlHostRep
{
  v3 = [(THWControlRep *)self interactiveCanvasController];

  return [v3 ancestorRepOfRep:self orDelegateConformingToProtocol:&OBJC_PROTOCOL___THWControlHosting];
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
  v2 = [(THWControlRep *)self canvas];

  [v2 invalidateLayers];
}

@end