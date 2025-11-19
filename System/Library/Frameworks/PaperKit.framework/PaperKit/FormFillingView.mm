@interface FormFillingView
- (_TtC8PaperKit15FormFillingView)initWithFrame:(CGRect)a3;
- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)doubleTap:(id)a3;
- (void)tap:(id)a3;
@end

@implementation FormFillingView

- (void)tap:(id)a3
{
  v4 = a3;
  v5 = self;
  FormFillingView.tap(_:)(v4);
}

- (void)doubleTap:(id)a3
{
  v4 = a3;
  v5 = self;
  FormFillingView.doubleTap(_:)(v4);
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v15.value.super.isa = a4;
  FormFillingView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10.super.super.isa = specialized FormFillingView.editMenuInteraction(_:menuFor:suggestedActions:)().super.super.isa;

  return v10.super.super.isa;
}

- (_TtC8PaperKit15FormFillingView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end