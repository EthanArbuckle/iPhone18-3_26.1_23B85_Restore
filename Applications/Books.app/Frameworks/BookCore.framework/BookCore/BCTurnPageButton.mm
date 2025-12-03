@interface BCTurnPageButton
- (BCTurnPageButtonAccessibilityDelegate)delegate;
- (BOOL)hovering;
- (BOOL)pressed;
- (BOOL)useMaterialFill;
- (NSString)accessibilityLabel;
- (UIColor)fillColor;
- (void)_traitCollectionDidChangeWithSender:(id)sender previousTraitCollection:(id)collection;
- (void)setFillColor:(id)color;
- (void)setHovering:(BOOL)hovering;
- (void)setPressed:(BOOL)pressed;
- (void)setUseMaterialFill:(BOOL)fill;
@end

@implementation BCTurnPageButton

- (BOOL)useMaterialFill
{
  v3 = OBJC_IVAR___BCTurnPageButton_useMaterialFill;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setUseMaterialFill:(BOOL)fill
{
  fillCopy = fill;
  v5 = OBJC_IVAR___BCTurnPageButton_useMaterialFill;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = fillCopy;
  if (v6 != fillCopy)
  {
    selfCopy = self;
    sub_1D7B1C();
  }
}

- (BOOL)hovering
{
  v3 = OBJC_IVAR___BCTurnPageButton_hovering;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHovering:(BOOL)hovering
{
  v5 = OBJC_IVAR___BCTurnPageButton_hovering;
  swift_beginAccess();
  *(self + v5) = hovering;
  selfCopy = self;
  sub_1D67F8();
}

- (BOOL)pressed
{
  v3 = OBJC_IVAR___BCTurnPageButton_pressed;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPressed:(BOOL)pressed
{
  pressedCopy = pressed;
  v5 = OBJC_IVAR___BCTurnPageButton_pressed;
  swift_beginAccess();
  *(self + v5) = pressedCopy;
  v6 = *(self + OBJC_IVAR___BCTurnPageButton_pressedLayer);
  if (v6)
  {
    v7 = 0.0;
    if (pressedCopy)
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

- (void)setFillColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_1D6F84(color);
}

- (BCTurnPageButtonAccessibilityDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)_traitCollectionDidChangeWithSender:(id)sender previousTraitCollection:(id)collection
{
  swift_unknownObjectRetain();
  collectionCopy = collection;
  selfCopy = self;
  sub_1EF444();
  swift_unknownObjectRelease();
  sub_1D7988();

  sub_18E310(&v8);
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
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