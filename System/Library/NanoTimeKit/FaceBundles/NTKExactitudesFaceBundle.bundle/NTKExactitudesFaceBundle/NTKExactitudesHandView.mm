@interface NTKExactitudesHandView
- (UIColor)inlayColor;
- (_TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView)initWithCoder:(id)coder;
- (_TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView)initWithConfiguration:(id)configuration forDevice:(id)device maskedShadow:(BOOL)shadow;
- (_TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView)initWithFrame:(CGRect)frame;
- (_TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView)initWithImage:(id)image forDevice:(id)device;
- (void)_initWithImage:(id)image forDevice:(id)device;
- (void)_layoutInlayLayer;
- (void)setInlayColor:(id)color;
- (void)setNeedsLayout;
@end

@implementation NTKExactitudesHandView

- (UIColor)inlayColor
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for NTKExactitudesHandView();
  inlayColor = [(NTKExactitudesHandView *)&v5 inlayColor];

  return inlayColor;
}

- (void)setInlayColor:(id)color
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for NTKExactitudesHandView();
  colorCopy = color;
  selfCopy = self;
  [(NTKExactitudesHandView *)&v7 setInlayColor:colorCopy];
  [(NTKExactitudesHandView *)selfCopy _layoutInlayLayer:v7.receiver];
}

- (_TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView)initWithConfiguration:(id)configuration forDevice:(id)device maskedShadow:(BOOL)shadow
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_1DAF8(configuration, device, shadow);

  return v8;
}

- (_TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_1DFB4(x, y, width, height);

  return v7;
}

- (_TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView)initWithCoder:(id)coder
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_backdropInlayColor;
  *&self->NTKHandView_opaque[v4] = [objc_opt_self() whiteColor];
  *&self->NTKHandView_opaque[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_inlayAlpha] = 0x3FE0000000000000;
  *&self->NTKHandView_opaque[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_backdropInlayAlpha] = 0x3FF0000000000000;
  v5 = &self->NTKHandView_opaque[OBJC_IVAR____TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView_backdropInlayInsets];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  result = sub_217EC();
  __break(1u);
  return result;
}

- (void)_initWithImage:(id)image forDevice:(id)device
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  imageCopy = image;
  deviceCopy = device;
  selfCopy = self;
  v10 = [imageCopy imageWithRenderingMode:1];
  v12.receiver = selfCopy;
  v12.super_class = type metadata accessor for NTKExactitudesHandView();
  v11 = v10;
  [(NTKExactitudesHandView *)&v12 _initWithImage:v11 forDevice:deviceCopy];
}

- (void)_layoutInlayLayer
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_1E56C();
}

- (void)setNeedsLayout
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4.receiver = self;
  v4.super_class = type metadata accessor for NTKExactitudesHandView();
  selfCopy = self;
  [(NTKExactitudesHandView *)&v4 setNeedsLayout];
  [(NTKExactitudesHandView *)selfCopy _layoutInlayLayer:v4.receiver];
}

- (_TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView)initWithImage:(id)image forDevice:(id)device
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end