@interface NTKExactitudesHandView
- (UIColor)inlayColor;
- (_TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView)initWithCoder:(id)a3;
- (_TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView)initWithConfiguration:(id)a3 forDevice:(id)a4 maskedShadow:(BOOL)a5;
- (_TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView)initWithFrame:(CGRect)a3;
- (_TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView)initWithImage:(id)a3 forDevice:(id)a4;
- (void)_initWithImage:(id)a3 forDevice:(id)a4;
- (void)_layoutInlayLayer;
- (void)setInlayColor:(id)a3;
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
  v3 = [(NTKExactitudesHandView *)&v5 inlayColor];

  return v3;
}

- (void)setInlayColor:(id)a3
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
  v5 = a3;
  v6 = self;
  [(NTKExactitudesHandView *)&v7 setInlayColor:v5];
  [(NTKExactitudesHandView *)v6 _layoutInlayLayer:v7.receiver];
}

- (_TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView)initWithConfiguration:(id)a3 forDevice:(id)a4 maskedShadow:(BOOL)a5
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_1DAF8(a3, a4, a5);

  return v8;
}

- (_TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (_TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView)initWithCoder:(id)a3
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

- (void)_initWithImage:(id)a3 forDevice:(id)a4
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = [v7 imageWithRenderingMode:1];
  v12.receiver = v9;
  v12.super_class = type metadata accessor for NTKExactitudesHandView();
  v11 = v10;
  [(NTKExactitudesHandView *)&v12 _initWithImage:v11 forDevice:v8];
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

  v3 = self;
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
  v3 = self;
  [(NTKExactitudesHandView *)&v4 setNeedsLayout];
  [(NTKExactitudesHandView *)v3 _layoutInlayLayer:v4.receiver];
}

- (_TtC24NTKExactitudesFaceBundle22NTKExactitudesHandView)initWithImage:(id)a3 forDevice:(id)a4
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