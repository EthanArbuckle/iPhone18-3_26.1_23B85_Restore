@interface ImageBlurView
- (void)layoutSubviews;
@end

@implementation ImageBlurView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ImageBlurView();
  v2 = v5.receiver;
  [(ImageBlurView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC7Journal13ImageBlurView_backingImageView];
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  [v3 setImage:v4];
}

@end