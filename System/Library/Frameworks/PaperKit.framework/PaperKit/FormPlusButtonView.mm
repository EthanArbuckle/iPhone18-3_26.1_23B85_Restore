@interface FormPlusButtonView
- (_TtC8PaperKit18FormPlusButtonView)initWithCoder:(id)coder;
- (_TtC8PaperKit18FormPlusButtonView)initWithFrame:(CGRect)frame;
@end

@implementation FormPlusButtonView

- (_TtC8PaperKit18FormPlusButtonView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  height = [(FormPlusButtonView *)&v9 initWithFrame:x, y, width, height];
  FormPlusButtonView.configureGlassButton()();

  return height;
}

- (_TtC8PaperKit18FormPlusButtonView)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end