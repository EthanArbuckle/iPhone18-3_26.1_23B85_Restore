@interface PFEIDrawablePlacement
- (id)wrapPropertyValueWithState:(id)a3;
- (void)mapNonChildPlacementModeWithState:(id)a3;
@end

@implementation PFEIDrawablePlacement

- (void)mapNonChildPlacementModeWithState:(id)a3
{
  if ([a3 ancestorEntryWithReaderClass:objc_opt_class()] || (-[PFXDrawablePlacement setMode:](self, "setMode:", 3), xmlStrEqual(objc_msgSend(objc_msgSend(a3, "currentHtmlStackEntry"), "xmlElementName"), "table")))
  {

    [(PFXDrawablePlacement *)self setMode:2];
  }
}

- (id)wrapPropertyValueWithState:(id)a3
{
  v4.receiver = self;
  v4.super_class = PFEIDrawablePlacement;
  return [(PFXDrawablePlacement *)&v4 wrapPropertyValueWithState:a3];
}

@end