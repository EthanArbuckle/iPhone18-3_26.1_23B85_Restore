@interface AUGenericViewIntegerParameterCell
- (UIButton)editButton;
- (UIButton)valueButton;
- (_TtC12CoreAudioKit33AUGenericViewIntegerParameterCell)initWithCoder:(id)coder;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation AUGenericViewIntegerParameterCell

- (UIButton)editButton
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIButton)valueButton
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)accessibilityIncrement
{
  selfCopy = self;
  sub_23714F07C();
}

- (void)accessibilityDecrement
{
  selfCopy = self;
  sub_23714F15C();
}

- (_TtC12CoreAudioKit33AUGenericViewIntegerParameterCell)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtC12CoreAudioKit33AUGenericViewIntegerParameterCell_indexPath;
  v6 = sub_23719641C();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v10.receiver = self;
  v10.super_class = type metadata accessor for AUGenericViewIntegerParameterCell();
  coderCopy = coder;
  v8 = [(AUGenericViewParameterCellBase *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end