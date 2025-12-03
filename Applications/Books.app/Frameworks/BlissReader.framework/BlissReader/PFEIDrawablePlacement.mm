@interface PFEIDrawablePlacement
- (id)wrapPropertyValueWithState:(id)state;
- (void)mapNonChildPlacementModeWithState:(id)state;
@end

@implementation PFEIDrawablePlacement

- (void)mapNonChildPlacementModeWithState:(id)state
{
  if ([state ancestorEntryWithReaderClass:objc_opt_class()] || (-[PFXDrawablePlacement setMode:](self, "setMode:", 3), xmlStrEqual(objc_msgSend(objc_msgSend(state, "currentHtmlStackEntry"), "xmlElementName"), "table")))
  {

    [(PFXDrawablePlacement *)self setMode:2];
  }
}

- (id)wrapPropertyValueWithState:(id)state
{
  v4.receiver = self;
  v4.super_class = PFEIDrawablePlacement;
  return [(PFXDrawablePlacement *)&v4 wrapPropertyValueWithState:state];
}

@end