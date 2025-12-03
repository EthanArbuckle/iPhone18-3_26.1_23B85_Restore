@interface BCCapsuleTurnPageButton
- (BCCapsuleTurnPageButton)initWithCoder:(id)coder;
- (BCCapsuleTurnPageButton)initWithFrame:(CGRect)frame;
- (BCTurnPageButtonAccessibilityDelegate)delegate;
- (BOOL)isHovering;
- (NSString)accessibilityLabel;
- (void)accessibilityElementDidBecomeFocused;
- (void)accessibilityElementDidLoseFocus;
- (void)setIsHovering:(BOOL)hovering;
@end

@implementation BCCapsuleTurnPageButton

- (BCTurnPageButtonAccessibilityDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)isHovering
{
  v3 = OBJC_IVAR___BCCapsuleTurnPageButton_isHovering;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsHovering:(BOOL)hovering
{
  hoveringCopy = hovering;
  v5 = OBJC_IVAR___BCCapsuleTurnPageButton_isHovering;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = hoveringCopy;
  if (v6 != hoveringCopy)
  {
    [(BCCapsuleTurnPageButton *)self setNeedsUpdateConfiguration];
  }
}

- (BCCapsuleTurnPageButton)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___BCCapsuleTurnPageButton_isHovering) = 0;
  result = sub_1EF614();
  __break(1u);
  return result;
}

- (BCCapsuleTurnPageButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
  [(BCCapsuleTurnPageButton *)selfCopy effectiveUserInterfaceLayoutDirection];
  sub_1CEECC();

  v3 = sub_1EEED4();

  return v3;
}

- (void)accessibilityElementDidBecomeFocused
{
  selfCopy = self;
  CapsuleTurnPageButton.accessibilityElementDidBecomeFocused()();
}

- (void)accessibilityElementDidLoseFocus
{
  selfCopy = self;
  CapsuleTurnPageButton.accessibilityElementDidLoseFocus()();
}

@end