@interface BCTurnPageButton
- (BCTurnPageButtonAccessibilityDelegate)delegate;
- (BOOL)hovering;
- (BOOL)pressed;
- (BOOL)useMaterialFill;
- (NSString)accessibilityLabel;
- (UIColor)fillColor;
- (void)_traitCollectionDidChangeWithSender:(id)a3 previousTraitCollection:(id)a4;
- (void)setFillColor:(id)a3;
- (void)setHovering:(BOOL)a3;
- (void)setPressed:(BOOL)a3;
- (void)setUseMaterialFill:(BOOL)a3;
@end

@implementation BCTurnPageButton

- (BOOL)useMaterialFill
{
  v3 = OBJC_IVAR___BCTurnPageButton_useMaterialFill;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setUseMaterialFill:(BOOL)a3
{
  v3 = a3;
  v5 = OBJC_IVAR___BCTurnPageButton_useMaterialFill;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v3;
  if (v6 != v3)
  {
    v7 = self;
    sub_1D7B1C();
  }
}

- (BOOL)hovering
{
  v3 = OBJC_IVAR___BCTurnPageButton_hovering;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHovering:(BOOL)a3
{
  v5 = OBJC_IVAR___BCTurnPageButton_hovering;
  swift_beginAccess();
  *(self + v5) = a3;
  v6 = self;
  sub_1D67F8();
}

- (BOOL)pressed
{
  v3 = OBJC_IVAR___BCTurnPageButton_pressed;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPressed:(BOOL)a3
{
  v3 = a3;
  v5 = OBJC_IVAR___BCTurnPageButton_pressed;
  swift_beginAccess();
  *(self + v5) = v3;
  v6 = *(self + OBJC_IVAR___BCTurnPageButton_pressedLayer);
  if (v6)
  {
    v7 = 0.0;
    if (v3)
    {
      *&v7 = 1.0;
    }

    [v6 setOpacity:v7];
  }
}

- (UIColor)fillColor
{
  v3 = OBJC_IVAR___BCTurnPageButton_fillColor;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setFillColor:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1D6F84(a3);
}

- (BCTurnPageButtonAccessibilityDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)_traitCollectionDidChangeWithSender:(id)a3 previousTraitCollection:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  sub_1EF444();
  swift_unknownObjectRelease();
  sub_1D7988();

  sub_18E310(&v8);
}

- (NSString)accessibilityLabel
{
  v2 = self;
  TurnPageButton.accessibilityLabel.getter();
  v4 = v3;

  if (v4)
  {
    v5 = sub_1EEED4();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end