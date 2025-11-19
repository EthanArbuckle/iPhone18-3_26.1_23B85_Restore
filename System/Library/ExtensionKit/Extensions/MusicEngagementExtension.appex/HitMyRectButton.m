@interface HitMyRectButton
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)hitRect;
- (_TtC11MusicCoreUI15HitMyRectButton)initWithCoder:(id)a3;
- (_TtC11MusicCoreUI15HitMyRectButton)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (unint64_t)accessibilityTraits;
- (void)setAccessibilityTraits:(unint64_t)a3;
@end

@implementation HitMyRectButton

- (CGRect)hitRect
{
  v2 = self;
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

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = self;
  if (UIViewIgnoresTouchEvents())
  {

    v8 = v7;
  }

  else
  {
    v9 = [(HitMyRectButton *)v8 pointInside:v7 withEvent:x, y];

    if (v9)
    {
      goto LABEL_5;
    }
  }

  v8 = 0;
LABEL_5:

  return v8;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  [(HitMyRectButton *)v6 hitRect];
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
  v3 = [(HitMyRectButton *)&v7 accessibilityTraits];
  v4 = UIAccessibilityTraitButton;

  if ((v4 & ~v3) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5 | v3;
}

- (void)setAccessibilityTraits:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for HitMyRectButton();
  [(HitMyRectButton *)&v4 setAccessibilityTraits:a3];
}

- (_TtC11MusicCoreUI15HitMyRectButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self + OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v7[32] = -1;
  v9.receiver = self;
  v9.super_class = type metadata accessor for HitMyRectButton();
  return [(HitMyRectButton *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC11MusicCoreUI15HitMyRectButton)initWithCoder:(id)a3
{
  v4 = self + OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = -1;
  v8.receiver = self;
  v8.super_class = type metadata accessor for HitMyRectButton();
  v5 = a3;
  v6 = [(HitMyRectButton *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end