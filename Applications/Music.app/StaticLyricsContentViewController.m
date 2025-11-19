@interface StaticLyricsContentViewController
- (_TtC5Music33StaticLyricsContentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
@end

@implementation StaticLyricsContentViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10078223C();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_100782B08();
}

- (void)viewLayoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for StaticLyricsContentViewController();
  v2 = v3.receiver;
  [(StaticLyricsContentViewController *)&v3 viewLayoutMarginsDidChange];
  sub_100783BB0();
}

- (_TtC5Music33StaticLyricsContentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_10078421C(v5, v7, a4);
}

@end