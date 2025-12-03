@interface InteractionHandlingView.UIViewType
- (_TtCV6Charts23InteractionHandlingView10UIViewType)initWithFrame:(CGRect)frame;
- (void)handleDragGesture:(id)gesture;
- (void)handleHover:(id)hover;
@end

@implementation InteractionHandlingView.UIViewType

- (void)handleDragGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_1AAEBBC58(gestureCopy);
}

- (void)handleHover:(id)hover
{
  hoverCopy = hover;
  selfCopy = self;
  sub_1AAEBBEF0(hoverCopy);
}

- (_TtCV6Charts23InteractionHandlingView10UIViewType)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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