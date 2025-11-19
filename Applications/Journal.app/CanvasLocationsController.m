@interface CanvasLocationsController
- (_TtC7Journal25CanvasLocationsController)initWithCollectionViewLayout:(id)a3;
- (_TtC7Journal25CanvasLocationsController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)addLocation;
- (void)done;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation CanvasLocationsController

- (void)loadView
{
  v6 = self;
  v2 = sub_100833B6C();
  v3 = [objc_allocWithZone(UICollectionView) initWithFrame:v2 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  [(CanvasLocationsController *)v6 setCollectionView:v3];
  v4 = [(CanvasLocationsController *)v6 collectionView];
  if (v4)
  {
    v5 = v4;
    [v4 setDelegate:v6];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100832738();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CanvasLocationsController();
  v4 = v9.receiver;
  [(CanvasLocationsController *)&v9 viewIsAppearing:v3];
  v5 = [v4 traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 5)
  {
    v7 = [v4 navigationController];
    if (v7)
    {
      v8 = v7;
      [v7 setToolbarHidden:0 animated:v3];
    }
  }
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1008333D4();
}

- (void)done
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator);
    v5 = self;
    sub_1001737C8(1, v4);
    sub_100170C4C(1);
    swift_unknownObjectRelease();
  }
}

- (void)addLocation
{
  v2 = self;
  sub_10083BE24();
}

- (_TtC7Journal25CanvasLocationsController)initWithCollectionViewLayout:(id)a3
{
  v3 = a3;
  v4 = sub_1008459EC(v3);

  return v4;
}

- (_TtC7Journal25CanvasLocationsController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_10083C49C(v5, v7, a4);
}

@end