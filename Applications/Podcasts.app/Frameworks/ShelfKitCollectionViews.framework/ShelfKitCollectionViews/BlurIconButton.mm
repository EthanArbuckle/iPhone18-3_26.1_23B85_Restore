@interface BlurIconButton
- (BOOL)accessibilityActivate;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation BlurIconButton

- (void)layoutSubviews
{
  selfCopy = self;
  sub_21A174();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  sub_21A3F0();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  eventCopy = event;
  y = inside.y;
  x = inside.x;
  eventCopy2 = event;
  selfCopy = self;
  LOBYTE(eventCopy) = sub_21A534(eventCopy, x, y);

  return eventCopy & 1;
}

- (BOOL)accessibilityActivate
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_handler);
  if (v2)
  {
    v3 = *&self->handler[OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_handler];
    selfCopy = self;
    sub_9FF04(v2);
    v2(selfCopy);

    sub_2B8D4(v2, v3);
  }

  return 1;
}

@end