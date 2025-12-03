@interface AudioTraitButton
- (BOOL)isHighlighted;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)hitRect;
- (_TtC5Music16AudioTraitButton)initWithCoder:(id)coder;
- (_TtC5Music16AudioTraitButton)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation AudioTraitButton

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AudioTraitButton();
  return [(AudioTraitButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_1001CBC78(highlighted);
}

- (CGRect)hitRect
{
  selfCopy = self;
  v3 = sub_1001CBD68();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  if (UIViewIgnoresTouchEvents())
  {

    selfCopy = eventCopy;
  }

  else
  {
    v9 = [(AudioTraitButton *)selfCopy pointInside:eventCopy withEvent:x, y];

    if (v9)
    {
      goto LABEL_5;
    }
  }

  selfCopy = 0;
LABEL_5:

  return selfCopy;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  selfCopy = self;
  [(AudioTraitButton *)selfCopy hitRect];
  v9.x = x;
  v9.y = y;
  v7 = CGRectContainsPoint(v10, v9);

  return v7;
}

- (_TtC5Music16AudioTraitButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Music16AudioTraitButton_isShowingDisclosure) = 0;
  v8 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Music16AudioTraitButton_hitRectMinimumSize);
  v9 = type metadata accessor for AudioTraitButton();
  *v8 = 0;
  v8[1] = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(AudioTraitButton *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC5Music16AudioTraitButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Music16AudioTraitButton_isShowingDisclosure) = 0;
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Music16AudioTraitButton_hitRectMinimumSize);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AudioTraitButton();
  coderCopy = coder;
  v6 = [(AudioTraitButton *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end