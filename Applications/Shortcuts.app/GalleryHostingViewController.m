@interface GalleryHostingViewController
- (_TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)contentScrollViewForEdge:(unint64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation GalleryHostingViewController

- (id)contentScrollViewForEdge:(unint64_t)a3
{
  v4 = self;
  v5 = sub_100006A70(a3);

  return v5;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10003FDBC();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10003FF9C(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100040058(a3);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10004045C(a3);
}

- (_TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  sub_1000405C8();
}

@end