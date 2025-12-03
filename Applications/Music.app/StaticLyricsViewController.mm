@interface StaticLyricsViewController
- (_TtC5Music26StaticLyricsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation StaticLyricsViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10033097C();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for StaticLyricsViewController();
  v4 = v5.receiver;
  [(StaticLyricsViewController *)&v5 viewDidAppear:appearCopy];
  v4[OBJC_IVAR____TtC5Music26StaticLyricsViewController_isVisible] = 1;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for StaticLyricsViewController();
  v4 = v5.receiver;
  [(StaticLyricsViewController *)&v5 viewDidDisappear:disappearCopy];
  sub_100333EB0();
  v4[OBJC_IVAR____TtC5Music26StaticLyricsViewController_isVisible] = 0;
}

- (_TtC5Music26StaticLyricsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end