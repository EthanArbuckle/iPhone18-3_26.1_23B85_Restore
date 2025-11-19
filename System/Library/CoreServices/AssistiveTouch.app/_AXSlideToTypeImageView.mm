@interface _AXSlideToTypeImageView
- (UIColor)tintColor;
- (_AXSlideToTypeImageView)initWithCoder:(id)a3;
- (void)setTintColor:(id)a3;
@end

@implementation _AXSlideToTypeImageView

- (_AXSlideToTypeImageView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____AXSlideToTypeImageView_slideToTypeImageHostingController;
  static Color.white.getter();
  v5 = objc_allocWithZone(type metadata accessor for SlideToTypeHostingController(0));
  *(&self->super.super.super.isa + v4) = UIHostingController.init(rootView:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SlideToTypeImageView();
  v2 = [(_AXSlideToTypeImageView *)&v4 tintColor];

  return v2;
}

- (void)setTintColor:(id)a3
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for SlideToTypeImageView();
  v4 = v10.receiver;
  v5 = a3;
  [(_AXSlideToTypeImageView *)&v10 setTintColor:v5];
  if ([v4 tintColor])
  {
    v6 = Color.init(uiColor:)();
    v7 = dispatch thunk of UIHostingController.rootView.modify();
    *(v8 + 24) = v6;

    v7(&v9, 0);
  }

  else
  {
    __break(1u);
  }
}

@end