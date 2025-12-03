@interface THWAnchoredWidgetRep
- (id)_controlHostRep;
- (id)delegateConformingToProtocol:(id)protocol forRep:(id)rep;
@end

@implementation THWAnchoredWidgetRep

- (id)_controlHostRep
{
  [-[THWAnchoredWidgetRep interactiveCanvasController](self "interactiveCanvasController")];

  return TSUProtocolCast();
}

- (id)delegateConformingToProtocol:(id)protocol forRep:(id)rep
{
  if (!protocol_isEqual(protocol, &OBJC_PROTOCOL___THWControlHosting))
  {
    return 0;
  }

  return [(THWAnchoredWidgetRep *)self _controlHostRep];
}

@end