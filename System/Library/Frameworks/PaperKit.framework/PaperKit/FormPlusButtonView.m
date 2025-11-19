@interface FormPlusButtonView
- (_TtC8PaperKit18FormPlusButtonView)initWithCoder:(id)a3;
- (_TtC8PaperKit18FormPlusButtonView)initWithFrame:(CGRect)a3;
@end

@implementation FormPlusButtonView

- (_TtC8PaperKit18FormPlusButtonView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v7 = [(FormPlusButtonView *)&v9 initWithFrame:x, y, width, height];
  FormPlusButtonView.configureGlassButton()();

  return v7;
}

- (_TtC8PaperKit18FormPlusButtonView)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end