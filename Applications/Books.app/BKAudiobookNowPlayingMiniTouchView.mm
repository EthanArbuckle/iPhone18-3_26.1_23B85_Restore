@interface BKAudiobookNowPlayingMiniTouchView
- (BKAudiobookNowPlayingMiniTouchView)initWithFrame:(CGRect)a3;
- (CGRect)transitionCoverFrame;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSArray)accessibilityElements;
- (NSString)accessibilityLabel;
- (double)coverCornerRadius;
- (id)transitionControlsViews;
- (id)transitionCoverViews;
- (id)transitionToolbarViews;
- (int64_t)coverContentMode;
- (void)_traitCollectionDidChangeWithSender:(id)a3 previousTraitCollection:(id)a4;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation BKAudiobookNowPlayingMiniTouchView

- (void)willMoveToWindow:(id)a3
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for AudiobookNowPlayingMiniTouchView();
  v4 = v11.receiver;
  v5 = a3;
  [(BKAudiobookNowPlayingMiniTouchView *)&v11 willMoveToWindow:v5];
  v6 = sub_1005B7B44();
  v7 = [v6 layer];

  v8 = 1.0;
  if (v5)
  {
    v9 = [v5 screen];
    [v9 scale];
    v8 = v10;
  }

  [v7 setBorderWidth:1.0 / v8];
}

- (void)_traitCollectionDidChangeWithSender:(id)a3 previousTraitCollection:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  sub_1007A3504();
  swift_unknownObjectRelease();
  [*(&v7->super.super.super.isa + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_titleLabel) invalidateIntrinsicContentSize];
  [*(&v7->super.super.super.isa + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_subtitleLabel) invalidateIntrinsicContentSize];
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong invalidateIntrinsicContentSize];

  sub_1005BC0C8();
  sub_1000074E0(&v9);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = [(BKAudiobookNowPlayingMiniTouchView *)v5 traitCollection];
  v7 = [v6 horizontalSizeClass];

  v8 = 500.0;
  if (width <= 500.0)
  {
    v8 = width;
  }

  if (v7 == 1)
  {
    v8 = width;
  }

  v9 = height;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1005BB808();
}

- (NSString)accessibilityLabel
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AudiobookNowPlayingMiniTouchView();
  v2 = v7.receiver;
  v3 = [(BKAudiobookNowPlayingMiniTouchView *)&v7 accessibilityLabel];
  if (v3)
  {
    v4 = v3;
    sub_1007A2254();
  }

  else
  {
    if (qword_100AD18D0 != -1)
    {
      swift_once();
    }
  }

  v5 = sub_1007A2214();

  return v5;
}

- (void)setAccessibilityLabel:(id)a3
{
  if (a3)
  {
    sub_1007A2254();
    v4 = self;
    v5 = sub_1007A2214();
  }

  else
  {
    v6 = self;
    v5 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for AudiobookNowPlayingMiniTouchView();
  [(BKAudiobookNowPlayingMiniTouchView *)&v7 setAccessibilityLabel:v5];
}

- (NSArray)accessibilityElements
{
  v2 = self;
  sub_1005BBE54();
  v4 = v3;

  if (v4)
  {
    v5.super.isa = sub_1007A25D4().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

- (BKAudiobookNowPlayingMiniTouchView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CGRect)transitionCoverFrame
{
  v2 = self;
  v3 = sub_1005B7B44();
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [*(&v2->super.super.super.isa + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView____lazy_storage___artworkImageView) superview];
  [(BKAudiobookNowPlayingMiniTouchView *)v2 convertRect:v12 fromView:v5, v7, v9, v11];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (id)transitionToolbarViews
{
  v2.super.isa = sub_1007A25D4().super.isa;

  return v2.super.isa;
}

- (id)transitionControlsViews
{
  sub_1001F1160(&qword_100AD7FB0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100812CF0;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipBackwardButton);
  v5 = type metadata accessor for NowPlayingTransportButton();
  *(v3 + 32) = v4;
  v6 = *(&self->super.super.super.isa + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_togglePlayingButton);
  *(v3 + 56) = v5;
  *(v3 + 64) = v6;
  v7 = *(&self->super.super.super.isa + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipForwardButton);
  *(v3 + 120) = v5;
  *(v3 + 88) = v5;
  *(v3 + 96) = v7;
  v8 = v4;
  v9 = v6;
  v10 = v7;
  v11.super.isa = sub_1007A25D4().super.isa;

  return v11.super.isa;
}

- (id)transitionCoverViews
{
  sub_1001F1160(&qword_100AD7FB0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10080B690;
  v4 = self;
  v5 = sub_1005B7B44();
  *(v3 + 56) = sub_10000A7C4(0, &qword_100AD7FD0);
  *(v3 + 32) = v5;

  v6.super.isa = sub_1007A25D4().super.isa;

  return v6.super.isa;
}

- (double)coverCornerRadius
{
  v2 = self;
  v3 = sub_1005B7B44();
  v4 = [v3 layer];

  [v4 cornerRadius];
  v6 = v5;

  return v6;
}

- (int64_t)coverContentMode
{
  v2 = self;
  v3 = sub_1005B7B44();
  v4 = [v3 contentMode];

  return v4;
}

@end