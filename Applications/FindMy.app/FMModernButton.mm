@interface FMModernButton
- (BOOL)isSelected;
- (_TtC6FindMy14FMModernButton)initWithCoder:(id)coder;
- (_TtC6FindMy14FMModernButton)initWithFrame:(CGRect)frame;
- (void)setSelected:(BOOL)selected;
@end

@implementation FMModernButton

- (_TtC6FindMy14FMModernButton)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMModernButton();
  return [(FMModernButton *)&v3 isSelected];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMModernButton();
  v4 = v7.receiver;
  [(FMModernButton *)&v7 setSelected:selectedCopy];
  if ([v4 isSelected])
  {
    clearColor = *&v4[OBJC_IVAR____TtC6FindMy14FMModernButton_style + 24];
  }

  else
  {
    clearColor = [objc_opt_self() clearColor];
  }

  v6 = clearColor;
  [v4 setBackgroundColor:clearColor];
}

- (_TtC6FindMy14FMModernButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end