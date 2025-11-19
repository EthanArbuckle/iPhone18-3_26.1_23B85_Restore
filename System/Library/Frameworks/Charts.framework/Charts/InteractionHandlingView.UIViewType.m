@interface InteractionHandlingView.UIViewType
- (_TtCV6Charts23InteractionHandlingView10UIViewType)initWithFrame:(CGRect)a3;
- (void)handleDragGesture:(id)a3;
- (void)handleHover:(id)a3;
@end

@implementation InteractionHandlingView.UIViewType

- (void)handleDragGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1AAEBBC58(v4);
}

- (void)handleHover:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1AAEBBEF0(v4);
}

- (_TtCV6Charts23InteractionHandlingView10UIViewType)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = (&self->super.super.super.isa + OBJC_IVAR____TtCV6Charts23InteractionHandlingView10UIViewType_onChanged);
  *v8 = 0;
  v8[1] = 0;
  v9 = (&self->super.super.super.isa + OBJC_IVAR____TtCV6Charts23InteractionHandlingView10UIViewType_onEnd);
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR____TtCV6Charts23InteractionHandlingView10UIViewType_panDelegate;
  *(&self->super.super.super.isa + v10) = [objc_allocWithZone(type metadata accessor for InteractionHandlingView.UIViewType.PanDelegate()) init];
  v12.receiver = self;
  v12.super_class = type metadata accessor for InteractionHandlingView.UIViewType();
  return [(InteractionHandlingView.UIViewType *)&v12 initWithFrame:x, y, width, height];
}

@end