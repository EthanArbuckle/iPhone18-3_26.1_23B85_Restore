@interface MaskedBlurView
- (void)layoutSubviews;
@end

@implementation MaskedBlurView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for MaskedBlurView();
  v2 = v5.receiver;
  [(MaskedBlurView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC7Journal14MaskedBlurView_blurMaskView];
  [v2 bounds];
  [v3 setFrame:?];

  v4 = *&v2[OBJC_IVAR____TtC7Journal14MaskedBlurView_blurView];
  [v2 bounds];
  [v4 setFrame:?];
}

@end