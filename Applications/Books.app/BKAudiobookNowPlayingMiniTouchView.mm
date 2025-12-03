@interface BKAudiobookNowPlayingMiniTouchView
- (BKAudiobookNowPlayingMiniTouchView)initWithFrame:(CGRect)frame;
- (CGRect)transitionCoverFrame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSArray)accessibilityElements;
- (NSString)accessibilityLabel;
- (double)coverCornerRadius;
- (id)transitionControlsViews;
- (id)transitionCoverViews;
- (id)transitionToolbarViews;
- (int64_t)coverContentMode;
- (void)_traitCollectionDidChangeWithSender:(id)sender previousTraitCollection:(id)collection;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)label;
- (void)willMoveToWindow:(id)window;
@end

@implementation BKAudiobookNowPlayingMiniTouchView

- (void)willMoveToWindow:(id)window
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for AudiobookNowPlayingMiniTouchView();
  v4 = v11.receiver;
  windowCopy = window;
  [(BKAudiobookNowPlayingMiniTouchView *)&v11 willMoveToWindow:windowCopy];
  v6 = sub_1005B7B44();
  layer = [v6 layer];

  v8 = 1.0;
  if (windowCopy)
  {
    screen = [windowCopy screen];
    [screen scale];
    v8 = v10;
  }

  [layer setBorderWidth:1.0 / v8];
}

- (void)_traitCollectionDidChangeWithSender:(id)sender previousTraitCollection:(id)collection
{
  swift_unknownObjectRetain();
  collectionCopy = collection;
  selfCopy = self;
  sub_1007A3504();
  swift_unknownObjectRelease();
  [*(&selfCopy->super.super.super.isa + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_titleLabel) invalidateIntrinsicContentSize];
  [*(&selfCopy->super.super.super.isa + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_subtitleLabel) invalidateIntrinsicContentSize];
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong invalidateIntrinsicContentSize];

  sub_1005BC0C8();
  sub_1000074E0(&v9);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  traitCollection = [(BKAudiobookNowPlayingMiniTouchView *)selfCopy traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  v8 = 500.0;
  if (width <= 500.0)
  {
    v8 = width;
  }

  if (horizontalSizeClass == 1)
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
  selfCopy = self;
  sub_1005BB808();
}

- (NSString)accessibilityLabel
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AudiobookNowPlayingMiniTouchView();
  v2 = v7.receiver;
  accessibilityLabel = [(BKAudiobookNowPlayingMiniTouchView *)&v7 accessibilityLabel];
  if (accessibilityLabel)
  {
    v4 = accessibilityLabel;
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

- (void)setAccessibilityLabel:(id)label
{
  if (label)
  {
    sub_1007A2254();
    selfCopy = self;
    v5 = sub_1007A2214();
  }

  else
  {
    selfCopy2 = self;
    v5 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for AudiobookNowPlayingMiniTouchView();
  [(BKAudiobookNowPlayingMiniTouchView *)&v7 setAccessibilityLabel:v5];
}

- (NSArray)accessibilityElements
{
  selfCopy = self;
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

- (BKAudiobookNowPlayingMiniTouchView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CGRect)transitionCoverFrame
{
  selfCopy = self;
  v3 = sub_1005B7B44();
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  superview = [*(&selfCopy->super.super.super.isa + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView____lazy_storage___artworkImageView) superview];
  [(BKAudiobookNowPlayingMiniTouchView *)selfCopy convertRect:superview fromView:v5, v7, v9, v11];
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
  selfCopy = self;
  v5 = sub_1005B7B44();
  *(v3 + 56) = sub_10000A7C4(0, &qword_100AD7FD0);
  *(v3 + 32) = v5;

  v6.super.isa = sub_1007A25D4().super.isa;

  return v6.super.isa;
}

- (double)coverCornerRadius
{
  selfCopy = self;
  v3 = sub_1005B7B44();
  layer = [v3 layer];

  [layer cornerRadius];
  v6 = v5;

  return v6;
}

- (int64_t)coverContentMode
{
  selfCopy = self;
  v3 = sub_1005B7B44();
  contentMode = [v3 contentMode];

  return contentMode;
}

@end