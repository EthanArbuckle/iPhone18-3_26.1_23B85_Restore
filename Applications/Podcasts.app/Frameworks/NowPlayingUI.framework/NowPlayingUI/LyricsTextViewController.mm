@interface LyricsTextViewController
- (_TtC12NowPlayingUI24LyricsTextViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation LyricsTextViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_FF874();
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for LyricsTextViewController();
  v2 = v4.receiver;
  [(LyricsTextViewController *)&v4 viewDidLayoutSubviews];
  v3 = OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textView;
  [*&v2[OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textView] setNeedsLayout];
  [*&v2[v3] layoutIfNeeded];
}

- (_TtC12NowPlayingUI24LyricsTextViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end