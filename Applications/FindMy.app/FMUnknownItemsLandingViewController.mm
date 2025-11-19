@interface FMUnknownItemsLandingViewController
- (void)handleButtonTap:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation FMUnknownItemsLandingViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMUnknownItemsLandingViewController();
  v2 = v3.receiver;
  [(FMBaseContentViewController *)&v3 viewDidLoad];
  sub_10027FC48();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMUnknownItemsLandingViewController();
  v4 = v5.receiver;
  [(FMUnknownItemsLandingViewController *)&v5 viewDidAppear:v3];
  sub_10027F8A0();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for FMUnknownItemsLandingViewController();
  [(FMUnknownItemsLandingViewController *)&v4 viewWillAppear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMUnknownItemsLandingViewController();
  v4 = v6.receiver;
  [(FMUnknownItemsLandingViewController *)&v6 viewDidDisappear:v3];
  v5 = [objc_opt_self() defaultCenter];
  if (qword_1006AEDB8 != -1)
  {
    swift_once();
  }

  [v5 removeObserver:v4 name:qword_1006D4E20 object:0];
}

- (void)viewLayoutMarginsDidChange
{
  v2 = self;
  sub_10027F63C();
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMUnknownItemsLandingViewController();
  v4 = a3;
  v5 = v6.receiver;
  [(FMBaseContentViewController *)&v6 traitCollectionDidChange:v4];
  sub_10027FC48();
}

- (void)handleButtonTap:(id)a3
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = self;
    sub_1004330EC();
    swift_unknownObjectRelease();
  }
}

@end