@interface StaticLyricsViewController
- (_TtC5Music26StaticLyricsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation StaticLyricsViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10033097C();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for StaticLyricsViewController();
  v4 = v5.receiver;
  [(StaticLyricsViewController *)&v5 viewDidAppear:v3];
  v4[OBJC_IVAR____TtC5Music26StaticLyricsViewController_isVisible] = 1;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for StaticLyricsViewController();
  v4 = v5.receiver;
  [(StaticLyricsViewController *)&v5 viewDidDisappear:v3];
  sub_100333EB0();
  v4[OBJC_IVAR____TtC5Music26StaticLyricsViewController_isVisible] = 0;
}

- (_TtC5Music26StaticLyricsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end