@interface HitMyRectButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)hitRect;
- (_TtC11MusicCoreUI15HitMyRectButton)initWithCoder:(id)coder;
- (_TtC11MusicCoreUI15HitMyRectButton)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (unint64_t)accessibilityTraits;
- (void)setAccessibilityTraits:(unint64_t)traits;
@end

@implementation HitMyRectButton

- (CGRect)hitRect
{
  selfCopy = self;
  v3 = HitMyRectButton.hitRect()();
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
    v9 = [(HitMyRectButton *)selfCopy pointInside:eventCopy withEvent:x, y];

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
  [(HitMyRectButton *)selfCopy hitRect];
  v9.x = x;
  v9.y = y;
  v7 = CGRectContainsPoint(v10, v9);

  return v7;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for HitMyRectButton();
  v2 = v7.receiver;
  accessibilityTraits = [(HitMyRectButton *)&v7 accessibilityTraits];
  v4 = UIAccessibilityTraitButton;

  if ((v4 & ~accessibilityTraits) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

- (void)setAccessibilityTraits:(unint64_t)traits
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for HitMyRectButton();
  [(HitMyRectButton *)&v4 setAccessibilityTraits:traits];
}

- (_TtC11MusicCoreUI15HitMyRectButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = self + OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v7[32] = -1;
  v9.receiver = self;
  v9.super_class = type metadata accessor for HitMyRectButton();
  return [(HitMyRectButton *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC11MusicCoreUI15HitMyRectButton)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = -1;
  v8.receiver = self;
  v8.super_class = type metadata accessor for HitMyRectButton();
  coderCopy = coder;
  v6 = [(HitMyRectButton *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end