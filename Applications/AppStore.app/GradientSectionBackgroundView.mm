@interface GradientSectionBackgroundView
- (_TtC8AppStore29GradientSectionBackgroundView)initWithCoder:(id)coder;
- (_TtC8AppStore29GradientSectionBackgroundView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation GradientSectionBackgroundView

- (_TtC8AppStore29GradientSectionBackgroundView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC8AppStore29GradientSectionBackgroundView_gradientView;
  *(&self->super.super.super.super.isa + v8) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v11.receiver = self;
  v11.super_class = type metadata accessor for GradientSectionBackgroundView();
  height = [(GradientSectionBackgroundView *)&v11 initWithFrame:x, y, width, height];
  [(GradientSectionBackgroundView *)height addSubview:*(&height->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore29GradientSectionBackgroundView_gradientView)];
  return height;
}

- (_TtC8AppStore29GradientSectionBackgroundView)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC8AppStore29GradientSectionBackgroundView_gradientView;
  *(&self->super.super.super.super.isa + v3) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for GradientSectionBackgroundView();
  v2 = v4.receiver;
  [(GradientSectionBackgroundView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8AppStore29GradientSectionBackgroundView_gradientView];
  [v2 bounds];
  [v3 setFrame:?];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for GradientSectionBackgroundView();
  v2 = v4.receiver;
  [(GradientSectionBackgroundView *)&v4 prepareForReuse];
  sub_100028BB8();
  v3 = static UIColor.defaultBackground.getter();
  [v2 setBackgroundColor:{v3, v4.receiver, v4.super_class}];
}

@end