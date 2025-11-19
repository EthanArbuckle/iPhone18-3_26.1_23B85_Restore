@interface FMStickyRoundedButton
- (BOOL)isSelected;
- (_TtC6FindMy21FMStickyRoundedButton)initWithCoder:(id)a3;
- (_TtC6FindMy21FMStickyRoundedButton)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)setSelected:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation FMStickyRoundedButton

- (_TtC6FindMy21FMStickyRoundedButton)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v3 = qword_1006AEAF8;
  v4 = self;
  v6 = v4;
  if (v3 != -1)
  {
    swift_once();
    v4 = v6;
  }

  [(FMStickyRoundedButton *)v4 setTitleColor:qword_1006D4068 forState:0];
  v5 = qword_1006D4058;
  [(FMStickyRoundedButton *)v6 setTitleColor:qword_1006D4058 forState:1];
  [(FMStickyRoundedButton *)v6 setTitleColor:v5 forState:4];
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  v7 = self;
  sub_1001C9850(v4, v5, v6, height);
}

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMStickyRoundedButton();
  return [(FMStickyRoundedButton *)&v3 isSelected];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMStickyRoundedButton();
  v4 = v5.receiver;
  [(FMStickyRoundedButton *)&v5 setSelected:v3];
  [v4 setNeedsDisplay];
}

- (_TtC6FindMy21FMStickyRoundedButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end