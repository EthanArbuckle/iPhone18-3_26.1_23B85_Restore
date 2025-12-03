@interface APUISystemApertureAccessoryView
- (CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC18ActivityProgressUI31APUISystemApertureAccessoryView)initWithCoder:(id)coder;
- (_TtC18ActivityProgressUI31APUISystemApertureAccessoryView)initWithFrame:(CGRect)frame;
- (void)setFrame:(CGRect)frame;
@end

@implementation APUISystemApertureAccessoryView

- (_TtC18ActivityProgressUI31APUISystemApertureAccessoryView)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for APUISystemApertureAccessoryView();
  [(APUISystemApertureAccessoryView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for APUISystemApertureAccessoryView();
  v7 = v10.receiver;
  [(APUISystemApertureAccessoryView *)&v10 setFrame:x, y, width, height];
  view = [*&v7[OBJC_IVAR____TtC18ActivityProgressUI31APUISystemApertureAccessoryView_hostingController] view];
  if (view)
  {
    v9 = view;
    [v7 bounds];
    [v9 setFrame:?];
  }

  else
  {
    __break(1u);
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC18ActivityProgressUI31APUISystemApertureAccessoryView_hostingController) preferredContentSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtC18ActivityProgressUI31APUISystemApertureAccessoryView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end