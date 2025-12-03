@interface FMStickyRoundedButton
- (BOOL)isSelected;
- (_TtC6FindMy21FMStickyRoundedButton)initWithCoder:(id)coder;
- (_TtC6FindMy21FMStickyRoundedButton)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)setSelected:(BOOL)selected;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FMStickyRoundedButton

- (_TtC6FindMy21FMStickyRoundedButton)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  v3 = qword_1006AEAF8;
  selfCopy = self;
  v6 = selfCopy;
  if (v3 != -1)
  {
    swift_once();
    selfCopy = v6;
  }

  [(FMStickyRoundedButton *)selfCopy setTitleColor:qword_1006D4068 forState:0];
  v5 = qword_1006D4058;
  [(FMStickyRoundedButton *)v6 setTitleColor:qword_1006D4058 forState:1];
  [(FMStickyRoundedButton *)v6 setTitleColor:v5 forState:4];
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  selfCopy = self;
  sub_1001C9850(v4, v5, v6, height);
}

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMStickyRoundedButton();
  return [(FMStickyRoundedButton *)&v3 isSelected];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMStickyRoundedButton();
  v4 = v5.receiver;
  [(FMStickyRoundedButton *)&v5 setSelected:selectedCopy];
  [v4 setNeedsDisplay];
}

- (_TtC6FindMy21FMStickyRoundedButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end