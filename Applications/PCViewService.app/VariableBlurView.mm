@interface VariableBlurView
- (_TtC13PCViewService16VariableBlurView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation VariableBlurView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for VariableBlurView();
  v2 = v4.receiver;
  [(VariableBlurView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC13PCViewService16VariableBlurView_backdropLayer];
  [v2 bounds];
  [v3 setFrame:?];
}

- (_TtC13PCViewService16VariableBlurView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end