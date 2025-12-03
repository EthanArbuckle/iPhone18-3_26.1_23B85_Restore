@interface FMMapViewController
- (id)mapView:(id)view rendererForOverlay:(id)overlay;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (void)_setUserTrackingMode:(int64_t)mode animated:(BOOL)animated fromTrackingButton:(BOOL)button;
- (void)cardPositionChangedWithNotification:(id)notification;
- (void)mapView:(id)view canEnter3DModeDidChange:(BOOL)change;
- (void)mapView:(id)view didAddAnnotationViews:(id)views;
- (void)mapView:(id)view didBecomePitched:(BOOL)pitched;
- (void)mapView:(id)view didChangeMapType:(unint64_t)type;
- (void)mapView:(id)view didChangeUserTrackingMode:(int64_t)mode animated:(BOOL)animated;
- (void)mapView:(id)view didDeselectAnnotationView:(id)annotationView;
- (void)mapView:(id)view didSelectAnnotation:(id)annotation;
- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView;
- (void)mapView:(id)view didUpdateUserLocation:(id)location;
- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated;
- (void)mapView:(id)view regionWillChangeAnimated:(BOOL)animated;
- (void)mapViewDidStartUserInteraction:(id)interaction;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMMapViewController();
  v4 = v6.receiver;
  [(FMMapViewController *)&v6 viewWillAppear:appearCopy];
  sub_10004BC64();
  defaultCenter = [objc_opt_self() defaultCenter];
  if (qword_1006AEDB8 != -1)
  {
    swift_once();
  }

  [defaultCenter addObserver:v4 selector:? name:? object:?];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10004C204();
}

- (void)cardPositionChangedWithNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10004C6FC(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)mapView:(id)view didUpdateUserLocation:(id)location
{
  viewCopy = view;
  selfCopy = self;
  annotations = [viewCopy annotations];
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

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMMapViewController();
  v4 = v7.receiver;
  [(FMMapViewController *)&v7 viewDidAppear:appearCopy];
  v5 = *(*&v4[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] + 56);

  v6 = sub_100057FBC(v4, v5);

  *&v4[OBJC_IVAR____TtC6FindMy19FMMapViewController_selectionSubscription] = v6;

  sub_10004BC64();
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_10005D540(viewCopy, annotation);

  swift_unknownObjectRelease();

  return v8;
}

- (void)mapView:(id)view regionWillChangeAnimated:(BOOL)animated
{
  viewCopy = view;
  selfCopy = self;
  sub_100060CA0(viewCopy);
}

- (void)mapView:(id)view canEnter3DModeDidChange:(BOOL)change
{
  viewCopy = view;
  selfCopy = self;
  sub_10005F6C4(change);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1003F91B8(disappear);
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMMapViewController();
  v2 = v3.receiver;
  [(FMMapViewController *)&v3 viewSafeAreaInsetsDidChange];
  sub_1003F9408();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v12.receiver = self;
  v12.super_class = type metadata accessor for FMMapViewController();
  swift_unknownObjectRetain();
  v7 = v12.receiver;
  [(FMMapViewController *)&v12 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
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

  [coordinator animateAlongsideTransition:0 completion:v9];
  swift_unknownObjectRelease();

  _Block_release(v9);
}

- (void)mapView:(id)view didBecomePitched:(BOOL)pitched
{
  viewCopy = view;
  selfCopy = self;
  sub_100404030(pitched);
}

- (void)mapView:(id)view didAddAnnotationViews:(id)views
{
  sub_10000905C(0, &unk_1006BEEF0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_100404148(v6);
}

- (id)mapView:(id)view rendererForOverlay:(id)overlay
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_1004043A0(overlay);

  swift_unknownObjectRelease();

  return v8;
}

- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView
{
  viewCopy = view;
  annotationViewCopy = annotationView;
  selfCopy = self;
  sub_100404674(annotationViewCopy);
}

- (void)mapView:(id)view didSelectAnnotation:(id)annotation
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1003FEAAC(viewCopy);

  swift_unknownObjectRelease();
}

- (void)mapView:(id)view didDeselectAnnotationView:(id)annotationView
{
  viewCopy = view;
  annotationViewCopy = annotationView;
  selfCopy = self;
  sub_100406210(annotationViewCopy);
}

- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated
{
  v5 = sub_10007EBC0(&unk_1006B0000);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy19FMMapViewController_isAutomaticCenteringEnabled);
  selfCopy = self;
  if ((v8 & 1) == 0)
  {
    Date.init()();
    v10 = type metadata accessor for Date();
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
    v11 = OBJC_IVAR____TtC6FindMy19FMMapViewController_lastCenterAnimationDisableDate;
    swift_beginAccess();
    sub_10040682C(v7, selfCopy + v11);
    swift_endAccess();
  }

  sub_10001ED48(1);
}

- (void)mapView:(id)view didChangeUserTrackingMode:(int64_t)mode animated:(BOOL)animated
{
  viewCopy = view;
  selfCopy = self;
  sub_100406764(mode);
}

- (void)mapView:(id)view didChangeMapType:(unint64_t)type
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy19FMMapViewController_mapOptionsView);
  if (v4)
  {
    selfCopy = self;
    v6 = v4;
    sub_1002BDC9C(type);
  }
}

- (void)_setUserTrackingMode:(int64_t)mode animated:(BOOL)animated fromTrackingButton:(BOOL)button
{
  selfCopy = self;
  sub_10040689C(mode, button);
}

- (void)mapViewDidStartUserInteraction:(id)interaction
{
  v4 = sub_10007EBC0(&unk_1006B0000);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy19FMMapViewController_isAutomaticCenteringEnabled) = 0;
  selfCopy = self;
  Date.init()();
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = OBJC_IVAR____TtC6FindMy19FMMapViewController_lastCenterAnimationDisableDate;
  swift_beginAccess();
  sub_10040682C(v6, selfCopy + v9);
  swift_endAccess();
}

@end