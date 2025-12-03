@interface OverlayContentContainerView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (_TtC22SubscribePageExtensionP33_C7ACA0E60C18F74DCB977B6E66308C5727OverlayContentContainerView)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtensionP33_C7ACA0E60C18F74DCB977B6E66308C5727OverlayContentContainerView)initWithFrame:(CGRect)frame;
@end

@implementation OverlayContentContainerView

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  eventCopy = event;
  y = inside.y;
  x = inside.x;
  eventCopy2 = event;
  selfCopy = self;
  LOBYTE(eventCopy) = sub_1004F2FF8(eventCopy, x, y);

  return eventCopy & 1;
}

- (_TtC22SubscribePageExtensionP33_C7ACA0E60C18F74DCB977B6E66308C5727OverlayContentContainerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(OverlayContentContainerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC22SubscribePageExtensionP33_C7ACA0E60C18F74DCB977B6E66308C5727OverlayContentContainerView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(OverlayContentContainerView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end