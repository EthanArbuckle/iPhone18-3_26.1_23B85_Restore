@interface THWAnchoredWidgetRep
- (id)_controlHostRep;
- (id)delegateConformingToProtocol:(id)a3 forRep:(id)a4;
@end

@implementation THWAnchoredWidgetRep

- (id)_controlHostRep
{
  [-[THWAnchoredWidgetRep interactiveCanvasController](self "interactiveCanvasController")];

  return TSUProtocolCast();
}

- (id)delegateConformingToProtocol:(id)a3 forRep:(id)a4
{
  if (!protocol_isEqual(a3, &OBJC_PROTOCOL___THWControlHosting))
  {
    return 0;
  }

  return [(THWAnchoredWidgetRep *)self _controlHostRep];
}

@end