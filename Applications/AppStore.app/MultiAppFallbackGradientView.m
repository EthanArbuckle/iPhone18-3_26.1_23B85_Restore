@interface MultiAppFallbackGradientView
- (_TtC8AppStore28MultiAppFallbackGradientView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation MultiAppFallbackGradientView

- (_TtC8AppStore28MultiAppFallbackGradientView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC8AppStore28MultiAppFallbackGradientView_overlayGradientView;
  *(&self->super.super.super.super.isa + v9) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v14.receiver = self;
  v14.super_class = ObjectType;
  v10 = [(MultiCornerGradientView *)&v14 initWithFrame:x, y, width, height];
  v11 = sub_1001ADFA4();
  v12 = *(&v10->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore28MultiAppFallbackGradientView_overlayGradientView);
  *(&v10->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore28MultiAppFallbackGradientView_overlayGradientView) = v11;

  return v10;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(MultiCornerGradientView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8AppStore28MultiAppFallbackGradientView_overlayGradientView];
  [v2 bounds];
  [v3 setFrame:?];
}

@end