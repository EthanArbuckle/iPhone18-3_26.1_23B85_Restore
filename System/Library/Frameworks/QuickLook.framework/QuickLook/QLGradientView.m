@interface QLGradientView
- (BOOL)reversed;
- (_TtC9QuickLook14QLGradientView)init;
- (_TtC9QuickLook14QLGradientView)initWithCoder:(id)a3;
- (_TtC9QuickLook14QLGradientView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setReversed:(BOOL)a3;
@end

@implementation QLGradientView

- (BOOL)reversed
{
  v3 = OBJC_IVAR____TtC9QuickLook14QLGradientView_reversed;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setReversed:(BOOL)a3
{
  v4 = self;
  sub_23A7B83EC(a3);
}

- (_TtC9QuickLook14QLGradientView)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9QuickLook14QLGradientView_reversed) = 0;
  v3 = OBJC_IVAR____TtC9QuickLook14QLGradientView_gradientLayer;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v6.receiver = self;
  v6.super_class = type metadata accessor for QLGradientView();
  v4 = [(QLGradientView *)&v6 initWithFrame:0.0, 0.0, 0.0, 0.0];
  sub_23A7B87D0();

  return v4;
}

- (_TtC9QuickLook14QLGradientView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9QuickLook14QLGradientView_reversed) = 0;
  v3 = OBJC_IVAR____TtC9QuickLook14QLGradientView_gradientLayer;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  result = sub_23A7EED64();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for QLGradientView();
  v2 = v4.receiver;
  [(QLGradientView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC9QuickLook14QLGradientView_gradientLayer];
  [v2 bounds];
  [v3 setFrame_];
}

- (_TtC9QuickLook14QLGradientView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end