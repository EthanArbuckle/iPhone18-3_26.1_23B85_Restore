@interface _AXSlideToTypeImageView
- (UIColor)tintColor;
- (_AXSlideToTypeImageView)initWithCoder:(id)coder;
- (void)setTintColor:(id)color;
@end

@implementation _AXSlideToTypeImageView

- (_AXSlideToTypeImageView)initWithCoder:(id)coder
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
  tintColor = [(_AXSlideToTypeImageView *)&v4 tintColor];

  return tintColor;
}

- (void)setTintColor:(id)color
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for SlideToTypeImageView();
  v4 = v10.receiver;
  colorCopy = color;
  [(_AXSlideToTypeImageView *)&v10 setTintColor:colorCopy];
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