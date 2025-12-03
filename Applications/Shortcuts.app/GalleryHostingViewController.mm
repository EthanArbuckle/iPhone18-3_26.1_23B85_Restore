@interface GalleryHostingViewController
- (_TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)contentScrollViewForEdge:(unint64_t)edge;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation GalleryHostingViewController

- (id)contentScrollViewForEdge:(unint64_t)edge
{
  selfCopy = self;
  v5 = sub_100006A70(edge);

  return v5;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10003FDBC();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10003FF9C(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100040058(appear);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10004045C(change);
}

- (_TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
  sub_1000405C8();
}

@end