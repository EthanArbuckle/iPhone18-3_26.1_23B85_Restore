@interface LyricsTextViewController
- (_TtC12NowPlayingUI24LyricsTextViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation LyricsTextViewController

- (void)viewDidLoad
{
  v2 = self;
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

- (_TtC12NowPlayingUI24LyricsTextViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end