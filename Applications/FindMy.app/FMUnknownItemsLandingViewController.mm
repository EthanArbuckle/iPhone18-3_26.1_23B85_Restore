@interface FMUnknownItemsLandingViewController
- (void)handleButtonTap:(id)tap;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)appear;
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

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMUnknownItemsLandingViewController();
  v4 = v5.receiver;
  [(FMUnknownItemsLandingViewController *)&v5 viewDidAppear:appearCopy];
  sub_10027F8A0();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v4.receiver = self;
  v4.super_class = type metadata accessor for FMUnknownItemsLandingViewController();
  [(FMUnknownItemsLandingViewController *)&v4 viewWillAppear:appearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMUnknownItemsLandingViewController();
  v4 = v6.receiver;
  [(FMUnknownItemsLandingViewController *)&v6 viewDidDisappear:disappearCopy];
  defaultCenter = [objc_opt_self() defaultCenter];
  if (qword_1006AEDB8 != -1)
  {
    swift_once();
  }

  [defaultCenter removeObserver:v4 name:qword_1006D4E20 object:0];
}

- (void)viewLayoutMarginsDidChange
{
  selfCopy = self;
  sub_10027F63C();
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMUnknownItemsLandingViewController();
  changeCopy = change;
  v5 = v6.receiver;
  [(FMBaseContentViewController *)&v6 traitCollectionDidChange:changeCopy];
  sub_10027FC48();
}

- (void)handleButtonTap:(id)tap
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    selfCopy = self;
    sub_1004330EC();
    swift_unknownObjectRelease();
  }
}

@end