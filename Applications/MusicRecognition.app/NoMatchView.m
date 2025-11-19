@interface NoMatchView
- (_TtC16MusicRecognition11NoMatchView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation NoMatchView

- (_TtC16MusicRecognition11NoMatchView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC16MusicRecognition11NoMatchView_noMatchLabel;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC16MusicRecognition11NoMatchView_retryButton;
  *(&self->super.super.super.isa + v10) = [objc_allocWithZone(UIButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicRecognition11NoMatchView_noMatchLabelVerticalAnchor) = 0;
  v13.receiver = self;
  v13.super_class = ObjectType;
  v11 = [(NoMatchView *)&v13 initWithFrame:x, y, width, height];
  sub_1000B61BC();

  return v11;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1000B6D24();
}

@end