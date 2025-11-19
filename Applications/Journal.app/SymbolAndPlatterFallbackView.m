@interface SymbolAndPlatterFallbackView
- (_TtC7Journal28SymbolAndPlatterFallbackView)initWithCoder:(id)a3;
- (_TtC7Journal28SymbolAndPlatterFallbackView)initWithFrame:(CGRect)a3;
@end

@implementation SymbolAndPlatterFallbackView

- (_TtC7Journal28SymbolAndPlatterFallbackView)initWithFrame:(CGRect)a3
{
  v4 = OBJC_IVAR____TtC7Journal28SymbolAndPlatterFallbackView_platterView;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC7Journal28SymbolAndPlatterFallbackView_platterLabel;
  *(&self->super.super.super.super.isa + v5) = [objc_allocWithZone(UILabel) init];
  v6 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal28SymbolAndPlatterFallbackView_platterText);
  v7 = type metadata accessor for SymbolAndPlatterFallbackView();
  *v6 = 0;
  v6[1] = 0;
  v10.receiver = self;
  v10.super_class = v7;
  v8 = [(CanvasFallbackAssetView *)&v10 initWithFrame:0.0, 0.0, 0.0, 0.0];
  sub_10006E64C();

  return v8;
}

- (_TtC7Journal28SymbolAndPlatterFallbackView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC7Journal28SymbolAndPlatterFallbackView_platterView;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC7Journal28SymbolAndPlatterFallbackView_platterLabel;
  *(&self->super.super.super.super.isa + v5) = [objc_allocWithZone(UILabel) init];
  v6 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal28SymbolAndPlatterFallbackView_platterText);
  *v6 = 0;
  v6[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end