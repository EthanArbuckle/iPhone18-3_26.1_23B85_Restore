@interface CanvasLocationsController
- (_TtC7Journal25CanvasLocationsController)initWithCollectionViewLayout:(id)layout;
- (_TtC7Journal25CanvasLocationsController)initWithNibName:(id)name bundle:(id)bundle;
- (void)addLocation;
- (void)done;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillLayoutSubviews;
@end

@implementation CanvasLocationsController

- (void)loadView
{
  selfCopy = self;
  v2 = sub_100833B6C();
  v3 = [objc_allocWithZone(UICollectionView) initWithFrame:v2 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  [(CanvasLocationsController *)selfCopy setCollectionView:v3];
  collectionView = [(CanvasLocationsController *)selfCopy collectionView];
  if (collectionView)
  {
    v5 = collectionView;
    [collectionView setDelegate:selfCopy];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100832738();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CanvasLocationsController();
  v4 = v9.receiver;
  [(CanvasLocationsController *)&v9 viewIsAppearing:appearingCopy];
  traitCollection = [v4 traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    navigationController = [v4 navigationController];
    if (navigationController)
    {
      v8 = navigationController;
      [navigationController setToolbarHidden:0 animated:appearingCopy];
    }
  }
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1008333D4();
}

- (void)done
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator);
    selfCopy = self;
    sub_1001737C8(1, v4);
    sub_100170C4C(1);
    swift_unknownObjectRelease();
  }
}

- (void)addLocation
{
  selfCopy = self;
  sub_10083BE24();
}

- (_TtC7Journal25CanvasLocationsController)initWithCollectionViewLayout:(id)layout
{
  layoutCopy = layout;
  v4 = sub_1008459EC(layoutCopy);

  return v4;
}

- (_TtC7Journal25CanvasLocationsController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_10083C49C(v5, v7, bundle);
}

@end