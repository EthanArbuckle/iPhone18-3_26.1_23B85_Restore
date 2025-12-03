@interface MultiAppFallbackGradientView
- (_TtC22SubscribePageExtension28MultiAppFallbackGradientView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation MultiAppFallbackGradientView

- (_TtC22SubscribePageExtension28MultiAppFallbackGradientView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC22SubscribePageExtension28MultiAppFallbackGradientView_overlayGradientView;
  *(&self->super.super.super.super.isa + v9) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v14.receiver = self;
  v14.super_class = ObjectType;
  height = [(MultiCornerGradientView *)&v14 initWithFrame:x, y, width, height];
  v11 = sub_100713DB4();
  v12 = *(&height->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension28MultiAppFallbackGradientView_overlayGradientView);
  *(&height->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension28MultiAppFallbackGradientView_overlayGradientView) = v11;

  return height;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(MultiCornerGradientView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension28MultiAppFallbackGradientView_overlayGradientView];
  [v2 bounds];
  [v3 setFrame:?];
}

@end