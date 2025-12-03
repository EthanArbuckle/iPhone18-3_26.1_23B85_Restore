@interface PresentingViewController
- (_TtC5MusicP33_83652B105F10641E50D93A0041F7187E24PresentingViewController)initWithCoder:(id)coder;
- (_TtC5MusicP33_83652B105F10641E50D93A0041F7187E24PresentingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
@end

@implementation PresentingViewController

- (void)loadView
{
  v3 = objc_allocWithZone(UIView);
  selfCopy = self;
  v4 = [v3 initWithFrame:{0.0, 0.0, 1.0, 1.0}];
  [(PresentingViewController *)selfCopy setView:v4];
}

- (_TtC5MusicP33_83652B105F10641E50D93A0041F7187E24PresentingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for PresentingViewController();
  v9 = [(PresentingViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC5MusicP33_83652B105F10641E50D93A0041F7187E24PresentingViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PresentingViewController();
  coderCopy = coder;
  v5 = [(PresentingViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end