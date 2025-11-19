@interface FMMapViewController
- (id)mapView:(id)a3 rendererForOverlay:(id)a4;
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (void)_setUserTrackingMode:(int64_t)a3 animated:(BOOL)a4 fromTrackingButton:(BOOL)a5;
- (void)cardPositionChangedWithNotification:(id)a3;
- (void)mapView:(id)a3 canEnter3DModeDidChange:(BOOL)a4;
- (void)mapView:(id)a3 didAddAnnotationViews:(id)a4;
- (void)mapView:(id)a3 didBecomePitched:(BOOL)a4;
- (void)mapView:(id)a3 didChangeMapType:(unint64_t)a4;
- (void)mapView:(id)a3 didChangeUserTrackingMode:(int64_t)a4 animated:(BOOL)a5;
- (void)mapView:(id)a3 didDeselectAnnotationView:(id)a4;
- (void)mapView:(id)a3 didSelectAnnotation:(id)a4;
- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4;
- (void)mapView:(id)a3 didUpdateUserLocation:(id)a4;
- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4;
- (void)mapView:(id)a3 regionWillChangeAnimated:(BOOL)a4;
- (void)mapViewDidStartUserInteraction:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation FMMapViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMMapViewController();
  v2 = v3.receiver;
  [(FMMapViewController *)&v3 viewDidLoad];
  sub_10001E670();
  sub_10001F254();
  sub_1000202F4(1, 0, 0);
  v2[OBJC_IVAR____TtC6FindMy19FMMapViewController_isAnimationEnabled] = 1;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMMapViewController();
  v4 = v6.receiver;
  [(FMMapViewController *)&v6 viewWillAppear:v3];
  sub_10004BC64();
  v5 = [objc_opt_self() defaultCenter];
  if (qword_1006AEDB8 != -1)
  {
    swift_once();
  }

  [v5 addObserver:v4 selector:? name:? object:?];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10004C204();
}

- (void)cardPositionChangedWithNotification:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_10004C6FC(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)mapView:(id)a3 didUpdateUserLocation:(id)a4
{
  v5 = a3;
  v9 = self;
  v6 = [v5 annotations];
  sub_10007EBC0(&qword_1006C1DD0);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8 == 1)
  {
    sub_1000202F4(1, 0, 0);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMMapViewController();
  v4 = v7.receiver;
  [(FMMapViewController *)&v7 viewDidAppear:v3];
  v5 = *(*&v4[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] + 56);

  v6 = sub_100057FBC(v4, v5);

  *&v4[OBJC_IVAR____TtC6FindMy19FMMapViewController_selectionSubscription] = v6;

  sub_10004BC64();
}

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_10005D540(v6, a4);

  swift_unknownObjectRelease();

  return v8;
}

- (void)mapView:(id)a3 regionWillChangeAnimated:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_100060CA0(v5);
}

- (void)mapView:(id)a3 canEnter3DModeDidChange:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_10005F6C4(a4);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1003F91B8(a3);
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMMapViewController();
  v2 = v3.receiver;
  [(FMMapViewController *)&v3 viewSafeAreaInsetsDidChange];
  sub_1003F9408();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v12.receiver = self;
  v12.super_class = type metadata accessor for FMMapViewController();
  swift_unknownObjectRetain();
  v7 = v12.receiver;
  [(FMMapViewController *)&v12 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v11[4] = sub_100406E84;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10045B250;
  v11[3] = &unk_10063D568;
  v9 = _Block_copy(v11);
  v10 = v7;

  [a4 animateAlongsideTransition:0 completion:v9];
  swift_unknownObjectRelease();

  _Block_release(v9);
}

- (void)mapView:(id)a3 didBecomePitched:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_100404030(a4);
}

- (void)mapView:(id)a3 didAddAnnotationViews:(id)a4
{
  sub_10000905C(0, &unk_1006BEEF0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_100404148(v6);
}

- (id)mapView:(id)a3 rendererForOverlay:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_1004043A0(a4);

  swift_unknownObjectRelease();

  return v8;
}

- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100404674(v7);
}

- (void)mapView:(id)a3 didSelectAnnotation:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  sub_1003FEAAC(v5);

  swift_unknownObjectRelease();
}

- (void)mapView:(id)a3 didDeselectAnnotationView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100406210(v7);
}

- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4
{
  v5 = sub_10007EBC0(&unk_1006B0000);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy19FMMapViewController_isAutomaticCenteringEnabled);
  v9 = self;
  if ((v8 & 1) == 0)
  {
    Date.init()();
    v10 = type metadata accessor for Date();
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
    v11 = OBJC_IVAR____TtC6FindMy19FMMapViewController_lastCenterAnimationDisableDate;
    swift_beginAccess();
    sub_10040682C(v7, v9 + v11);
    swift_endAccess();
  }

  sub_10001ED48(1);
}

- (void)mapView:(id)a3 didChangeUserTrackingMode:(int64_t)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = self;
  sub_100406764(a4);
}

- (void)mapView:(id)a3 didChangeMapType:(unint64_t)a4
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy19FMMapViewController_mapOptionsView);
  if (v4)
  {
    v7 = self;
    v6 = v4;
    sub_1002BDC9C(a4);
  }
}

- (void)_setUserTrackingMode:(int64_t)a3 animated:(BOOL)a4 fromTrackingButton:(BOOL)a5
{
  v7 = self;
  sub_10040689C(a3, a5);
}

- (void)mapViewDidStartUserInteraction:(id)a3
{
  v4 = sub_10007EBC0(&unk_1006B0000);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy19FMMapViewController_isAutomaticCenteringEnabled) = 0;
  v7 = self;
  Date.init()();
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = OBJC_IVAR____TtC6FindMy19FMMapViewController_lastCenterAnimationDisableDate;
  swift_beginAccess();
  sub_10040682C(v6, v7 + v9);
  swift_endAccess();
}

@end