@interface FMModernButton
- (BOOL)isSelected;
- (_TtC6FindMy14FMModernButton)initWithCoder:(id)a3;
- (_TtC6FindMy14FMModernButton)initWithFrame:(CGRect)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation FMModernButton

- (_TtC6FindMy14FMModernButton)initWithCoder:(id)a3
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

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMModernButton();
  v4 = v7.receiver;
  [(FMModernButton *)&v7 setSelected:v3];
  if ([v4 isSelected])
  {
    v5 = *&v4[OBJC_IVAR____TtC6FindMy14FMModernButton_style + 24];
  }

  else
  {
    v5 = [objc_opt_self() clearColor];
  }

  v6 = v5;
  [v4 setBackgroundColor:v5];
}

- (_TtC6FindMy14FMModernButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end