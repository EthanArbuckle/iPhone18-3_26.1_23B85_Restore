@interface TooltipBridge
- (_TtC7SwiftUI13TooltipBridge)init;
- (id)toolTipInteraction:(id)interaction configurationAtPoint:(CGPoint)point;
@end

@implementation TooltipBridge

- (_TtC7SwiftUI13TooltipBridge)init
{
  ObjectType = swift_getObjectType();
  *&self->host[OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_hasTooltipSeed) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_tooltipInteraction) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(TooltipBridge *)&v5 init];
}

- (id)toolTipInteraction:(id)interaction configurationAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  interactionCopy = interaction;
  selfCopy = self;
  v9 = specialized TooltipBridge.toolTipInteraction(_:configurationAt:)(x, y);

  return v9;
}

@end