@interface PresentingViewController
- (_TtC5MusicP33_83652B105F10641E50D93A0041F7187E24PresentingViewController)initWithCoder:(id)a3;
- (_TtC5MusicP33_83652B105F10641E50D93A0041F7187E24PresentingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
@end

@implementation PresentingViewController

- (void)loadView
{
  v3 = objc_allocWithZone(UIView);
  v5 = self;
  v4 = [v3 initWithFrame:{0.0, 0.0, 1.0, 1.0}];
  [(PresentingViewController *)v5 setView:v4];
}

- (_TtC5MusicP33_83652B105F10641E50D93A0041F7187E24PresentingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for PresentingViewController();
  v9 = [(PresentingViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC5MusicP33_83652B105F10641E50D93A0041F7187E24PresentingViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PresentingViewController();
  v4 = a3;
  v5 = [(PresentingViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end