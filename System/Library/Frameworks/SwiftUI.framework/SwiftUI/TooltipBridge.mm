@interface TooltipBridge
- (_TtC7SwiftUI13TooltipBridge)init;
- (id)toolTipInteraction:(id)a3 configurationAtPoint:(CGPoint)a4;
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

- (id)toolTipInteraction:(id)a3 configurationAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = self;
  v9 = specialized TooltipBridge.toolTipInteraction(_:configurationAt:)(x, y);

  return v9;
}

@end